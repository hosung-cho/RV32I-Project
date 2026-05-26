#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

cp ../../../../TinyML/MLPerf_Tiny_standalone/build_rv32i/imem.hex ../imem.hex
cp ../../../../TinyML/MLPerf_Tiny_standalone/build_rv32i/dmem.hex ../dmem.hex

vivado -mode batch -source run_sim.tcl -notrace

rm -rf .Xil
rm -f vivado*.jou vivado*.log
