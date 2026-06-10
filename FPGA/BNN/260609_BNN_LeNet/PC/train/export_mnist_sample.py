#!/usr/bin/env python3

import argparse
from pathlib import Path

from torchvision import datasets


def c_array_u8(name, values, cols=16):
    lines = [f"const uint8_t {name}[784] = {{"]
    for start in range(0, len(values), cols):
        chunk = values[start:start + cols]
        lines.append("  " + ", ".join(str(int(v)) for v in chunk) + ",")
    lines.append("};")
    return "\n".join(lines)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--data-dir", default="PC/train/data")
    parser.add_argument("--index", type=int, default=0)
    parser.add_argument("--out-c", default="common/lenet_test_image.c")
    parser.add_argument("--out-h", default="common/lenet_test_image.h")
    args = parser.parse_args()

    test_set = datasets.MNIST(args.data_dir, train=False, download=True)
    image, label = test_set[args.index]
    pixels = list(image.convert("L").getdata())

    out_h = Path(args.out_h)
    out_c = Path(args.out_c)
    out_h.parent.mkdir(parents=True, exist_ok=True)
    out_c.parent.mkdir(parents=True, exist_ok=True)

    out_h.write_text(
        "\n".join([
            "#ifndef LENET_TEST_IMAGE_H",
            "#define LENET_TEST_IMAGE_H",
            "",
            "#include <stdint.h>",
            "",
            "extern const uint8_t g_lenet_test_image[784];",
            "extern const int32_t g_lenet_test_label;",
            "extern const int32_t g_lenet_test_index;",
            "",
            "#endif",
        ]) + "\n",
        encoding="utf-8",
    )

    out_c.write_text(
        "\n".join([
            "#include \"lenet_test_image.h\"",
            "",
            f"const int32_t g_lenet_test_label = {int(label)};",
            f"const int32_t g_lenet_test_index = {int(args.index)};",
            "",
            c_array_u8("g_lenet_test_image", pixels),
            "",
        ]),
        encoding="utf-8",
    )

    print(f"wrote={out_h}")
    print(f"wrote={out_c}")
    print(f"mnist_test_index={args.index} label={label}")


if __name__ == "__main__":
    main()
