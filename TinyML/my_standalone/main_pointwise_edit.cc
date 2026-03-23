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


// ---------------------------------------------------------
// 베어메탈 환경 가정:
// - 스택 공간이 작을 수 있으므로 큰 버퍼는 전역으로 배치
// - 동적 할당(new/malloc/std::vector) 없이 정적 메모리만 사용
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
    // 1) Conv 파라미터 설정
    // Pointwise(1x1) Conv이므로 stride/dilation은 모두 1,
    // 패딩은 0(VALID 동작)으로 둡니다.
    ConvParams params;
    params.stride_width = 1;
    params.stride_height = 1;
    params.dilation_width_factor = 1;
    params.dilation_height_factor = 1;
    params.padding_values.width = 0;
    params.padding_values.height = 0;
    // 오프셋/활성화 범위는 int8 양자화 예제 값.
    params.input_offset = 0;
    params.output_offset = 0;
    params.quantized_activation_min = -128;
    params.quantized_activation_max = 127;

    // 2) 텐서 형상 정의 (NHWC, 필터는 OHWI)
    // 입력:  N=1, H=5, W=25, C=64
    // 필터:  O=64, H=1, W=1, I=64 (1x1 pointwise)
    // 출력:  N=1, H=5, W=25, C=64
    const int32_t input_dims[] = {1, 5, 25, 64};
    RuntimeShape input_shape(4, input_dims);

    const int32_t filter_dims[] = {64, 1, 1, 64};
    RuntimeShape filter_shape(4, filter_dims);

    const int32_t output_dims[] = {1, 5, 25, 64};
    RuntimeShape output_shape(4, output_dims);

    const int32_t bias_dims[] = {64};
    RuntimeShape bias_shape(1, bias_dims);

    // 3) 테스트용 데이터 초기화
    // - 입력은 모두 1
    // - 필터는 모두 2
    // - bias는 0
    // - multiplier/shift는 채널별 양자화 파라미터 예시값
    for (int i = 0; i < INPUT_SIZE; i++) input_data[i] = 1;
    for (int i = 0; i < FILTER_SIZE; i++) filter_data[i] = 2;
    for (int i = 0; i < CHANNELS; i++) {
        bias_data[i] = 0;
        output_multiplier[i] = 1073741824;
        output_shift[i] = -1;
    }

    // 4) TFLM 참조 구현 호출
    // 전역 정적 배열을 직접 넘기므로 .data()가 필요 없습니다.
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

    // 5) 결과 사용
    // 베어메탈에서는 printf/std::cout를 쓰기 어려운 경우가 많으므로
    // 첫 번째 출력값을 반환해 디버거나 시뮬레이터에서 동작 여부를 확인합니다.
    // 또한 반환값 사용으로 계산 결과가 최적화로 제거되는 것을 방지합니다.
    return output_data[0];
}