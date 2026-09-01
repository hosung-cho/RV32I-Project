#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
BASE_DIR="$(cd "${PROJECT_DIR}/../260726_XPC32_RegToReg" && pwd)"
BUILD_DIR="${PROJECT_DIR}/vivado/build/lfc_saif_power"
VERILATOR_DIR="${BUILD_DIR}/verilator"
VERILATOR_IDLE_DIR="${BUILD_DIR}/verilator_idle"
RESULT_DIR="${BUILD_DIR}/results"
IDLE_RESULT_DIR="${RESULT_DIR}/idle"
SOFTWARE_BUILD="${PROJECT_DIR}/software/lfc/build/bdot128"
GENERATED_DIR="${PROJECT_DIR}/software/lfc/generated"
ROUTED_DCP="${PROJECT_DIR}/vivado/build/wide_bdot_core/wide_bdot_fpga_core_routed.dcp"
SAIF_FILE="${RESULT_DIR}/lfc_inference.saif"
IDLE_SAIF_FILE="${RESULT_DIR}/lfc_idle.saif"
SIM_LOG="${RESULT_DIR}/lfc_saif_sim.log"
IDLE_SIM_LOG="${RESULT_DIR}/lfc_idle_saif_sim.log"
POWER_LOG="${RESULT_DIR}/lfc_saif_power.log"
BOARD_PROJECT_DIR="${PROJECT_DIR}/../../../../vivado_workspace/260817_Wide_BDOT128"
BOARD_ROUTED_DCP="${BOARD_PROJECT_DIR}/Wide_BDOT128_Ultra96V1.runs/impl_1/design_1_wrapper_routed.dcp"
BOARD_POWER_LOG="${RESULT_DIR}/board_lfc_saif_power.log"
BOARD_SAIF_FILE="${RESULT_DIR}/board_lfc_inference.saif"

mkdir -p "${VERILATOR_DIR}" "${VERILATOR_IDLE_DIR}" "${RESULT_DIR}" "${IDLE_RESULT_DIR}"

"${PROJECT_DIR}/software/lfc/build_lfc_bdot.sh"

pushd "${RESULT_DIR}" >/dev/null
cp "${SOFTWARE_BUILD}/imem.hex" imem.hex
cp "${SOFTWARE_BUILD}/dmem.hex" dmem.hex
cp "${GENERATED_DIR}/weight_128.hex" weight_128.hex
cp "${GENERATED_DIR}/activation0.hex" activation0.hex
cp "${GENERATED_DIR}/activation1.hex" activation1.hex
cp "${GENERATED_DIR}/golden_activation0.hex" golden_activation0.hex
cp "${GENERATED_DIR}/golden_activation1.hex" golden_activation1.hex
cp "${GENERATED_DIR}/golden_activation2.hex" golden_activation2.hex

CCACHE_DISABLE=1 verilator --binary --timing -Wno-fatal \
    --trace-saif \
    --trace-depth 0 \
    --trace-max-array 64 \
    --trace-underscore \
    -DVERILATOR_POWER_SAIF \
    --top-module rv32i_lfc_bdot_tb \
    --Mdir "${VERILATOR_DIR}" \
    "${BASE_DIR}/src/rtl/basic_modules.v" \
    "${BASE_DIR}/src/rtl/xnor_popcount32.v" \
    "${PROJECT_DIR}/src/rtl/bdot_cpu_control.v" \
    "${PROJECT_DIR}/src/rtl/wide_xnor_popcount.v" \
    "${PROJECT_DIR}/src/rtl/wide_bram_32xwide_model.v" \
    "${PROJECT_DIR}/src/rtl/wide_bdot_accel.v" \
    "${PROJECT_DIR}/src/rtl/rv32i_cpu.v" \
    "${PROJECT_DIR}/testbench/rv32i_lfc_bdot_tb.v"

"${VERILATOR_DIR}/Vrv32i_lfc_bdot_tb" \
    +IMEM=imem.hex \
    +DMEM=dmem.hex \
    +WEIGHT=weight_128.hex \
    +ACT0=activation0.hex \
    +ACT1=activation1.hex \
    +GOLDEN0=golden_activation0.hex \
    +GOLDEN1=golden_activation1.hex \
    +GOLDEN2=golden_activation2.hex \
    | tee "${SIM_LOG}"

CCACHE_DISABLE=1 verilator --binary --timing -Wno-fatal \
    --trace-saif \
    --trace-depth 0 \
    --trace-max-array 64 \
    --trace-underscore \
    -DVERILATOR_IDLE_SAIF \
    --top-module rv32i_lfc_bdot_tb \
    --Mdir "${VERILATOR_IDLE_DIR}" \
    "${BASE_DIR}/src/rtl/basic_modules.v" \
    "${BASE_DIR}/src/rtl/xnor_popcount32.v" \
    "${PROJECT_DIR}/src/rtl/bdot_cpu_control.v" \
    "${PROJECT_DIR}/src/rtl/wide_xnor_popcount.v" \
    "${PROJECT_DIR}/src/rtl/wide_bram_32xwide_model.v" \
    "${PROJECT_DIR}/src/rtl/wide_bdot_accel.v" \
    "${PROJECT_DIR}/src/rtl/rv32i_cpu.v" \
    "${PROJECT_DIR}/testbench/rv32i_lfc_bdot_tb.v"

"${VERILATOR_IDLE_DIR}/Vrv32i_lfc_bdot_tb" \
    +IMEM=imem.hex \
    +DMEM=dmem.hex \
    +WEIGHT=weight_128.hex \
    +ACT0=activation0.hex \
    +ACT1=activation1.hex \
    +GOLDEN0=golden_activation0.hex \
    +GOLDEN1=golden_activation1.hex \
    +GOLDEN2=golden_activation2.hex \
    | tee "${IDLE_SIM_LOG}"
popd >/dev/null

# Verilator 5.049 omits four optional SAIF header fields that Vivado 2024.2
# requires in this order. Normalize only the freshly generated artifact.
if ! grep -q '^(DESIGN ' "${SAIF_FILE}"; then
    sed -i '/^(DIRECTION /a (DESIGN "rv32i_lfc_bdot_tb")\n(DATE "2026-08-24")\n(VENDOR "Verilator")' "${SAIF_FILE}"
fi
if ! grep -q '^(VERSION ' "${SAIF_FILE}"; then
    sed -i '/^(PROGRAM_NAME /a (VERSION "5.049")' "${SAIF_FILE}"
fi
if ! grep -q '^(DESIGN ' "${IDLE_SAIF_FILE}"; then
    sed -i '/^(DIRECTION /a (DESIGN "rv32i_lfc_bdot_tb")\n(DATE "2026-08-24")\n(VENDOR "Verilator")' "${IDLE_SAIF_FILE}"
fi
if ! grep -q '^(VERSION ' "${IDLE_SAIF_FILE}"; then
    sed -i '/^(PROGRAM_NAME /a (VERSION "5.049")' "${IDLE_SAIF_FILE}"
fi

# Verilator counts the time before a late $dumpfile call as a constant hold in
# SAIF. Remove that prefix so this file represents only 10,000 x 28.572 ns.
python3 "${SCRIPT_DIR}/trim_verilator_saif.py" "${IDLE_SAIF_FILE}" 285720000

# Create a board-scoped copy without changing the canonical core SAIF.
cp "${SAIF_FILE}" "${BOARD_SAIF_FILE}"
sed -i 's/^(DESIGN "rv32i_lfc_bdot_tb")$/(DESIGN "design_1_wrapper")/' "${BOARD_SAIF_FILE}"
sed -i 's/^ (INSTANCE rv32i_lfc_bdot_tb$/ (INSTANCE design_1_i\n  (INSTANCE wide_bdot_fpga_core_0\n   (INSTANCE inst/' "${BOARD_SAIF_FILE}"
sed -i '$i\   )\n  )' "${BOARD_SAIF_FILE}"

if ! grep -q "TB PASS: rv32i_lfc_bdot" "${SIM_LOG}"; then
    echo "ERROR: LFC functional result did not pass during SAIF simulation" >&2
    exit 5
fi
if [[ ! -s "${SAIF_FILE}" ]]; then
    echo "ERROR: SAIF file is missing or empty: ${SAIF_FILE}" >&2
    exit 6
fi
if ! grep -q "TB PASS: rv32i_lfc_bdot" "${IDLE_SIM_LOG}"; then
    echo "ERROR: LFC functional result did not pass during idle SAIF simulation" >&2
    exit 6
fi
if [[ ! -s "${IDLE_SAIF_FILE}" ]]; then
    echo "ERROR: idle SAIF file is missing or empty: ${IDLE_SAIF_FILE}" >&2
    exit 6
fi

vivado -mode batch \
    -source "${SCRIPT_DIR}/report_lfc_saif_power.tcl" \
    -tclargs "${ROUTED_DCP}" "${SAIF_FILE}" "${RESULT_DIR}" \
    | tee "${POWER_LOG}"

if ! grep -q "POWER PASS" "${POWER_LOG}"; then
    echo "ERROR: Vivado SAIF power analysis did not complete" >&2
    exit 7
fi

vivado -mode batch \
    -source "${SCRIPT_DIR}/report_lfc_saif_power.tcl" \
    -tclargs "${ROUTED_DCP}" "${IDLE_SAIF_FILE}" "${IDLE_RESULT_DIR}" \
    | tee "${IDLE_RESULT_DIR}/lfc_saif_power.log"

if ! grep -q "POWER PASS" "${IDLE_RESULT_DIR}/lfc_saif_power.log"; then
    echo "ERROR: Vivado idle SAIF power analysis did not complete" >&2
    exit 7
fi

if [[ -f "${BOARD_ROUTED_DCP}" ]]; then
    vivado -mode batch \
        -source "${SCRIPT_DIR}/report_board_lfc_saif_power.tcl" \
        -tclargs "${BOARD_ROUTED_DCP}" "${BOARD_SAIF_FILE}" "${RESULT_DIR}" \
        | tee "${BOARD_POWER_LOG}"

    if ! grep -q "BOARD POWER PASS" "${BOARD_POWER_LOG}"; then
        echo "ERROR: Vivado board-level SAIF power analysis did not complete" >&2
        exit 8
    fi
else
    echo "WARNING: board routed checkpoint not found; skipped board-level power analysis" >&2
fi

echo "LFC SAIF POWER PASS"
echo "SAIF=${SAIF_FILE}"
echo "IDLE_SAIF=${IDLE_SAIF_FILE}"
echo "REPORT=${RESULT_DIR}/lfc_saif_power.rpt"
echo "IDLE_REPORT=${IDLE_RESULT_DIR}/lfc_saif_power.rpt"
if [[ -f "${RESULT_DIR}/board_lfc_saif_power.rpt" ]]; then
    echo "BOARD_REPORT=${RESULT_DIR}/board_lfc_saif_power.rpt"
fi
