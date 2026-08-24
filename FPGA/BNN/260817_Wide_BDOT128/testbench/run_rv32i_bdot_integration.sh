#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
BASE_DIR="$(cd "${PROJECT_DIR}/../260726_XPC32_RegToReg" && pwd)"
BUILD_DIR="${SCRIPT_DIR}/build/rv32i_bdot_integration"
mkdir -p "${BUILD_DIR}"
iverilog -g2012 -Wall -s rv32i_bdot_integration_tb \
  -o "${BUILD_DIR}/rv32i_bdot_integration_tb.out" \
  "${BASE_DIR}/src/rtl/basic_modules.v" \
  "${BASE_DIR}/src/rtl/xnor_popcount32.v" \
  "${PROJECT_DIR}/src/rtl/bdot_cpu_control.v" \
  "${PROJECT_DIR}/src/rtl/wide_xnor_popcount.v" \
  "${PROJECT_DIR}/src/rtl/wide_bram_32xwide_model.v" \
  "${PROJECT_DIR}/src/rtl/wide_bdot_accel.v" \
  "${PROJECT_DIR}/src/rtl/rv32i_cpu.v" \
  "${SCRIPT_DIR}/rv32i_bdot_integration_tb.v"
vvp "${BUILD_DIR}/rv32i_bdot_integration_tb.out"
