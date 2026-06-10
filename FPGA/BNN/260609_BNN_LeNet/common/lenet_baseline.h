#ifndef LENET_BASELINE_H
#define LENET_BASELINE_H

#include <stdint.h>

#ifdef __cplusplus
extern "C" {
#endif

#define LENET_INPUT_H 28
#define LENET_INPUT_W 28
#define LENET_CLASS_COUNT 10
#define LENET_LAYER_DUMP_COUNT 7

typedef struct {
  int32_t logits[LENET_CLASS_COUNT];
  int predicted;
} LenetResult;

typedef struct {
  uint32_t checksum[LENET_LAYER_DUMP_COUNT];
} LenetLayerDump;

const char* LenetLayerDumpName(int index);
void LenetFillTestImage(uint8_t image[LENET_INPUT_H * LENET_INPUT_W]);
void LenetRunBaseline(const uint8_t image[LENET_INPUT_H * LENET_INPUT_W],
                      LenetResult* result);
void LenetGetLayerDump(const LenetResult* result, LenetLayerDump* dump);

#ifdef __cplusplus
}
#endif

#endif
