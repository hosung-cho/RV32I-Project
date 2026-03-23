#!/usr/bin/env bash
set -euo pipefail

# PC(호스트)에서 main_pointwise.cc를 빌드/실행하는 스크립트
# 출력 바이너리: main_pointwise_host

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

echo "[1/2] Building host binary..."
g++ -std=c++17 -O2 \
  main_pointwise.cc \
  ../tensorflow/lite/kernels/internal/common.cc \
  ../tensorflow/lite/kernels/internal/quantization_util.cc \
  -I.. \
  -I../tensorflow \
  -I../tensorflow/lite \
  -I../tensorflow/lite/kernels \
  -I../tensorflow/lite/micro/tools/make/downloads/gemmlowp \
  -DNDEBUG \
  -DTFLITE_SINGLE_ROUNDING \
  -o main_pointwise_host

echo "[2/2] Running host binary..."
set +e
./main_pointwise_host
RET=$?
set -e
echo "EXIT:$RET"
