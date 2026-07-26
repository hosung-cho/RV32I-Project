#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "${SCRIPT_DIR}/../.." && pwd)"
WORKSPACE_DIR="$(cd "${PROJECT_DIR}/../../../.." && pwd)"
SOURCE_LFC_DIR="${WORKSPACE_DIR}/RV32I-Project/FPGA/BNN/260719_FINN_LFC_RV32I"
PARAM_DIR="${SOURCE_LFC_DIR}/generated"
CRT0="${SOURCE_LFC_DIR}/RISC-V/crt0.S"
LINKER_SCRIPT="${SCRIPT_DIR}/memory_fpga.ld"
BUILD_ROOT="${SCRIPT_DIR}/build"

build_variant() {
    local variant="$1"
    local define_flag="$2"
    local build_dir="${BUILD_ROOT}/${variant}"
    local elf_file="${build_dir}/finn_lfc_${variant}.elf"

    mkdir -p "${build_dir}"

    riscv32-unknown-elf-gcc \
        -march=rv32i -mabi=ilp32 -O2 -g0 \
        -ffunction-sections -fdata-sections -fno-builtin -nostdlib \
        -I"${PARAM_DIR}" ${define_flag} \
        -Wl,--gc-sections \
        -Wl,-Map,"${build_dir}/finn_lfc_${variant}.map" \
        -T "${LINKER_SCRIPT}" \
        "${CRT0}" "${SCRIPT_DIR}/main_finn_lfc_rv32i.c" \
        -lgcc -o "${elf_file}"

    riscv32-unknown-elf-size "${elf_file}"
    riscv32-unknown-elf-objdump -d -S "${elf_file}" \
        > "${build_dir}/finn_lfc_${variant}.asm"
    riscv32-unknown-elf-objcopy \
        -O verilog --verilog-data-width=4 \
        -j .text "${elf_file}" "${build_dir}/imem.hex"
    riscv32-unknown-elf-objcopy \
        -O verilog --verilog-data-width=4 \
        --change-addresses -0x20000000 \
        -j .rodata -j .data \
        "${elf_file}" "${build_dir}/dmem.hex"
}

build_variant baseline ""
build_variant xpc32 "-DUSE_XPC32=1"

xpc_count="$(
    rg -c '\.insn[[:space:]]+4, 0x0*[0-9a-f]*0b' \
        "${BUILD_ROOT}/xpc32/finn_lfc_xpc32.asm" || true
)"

if [[ "${xpc_count}" -lt 1 ]]; then
    echo "ERROR: XPC32 encoding was not found in accelerated disassembly" >&2
    exit 1
fi

echo "LFC software variants built; XPC32 static instruction sites=${xpc_count}"
