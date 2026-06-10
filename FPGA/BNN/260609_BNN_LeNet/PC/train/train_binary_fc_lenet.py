#!/usr/bin/env python3

import argparse
from pathlib import Path

import torch
from torch import nn
import torch.nn.functional as F
from torch.utils.data import DataLoader
from torchvision import datasets, transforms

from train_lenet_mnist import LeNet


def sign_ste(x):
    binary = torch.where(x > 0, torch.ones_like(x), -torch.ones_like(x))
    return x + (binary - x).detach()


def round_ste(x):
    rounded = torch.round(x)
    return x + (rounded - x).detach()


def quant_ste(x, scale):
    q = torch.clamp(round_ste(x * scale), -32768.0, 32767.0)
    return q


def trunc_div_ste(x, scale):
    y = torch.trunc(x / scale)
    return x / scale + (y - x / scale).detach()


class BinaryFcLeNet(nn.Module):
    def __init__(self):
        super().__init__()
        self.conv1 = nn.Conv2d(1, 6, kernel_size=5)
        self.conv2 = nn.Conv2d(6, 16, kernel_size=5)
        self.pool = nn.MaxPool2d(2, 2)
        self.fc1 = nn.Linear(16 * 4 * 4, 120)
        self.fc2 = nn.Linear(120, 84)
        self.fc3 = nn.Linear(84, 10)

    def conv_frontend(self, x):
        w1 = quant_ste(self.conv1.weight, 16.0)
        b1 = quant_ste(self.conv1.bias, 1.0)
        x = F.conv2d(x, w1, bias=None)
        x = x + b1.view(1, -1, 1, 1) * 16.0
        x = torch.clamp(torch.relu(trunc_div_ste(x, 16.0)), -32768.0, 32767.0)
        x = self.pool(x)

        w2 = quant_ste(self.conv2.weight, 32.0)
        b2 = quant_ste(self.conv2.bias, 1.0)
        x = F.conv2d(x, w2, bias=None)
        x = x + b2.view(1, -1, 1, 1) * 32.0
        x = torch.clamp(torch.relu(trunc_div_ste(x, 32.0)), -32768.0, 32767.0)
        x = self.pool(x)
        return torch.flatten(x, 1)

    @staticmethod
    def binary_linear(x, layer):
        x_bin = sign_ste(x)
        w_bin = sign_ste(layer.weight)
        bias = quant_ste(layer.bias, 1.0)
        return F.linear(x_bin, w_bin, bias)

    def forward(self, x):
        x = self.conv_frontend(x)
        x = torch.clamp(torch.relu(self.binary_linear(x, self.fc1)),
                        -32768.0, 32767.0)
        x = torch.clamp(torch.relu(self.binary_linear(x, self.fc2)),
                        -32768.0, 32767.0)
        return self.binary_linear(x, self.fc3)


def load_initial_weights(model, checkpoint_path):
    checkpoint = torch.load(checkpoint_path, map_location="cpu")
    base = LeNet()
    base.load_state_dict(checkpoint["model_state_dict"])
    model.load_state_dict(base.state_dict(), strict=True)


def evaluate(model, loader, device):
    model.eval()
    correct = 0
    total = 0
    with torch.no_grad():
        for images, labels in loader:
            images = images.to(device)
            labels = labels.to(device)
            pred = model(images).argmax(dim=1)
            correct += int((pred == labels).sum().item())
            total += int(labels.numel())
    return correct / total


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--data-dir", default="PC/train/data")
    parser.add_argument("--init", default="PC/train/lenet_mnist.pt")
    parser.add_argument("--out", default="PC/train/lenet_binary_fc.pt")
    parser.add_argument("--epochs", type=int, default=10)
    parser.add_argument("--batch-size", type=int, default=128)
    parser.add_argument("--lr", type=float, default=1e-4)
    parser.add_argument("--num-workers", type=int, default=0)
    args = parser.parse_args()

    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    transform = transforms.Compose([
        transforms.ToTensor(),
        transforms.Lambda(lambda x: x * 255.0 - 128.0),
    ])
    train_set = datasets.MNIST(args.data_dir, train=True, download=False,
                               transform=transform)
    test_set = datasets.MNIST(args.data_dir, train=False, download=False,
                              transform=transform)
    train_loader = DataLoader(train_set, batch_size=args.batch_size,
                              shuffle=True, num_workers=args.num_workers)
    test_loader = DataLoader(test_set, batch_size=512, shuffle=False,
                             num_workers=args.num_workers)

    model = BinaryFcLeNet()
    load_initial_weights(model, args.init)
    model.to(device)

    optimizer = torch.optim.Adam(model.parameters(), lr=args.lr)
    loss_fn = nn.CrossEntropyLoss()
    best_acc = 0.0
    best_state = None

    for epoch in range(1, args.epochs + 1):
        model.train()
        total_loss = 0.0
        for images, labels in train_loader:
            images = images.to(device)
            labels = labels.to(device)
            optimizer.zero_grad()
            loss = loss_fn(model(images), labels)
            loss.backward()
            optimizer.step()
            total_loss += float(loss.item()) * int(labels.numel())

        acc = evaluate(model, test_loader, device)
        if acc > best_acc:
            best_acc = acc
            best_state = {k: v.detach().cpu().clone()
                          for k, v in model.state_dict().items()}
        print(f"epoch={epoch} loss={total_loss / len(train_set):.4f} "
              f"binary_fc_test_acc={acc:.4f} best={best_acc:.4f}")

    out = Path(args.out)
    out.parent.mkdir(parents=True, exist_ok=True)
    if best_state is not None:
        model.load_state_dict(best_state)
    torch.save({"model_state_dict": model.cpu().state_dict(),
                "test_accuracy": best_acc,
                "training_mode": "binary_fc_ste"},
               out)
    print(f"saved={out}")


if __name__ == "__main__":
    main()
