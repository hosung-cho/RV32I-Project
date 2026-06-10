#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
BUILD_DIR="${ROOT_DIR}/build_pc"

mkdir -p "${BUILD_DIR}"

EXTRA_CFLAGS=()
EXTRA_SRCS=()
OUTPUT_NAME="lenet_host_ref"
if [[ -f "${ROOT_DIR}/common/lenet_params.c" ]]; then
  EXTRA_CFLAGS+=(-DLENET_USE_EXPORTED_PARAMS=1)
  EXTRA_SRCS+=("${ROOT_DIR}/common/lenet_params.c")
fi
if [[ -f "${ROOT_DIR}/common/lenet_test_image.c" ]]; then
  EXTRA_SRCS+=("${ROOT_DIR}/common/lenet_test_image.c")
fi
if [[ "${LENET_USE_BINARY_FC:-0}" == "1" ]]; then
  EXTRA_CFLAGS+=(-DLENET_USE_BINARY_FC=1)
  OUTPUT_NAME="lenet_host_ref_binary_fc"
fi

gcc -std=c11 -O2 \
  "${EXTRA_CFLAGS[@]}" \
  -I"${ROOT_DIR}/common" \
  "${ROOT_DIR}/PC/lenet_host_ref.c" \
  "${ROOT_DIR}/common/lenet_baseline.c" \
  "${EXTRA_SRCS[@]}" \
  -o "${BUILD_DIR}/${OUTPUT_NAME}"

"${BUILD_DIR}/${OUTPUT_NAME}"
