# RV32I Pipeline CPU - 빠른 테스트 가이드

## 테스트 실행 방법

`inst_memory.v` 파일에서 `TEST_SELECT` 값을 변경:
```verilog
`define TEST_SELECT 1  // 1~8 중 선택
```

---

## 📋 테스트 목록 및 예상 결과

### Test 1: Basic Pipeline Test - No Hazards
**목적**: NOP를 삽입하여 헤저드 없는 기본 파이프라인 동작 확인

**예상 결과**:
```
x10 = 10 (0x0A)
x11 = 20 (0x14)
x12 = 30 (0x1E)
x13 = 40 (0x28)
x14 = 50 (0x32)

mem[0] = 10
mem[4] = 20
mem[8] = 30
mem[12] = 40
mem[16] = 50
```

**특징**: 모든 명령어 사이에 NOP를 삽입하여 의존성 없음

---

### Test 2: Pipeline Efficiency Test
**목적**: 독립적인 명령어들로 최대 파이프라인 효율 측정 (CPI ≈ 1)

**예상 결과**:
```
mem[0] = 1, mem[4] = 2, mem[8] = 3, ..., mem[36] = 10
```

**특징**: 
- 모든 명령어가 독립적 (no dependency)
- Stall 없음, Flush 없음
- 최대 처리량 달성

---

### Test 3: Data Hazard - Forwarding Test
**목적**: EX-EX, MEM-EX forwarding 동작 확인

**예상 결과**:
```
x10 = 10, x11 = 20, x12 = 30, x13 = 40
x14 = 70
x15 = 100

mem[0] = 70
mem[4] = 100
```

**핵심**:
- `addi x11, x10, 10` ← EX-EX forward
- `add x14, x12, x13` ← MEM-EX forward
- Stall 없이 연속 실행

---

### Test 4: Load-Use Hazard - Stall Test
**목적**: Load 후 즉시 사용 시 stall 삽입 확인

**예상 결과**:
```
mem[0] = 100
mem[4] = 150
mem[8] = 175
```

**핵심**:
- `lw x11, 0(x0)` → `add x12, x12, x11` ← 1 cycle stall
- `lw x13, 4(x0)` → `add x13, x10, x13` ← 1 cycle stall
- 총 2개의 stall 발생

---

### Test 5: Branch Hazard - Flush Test
**목적**: Branch taken 시 파이프라인 flush 확인

**예상 결과**:
```
x10 = 10, x11 = 20, x12 = 30
x13 = 0 (실행되지 않음)
x14 = 50

mem[0] = 10
mem[4] = 20
mem[8] = 30
mem[12] = 50
mem[16] = 0
```

**핵심**:
- `blt x10, x11, 8` ← taken
- 다음 명령어 `addi x13, x0, 100` ← FLUSHED
- `beq x10, x11, 12` ← not taken (정상 실행)

---

### Test 6: Jump Hazard - JAL/JALR Test
**목적**: JAL/JALR 명령어와 flush 확인

**예상 결과**:
```
x1 = 4 (return address)
x10 = 100
x11 = 200

mem[0] = 100
mem[4] = 200
mem[8] = 4
```

**핵심**:
- `jal x1, 12` ← 다음 2개 명령어 FLUSHED
- `jalr x1, x11, 0` ← 다음 4개 명령어 FLUSHED
- Return address 저장 확인

---

### Test 7: Combined Test - All Hazards
**목적**: 모든 종류의 hazard 복합 테스트

**예상 결과**:
```
mem[0] = 30
mem[4] = 60
mem[8] = 90
```

**핵심**:
- Data hazard (forwarding)
- Load-use hazard (stall)
- Branch not-taken (no flush)
- 복합 상황에서 정확성 확인

---

### Test 8: Complex Program - Fibonacci
**목적**: 실제 프로그램 동작 확인

**예상 결과**:
```
mem[0] = 1   (fib[0])
mem[4] = 1   (fib[1])
mem[8] = 2   (fib[2])
mem[12] = 3  (fib[3])
mem[16] = 5  (fib[4])
mem[20] = 8  (fib[5])
mem[24] = 13 (fib[6])
```

**특징**: 
- 데이터 의존성 처리
- 실제 알고리즘 구현 확인

---

## 🔍 테스트 순서 권장

**처음 학습 시**:
1. Test 1 (Basic) → 기본 동작 확인
2. Test 2 (Efficiency) → 이상적 파이프라인
3. Test 3 (Forwarding) → 데이터 헤저드
4. Test 4 (Stall) → Load-use 헤저드
5. Test 5 (Branch) → 제어 헤저드
6. Test 6 (Jump) → Jump 명령어
7. Test 7 (Combined) → 복합 상황
8. Test 8 (Fibonacci) → 실전 응용

**디버깅 시**:
- Forwarding 문제 → Test 3
- Stall 문제 → Test 4
- Branch 문제 → Test 5
- Jump 문제 → Test 6
- 복합 문제 → Test 7

---

## ✅ 검증 체크리스트

각 테스트 후 확인사항:

### 기능 정확성
- [ ] 메모리 값이 예상값과 일치
- [ ] 레지스터 값이 예상값과 일치

### Hazard 처리
- [ ] Forwarding이 적절한 시점에 발생
- [ ] Stall이 필요한 곳에서만 발생
- [ ] Flush가 branch/jump taken 시 발생

### 성능
- [ ] 불필요한 stall이 없음
- [ ] Forwarding이 제대로 동작하여 성능 향상

### 파이프라인 동작
- [ ] PC가 올바르게 업데이트
- [ ] 파이프라인 레지스터가 올바르게 동작
- [ ] 제어 신호가 적절히 전파

---

## 🐛 일반적인 문제와 해결

### 메모리 값이 0인 경우
→ Forwarding 경로 확인
→ Write-back 단계 확인

### 프로그램이 무한 루프
→ Branch taken 조건 확인
→ PC 업데이트 로직 확인

### 잘못된 명령어 실행
→ Flush 신호 확인
→ Pipeline register 초기화 확인

### Stall이 발생하지 않음
→ Hazard detection unit 조건 확인
→ Load 명령어의 MemtoReg 신호 확인

---

## 📊 성능 측정

각 테스트의 예상 사이클 수:

| Test | Instructions | Ideal Cycles | With Hazards | CPI |
|------|--------------|--------------|--------------|-----|
| 1    | 21           | 25           | 25           | 1.19 |
| 2    | 21           | 25           | 25           | 1.19 |
| 3    | 15           | 19           | 19           | 1.27 |
| 4    | 11           | 15           | 17           | 1.55 |
| 5    | 13           | 17           | 19           | 1.46 |
| 6    | 16           | 20           | 24           | 1.50 |
| 7    | 11           | 15           | 16           | 1.45 |
| 8    | 15           | 19           | 19           | 1.27 |

**CPI = (실제 사이클 수) / (명령어 수)**

---

## 💡 팁

1. **처음 실행 시**: Test 1부터 순서대로 실행
2. **문제 발생 시**: 상세 모니터링 활성화 (테스트벤치 주석 해제)
3. **성능 분석**: Test 2와 다른 테스트의 사이클 수 비교
4. **디버깅**: 특정 hazard 타입만 테스트하는 Test 3-6 활용
