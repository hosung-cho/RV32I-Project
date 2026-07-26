#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BUILD_DIR="${SCRIPT_DIR}/build"
OBJECT_FILE="${BUILD_DIR}/xpc32_smoke.o"
ASM_FILE="${BUILD_DIR}/xpc32_smoke.asm"

mkdir -p "${BUILD_DIR}"

riscv32-unknown-elf-gcc \
  -march=rv32i \
  -mabi=ilp32 \
  -O2 \
  -ffreestanding \
  -c "${SCRIPT_DIR}/xpc32_smoke.c" \
  -o "${OBJECT_FILE}"

riscv32-unknown-elf-objdump -d "${OBJECT_FILE}" > "${ASM_FILE}"

if ! grep -Eq '0b[[:space:]]' "${ASM_FILE}"; then
  echo "ERROR: custom-0 opcode was not found in objdump" >&2
  exit 1
fi

cat "${ASM_FILE}"
