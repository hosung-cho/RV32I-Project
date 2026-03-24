#!/bin/bash

# 컴파일할 소스 파일들 목록
SRCS="main_pointwise.cc \
      ./tensorflow/lite/kernels/internal/common.cc \
      ./tensorflow/lite/kernels/internal/quantization_util.cc"

# 컴파일 명령어 실행
riscv32-unknown-elf-g++ -march=rv32i -mabi=ilp32 -O2 \
  -I. -I./tensorflow/lite/micro/tools/make/downloads/gemmlowp \
  --specs=nosys.specs \
  $SRCS -o main_pointwise.elf

# Disassembly 추가
riscv32-unknown-elf-objdump -d main_pointwise.elf > main_pointwise_full.asm

echo "Build Completed!"