#!/bin/bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
POINTWISE_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
SRC_DIR="${POINTWISE_DIR}/src"
BUILD_DIR="${POINTWISE_DIR}/build"
TFLM_ROOT="${POINTWISE_DIR}/../../lib/tflite-micro"

mkdir -p "${BUILD_DIR}"

ELF_FILE="${BUILD_DIR}/main_pointwise.elf"
ASM_FILE="${BUILD_DIR}/main_pointwise_full.asm"
BIN_FILE="${BUILD_DIR}/main_pointwise.bin"
IMEM_HEX_FILE="${BUILD_DIR}/imem.hex"
DMEM_HEX_FILE="${BUILD_DIR}/dmem.hex"

# ===== 1. 소스 파일 목록 =====
SRCS=(
  "${SRC_DIR}/main_pointwise.cc"
  "${TFLM_ROOT}/tensorflow/lite/kernels/internal/common.cc"
  "${TFLM_ROOT}/tensorflow/lite/kernels/internal/quantization_util.cc"
)

# ===== 2. ELF 생성 =====
riscv32-unknown-elf-g++ -march=rv32i -mabi=ilp32 -O2 \
  -ffunction-sections \
  -fdata-sections \
  -Wl,--gc-sections \
  -Wl,-e,main \
  -nostdlib \
  -DNDEBUG \
  -I"${TFLM_ROOT}" \
  -I"${TFLM_ROOT}/tensorflow" \
  -I"${TFLM_ROOT}/tensorflow/lite" \
  -I"${TFLM_ROOT}/tensorflow/lite/kernels" \
  -I"${TFLM_ROOT}/tensorflow/lite/micro/tools/make/downloads/gemmlowp" \
  --specs=nosys.specs \
  "${SRCS[@]}" -lgcc -o "${ELF_FILE}"

echo "[1] ELF build completed."

# ===== 3. Disassembly 생성 (C + ASM 같이 출력) =====
riscv32-unknown-elf-objdump -d -S "${ELF_FILE}" > "${ASM_FILE}"

echo "[2] Disassembly generated."

# ===== 4. 순수 바이너리(.bin) 생성 =====
riscv32-unknown-elf-objcopy -O binary "${ELF_FILE}" "${BIN_FILE}"

echo "[3] Raw binary generated."

# ===== 5. Verilog용 메모리 파일 생성 (IMEM / DMEM 분리) =====
# 부트코드 없이 main 엔트리로 빌드하더라도 TB가 바로 읽을 수 있도록
# 명령어/데이터 메모리 파일을 분리 생성한다.
riscv32-unknown-elf-objcopy -O verilog --verilog-data-width=4 \
  -j .text -j .rodata "${ELF_FILE}" "${IMEM_HEX_FILE}"
echo "[4-1] IMEM Hex file generated: ${IMEM_HEX_FILE}"

riscv32-unknown-elf-objcopy -O verilog --verilog-data-width=4 \
  -j .data --change-section-address .data=0 "${ELF_FILE}" "${DMEM_HEX_FILE}"
echo "[4-2] DMEM Hex file generated: ${DMEM_HEX_FILE}"

echo "========== Build Completed =========="