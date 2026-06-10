#ifndef LENET_PARAMS_H
#define LENET_PARAMS_H

#include <stdint.h>

extern const int16_t g_lenet_c1_weight[150];
extern const int16_t g_lenet_c1_bias[6];
extern const int16_t g_lenet_c2_weight[2400];
extern const int16_t g_lenet_c2_bias[16];
extern const int16_t g_lenet_fc1_weight[30720];
extern const int16_t g_lenet_fc1_bias[120];
extern const int16_t g_lenet_fc2_weight[10080];
extern const int16_t g_lenet_fc2_bias[84];
extern const int16_t g_lenet_fc3_weight[840];
extern const int16_t g_lenet_fc3_bias[10];
extern const uint32_t g_lenet_fc1_weight_bits[960];
extern const int32_t g_lenet_fc1_weight_bits_words_per_output;
extern const uint32_t g_lenet_fc2_weight_bits[336];
extern const int32_t g_lenet_fc2_weight_bits_words_per_output;
extern const uint32_t g_lenet_fc3_weight_bits[30];
extern const int32_t g_lenet_fc3_weight_bits_words_per_output;
extern const int32_t g_lenet_c1_weight_scale;
extern const int32_t g_lenet_c2_weight_scale;
extern const int32_t g_lenet_fc_weight_scale;

#endif
