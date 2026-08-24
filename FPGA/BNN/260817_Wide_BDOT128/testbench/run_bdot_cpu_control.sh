#!/usr/bin/env bash
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
BUILD_DIR="${SCRIPT_DIR}/build/bdot_cpu_control"
mkdir -p "${BUILD_DIR}"
iverilog -g2012 -Wall -s bdot_cpu_control_tb \
  -o "${BUILD_DIR}/bdot_cpu_control_tb.out" \
  "${PROJECT_DIR}/src/rtl/bdot_cpu_control.v" \
  "${SCRIPT_DIR}/bdot_cpu_control_tb.v"
vvp "${BUILD_DIR}/bdot_cpu_control_tb.out"

