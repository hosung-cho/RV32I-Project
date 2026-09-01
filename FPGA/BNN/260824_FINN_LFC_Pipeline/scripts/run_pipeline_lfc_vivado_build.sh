#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_FILE="${SCRIPT_DIR}/../reports/pipeline_lfc_vivado_build.log"

vivado -mode batch \
  -source "${SCRIPT_DIR}/build_pipeline_lfc_vivado.tcl" \
  -log "${LOG_FILE}"
