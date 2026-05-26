#include <cstdint>

#include "kws/kws_input_data.h"
#include "kws/kws_model_data.h"
#include "kws/kws_model_settings.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/micro/micro_mutable_op_resolver.h"
#include "tensorflow/lite/schema/schema_generated.h"

namespace {

constexpr int kTensorArenaSize = 200 * 1024;
alignas(16) uint8_t tensor_arena[kTensorArenaSize];

constexpr uintptr_t kResultBase = 0x20000000u;
volatile int32_t* const result_mailbox =
    reinterpret_cast<volatile int32_t*>(kResultBase);

enum ResultWord {
  kStatus = 0,
  kPredictedIndex = 1,
  kPredictedRawScore = 2,
  kOutputBase = 3,
};

enum StatusCode {
  kStatusStarted = 0x100,
  kStatusSchemaMismatch = -1,
  kStatusAllocateFailed = -2,
  kStatusInputSizeMismatch = -3,
  kStatusInvokeFailed = -4,
  kStatusOk = 1,
};

int ArgMax(const int8_t* data, int size) {
  int best = 0;
  for (int i = 1; i < size; ++i) {
    if (data[i] > data[best]) {
      best = i;
    }
  }
  return best;
}

void StoreOutputs(const int8_t* output_data) {
  for (int i = 0; i < kCategoryCount; ++i) {
    result_mailbox[kOutputBase + i] = output_data[i];
  }
}

}  // namespace

extern "C" int main() {
  result_mailbox[kStatus] = kStatusStarted;
  result_mailbox[kPredictedIndex] = -1;
  result_mailbox[kPredictedRawScore] = 0;
  for (int i = 0; i < kCategoryCount; ++i) {
    result_mailbox[kOutputBase + i] = 0;
  }

  const tflite::Model* model = tflite::GetModel(g_kws_model_data);
  if (model->version() != TFLITE_SCHEMA_VERSION) {
    result_mailbox[kStatus] = kStatusSchemaMismatch;
    return kStatusSchemaMismatch;
  }

  tflite::MicroMutableOpResolver<6> resolver;
  resolver.AddFullyConnected();
  resolver.AddConv2D();
  resolver.AddDepthwiseConv2D();
  resolver.AddReshape();
  resolver.AddSoftmax();
  resolver.AddAveragePool2D();

  tflite::MicroInterpreter interpreter(model, resolver, tensor_arena,
                                       kTensorArenaSize);
  if (interpreter.AllocateTensors() != kTfLiteOk) {
    result_mailbox[kStatus] = kStatusAllocateFailed;
    return kStatusAllocateFailed;
  }

  TfLiteTensor* input = interpreter.input(0);
  if (input->bytes != kKwsInputSize) {
    result_mailbox[kStatus] = kStatusInputSizeMismatch;
    result_mailbox[kPredictedRawScore] = static_cast<int32_t>(input->bytes);
    return kStatusInputSizeMismatch;
  }

  for (int i = 0; i < kKwsInputSize; ++i) {
    input->data.int8[i] = g_kws_inputs[0][i];
  }

  if (interpreter.Invoke() != kTfLiteOk) {
    result_mailbox[kStatus] = kStatusInvokeFailed;
    return kStatusInvokeFailed;
  }

  const TfLiteTensor* output = interpreter.output(0);
  const int best = ArgMax(output->data.int8, kCategoryCount);
  StoreOutputs(output->data.int8);

  result_mailbox[kPredictedIndex] = best;
  result_mailbox[kPredictedRawScore] = output->data.int8[best];
  result_mailbox[kStatus] = kStatusOk;

  return kStatusOk;
}
