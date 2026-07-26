#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
PROJECT_LINK="/tmp/xpc32_reg_to_reg"
VERILATOR_BUILD="/tmp/xpc32_lfc_verilator"
SOFTWARE_BUILD="${PROJECT_DIR}/software/lfc/build"
LOG_DIR="${SCRIPT_DIR}/logs"

"${PROJECT_DIR}/software/lfc/build_lfc_variants.sh"
mkdir -p "${LOG_DIR}"

ln -sfn "${PROJECT_DIR}" "${PROJECT_LINK}"

(
    cd /tmp
    CCACHE_DISABLE=1 verilator \
        --binary \
        --timing \
        -Wno-fatal \
        --top-module rv32i_lfc_regression_tb \
        --Mdir "${VERILATOR_BUILD}" \
        "${PROJECT_LINK}/src/rtl/basic_modules.v" \
        "${PROJECT_LINK}/src/rtl/xnor_popcount32.v" \
        "${PROJECT_LINK}/src/rtl/rv32i_cpu.v" \
        "${PROJECT_LINK}/testbench/rv32i_lfc_regression_tb.v"
)

run_variant() {
    local variant="$1"
    local expected_xpc="$2"

    (
        cd "${SOFTWARE_BUILD}/${variant}"
        "${VERILATOR_BUILD}/Vrv32i_lfc_regression_tb" \
            "+IMEM=${SOFTWARE_BUILD}/${variant}/imem.hex" \
            "+DMEM=${SOFTWARE_BUILD}/${variant}/dmem.hex" \
            "+EXPECTED_XPC=${expected_xpc}"
    ) | tee "${LOG_DIR}/rv32i_lfc_${variant}.log"
}

run_variant baseline 0
run_variant xpc32 90432

baseline_cycles="$(
    sed -n 's/.*LFC result cycles=\([0-9][0-9]*\).*/\1/p' \
        "${LOG_DIR}/rv32i_lfc_baseline.log"
)"
xpc32_cycles="$(
    sed -n 's/.*LFC result cycles=\([0-9][0-9]*\).*/\1/p' \
        "${LOG_DIR}/rv32i_lfc_xpc32.log"
)"

awk \
    -v baseline="${baseline_cycles}" \
    -v xpc32="${xpc32_cycles}" \
    'BEGIN {
        printf "LFC cycle comparison baseline=%d xpc32=%d reduction=%d speedup=%.6fx\n", baseline, xpc32, baseline - xpc32, baseline / xpc32
    }' | tee "${LOG_DIR}/rv32i_lfc_comparison.log"
