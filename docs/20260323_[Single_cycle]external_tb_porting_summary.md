# 외부 RV32I 테스트벤치 이식 수정사항 총정리 (2026-03-23)

## 1) 작업 목적
외부에서 가져온 `cpu_tb.v` 기반 테스트벤치를 현재 `Single_cycle` 구조에 바로 연결/실행 가능하도록 인터페이스와 계층 경로를 정합시켰다.

---

## 2) 변경 파일 목록 (누락 없이)

### 코드/테스트벤치 수정 파일
1. `Single_cycle/testbench/cpu_tb.v`
2. `Single_cycle/testbench/mem_path.vh`
3. `Single_cycle/src/rtl/basic_modules.v`
4. `Single_cycle/src/rtl/data_memory.v`
5. `Single_cycle/src/rtl/inst_memory.v`
6. `Single_cycle/src/rtl/rv32i_cpu.v`

### 시뮬레이션 산출물(생성 파일)
1. `Single_cycle/sim_external_tb`
2. `Single_cycle/cpu_tb.fst`

---

## 3) 파일별 상세 수정 내용

### A. `Single_cycle/testbench/cpu_tb.v`
- 기존 외부 TB는 보드 탑 포트(`BUTTON`, `SW`, `HEX*`, `UART*`)를 가정하고 인스턴스화하고 있었음.
- 현재 프로젝트의 `RV32I_System` 포트는 `CLOCK_50`, `reset`만 사용하므로 DUT 연결을 단순화함.

변경 전
- 파라미터 포함 인스턴스 (`RESET_PC`, `MIF_HEX`) + 보드 I/O 연결

변경 후
- `RV32I_System CPU (.CLOCK_50(clk), .reset(rst));`

효과
- 컴파일 시 포트 불일치 오류 제거.

추가 수정(기능 디버깅 단계)
- reset 시퀀스를 `RV32I_System`의 top-level active-low 정책에 맞게 정정.
	- reset assert: `rst = 0`
	- reset release: `rst = 1`
- `reset_cpu` task 및 initial reset 구간을 동일 규칙으로 통일.

추가 효과
- SLT timeout 원인 중 하나였던 reset 극성 불일치 해소.

---

### B. `Single_cycle/testbench/mem_path.vh`
외부 TB의 계층 경로 매크로를 현재 실제 인스턴스명에 맞게 변경.

변경 전
- `RF_PATH   CPU.icpu.i_datapath.rf`
- `DMEM_PATH CPU.imem`
- `IMEM_PATH CPU.imem`

변경 후
- `RF_PATH   CPU.icpu.i_datapath.i_regfile`
- `DMEM_PATH CPU.iDMem`
- `IMEM_PATH CPU.iIMem`

효과
- TB의 `RF_PATH.mem[...]`, `DMEM_PATH.mem[...]`, `IMEM_PATH.mem[...]` 접근이 실제 계층과 정합.

---

### C. `Single_cycle/src/rtl/basic_modules.v`
#### C-1) `regfile` 구조 변경 (외부 TB 호환)
외부 TB가 레지스터 파일을 배열(`mem`)과 `DEPTH`로 직접 접근하므로, 기존 개별 레지스터(`x1`~`x31`) 구조를 배열 기반으로 전환.

주요 변경
- `parameter DEPTH = 32` 추가
- `reg [31:0] mem [0:DEPTH-1]` 추가
- 초기화 루프 추가
- 쓰기: `if (we && (rd != 5'd0)) mem[rd] <= rd_data;`
- 읽기: `rs1_data`, `rs2_data`를 `mem` 기반으로 조합 논리화

#### C-2) 디버그 호환 alias 유지
- 기존 파형/디버그 호환을 위해 `wire [31:0] x1 = mem[1]` ... `x31 = mem[31]` 유지.

#### C-3) 중복 모듈 선언 제거
- 파일 내 `regfile/alu/adder/mux2` 블록이 2번 반복 선언되어 있던 부분 정리.
- 컴파일 시 중복 module 선언 오류 제거.

효과
- 외부 TB의 레지스터 직접 접근 문법 지원.
- 이전 디버그 방식도 유지.

---

### D. `Single_cycle/src/rtl/data_memory.v`
외부 TB 호환을 위해 데이터 메모리 인터페이스를 배열명/깊이 파라미터 기준으로 정리.

주요 변경
- 모듈 파라미터화: `parameter DEPTH = 16384`
- 배열명 변경: `dmem` -> `mem`
- 초기화/`$readmemh`/read/write 로직의 배열 참조를 `mem`으로 통일

효과
- 외부 TB의 `DMEM_PATH.mem[...]` 접근과 정합.

---

### E. `Single_cycle/src/rtl/inst_memory.v`
외부 TB 호환을 위해 instruction memory도 동일 패턴 적용.

주요 변경
- 모듈 파라미터화: `parameter DEPTH = 16384`
- 배열명 변경: `imem` -> `mem`
- 초기화/`$readmemh`/내장 테스트 로딩/fetch read 전부 `mem`으로 통일

효과
- 외부 TB의 `IMEM_PATH.mem[...]` 접근과 정합.

---

### F. `Single_cycle/src/rtl/rv32i_cpu.v`
외부 TB 기대 동작(PC base 0x1000_0000)과 맞추기 위해 reset 시 PC 초기값을 변경.

변경 전
- `if (reset) pc <= 32'b0;`

변경 후
- `if (reset) pc <= 32'h1000_0000;`

효과
- 외부 TB가 가정하는 명령어 주소 공간과 정합.

추가 수정(기능 디버깅 단계)
1. ALUcontrol 매핑 교정 (SLT/SLTU, SLTI/SLTIU)
- 기존 매핑이 뒤바뀌어 signed/unsigned 비교 결과가 바뀌는 문제 수정.
- 수정 후 매핑:
	- `slt`, `slti` -> `5'b11000`
	- `sltu`, `sltiu` -> `5'b10111`

2. Store write-data lane 정렬 로직 추가
- 기존: `MemWData = rs2_data` 고정 전달.
- 문제: `SB/SH`에서 `ByteEnable`만 맞고 `write_data`가 lane에 맞게 이동되지 않아 SH3 실패 유발.
- 수정 후:
	- `SB`: `rs2_data << (8  * aluout[1:0])`
	- `SH`: `rs2_data << (16 * aluout[1])`
	- `SW`: `rs2_data` 유지

추가 효과
- `R-Type SLT` timeout 해결.
- `S-Type SH 3` timeout 해결.
- partial store 동작(SB/SH) 정합성 확보.

---

## 4) 검증 결과

### 컴파일 검증
실행 명령
- `iverilog -g2012 -I testbench -o sim_external_tb testbench/cpu_tb.v src/rtl/*.v`

결과
- 컴파일 성공 (포트/경로/중복 모듈 문제 해결됨).

### 실행 검증
실행 명령
- `iverilog -g2012 -DIVERILOG -I testbench -o sim_external_tb testbench/cpu_tb.v src/rtl/*.v`
- `vvp sim_external_tb`

관찰 결과
1. `imem.hex`, `dmem.hex` 파일 open 경고 발생
- 외부 TB가 메모리를 직접 주입하므로 치명적이지 않음.

2. 이식 직후 동작 확인
- 초반 R-Type 테스트 일부 통과 로그 출력됨.

3. 1차 기능 실패 지점
- `R-Type SLT`에서 timeout 실패 확인.

4. SLT 디버깅 후 재검증
- ALUcontrol 매핑 교정 + reset 극성 정합 적용 후 `SLT` 관련 실패 해소 확인.

5. 2차 기능 실패 지점
- `S-Type SH 3` timeout 발생.

6. SH3 디버깅 후 최종 재검증
- store lane 정렬 로직 반영 후 `SH 3` 포함 store 계열 테스트 정상화 확인.

7. 최종 결과
- 테스트 1~78 전부 pass.
- 최종 로그: `All tests passed!`

---

## 5) 현재 상태 요약
1. 외부 TB를 현재 프로젝트 구조에 붙여 컴파일/실행 가능한 상태로 이식 완료.
2. 계층 접근 매크로 및 메모리/레지스터 직접 접근 호환 완료.
3. 추가 기능 버그(SLT/SLTI·SLTU 매핑, reset 극성, SH3 lane 정렬)까지 반영 완료.
4. 외부 TB 기준 전체 테스트(1~78) 통과 상태.

---

## 6) 참고(산출물 파일)
시뮬레이션 실행으로 아래 파일이 생성됨.
- `Single_cycle/sim_external_tb` (실행 바이너리)
- `Single_cycle/cpu_tb.fst` (파형)

필요 시 버전 관리에서 제외하거나 정리 가능.

---

## 7) 최종 변경 포인트 체크리스트
1. TB DUT 포트 정합 완료 (`CLOCK_50/reset`).
2. TB 계층 경로 매크로 정합 완료 (`RF/DMEM/IMEM`).
3. regfile를 `mem[]`+`DEPTH` 기반으로 변경 및 alias 유지.
4. inst/data memory를 `mem[]`+`DEPTH` 기반으로 정리.
5. `basic_modules.v` 중복 모듈 선언 제거.
6. PC reset 초기값을 `0x1000_0000`으로 정합.
7. ALUcontrol의 SLT/SLTU 및 SLTI/SLTIU 매핑 교정.
8. TB reset 시퀀스를 active-low 정책에 맞게 정합.
9. SB/SH store write-data lane 정렬 로직 추가.
10. 외부 TB 최종 78/78 pass 확인.
