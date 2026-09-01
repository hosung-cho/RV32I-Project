# FINN LFC on 260606 Pipeline Ver1.0

`FPGA/Pipeline/260606_Pipeline_Ver1.0`을 복사한 뒤 FINN LFC-W1A1
software와 RTL testbench를 추가한 독립 실험 폴더다. CPU RTL의 기능 변경 없이
80 MHz 기준 5-stage pipeline에서 동일 parameter와 input을 실행한다.

```bash
./testbench/run_pipeline_lfc.sh
```

완료 조건은 mailbox의 prediction/expected/correct와 10개 class score가 기존
RV32I 및 Wide-BDOT128 결과와 exact match하는 것이다.

## FPGA 준비 상태

RTL software와 Vitis loader 및 새 FPGA 산출물이 준비되어 있다. **기존
`XSA/Pipeline_Ver1.0_80M.xsa`를 그대로 사용하면 안 된다.** 기존 XSA의 Data
BRAM은 256 KiB이고 LFC DMEM image는 약 364 KiB이다.

수정된 `src/bd/design_1_80M.tcl`은 다음 구성이다.

| 영역 | PS base | 용량 |
|---|---:|---:|
| Instruction BRAM | `0xA0000000` | 128 KiB |
| Data BRAM | `0xA2000000` | 512 KiB |
| Reset GPIO | `0xA3000000` | 4 KiB |

생성된 하드웨어 파일은 다음과 같다.

- `vivado_workspace/260824_FINN_LFC_Pipeline/Pipeline_FINN_LFC_80M.xpr`
- `vivado_workspace/260824_FINN_LFC_Pipeline/export/Pipeline_FINN_LFC_80M.xsa`
- `vivado_workspace/260824_FINN_LFC_Pipeline/export/design_1_wrapper.bit`

XSA에는 bitstream이 포함되어 있다. 이 XSA로 Vitis platform을 만든 후 application에
다음 두 파일을 넣는다.

- `Vitis/helloworld.c`
- `Vitis/pipeline_lfc_images.h`

Loader는 전체 IMEM/DMEM read-back, mailbox 완료 대기, prediction과 10개 score의
exact match를 수행한다. 이미지 배열이 약 364 KiB이므로 A53 application linker는
DDR을 사용해야 한다.

Post-route DRC error는 0건이다. 단, 80 MHz timing은 WNS `-0.857 ns`, TNS
`-11.973 ns`로 미충족 상태이므로 실제 보드 실행 안정성을 확인해야 한다.

RV32I software를 변경한 경우 다음 명령으로 Vitis header를 갱신한다.

```bash
./software/build_lfc.sh
python3 Vitis/generate_pipeline_lfc_vitis_images.py
```

예상 UART 종료 메시지는 다음과 같다.

```text
status=1 prediction=5 expected=5 correct=1
scores=[-182,-94,-34,326,-162,556,54,6,216,-96]
Pipeline RV32I FINN LFC PASS
```
