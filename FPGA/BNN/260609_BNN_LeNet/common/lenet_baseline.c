#include "lenet_baseline.h"

#define C1_OUT 6
#define C1_H 24
#define C1_W 24
#define P1_H 12
#define P1_W 12
#define C2_OUT 16
#define C2_H 8
#define C2_W 8
#define P2_H 4
#define P2_W 4
#define FC0_IN (C2_OUT * P2_H * P2_W)
#define FC1_OUT 120
#define FC2_OUT 84

#ifndef LENET_USE_EXPORTED_PARAMS
#define LENET_USE_EXPORTED_PARAMS 0
#endif

#ifndef LENET_USE_BINARY_FC
#define LENET_USE_BINARY_FC 0
#endif

#if LENET_USE_EXPORTED_PARAMS
#include "lenet_params.h"
#endif

static int16_t c1[C1_OUT][C1_H][C1_W];
static int16_t p1[C1_OUT][P1_H][P1_W];
static int16_t c2[C2_OUT][C2_H][C2_W];
static int16_t p2[C2_OUT][P2_H][P2_W];
static int16_t fc1[FC1_OUT];
static int16_t fc2[FC2_OUT];

#if LENET_USE_BINARY_FC
#define FC0_PACKED_WORDS ((FC0_IN + 31) / 32)
#define FC1_PACKED_WORDS ((FC1_OUT + 31) / 32)
#define FC2_PACKED_WORDS ((FC2_OUT + 31) / 32)

static uint32_t fc0_bits[FC0_PACKED_WORDS];
static uint32_t fc1_bits[FC1_PACKED_WORDS];
static uint32_t fc2_bits[FC2_PACKED_WORDS];
#endif

static const char* const kLayerDumpNames[LENET_LAYER_DUMP_COUNT] = {
    "conv1", "pool1", "conv2", "pool2", "fc1", "fc2", "logits",
};

static int16_t Clamp16(int32_t x) {
  if (x > 32767) return 32767;
  if (x < -32768) return -32768;
  return (int16_t)x;
}

static int16_t Relu16(int16_t x) { return x > 0 ? x : 0; }

static int16_t FlattenAt(int index);
static int16_t WeightValue(uint32_t layer, uint32_t index);

#if LENET_USE_BINARY_FC
static int Popcount32(uint32_t x) {
  int count = 0;
  while (x != 0) {
    x &= x - 1;
    ++count;
  }
  return count;
}

static uint32_t LastWordMask(int count) {
  const int valid = count & 31;
  if (valid == 0) {
    return 0xFFFFFFFFu;
  }
  return (1u << valid) - 1u;
}

static void ClearPacked(uint32_t* packed, int words) {
  for (int i = 0; i < words; ++i) {
    packed[i] = 0;
  }
}

static void PackFlatten(uint32_t* packed) {
  ClearPacked(packed, FC0_PACKED_WORDS);
  for (int i = 0; i < FC0_IN; ++i) {
    if (FlattenAt(i) > 0) {
      packed[i >> 5] |= 1u << (i & 31);
    }
  }
}

static void PackVector16(const int16_t* data, int count, uint32_t* packed,
                         int words) {
  ClearPacked(packed, words);
  for (int i = 0; i < count; ++i) {
    if (data[i] > 0) {
      packed[i >> 5] |= 1u << (i & 31);
    }
  }
}

static int32_t BinaryDotFc(const uint32_t* input_bits, int input_count,
                           int input_words, uint32_t layer, int output_index) {
  int matches = 0;
  for (int word = 0; word < input_words; ++word) {
#if LENET_USE_EXPORTED_PARAMS
    const uint32_t* packed_weights = 0;
    int words_per_output = input_words;
    if (layer == 3) {
      packed_weights = g_lenet_fc1_weight_bits;
      words_per_output = g_lenet_fc1_weight_bits_words_per_output;
    } else if (layer == 4) {
      packed_weights = g_lenet_fc2_weight_bits;
      words_per_output = g_lenet_fc2_weight_bits_words_per_output;
    } else if (layer == 5) {
      packed_weights = g_lenet_fc3_weight_bits;
      words_per_output = g_lenet_fc3_weight_bits_words_per_output;
    }
    uint32_t weight_bits =
        packed_weights[(uint32_t)output_index * (uint32_t)words_per_output +
                       (uint32_t)word];
#else
    uint32_t weight_bits = 0;
    for (int bit = 0; bit < 32; ++bit) {
      const int i = word * 32 + bit;
      if (i >= input_count) {
        break;
      }
      const uint32_t wi = (uint32_t)output_index * (uint32_t)input_count +
                          (uint32_t)i;
      if (WeightValue(layer, wi) > 0) {
        weight_bits |= 1u << bit;
      }
    }
#endif

    uint32_t xnor = ~(input_bits[word] ^ weight_bits);
    if (word == input_words - 1) {
      xnor &= LastWordMask(input_count);
    }
    matches += Popcount32(xnor);
  }

  return (int32_t)(2 * matches - input_count);
}
#endif

static uint32_t Checksum16(const int16_t* data, int count) {
  uint32_t h = 2166136261u;
  for (int i = 0; i < count; ++i) {
    const uint16_t v = (uint16_t)data[i];
    h ^= (uint32_t)(v & 0xFFu);
    h *= 16777619u;
    h ^= (uint32_t)(v >> 8);
    h *= 16777619u;
  }
  return h;
}

static uint32_t Checksum32(const int32_t* data, int count) {
  uint32_t h = 2166136261u;
  for (int i = 0; i < count; ++i) {
    const uint32_t v = (uint32_t)data[i];
    for (int shift = 0; shift < 32; shift += 8) {
      h ^= (v >> shift) & 0xFFu;
      h *= 16777619u;
    }
  }
  return h;
}

static int16_t WeightValue(uint32_t layer, uint32_t index) {
#if LENET_USE_EXPORTED_PARAMS
  switch (layer) {
    case 1:
      return g_lenet_c1_weight[index];
    case 2:
      return g_lenet_c2_weight[index];
    case 3:
      return g_lenet_fc1_weight[index];
    case 4:
      return g_lenet_fc2_weight[index];
    case 5:
      return g_lenet_fc3_weight[index];
    default:
      return 0;
  }
#else
  uint32_t x = index + 0x9E3779B9u + layer * 0x85EBCA6Bu;
  x ^= x >> 16;
  x *= 0x7FEB352Du;
  x ^= x >> 15;
  return (int16_t)((int32_t)(x % 7u) - 3);
#endif
}

static int16_t BiasValue(uint32_t layer, uint32_t index) {
#if LENET_USE_EXPORTED_PARAMS
  switch (layer) {
    case 1:
      return g_lenet_c1_bias[index];
    case 2:
      return g_lenet_c2_bias[index];
    case 3:
      return g_lenet_fc1_bias[index];
    case 4:
      return g_lenet_fc2_bias[index];
    case 5:
      return g_lenet_fc3_bias[index];
    default:
      return 0;
  }
#else
  return (int16_t)((int32_t)((layer * 13u + index * 5u) % 17u) - 8);
#endif
}

void LenetFillTestImage(uint8_t image[LENET_INPUT_H * LENET_INPUT_W]) {
  for (int y = 0; y < LENET_INPUT_H; ++y) {
    for (int x = 0; x < LENET_INPUT_W; ++x) {
      const int ring = ((x - 14) * (x - 14) + (y - 14) * (y - 14)) < 70;
      const int stripe = ((x + 2 * y) % 11) < 5;
      image[y * LENET_INPUT_W + x] = (uint8_t)(ring ? 220 : (stripe ? 80 : 20));
    }
  }
}

const char* LenetLayerDumpName(int index) {
  if (index < 0 || index >= LENET_LAYER_DUMP_COUNT) {
    return "unknown";
  }
  return kLayerDumpNames[index];
}

static void Conv1(const uint8_t image[LENET_INPUT_H * LENET_INPUT_W]) {
  for (int oc = 0; oc < C1_OUT; ++oc) {
    for (int oy = 0; oy < C1_H; ++oy) {
      for (int ox = 0; ox < C1_W; ++ox) {
        int32_t acc = BiasValue(1, (uint32_t)oc) * 16;
        for (int ky = 0; ky < 5; ++ky) {
          for (int kx = 0; kx < 5; ++kx) {
            const int16_t in =
                (int16_t)image[(oy + ky) * LENET_INPUT_W + (ox + kx)] - 128;
            const int16_t w = WeightValue(1, (uint32_t)(oc * 25 + ky * 5 + kx));
            acc += in * w;
          }
        }
        c1[oc][oy][ox] = Relu16(Clamp16(acc / 16));
      }
    }
  }
}

static void Pool1(void) {
  for (int oc = 0; oc < C1_OUT; ++oc) {
    for (int oy = 0; oy < P1_H; ++oy) {
      for (int ox = 0; ox < P1_W; ++ox) {
        int16_t m = c1[oc][oy * 2][ox * 2];
        const int16_t a = c1[oc][oy * 2][ox * 2 + 1];
        const int16_t b = c1[oc][oy * 2 + 1][ox * 2];
        const int16_t c = c1[oc][oy * 2 + 1][ox * 2 + 1];
        if (a > m) m = a;
        if (b > m) m = b;
        if (c > m) m = c;
        p1[oc][oy][ox] = m;
      }
    }
  }
}

static void Conv2(void) {
  for (int oc = 0; oc < C2_OUT; ++oc) {
    for (int oy = 0; oy < C2_H; ++oy) {
      for (int ox = 0; ox < C2_W; ++ox) {
        int32_t acc = BiasValue(2, (uint32_t)oc) * 32;
        for (int ic = 0; ic < C1_OUT; ++ic) {
          for (int ky = 0; ky < 5; ++ky) {
            for (int kx = 0; kx < 5; ++kx) {
              const uint32_t wi =
                  (((uint32_t)oc * C1_OUT + (uint32_t)ic) * 25u) +
                  (uint32_t)(ky * 5 + kx);
              acc += p1[ic][oy + ky][ox + kx] * WeightValue(2, wi);
            }
          }
        }
        c2[oc][oy][ox] = Relu16(Clamp16(acc / 32));
      }
    }
  }
}

static void Pool2(void) {
  for (int oc = 0; oc < C2_OUT; ++oc) {
    for (int oy = 0; oy < P2_H; ++oy) {
      for (int ox = 0; ox < P2_W; ++ox) {
        int16_t m = c2[oc][oy * 2][ox * 2];
        const int16_t a = c2[oc][oy * 2][ox * 2 + 1];
        const int16_t b = c2[oc][oy * 2 + 1][ox * 2];
        const int16_t c = c2[oc][oy * 2 + 1][ox * 2 + 1];
        if (a > m) m = a;
        if (b > m) m = b;
        if (c > m) m = c;
        p2[oc][oy][ox] = m;
      }
    }
  }
}

static int16_t FlattenAt(int index) {
  const int ox = index % P2_W;
  const int oy = (index / P2_W) % P2_H;
  const int oc = index / (P2_H * P2_W);
  return p2[oc][oy][ox];
}

static void FullyConnected1(void) {
#if LENET_USE_BINARY_FC
  PackFlatten(fc0_bits);
  for (int o = 0; o < FC1_OUT; ++o) {
    int32_t acc = BinaryDotFc(fc0_bits, FC0_IN, FC0_PACKED_WORDS, 3, o);
    acc += BiasValue(3, (uint32_t)o);
    fc1[o] = Relu16(Clamp16(acc));
  }
#else
  for (int o = 0; o < FC1_OUT; ++o) {
    int32_t acc = BiasValue(3, (uint32_t)o) * 64;
    for (int i = 0; i < FC0_IN; ++i) {
      const uint32_t wi = (uint32_t)o * FC0_IN + (uint32_t)i;
      acc += FlattenAt(i) * WeightValue(3, wi);
    }
    fc1[o] = Relu16(Clamp16(acc / 64));
  }
#endif
}

static void FullyConnected2(void) {
#if LENET_USE_BINARY_FC
  PackVector16(fc1, FC1_OUT, fc1_bits, FC1_PACKED_WORDS);
  for (int o = 0; o < FC2_OUT; ++o) {
    int32_t acc = BinaryDotFc(fc1_bits, FC1_OUT, FC1_PACKED_WORDS, 4, o);
    acc += BiasValue(4, (uint32_t)o);
    fc2[o] = Relu16(Clamp16(acc));
  }
#else
  for (int o = 0; o < FC2_OUT; ++o) {
    int32_t acc = BiasValue(4, (uint32_t)o) * 64;
    for (int i = 0; i < FC1_OUT; ++i) {
      const uint32_t wi = (uint32_t)o * FC1_OUT + (uint32_t)i;
      acc += fc1[i] * WeightValue(4, wi);
    }
    fc2[o] = Relu16(Clamp16(acc / 64));
  }
#endif
}

static void FullyConnected3(LenetResult* result) {
  int best = 0;
#if LENET_USE_BINARY_FC
  PackVector16(fc2, FC2_OUT, fc2_bits, FC2_PACKED_WORDS);
  for (int o = 0; o < LENET_CLASS_COUNT; ++o) {
    int32_t acc = BinaryDotFc(fc2_bits, FC2_OUT, FC2_PACKED_WORDS, 5, o);
    acc += BiasValue(5, (uint32_t)o);
    result->logits[o] = acc;
    if (o == 0 || result->logits[o] > result->logits[best]) {
      best = o;
    }
  }
#else
  for (int o = 0; o < LENET_CLASS_COUNT; ++o) {
    int32_t acc = BiasValue(5, (uint32_t)o) * 64;
    for (int i = 0; i < FC2_OUT; ++i) {
      const uint32_t wi = (uint32_t)o * FC2_OUT + (uint32_t)i;
      acc += fc2[i] * WeightValue(5, wi);
    }
    result->logits[o] = acc / 64;
    if (o == 0 || result->logits[o] > result->logits[best]) {
      best = o;
    }
  }
#endif
  result->predicted = best;
}

void LenetRunBaseline(const uint8_t image[LENET_INPUT_H * LENET_INPUT_W],
                      LenetResult* result) {
  Conv1(image);
  Pool1();
  Conv2();
  Pool2();
  FullyConnected1();
  FullyConnected2();
  FullyConnected3(result);
}

void LenetGetLayerDump(const LenetResult* result, LenetLayerDump* dump) {
  dump->checksum[0] = Checksum16(&c1[0][0][0], C1_OUT * C1_H * C1_W);
  dump->checksum[1] = Checksum16(&p1[0][0][0], C1_OUT * P1_H * P1_W);
  dump->checksum[2] = Checksum16(&c2[0][0][0], C2_OUT * C2_H * C2_W);
  dump->checksum[3] = Checksum16(&p2[0][0][0], C2_OUT * P2_H * P2_W);
  dump->checksum[4] = Checksum16(&fc1[0], FC1_OUT);
  dump->checksum[5] = Checksum16(&fc2[0], FC2_OUT);
  dump->checksum[6] = Checksum32(&result->logits[0], LENET_CLASS_COUNT);
}
