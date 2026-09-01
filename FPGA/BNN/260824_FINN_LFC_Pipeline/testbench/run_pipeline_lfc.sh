#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILD_DIR="${PROJECT_DIR}/build/verilator_lfc"
SOFTWARE_BUILD="${PROJECT_DIR}/software/build"

"${PROJECT_DIR}/software/build_lfc.sh"
mkdir -p "${BUILD_DIR}"

CCACHE_DISABLE=1 verilator --binary --timing -Wno-fatal \
  --top-module pipeline_lfc_tb --Mdir "${BUILD_DIR}" \
  "${PROJECT_DIR}/src/rtl/basic_modules.v" \
  "${PROJECT_DIR}/src/rtl/rv32i_cpu.v" \
  "${PROJECT_DIR}/testbench/pipeline_lfc_tb.v"

"${BUILD_DIR}/Vpipeline_lfc_tb" \
  +IMEM="${SOFTWARE_BUILD}/imem.hex" \
  +DMEM="${SOFTWARE_BUILD}/dmem.hex"
