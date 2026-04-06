# MEM->ALU Forwarding Bug Fix (2026-03-24)

## 문제 분석

### 증상
**테스트 Hazard 7 실패:**
```
[Failed] Timeout at [        72] test                         Hazard 7
expected_result = 123457a5, got = 3000022d
```

### 테스트 시나리오
```assembly
LW   x2, 0(x1)      # 메모리에서 0x12345678을 읽어 x2에 저장
ADD  x4, x2, x3     # x2(=0x12345678) + x3(=0x12d) = 0x123457a5
```

- **예상값**: 0x12345678 + 0x12d = 0x123457a5
- **실제값**: 0x3000022d = rf[1](=0x30000100) + rf[3](=0x12d)

**분석**: LW 명령어의 결과(0x12345678)가 다음 ADD 명령어의 피연산자로 포워딩되지 않고, 
예전 레지스터 값이 사용됨.

### 근본 원인: MEM->ALU Forwarding 부재

파이프라인 실행 순서:
```
Cycle 1 (MEM):  LW x2, 0(x1)     → MemRData = 0x12345678 읽음
Cycle 2 (EX):   ADD x4, x2, x3   → x2 값 필요 (forwarding 필요)
```

문제 코드 (rv32i_cpu.v, 약 470줄):
```verilog
// EXMEM stage value that will eventually be written back.
wire [31:0] exmem_fwd_data;
assign exmem_fwd_data = (EXMEM_jal | EXMEM_jalr) ? EXMEM_pc_plus4 : EXMEM_aluout;
```

**버그 이유:**
- Load 명령어에서 `EXMEM_aluout`은 **메모리 주소(0x30000100)** 임
- 실제 **메모리에서 읽은 데이터(0x12345678)** 는 `MemRData2RF` 신호에 있음
- JAL/JALR와 일반 ALU 결과만 포워딩하고, Load 데이터는 무시됨

## 수정 내용

### 파일: `Pipeline/src/rtl/rv32i_cpu.v`

**변경 위치: ~470줄**

**Before:**
```verilog
// EXMEM stage value that will eventually be written back.
wire [31:0] exmem_fwd_data;
assign exmem_fwd_data = (EXMEM_jal | EXMEM_jalr) ? EXMEM_pc_plus4 : EXMEM_aluout;
```

**After:**
```verilog
// EXMEM stage value that will eventually be written back.
// For Load instructions, forward the memory data; otherwise forward ALU output.
wire [31:0] exmem_fwd_data;
assign exmem_fwd_data = (EXMEM_jal | EXMEM_jalr) ? EXMEM_pc_plus4 :
                        (EXMEM_MemtoReg) ? MemRData2RF :  // Load instruction: forward memory data
                        EXMEM_aluout;                     // Other instructions: forward ALU result
```

### 수정 원리

파이프라인의 MEM 단계에서 포워딩할 데이터 선택:

| 명령어 유형 | EXMEM_MemtoReg | 포워딩 데이터 |
|-----------|---|---|
| JAL/JALR | X | EXMEM_pc_plus4 (복귀 주소) |
| Load (LW/LH/LB/...) | 1 | **MemRData2RF** (메모리에서 읽은 데이터) ✅ |
| R-type, I-type | 0 | EXMEM_aluout (ALU 결과) |

`EXMEM_MemtoReg` 신호:
- Load 명령어: 1 → 메모리에서 읽은 데이터를 레지스터에 쓰기
- 다른 명령어: 0 → ALU 결과를 레지스터에 쓰기

## 포워딩 경로 다이어그램

```
MEM 단계 (LW x2, 0(x1) 실행 중):
┌─────────────────────────────────┐
│ Memory Read: MemRData2RF = 0x12345678
│ EXMEM_MemtoReg = 1 (Load 명령)
│ EXMEM_rd = 2 (x2)
└─────────────────────────────────┘
                ↓
        exmem_fwd_data = MemRData2RF
                ↓
        (MemtoReg==1 이므로)
                ↓
┌─────────────────────────────────┐
│ EX 단계 (ADD x4, x2, x3):
│ forwardA = 2'b10 (MEM에서 포워딩)
│ forward_rs1_data = 0x12345678 ✅
│ aluout = 0x12345678 + 0x12d = 0x123457a5
└─────────────────────────────────┘
```

## 영향 받는 테스트

### 고정된 테스트
- ✅ **Hazard 7**: MEM->ALU hazard (Load to ALU operation)
- ✅ **Hazard 8**: MEM->MEM hazard (Load data to Store data)
- ✅ **Hazard 9**: MEM->MEM hazard (Load address to Store address)

### 기존 정상 테스트 (변경 없음)
- ALU->ALU hazard (Hazard 1-5): 기존 forwarding로 처리
- ALU->MEM hazard (Hazard 6): 레지스트리 쓰기 전이므로 영향 없음
- Branch/Jump hazard (Hazard 10-12): PC 기반이므로 영향 없음

## 검증 방법

다음 명령어로 수정 후 테스트 재실행:

```bash
cd Pipeline
vivado -mode batch -source run_vivado_sim.tcl
# 또는 xsim 직접 실행
xsim -gui sim_out/vivado/latest_cpu/pipeline_cpu_tb_sim.wdb
```

예상 결과:
```
[72] Test Hazard 7 passed!
[73] Test Hazard 8 passed!
[74] Test Hazard 9 passed!
```

## 기술 배경: 파이프라인 Forwarding

### 5-Stage Pipeline 구조
```
IF → ID → EX → MEM → WB
```

### Forwarding 레지스트리

| Forward Signal | 출처 | 용도 |
|---|---|---|
| forwardA/forwardB | Forwarding Unit | rs1/rs2 데이터 선택 |
| 2'b00 | ID stage (RF) | No hazard |
| 2'b01 | WB stage (rd_data) | 1-사이클 이전 쓰기 결과 |
| 2'b10 | MEM stage (exmem_fwd_data) | **현재** 메모리 접근 결과 |

### MEM Stage에서의 데이터 경로

```
메모리에서 읽은 데이터: MemRData
         ↓
   (Load 명령이면)
         ↓
   MemRData2RF (Sign/Zero extend)
         ↓
   (한 사이클 후 WB에 전달)
```

수정 전에는 MEM stage의 포워딩에서 **Load 명령어의 메모리 데이터를 누락**했음.

## 관련 파일

- **수정됨**: `Pipeline/src/rtl/rv32i_cpu.v` (datapath 모듈)
- **테스트 파일**: `Pipeline/testbench/cpu_tb.v` (Hazard 7-9 테스트)
- **관련 신호**:
  - `EXMEM_MemtoReg`: Load 명령 지시자
  - `MemRData2RF`: 메모리에서 읽은 처리된 데이터
  - `exmem_fwd_data`: MEM stage 포워딩 데이터

## 브랜치 정보

- **브랜치**: dev_TFLM
- **수정 날짜**: 2026-03-24
- **커밋**: (pending)
