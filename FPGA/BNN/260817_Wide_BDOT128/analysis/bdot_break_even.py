#!/usr/bin/env python3
"""Compute the accelerator Fmax needed to beat the FINN LFC XPC32 result."""

import argparse


XPC32_CYCLES = 776_741
CPU_FREQUENCY_HZ = 35_000_000.0
BDOT_COUNT = 3_082
BDOT128_BLOCK_COUNT = 23_632


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--host-cycles", type=int, required=True)
    parser.add_argument("--start-cycles", type=int, required=True)
    parser.add_argument("--block-ii", type=int, required=True)
    parser.add_argument("--finish-cycles", type=int, required=True)
    parser.add_argument("--cdc-cycles", type=int, default=0)
    parser.add_argument("--margin", type=float, default=1.20)
    return parser.parse_args()


def main():
    args = parse_args()
    if min(
        args.host_cycles,
        args.start_cycles,
        args.block_ii,
        args.finish_cycles,
        args.cdc_cycles,
    ) < 0:
        raise SystemExit("cycle values must be non-negative")
    if args.block_ii == 0:
        raise SystemExit("--block-ii must be greater than zero")
    if args.margin < 1.0:
        raise SystemExit("--margin must be at least 1.0")

    xpc32_time_s = XPC32_CYCLES / CPU_FREQUENCY_HZ
    host_time_s = args.host_cycles / CPU_FREQUENCY_HZ
    available_accel_time_s = xpc32_time_s - host_time_s
    accel_cycles = (
        BDOT_COUNT * args.start_cycles
        + BDOT128_BLOCK_COUNT * args.block_ii
        + BDOT_COUNT * args.finish_cycles
        + args.cdc_cycles
    )

    print(f"xpc32_time_ms={xpc32_time_s * 1e3:.6f}")
    print(f"host_time_ms={host_time_s * 1e3:.6f}")
    print(f"accel_cycles={accel_cycles}")

    if available_accel_time_s <= 0:
        raise SystemExit(
            "host execution alone reaches or exceeds the XPC32 reference; "
            "BDOT granularity must be increased"
        )

    break_even_hz = accel_cycles / available_accel_time_s
    target_hz = break_even_hz * args.margin
    print(f"break_even_mhz={break_even_hz / 1e6:.6f}")
    print(f"target_mhz={target_hz / 1e6:.6f}")


if __name__ == "__main__":
    main()

