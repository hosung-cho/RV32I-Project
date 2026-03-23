#include <cstdio>
#include "tensorflow/lite/kernels/internal/reference/integer_ops/depthwise_conv.h"

// TFLite 내부에서 사용하는 보조 함수들을 위해 추가 (필요 시)
#include "tensorflow/lite/kernels/internal/common.h" 

namespace tflite {
    // 링커가 찾고 있는 바로 그 함수입니다.
    int32_t MultiplyByQuantizedMultiplier(int32_t x, int32_t multiplier, int shift) {
        // 64비트 정밀도 연산 (베어메탈에서 libgcc가 필요한 이유)
        long long acc = (long long)x * (long long)multiplier;
        
        // TFLite의 공식 Fixed-point rounding 방식
        int total_shift = 31 - shift;
        const int64_t round = (int64_t)1 << (total_shift - 1);
        int32_t result = (int32_t)((acc + round) >> total_shift);
        
        return result;
    }
}

int main() {
    // 1. Params 설정: TFLite 구조체를 직접 조작
    tflite::DepthwiseParams params;
    params.stride_width = 1;
    params.stride_height = 1;
    params.dilation_width_factor = 1;
    params.dilation_height_factor = 1;
    params.padding_values.width = 0;
    params.padding_values.height = 0;
    params.input_offset = 0;      // 실제 모델에선 보통 음수
    params.weights_offset = 0;    // 보통 0
    params.output_offset = 0;
    params.depth_multiplier = 1;  // 중요: 이게 있어야 내부 루프가 돕니다.
    params.quantized_activation_min = -128;
    params.quantized_activation_max = 127;

    // 2. 텐서 모양 설정 (RuntimeShape 직접 생성)
    int32_t input_dims[] = {1, 3, 3, 1}; // Batch, Height, Width, Depth
    tflite::RuntimeShape input_shape(4, input_dims); 

    int32_t filter_dims[] = {1, 3, 3, 1};
    tflite::RuntimeShape filter_shape(4, filter_dims);

    int32_t bias_dims[] = {1, 1, 1, 1};
    tflite::RuntimeShape bias_shape(4, bias_dims);

    int32_t output_dims[] = {1, 1, 1, 1};
    tflite::RuntimeShape output_shape(4, output_dims);

    // 3. 테스트 데이터
    int8_t input_data[] = {10, 10, 10, 10, 10, 10, 10, 10, 10};
    int8_t filter_data[] = {2, 2, 2, 2, 2, 2, 2, 2, 2};
    int32_t bias_data[] = {0};
    int32_t multiplier[] = {1073741824}; // 0.5 배율 (Q31 포맷)
    int32_t shift[] = {0};
    int8_t output_data[1] = {0}; 

    // 4. 헤더의 커널 직접 호출
    // 네임스페이스를 풀 경로로 써주면 래퍼 함수 없이 바로 실행됩니다.
    tflite::reference_integer_ops::DepthwiseConvPerChannel(
        params, multiplier, shift, 
        input_shape, input_data, 
        filter_shape, filter_data, 
        bias_shape, bias_data, 
        output_shape, output_data
    );

    // 5. 결과 출력
   /*printf("Result: %d\n", output_data[0]);*/

  return output_data[0];
}