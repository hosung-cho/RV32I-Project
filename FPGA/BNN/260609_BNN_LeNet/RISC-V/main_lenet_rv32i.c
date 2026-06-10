#include <stdint.h>

#include "lenet_baseline.h"

#if __has_include("lenet_test_image.h")
#define LENET_HAS_TEST_IMAGE 1
#include "lenet_test_image.h"
#else
#define LENET_HAS_TEST_IMAGE 0
#endif

#define RESULT_BASE 0x20000000u

enum ResultWord {
  kStatus = 0,
  kPredictedIndex = 1,
  kPredictedRawScore = 2,
  kExpectedLabel = 3,
  kTestIndex = 4,
  kLogitBase = 5,
  kChecksumBase = kLogitBase + LENET_CLASS_COUNT,
};

enum StatusCode {
  kStatusStarted = 0x100,
  kStatusInputReady = 0x110,
  kStatusInferenceDone = 0x120,
  kStatusOk = 1,
};

volatile int32_t* const result_mailbox = (volatile int32_t*)RESULT_BASE;

int main(void) {
  uint8_t image[LENET_INPUT_H * LENET_INPUT_W];
  LenetResult result;
  LenetLayerDump dump;

  result_mailbox[kStatus] = kStatusStarted;
  result_mailbox[kPredictedIndex] = -1;
  result_mailbox[kPredictedRawScore] = 0;

#if LENET_HAS_TEST_IMAGE
  for (int i = 0; i < LENET_INPUT_H * LENET_INPUT_W; ++i) {
    image[i] = g_lenet_test_image[i];
  }
  result_mailbox[kExpectedLabel] = g_lenet_test_label;
  result_mailbox[kTestIndex] = g_lenet_test_index;
#else
  LenetFillTestImage(image);
  result_mailbox[kExpectedLabel] = -1;
  result_mailbox[kTestIndex] = -1;
#endif
  result_mailbox[kStatus] = kStatusInputReady;

  LenetRunBaseline(image, &result);
  LenetGetLayerDump(&result, &dump);
  result_mailbox[kStatus] = kStatusInferenceDone;

  for (int i = 0; i < LENET_CLASS_COUNT; ++i) {
    result_mailbox[kLogitBase + i] = result.logits[i];
  }
  for (int i = 0; i < LENET_LAYER_DUMP_COUNT; ++i) {
    result_mailbox[kChecksumBase + i] = (int32_t)dump.checksum[i];
  }
  result_mailbox[kPredictedIndex] = result.predicted;
  result_mailbox[kPredictedRawScore] = result.logits[result.predicted];
  result_mailbox[kStatus] = kStatusOk;

  return kStatusOk;
}
