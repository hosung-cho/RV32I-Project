#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
POINTWISE_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
SRC_DIR="${POINTWISE_DIR}/src"
BUILD_DIR="${POINTWISE_DIR}/build"
TFLM_ROOT="${POINTWISE_DIR}/../../lib/tflite-micro"

CASE_ID="${1:-0}"

mkdir -p "${BUILD_DIR}"

ELF_FILE="${BUILD_DIR}/main_pointwise_light_case${CASE_ID}.elf"
ASM_FILE="${BUILD_DIR}/main_pointwise_light_case${CASE_ID}.asm"
BIN_FILE="${BUILD_DIR}/main_pointwise_light_case${CASE_ID}.bin"
IMEM_HEX_FILE="${BUILD_DIR}/imem_case${CASE_ID}.hex"
DMEM_HEX_FILE="${BUILD_DIR}/dmem_case${CASE_ID}.hex"
LINKER_SCRIPT="${SRC_DIR}/custom_memory_noboot.ld"

# ===== 1. 소스 파일 목록 =====
SRCS=(
  "${SRC_DIR}/main_pointwise_light.cc"
  "${TFLM_ROOT}/tensorflow/lite/kernels/internal/common.cc"
  "${TFLM_ROOT}/tensorflow/lite/kernels/internal/quantization_util.cc"
)

# ===== 2. ELF 생성 =====
riscv32-unknown-elf-g++ -march=rv32i -mabi=ilp32 -O2 \
  -ffunction-sections \
  -fdata-sections \
  -fno-builtin \
  -fno-builtin-memset \
  -fno-builtin-memcpy \
  -Wl,--gc-sections \
  -T "${LINKER_SCRIPT}" \
  -nostdlib \
  -DNDEBUG \
  -DCASE_ID="${CASE_ID}" \
  -I"${TFLM_ROOT}" \
  -I"${TFLM_ROOT}/tensorflow" \
  -I"${TFLM_ROOT}/tensorflow/lite" \
  -I"${TFLM_ROOT}/tensorflow/lite/kernels" \
  -I"${TFLM_ROOT}/tensorflow/lite/micro/tools/make/downloads/gemmlowp" \
  --specs=nosys.specs \
  "${SRCS[@]}" -lgcc -o "${ELF_FILE}"

echo "[1] ELF build completed: ${ELF_FILE}"

# ===== 3. Disassembly 생성 (C + ASM 같이 출력) =====
riscv32-unknown-elf-objdump -d -S "${ELF_FILE}" > "${ASM_FILE}"
echo "[2] Disassembly generated: ${ASM_FILE}"

# ===== 4. 순수 바이너리(.bin) 생성 =====
riscv32-unknown-elf-objcopy -O binary "${ELF_FILE}" "${BIN_FILE}"
echo "[3] Raw binary generated: ${BIN_FILE}"

# ===== 5. Verilog용 메모리 파일 생성 (IMEM / DMEM 분리) =====
riscv32-unknown-elf-objcopy -O verilog --verilog-data-width=4 \
  -j .text -j .rodata -j .srodata -j .eh_frame "${ELF_FILE}" "${IMEM_HEX_FILE}"
echo "[4-1] IMEM Hex generated: ${IMEM_HEX_FILE}"

if riscv32-unknown-elf-objdump -h "${ELF_FILE}" | grep -q "[.]data\|[.]sdata"; then
  riscv32-unknown-elf-objcopy -O verilog --verilog-data-width=4 \
    --change-addresses -0x20000000 \
    -j .sdata -j .data "${ELF_FILE}" "${DMEM_HEX_FILE}"
  echo "[4-2] DMEM Hex generated: ${DMEM_HEX_FILE}"
else
  {
    echo "@00000000"
    echo "00000000"
  } > "${DMEM_HEX_FILE}"
  echo "[4-2] No .data/.sdata section found. Created zero DMEM file: ${DMEM_HEX_FILE}"
fi

if [[ ! -s "${DMEM_HEX_FILE}" ]]; then
  {
    echo "@00000000"
    echo "00000000"
  } > "${DMEM_HEX_FILE}"
  echo "[4-2] DMEM Hex was empty. Wrote fallback base line."
fi

echo "========== Build Completed (CASE_ID=${CASE_ID}) =========="
