# MLPerf Tiny KWS DS-CNN Standalone 진행 기록

작성 시각: 2026-05-27 00:48 KST

## 목표

`TinyML_Local/tiny-master`에 있는 MLPerf Tiny keyword spotting 레퍼런스 구성에서 DS-CNN 신경망 실행에 필요한 부분만 `RV32I-Project/TinyML/MLPerf_Tiny_standalone`로 분리한다.

최종 목표는 이 DS-CNN keyword spotting 모델을 우리가 만든 RV32I 코어에서 FPGA로 실행하는 것이다. 현재 단계의 목표는 RV32I 포팅 전에 PC에서 모델, 입력 데이터, TFLM 연산자 등록, TFLM 런타임 의존성이 제대로 묶이는지 확인하는 것이다.

## 확인한 원본 위치

`tiny-master`에서 keyword spotting 관련 레퍼런스 파일은 다음 위치에 있다.

```text
TinyML_Local/tiny-master/benchmark/reference_submissions/keyword_spotting/
  submitter_implemented.cpp
  submitter_implemented_ho.cpp
  kws/kws_model_data.cc
  kws/kws_model_data.h
  kws/kws_model_settings.cc
  kws/kws_model_settings.h
  kws/kws_input_data.cc
  kws/kws_input_data.h
```

또한 학습/모델 변환 쪽에도 동일한 모델 데이터가 있었다.

```text
TinyML_Local/tiny-master/benchmark/training/keyword_spotting/kws_model_data.cc
TinyML_Local/tiny-master/ho/kws_model_data.cc
```

`md5sum`으로 확인한 결과, 기존 `MLPerf_Tiny_standalone`의 `kws_model_data.cc`와 위 세 파일은 모두 동일했다.

```text
c2c0b7528761f8af5273e3b2a0430a29
```

즉, 모델 자체는 이미 올바른 MLPerf Tiny KWS DS-CNN 모델이었다.

## 가져온 파일과 현재 배치

현재 `MLPerf_Tiny_standalone`의 KWS 관련 파일 배치는 다음과 같다.

```text
RV32I-Project/TinyML/MLPerf_Tiny_standalone/
  archive/main_pc_profile.cc
  docs/20260527_0048_mlperf_tiny_kws_standalone_progress.md
  kws/kws_input_data.cc
  kws/kws_input_data.h
  kws/kws_model_data.cc
  kws/kws_model_data.h
  kws/kws_model_settings.cc
  kws/kws_model_settings.h
  script/build_kws_pc.sh
  src/main_kws_pc.cc
```

`kws_model_data.cc`는 실제 TFLite 모델 바이트 배열이다. `kws_model_data.h`는 `extern` 선언만 제공한다.

`kws_input_data.cc`는 테스트용 입력 feature를 담고 있다. 이 입력은 raw audio가 아니라 이미 전처리된 int8 MFCC feature이며 shape는 `49 x 10 x 1`, 총 490 byte이다.

`kws_model_settings.*`는 KWS 입력 크기와 12개 class label을 정의한다.

```text
down, go, left, no, off, on, right, stop, up, yes, silence, unknown
```

## `main_pc_profile.cc` 정리

기존 `main_pc_profile.cc`는 PC 프로파일링용 초안이었다. 현재 standalone 흐름에서는 직접 필요하지 않다.

문제점:

- 실제 모델 심볼은 `g_kws_model_data`인데, 파일에서는 `g_kws_ref_model_data`를 참조하고 있었다.
- `iostream`, `std::cout`, `std::cerr`, `MicroProfiler` 중심이라 RV32I bare-metal 포팅에는 부적합하다.
- 현재 PC smoke test 역할은 `src/main_kws_pc.cc`가 대신한다.

그래서 `main_pc_profile.cc`는 현재 `archive/main_pc_profile.cc`로 이동된 상태다.

## tiny-master reference firmware를 그대로 쓰지 않은 이유

`tiny-master/benchmark/reference_submissions/keyword_spotting/submitter_implemented.cpp`는 MLPerf 제출용 펌웨어 껍데기다. 신경망 실행뿐 아니라 아래 요소들이 섞여 있다.

- `mbed.h`
- `UnbufferedSerial`
- `DigitalOut`
- MLPerf runner API: `th_load_tensor`, `th_infer`, `th_results`
- serial command parser
- timestamp/power measurement hook
- `MicroModelRunner` wrapper

우리 목적은 MLPerf 제출 호환 펌웨어가 아니라, RV32I 코어 위에서 keyword spotting DS-CNN inference를 실행하는 것이다. 따라서 reference firmware는 그대로 가져오지 않고, 필요한 핵심 정보만 반영했다.

reference firmware에서 실제로 참고한 핵심 내용은 다음이다.

```cpp
resolver.AddFullyConnected();
resolver.AddConv2D();
resolver.AddDepthwiseConv2D();
resolver.AddReshape();
resolver.AddSoftmax();
resolver.AddAveragePool2D();
```

그리고 tensor arena 크기, KWS input size, class label 구성도 참고했다.

## `main_kws_pc.cc` 역할

`src/main_kws_pc.cc`는 RV32I용 최종 코드가 아니다. FPGA/RV32I 포팅 전에 PC에서 다음을 확인하는 smoke test다.

실행 흐름:

1. `g_kws_model_data`에서 TFLite 모델을 읽는다.
2. TFLite schema version을 확인한다.
3. DS-CNN에 필요한 TFLM op 6개를 등록한다.
4. 200KB `tensor_arena`를 준비한다.
5. `MicroInterpreter`를 생성한다.
6. `AllocateTensors()`로 tensor와 activation buffer를 arena에 배치한다.
7. `g_kws_inputs[0]`의 490 byte MFCC feature를 input tensor에 복사한다.
8. `interpreter.Invoke()`로 DS-CNN inference를 한 번 실행한다.
9. output 12개 int8 값 중 argmax를 찾아 label과 raw output을 출력한다.

## PC 빌드 스크립트

PC smoke test 빌드용 스크립트:

```text
RV32I-Project/TinyML/MLPerf_Tiny_standalone/script/build_kws_pc.sh
```

실행 명령:

```bash
./RV32I-Project/TinyML/MLPerf_Tiny_standalone/script/build_kws_pc.sh
```

이 스크립트는 `g++ -std=c++17 -O2`로 PC 실행 파일을 만들고 바로 실행한다. TFLM을 라이브러리로 빌드하지 않고, 현재 repo에 있는 필요한 TFLM `.cc` 파일들을 직접 나열해서 링크한다.

포함한 주요 TFLM 구성:

- `micro_interpreter`
- `micro_allocator`
- `micro_interpreter_graph`
- `flatbuffer_utils`
- arena allocator
- memory planner
- conv/depthwise conv/fully connected/pooling/reshape/softmax kernels
- kernel common files
- flatbuffer conversion bridge
- schema utility
- TFLite common/array utilities

`kws_model_data.cc`가 `kws/` 아래로 정리되었기 때문에 빌드 스크립트도 다음 경로를 사용하도록 맞췄다.

```text
${KWS_DIR}/kws/kws_model_data.cc
```

## 검증 결과

현재 PC smoke test는 성공한다.

출력:

```text
prediction=on index=5 raw=127
raw_outputs=[-128,-128,-128,-128,-128,127,-128,-128,-128,-128,-128,-128]
```

의미:

- 테스트 입력 `g_kws_inputs[0]`에 대해 모델은 class index 5를 가장 크게 출력했다.
- index 5의 label은 `on`이다.
- 따라서 현재 모델 데이터, 입력 데이터, op resolver, TFLM 소스 링크 구성이 정상적으로 맞물린다.

## `.gitignore` 변경

PC 빌드 결과물은 source로 관리하지 않기 위해 `.gitignore`에 다음 항목을 추가했다.

```text
TinyML/MLPerf_Tiny_standalone/build_pc/
```

`build_pc/main_kws_pc`는 생성물이다.

## 현재 필요한 파일

RV32I 포팅 전 PC 기준으로 필요한 파일:

```text
kws/kws_model_data.cc
kws/kws_model_data.h
kws/kws_model_settings.cc
kws/kws_model_settings.h
kws/kws_input_data.cc
kws/kws_input_data.h
src/main_kws_pc.cc
script/build_kws_pc.sh
```

현재 직접 필요하지 않은 파일:

```text
archive/main_pc_profile.cc
```

## RV32I 포팅 시 주의점

PC smoke test와 RV32I bare-metal 실행은 다르다. RV32I용으로 갈 때는 다음을 처리해야 한다.

- `printf` 최소화 또는 제거
- `iostream` 사용 금지
- libc/newlib 의존성 최소화
- `crt0.S`에서 stack pointer 초기화
- `.bss` zero init
- `.data` copy 필요 여부 결정
- linker script에서 IMEM/DMEM 배치 명확화
- inference 결과를 특정 DMEM 주소에 store해서 testbench/ILA에서 확인
- 마지막은 `jal x0, 0` 같은 halt loop로 종료

메모리도 주의가 필요하다.

- KWS model data 길이: 약 53,936 bytes
- PC smoke test tensor arena: 200KB
- 기존 단순 TFLM/pointwise용 64KB IMEM/64KB DMEM 구조에는 전체 DS-CNN이 들어가지 않는다.

따라서 FPGA 실행 전에는 메모리 맵 확장이 필요하다. 최소 방향은 IMEM/ROM 256KB 이상, DMEM/RAM 256KB 수준을 검토하는 것이다. 실제 사용량은 RV32I ELF map file과 section size를 보고 확정해야 한다.

## 다음 작업 제안

1. `src/main_kws_rv32i.cc` 작성
2. `src/crt0.S`와 `src/custom_memory_kws.ld` 작성
3. `script/build_kws_rv32i.sh` 작성
4. RV32I ELF 생성
5. `objdump`, `size`, map file로 section 크기 확인
6. `imem.hex`, `dmem.hex` 생성
7. Verilog testbench에서 halt 및 output memory 확인
8. FPGA BRAM/AXI BRAM 메모리 맵 확장

현재까지의 결론은, Tiny_DS-CNN keyword spotting 모델만 standalone으로 분리하는 것은 가능하며, PC smoke test 기준으로 이미 inference 성공까지 확인했다.
