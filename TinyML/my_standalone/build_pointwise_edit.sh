#!/bin/bash

# ===== 1. 소스 파일 목록 =====
SRCS="main_pointwise.cc \
      ./tensorflow/lite/kernels/internal/common.cc \
      ./tensorflow/lite/kernels/internal/quantization_util.cc"

# ===== 2. ELF 생성 =====
riscv32-unknown-elf-g++ -march=rv32i -mabi=ilp32 -O2 \
  -I. \
  -I./tensorflow \
  -I./tensorflow/lite \
  -I./tensorflow/lite/kernels \
  -I./tensorflow/lite/micro/tools/make/downloads/gemmlowp \
  --specs=nosys.specs \
  $SRCS -o main_pointwise.elf

echo "[1] ELF build completed."

# ===== 3. Disassembly 생성 (C + ASM 같이 출력) =====
riscv32-unknown-elf-objdump -d -S main_pointwise.elf > main_pointwise_full.asm

echo "[2] Disassembly generated."

# ===== 4. 순수 바이너리(.bin) 생성 =====
riscv32-unknown-elf-objcopy -O binary main_pointwise.elf main_pointwise.bin

echo "[3] Raw binary generated."

# ===== 5. (선택) Verilog용 메모리 파일 생성 =====
riscv32-unknown-elf-objcopy -O verilog main_pointwise.elf main_pointwise.mem

echo "[4] Verilog memory file generated."

echo "========== Build Completed =========="