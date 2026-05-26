#!/usr/bin/env python3
"""Convert @address hex files to a C uint32_t array.

Input format: whitespace-separated hex words, with optional @ADDR tokens that
set the current word address (ADDR is in words, not bytes).
"""

from __future__ import annotations

import argparse
from pathlib import Path
from typing import Dict, Tuple


def parse_hex(path: Path) -> Dict[int, int]:
    words: Dict[int, int] = {}
    idx = 0
    for raw in path.read_text(encoding="utf-8").splitlines():
        line = raw.strip()
        if not line:
            continue
        for token in line.split():
            if token.startswith("@"):
                idx = int(token[1:], 16)
                continue
            words[idx] = int(token, 16) & 0xFFFFFFFF
            idx += 1
    return words


def build_array(words: Dict[int, int], base: int | None) -> Tuple[int, list[int]]:
    if not words:
        return 0, []
    min_idx = min(words)
    max_idx = max(words)
    if base is None:
        base = min_idx
    if base > min_idx:
        raise ValueError("base is larger than first address in file")

    size = max_idx - base + 1
    arr = [0] * size
    for idx, value in words.items():
        if idx < base:
            continue
        arr[idx - base] = value
    return base, arr


def emit_c(name: str, arr: list[int], cols: int, out_path: Path | None) -> None:
    lines = []
    lines.append(f"static const uint32_t {name}[] = {{")
    for i, value in enumerate(arr):
        prefix = "  " if i % cols == 0 else " "
        lines.append(f"{prefix}0x{value:08X}U,")
    if arr:
        # Combine column formatting into lines
        grouped = []
        for i in range(0, len(lines) - 1, cols):
            grouped.append("".join(lines[i + 1 : i + 1 + cols]))
        lines = [lines[0]] + grouped
    lines.append("};")

    output = "\n".join(lines) + "\n"
    if out_path:
        out_path.write_text(output, encoding="utf-8")
    else:
        print(output, end="")


def main() -> None:
    ap = argparse.ArgumentParser(description="Convert @address hex to C array.")
    ap.add_argument("path", type=Path, help="Path to .hex file")
    ap.add_argument("--name", required=True, help="C array name")
    ap.add_argument(
        "--base",
        type=lambda x: int(x, 0),
        default=None,
        help="Base word address to emit (default: first address in file)",
    )
    ap.add_argument("--cols", type=int, default=4, help="Words per line")
    ap.add_argument("--out", type=Path, default=None, help="Output .c snippet")
    args = ap.parse_args()

    words = parse_hex(args.path)
    _, arr = build_array(words, args.base)
    emit_c(args.name, arr, args.cols, args.out)


if __name__ == "__main__":
    main()
