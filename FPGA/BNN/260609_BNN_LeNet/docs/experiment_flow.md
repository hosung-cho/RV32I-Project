# 260609 BNN LeNet 실험 흐름

## 명칭 정리

- `host_ref`: PC에서 실행하는 golden/reference 구현이다.
- `ps_app`: Vitis/Zynq PS에서 RV32I 이미지를 load하고 mailbox를 읽는 구현이다.
- `rv32i_target`: RV32I core에서 실행되는 bare-metal 구현이다.

## 현재 baseline

첫 baseline은 integer LeNet 구조이다.

```text
28x28 input
-> conv1 6x5x5 valid
-> 2x2 max pool
-> conv2 16x6x5x5 valid
-> 2x2 max pool
-> fc 256->120
-> fc 120->84
-> fc 84->10
```

`common/lenet_params.c`가 있으면 직접 학습한 MNIST LeNet checkpoint에서
export한 weight를 사용한다. 이 파일이 없으면 공통 C 구현은 deterministic
placeholder weight를 사용한다.

## 실행 순서

1. `host_ref`를 build하고 실행한다.
2. `rv32i_target`을 build해서 `imem.hex`와 `dmem.hex`를 생성한다.
3. 생성된 hex 파일을 `inst_array.c`, `data_array.c`로 변환한다.
   이 과정은 `script/build_lenet_rv32i.sh`에서 자동으로 수행된다.
4. Vitis application project에 `Vitis/helloworld.c`, `Vitis/inst_array.c`,
   `Vitis/data_array.c`를 추가한다.
5. PS mailbox에서 읽은 logits/checksum을 `host_ref` 결과와 비교한다.

주의할 점:

- 현재 reset GPIO는 active-low 기준이다.
- reset assert 시 GPIO data에 `0`을 쓰고, RV32I 실행을 시작할 때 `1`을 쓴다.
- `Vitis/helloworld.c`의 `SetReset()`은 이 polarity에 맞춰져 있다.

## 명령어

```bash
./script/build_lenet_pc.sh
./script/build_lenet_rv32i.sh
```

FC layer만 binary화한 실험은 다음처럼 build한다.

```bash
LENET_USE_BINARY_FC=1 ./script/build_lenet_pc.sh
LENET_USE_BINARY_FC=1 ./script/build_lenet_rv32i.sh
```

현재 `host_ref` 출력은 다음과 같다.

```text
lenet_host_ref
mnist_test_index=0 expected=7
prediction=7 raw=13
match=1
logits=[-1,-1,0,0,-2,-5,-12,13,-2,1]
layer_checksums=[conv1:0xc004db7c,pool1:0x7511cd41,conv2:0xca418b43,pool2:0xcaea81a7,fc1:0xe6defad9,fc2:0xbd85c4b0,logits:0x5b42c03e]
```

현재 RV32I image 크기는 다음과 같다.

```text
text=93096 data=0 bss=15716
```

## Binary FC 결과

`LENET_USE_BINARY_FC=1`을 사용하면 convolution/pooling은 기존 integer
baseline 그대로 두고, FC1/FC2/FC3만 binary dot product로 계산한다.

현재 binary FC는 다음 흐름을 사용한다.

```text
int16 activation/weight
-> sign threshold로 bit-packing
-> XNOR
-> software popcount
-> binary dot product
```

weight threshold는 quantized int16 weight 기준 `weight > 0`이다.
`weight >= 0` 기준에서는 quantized weight의 zero 값이 모두 +1로 취급되어
현재 MNIST sample에서 예측이 깨졌다.

FC weight는 `export_lenet_params.py`에서 1-bit packed array로 export한다.

```text
fc1 weight: 120 x 256 bits -> 960 uint32_t words
fc2 weight: 84 x 120 bits  -> 336 uint32_t words
fc3 weight: 10 x 84 bits   -> 30 uint32_t words
```

binary FC build에서는 기존 int16 FC weight array가 참조되지 않으므로 linker
GC에 의해 제거된다. convolution weight는 int16 그대로 유지된다.

현재 binary FC `host_ref` 출력은 다음과 같다.

```text
lenet_host_ref
fc_mode=binary_xnor_popcount
mnist_test_index=0 expected=7
prediction=7 raw=14
match=1
logits=[8,12,-2,6,-12,-4,-12,14,-6,-2]
layer_checksums=[conv1:0xc004db7c,pool1:0x7511cd41,conv2:0xca418b43,pool2:0xcaea81a7,fc1:0xa16dbdc3,fc2:0xb1a4497d,logits:0x7347768f]
```

현재 binary FC RV32I image 크기는 다음과 같다.

```text
text=15568 data=0 bss=15776
```

integer baseline과 비교하면 다음과 같다.

```text
integer baseline : text=93096 data=0 bss=15716
binary FC        : text=15568 data=0 bss=15776
```

주의할 점:

- 이 단계는 FC layer만 binary화한 것이다.
- convolution/pooling은 아직 integer baseline과 동일하다.
- FC는 packed XNOR-popcount kernel과 1-bit packed weight를 사용한다.
- 현재 binary FC는 재학습 없이 post-training sign binarization만 적용한 결과이다.

## PC 정확도 평가

MNIST test set 10,000장에 대해 PC에서 정확도를 평가했다.

평가 명령어:

```bash
.venv/bin/python PC/train/evaluate_lenet_variants.py
```

평가 결과:

```text
samples=10000
fp32_acc=0.9806 correct=9806
int16_acc=0.9761 correct=9761
binary_fc_acc=0.2698 correct=2698
loss_fp32_to_int16=0.0045
loss_int16_to_binary_fc=0.7063
loss_fp32_to_binary_fc=0.7108
```

해석:

- int16 C-equivalent baseline은 FP32 대비 정확도 손실이 0.45%p 수준이다.
- binary FC packed는 int16 baseline 대비 정확도 손실이 70.63%p로 매우 크다.
- 이는 FC layer를 재학습 없이 단순 sign binarization했기 때문이다.
- 정확도 있는 Binary FC 실험을 위해서는 binary-aware training 또는 QAT가 필요하다.

## Binary-aware training 1차 시도

`PC/train/train_binary_fc_lenet.py`를 추가해 FC layer를 forward path에서
binary화하고, backward는 STE로 근사하는 학습을 시도했다.

학습 명령어:

```bash
.venv/bin/python PC/train/train_binary_fc_lenet.py --epochs 10 --batch-size 256 --lr 0.00003
```

학습 중 PyTorch binary FC forward 기준 best accuracy는 다음과 같았다.

```text
best_binary_fc_test_acc=0.3694
```

하지만 해당 checkpoint를 현재 C/RV32I export 방식으로 변환한 뒤
`evaluate_lenet_variants.py`로 다시 평가하면 다음과 같았다.

```text
samples=10000
fp32_acc=0.8698 correct=8698
int16_acc=0.8742 correct=8742
binary_fc_acc=0.2781 correct=2781
loss_int16_to_binary_fc=0.5961
```

결론:

- 단순 STE binary FC 학습만으로는 현재 C-equivalent Binary FC 정확도가 충분히 회복되지 않았다.
- PyTorch 학습 forward와 C/RV32I fixed-point export 사이의 mismatch도 남아 있다.
- 다음 정확도 회복 시도에는 layer별 scale factor 또는 BatchNorm folding이 필요하다.
- 현재 `common/lenet_params.c/h`는 다시 기본 `lenet_mnist.pt` 기준으로 export해 둔다.

## 다음 BNN 단계

1. binary FC Vitis mailbox의 logits/checksum이 `host_ref`와 일치하는지 확인한다.
2. binary FC의 cycle count를 integer baseline과 비교한다.
3. binary-aware training으로 Binary FC 정확도를 회복한다.
4. packed binary convolution kernel을 추가한다.
5. integer LeNet baseline과 Binary LeNet의 cycle count, memory 사용량을 비교한다.

## RV32I cycle/time 측정

`Vitis/helloworld.c`는 PS timer(`XTime`)로 RV32I 실행 시간을 측정한다.
기본 RV32I clock은 다음 값으로 가정한다.

```c
#define RV32I_CORE_HZ 35000000ULL
```

출력되는 측정 구간은 다음과 같다.

```text
Lenet total reset-release-to-status
Lenet input-copy
Lenet inference
Lenet result-store
```

`Lenet inference`는 RV32I target이 입력 준비 완료 status(`0x110`)를 쓴 뒤
inference 완료 status(`0x120`)를 쓰기까지의 시간이다. cycle count는 다음
방식으로 근사한다.

```text
cycles = elapsed_us * RV32I_CORE_HZ / 1,000,000
```

비교 절차:

1. integer baseline build를 Vitis에 올리고 timing을 기록한다.
   ```bash
   ./script/build_lenet_rv32i.sh
   ```
2. binary FC build를 Vitis에 올리고 timing을 기록한다.
   ```bash
   LENET_USE_BINARY_FC=1 ./script/build_lenet_rv32i.sh
   ```
3. 두 결과의 `Lenet inference` 시간과 cycle 추정치를 비교한다.

비교 표:

```text
mode              inst_words  data_words  inference_ms  approx_cycles
integer baseline  863         22411       949.272       33,224,520
binary FC packed  972         2920        818.123       28,634,305
delta             +109        -19491      -131.149      -4,590,215
```

측정 결과 요약:

```text
inference time 감소율  = 13.82%
inference cycle 감소율 = 13.82%
data_words 감소율      = 86.97%
data_words 축소 비율    = 7.68x
```

해석:

- binary FC packed는 FC weight를 1-bit packed array로 바꾸면서 data memory 사용량을 크게 줄였다.
- 실행 시간은 약 13.82% 감소했다.
- convolution/pooling은 아직 integer baseline 그대로이므로 전체 inference 시간 감소폭은 FC layer 비중에 의해 제한된다.
- RV32I에는 popcount instruction이 없어 software popcount 비용이 남아 있다.

## 학습 weight 생성 계획

`PC/train/` 아래의 PyTorch script를 사용한다.

```bash
.venv/bin/python -m pip install -r PC/train/requirements.txt
.venv/bin/python PC/train/train_lenet_mnist.py --epochs 3 --batch-size 256
.venv/bin/python PC/train/export_lenet_params.py
.venv/bin/python PC/train/export_mnist_sample.py --index 0
```

`export_lenet_params.py`는 `common/lenet_params.h`와
`common/lenet_params.c`를 생성한다. `common/lenet_params.c`가 있으면
공통 C inference는 자동으로 `-DLENET_USE_EXPORTED_PARAMS=1` 옵션과 함께
compile되어 학습된 weight를 사용한다.

`export_mnist_sample.py`는 `common/lenet_test_image.h`와
`common/lenet_test_image.c`를 생성한다. 생성된 파일이 있으면 공통 C
inference는 label이 있는 MNIST test image를 자동으로 사용한다.

현재 학습 결과는 다음과 같다.

```text
epoch=3 test_acc=0.9806
```
