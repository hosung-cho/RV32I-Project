#include <cstdint>

#include "kws/kws_input_data.h"
#include "kws/kws_model_data.h"
#include "kws/kws_model_settings.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/micro/micro_mutable_op_resolver.h"
#include "tensorflow/lite/schema/schema_generated.h"

namespace {

constexpr int kTensorArenaSize = 180 * 1024;
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
  kStatusClearingOutputs = 0x101,
  kStatusBeforeModelRead = 0x102,
  kStatusModelBytesRead = 0x104,
  kStatusGetModelOk = 0x108,
  kStatusVersionRead = 0x10c,
  kStatusModelOk = 0x110,
  kStatusResolverOk = 0x120,
  kStatusInterpreterOk = 0x130,
  kStatusAllocating = 0x140,
  kStatusAllocateOk = 0x150,
  kStatusInputCopied = 0x160,
  kStatusInvoking = 0x170,
  kStatusInvokeOk = 0x180,
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
  result_mailbox[kStatus] = kStatusClearingOutputs;
#if 0
  for (int i = 0; i < kCategoryCount; ++i) {
    result_mailbox[kOutputBase + i] = 0;
  }
#endif

  result_mailbox[kStatus] = kStatusBeforeModelRead;

  const volatile uint32_t* model_words =
      reinterpret_cast<const volatile uint32_t*>(g_kws_model_data);
  const uint32_t model_first_word = model_words[0];
  result_mailbox[kPredictedRawScore] = static_cast<int32_t>(model_first_word);
  result_mailbox[kStatus] = kStatusModelBytesRead;

  const tflite::Model* model = tflite::GetModel(g_kws_model_data);
  result_mailbox[kPredictedIndex] =
      static_cast<int32_t>(reinterpret_cast<uintptr_t>(model));
  result_mailbox[kStatus] = kStatusGetModelOk;

  const int32_t model_version = model->version();
  result_mailbox[kPredictedIndex] = model_version;
  result_mailbox[kPredictedRawScore] = TFLITE_SCHEMA_VERSION;
  result_mailbox[kStatus] = kStatusVersionRead;

  if (model_version != TFLITE_SCHEMA_VERSION) {
    result_mailbox[kPredictedIndex] = model_version;
    result_mailbox[kPredictedRawScore] = TFLITE_SCHEMA_VERSION;
    result_mailbox[kStatus] = kStatusSchemaMismatch;
    return kStatusSchemaMismatch;
  }
  result_mailbox[kStatus] = kStatusModelOk;

  tflite::MicroMutableOpResolver<6> resolver;
  resolver.AddFullyConnected();
  resolver.AddConv2D();
  resolver.AddDepthwiseConv2D();
  resolver.AddReshape();
  resolver.AddSoftmax();
  resolver.AddAveragePool2D();
  result_mailbox[kStatus] = kStatusResolverOk;

  tflite::MicroInterpreter interpreter(model, resolver, tensor_arena,
                                       kTensorArenaSize);
  result_mailbox[kStatus] = kStatusInterpreterOk;
  result_mailbox[kStatus] = kStatusAllocating;
  if (interpreter.AllocateTensors() != kTfLiteOk) {
    result_mailbox[kStatus] = kStatusAllocateFailed;
    return kStatusAllocateFailed;
  }
  result_mailbox[kStatus] = kStatusAllocateOk;

  TfLiteTensor* input = interpreter.input(0);
  if (input->bytes != kKwsInputSize) {
    result_mailbox[kStatus] = kStatusInputSizeMismatch;
    result_mailbox[kPredictedRawScore] = static_cast<int32_t>(input->bytes);
    return kStatusInputSizeMismatch;
  }

  for (int i = 0; i < kKwsInputSize; ++i) {
    input->data.int8[i] = g_kws_inputs[0][i];
  }
  result_mailbox[kStatus] = kStatusInputCopied;

  result_mailbox[kStatus] = kStatusInvoking;
  if (interpreter.Invoke() != kTfLiteOk) {
    result_mailbox[kStatus] = kStatusInvokeFailed;
    return kStatusInvokeFailed;
  }
  result_mailbox[kStatus] = kStatusInvokeOk;

  const TfLiteTensor* output = interpreter.output(0);
  const int best = ArgMax(output->data.int8, kCategoryCount);
  StoreOutputs(output->data.int8);

  result_mailbox[kPredictedIndex] = best;
  result_mailbox[kPredictedRawScore] = output->data.int8[best];
  result_mailbox[kStatus] = kStatusOk;

  return kStatusOk;
}
