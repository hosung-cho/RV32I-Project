#include <cstdint>
#include <cstdio>

#include "kws/kws_input_data.h"
#include "kws/kws_model_data.h"
#include "kws/kws_model_settings.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/micro/micro_mutable_op_resolver.h"
#include "tensorflow/lite/schema/schema_generated.h"

namespace {

constexpr int kTensorArenaSize = 200 * 1024;
alignas(16) uint8_t tensor_arena[kTensorArenaSize];

int ArgMax(const int8_t* data, int size) {
  int best = 0;
  for (int i = 1; i < size; ++i) {
    if (data[i] > data[best]) {
      best = i;
    }
  }
  return best;
}

}  // namespace

int main() {
  const tflite::Model* model = tflite::GetModel(g_kws_model_data);
  if (model->version() != TFLITE_SCHEMA_VERSION) {
    std::printf("schema_mismatch model=%d expected=%d\n", model->version(),
                TFLITE_SCHEMA_VERSION);
    return 1;
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
    std::printf("allocate_failed\n");
    return 2;
  }

  TfLiteTensor* input = interpreter.input(0);
  if (input->bytes != kKwsInputSize) {
    std::printf("input_size_mismatch got=%u expected=%d\n",
                static_cast<unsigned>(input->bytes), kKwsInputSize);
    return 3;
  }

  for (int i = 0; i < kKwsInputSize; ++i) {
    input->data.int8[i] = g_kws_inputs[0][i];
  }

  if (interpreter.Invoke() != kTfLiteOk) {
    std::printf("invoke_failed\n");
    return 4;
  }

  const TfLiteTensor* output = interpreter.output(0);
  const int best = ArgMax(output->data.int8, kCategoryCount);
  std::printf("prediction=%s index=%d raw=%d\n", kCategoryLabels[best], best,
              output->data.int8[best]);
  std::printf("raw_outputs=[");
  for (int i = 0; i < kCategoryCount; ++i) {
    std::printf("%d%s", output->data.int8[i],
                i + 1 == kCategoryCount ? "" : ",");
  }
  std::printf("]\n");

  return 0;
}
