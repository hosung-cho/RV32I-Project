# Pipeline FINN LFC Vivado 결과

- 생성일: 2026-08-25
- Vivado: 2024.2
- Device: `xczu3eg-sbva484-1-e` (Ultra96-V1)
- 상태: bitstream 및 bitstream 포함 XSA 생성 완료

## 기존 XSA를 사용할 수 없는 이유

기존 `Pipeline_Ver1.0_80M.xsa`의 Data BRAM은 256 KiB이며 PS 주소 범위는
`0xA2000000-0xA203FFFF`다. FINN LFC ELF의 마지막 DMEM 사용 위치는 base 기준
offset 약 `0x5BEF0`으로 기존 범위를 약 112 KiB 초과한다. 남는 Instruction BRAM은
CPU data port에 연결되지 않았으므로 software data를 옮기는 방식으로 해결할 수 없다.

## 새 하드웨어 구성

| 영역 | PS 주소 범위 | 용량 |
|---|---|---:|
| Instruction BRAM | `0xA0000000-0xA001FFFF` | 128 KiB |
| Data BRAM | `0xA2000000-0xA207FFFF` | 512 KiB |
| Reset GPIO | `0xA3000000-0xA3000FFF` | 4 KiB |

## 산출물

- Project: `vivado_workspace/260824_FINN_LFC_Pipeline/Pipeline_FINN_LFC_80M.xpr`
- XSA: `vivado_workspace/260824_FINN_LFC_Pipeline/export/Pipeline_FINN_LFC_80M.xsa`
- Bitstream: `vivado_workspace/260824_FINN_LFC_Pipeline/export/design_1_wrapper.bit`
- Build log: `reports/pipeline_lfc_vivado_build.log`

XSA archive 내부에 `Pipeline_FINN_LFC_80M.bit`이 포함된 것을 확인했다.

## 구현 결과

| 항목 | 결과 |
|---|---:|
| CLB LUT | 9,402 / 70,560 (13.32%) |
| CLB Register | 10,871 / 141,120 (7.70%) |
| Block RAM Tile | 160 / 216 (74.07%) |
| DRC error | 0 |
| DRC warning | 1 (`RTSTAT-10`, 미사용 내부 net) |
| WNS | -0.857 ns |
| TNS | -11.973 ns |
| Hold WHS / THS | 0.010 ns / 0.000 ns |

Routing과 bitstream 생성은 성공했지만 80 MHz setup timing은 미충족이다. 보드에서
우선 기능을 확인하고 불안정하면 clock 하향 또는 CPU critical path 최적화가 필요하다.

## 재생성

동시 Vivado IP 합성의 메모리 사용량 때문에 `-jobs 8`에서는 WSL OOM 종료가
재현됐다. 빌드 스크립트는 안정적인 `-jobs 2`로 설정했다.

```bash
cd RV32I-Project/FPGA/BNN/260824_FINN_LFC_Pipeline
./scripts/run_pipeline_lfc_vivado_build.sh
```
