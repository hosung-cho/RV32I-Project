# Wide-BDOT128 Ultra96-V1 board project 결과

> 후속 결과: 2026-08-18 CPU/BDOT 35 MHz 통합형 bitstream의 Ultra96-V1 실기검증이
> PASS했다. 최신 UART 결과는 `ultra96v1_cpu_integrated_board_result.md`를 따른다.

## 1. 결론

선택 1인 **PS HPM AXI와 loader fabric 전체를 35 MHz로 구동하는 구조**로
Ultra96-V1 Vivado 프로젝트를 생성했다. 프로젝트 생성, Block Design 검증,
합성, 배치·배선, bitstream 생성, XSA export가 모두 완료됐다.

- 프로젝트: `vivado_workspace/260817_Wide_BDOT128/Wide_BDOT128_Ultra96V1.xpr`
- 재현 스크립트: `vivado_workspace/260817_Wide_BDOT128/build.sh`
- 대상: Avnet Ultra96-V1, `xczu3eg-sbva484-1-e`
- Vivado: 2024.2

## 2. 설계 구조

기존 `vivado_workspace/260726_XPC32_RegToReg`의 Ultra96-V1 PS 설정과 clock
wizard 구성을 기준으로 삼았다. PS의 100 MHz PL clock을 clock wizard에 넣어
다음 두 domain을 만든다.

| Domain | 주파수 | 포함 블록 |
|---|---:|---|
| CPU/loader | 35 MHz | RV32I, PS HPM AXI, SmartConnect, AXI BRAM controller, GPIO, memory Port A |
| Accelerator | 105 MHz | BDOT128, memory Port B |

PS HPM AXI는 6개의 slave 경로로 분기된다.

1. Instruction BRAM
2. Data BRAM
3. control/status GPIO
4. Activation 0 loader port
5. Activation 1 loader port
6. Weight loader port

Activation/Weight BRAM은 `wide_bdot_fpga_core` 내부에 유지했다. 각 AXI BRAM
controller의 native BRAM 신호는 `bram_loader_adapter.v`를 통해 core의 32-bit
loader interface에 연결했다. `load_mode=1`일 때 PS가 Port A를 소유하고,
`load_mode=0`일 때 RV32I가 소유한다. Accelerator는 독립적인 128-bit Port B를
105 MHz로 사용한다.

## 3. PS 주소 맵

| 용도 | 시작 주소 | AXI window | 물리 용량 |
|---|---:|---:|---:|
| Instruction BRAM | `0xA0000000` | 128 KiB | 128 KiB |
| Data BRAM | `0xA2000000` | 64 KiB | 64 KiB |
| Control/status GPIO | `0xA3000000` | 4 KiB | - |
| Activation 0 | `0xA4000000` | 32 KiB | 32 KiB |
| Activation 1 | `0xA4010000` | 32 KiB | 32 KiB |
| Weight | `0xA5000000` | 512 KiB | 400 KiB |

Weight는 AXI 주소 decode 때문에 512 KiB window를 사용하지만, 실제 BRAM은
400 KiB다. 따라서 PS loader는 Weight base 기준 offset `0x00000` 이상,
`0x64000` 미만만 접근해야 한다. 범위 밖 접근은 금지한다.

## 4. 제어 및 부팅 순서

AXI GPIO channel 1은 2-bit 출력이고 초기값은 `2'b11`이다.

| bit | 신호 | 1의 의미 |
|---:|---|---|
| 0 | `load_mode` | PS가 Activation/Weight Port A 소유 |
| 1 | `async_reset` | CPU/core reset 유지 |

GPIO channel 2는 상태 입력이다.

| bit | 신호 |
|---:|---|
| 0 | `bdot_busy` |
| 1 | `bdot_error` |

권장 loader 순서는 다음과 같다.

1. GPIO에 `3`을 기록해 load mode와 reset을 유지한다.
2. Instruction, Data, Activation 0/1, Weight image를 적재한다.
3. GPIO에 `1`을 기록해 load mode를 유지하면서 reset만 해제한다.
4. 35 MHz CPU clock 2주기 이상 기다린다.
5. GPIO에 `0`을 기록해 memory 소유권을 CPU로 넘기고 실행한다.

PL reset이 유지되는 동안에도 GPIO 출력과 무관하게 core는 load/reset 상태가
되도록 reset 신호와 GPIO 제어를 OR 연결했다.

## 5. 구현 결과

| 항목 | Post-route 결과 |
|---|---:|
| CLB LUT | 14,393 / 70,560 (20.40%) |
| CLB register | 14,845 / 141,120 (10.52%) |
| RAMB36 | 164 / 216 (75.93%) |
| DSP | 0 / 360 |
| Routable nets | 28,816 / 28,816 fully routed |
| Routing error | 0 |
| DRC checks | 0 |

RAMB36 164개는 Instruction 32개, Data 16개, Activation 두 뱅크 16개,
Weight 100개에 해당한다. Ultra96-V1 전체 RAMB36의 75.93%를 사용하므로 향후
메모리 증설 여유는 52개다.

## 6. Timing 및 CDC

| 경로 | WNS | TNS | 실패 endpoint |
|---|---:|---:|---:|
| 전체 | +1.278 ns | 0 ns | 0 |
| Accelerator 105 MHz 내부 | +1.278 ns | 0 ns | 0 |
| CPU/loader 35 MHz 내부 | +14.388 ns | 0 ns | 0 |
| CPU→Accelerator bundle | +8.848 ns | 0 ns | 0 / 96 |
| Accelerator→CPU bundle | +27.769 ns | 0 ns | 0 / 33 |

모든 사용자 timing constraint가 충족됐다. Request/response toggle은 2-stage
`ASYNC_REG` synchronizer를 사용한다. Bundled data는 source가 handshake 완료
전까지 값을 유지하고, destination이 동기화된 toggle을 확인한 뒤 capture한다.
Bundle 자체에는 CPU→Accelerator 9.524 ns, Accelerator→CPU 28.571 ns의
`set_max_delay -datapath_only`를 적용했다.

Post-route CDC report는 CDC-3 Info 1개와 CDC-15 Warning 33개를 기록했다.
CDC-15는 위 response bundled-data 경로이며 max-delay로 별도 검증했다. 두 clock은
동일 clock wizard에서 생성된 1:3 synchronous generated clock이므로 request 방향은
timing engine에서도 동기 clock crossing으로 분석된다. Toggle bridge는 protocol상
안전한 request/response 전달을 위해 그대로 유지했다.

Reset은 asynchronous assert, domain별 2-stage synchronous deassert 구조다.
최초 bitstream 생성 로그에서 reset synchronizer PRE pin을 찾는 XDC 계층 glob이
일치하지 않는 경고를 발견했다. XDC를 실제 합성 계층명에 맞게 수정했고 routed
checkpoint에서 4개 PRE pin에 제약이 적용되는 것을 재검증했다. 이 변경은
bitstream 논리를 변경하지 않는 timing exception 수정이다.

## 7. Power report 해석

Vectorless post-route 추정값은 total 2.144 W, dynamic 1.830 W, static 0.314 W이며
confidence는 Medium이다. 이 값에는 PS와 fabric의 기본 toggle 가정이 포함되고
실제 FINN LFC switching activity가 반영되지 않았다. 따라서 energy/inference
결과로 사용하면 안 되며, FPGA 실행 후 SAIF/VCD 기반 재분석 또는 보드 실측이
필요하다.

## 8. 생성물과 재현

```text
vivado_workspace/260817_Wide_BDOT128/
├── Wide_BDOT128_Ultra96V1.xpr
├── create_and_build.tcl
├── build.sh
├── export/
│   ├── design_1_wrapper.bit
│   ├── design_1_wrapper.bin
│   └── Wide_BDOT128_Ultra96V1.xsa
└── reports/
```

프로젝트를 처음부터 재생성하려면 프로젝트 폴더에서 다음을 실행한다.

```bash
./build.sh
```

## 9. PS loader 작성 및 남은 검증

Vitis project에 import할 standalone A53 PS loader 코드를 `Vitis/`에 작성했다.
이 코드는 다섯 memory image 적재와 read-back, GPIO `3→1→0` 실행 sequence,
mailbox timeout, prediction 및 score 검사를 수행한다. 상세 설계와 정적 검증
결과는 `reports/vitis_ps_loader_result.md`에 기록했다.

Vivado 구현과 loader 코드는 완료됐지만 실제 Ultra96-V1 보드 실행은 아직
수행하지 않았다. 남은 작업은 XSA 기반 Vitis project 생성과 다음 항목의 실측이다.

1. Loader의 전체 PS read-back PASS 확인
2. GPIO `3→1→0` 전환 후 RV32I 시작 확인
3. FINN LFC prediction 5 및 score 일치 확인
4. `bdot_busy`, `bdot_error`, cycle count 확인
5. 실행시간, 보드 전력, energy/inference 측정
