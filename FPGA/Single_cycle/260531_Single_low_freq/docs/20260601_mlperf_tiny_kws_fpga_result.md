# MLPerf Tiny KWS DS-CNN FPGA 실행 결과 정리

작성 시각: 2026-06-01 KST

## 대상

FPGA 프로젝트:

```text
RV32I-Project/FPGA/Single_cycle/260531_Single_low_freq/
```

대상 TinyML 소스:

```text
RV32I-Project/TinyML/MLPerf_Tiny_standalone/
```

실행한 애플리케이션은 MLPerf Tiny Keyword Spotting용 DS-CNN 모델이다.
입력은 `g_kws_inputs[0]`에 들어 있는 490 byte int8 MFCC feature이고,
출력은 12개 keyword class에 대한 int8 quantized score이다.

class label 순서는 다음과 같다.

```text
index 0: down
index 1: go
index 2: left
index 3: no
index 4: off
index 5: on
index 6: right
index 7: stop
index 8: up
index 9: yes
index 10: silence
index 11: unknown
```

## 실행 로그

Vitis에서 확인한 전체 결과 로그:

```text
MLPerf Tiny KWS (DS-CNN) loader
IMEM base=0xA0000000 DMEM base=0xA2000000
Loading IMEM (21331 words)
Loading DMEM (14014 words)
DMEM readback rodata[0]=0x00000F6C model[0]=0x0000001C
Memory load complete. Releasing RV32I reset.
Waiting for KWS status...
KWS status=0 (0x00000000, unknown)
KWS status=320 (0x00000140, allocating tensors)
KWS status=368 (0x00000170, invoking)
KWS status=1 (0x00000001, ok)
KWS status OK
KWS result index=5 raw=127
KWS label=on
KWS outputs=[-128,-128,-128,-128,-128,127,-128,-128,-128,-128,-128,-128]
```

## Vitis loader 동작

Vitis 쪽 loader는 PS에서 AXI BRAM으로 RV32I 프로그램과 데이터를 적재한 뒤,
RV32I reset을 release하고 DMEM mailbox를 polling한다.

주요 base address:

```text
IMEM PS AXI view: 0xA0000000
DMEM PS AXI view: 0xA2000000
```

적재 크기:

```text
IMEM: 21331 words = 85324 bytes
DMEM: 14014 words = 56056 bytes
```

Vitis loader 기준 BRAM 크기:

```text
IMEM BRAM: 0x00080000 bytes = 512 KiB
DMEM BRAM: 0x00040000 bytes = 256 KiB
```

따라서 이번 binary는 BRAM 용량 안에 들어간다.

## DMEM image 배치 확인

RV32I용 linker script는 DMEM의 앞 4 KiB를 mailbox로 예약한다.

```text
DMEM CPU view:
0x20000000 - 0x20000FFF : mailbox
0x20001000 - ...        : .rodata / .data image
```

Vitis loader도 DMEM image를 `DMEM_MAILBOX_BYTES` 뒤에 적재한다.

```c
#define DMEM_MAILBOX_BYTES 0x1000U
#define DMEM_IMAGE_OFFSET_WORDS (DMEM_MAILBOX_BYTES / WORD_SIZE_BYTES)
```

그래서 DMEM readback이 다음처럼 나온다.

```text
DMEM readback rodata[0]=0x00000F6C model[0]=0x0000001C
```

이 값의 의미:

- `rodata[0]=0x00000F6C`
  - DMEM `0x20001000`에 해당한다.
  - `.rodata` 첫 word가 정상 적재되었다.
- `model[0]=0x0000001C`
  - `g_kws_model_data` 시작 주소가 DMEM offset `0x1380`에 있다.
  - TFLite flatbuffer 첫 word가 정상 적재되었다.
  - TFLite flatbuffer는 일반적으로 `0x0000001C`, `TFL3` magic sequence로 시작한다.

linker map에서 확인한 주요 위치:

```text
.mailbox          0x20000000  size 0x1000
.rodata           0x20001000  size 0xdaf8
g_kws_inputs      0x20001194  size 0x1ea
g_kws_model_data  0x20001380  size 0xd2b0
.bss              0x2000eb00  size 0x2d010
tensor_arena      0x2000eb10  size 0x2d000
__bss_end         0x2003bb10
_stack_top        0x20040000
```

현재 stack 여유:

```text
0x20040000 - 0x2003bb10 = 0x44f0 bytes = 17648 bytes
```

즉 약 17.2 KiB 정도의 stack 여유가 있다.

## RV32I 펌웨어 status 해석

RV32I bare-metal 펌웨어는 DMEM mailbox의 word 0에 status를 쓴다.

mailbox 구조:

```text
word 0: status
word 1: predicted index
word 2: predicted raw score
word 3-14: output scores, 12 classes
```

이번 로그에서 관찰된 status:

```text
0x00000000 : unknown
0x00000140 : allocating tensors
0x00000170 : invoking
0x00000001 : ok
```

각 status의 의미:

```text
0x140: interpreter.AllocateTensors() 직전
0x170: interpreter.Invoke() 직전
0x001: Invoke 성공, output 저장, argmax 저장까지 완료
```

`KWS status=0 (unknown)`은 실패가 아니다.
Vitis가 mailbox를 0으로 clear한 뒤 RV32I reset을 풀고 바로 polling을 시작했기 때문에,
RV32I가 첫 status를 쓰기 전에 0을 한 번 읽은 것이다.

중간 status가 모두 보이지 않는 것도 정상이다.
RV32I가 status를 빠르게 갱신하고 Vitis는 1 ms 단위로 polling하기 때문에,
짧게 지나가는 상태는 로그에 찍히지 않을 수 있다.
이번에 중요한 것은 `0x140 -> 0x170 -> 0x1`까지 도달했다는 점이다.

## RV32I 실행 흐름

RV32I 펌웨어의 핵심 실행 순서:

1. mailbox 초기값 기록
2. TFLite model pointer 획득
3. TFLite schema version 확인
4. DS-CNN에 필요한 op resolver 구성
5. `MicroInterpreter` 생성
6. `AllocateTensors()` 실행
7. `g_kws_inputs[0]`를 input tensor에 복사
8. `Invoke()` 실행
9. output tensor에서 argmax 계산
10. output score 12개, best index, best raw score를 mailbox에 저장
11. status를 `ok`로 기록

등록한 TFLM op:

```cpp
resolver.AddFullyConnected();
resolver.AddConv2D();
resolver.AddDepthwiseConv2D();
resolver.AddReshape();
resolver.AddSoftmax();
resolver.AddAveragePool2D();
```

RV32I용 tensor arena 크기:

```text
180 KiB
```

## 결과 해석

최종 결과:

```text
KWS result index=5 raw=127
KWS label=on
KWS outputs=[-128,-128,-128,-128,-128,127,-128,-128,-128,-128,-128,-128]
```

해석:

- 12개 class 중 index 5의 score가 가장 크다.
- index 5 label은 `on`이다.
- raw score는 int8 quantized output 기준 최댓값인 `127`이다.
- 나머지 class는 모두 `-128`이다.

따라서 이번 입력 `g_kws_inputs[0]`에 대해 DS-CNN 모델은 `on`을 예측했다.

## PC smoke test와 비교

기존 PC smoke test 결과:

```text
prediction=on index=5 raw=127
raw_outputs=[-128,-128,-128,-128,-128,127,-128,-128,-128,-128,-128,-128]
```

이번 FPGA 결과:

```text
KWS result index=5 raw=127
KWS label=on
KWS outputs=[-128,-128,-128,-128,-128,127,-128,-128,-128,-128,-128,-128]
```

두 결과는 완전히 동일하다.

의미:

- 모델 데이터가 정상이다.
- 입력 feature가 정상이다.
- DMEM의 `.rodata` 및 flatbuffer model 배치가 정상이다.
- TFLM op resolver 구성이 정상이다.
- RV32I에서 `AllocateTensors()`가 성공했다.
- RV32I에서 `Invoke()`가 성공했다.
- RV32I output tensor 값이 PC 기준과 bit-exact하게 일치한다.

## 결론

이번 `260531_Single_low_freq` FPGA 실행은 성공으로 판단한다.

확인된 항목:

- PS가 IMEM BRAM에 RV32I instruction image를 정상 적재했다.
- PS가 DMEM BRAM에 `.rodata` / model image를 정상 적재했다.
- RV32I reset release 후 프로그램이 정상 실행되었다.
- TFLite schema version 확인 단계를 통과했다.
- TFLM `MicroInterpreter` 생성 후 `AllocateTensors()`에 진입했다.
- `AllocateTensors()`가 실패하지 않았다.
- 입력 tensor에 KWS feature를 복사했다.
- `Invoke()`에 진입했다.
- `Invoke()`가 실패하지 않았다.
- output tensor를 mailbox로 저장했다.
- best index와 raw score를 mailbox로 저장했다.
- 최종 status가 `ok`로 기록되었다.
- PC smoke test와 동일한 `on`, index 5, raw 127 결과가 나왔다.

정리하면, MLPerf Tiny KWS DS-CNN standalone binary가
RV32I FPGA single-cycle low-frequency 구성에서 실제 inference를 끝까지 수행했고,
결과도 PC reference 실행과 동일하게 나왔다.

## 남은 주의점

이번 결과는 단일 입력 1회 inference 기준 성공이다.
앞으로 더 넓게 검증하려면 다음을 추가로 확인하는 것이 좋다.

- 여러 입력 feature에 대한 반복 inference
- 다른 class 입력에 대한 결과 비교
- stack high-water mark 또는 canary 확인
- tensor arena 크기 축소 가능 여부 확인
- Vitis polling으로 놓치는 중간 status를 더 자세히 보기 위한 timestamp/debug counter
- FPGA clock frequency를 올렸을 때 동일 결과가 유지되는지 확인
- 장시간 반복 실행 시 mailbox/result 안정성 확인

특히 현재 stack 여유가 약 17.2 KiB이므로,
TFLM 소스나 빌드 옵션이 바뀌면 stack margin을 다시 확인해야 한다.
