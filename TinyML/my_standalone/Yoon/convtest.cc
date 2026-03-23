#include <cstdio>
#include <algorithm>
#include "tensorflow/lite/kernels/internal/reference/integer_ops/conv.h"
#include "tensorflow/lite/kernels/internal/common.h"

// 라이브러리 미사용 시 필요한 메모리 초기화 함수
extern "C" {
    void* memset(void* dest, int ch, size_t count) {
        unsigned char* p = (unsigned char*)dest;
        while (count--) {
            *p++ = (unsigned char)ch;
        }
        return dest;
    }
}

int main() {
    // 1. Params 설정 (1x1 스트라이드, 패딩 없음)
    tflite::ConvParams params;
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

    // 2. 텐서 모양 설정 (6x6 입력, 1x1 필터, 채널 1로 고정)
    // Depthwise(3x3)와 연산량 비교를 위해 채널을 1로 통일합니다.
    int32_t input_dims[] = {1, 6, 6, 1}; // 1 batch, 6x6, 1 channel
    tflite::RuntimeShape input_shape(4, input_dims);

    int32_t filter_dims[] = {1, 1, 1, 1}; // 1 out_ch, 1x1 size, 1 in_ch
    tflite::RuntimeShape filter_shape(4, filter_dims);

    int32_t bias_dims[] = {1}; 
    tflite::RuntimeShape bias_shape(1, bias_dims);

    int32_t output_dims[] = {1, 6, 6, 1}; // 6x6 output, 1 channel
    tflite::RuntimeShape output_shape(4, output_dims);

    // 3. 테스트 데이터 설정
    // 입력 데이터: 6 * 6 * 1 = 36개
    static volatile int8_t input_data[36]; 
    for(int i=0; i<36; i++) input_data[i] = 10;

    // 필터 데이터: 1 * 1 * 1 * 1 = 1개
    static volatile int8_t filter_data[1] = {2};

    int32_t bias_data[1] = {0};
    int32_t multiplier[1] = {1073741824}; // Q31 multiplier
    int32_t shift[1] = {0};

    // 출력 데이터 공간: 6 * 6 * 1 = 36개
    int8_t output_data[36] = {0};

    // 4. ConvPerChannel 커널 직접 호출
    tflite::reference_integer_ops::ConvPerChannel(
        params, multiplier, shift,
        input_shape, (const int8_t*)input_data,
        filter_shape, (const int8_t*)filter_data,
        bias_shape, bias_data,
        output_shape, output_data
    );

    return output_data[0];
}