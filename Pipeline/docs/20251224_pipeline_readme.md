# RV32I 5-Stage Pipeline CPU Implementation

## 개요
싱글 사이클 RV32I CPU를 5단계 파이프라인 구조로 변환하였습니다.

## 파이프라인 구조

### 5단계 파이프라인
1. **IF (Instruction Fetch)**: 명령어 인출
2. **ID (Instruction Decode)**: 명령어 디코드 및 레지스터 읽기
3. **EX (Execute)**: ALU 연산 수행
4. **MEM (Memory)**: 메모리 접근 (Load/Store)
5. **WB (Write Back)**: 레지스터 쓰기

### 파이프라인 레지스터

#### IF/ID 레지스터
- `IFID_pc`: IF 단계의 PC 값
- `IFID_inst`: 인출된 명령어

#### ID/EX 레지스터
- `IDEX_pc`: PC 값
- `IDEX_rs1_data`, `IDEX_rs2_data`: 레지스터 데이터
- `IDEX_se_imm_itype`, `IDEX_se_imm_stype`: Immediate 값
- `IDEX_se_br_imm`, `IDEX_se_jal_imm`: Branch/JAL immediate
- `IDEX_auipc_lui_imm`: AUIPC/LUI immediate
- `IDEX_rs1`, `IDEX_rs2`, `IDEX_rd`: 레지스터 주소
- `IDEX_funct3`: Function3 필드
- 제어 신호들: `IDEX_auipc`, `IDEX_lui`, `IDEX_RegWrite`, etc.

#### EX/MEM 레지스터
- `EXMEM_pc_plus4`: PC+4 값 (JAL/JALR용)
- `EXMEM_aluout`: ALU 연산 결과
- `EXMEM_rs2_data`: Store 명령어용 데이터
- `EXMEM_branch_dest`: Branch 목적지 주소
- `EXMEM_rd`: 목적지 레지스터
- `EXMEM_funct3`: Function3 (메모리 접근용)
- 플래그: `EXMEM_Zflag`, `EXMEM_Nflag`, `EXMEM_Cflag`, `EXMEM_Vflag`
- 제어 신호들

#### MEM/WB 레지스터
- `MEMWB_aluout`: ALU 결과
- `MEMWB_MemRData2RF`: 메모리에서 읽은 데이터
- `MEMWB_pc_plus4`: PC+4 값
- `MEMWB_rd`: 목적지 레지스터
- 제어 신호들

## 해저드 처리

### 1. 데이터 해저드 (Data Hazard)
**Forwarding Unit**를 통해 해결:
- EX/MEM → EX 단계로 forwarding
- MEM/WB → EX 단계로 forwarding

#### Forward 경로
- `forwardA`: rs1에 대한 forwarding 제어
  - `2'b00`: 파이프라인 레지스터에서 데이터 사용
  - `2'b01`: WB 단계에서 forwarding
  - `2'b10`: MEM 단계에서 forwarding

- `forwardB`: rs2에 대한 forwarding 제어 (동일한 로직)

#### Load-Use Hazard
**Hazard Detection Unit**를 통해 해결:
- Load 명령어 다음에 바로 사용하는 경우 감지
- 1 사이클 stall 삽입 (bubble)
- `stall` 신호가 활성화되면:
  - PC 업데이트 중지
  - IF/ID 레지스터 유지
  - ID/EX 레지스터에 NOP 삽입

### 2. 제어 해저드 (Control Hazard)
Branch와 Jump 명령어 처리:

#### Branch 명령어
- MEM 단계에서 branch taken 여부 결정
- Branch taken 시 IF/ID, ID/EX, EX/MEM 단계의 명령어 flush
- 3 사이클 penalty
- `flush` 신호 활성화

#### Jump 명령어 (JAL, JALR)
- MEM 단계에서 jump 수행
- 3 사이클 penalty (IF/ID, ID/EX, EX/MEM 단계 flush)

#### Flush 메커니즘
```verilog
assign flush = btaken | EXMEM_jal | EXMEM_jalr;
```
- `flush` 신호가 활성화되면 IF/ID, ID/EX, EX/MEM 레지스터를 NOP으로 초기화
- Branch taken 시점: MEM 단계
  - 이미 IF, ID, EX 단계에 명령어가 진행되어 있음
  - 세 단계를 flush하여 잘못된 명령어 실행 방지
- Jump와 Branch 모두 동일한 방식으로 처리

## 주요 수정 사항

### 1. PC 업데이트 로직
```verilog
assign next_pc = (EXMEM_jal) ? jal_dest :
                 (EXMEM_jalr) ? jalr_dest :
                 (btaken) ? EXMEM_branch_dest :
                 pc_plus4;

always @(posedge clk, posedge reset)
begin
  if (reset)
    pc <= 32'b0;
  else if (~stall)
    pc <= next_pc;
end
```

### 2. 레지스터 파일
- Write: WB 단계에서 수행
- Read: ID 단계에서 수행
- Write와 Read가 같은 사이클에 발생 가능 (내부 forwarding)

### 3. 메모리 인터페이스
- Instruction Memory: IF 단계에서 접근
- Data Memory: MEM 단계에서 접근
- ByteEnable과 데이터 처리 로직은 MEM 단계 신호 사용

## 성능 특성

### 이론적 성능
- CPI (Cycles Per Instruction): 이상적으로 1
- 실제 CPI: 약 1.2~1.5 (해저드로 인한 stall/flush 포함)

### 해저드 Penalty
- Load-use hazard: 1 cycle stall
- Branch taken: 2 cycle flush
- Jump (JAL/JALR): 2 cycle flush

### 처리량 향상
- 싱글 사이클 대비 최대 5배 처리량 향상 (이상적 케이스)
- 실제로는 3~4배 향상 예상

## 테스트

### 시뮬레이션 실행
```bash
# Verilog 시뮬레이터 사용 (예: iverilog)
iverilog -o rv32i_pipeline RV32I_System.v rv32i_cpu.v basic_modules.v \
         inst_memory.v data_memory.v RV32I_System_tb.v
         
vvp rv32i_pipeline
```

### 테스트 케이스
`inst_memory.v` 파일에서 `TEST_SELECT` 매크로 변경:
1. I-Type Arithmetic & Logic
2. R-Type Arithmetic & Logic
3. Shift Operations
4. Load & Store
5. Branch Instructions
6. Jump Instructions
7. Upper Immediate (LUI, AUIPC)

### 디버깅
테스트벤치에서 각 사이클마다 PC와 명령어를 출력:
```verilog
$display("Time=%0t | PC=%h | Inst=%h", $time, pc, inst);
```

## 파일 구조
- `rv32i_cpu.v`: 파이프라인 CPU 메인 로직
- `RV32I_System.v`: 시스템 통합 (CPU + 메모리)
- `basic_modules.v`: 레지스터 파일, ALU 등
- `inst_memory.v`: 명령어 메모리
- `data_memory.v`: 데이터 메모리
- `RV32I_System_tb.v`: 테스트벤치

## 추후 개선 사항

### 1. Branch Prediction
- Static prediction (always taken/not taken)
- Dynamic prediction (1-bit, 2-bit predictor)
- Branch penalty 감소

### 2. Forwarding 확장
- MEM → MEM forwarding (Store 후 바로 Load)
- 더 복잡한 data dependency 처리

### 3. 성능 최적화
- Critical path 최적화
- 클럭 주파수 향상

### 4. 디버깅 기능 추가
- Performance counter
- Hazard statistics
- Pipeline visualization

## 참고 문헌
- RISC-V ISA Specification
- Computer Organization and Design (Patterson & Hennessy)
- Digital Design and Computer Architecture (Harris & Harris)
