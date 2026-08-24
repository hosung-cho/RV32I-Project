# CPU 통합형 Wide-BDOT128 구현 및 검증 결과

- 작업일: 2026-08-17
- 대상: Ultra96-V1 Wide-BRAM BDOT128
- 결정: BDOT을 CPU 실행 유닛과 같은 35 MHz domain에 통합

## 1. 최종 clock 구조

```text
Clock Wizard (동일 source, phase 0)
├─ clk_cpu  35 MHz
│  ├─ RV32I CPU
│  ├─ custom instruction control
│  ├─ Wide-BDOT FSM
│  ├─ XNOR-popcount / accumulator
│  ├─ AXI loader fabric
│  └─ Activation/Weight Port A
└─ clk_bram 105 MHz
   ├─ IMEM Port B
   ├─ DMEM Port B
   ├─ Activation 0/1 128-bit Port B
   └─ Weight 128-bit Port B
```

105 MHz는 BDOT 연산 주파수가 아니라 synchronous BRAM read latency를 35 MHz CPU
cycle 안에 숨기기 위한 1:3 related memory clock이다. CPU와 accelerator 사이의
request, busy, done, result는 모두 35 MHz 신호이므로 toggle CDC bridge가 필요 없다.

## 2. RTL 변경

`wide_bdot_fpga_core.v`에서 다음을 적용했다.

1. accelerator clock을 `cpu_clk`로 변경했다.
2. `bdot_cdc_bridge`를 제거하고 CPU control과 accelerator를 직접 연결했다.
3. top-level의 두 번째 clock 의미를 `accel_clk`에서 `bram_clk`로 명확히 했다.
4. Activation/Weight wrapper의 128-bit Port B만 `bram_clk`로 유지했다.
5. accelerator reset은 `cpu_reset || load_mode`를 직접 사용한다.

Accelerator의 block 처리 순서는 우선 정확성을 위해 기존
`ISSUE → WAIT → ACCUM`을 유지했다. 한 block당 3 CPU cycles가 필요하다. 105 MHz
BRAM에는 그동안 여러 read edge가 존재하므로 128-bit read data는 ACCUM edge 전에
안정된다. 2-cycle 또는 1-cycle/block 최적화는 보드 정답 확인 이후 별도 단계로
남긴다.

`bdot_cdc_bridge.v`와 이전 dual-clock 시험은 비교 자료로 보존하지만 현재 Vivado
source 및 기본 regression에서는 제외했다.

## 3. IMEM/DMEM timeout 수정

최초 실패 Block Design은 IMEM/DMEM Port B를 CPU와 같은 35 MHz에 연결했다.
single-cycle CPU에는 instruction/data ready handshake가 없으므로 synchronous BRAM
출력이 한 fetch 늦어졌고, software가 정상 실행되지 않았다.

수정 Block Design에서는 다음을 105 MHz `clk_bram`에 연결했다.

- `imem_bram/clkb`
- `dmem_bram/clkb`
- `wide_bdot_fpga_core_0/bram_clk`

35 MHz와 105 MHz는 같은 Clock Wizard에서 생성한 phase-aligned 1:3 related clock이다.

## 4. Activation software 수정

기존 `output[word] |= bit` 코드는 volatile Activation Port A에 대해 read-modify-write를
발생시켰다. Port A의 35 MHz synchronous read latency에 의존하지 않도록 각 32개
neuron 결과를 local `uint32_t packed`에 모은 뒤 `output[word] = packed` 한 번만
store하도록 변경했다.

이 변경으로 RV32I image가 136 words에서 144 words로 증가했다. Vitis loader header도
다음 크기로 재생성했다.

- IMEM: 144 words
- DMEM: 1,632 words
- ACT0 input: 25 words
- Weight used: 94,528 words

## 5. 기능 검증

### CPU/BDOT 직접 통합

```text
TB PASS: rv32i_bdot result=411 pc_hold_cycles=25 starts=1 total_cycles=28
```

### FINN LFC 전체 추론

```text
cycles=121522
bdot=3082
blocks=23632
status=1
prediction=5
scores=[-182,-94,-34,326,-162,556,54,6,216,-96]
```

예측값과 10개 score가 reference와 정확히 일치했다. 이전 accelerator 105 MHz 구조의
105,699 CPU cycles보다 15,823 cycles, 약 14.97% 증가했다. 35 MHz 환산 실행시간은
약 3.472 ms다.

기본 functional regression의 wrapper, popcount, accelerator, CPU control 및 직접
RV32I integration도 모두 PASS했다.

Vivado actual BMG behavioral model의 32-bit Port A/128-bit Port B lane ordering,
byte write enable 및 wide read latency 등가시험도 `checks=3, errors=0`으로 PASS했다.

## 6. Vivado OOC 결과

Ultra96-V1 part `xczu3eg-sbva484-1-e`에 대해 실제 Activation/Weight BMG를 포함한
core를 배치·배선했다.

| 항목 | Post-route 결과 |
|---|---:|
| CLB LUT | 3,650 / 70,560 (5.17%) |
| CLB register | 1,403 / 141,120 (0.99%) |
| RAMB36 | 116 / 216 (53.70%) |
| DSP | 0 / 360 |
| setup WNS | +1.410 ns |
| hold WHS | +0.027 ns |
| unrouted nets | 0 |

OOC clock는 Vivado의 1 ps resolution에 맞춰 CPU 28.572 ns, BRAM 9.524 ns로 두어
정확한 1:3 관계를 표현했다. 28.571 ns와 9.524 ns를 독립 지정하면 28.571 ns마다
0.001 ns의 가짜 inter-clock requirement가 생기므로 사용하지 않는다.

## 7. 보드 프로젝트 및 실기검증

`vivado_workspace/260817_Wide_BDOT128/create_and_build.tcl`은 CPU/BDOT 35 MHz와
BRAM Port B 105 MHz 구조로 갱신했다. build script는 negative setup/hold slack을
성공으로 오인하지 않도록 최종 timing slack을 검사한다. 전체 Ultra96-V1 프로젝트는
bitstream과 XSA 생성까지 PASS했다.

| 항목 | Board post-route 결과 |
|---|---:|
| CLB LUT | 14,518 / 70,560 (20.58%) |
| CLB register | 14,587 / 141,120 (10.34%) |
| RAMB36 | 164 / 216 (75.93%) |
| 전체 setup WNS / TNS | +0.452 ns / 0 ns |
| 전체 hold WHS / THS | +0.009 ns / 0 ns |
| 105 MHz intra-clock WNS | +0.962 ns |
| 35 MHz intra-clock WNS | +19.120 ns |
| 35→105 MHz WNS | +1.885 ns |
| 105→35 MHz WNS | +0.452 ns |
| DRC checks | 0 |

생성물:

- `export/design_1_wrapper.bit`
- `export/design_1_wrapper.bin`
- `export/Wide_BDOT128_Ultra96V1.xsa`

2026-08-18 수정 bitstream을 Ultra96-V1에서 실행해 실기검증까지 PASS했다.

- 전체 AXI image read-back PASS
- IMEM 144 words 확인
- 실행시간 3,478 us
- 약 121,730 RV32I cycles @ 35 MHz
- status=1, prediction=5, expected=5, correct=1
- 10개 score RTL/reference와 exact match

RTL의 121,522 cycles와 보드의 환산 121,730 cycles 차이는 약 208 cycles, 0.17%다.
보드 값은 정수 microsecond timer와 mailbox polling을 포함한 근사치다. 상세 UART
로그와 해석은 `ultra96v1_cpu_integrated_board_result.md`에 기록했다.
