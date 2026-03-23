# Pipeline TFLM 디버깅/수정 전체 종합 리포트 (2026-03-24)

## 1. 목적 및 배경

본 문서는 2026-03-24에 수행한 Pipeline TFLM 시뮬레이션 이슈 대응을 처음부터 끝까지 누락 없이 정리한 종합 기록이다.

초기 상황:
- Single_cycle TFLM TB는 정상 완료(약 14.3M cycles)
- Pipeline TFLM TB는 조기 종료(약 11 cycles)
- 이후 조기 종료는 해결되었으나 장기 실행 중 비정상 패턴이 관찰됨

최종 목표:
- Pipeline TB를 실제 TFLM 프로그램 기준으로 안정적으로 완료시키기
- 조기 종료/가짜 halt/메모리 로딩 충돌/포워딩/해저드 계측 이슈를 모두 정리하기
- 원인 분석 지표를 TB에 내장해 재발 시 즉시 판별 가능하도록 만들기

---

## 2. 환경/기준

- Repository: RV32I-Project
- Branch: dev_TFLM
- Simulator: Vivado XSim
- CPU: RV32I 5-stage Pipeline
- TB: Pipeline/testbench_TFLM/RV32I_System_tb.v
- Clock: 20ns period
- Program image: imem.hex, dmem.hex

---

## 3. 문제 전개와 대응 타임라인

### Phase A. 조기 종료(11 cycles) 원인 파악

관찰:
- Pipeline에서 jal x0,0 종료 판정이 너무 이르게 발생

원인:
- 파이프라인 IF-stage에서 wrong-path instruction이 일시적으로 보일 수 있는데,
  TB가 이를 즉시 halt로 오검출

대응:
- halt를 "안정 관측" 기반으로 변경(동일 PC + jal x0,0 연속 관측)

효과:
- 조기 종료 제거

### Phase B. 외부 imem.hex가 내부 테스트 벡터로 덮어써지는 문제

관찰:
- 같은 hex를 써도 Pipeline 실행 경로가 기대와 다르게 시작

원인:
- inst_memory.v 초기화 순서/로직에서 내부 테스트 선택이 외부 로딩을 덮어씀

대응:
- 기본 경로를 외부 imem.hex 로딩으로 고정
- 내부 테스트는 매크로(INTERNAL_TEST_SELECT)로 opt-in

효과:
- 외부 hex 기반 실행 일관성 확보

### Phase C. 장기 실행 계측 도입

관찰:
- 장시간 실행에서 병목 원인이 불명확

대응:
- TB progress 출력 주기화(1M cycles)
- PC change-rate rolling window(1024) 추가
- stuck warning(저변화율 연속 구간) 추가
- datapath에 stall/flush/branch flush/jump flush 카운터 추가

효과:
- 병목을 수치로 분해 가능해짐

### Phase D. 66M 구간 이상 패턴 분석 및 해저드 로직 개선

초기 장기 로그 관찰:
- 특정 구간에서 stall 급증, jump 변화 정체 등 이상 징후

원인 가설 및 수정:
- load-use hazard에서 rs2 비교를 모든 명령에 적용한 것이 문제
- I-type에서는 inst[24:20]이 immediate field인데 rs2로 오인 가능

수정:
- IDEX opcode 파이프라인 전달 추가
- stall 조건에서 rs2 비교를 R-type/S-type에만 적용

효과:
- false stall 폭증 패턴 해소

### Phase E. Hazard 7 실패 원인 및 MEM->ALU forwarding 수정

증상:
- Hazard 7 실패
- 기대값 0x123457a5, 실제값 0x3000022d

원인:
- EX forwarding에서 load 결과 대신 EXMEM_aluout(주소)을 전달

수정:
- EXMEM_MemtoReg==1(load)인 경우 MemRData2RF를 forwarding
- 그 외는 기존대로 ALU 결과/pc+4

효과:
- Hazard 7/8/9 경로 논리 정상화

### Phase F. 25M 이후 패턴의 본질 규명

관찰(계측 강화 후):
- 25M 이후 span 축소, stall/branch delta 0, jump delta 대량 증가
- 이는 stall 병목이 아니라 jump-dominant 좁은 루프 패턴

대응:
- TB에 구간별 window 진단 추가
  - pc_min/pc_max/span
  - same_pc 비율
  - delta(stall/flush/branch/jump)
- 점프 지배 루프 자동 경고 조건 추가

효과:
- "진짜 진행"과 "좁은 루프 반복"을 로그만으로 즉시 구분 가능

### Phase G. halt 판정 최종 보강(MEM-stage 실행 시그니처)

문제:
- IF-stage 관측 기반 halt는 파이프라인 특성상 놓칠 수 있음

수정:
- MEM-stage에서 실제 실행된 jal x0,0 self-loop 시그니처를 halt 조건에 추가
  - EXMEM_jal == 1
  - EXMEM_rd == x0
  - branch_dest == current PC (동치식으로 판별)
- 기존 IF-stage 안정 관측은 fallback으로 유지

효과:
- 무한 run 없이 정상 finish로 떨어짐

---

## 4. 최종 검증 결과(최신 실행)

최종 실행 로그 요약:
- 정상 진행 후 종료
- 종료 메시지: TFLM program finished (stable jal x0,0 detected)
- Cycles: 24,198,834
- Final PC/INST: 0x1000002c / 0x0000006f
- PC change rate(last 1024): 99.90%
- stall=8,000
- flush=3,288,443
  - branch=2,184,293
  - jump=1,104,150
- x10(a0)=32 (0x00000020)
- dmem[0..3]=0xffffffff

해석:
- 이전의 조기 종료/무한 진행 문제는 해결되었고,
- 현재 TB는 파이프라인 특성을 반영해 정상 종료를 안정적으로 감지한다.

---

## 5. 변경 파일 전체 목록 및 핵심 변경점

### RTL

1) Pipeline/src/rtl/inst_memory.v
- 외부 imem.hex 기본 로딩
- 내부 테스트 벡터는 INTERNAL_TEST_SELECT로 opt-in

2) Pipeline/src/rtl/rv32i_cpu.v
- IDEX_opcode 추가 및 파이프라인 전달
- load-use stall 조건 개선
  - rs2 비교를 R/S 타입으로 제한
- MEM->EX forwarding 보정
  - load 시 MemRData2RF 사용
- 디버그 카운터 추가
  - dbg_stall_count
  - dbg_flush_count
  - dbg_flush_branch_count
  - dbg_flush_jump_count

### Testbench

3) Single_cycle/testbench_TFLM/RV32I_System_tb.v
- timeout 확장
- progress 로그 주기 출력 추가

4) Pipeline/testbench_TFLM/RV32I_System_tb.v
- timeout/progress 확장
- PC change-rate window/stuck warning
- 구간 window 계측(pc span/same_pc/counter delta)
- jump-dominant 루프 경고
- MEM-stage halt 시그니처 기반 종료 판정 보강

5) Pipeline/testbench/cpu_tb.v
- XSIM 환경 파형 덤프 분기 정리

### 문서

6) docs/20260324_tflm_tb_pipeline_debug_summary.md
- 중간 단계 분석/수정 요약 문서

7) Pipeline/docs/20260324_mem_alu_forwarding_fix.md
- Hazard 7 원인/수정 상세 문서

8) docs/20260324_pipeline_tflm_full_debug_report.md
- 본 종합 문서(전체 히스토리 통합)

---

## 6. 핵심 교훈 및 재발 방지 포인트

1. 파이프라인 TB 종료 판정은 IF-stage만 보면 오검출/미검출 가능성이 있다.
- 실행 완료 판정은 가능한 한 MEM/WB 기준 실행 시그니처와 결합해야 한다.

2. load-use 해저드 비교 대상은 opcode 기반 사용 레지스터 의미를 반영해야 한다.
- I-type의 inst[24:20]은 즉시값 필드일 수 있다.

3. MEM->EX forwarding은 load 데이터 경로를 반드시 분기 처리해야 한다.
- 주소(EXMEM_aluout)와 데이터(MemRData2RF)를 혼동하면 hazard 테스트가 실패한다.

4. 진행률 지표는 단일 지표(PC change-rate)만으로는 부족하다.
- span/same_pc/counter delta를 함께 봐야 좁은 루프를 정확히 판별할 수 있다.

---

## 7. 현재 상태 요약

- 기능 상태: 정상 종료 복구 완료
- 조기 종료: 해결
- false stall 폭증: 해결
- MEM->ALU forwarding 결함: 해결
- 장기 실행 진단 계측: 적용 완료
- 문서화: 단계별 문서 + 본 통합 문서 완료

---

## 8. 후속 권장 작업

1) 디버그 계측 유지/축소 모드 선택
- 현재는 분석 편의에 최적화된 verbose 로그 상태

2) 회귀 테스트 루틴화
- cpu_tb hazard 세트 + TFLM TB를 CI성 배치로 반복 실행

3) 성능 최적화 별도 트랙
- flush/jump 비율 기반으로 분기/점프 penalty 개선 포인트 도출

---

## 9. 참고: 이번 세션에서 확인된 대표 로그 패턴

정상 구간(1M~24M):
- span 약 2096
- delta(stall) 약 331/332 per 1M
- delta(branch/jump) 안정적 증가

루프 진입 징후(25M 부근):
- span 급격 축소 시작
- jump delta 급증
- stall/branch delta 급감 또는 0

루프 고착 구간(26M 이후 일부 실행):
- span=12
- delta(stall=0, branch=0, jump=250000)
- jump-dominant narrow loop warning 발생

최종 안정 종료 실행:
- 24,198,834 cycles에서 정상 종료 메시지 출력

---

작성일: 2026-03-24
작성 범위: 본 대화에서 수행한 Pipeline TFLM 디버깅/수정/검증 전체
