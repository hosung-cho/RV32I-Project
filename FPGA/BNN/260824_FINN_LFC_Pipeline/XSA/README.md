# Pipeline FINN LFC XSA 주의사항

기존 `Pipeline_Ver1.0_80M.xsa`는 원본 pipeline 프로젝트의 산출물이다. 이 XSA의
Instruction BRAM은 512 KiB, Data BRAM은 256 KiB인데 FINN LFC DMEM image는 약
364 KiB이므로 LFC 보드 실행에 사용할 수 없다.

기존 XSA의 Data BRAM 물리 범위는 `0xA2000000-0xA203FFFF`인 반면, LFC ELF의
마지막 DMEM 사용 위치는 offset 약 `0x5BEF0`이다. 따라서 약 112 KiB가 기존
Data BRAM 범위를 벗어나며, Instruction BRAM의 남는 공간은 CPU data port에
연결되어 있지 않아 대신 사용할 수 없다.

`src/bd/design_1_80M.tcl`의 수정된 구성으로 새 bitstream/XSA 생성을 완료했다.

- Instruction BRAM: 128 KiB (`0xA0000000`, range `0x00020000`)
- Data BRAM: 512 KiB (`0xA2000000`, range `0x00080000`)
- Reset GPIO: `0xA3000000`
- RV32I clock: 80 MHz

생성 산출물:

- Vivado project: `vivado_workspace/260824_FINN_LFC_Pipeline/Pipeline_FINN_LFC_80M.xpr`
- XSA: `vivado_workspace/260824_FINN_LFC_Pipeline/export/Pipeline_FINN_LFC_80M.xsa`
- bitstream: `vivado_workspace/260824_FINN_LFC_Pipeline/export/design_1_wrapper.bit`

XSA에는 bitstream이 포함되어 있다. Post-route DRC error는 0건이지만 80 MHz
timing은 WNS `-0.857 ns`, TNS `-11.973 ns`로 미충족이므로 보드 실행 결과를
확인하고 필요하면 CPU clock 하향 또는 critical path 최적화를 수행한다.

새 XSA에서 Vitis platform/application을 만든 뒤 `Vitis/helloworld.c`와
`Vitis/pipeline_lfc_images.h`를 application source로 사용한다.
