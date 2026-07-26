#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
LOG_DIR="${SCRIPT_DIR}/logs"

mkdir -p "${LOG_DIR}"

run_and_log() {
    local name="$1"
    shift

    echo
    echo "== ${name} =="
    "$@" 2>&1 | tee "${LOG_DIR}/${name}.log"
}

run_and_log xpc32_software_encoding \
    "${PROJECT_DIR}/software/build_xpc32_smoke.sh"
run_and_log xnor_popcount32 \
    "${SCRIPT_DIR}/run_xnor_popcount32.sh"
run_and_log rv32i_xpc32 \
    "${SCRIPT_DIR}/run_rv32i_xpc32.sh"
run_and_log rv32i_base_regression \
    "${SCRIPT_DIR}/run_rv32i_base_regression.sh"
run_and_log rv32i_ebnn_regression \
    "${SCRIPT_DIR}/run_rv32i_ebnn_regression.sh"
run_and_log rv32i_lfc_regression \
    "${SCRIPT_DIR}/run_rv32i_lfc_regression.sh"

echo
echo "ALL FUNCTIONAL TESTS PASS"
