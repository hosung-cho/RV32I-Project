#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_DIR="${SCRIPT_DIR}/logs"

mkdir -p "${LOG_DIR}"

run_test() {
  local name="$1"
  local script="$2"
  echo "[RUN] ${name}"
  "${script}" | tee "${LOG_DIR}/${name}.log"
}

run_test wide_bram_wrapper "${SCRIPT_DIR}/run_wide_bram_wrapper.sh"
run_test wide_xnor_popcount "${SCRIPT_DIR}/run_wide_xnor_popcount.sh"
run_test wide_bdot_accel "${SCRIPT_DIR}/run_wide_bdot_accel.sh"
run_test bdot_cpu_control "${SCRIPT_DIR}/run_bdot_cpu_control.sh"
run_test rv32i_bdot_integration "${SCRIPT_DIR}/run_rv32i_bdot_integration.sh"

echo "ALL FUNCTIONAL TESTS PASS"
