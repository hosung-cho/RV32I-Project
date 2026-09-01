#!/usr/bin/env bash
set -euo pipefail

SOFTWARE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILD_DIR="${SOFTWARE_DIR}/build"
PARAM_DIR="${SOFTWARE_DIR}/generated"
mkdir -p "${BUILD_DIR}"

riscv32-unknown-elf-gcc \
  -march=rv32i -mabi=ilp32 -O2 -g0 \
  -ffunction-sections -fdata-sections -fno-builtin -nostdlib \
  -I"${PARAM_DIR}" -Wl,--gc-sections \
  -Wl,-Map,"${BUILD_DIR}/finn_lfc_pipeline.map" \
  -T "${SOFTWARE_DIR}/RISC-V/memory.ld" \
  "${SOFTWARE_DIR}/RISC-V/crt0.S" \
  "${SOFTWARE_DIR}/RISC-V/main_finn_lfc_rv32i.c" \
  -lgcc -o "${BUILD_DIR}/finn_lfc_pipeline.elf"

riscv32-unknown-elf-size "${BUILD_DIR}/finn_lfc_pipeline.elf"
riscv32-unknown-elf-objdump -d -S "${BUILD_DIR}/finn_lfc_pipeline.elf" \
  > "${BUILD_DIR}/finn_lfc_pipeline.asm"
riscv32-unknown-elf-objcopy -O verilog --verilog-data-width=4 \
  -j .text "${BUILD_DIR}/finn_lfc_pipeline.elf" "${BUILD_DIR}/imem.hex"
riscv32-unknown-elf-objcopy -O verilog --verilog-data-width=4 \
  --change-addresses -0x20000000 -j .rodata -j .data \
  "${BUILD_DIR}/finn_lfc_pipeline.elf" "${BUILD_DIR}/dmem.hex"

echo "FINN LFC pipeline software built"
