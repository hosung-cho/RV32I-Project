# BRAM 동기 읽기 대응 파이프라인 수정 정리 (260518_Pipeline_5stage)

## 배경
- 기존 5-stage 파이프라인은 IMEM/DMEM 비동기 읽기를 가정함
- FPGA BRAM은 동기 읽기만 지원하므로 메모리 읽기마다 1-cycle 지연 문제가 발생
- 스톨/플러시 제어가 포함된 파이프라인 레지스터를 그대로 BRAM에 매핑할 수 없음

## 적용한 설계 변경 (핵심)
1) 메모리 출력과 파이프라인 레지스터 병합 (동기화)
- IMEM/DMEM을 동기 읽기 모델로 변경하여 BRAM 동작과 동일한 타이밍으로 정렬
- IF 단계에 fetch 주소 레지스터(IF1_pc)를 추가해 동기 IMEM의 1-cycle 지연을 흡수
- MEM 단계에 MEM2 레지스터를 추가해 동기 DMEM의 1-cycle 지연을 흡수

2) 초기 invalid data 방지 (NOP 주입)
- 동기 IMEM은 리셋 직후 첫 cycle에서 유효 명령이 즉시 나오지 않음
- reset 직후 PC가 RESET_PC(또는 RESET_PC-4)일 때 1-cycle NOP 주입
- 예상치 못한 garbage instruction 실행 방지

3) 스톨/플러시 지연 처리
- 스톨/플러시를 메모리 내부에 직접 걸지 않고, 1-cycle 지연 후 파이프라인 입력에서 처리
- flush_d(지연 플러시) 적용으로 동기 IMEM 지연과 기능 정합 유지
- load-use hazard는 MEM2 반영을 위해 2-cycle hold 방식으로 스톨 유지
- 포워딩 경로를 MEM2 단계까지 확장하여 동기 메모리 읽기 타이밍과 정합

## 코드 변경 요약
- IMEM/DMEM 동기 읽기 변경
  - [FPGA/Pipeline/260518_Pipeline_5stage/src/rtl/inst_memory.v](FPGA/Pipeline/260518_Pipeline_5stage/src/rtl/inst_memory.v)
  - [FPGA/Pipeline/260518_Pipeline_5stage/src/rtl/data_memory.v](FPGA/Pipeline/260518_Pipeline_5stage/src/rtl/data_memory.v)

- 파이프라인 구조 및 제어 수정
  - IF1_pc/flush_d/reset_nop_pending/stall latch 추가
  - MEM2 pipeline stage 추가
  - load-use 스톨 2-cycle hold 적용
  - forwarding 경로 MEM2까지 확장
  - [FPGA/Pipeline/260518_Pipeline_5stage/src/rtl/rv32i_cpu.v](FPGA/Pipeline/260518_Pipeline_5stage/src/rtl/rv32i_cpu.v)

- Basic 테스트벤치 AUIPC 정합 (RESET_PC 기준 일치)
  - 기본 테스트가 PC=0x1000_0000 가정하므로, 테스트벤치에서 CPU_RESET_PC를 명시
  - [FPGA/Pipeline/260518_Pipeline_5stage/testbench/testbench_Basic/cpu_tb.v](FPGA/Pipeline/260518_Pipeline_5stage/testbench/testbench_Basic/cpu_tb.v)

## 시뮬레이션 확인
- Basic testbench (260518_Pipeline_5stage)
  - AUIPC 포함 전체 테스트 통과 확인
- TFLM testbench (260518_Pipeline_5stage)
  - stable jal x0,0 종료 검출, 정상 완료
  - Cycles: 199,455 / stall=1,548 / flush=22,739

## 비고
- 동기 IMEM/DMEM 모델은 실제 BRAM 인터페이스와 타이밍 정합을 우선으로 설계됨
- 플러시/스톨은 메모리 접근을 막지 않고, 후단에서 무효화/유지하는 방식으로 동작
