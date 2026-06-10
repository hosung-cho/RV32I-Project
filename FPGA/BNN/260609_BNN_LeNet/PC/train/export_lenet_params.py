#!/usr/bin/env python3

import argparse
from pathlib import Path

import numpy as np
import torch

from train_lenet_mnist import LeNet


def quantize_to_i16(array, scale):
    values = np.rint(array * scale)
    return np.clip(values, -32768, 32767).astype(np.int16)


def c_array_i16(name, values, cols=12):
    flat = values.reshape(-1)
    lines = [f"const int16_t {name}[{flat.size}] = {{"]
    for start in range(0, flat.size, cols):
        chunk = flat[start:start + cols]
        lines.append("  " + ", ".join(str(int(v)) for v in chunk) + ",")
    lines.append("};")
    return "\n".join(lines)


def pack_binary_weights(weight):
    matrix = weight.reshape(weight.shape[0], -1)
    words_per_output = (matrix.shape[1] + 31) // 32
    packed = np.zeros((matrix.shape[0], words_per_output), dtype=np.uint32)
    for out_idx in range(matrix.shape[0]):
        for in_idx in range(matrix.shape[1]):
            if matrix[out_idx, in_idx] > 0:
                packed[out_idx, in_idx // 32] |= np.uint32(1 << (in_idx & 31))
    return packed.reshape(-1), words_per_output


def c_array_u32(name, values, cols=4):
    flat = values.reshape(-1)
    lines = [f"const uint32_t {name}[{flat.size}] = {{"]
    for start in range(0, flat.size, cols):
        chunk = flat[start:start + cols]
        lines.append("  " + ", ".join(f"0x{int(v):08X}U" for v in chunk) + ",")
    lines.append("};")
    return "\n".join(lines)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--checkpoint", default="PC/train/lenet_mnist.pt")
    parser.add_argument("--out-c", default="common/lenet_params.c")
    parser.add_argument("--out-h", default="common/lenet_params.h")
    args = parser.parse_args()

    model = LeNet()
    checkpoint = torch.load(args.checkpoint, map_location="cpu")
    model.load_state_dict(checkpoint["model_state_dict"])
    state = model.state_dict()

    tensors = {
        "g_lenet_c1_weight": (state["conv1.weight"].numpy(), 16.0),
        "g_lenet_c1_bias": (state["conv1.bias"].numpy(), 1.0),
        "g_lenet_c2_weight": (state["conv2.weight"].numpy(), 32.0),
        "g_lenet_c2_bias": (state["conv2.bias"].numpy(), 1.0),
        "g_lenet_fc1_weight": (state["fc1.weight"].numpy(), 64.0),
        "g_lenet_fc1_bias": (state["fc1.bias"].numpy(), 1.0),
        "g_lenet_fc2_weight": (state["fc2.weight"].numpy(), 64.0),
        "g_lenet_fc2_bias": (state["fc2.bias"].numpy(), 1.0),
        "g_lenet_fc3_weight": (state["fc3.weight"].numpy(), 64.0),
        "g_lenet_fc3_bias": (state["fc3.bias"].numpy(), 1.0),
    }

    binary_fc_tensors = {
        "g_lenet_fc1_weight_bits": quantize_to_i16(
            state["fc1.weight"].numpy(), 64.0),
        "g_lenet_fc2_weight_bits": quantize_to_i16(
            state["fc2.weight"].numpy(), 64.0),
        "g_lenet_fc3_weight_bits": quantize_to_i16(
            state["fc3.weight"].numpy(), 64.0),
    }

    out_h = Path(args.out_h)
    out_c = Path(args.out_c)
    out_h.parent.mkdir(parents=True, exist_ok=True)
    out_c.parent.mkdir(parents=True, exist_ok=True)

    declarations = [
        "#ifndef LENET_PARAMS_H",
        "#define LENET_PARAMS_H",
        "",
        "#include <stdint.h>",
        "",
    ]
    definitions = [
        "#include \"lenet_params.h\"",
        "",
        "const int32_t g_lenet_c1_weight_scale = 16;",
        "const int32_t g_lenet_c2_weight_scale = 32;",
        "const int32_t g_lenet_fc_weight_scale = 64;",
        "",
    ]

    for name, (tensor, scale) in tensors.items():
        q = quantize_to_i16(tensor, scale)
        declarations.append(f"extern const int16_t {name}[{q.size}];")
        definitions.append(c_array_i16(name, q))
        definitions.append("")

    for name, tensor in binary_fc_tensors.items():
        packed, words_per_output = pack_binary_weights(tensor)
        declarations.append(f"extern const uint32_t {name}[{packed.size}];")
        definitions.append(c_array_u32(name, packed))
        definitions.append("")
        definitions.append(
            f"const int32_t {name}_words_per_output = {words_per_output};"
        )
        definitions.append("")
        declarations.append(f"extern const int32_t {name}_words_per_output;")

    declarations.extend([
        "extern const int32_t g_lenet_c1_weight_scale;",
        "extern const int32_t g_lenet_c2_weight_scale;",
        "extern const int32_t g_lenet_fc_weight_scale;",
        "",
        "#endif",
    ])

    out_h.write_text("\n".join(declarations) + "\n", encoding="utf-8")
    out_c.write_text("\n".join(definitions), encoding="utf-8")
    print(f"wrote={out_h}")
    print(f"wrote={out_c}")
    print(f"checkpoint_test_accuracy={checkpoint.get('test_accuracy', 'unknown')}")
    print("next: add common/lenet_params.c to the PC/RV32I builds and compile "
          "with -DLENET_USE_EXPORTED_PARAMS=1")


if __name__ == "__main__":
    main()
