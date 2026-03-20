# RV32I Pipeline CPU Test Guide

## 테스트 실행 방법

### 1. 테스트 선택
`inst_memory.v` 파일의 `TEST_SELECT` 값을 변경하여 테스트를 선택합니다:

```verilog
`define TEST_SELECT 1  // 1~8 중 선택
```

### 2. 시뮬레이션 실행
```bash
# iverilog 사용 예시
iverilog -o pipeline_test RV32I_System.v rv32i_cpu.v basic_modules.v \
         inst_memory.v data_memory.v RV32I_System_tb.v

vvp pipeline_test
```

## 각 테스트별 설명 및 예상 결과

---

## Test 1: Basic Pipeline Test - No Hazards

### 목적
- 기본 파이프라인 동작 확인
- Hazard가 없는 명령어 실행
- 모든 레지스터가 독립적으로 동작

### 테스트 시나리오
```assembly
addi  x10, x0, 10      # x10 = 10 (x0 읽기)
addi  x11, x0, 20      # x11 = 20 (x0 읽기, x10과 독립)
addi  x12, x0, 30      # x12 = 30 (x0 읽기, x10, x11과 독립)
addi  x13, x0, 40      # x13 = 40 (x0 읽기, 모두 독립)
addi  x14, x0, 50      # x14 = 50 (x0 읽기, 모두 독립)
sw    x10, 0(x0)       # mem[0] = 10 (x10 읽기만, 쓰기 없음)
sw    x11, 4(x0)       # mem[4] = 20 (x11 읽기만)
sw    x12, 8(x0)       # mem[8] = 30 (x12 읽기만)
sw    x13, 12(x0)      # mem[12] = 40 (x13 읽기만)
sw    x14, 16(x0)      # mem[16] = 50 (x14 읽기만)
jal   x0, 0            # halt
```

### 예상 결과
```
Register Values:
  x10 = 10 (0x0000000A)
  x11 = 20 (0x00000014)
  x12 = 30 (0x0000001E)
  x13 = 40 (0x00000028)
  x14 = 50 (0x00000032)

Memory Values:
  mem[0] = 10 (0x0000000A)
  mem[4] = 20 (0x00000014)
  mem[8] = 30 (0x0000001E)
  mem[12] = 40 (0x00000028)
  mem[16] = 50 (0x00000032)

Cycle Count:
  - 11 instructions
  - Expected: ~15 cycles (4 for pipeline fill + 11)
  - CPI ≈ 1.36 (효율적)
```

### 검증 포인트
- ✓ 파이프라인이 정상적으로 동작하는가?
- ✓ 모든 레지스터가 독립적으로 동작하는가?
- ✓ Store 명령어가 정확하게 메모리에 쓰는가?
- ✓ Hazard가 발생하지 않는가?
- ✓ Forwarding이나 stall이 필요없는가?

---

## Test 2: Pipeline Efficiency Test - Independent Instructions

### 목적
- 모든 명령어가 독립적인 경우 파이프라인 효율 확인
- 최대 처리량 확인 (CPI ≈ 1)
- Stall과 Flush가 발생하지 않음을 확인

### 테스트 시나리오
```assembly
# 모든 명령어가 독립적 (no dependency)
addi  x10, x0, 1       # x10 = 1
addi  x11, x0, 2       # x11 = 2
addi  x12, x0, 3       # x12 = 3
addi  x13, x0, 4       # x13 = 4
addi  x14, x0, 5       # x14 = 5
addi  x15, x0, 6       # x15 = 6
addi  x16, x0, 7       # x16 = 7
addi  x17, x0, 8       # x17 = 8
addi  x18, x0, 9       # x18 = 9
addi  x19, x0, 10      # x19 = 10
sw    x10, 0(x0)       # mem[0] = 1
sw    x11, 4(x0)       # mem[4] = 2
sw    x12, 8(x0)       # mem[8] = 3
sw    x13, 12(x0)      # mem[12] = 4
sw    x14, 16(x0)      # mem[16] = 5
sw    x15, 20(x0)      # mem[20] = 6
sw    x16, 24(x0)      # mem[24] = 7
sw    x17, 28(x0)      # mem[28] = 8
sw    x18, 32(x0)      # mem[32] = 9
sw    x19, 36(x0)      # mem[36] = 10
jal   x0, 0            # halt
```

### 예상 결과
```
Memory Values:
  mem[0] = 1 (0x00000001)
  mem[4] = 2 (0x00000002)
  mem[8] = 3 (0x00000003)
  mem[12] = 4 (0x00000004)
  mem[16] = 5 (0x00000005)
  mem[20] = 6 (0x00000006)
  mem[24] = 7 (0x00000007)
  mem[28] = 8 (0x00000008)
  mem[32] = 9 (0x00000009)
  mem[36] = 10 (0x0000000A)

Cycle Count:
  - 21 instructions
  - Expected: ~25 cycles (4 for pipeline fill + 21)
  - CPI ≈ 1.19 (매우 효율적)
```

### 검증 포인트
- ✓ Stall이 발생하지 않는가?
- ✓ Flush가 발생하지 않는가?
- ✓ 모든 명령어가 순차 실행되는가?
- ✓ CPI가 1에 가까운가?

---

## Test 3: Data Hazard - Forwarding Test

### 목적
- EX-EX forwarding 동작 확인
- MEM-EX forwarding 동작 확인
- 연속적인 데이터 의존성 처리 확인

### 테스트 시나리오
```assembly
addi  x10, x0, 10      # x10 = 10
addi  x11, x10, 10     # x11 = 20 (x10 필요 - EX-EX forward)
addi  x12, x11, 10     # x12 = 30 (x11 필요 - EX-EX forward)
addi  x13, x12, 10     # x13 = 40 (x12 필요 - EX-EX forward)
add   x14, x12, x11    # x14 = 50 (두 operand 모두 forward)
...
add   x14, x12, x13    # x14 = 70 (MEM-EX forward)
sw    x14, 0(x0)       # mem[0] = 70
add   x15, x13, x11    # x15 = 60
add   x15, x15, x10    # x15 = 70 (EX-EX forward)
addi  x15, x15, 30     # x15 = 100 (EX-EX forward)
sw    x15, 4(x0)       # mem[4] = 100
```

### 예상 결과
```
Register Values:
  x10 = 10 (0x0000000A)
  x11 = 20 (0x00000014)
  x12 = 30 (0x0000001E)
  x13 = 40 (0x00000028)
  x14 = 70 (0x00000046)
  x15 = 100 (0x00000064)

Memory Values:
  mem[0] = 70 (0x00000046)
  mem[4] = 100 (0x00000064)
```

### 검증 포인트
- ✓ Forwarding unit가 올바르게 동작하는가?
- ✓ Stall 없이 연속 실행되는가?
- ✓ 최종 메모리 값이 정확한가?

---

## Test 4: Load-Use Hazard - Stall Test

### 목적
- Load 명령어 후 바로 사용 시 stall 동작 확인
- Hazard detection unit 동작 확인
- 1-cycle bubble 삽입 확인

### 테스트 시나리오
```assembly
addi  x10, x0, 100     # x10 = 100
sw    x10, 0(x0)       # mem[0] = 100
lw    x11, 0(x0)       # x11 = 100 (load)
addi  x12, x0, 50      # x12 = 50
add   x12, x12, x11    # LOAD-USE HAZARD! (stall 발생)
sw    x12, 4(x0)       # mem[4] = 150

lw    x13, 4(x0)       # x13 = 150 (load)
addi  x10, x0, 25      # x10 = 25
add   x13, x10, x13    # LOAD-USE HAZARD! (stall 발생)
sw    x13, 8(x0)       # mem[8] = 175
jal   x0, 0            # halt
```

### 예상 결과
```
Memory Values:
  mem[0] = 100 (0x00000064)
  mem[4] = 150 (0x00000096)
  mem[8] = 175 (0x000000AF)

Cycle Count:
  - Without hazards: ~15 cycles
  - With 2 load-use stalls: ~17 cycles
```

### 검증 포인트
- ✓ Load 후 즉시 사용 시 stall이 발생하는가?
- ✓ Stall 중 PC가 유지되는가?
- ✓ Bubble (NOP)이 올바르게 삽입되는가?
- ✓ Stall 후 정상 실행되는가?

---

## Test 5: Branch Hazard - Flush Test

### 목적
- Branch taken 시 flush 동작 확인
- Branch not-taken 시 정상 실행 확인
- 파이프라인 bubble 생성 확인

### 테스트 시나리오
```assembly
addi  x10, x0, 10      # x10 = 10
addi  x11, x0, 20      # x11 = 20
blt   x10, x11, 8      # 10 < 20? YES, TAKEN -> jump to offset 8 (imem[4])
addi  x13, x0, 100     # 이 명령어는 FLUSH됨!
addi  x12, x0, 30      # x12 = 30 (실행됨)
sw    x10, 0(x0)       # mem[0] = 10
sw    x11, 4(x0)       # mem[4] = 20
sw    x12, 8(x0)       # mem[8] = 30
beq   x10, x11, 12     # 10 == 20? NO, NOT TAKEN
addi  x14, x0, 50      # x14 = 50 (실행됨)
sw    x14, 12(x0)      # mem[12] = 50
sw    x13, 16(x0)      # mem[16] = 0 (x13은 설정되지 않음)
jal   x0, 0            # halt
```

### 예상 결과
```
Register Values:
  x10 = 10 (0x0000000A)
  x11 = 20 (0x00000014)
  x12 = 30 (0x0000001E)
  x13 = 0 (0x00000000) ← flush되어 실행 안됨
  x14 = 50 (0x00000032)

Memory Values:
  mem[0] = 10 (0x0000000A)
  mem[4] = 20 (0x00000014)
  mem[8] = 30 (0x0000001E)
  mem[12] = 50 (0x00000032)
  mem[16] = 0 (0x00000000) ← x13이 0이므로
```

### 검증 포인트
- ✓ Branch taken 시 IF/ID, ID/EX, EX/MEM 단계가 flush되는가?
- ✓ Flush된 명령어가 실행되지 않는가?
- ✓ Branch not-taken 시 정상 실행되는가?
- ✓ Branch penalty가 3 cycles인가?

---

## Test 6: Jump Hazard - JAL/JALR Flush Test

### 목적
- JAL 명령어 동작 및 flush 확인
- JALR 명령어 동작 및 flush 확인
- Return address 저장 확인

### 테스트 시나리오
```assembly
jal   x1, 12           # jump to PC+12 (imem[3]), x1 = 4 (return address)
addi  x10, x0, 1       # FLUSH됨
addi  x10, x0, 2       # FLUSH됨
addi  x10, x0, 100     # x10 = 100 (실행)
sw    x10, 0(x0)       # mem[0] = 100
addi  x11, x0, 8       # x11 = 8
addi  x11, x11, 40     # x11 = 48
jalr  x1, x11, 0       # jump to address 48 (imem[12]), x1 = 32 (return address)
addi  x11, x0, 3       # FLUSH됨
addi  x11, x0, 4       # FLUSH됨
addi  x11, x0, 5       # FLUSH됨
addi  x11, x0, 6       # FLUSH됨
addi  x11, x0, 200     # x11 = 200 (실행)
sw    x11, 4(x0)       # mem[4] = 200
sw    x1, 8(x0)        # mem[8] = 4 (첫 번째 jal의 return address)
jal   x0, 0            # halt
```

### 예상 결과
```
Register Values:
  x1 = 4 (0x00000004) ← 첫 번째 jal의 return address
  x10 = 100 (0x00000064)
  x11 = 200 (0x000000C8)

Memory Values:
  mem[0] = 100 (0x00000064)
  mem[4] = 200 (0x000000C8)
  mem[8] = 4 (0x00000004) ← return address 확인
```

### 검증 포인트
- ✓ JAL 실행 시 PC+4가 레지스터에 저장되는가?
- ✓ Jump 후 IF/ID, ID/EX, EX/MEM 단계가 flush되는가?
- ✓ JALR이 레지스터 값으로 점프하는가?
- ✓ Jump penalty가 3 cycles인가?

---

## Test 7: Combined Test - All Hazards

### 목적
- 모든 종류의 hazard가 함께 발생하는 상황 테스트
- 복합 상황에서 hazard 처리 확인

### 테스트 시나리오
```assembly
addi  x10, x0, 10      # x10 = 10
addi  x11, x0, 20      # x11 = 20
add   x12, x10, x11    # x12 = 30 (data hazard, forwarding)
sw    x12, 0(x0)       # mem[0] = 30 (data hazard, forwarding)
lw    x13, 0(x0)       # x13 = 30 (load)
add   x13, x12, x13    # x13 = 60 (load-use hazard stall + data hazard)
sw    x13, 4(x0)       # mem[4] = 60
blt   x13, x12, 8      # 60 < 30? NO, not taken
add   x14, x12, x13    # x14 = 90 (실행됨)
sw    x14, 8(x0)       # mem[8] = 90
jal   x0, 0            # halt
```

### 예상 결과
```
Memory Values:
  mem[0] = 30 (0x0000001E)
  mem[4] = 60 (0x0000003C)
  mem[8] = 90 (0x0000005A)

Total Penalties:
  - Load-use stall: 1 cycle
  - Branch not-taken: 0 cycle
```

### 검증 포인트
- ✓ 복합 hazard 상황에서 정확한 결과가 나오는가?
- ✓ Hazard detection과 forwarding이 함께 동작하는가?

---

## Test 8: Complex Program - Fibonacci Sequence

### 목적
- 실제 프로그램 동작 확인
- Fibonacci 수열 계산
- 데이터 의존성과 forwarding이 복합적으로 발생하는 경우 테스트

### 테스트 시나리오
```assembly
addi  x10, x0, 1       # fib[0] = 1, x10 = 1
addi  x11, x0, 1       # fib[1] = 1, x11 = 1
sw    x10, 0(x0)       # mem[0] = 1
sw    x11, 4(x0)       # mem[4] = 1
add   x12, x10, x11    # fib[2] = 2, x12 = 1+1 = 2
sw    x12, 8(x0)       # mem[8] = 2
add   x13, x11, x12    # fib[3] = 3, x13 = 1+2 = 3
sw    x13, 12(x0)      # mem[12] = 3
add   x14, x12, x13    # fib[4] = 5, x14 = 2+3 = 5
sw    x14, 16(x0)      # mem[16] = 5
add   x15, x13, x14    # fib[5] = 8, x15 = 3+5 = 8
sw    x15, 20(x0)      # mem[20] = 8
add   x16, x14, x15    # fib[6] = 13, x16 = 5+8 = 13
sw    x16, 24(x0)      # mem[24] = 13
jal   x0, 0            # halt
```

### 예상 결과
```
Memory Values:
  mem[0] = 1 (0x00000001)   ← fib[0]
  mem[4] = 1 (0x00000001)   ← fib[1]
  mem[8] = 2 (0x00000002)   ← fib[2]
  mem[12] = 3 (0x00000003)  ← fib[3]
  mem[16] = 5 (0x00000005)  ← fib[4]
  mem[20] = 8 (0x00000008)  ← fib[5]
  mem[24] = 13 (0x0000000D) ← fib[6]
```

### 검증 포인트
- ✓ Fibonacci 수열이 정확한가?
- ✓ 데이터 의존성이 올바르게 처리되는가?
- ✓ Forwarding이 연속적으로 잘 동작하는가?

---

## 디버깅 팁

### 1. 상세 파이프라인 모니터링
테스트벤치의 주석 처리된 부분을 활성화:
```verilog
always @(posedge clk) begin
  if (reset == 1 && cycle_count > 0) begin
    $display("Cycle %0d | PC=%h | Inst=%h | Stall=%b | Flush=%b", 
             cycle_count, pc, inst, stall, flush);
  end
end
```

### 2. 파이프라인 레지스터 모니터링
각 단계의 파이프라인 레지스터 값 확인:
```verilog
$display("IF/ID: PC=%h Inst=%h", IFID_pc, IFID_inst);
$display("ID/EX: rd=%d rs1=%d rs2=%d", IDEX_rd, IDEX_rs1, IDEX_rs2);
$display("EX/MEM: aluout=%h", EXMEM_aluout);
$display("MEM/WB: rd=%d rd_data=%h", MEMWB_rd, rd_data);
```

### 3. Forwarding 경로 확인
```verilog
$display("ForwardA=%b ForwardB=%b", forwardA, forwardB);
```

### 4. 예상 사이클 수 계산
- 기본: 명령어 수 + 4 (pipeline fill)
- Stall 추가: +1 per load-use hazard
- Flush 추가: +2 per branch/jump taken

---

## 성공 기준

각 테스트는 다음 조건을 만족해야 합니다:

1. **기능 정확성**: 메모리와 레지스터의 최종 값이 예상값과 일치
2. **Hazard 처리**: Stall과 Flush가 적절한 시점에 발생
3. **성능**: 불필요한 stall이 발생하지 않음
4. **안정성**: 모든 사이클에서 정의되지 않은 신호가 없음

---

## 문제 해결

### 메모리 값이 틀린 경우
- Forwarding unit 확인
- Load-use hazard detection 확인
- Pipeline register 값 확인

### Stall이 발생하지 않는 경우
- Hazard detection unit의 조건 확인
- Load 명령어의 MemtoReg 신호 확인

### Branch/Jump 후 잘못된 명령어 실행
- Flush 신호 생성 확인
- IF/ID, ID/EX 레지스터 초기화 확인
- PC 업데이트 로직 확인

---

## 결론

8개의 테스트를 모두 통과하면 파이프라인 CPU가 올바르게 구현된 것입니다:
- ✓ Test 1: 기본 파이프라인 동작 (NOP 포함)
- ✓ Test 2: 파이프라인 효율성 (독립 명령어)
- ✓ Test 3: Data forwarding 동작 (EX-EX, MEM-EX)
- ✓ Test 4: Load-use stall 동작
- ✓ Test 5: Branch/Jump flush 동작
- ✓ Test 6: JAL/JALR 동작
- ✓ Test 7: 복합 hazard 처리
- ✓ Test 8: 실제 프로그램 실행 (Fibonacci)

## 테스트 순서 권장사항

1. **Test 1부터 시작**: 기본 동작을 먼저 검증
2. **Test 2로 효율성 확인**: Hazard가 없을 때의 성능
3. **Test 3으로 Forwarding 테스트**: 가장 중요한 최적화
4. **Test 4로 Stall 테스트**: Hazard detection 동작 확인
5. **Test 5, 6으로 Control Hazard**: Branch와 Jump 처리
6. **Test 7로 복합 상황**: 모든 것이 함께 동작하는지 확인
7. **Test 8로 실제 프로그램**: 최종 검증
