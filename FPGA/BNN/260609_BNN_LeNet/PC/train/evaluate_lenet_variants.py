#!/usr/bin/env python3

import argparse

import torch
import torch.nn.functional as F
from torch.utils.data import DataLoader
from torchvision import datasets, transforms

from train_lenet_mnist import LeNet


def clamp16(x):
    return torch.clamp(x, -32768, 32767)


def trunc_div(x, scale):
    return torch.trunc(x / scale)


def quantize_to_i16(x, scale):
    return torch.clamp(torch.round(x * scale), -32768, 32767)


def relu16(x):
    return clamp16(torch.clamp(x, min=0))


class QuantizedLeNet:
    def __init__(self, state):
        self.c1_w = quantize_to_i16(state["conv1.weight"], 16.0)
        self.c1_b = quantize_to_i16(state["conv1.bias"], 1.0)
        self.c2_w = quantize_to_i16(state["conv2.weight"], 32.0)
        self.c2_b = quantize_to_i16(state["conv2.bias"], 1.0)
        self.fc1_w = quantize_to_i16(state["fc1.weight"], 64.0)
        self.fc1_b = quantize_to_i16(state["fc1.bias"], 1.0)
        self.fc2_w = quantize_to_i16(state["fc2.weight"], 64.0)
        self.fc2_b = quantize_to_i16(state["fc2.bias"], 1.0)
        self.fc3_w = quantize_to_i16(state["fc3.weight"], 64.0)
        self.fc3_b = quantize_to_i16(state["fc3.bias"], 1.0)

        self.fc1_w_bits = (self.fc1_w > 0).float()
        self.fc2_w_bits = (self.fc2_w > 0).float()
        self.fc3_w_bits = (self.fc3_w > 0).float()

    def conv_pool_frontend(self, x):
        x = x * 255.0 - 128.0

        x = F.conv2d(x, self.c1_w, bias=None)
        x = x + self.c1_b.view(1, -1, 1, 1) * 16.0
        x = relu16(trunc_div(x, 16.0))
        x = F.max_pool2d(x, 2, 2)

        x = F.conv2d(x, self.c2_w, bias=None)
        x = x + self.c2_b.view(1, -1, 1, 1) * 32.0
        x = relu16(trunc_div(x, 32.0))
        x = F.max_pool2d(x, 2, 2)
        return torch.flatten(x, 1)

    def int16_forward(self, x):
        x = self.conv_pool_frontend(x)

        x = x @ self.fc1_w.t() + self.fc1_b.view(1, -1) * 64.0
        x = relu16(trunc_div(x, 64.0))

        x = x @ self.fc2_w.t() + self.fc2_b.view(1, -1) * 64.0
        x = relu16(trunc_div(x, 64.0))

        x = x @ self.fc3_w.t() + self.fc3_b.view(1, -1) * 64.0
        return trunc_div(x, 64.0)

    @staticmethod
    def binary_dot(input_values, weight_bits):
        input_bits = (input_values > 0).float()
        matches = input_bits @ weight_bits.t()
        matches += (1.0 - input_bits) @ (1.0 - weight_bits).t()
        return 2.0 * matches - input_values.shape[1]

    def binary_fc_forward(self, x):
        x = self.conv_pool_frontend(x)

        x = self.binary_dot(x, self.fc1_w_bits) + self.fc1_b.view(1, -1)
        x = relu16(x)

        x = self.binary_dot(x, self.fc2_w_bits) + self.fc2_b.view(1, -1)
        x = relu16(x)

        return self.binary_dot(x, self.fc3_w_bits) + self.fc3_b.view(1, -1)


def count_correct(logits, labels):
    return int((logits.argmax(dim=1) == labels).sum().item())


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--checkpoint", default="PC/train/lenet_mnist.pt")
    parser.add_argument("--data-dir", default="PC/train/data")
    parser.add_argument("--batch-size", type=int, default=512)
    parser.add_argument("--max-samples", type=int, default=0)
    args = parser.parse_args()

    checkpoint = torch.load(args.checkpoint, map_location="cpu")
    model = LeNet()
    model.load_state_dict(checkpoint["model_state_dict"])
    model.eval()
    qmodel = QuantizedLeNet(model.state_dict())

    test_set = datasets.MNIST(args.data_dir, train=False, download=False,
                              transform=transforms.ToTensor())
    if args.max_samples > 0:
        test_set = torch.utils.data.Subset(test_set, range(args.max_samples))
    loader = DataLoader(test_set, batch_size=args.batch_size, shuffle=False,
                        num_workers=0)

    total = 0
    fp32_correct = 0
    int16_correct = 0
    binary_fc_correct = 0

    with torch.no_grad():
        for images, labels in loader:
            labels = labels.long()
            fp32_logits = model(images * 255.0 - 128.0)
            int16_logits = qmodel.int16_forward(images)
            binary_fc_logits = qmodel.binary_fc_forward(images)

            fp32_correct += count_correct(fp32_logits, labels)
            int16_correct += count_correct(int16_logits, labels)
            binary_fc_correct += count_correct(binary_fc_logits, labels)
            total += int(labels.numel())

    fp32_acc = fp32_correct / total
    int16_acc = int16_correct / total
    binary_fc_acc = binary_fc_correct / total

    print(f"samples={total}")
    print(f"fp32_acc={fp32_acc:.4f} correct={fp32_correct}")
    print(f"int16_acc={int16_acc:.4f} correct={int16_correct}")
    print(f"binary_fc_acc={binary_fc_acc:.4f} correct={binary_fc_correct}")
    print(f"loss_fp32_to_int16={(fp32_acc - int16_acc):.4f}")
    print(f"loss_int16_to_binary_fc={(int16_acc - binary_fc_acc):.4f}")
    print(f"loss_fp32_to_binary_fc={(fp32_acc - binary_fc_acc):.4f}")


if __name__ == "__main__":
    main()
