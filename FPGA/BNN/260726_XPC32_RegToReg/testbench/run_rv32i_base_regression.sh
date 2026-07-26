#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
SOFTWARE_DIR="${PROJECT_DIR}/software"
SOFTWARE_BUILD="${SOFTWARE_DIR}/build/rv32i_regression"
BUILD_DIR="${SCRIPT_DIR}/build/rv32i_base_regression"

"${SOFTWARE_DIR}/build_rv32i_regression.sh"

mkdir -p "${BUILD_DIR}"
cp "${SOFTWARE_BUILD}/imem.hex" "${BUILD_DIR}/imem.hex"
cp "${SOFTWARE_BUILD}/dmem.hex" "${BUILD_DIR}/dmem.hex"

iverilog \
  -g2012 \
  -Wall \
  -s rv32i_base_regression_tb \
  -o "${BUILD_DIR}/rv32i_base_regression_tb.out" \
  "${PROJECT_DIR}/src/rtl/basic_modules.v" \
  "${PROJECT_DIR}/src/rtl/xnor_popcount32.v" \
  "${PROJECT_DIR}/src/rtl/rv32i_cpu.v" \
  "${SCRIPT_DIR}/rv32i_base_regression_tb.v"

(
  cd "${BUILD_DIR}"
  vvp ./rv32i_base_regression_tb.out
)
