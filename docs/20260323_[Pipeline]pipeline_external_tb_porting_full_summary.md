# Pipeline 반영 종합 정리 (2026-03-23)

## 1. 작업 목적
- Single_cycle에서 이미 검증된 외부 RV32I 테스트벤치 이식 및 핵심 버그 수정 사항을 Pipeline 구현에도 동일하게 반영
- 목표: 외부 cpu_tb 기준 전체 테스트 통과

## 2. 최종 결과 요약
- 외부 테스트벤치 기반 테스트 결과: 78 / 78 PASS
- 마지막으로 남았던 Hazard 11 실패 원인까지 수정 완료
- Pipeline에서 외부 TB가 요구하는 메모리/레지스터 계층 접근 형식(mem 배열, DEPTH 파라미터) 정합 완료

## 3. 변경 파일 전체 목록

### 3.1 RTL 변경
- Pipeline/src/rtl/rv32i_cpu.v
- Pipeline/src/rtl/basic_modules.v
- Pipeline/src/rtl/data_memory.v
- Pipeline/src/rtl/inst_memory.v
- Pipeline/src/rtl/RV32I_System.v

### 3.2 테스트벤치/헤더 추가 및 정리
- 추가: Pipeline/testbench/cpu_tb.v
- 추가: Pipeline/testbench/mem_path.vh
- 추가: Pipeline/testbench/opcode.vh
- 삭제: Pipeline/testbench/RV32I_System_tb.v
- 보정: Pipeline/testbench_Ho/RV32I_System_tb.v

## 4. 세부 변경 사항

### 4.1 rv32i_cpu.v

#### 4.1.1 ALU decode 매핑 교정 (SLT/SLTU)
- R-type
  - funct3=010 -> ALUcontrol 11000 (SLT)
  - funct3=011 -> ALUcontrol 10111 (SLTU)
- I-type
  - funct3=010 -> ALUcontrol 11000 (SLTI)
  - funct3=011 -> ALUcontrol 10111 (SLTIU)

의미:
- SLT 계열과 SLTU 계열 결과 뒤바뀜 문제 해소

#### 4.1.2 reset 극성 및 PC 초기값 정합
- 내부 datapath reset 조건을 if (reset) 기준으로 통일
- PC reset 값을 0x1000_0000으로 설정
- IF/ID, ID/EX, EX/MEM, MEM/WB 레지스터 reset 처리 정합

배경:
- 시스템 탑에서 CPU로 reset을 반전하여 전달하는 구조와 일치시키기 위함

#### 4.1.3 Store 데이터 lane 정렬 보강
- MemWData 생성 시 SB/SH/SW에 맞춰 데이터 시프트 반영
  - SB: rs2_data << (8 * addr[1:0])
  - SH: rs2_data << (16 * addr[1])
  - SW: rs2_data 그대로

의미:
- ByteEnable만으로는 해결되지 않는 partial store 데이터 위치 오류 해소

#### 4.1.4 JAL/JALR 포워딩 정합 (Hazard 11 핵심)
- EX 단계 포워딩 데이터에 exmem_fwd_data 경로 도입
- JAL/JALR일 때 EXMEM_aluout 대신 EXMEM_pc_plus4를 포워딩

문제 재현 시 증상:
- Hazard 11 expected 100000cd / got 0000012d
- 상위 주소 비트가 반영되지 않는 형태로 실패

#### 4.1.5 JAL 타깃 계산 정합 (Hazard 11 추가 원인)
- branch_dest 계산 시 분기/점프 즉시값 선택 분리
  - JAL인 경우 se_jal_imm 사용
  - 그 외 branch는 se_br_imm 사용

의미:
- JAL이 branch immediate 경로를 타며 잘못된 점프 주소로 이동하던 문제 해소

### 4.2 basic_modules.v (regfile)
- 기존 x1~x31 개별 레지스터 구조를 mem 배열 기반으로 전환
- DEPTH 파라미터 추가 (기본 32)
- mem 초기화 루프 추가
- 외부/기존 TB 호환을 위해 x1~x31 alias wire 유지
- 기존 내부 same-cycle write/read 포워딩 로직 유지

의미:
- 외부 TB의 계층 접근 방식(RF_PATH.mem, DEPTH)에 맞춤
- 기존 디버깅 가시성(x10 등)도 유지

### 4.3 data_memory.v
- 모듈 파라미터 DEPTH 도입 (기본 16384)
- address 폭 11비트 -> 14비트
- dmem 배열명 -> mem 배열명
- 초기화 루프를 DEPTH 기반으로 변경
- read/write 경로 모두 mem 기준으로 정합

의미:
- 외부 TB의 DMEM_PATH.mem 접근 및 대용량 주소 범위 요구 충족

### 4.4 inst_memory.v
- 모듈 파라미터 DEPTH 도입 (기본 16384)
- address 폭 11비트 -> 14비트
- imem 배열명 -> mem 배열명
- 초기화 루프를 DEPTH 기반으로 변경
- 내부 테스트 벡터 로딩 코드 전체를 mem 배열 기준으로 정합

의미:
- 외부 TB의 IMEM_PATH.mem 접근 요구 충족

### 4.5 RV32I_System.v
- IMEM/DMEM 주소 슬라이스
  - [12:2] -> [15:2]

의미:
- 확장된 14비트 word address에 맞춰 시스템 레벨 주소 매핑 정합

### 4.6 testbench_Ho/RV32I_System_tb.v
- reset 시퀀스 active-low top 입력 기준으로 수정
- cycle count 조건도 reset=1(정상 동작 구간) 기준으로 조정
- 메모리 경로 출력 dmem -> mem으로 변경

의미:
- 기존 내부 TB도 현재 reset/메모리 구조와 맞게 동작

### 4.7 외부 TB 세트 추가
- cpu_tb.v
- mem_path.vh
- opcode.vh

의미:
- Single_cycle에서 사용하던 외부 기능/해저드 테스트를 Pipeline에서도 동일 기준으로 수행 가능

## 5. 디버깅 타임라인 요약

### 5.1 초기 상태
- 외부 TB 이식과 주요 수정 후에도 대부분 통과
- 단일 실패: Test 77 Hazard 11 timeout
  - expected 100000cd
  - got 0000012d

### 5.2 원인 1
- EX 포워딩이 EXMEM_aluout 고정 사용
- JAL/JALR writeback 값(PC+4)이 아닌 값이 전달됨

조치:
- exmem_fwd_data 도입
- JAL/JALR이면 EXMEM_pc_plus4 포워딩

### 5.3 원인 2
- JAL target 계산에서 branch immediate 사용

조치:
- branch_dest 계산식에서 JAL일 때 se_jal_imm 선택

### 5.4 결과
- Hazard 11 해결
- Hazard 12 포함 전체 통과 달성

## 6. 최종 검증 기록

### 6.1 실행 명령
- 컴파일
  - iverilog -g2012 -DIVERILOG -I testbench -o sim_external_tb testbench/cpu_tb.v src/rtl/*.v
- 실행
  - vvp sim_external_tb

### 6.2 결과 요약
- Test 1 ~ 78 전부 PASS
- 마지막 출력: All tests passed!

## 7. 정합 관점 체크리스트
- SLT/SLTU 및 SLTI/SLTIU decode 정합: 완료
- top active-low reset 과 내부 reset 해석 정합: 완료
- SB/SH write data lane 정렬 + ByteEnable 동시 정합: 완료
- JAL/JALR writeback 포워딩 값 정합(PC+4): 완료
- JAL target immediate 경로 정합(se_jal_imm): 완료
- 외부 TB 계층 접근 요구(mem, DEPTH) 정합: 완료
- 외부 TB 78개 전체 회귀 통과: 완료

## 8. 참고
- 본 문서는 Pipeline에 반영된 외부 TB 이식 + SLT/SH + hazard 수정 전체를 한 번에 추적할 수 있도록 작성한 단일 종합 리포트이다.
- 이후 추가 변경 시, 본 문서 하단에 날짜별 증분 섹션을 추가하는 방식으로 이력을 유지하는 것을 권장한다.
