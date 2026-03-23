# Pointwise Conv (1x1) 연산 정리

## 1. 이 코드가 수행하는 연산
이 코드는 TensorFlow Lite Micro의 정수형 ConvPerChannel 커널을 직접 호출하여,
int8 입력/가중치 기반의 1x1 Pointwise Convolution을 수행합니다.

- 입력 텐서 shape: [1, 5, 25, 64] (NHWC)
- 필터 텐서 shape: [64, 1, 1, 64] (OHWI)
- 출력 텐서 shape: [1, 5, 25, 64]

핵심은 1x1 Conv이므로 각 공간 위치 (h, w)마다 입력 채널 64개에 대한 내적을 수행해
출력 채널 64개를 만듭니다.

## 2. 내부 계산식
ConvPerChannel에서 각 출력 원소는 아래 순서로 계산됩니다.

1) 누산(acc)

acc = Σ(filter_val * (input_val + input_offset)) + bias

2) 채널별 양자화 스케일 적용

acc = MultiplyByQuantizedMultiplier(acc, output_multiplier[ch], output_shift[ch])

3) output_offset 더하기

acc = acc + output_offset

4) 활성화 범위 클램프

acc = clip(acc, quantized_activation_min, quantized_activation_max)

5) int8로 저장

output = (int8_t)acc

## 3. 현재 코드의 초기값
현재 테스트 코드는 다음 값으로 초기화됩니다.

- input_data 전체: 1
- filter_data 전체: 2
- bias_data 전체: 0
- input_offset: 0
- output_offset: 0
- output_multiplier: 1073741824
- output_shift: -1
- activation range: [-128, 127]

## 4. 기대되는 수치 결과
### 4-1. raw 누산값
출력 원소 1개당 채널 64개를 곱해 더하므로:

acc_raw = 64 * (2 * (1 + 0)) = 128

### 4-2. 양자화 스케일 적용
현재 multiplier/shift 조합에서 TFLM 스케일 함수 결과는
실질적으로 acc_raw가 1/4 배로 축소되어 32가 됩니다.

scaled_acc = 32

### 4-3. offset/clamp
- output_offset = 0 이므로 그대로 32
- 32는 [-128, 127] 범위 내이므로 클리핑 없음

최종 출력값 = 32

## 5. 출력 텐서 전체 결과
입력/필터/양자화 파라미터가 모든 위치와 채널에서 동일하므로,
출력 텐서의 모든 원소는 동일한 값 32가 됩니다.

- 출력 원소 수: 1 * 5 * 25 * 64 = 8000
- 예상: output_data[0..7999] = 32
- main return 값도 32

## 6. 연산량(대략)
- 출력 원소 8000개
- 원소당 MAC 64회 (1x1x64)
- 총 곱셈 약 512,000회 (+ 덧셈 유사 규모)

## 7. 실제 검증 결과 (2026-03-17)

### 7-1. PC 호스트 빌드 실행 결과
- 빌드 스크립트: build_host.sh (g++, x86-64)
- 플래그: -DTFLITE_SINGLE_ROUNDING 추가 후
- 결과: EXIT:32 (정상)

### 7-2. RISC-V RTL 시뮬레이션 결과

| 항목 | 1차 시뮬 (-DTFLITE_SINGLE_ROUNDING 없음) | 2차 시뮬 (-DTFLITE_SINGLE_ROUNDING 추가) |
|------|------------------------------------------|------------------------------------------|
| a0 반환값 | 127 (activation_max에 클리핑) | **32 (정상)** |
| 시뮬 종료 시각 | 288,430,590 ns | 286,510,590 ns |
| PC 결과와 일치 | X | O |

- 빌드 스크립트: build_pointwise_edit3.sh (riscv32-unknown-elf-g++, rv32i)
- 시뮬레이터: Vivado XSim (RV32I_System_tb)

### 7-3. 결론
두 환경에서 동일한 결과(32)를 얻기 위해서는
-DTFLITE_SINGLE_ROUNDING 플래그가 반드시 필요합니다.
이 플래그 없이 빌드하면 내부 정수 스케일 계산 경로(Double-rounding)가 달라져
RISC-V에서 128 이상의 값이 나와 최종 클리핑된 127이 반환됩니다.

## 8. -DTFLITE_SINGLE_ROUNDING 플래그 상세 설명

### 8-1. 이 플래그가 하는 일
TFLM 내부의 MultiplyByQuantizedMultiplier 함수에는 두 가지 구현이 존재하며,
이 플래그가 컴파일 시점에 어느 경로를 사용할지 결정합니다.

```c
#if TFLITE_SINGLE_ROUNDING
    // Single-rounding 경로 (범용)
#else
    // Double-rounding 경로 (ARM NEON 전용)
#endif
```

### 8-2. Single-rounding 경로 (플래그 있음)

```cpp
const int64_t total_shift = 31 - shift;           // 31 - (-1) = 32
const int64_t round = 1LL << (total_shift - 1);   // 1 << 31
int64_t result = x * (int64_t)multiplier + round;
result = result >> total_shift;                    // >> 32
```

- 64비트 정수 산술 1번 수행
- 반올림이 1번만 발생
- 플랫폼에 무관하게 항상 동일한 결과 보장

현재 값(x=128, multiplier=1073741824=2^30, shift=-1) 대입:

    result = (128 * 2^30 + 2^31) >> 32
           = (2^37 + 2^31) >> 32
           = 32.5 → 버림 → 32

### 8-3. Double-rounding 경로 (플래그 없음)

```cpp
// shift = -1 이므로: left_shift=0, right_shift=1
RoundingDivideByPOT(
    SaturatingRoundingDoublingHighMul(128, 1073741824),  // 1단계 반올림
    1                                                    // 2단계 반올림
)
```

- SaturatingRoundingDoublingHighMul : ARM NEON의 vqrdmulh 명령어에 대응하도록 설계된 연산 (첫 번째 반올림)
- RoundingDivideByPOT : 2의 거듭제곱으로 나누면서 두 번째 반올림
- 반올림이 2번 발생하기 때문에 경계값에서 결과가 1 차이 날 수 있음

### 8-4. RISC-V에서 Double-rounding이 틀린 이유

RISC-V rv32i는 64비트 곱셈 명령어(mulh)가 없어서,
컴파일러가 소프트웨어 int64 곱셈 라이브러리(libgcc)를 사용합니다.
-O2 + -nostdlib 환경에서 gemmlowp의 SaturatingRoundingDoublingHighMul이
예상과 다른 결과를 내어, 최종값이 127보다 커지고 클리핑됩니다.

| 단계 | Single-rounding | Double-rounding (RISC-V) |
|------|-----------------|--------------------------|
| acc_raw | 128 | 128 |
| 스케일 적용 후 | 32 | 128 이상 (비정상) |
| clip(-128, 127) | 32 (통과) | 127 (클리핑) |

### 8-5. 적용 기준 정리

| 환경 | 권장 플래그 |
|------|-------------|
| RISC-V, MCU, 임베디드 (NEON 없음) | -DTFLITE_SINGLE_ROUNDING 필수 |
| ARM Cortex-A (NEON 있음) | 플래그 없어도 동작 (NEON이 vqrdmulh 직접 처리) |
| x86-64 PC (g++) | 플래그 없어도 우연히 맞을 수 있으나, 명시적으로 추가 권장 |

## 9. 확인 포인트
실기기/시뮬레이터에서 값이 다르게 나오면 아래를 우선 점검합니다.

- -DTFLITE_SINGLE_ROUNDING 플래그가 양쪽 빌드 모두에 동일하게 적용되었는지
- output_multiplier/output_shift 값이 빌드 시점에 변경되었는지
- 커널 구현이 reference가 아닌 다른 최적화 커널로 바뀌었는지
- input/filter/bias 초기화가 실제로 동일하게 들어갔는지
