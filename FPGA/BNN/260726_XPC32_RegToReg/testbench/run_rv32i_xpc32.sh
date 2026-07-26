#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
BUILD_DIR="${SCRIPT_DIR}/build/rv32i_xpc32"

mkdir -p "${BUILD_DIR}"

iverilog \
  -g2012 \
  -Wall \
  -s rv32i_xpc32_tb \
  -o "${BUILD_DIR}/rv32i_xpc32_tb.out" \
  "${PROJECT_DIR}/src/rtl/basic_modules.v" \
  "${PROJECT_DIR}/src/rtl/xnor_popcount32.v" \
  "${PROJECT_DIR}/src/rtl/rv32i_cpu.v" \
  "${SCRIPT_DIR}/rv32i_xpc32_tb.v"

vvp "${BUILD_DIR}/rv32i_xpc32_tb.out"
