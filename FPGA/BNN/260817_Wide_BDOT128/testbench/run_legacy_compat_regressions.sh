#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
BASE_DIR="$(cd "${PROJECT_DIR}/../260726_XPC32_RegToReg" && pwd)"
EBNN_DIR="$(cd "${PROJECT_DIR}/../260624_eBNN_Binary_MNIST" && pwd)"
BUILD_DIR="${SCRIPT_DIR}/build/legacy_compat"
VERILATOR_DIR="/tmp/wide_bdot_ebnn_verilator"

mkdir -p "${BUILD_DIR}/base" "${BUILD_DIR}/xpc32" "${BUILD_DIR}/ebnn"

iverilog -g2012 -Wall -s rv32i_base_regression_tb \
  -o "${BUILD_DIR}/base/tb.out" \
  "${BASE_DIR}/src/rtl/basic_modules.v" \
  "${BASE_DIR}/src/rtl/xnor_popcount32.v" \
  "${PROJECT_DIR}/src/rtl/bdot_cpu_control.v" \
  "${PROJECT_DIR}/src/rtl/rv32i_cpu.v" \
  "${BASE_DIR}/testbench/rv32i_base_regression_tb.v"
cp "${BASE_DIR}/testbench/build/rv32i_base_regression/imem.hex" "${BUILD_DIR}/base/imem.hex"
cp "${BASE_DIR}/testbench/build/rv32i_base_regression/dmem.hex" "${BUILD_DIR}/base/dmem.hex"
(cd "${BUILD_DIR}/base" && vvp ./tb.out)

iverilog -g2012 -Wall -s rv32i_xpc32_tb \
  -o "${BUILD_DIR}/xpc32/tb.out" \
  "${BASE_DIR}/src/rtl/basic_modules.v" \
  "${BASE_DIR}/src/rtl/xnor_popcount32.v" \
  "${PROJECT_DIR}/src/rtl/bdot_cpu_control.v" \
  "${PROJECT_DIR}/src/rtl/rv32i_cpu.v" \
  "${BASE_DIR}/testbench/rv32i_xpc32_tb.v"
vvp "${BUILD_DIR}/xpc32/tb.out"

cp "${EBNN_DIR}/build_rv32i/imem.hex" "${BUILD_DIR}/ebnn/imem.hex"
cp "${EBNN_DIR}/build_rv32i/dmem.hex" "${BUILD_DIR}/ebnn/dmem.hex"

CCACHE_DISABLE=1 verilator --binary --timing -Wno-fatal \
  --top-module rv32i_ebnn_regression_tb \
  --Mdir "${VERILATOR_DIR}" \
  "${BASE_DIR}/src/rtl/basic_modules.v" \
  "${BASE_DIR}/src/rtl/xnor_popcount32.v" \
  "${PROJECT_DIR}/src/rtl/bdot_cpu_control.v" \
  "${PROJECT_DIR}/src/rtl/rv32i_cpu.v" \
  "${BASE_DIR}/testbench/rv32i_ebnn_regression_tb.v"
(cd "${BUILD_DIR}/ebnn" && "${VERILATOR_DIR}/Vrv32i_ebnn_regression_tb")

echo "ALL LEGACY COMPATIBILITY REGRESSIONS PASS"

