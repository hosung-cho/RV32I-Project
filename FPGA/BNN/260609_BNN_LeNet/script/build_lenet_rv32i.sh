#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
BUILD_DIR="${ROOT_DIR}/build_rv32i"
RV_DIR="${ROOT_DIR}/RISC-V"
VITIS_DIR="${ROOT_DIR}/Vitis"

mkdir -p "${BUILD_DIR}"

EXTRA_CFLAGS=()
EXTRA_SRCS=()
if [[ -f "${ROOT_DIR}/common/lenet_params.c" ]]; then
  EXTRA_CFLAGS+=(-DLENET_USE_EXPORTED_PARAMS=1)
  EXTRA_SRCS+=("${ROOT_DIR}/common/lenet_params.c")
fi
if [[ -f "${ROOT_DIR}/common/lenet_test_image.c" ]]; then
  EXTRA_SRCS+=("${ROOT_DIR}/common/lenet_test_image.c")
fi
if [[ "${LENET_USE_BINARY_FC:-0}" == "1" ]]; then
  EXTRA_CFLAGS+=(-DLENET_USE_BINARY_FC=1)
fi

ELF_FILE="${BUILD_DIR}/main_lenet_rv32i.elf"
ASM_FILE="${BUILD_DIR}/main_lenet_rv32i.asm"
MAP_FILE="${BUILD_DIR}/main_lenet_rv32i.map"
BIN_FILE="${BUILD_DIR}/main_lenet_rv32i.bin"
IMEM_HEX_FILE="${BUILD_DIR}/imem.hex"
DMEM_HEX_FILE="${BUILD_DIR}/dmem.hex"
LINKER_SCRIPT="${RV_DIR}/custom_memory_lenet.ld"

riscv32-unknown-elf-gcc \
  -march=rv32i \
  -mabi=ilp32 \
  -O2 \
  -g0 \
  -ffunction-sections \
  -fdata-sections \
  -fno-builtin \
  -fno-builtin-memset \
  -fno-builtin-memcpy \
  -nostdlib \
  "${EXTRA_CFLAGS[@]}" \
  -I"${ROOT_DIR}/common" \
  -Wl,--gc-sections \
  -Wl,-Map,"${MAP_FILE}" \
  -T "${LINKER_SCRIPT}" \
  "${RV_DIR}/crt0.S" \
  "${RV_DIR}/main_lenet_rv32i.c" \
  "${ROOT_DIR}/common/lenet_baseline.c" \
  "${EXTRA_SRCS[@]}" \
  -lgcc \
  -o "${ELF_FILE}"

riscv32-unknown-elf-size "${ELF_FILE}"
riscv32-unknown-elf-objdump -h "${ELF_FILE}"
riscv32-unknown-elf-objdump -d -S "${ELF_FILE}" > "${ASM_FILE}"
riscv32-unknown-elf-objcopy -O binary "${ELF_FILE}" "${BIN_FILE}"

riscv32-unknown-elf-objcopy -O verilog --verilog-data-width=4 \
  -j .text "${ELF_FILE}" "${IMEM_HEX_FILE}"

if riscv32-unknown-elf-objdump -h "${ELF_FILE}" | grep -q "[.]data\\|[.]rodata"; then
  riscv32-unknown-elf-objcopy -O verilog --verilog-data-width=4 \
    --change-addresses -0x20000000 \
    -j .rodata -j .data "${ELF_FILE}" "${DMEM_HEX_FILE}"
else
  {
    echo "@00000000"
    echo "00000000"
  } > "${DMEM_HEX_FILE}"
fi

if [[ ! -s "${DMEM_HEX_FILE}" ]]; then
  {
    echo "@00000000"
    echo "00000000"
  } > "${DMEM_HEX_FILE}"
fi

python3 "${ROOT_DIR}/script/hex_to_c.py" "${IMEM_HEX_FILE}" \
  --name inst_array \
  --out "${VITIS_DIR}/inst_array.c"

python3 "${ROOT_DIR}/script/hex_to_c.py" "${DMEM_HEX_FILE}" \
  --name data_array \
  --out "${VITIS_DIR}/data_array.c"

echo "Generated:"
echo "  ${ELF_FILE}"
echo "  ${ASM_FILE}"
echo "  ${MAP_FILE}"
echo "  ${IMEM_HEX_FILE}"
echo "  ${DMEM_HEX_FILE}"
echo "  ${VITIS_DIR}/inst_array.c"
echo "  ${VITIS_DIR}/data_array.c"
