#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
BUILD_DIR="${SCRIPT_DIR}/build/wide_bram_wrapper"

mkdir -p "${BUILD_DIR}"

iverilog -g2012 -Wall \
  -s wide_bram_wrapper_tb \
  -o "${BUILD_DIR}/wide_bram_wrapper_tb.out" \
  "${PROJECT_DIR}/src/rtl/wide_bram_32xwide_model.v" \
  "${SCRIPT_DIR}/wide_bram_wrapper_tb.v"

vvp "${BUILD_DIR}/wide_bram_wrapper_tb.out"

