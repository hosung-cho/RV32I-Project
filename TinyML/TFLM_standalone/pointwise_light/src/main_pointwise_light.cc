#include <stdint.h>
#include <stddef.h>

// TFLM 내부 정수형 Conv(Per-channel quantization) 참조 구현.
// 베어메탈 환경에서는 런타임/표준 라이브러리 의존을 최소화하기 위해
// 필요한 헤더만 직접 포함합니다.
#include "tensorflow/lite/kernels/internal/reference/integer_ops/conv.h"
#include "tensorflow/lite/kernels/internal/types.h"

using namespace tflite;

extern "C" void* memset(void* dest, int ch, size_t count) {
    unsigned char* p = (unsigned char*)dest;
    while (count--) *p++ = (unsigned char)ch;
    return dest;
}

extern "C" void* memcpy(void* dest, const void* src, size_t count) {
    char* dst8 = (char*)dest;
    const char* src8 = (const char*)src;
    while (count--) {
        *dst8++ = *src8++;
    }
    return dest;
}

#ifndef CASE_ID
#define CASE_ID 0
#endif

// ---------------------------------------------------------
// 경량 pointwise(1x1) 검증 프로파일
// - N=1, H=2, W=4, Cin=16, Cout=16
// - 총 연산량: 2048 MACs
// ---------------------------------------------------------
#define N_BATCH 1
#define IN_H 2
#define IN_W 4
#define IN_C 16
#define OUT_C 16
#define K_H 1
#define K_W 1

#define INPUT_SIZE (N_BATCH * IN_H * IN_W * IN_C)
#define FILTER_SIZE (OUT_C * K_H * K_W * IN_C)
#define OUTPUT_SIZE (N_BATCH * IN_H * IN_W * OUT_C)
#define CHANNELS OUT_C

static int8_t input_data[INPUT_SIZE];
static int8_t filter_data[FILTER_SIZE];
static int8_t output_data[OUTPUT_SIZE];
static int32_t bias_data[CHANNELS];
static int32_t output_multiplier[CHANNELS];
static int32_t output_shift[CHANNELS];

static inline int8_t to_int8(int32_t x) {
    if (x > 127) return 127;
    if (x < -128) return -128;
    return (int8_t)x;
}

// CASE_ID에 따라 입력/필터/양자화 파라미터를 바꿔서
// 다양한 패턴에서 파이프라인 경로를 검증합니다.
static void init_case(int case_id) {
    for (int i = 0; i < INPUT_SIZE; i++) {
        int32_t v;
        if (case_id == 0) {
            v = 1;
        } else if (case_id == 1) {
            v = ((i * 3 + 5) % 21) - 10;
        } else {
            v = ((i * 7 + 11) % 31) - 15;
        }
        input_data[i] = to_int8(v);
    }

    for (int i = 0; i < FILTER_SIZE; i++) {
        int32_t v;
        if (case_id == 0) {
            v = 2;
        } else if (case_id == 1) {
            v = ((i * 5 + 1) % 17) - 8;
        } else {
            v = ((i * 9 + 3) % 29) - 14;
        }
        filter_data[i] = to_int8(v);
    }

    for (int i = 0; i < CHANNELS; i++) {
        if (case_id == 0) {
            bias_data[i] = 0;
            output_multiplier[i] = 1073741824;  // 0.5 in Q31
            output_shift[i] = -1;
        } else if (case_id == 1) {
            bias_data[i] = (i % 7) - 3;
            output_multiplier[i] = 805306368;  // ~0.375 in Q31
            output_shift[i] = -2;
        } else {
            bias_data[i] = (i % 11) - 5;
            output_multiplier[i] = 1342177280; // ~0.625 in Q31
            output_shift[i] = -1;
        }
    }
}

int main() {
    // 1) Conv 파라미터 설정
    ConvParams params;
    params.stride_width = 1;
    params.stride_height = 1;
    params.dilation_width_factor = 1;
    params.dilation_height_factor = 1;
    params.padding_values.width = 0;
    params.padding_values.height = 0;
    params.input_offset = 0;
    params.output_offset = 0;
    params.quantized_activation_min = -128;
    params.quantized_activation_max = 127;

    // 2) 텐서 형상 정의 (NHWC, 필터는 OHWI)
    const int32_t input_dims[] = {N_BATCH, IN_H, IN_W, IN_C};
    RuntimeShape input_shape(4, input_dims);

    const int32_t filter_dims[] = {OUT_C, K_H, K_W, IN_C};
    RuntimeShape filter_shape(4, filter_dims);

    const int32_t output_dims[] = {N_BATCH, IN_H, IN_W, OUT_C};
    RuntimeShape output_shape(4, output_dims);

    const int32_t bias_dims[] = {OUT_C};
    RuntimeShape bias_shape(1, bias_dims);

    // 3) 케이스별 데이터 초기화
    init_case(CASE_ID);

    // 4) TFLM 참조 ConvPerChannel 호출
    reference_integer_ops::ConvPerChannel(
        params,
        output_multiplier,
        output_shift,
        input_shape,
        input_data,
        filter_shape,
        filter_data,
        bias_shape,
        bias_data,
        output_shape,
        output_data
    );

    // 5) TB가 결과를 한 번에 확인할 수 있도록
    //    출력 텐서를 DMEM 고정 구간(0x2000F000)으로 복사
    volatile int8_t* dump_base = (volatile int8_t*)0x2000F000;
    for (int i = 0; i < OUTPUT_SIZE; i++) {
        dump_base[i] = output_data[i];
    }

    // 6) a0에는 간단한 상태값(checksum)만 남기고 self-loop로 정지
    //    실제 출력 전체는 위 DMEM dump 구간에서 확인
    int32_t checksum = 0;
    for (int i = 0; i < OUTPUT_SIZE; i++) {
        checksum += (int32_t)output_data[i] * (i + 1);
    }

    asm volatile (
        "mv a0, %0\n\t"
        "j .\n\t"
        :
        : "r"(checksum)
        : "a0");
    __builtin_unreachable();
}
