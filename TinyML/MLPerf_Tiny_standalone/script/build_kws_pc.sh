#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
KWS_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
TINYML_DIR="$(cd "${KWS_DIR}/.." && pwd)"
TFLM_ROOT="${TINYML_DIR}/lib/tflite-micro"
TINY_ROOT="${TINYML_DIR}/lib/tiny"
BUILD_DIR="${KWS_DIR}/build_pc"

mkdir -p "${BUILD_DIR}"

g++ -std=c++17 -O2 \
  -I"${KWS_DIR}" \
  -I"${KWS_DIR}/kws" \
  -I"${TFLM_ROOT}" \
  -I"${TFLM_ROOT}/tensorflow" \
  -I"${TFLM_ROOT}/tensorflow/lite" \
  -I"${TFLM_ROOT}/tensorflow/lite/kernels" \
  -I"${TFLM_ROOT}/tensorflow/lite/micro/tools/make/downloads/flatbuffers/include" \
  -I"${TFLM_ROOT}/tensorflow/lite/micro/tools/make/downloads/gemmlowp" \
  -I"${TFLM_ROOT}/tensorflow/lite/micro/tools/make/downloads/ruy" \
  -I"${TINY_ROOT}/benchmark" \
  "${KWS_DIR}/src/main_kws_pc.cc" \
  "${KWS_DIR}/kws/kws_input_data.cc" \
  "${KWS_DIR}/kws/kws_model_settings.cc" \
  "${KWS_DIR}/kws/kws_model_data.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/micro_interpreter.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/micro_interpreter_context.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/micro_allocator.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/micro_allocation_info.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/micro_context.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/micro_interpreter_graph.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/debug_log.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/micro_log.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/micro_op_resolver.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/micro_profiler.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/micro_resource_variable.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/micro_time.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/micro_utils.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/flatbuffer_utils.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/tflite_bridge/flatbuffer_conversions_bridge.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/tflite_bridge/micro_error_reporter.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/memory_planner/greedy_memory_planner.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/memory_planner/linear_memory_planner.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/memory_helpers.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/arena_allocator/non_persistent_arena_buffer_allocator.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/arena_allocator/persistent_arena_buffer_allocator.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/arena_allocator/recording_single_arena_buffer_allocator.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/arena_allocator/single_arena_buffer_allocator.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/kernels/conv.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/kernels/conv_common.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/kernels/depthwise_conv.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/kernels/depthwise_conv_common.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/kernels/fully_connected.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/kernels/fully_connected_common.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/kernels/pooling.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/kernels/pooling_common.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/kernels/reshape.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/kernels/reshape_common.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/kernels/softmax.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/kernels/softmax_common.cc" \
  "${TFLM_ROOT}/tensorflow/lite/micro/kernels/kernel_util.cc" \
  "${TFLM_ROOT}/tensorflow/lite/kernels/internal/tensor_utils.cc" \
  "${TFLM_ROOT}/tensorflow/lite/kernels/internal/portable_tensor_utils.cc" \
  "${TFLM_ROOT}/tensorflow/lite/kernels/internal/reference/portable_tensor_utils.cc" \
  "${TFLM_ROOT}/tensorflow/lite/kernels/kernel_util.cc" \
  "${TFLM_ROOT}/tensorflow/lite/core/c/common.cc" \
  "${TFLM_ROOT}/tensorflow/lite/array.cc" \
  "${TFLM_ROOT}/tensorflow/lite/core/api/flatbuffer_conversions.cc" \
  "${TFLM_ROOT}/tensorflow/compiler/mlir/lite/core/api/error_reporter.cc" \
  "${TFLM_ROOT}/tensorflow/compiler/mlir/lite/schema/schema_utils.cc" \
  "${TFLM_ROOT}/tensorflow/lite/kernels/internal/common.cc" \
  "${TFLM_ROOT}/tensorflow/lite/kernels/internal/quantization_util.cc" \
  "${TFLM_ROOT}/tensorflow/lite/kernels/internal/tensor_ctypes.cc" \
  -o "${BUILD_DIR}/main_kws_pc"

"${BUILD_DIR}/main_kws_pc"
