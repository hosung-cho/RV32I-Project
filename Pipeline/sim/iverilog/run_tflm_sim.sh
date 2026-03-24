#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"
SIM_DIR="$ROOT_DIR/sim_tflm"
TB_FILE="$ROOT_DIR/testbench_TFLM/RV32I_System_tb.v"
OUT_BIN="$SIM_DIR/sim_tflm_tb"

DEFAULT_HEX_DIR="$ROOT_DIR/../TinyML/my_standalone/260317"
IMEM_SRC="${1:-$DEFAULT_HEX_DIR/imem.hex}"
DMEM_SRC="${2:-$DEFAULT_HEX_DIR/dmem.hex}"

if [[ ! -f "$IMEM_SRC" ]]; then
  echo "[ERROR] imem.hex not found: $IMEM_SRC"
  exit 1
fi

if [[ ! -f "$DMEM_SRC" ]]; then
  echo "[ERROR] dmem.hex not found: $DMEM_SRC"
  exit 1
fi

mkdir -p "$SIM_DIR"
cp "$IMEM_SRC" "$SIM_DIR/imem.hex"
cp "$DMEM_SRC" "$SIM_DIR/dmem.hex"

shopt -s nullglob
RTL_FILES=("$ROOT_DIR"/src/rtl/*.v)
shopt -u nullglob

if [[ ${#RTL_FILES[@]} -eq 0 ]]; then
  echo "[ERROR] No RTL files found under $ROOT_DIR/src/rtl"
  exit 1
fi

echo "[INFO] Build Pipeline TB"
iverilog -g2012 -o "$OUT_BIN" "$TB_FILE" "${RTL_FILES[@]}"

echo "[INFO] Run simulation in $SIM_DIR"
(
  cd "$SIM_DIR"
  vvp ./sim_tflm_tb | tee sim.log
)

echo "[DONE] Pipeline simulation complete"
