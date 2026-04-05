#!/usr/bin/env bash
set -euo pipefail

# PC(호스트)에서 main_pointwise.cc를 빌드/실행하는 스크립트
# 출력 바이너리: main_pointwise_host

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$SCRIPT_DIR"

SRC_FILE="../src/main_pointwise.cc"
TFLM_ROOT="../../../../lib/tflite-micro"

echo "[1/2] Building host binary..."
g++ -std=c++17 -O2 \
  "$SRC_FILE" \
  "$TFLM_ROOT/tensorflow/lite/kernels/internal/common.cc" \
  "$TFLM_ROOT/tensorflow/lite/kernels/internal/quantization_util.cc" \
  -I"$TFLM_ROOT" \
  -I"$TFLM_ROOT/tensorflow" \
  -I"$TFLM_ROOT/tensorflow/lite" \
  -I"$TFLM_ROOT/tensorflow/lite/kernels" \
  -I"$TFLM_ROOT/tensorflow/lite/micro/tools/make/downloads/gemmlowp" \
  -DNDEBUG \
  -o main_pointwise_host

echo "[2/2] Running host binary..."
set +e
./main_pointwise_host
RET=$?
set -e
echo "EXIT:$RET"
