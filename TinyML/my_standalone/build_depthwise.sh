#!/bin/bash

# 컴파일할 소스 파일들 목록 (main.cc 대신 main_depthwise.cc 사용)
SRCS="main_depthwise.cc \
      ./tensorflow/lite/kernels/internal/common.cc \
      ./tensorflow/lite/kernels/internal/quantization_util.cc"

# 컴파일 및 링킹 명령어 실행
riscv32-unknown-elf-g++ -march=rv32i -mabi=ilp32 -O2 \
  -I. -I./tensorflow/lite/micro/tools/make/downloads/gemmlowp \
  --specs=nosys.specs \
  $SRCS -o main_depthwise.elf

# Disassembly 추가
riscv32-unknown-elf-objdump -d main_depthwise.elf > main_depthwise_full.asm

echo "Depthwise Build Completed!"