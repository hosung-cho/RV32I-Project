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
MEM_FILE="${BUILD_DIR}/main_pointwise.mem"

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

# ===== 5. (선택) Verilog용 메모리 파일 생성 =====
riscv32-unknown-elf-objcopy -O verilog "${ELF_FILE}" "${MEM_FILE}"

echo "[4] Verilog memory file generated."

echo "========== Build Completed =========="