#include <stdint.h>
// 전체 경로를 사용하여 include
#include "tensorflow/lite/kernels/internal/reference/integer_ops/conv.h"
#include "tensorflow/lite/kernels/internal/types.h"

using namespace tflite;

extern "C" void* memset(void* dest, int ch, size_t count) {
    unsigned char* p = (unsigned char*)dest;
    while (count--) *p++ = (unsigned char)ch;
    return dest;
}


// ---------------------------------------------------------
// [핵심] 베어메탈에서는 스택(Stack) 공간이 부족할 수 있고 
// 동적 할당(Heap)이 어려우므로, 큰 배열은 전역(Global) 변수로 선언합니다.
// ---------------------------------------------------------
#define INPUT_SIZE (1 * 5 * 25 * 64)   // 8000
#define FILTER_SIZE (64 * 1 * 1 * 64)  // 4096
#define OUTPUT_SIZE (1 * 5 * 25 * 64)  // 8000
#define CHANNELS 64

int8_t input_data[INPUT_SIZE];
int8_t filter_data[FILTER_SIZE];
int8_t output_data[OUTPUT_SIZE];
int32_t bias_data[CHANNELS];
int32_t output_multiplier[CHANNELS];
int32_t output_shift[CHANNELS];


int main() {
    // std::cout << "Starting Pointwise Convolution (1x1 Conv)..." << std::endl;

    // 1. 파라미터 설정 (Pointwise Conv의 핵심: Stride=1, Dilation=1)
    ConvParams params;
    params.stride_width = 1;
    params.stride_height = 1;
    params.dilation_width_factor = 1;
    params.dilation_height_factor = 1;
    params.padding_values.width = 0;
    params.padding_values.height = 0;
    params.input_offset = 0; // 예시 값
    params.output_offset = 0; // 예시 값
    params.quantized_activation_min = -128; // int8 범위
    params.quantized_activation_max = 127;  // int8 범위

    // // 2. 입력 데이터 형상 설정 (예: 1 Batch, 5 Height, 25 Width, 64 Channel)
    // // 자료 기준: Output of Depthwise is 25x5x64
    // int32_t input_dims[] = {1, 5, 25, 64};
    // RuntimeShape input_shape(4, input_dims);
    // std::vector<int8_t> input_data(input_shape.FlatSize(), 1); // 모두 1로 초기화

    // // 3. 필터(커널) 형상 설정 (핵심: 1x1 필터, 입력 채널 64, 출력 채널 64)
    // // 형상: [Output_Channel, Height, Width, Input_Channel]
    // int32_t filter_dims[] = {64, 1, 1, 64};
    // RuntimeShape filter_shape(4, filter_dims);
    // std::vector<int8_t> filter_data(filter_shape.FlatSize(), 2); // 모두 2로 초기화

    // // 4. 출력 데이터 형상 설정 (입력과 동일한 크기, 채널 수만 변경될 수 있음)
    // int32_t output_dims[] = {1, 5, 25, 64};
    // RuntimeShape output_shape(4, output_dims);
    // std::vector<int8_t> output_data(output_shape.FlatSize(), 0);

    // // 5. 편향(Bias) 및 양자화 스케일 파라미터 (임의의 값으로 설정)
    // int32_t bias_dims[] = {64};
    // RuntimeShape bias_shape(1, bias_dims);
    // std::vector<int32_t> bias_data(64, 0);
    // std::vector<int32_t> output_multiplier(64, 1073741824); // 예시 스케일
    // std::vector<int32_t> output_shift(64, -1);             // 예시 시프트


    // 2. 형상(Shape) 초기화 설정 (에러 해결된 방식)
    const int32_t input_dims[] = {1, 5, 25, 64};
    RuntimeShape input_shape(4, input_dims);

    const int32_t filter_dims[] = {64, 1, 1, 64};
    RuntimeShape filter_shape(4, filter_dims);

    const int32_t output_dims[] = {1, 5, 25, 64};
    RuntimeShape output_shape(4, output_dims);

    const int32_t bias_dims[] = {64};
    RuntimeShape bias_shape(1, bias_dims);

    // // 6. 커널 함수 직접 호출
    // reference_integer_ops::ConvPerChannel(
    //     params, 
    //     output_multiplier.data(), 
    //     output_shift.data(), 
    //     input_shape, 
    //     input_data.data(), 
    //     filter_shape, 
    //     filter_data.data(), 
    //     bias_shape, 
    //     bias_data.data(), 
    //     output_shape, 
    //     output_data.data()
    // );

    // [수정된 코드] .data() 제거
    reference_integer_ops::ConvPerChannel(
        params, 
        output_multiplier,   // .data() 제거
        output_shift,        // .data() 제거
        input_shape, 
        input_data,          // .data() 제거
        filter_shape, 
        filter_data,         // .data() 제거
        bias_shape, 
        bias_data,           // .data() 제거
        output_shape, 
        output_data          // .data() 제거
    );

    // 3. 배열 초기화 (std::vector의 생성자 초기화를 for문으로 대체)
    for (int i = 0; i < INPUT_SIZE; i++) input_data[i] = 1;
    for (int i = 0; i < FILTER_SIZE; i++) filter_data[i] = 2;
    for (int i = 0; i < CHANNELS; i++) {
        bias_data[i] = 0;
        output_multiplier[i] = 1073741824;
        output_shift[i] = -1;
    }

    // 7. 결과 검증 (예: 첫 번째 원소 출력)
    // std::cout << "Result (first element): " << (int)output_data[0] << std::endl;
    // (모든 입력이 1, 필터가 2이므로, 채널 64개를 더하면 1 * 2 * 64 = 128. 
    // 양자화 스케일에 따라 최종 값이 달라지며, 오버플로우/클리핑을 확인해야 합니다.)

    // 5. 결과 반환 (std::cout 대신 리턴 값으로 확인)
    // 컴파일러가 사용되지 않은 코드를 삭제(Optimization Out)하는 것을 방지하기 위해
    // 연산 결과의 일부를 리턴 값으로 빼줍니다.
    return output_data[0];
}