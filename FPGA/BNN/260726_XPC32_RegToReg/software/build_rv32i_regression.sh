#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILD_DIR="${SCRIPT_DIR}/build/rv32i_regression"

mkdir -p "${BUILD_DIR}"

riscv32-unknown-elf-gcc \
  -march=rv32i \
  -mabi=ilp32 \
  -nostdlib \
  -Wl,--no-relax \
  -T "${SCRIPT_DIR}/rv32i_regression.ld" \
  "${SCRIPT_DIR}/rv32i_regression.S" \
  -o "${BUILD_DIR}/rv32i_regression.elf"

riscv32-unknown-elf-objdump \
  -d "${BUILD_DIR}/rv32i_regression.elf" \
  > "${BUILD_DIR}/rv32i_regression.asm"

riscv32-unknown-elf-objcopy \
  -O verilog \
  --verilog-data-width=4 \
  -j .text \
  "${BUILD_DIR}/rv32i_regression.elf" \
  "${BUILD_DIR}/imem.hex"

printf '@00000000\n' > "${BUILD_DIR}/dmem.hex"
printf '00000000\n' >> "${BUILD_DIR}/dmem.hex"

riscv32-unknown-elf-size "${BUILD_DIR}/rv32i_regression.elf"
