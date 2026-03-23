#include <stdint.h>
// Depthwise Convolution 핵심 커널 헤더 포함
#include "tensorflow/lite/kernels/internal/reference/integer_ops/depthwise_conv.h"
#include "tensorflow/lite/kernels/internal/types.h"

using namespace tflite;

// ---------------------------------------------------------
// [배열 크기 설정] 
// 예시: 입력 1x5x25x64, 3x3 필터, 출력 1x5x25x64 (SAME 패딩 가정)
// ---------------------------------------------------------
#define CHANNELS 64
#define INPUT_SIZE (1 * 5 * 25 * CHANNELS)   // 8000
#define FILTER_SIZE (1 * 3 * 3 * CHANNELS)   // 576 (3x3 필터가 채널별로 1개씩)
#define OUTPUT_SIZE (1 * 5 * 25 * CHANNELS)  // 8000

// 베어메탈 힙/스택 오버플로우 방지를 위한 전역 정적 배열 선언
int8_t input_data[INPUT_SIZE];
int8_t filter_data[FILTER_SIZE];
int8_t output_data[OUTPUT_SIZE];
int32_t bias_data[CHANNELS];
int32_t output_multiplier[CHANNELS];
int32_t output_shift[CHANNELS];

int main() {
    // 1. Depthwise Conv 파라미터 설정
    DepthwiseParams params;
    params.padding_values.width = 1;   // 3x3 필터 SAME 패딩
    params.padding_values.height = 1;
    params.stride_width = 1;
    params.stride_height = 1;
    params.dilation_width_factor = 1;
    params.dilation_height_factor = 1;
    params.depth_multiplier = 1;       // 입력 채널 1개당 출력 채널 1개 매핑
    params.input_offset = 0; 
    params.weights_offset = 0; 
    params.output_offset = 0; 
    params.quantized_activation_min = -128; 
    params.quantized_activation_max = 127;  

    // 2. 형상(Shape) 초기화 설정
    const int32_t input_dims[] = {1, 5, 25, 64};
    RuntimeShape input_shape(4, input_dims);

    // TFLM에서 Depthwise 필터 형상은 [1, H, W, Out_Channels] 입니다.
    const int32_t filter_dims[] = {1, 3, 3, 64};
    RuntimeShape filter_shape(4, filter_dims);

    const int32_t output_dims[] = {1, 5, 25, 64};
    RuntimeShape output_shape(4, output_dims);

    const int32_t bias_dims[] = {64};
    RuntimeShape bias_shape(1, bias_dims);

    // 3. 배열 초기화 (베어메탈용)
    for (int i = 0; i < INPUT_SIZE; i++) input_data[i] = 1;
    for (int i = 0; i < FILTER_SIZE; i++) filter_data[i] = 2;
    for (int i = 0; i < CHANNELS; i++) {
        bias_data[i] = 0;
        output_multiplier[i] = 1073741824;
        output_shift[i] = -1;
    }

    // 4. 커널 함수 호출 (Depthwise 전용 함수)
    reference_integer_ops::DepthwiseConvPerChannel(
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

    // 5. 최적화 방지용 리턴
    return output_data[0];
}