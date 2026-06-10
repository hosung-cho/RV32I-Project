#include <stdio.h>
#include <stdint.h>

#include "lenet_baseline.h"

#if __has_include("lenet_test_image.h")
#define LENET_HAS_TEST_IMAGE 1
#include "lenet_test_image.h"
#else
#define LENET_HAS_TEST_IMAGE 0
#endif

int main(void) {
  uint8_t image[LENET_INPUT_H * LENET_INPUT_W];
  LenetResult result;
  LenetLayerDump dump;

#if LENET_HAS_TEST_IMAGE
  for (int i = 0; i < LENET_INPUT_H * LENET_INPUT_W; ++i) {
    image[i] = g_lenet_test_image[i];
  }
#else
  LenetFillTestImage(image);
#endif
  LenetRunBaseline(image, &result);
  LenetGetLayerDump(&result, &dump);

  printf("lenet_host_ref\n");
#if LENET_USE_BINARY_FC
  printf("fc_mode=binary_xnor_popcount\n");
#else
  printf("fc_mode=int16_mac\n");
#endif
#if LENET_HAS_TEST_IMAGE
  printf("mnist_test_index=%ld expected=%ld\n", (long)g_lenet_test_index,
         (long)g_lenet_test_label);
#else
  printf("synthetic_input=1 expected=unknown\n");
#endif
  printf("prediction=%d raw=%ld\n", result.predicted,
         (long)result.logits[result.predicted]);
#if LENET_HAS_TEST_IMAGE
  printf("match=%d\n", result.predicted == g_lenet_test_label);
#endif
  printf("logits=[");
  for (int i = 0; i < LENET_CLASS_COUNT; ++i) {
    printf("%ld%s", (long)result.logits[i],
           i + 1 == LENET_CLASS_COUNT ? "" : ",");
  }
  printf("]\n");
  printf("layer_checksums=[");
  for (int i = 0; i < LENET_LAYER_DUMP_COUNT; ++i) {
    printf("%s:0x%08lx%s", LenetLayerDumpName(i),
           (unsigned long)dump.checksum[i],
           i + 1 == LENET_LAYER_DUMP_COUNT ? "" : ",");
  }
  printf("]\n");

  return 0;
}
