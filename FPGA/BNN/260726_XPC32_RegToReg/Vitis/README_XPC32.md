# XPC32 수동 Vitis 실행 안내

## 파일 구분

- `helloworld.c`: 기존 MLPerf Tiny KWS 베이스라인 loader
- `xpc32_bringup.c`: 이번 주 XPC32 reg-to-reg 명령 FPGA 기능 검증

## 수동 프로젝트 생성

1. `XPC32_RegToReg_Ultra96V1.xsa`로 platform을 생성한다.
2. `psu_cortexa53_0`, standalone domain을 선택한다.
3. Empty Application 또는 Hello World Application을 생성한다.
4. 생성된 애플리케이션의 `src`에서 기존 `helloworld.c`를 삭제하거나 Build 제외한다.
5. 이 폴더의 `xpc32_bringup.c`를 애플리케이션 `src`로 import한다.
6. 애플리케이션을 build한 후 Hardware에서 Run한다.

`helloworld.c`와 `xpc32_bringup.c`를 동시에 빌드하면 두 파일에 모두 `main()`이 있어 linker 오류가 발생한다.

## 하드웨어 주소

| 용도 | 주소 | 크기 |
|---|---:|---:|
| Instruction BRAM | `0xA0000000` | 256 KiB |
| Data BRAM | `0xA2000000` | 512 KiB |
| RV32I reset GPIO | `0xA3000000` | 4 KiB |

## 정상 UART 결과

```text
XPC32 Ultra96-V1 bring-up
IMEM=0xA0000000 (256 KiB)
DMEM=0xA2000000 (512 KiB)
RESET GPIO=0xA3000000
Program loaded; releasing RV32I reset.
result[0] expected=0 actual=0
result[1] expected=32 actual=32
result[2] expected=31 actual=31
result[3] expected=16 actual=16
result[4] expected=16 actual=16
result[5] expected=1 actual=1
result[6] expected=7 actual=7
XPC32 BRING-UP PASS
```

이 프로그램은 RTL testbench와 동일한 custom-0 XPC32 시험 명령을 IMEM에 적재하고 DMEM 결과를 검사한다. MLPerf KWS나 전체 BNN 모델의 성능 측정 프로그램은 아니다.

## FINN LFC baseline/XPC32 비교

동일한 FINN LFC-W1A1 입력과 parameter를 사용하는 두 Vitis 애플리케이션을 별도로 만든다. 두 애플리케이션 모두 XPC32 CPU bitstream에서 실행할 수 있으며 baseline 이미지는 custom 명령을 사용하지 않는다.

### Baseline 애플리케이션에 import

- `lfc_baseline_loader.c`
- `lfc_loader_common.h`
- `lfc_imem_baseline.h`
- `lfc_dmem_image.h`

### XPC32 애플리케이션에 import

- `lfc_xpc32_loader.c`
- `lfc_loader_common.h`
- `lfc_imem_xpc32.h`
- `lfc_dmem_image.h`

자동 생성된 `helloworld.c`는 삭제하거나 Build 제외한다. 두 loader `.c`도 한 애플리케이션에 동시에 넣지 않고 각각 별도 애플리케이션에서 사용한다.

이미지를 다시 만들려면 먼저 `../software/lfc/build_lfc_variants.sh`를 실행하고 `./generate_lfc_vitis_images.py`를 실행한다. FPGA용 linker는 실제 DMEM 크기에 맞춰 512 KiB와 stack top `0x20080000`을 사용한다.

| 항목 | Baseline | XPC32 |
|---|---:|---:|
| RTL cycles | 2,399,397 | 776,741 |
| XPC32 동적 실행 | 0 | 90,432 |
| Prediction | 5 | 5 |
| 예상 35 MHz 시간 | 68.554 ms | 22.193 ms |

두 앱 모두 score `[-182,-94,-34,326,-162,556,54,6,216,-96]`과 `PASS`가 출력되어야 한다. Vitis cycle은 PS 측정시간의 35 MHz 환산값이므로 RTL 직접 count와 약간 다를 수 있다.
