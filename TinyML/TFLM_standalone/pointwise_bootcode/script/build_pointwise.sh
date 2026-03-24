#!/bin/bash

# ===== 1. 소스 파일 목록 =====
# 맨 앞에 부트 코드인 crt0.S가 잘 추가되었습니다.
SRCS="crt0.S \
      main_pointwise.cc \
      ../tensorflow/lite/kernels/internal/common.cc \
      ../tensorflow/lite/kernels/internal/quantization_util.cc"

# ===== 2. ELF 생성 =====
# 링커 스크립트(-T custom_memory.ld)가 잘 적용되었습니다.
riscv32-unknown-elf-g++ -march=rv32i -mabi=ilp32 -O2 \
  -ffunction-sections \
  -fdata-sections \
  -Wl,--gc-sections \
  -T custom_memory.ld \
  -nostdlib \
  -DNDEBUG \
  -DTFLITE_SINGLE_ROUNDING \
  -fno-builtin \
  -I.. \
  -I../tensorflow \
  -I../tensorflow/lite \
  -I../tensorflow/lite/kernels \
  -I../tensorflow/lite/micro/tools/make/downloads/gemmlowp \
  --specs=nosys.specs \
  $SRCS -lgcc -o main_pointwise.elf

echo "[1] ELF build completed."

# ===== 3. Disassembly 생성 (C + ASM 같이 출력) =====
riscv32-unknown-elf-objdump -d -S main_pointwise.elf > main_pointwise_full.asm

echo "[2] Disassembly generated."

# ===== 4. 순수 바이너리(.bin) 생성 =====
riscv32-unknown-elf-objcopy -O binary main_pointwise.elf main_pointwise.bin

echo "[3] Raw binary generated."

# =========================================================
# [수정된 부분] 5. Verilog용 메모리 파일 생성 (IMEM / DMEM 분리)
# =========================================================

# ===== 5. Verilog용 메모리 파일 생성 (IMEM / DMEM 분리) =====
# objcopy가 4바이트씩 묶어서 온전한 32비트 형태(예: 20010117)로 출력하도록 빌드 스크립트(build_pointwise_edit3.sh)의 마지막 HEX 추출 부분에 --verilog-data-width=4 옵션을 추가해야 합니다.
# 5-1. 명령어 메모리 (IMEM) 파일 추출
riscv32-unknown-elf-objcopy -O verilog --verilog-data-width=4 -j .text -j .text.init -j .rodata main_pointwise.elf imem.hex
echo "[4-1] IMEM Hex file (imem.hex) generated."

# 5-2. 데이터 메모리 (DMEM) 파일 추출
riscv32-unknown-elf-objcopy -O verilog --verilog-data-width=4 -j .data --change-section-address .data=0 main_pointwise.elf dmem.hex
echo "[4-2] DMEM Hex file (dmem.hex) generated."

echo "========== Build Completed =========="