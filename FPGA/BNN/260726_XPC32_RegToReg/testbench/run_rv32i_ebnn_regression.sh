#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
WORKSPACE_DIR="$(cd "${PROJECT_DIR}/../../../.." && pwd)"
EBNN_BUILD_DIR="${WORKSPACE_DIR}/RV32I-Project/FPGA/BNN/260624_eBNN_Binary_MNIST/build_rv32i"
BUILD_DIR="${SCRIPT_DIR}/build/rv32i_ebnn_regression"
PROJECT_LINK="/tmp/xpc32_reg_to_reg"
VERILATOR_BUILD="/tmp/xpc32_ebnn_verilator"

mkdir -p "${BUILD_DIR}"

cp "${EBNN_BUILD_DIR}/imem.hex" "${BUILD_DIR}/imem.hex"
cp "${EBNN_BUILD_DIR}/dmem.hex" "${BUILD_DIR}/dmem.hex"

# GNU Make used by Verilator cannot build in a path containing spaces. Use a
# stable /tmp symlink for source paths and place generated C++ in /tmp.
ln -sfn "${PROJECT_DIR}" "${PROJECT_LINK}"

(
  cd /tmp
  CCACHE_DISABLE=1 verilator \
    --binary \
    --timing \
    -Wno-fatal \
    --top-module rv32i_ebnn_regression_tb \
    --Mdir "${VERILATOR_BUILD}" \
    "${PROJECT_LINK}/src/rtl/basic_modules.v" \
    "${PROJECT_LINK}/src/rtl/xnor_popcount32.v" \
    "${PROJECT_LINK}/src/rtl/rv32i_cpu.v" \
    "${PROJECT_LINK}/testbench/rv32i_ebnn_regression_tb.v"
)

(
  cd "${BUILD_DIR}"
  "${VERILATOR_BUILD}/Vrv32i_ebnn_regression_tb"
)
