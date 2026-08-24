# Ultra96-V1 CPU 통합형 Wide-BDOT128 실기검증 결과

- 검증일: 2026-08-18
- 대상: CPU/BDOT 35 MHz 통합형 bitstream 및 PS loader
- 최종 상태: PASS

## 1. UART 결과

```text
Wide-BDOT128 Ultra96-V1 PS loader
IMEM=0xA0000000 DMEM=0xA2000000 GPIO=0xA3000000
ACT0=0xA4000000 ACT1=0xA4010000 WEIGHT=0xA5000000
Clearing IMEM, DMEM and activation banks...
Loading IMEM=144, DMEM=1632, ACT0=25, WEIGHT=94528 words...
Performing complete AXI read-back...
READBACK PASS IMEM words=144
READBACK PASS DMEM words=1632
READBACK PASS ACT0 input words=25
READBACK PASS ACT0 padding zero words=8167
READBACK PASS ACT1 zero words=8192
READBACK PASS WEIGHT words=94528
run=3478 us, approximately 121730 RV32I cycles @ 35 MHz
status=1 prediction=5 expected=5 correct=1
scores=[-182,-94,-34,326,-162,556,54,6,216,-96]
Wide-BDOT128 FINN LFC PASS
```

## 2. 확인된 사항

1. PS AXI 주소 decode와 IMEM, DMEM, ACT0, ACT1, Weight 전체 read-back이 PASS했다.
2. 갱신한 RV32I image 144 words가 정상 적재됐다.
3. software 완료 mailbox가 `status=1`로 변경됐다.
4. prediction은 expected class와 같은 5다.
5. 10개 score가 RTL/reference 결과와 정확히 일치했다.
6. 최초 보드 시험의 1초 timeout은 해소됐다.

따라서 다음 수정이 실제 Ultra96-V1에서도 유효함을 확인했다.

- IMEM/DMEM CPU Port B의 105 MHz read-latency 은폐 구조 복구
- CPU/BDOT control 및 datapath의 35 MHz 직접 통합
- CPU–BDOT toggle CDC 제거
- Activation output의 local 32-bit packing 및 single store
- Activation/Weight 128-bit Port B의 105 MHz memory clock 유지

## 3. RTL 예상과 보드 측정 비교

| 항목 | RTL | Ultra96-V1 | 차이 |
|---|---:|---:|---:|
| 실행시간 | 약 3,472 us | 3,478 us | 약 +6 us |
| 환산 CPU cycles | 121,522 | 약 121,730 | 약 +208 (+0.17%) |
| prediction | 5 | 5 | 일치 |
| 10개 score | reference | reference | 전부 일치 |

보드 cycle 값은 별도 CPU cycle counter가 아니라 정수 microsecond 측정값에 35 MHz를
곱한 근사치다. 따라서 약 208-cycle 차이는 timer 양자화, mailbox polling 및 측정
경계가 포함된 결과로 판단한다. 기능 또는 BDOT 연산 불일치의 징후는 없다.

## 4. 결론

CPU 통합형 Wide-BDOT128의 RTL, actual BMG, Vivado timing/DRC 및 Ultra96-V1 실기
검증이 모두 완료됐다. 현재 기능 기준 구현은 확정할 수 있다. 다음 단계에서 성능을
더 줄이려면 보드 정답을 유지한 채 `ISSUE → WAIT → ACCUM`의 3 CPU-cycle/block을
2-cycle 또는 pipeline 구조로 최적화하고 동일 score 회귀를 수행한다.

