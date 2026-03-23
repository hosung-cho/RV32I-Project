# 2026-03-24 TFLM TB 및 Pipeline 디버깅 변경 요약

## 1) 작업 배경
- Single_cycle에서는 동일한 TFLM `imem.hex`가 완료되는데, Pipeline에서는 조기 종료 또는 과도한 실행 시간이 관측됨.
- Vivado GUI 수동 실행 환경에서 TB/RTL 동작을 점검하고, 장시간 실행 원인 추적을 위한 계측을 추가함.

## 2) 주요 원인 분석
- 초기 Pipeline 조기 종료 원인:
  - Pipeline TB가 IF 단계의 `inst`를 보고 `jal x0,0` 종료를 판정하여 wrong-path fetch를 오탐할 가능성이 있었음.
- 내부 테스트 프로그램 덮어쓰기 이슈:
  - Pipeline `inst_memory.v`가 내부 테스트 벡터를 기본 활성화하던 구조여서 외부 `imem.hex` 실행과 충돌 가능성이 있었음.
- 장시간 실행 원인(계측 결과):
  - `stall`보다 `flush(branch/jump)` 비율이 높아 제어 해저드 비용이 큰 상태.

## 3) 변경 파일 및 상세

### A. Single_cycle TB 개선
파일: `Single_cycle/testbench_TFLM/RV32I_System_tb.v`
- 타임아웃 확장:
  - `TIMEOUT_CYCLES`를 장시간 TFLM 실행을 고려한 큰 값으로 상향.
  - `TIMEOUT_CYCLES == 0`이면 타임아웃 비활성 가능하도록 조건 추가.
- 진행 로그 추가:
  - `PROGRESS_CYCLES` 주기마다 `cycles/PC/INST` 출력.
- 목적:
  - 장시간 시뮬레이션에서 정상 진행 여부를 빠르게 확인.

### B. Pipeline TB 기본 개선
파일: `Pipeline/testbench_TFLM/RV32I_System_tb.v`
- Single_cycle과 동일한 장시간 실행 친화 설정 반영:
  - 큰 타임아웃 값, 진행 로그, 타임아웃 비활성 옵션.
- 조기 종료 오탐 방지:
  - `jal x0,0`을 같은 PC에서 연속 관측할 때만 종료하도록 `stable halt` 판정 추가.

### C. Pipeline TB 고급 계측 추가
파일: `Pipeline/testbench_TFLM/RV32I_System_tb.v`
- 최근 N개(기본 1024) 구간의 PC 변화율 계측 추가.
  - `PC_RATE_WINDOW`, `PC_STUCK_RATE_X100`, `STUCK_WARN_STREAK` 파라미터 도입.
- 진행 로그에 병목 통계 출력 추가:
  - `pc_change_rate`, `stall`, `flush`, `flush(branch)`, `flush(jump)` 출력.
- 자동 경고:
  - PC 변화율이 임계치 이하가 연속 발생하면 `[TB][WARN]` 출력.

### D. Pipeline IMEM 로딩 정책 정리
파일: `Pipeline/src/rtl/inst_memory.v`
- 외부 `imem.hex`를 기본 로드하도록 변경.
- 내부 테스트 벡터는 선택적 활성화로 변경:
  - `INTERNAL_TEST_SELECT`가 정의된 경우에만 `TEST_SELECT` case 적용.
- 로그 개선:
  - `Instruction HEX load completed` 메시지 추가.

### E. Pipeline CPU 병목 카운터(임시 계측)
파일: `Pipeline/src/rtl/rv32i_cpu.v`
- datapath 내부 계측 카운터 추가:
  - `dbg_stall_count`
  - `dbg_flush_count`
  - `dbg_flush_branch_count`
  - `dbg_flush_jump_count`
- 리셋 시 0 초기화, 실행 중 누적.
- TB에서 계층 참조로 읽어 병목 통계 출력에 활용.

## 4) 관측 결과 요약
- 진행 로그 기준 `pc_change_rate`는 99% 내외로 유지되어 완전한 deadlock 가능성은 낮음.
- 다만 누적 통계에서 `flush` 비율이 `stall` 대비 매우 높아, 성능 저하의 주원인이 제어 해저드임을 확인.
  - 예시(대화 중 관측):
    - 6,000,000 cycles 시점
    - `stall=11,810` (약 0.20%)
    - `flush=815,146` (약 13.59%)
    - `branch=543,554`, `jump=271,592`

## 5) 현재 기대 효과
- 외부 TFLM HEX 기반 실행 신뢰성 향상.
- Pipeline 조기 종료 오탐 방지.
- 장시간 실행 상황에서 진행/정체 여부 자동 가시화.
- flush/stall 병목 분해 데이터 확보로 후속 최적화 포인트 명확화.

## 6) 후속 권장 작업
- 구간 델타(최근 1M cycles 단위) 성능 통계 추가로 시점별 병목 변화 추적.
- branch/jump 처리 단계 단축(가능 시 MEM -> EX) 또는 간단한 분기 예측 실험.
- 최종 성능 비교표 정리:
  - Single_cycle vs Pipeline
  - total cycles, sim time, flush/stall ratio.
