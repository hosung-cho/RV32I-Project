# FINN LFC-W1A1 Pipeline Ver1.0 RTL 결과

- 측정일: 2026-08-24
- CPU 기준: `FPGA/Pipeline/260606_Pipeline_Ver1.0` 복사본
- workload: 기존 FINN LFC-W1A1 RV32I software, 동일 parameter/input
- 상태: Verilator full inference PASS

## 결과

| 항목 | 값 |
|---|---:|
| CPU cycles | 2,724,933 |
| Stall cycles | 0 |
| Flush events | 108,513 |
| Branch flushes | 96,176 |
| Jump flushes | 12,337 |
| Prediction / expected | 5 / 5 |
| Correct | 1 |

```text
scores=[-182,-94,-34,326,-162,556,54,6,216,-96]
TB PASS: pipeline FINN LFC
```

Pipeline cycle은 software RV32I baseline의 2,399,397 cycles보다 325,536 cycles 많다. 이 차이는 거의 정확히 flush 108,513회의 3-cycle penalty에 해당한다. 해당 binary에서는 compiler scheduling 때문에 load-use stall이 계측되지 않았다.

## Latency 비교

| 조건 | Latency |
|---|---:|
| Pipeline native 80 MHz | 34.062 ms |
| Pipeline 35 MHz 정규화 | 77.855 ms |
| Single-cycle RV32I baseline 35 MHz | 68.554 ms |
| Single-cycle + BDOT128 35 MHz | 3.472 ms |

Pipeline은 native 80 MHz에서는 35 MHz RV32I baseline보다 약 2.01배 빠르다. 동일 35 MHz cycle 기준으로는 branch/jump flush penalty 때문에 baseline보다 느리며, BDOT128은 pipeline native latency보다 약 9.81배, 동일 35 MHz 정규화 latency보다 약 22.42배 빠르다.

## 재현

```bash
cd RV32I-Project/FPGA/BNN/260824_FINN_LFC_Pipeline
./testbench/run_pipeline_lfc.sh
```

RTL 기능 및 cycle 검증에 더해, IMEM 128 KiB / DMEM 512 KiB 구성의 새 bitstream과
bitstream 포함 XSA를 생성했다. Post-route DRC error는 0건이지만 80 MHz timing은
WNS `-0.857 ns`, TNS `-11.973 ns`로 미충족이다. 실제 board 실행은 아직 수행하지
않았다. Vivado 상세 결과는 `reports/pipeline_lfc_vivado_result.md`에 기록했다.
