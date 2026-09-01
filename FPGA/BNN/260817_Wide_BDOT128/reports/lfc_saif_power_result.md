# FINN LFC Wide-BDOT128 SAIF Power 1차 결과

- 측정일: 2026-08-24
- Tool: Verilator 5.049 native SAIF + Vivado 2024.2 `report_power`
- 대상: Ultra96-V1 `xczu3eg-sbva484-1-e`
- 분석 checkpoint: Wide-BDOT128 OOC post-route core + Ultra96-V1 board routed design
- 상태: active/idle 및 board hierarchy annotation PASS, coverage 개선 필요

## 1. 측정 범위

FINN LFC-W1A1의 memory image initialization과 reset 구간은 제외하고, reset 해제부터 software mailbox의 `status=1` 완료까지 active activity를 기록했다. idle은 추론 완료 후 software completion loop에서 clock을 계속 공급하며 10,000 CPU cycles를 별도로 기록했다.

```text
reset deassert
    -> FINN LFC full inference
    -> mailbox status = 1
```

SAIF 생성 중 기능 결과도 동시에 검증했다.

```text
cycles=121522
bdot=3082
blocks=23632
prediction=5
scores=[-182,-94,-34,326,-162,556,54,6,216,-96]
TB PASS
```

SAIF duration은 3,472,255,158 ps이며 RTL cycle 기반 inference latency는 다음과 같다.

```text
121,522 cycles / 35 MHz = 3.472057 ms
```

두 값의 약 0.2 us 차이는 reset 해제와 dump enable event 경계를 포함한 SAIF 기록 구간 때문이다. Energy 계산에는 기존 architecture 비교와 같은 121,522-cycle latency를 사용했다.

idle SAIF의 정규화된 duration은 285,720,000 ps다. Verilator는 simulation 도중 늦게 연 SAIF의 앞 구간을 현재 logic value의 hold time으로 포함하므로, runner가 10,000-cycle 측정창 이전의 3,472,255,158 ps를 각 activity bucket에서 제거한다. 정규화 후 `cpu_clk`은 T0=142,874,286 ps, T1=142,845,714 ps, TC=19,999로 측정창과 일치한다.

## 2. OOC post-route active/idle power 결과

| 항목 | Active | Post-inference idle | 차이 |
|---|---:|---:|---:|
| Total on-chip power | 0.256 W | 0.249 W | 0.007 W |
| Dynamic power | 0.034 W | 0.027 W | 0.007 W |
| Device static power | 0.222 W | 0.222 W | 0 W |
| Clock power | 0.001 W | 0.001 W | 0 W |
| CLB logic power | 0.003 W | <0.001 W | 약 0.003 W |
| Signal power | 0.004 W | <0.001 W | 약 0.004 W |
| Block RAM power | 0.026 W | 0.025 W | 0.001 W |
| SAIF matched nets | 901 / 11,588 (8%) | 901 / 11,588 (8%) | - |
| Overall confidence | Medium | Medium | - |

전력 합계는 표시 자릿수 반올림 때문에 세부 항목 합과 약간 다를 수 있다.

## 3. Energy/inference 1차 계산

RTL exact latency 3.472057 ms를 사용했다.

```text
Dynamic energy/inference
  = 0.034 W x 0.003472057 s
  = 0.000118050 J
  = 118.050 uJ

Total energy/inference
  = 0.256 W x 0.003472057 s
  = 0.000888847 J
  = 888.847 uJ

Incremental energy/inference
  = (0.034 W - 0.027 W) x 0.003472057 s
  = 0.000024304 J
  = 24.304 uJ
```

참고로 보드 실측시간 3.478 ms를 그대로 적용하면 dynamic 118.252 uJ, total 890.368 uJ다.

Vivado report의 power 표시 정밀도가 1 mW이므로 7 mW 차이로 계산한 incremental energy는 특히 반올림 오차에 민감하다.

## 4. Board routed design annotation

실제 보드 프로젝트의 routed checkpoint를 열고 SAIF를 다음 hierarchy에 적용했다.

```text
design_1_wrapper
└── design_1_i/wide_bdot_fpga_core_0/inst
```

`read_saif -no_strip` 적용 결과 866 / 55,626 nets, 즉 전체 보드 net 기준 2%가 매칭됐다. OOC core와 board packaged core의 최적화 차이 때문에 OOC의 901개보다 35개 적다.

| Board 항목 | 결과 |
|---|---:|
| Total on-chip power | 2.170 W |
| Dynamic power | 1.855 W |
| Device static power | 0.314 W |
| Wide-BDOT core hierarchy dynamic | 0.040 W |
| PS8 dynamic | 1.617 W |
| Block RAM | 0.067 W |
| SAIF matched nets | 866 / 55,626 (2%) |
| Overall confidence | Medium |

이 중 PS8, AXI interconnect, clock wizard 등에는 inference SAIF가 직접 적용되지 않았고 Vivado의 기본 activity가 사용됐다. 따라서 2.170 W와 이를 곱한 board total energy는 추론 energy 결과로 사용하지 않는다. board report는 SAIF가 실제 bitstream 설계의 Wide-BDOT hierarchy에 매핑되는지 확인하는 통합 검증 자료다.

## 5. 해석 제한

이 결과는 논문용 최종 수치가 아니라 SAIF 경로가 정상 동작함을 확인한 1차 결과다.

1. 분석 대상은 CPU, BDOT 및 400 KiB Weight/Activation BMG를 포함한 OOC core다.
2. OOC energy에는 board-level PS, AXI loader, IMEM 및 DMEM 전체 power가 포함되지 않는다.
3. RTL SAIF를 post-route netlist에 이름 기반으로 매핑해 matched net이 8%다.
4. Vivado는 나머지 net activity를 probabilistic propagation으로 계산했다.
5. internal node activity가 25% 미만이므로 confidence는 Medium이다.
6. 고 fanout reset activity가 오래 assert된 것으로 해석된다는 warning이 있다. 실제 dump 구간에서는 reset을 제외했으나 synthesized reset network의 미매핑 activity를 추가 점검해야 한다.
7. idle은 power-gated 상태가 아니라 clock이 동작하는 software completion loop다.
8. board-level total power는 PS/AXI activity가 실측 또는 SAIF로 입력되지 않아 energy 계산에서 제외한다.

따라서 현재 dynamic 118.050 uJ, total 888.847 uJ, incremental 24.304 uJ는 모두 `SAIF-assisted preliminary estimate`로만 사용한다.

## 6. 재현

```bash
cd RV32I-Project/FPGA/BNN/260817_Wide_BDOT128
./scripts/run_lfc_saif_power.sh
```

주요 산출물:

```text
vivado/build/lfc_saif_power/results/
├── lfc_inference.saif
├── lfc_idle.saif
├── lfc_saif_sim.log
├── lfc_saif_power.log
├── lfc_saif_power.rpt
├── lfc_saif_power_verbose.rpt
├── lfc_saif_power_advisory.rpt
├── idle/
│   ├── lfc_saif_power.rpt
│   └── wide_bdot_fpga_core_lfc_saif.dcp
├── board_lfc_inference.saif
├── board_lfc_saif_power.rpt
└── design_1_wrapper_lfc_saif.dcp
```

## 7. 다음 작업

1. Post-synthesis 또는 post-route simulation SAIF를 생성해 net-name coverage를 높인다.
2. Activation/Weight BMG enable, address 및 data activity가 primitive까지 전달되는지 verbose report에서 확인한다.
3. 동일 방법을 RV32I baseline과 XPC32에 적용한다.
4. board의 PS/AXI activity를 별도로 확보하거나 PL rail 실측으로 board-level 값을 교차 검증한다.
5. 최종적으로 실제 power rail 측정으로 교차 검증한다.
