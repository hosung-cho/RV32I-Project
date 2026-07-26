#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
BUILD_DIR="${SCRIPT_DIR}/build/xnor_popcount32"

mkdir -p "${BUILD_DIR}"

iverilog \
  -g2012 \
  -Wall \
  -s xnor_popcount32_tb \
  -o "${BUILD_DIR}/xnor_popcount32_tb.out" \
  "${PROJECT_DIR}/src/rtl/xnor_popcount32.v" \
  "${SCRIPT_DIR}/xnor_popcount32_tb.v"

vvp "${BUILD_DIR}/xnor_popcount32_tb.out"
