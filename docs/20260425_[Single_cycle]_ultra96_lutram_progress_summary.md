# 2026-04-25 Single-cycle Ultra96 LUTRAM Progress Summary

## 1. 목적
- Ultra96 v1에서 Single-cycle CPU를 먼저 구동한다.
- C 크로스컴파일 결과인 imem.hex, dmem.hex를 사용해 실행한다.
- 초기 단계는 BRAM 동기 read 구조 전환 대신, LUTRAM(Distributed RAM) 기반으로 빠르게 bring-up 한다.

## 2. 의사결정 요약
- 채택: 방법 1 (Distributed RAM / LUTRAM)
- 보류: BRAM + 역에지/위상 분리 방식
- 비추천: PLL 다중 위상으로 메모리/CPU 타이밍 맞추기
- 중장기 방향: 필요 시 파이프라인 또는 BRAM 동기 구조로 전환

## 3. 현재까지 진행 내역

### 3.1 시뮬레이션 경로 확인
- Single-cycle TFLM 테스트벤치에서 외부 imem.hex, dmem.hex 로딩 구조를 확인했다.
- 사용자 제공 HEX 파일 기준으로 테스트벤치 통과를 확인했다.

### 3.2 RTL 변경 (LUTRAM 경로 구현)
아래 두 메모리 모듈에 LUTRAM 추론 유도와 초기화 파일 파라미터화를 적용했다.

1) Single_cycle/src/rtl/inst_memory.v
- parameter INIT_HEX 추가 (기본값: imem.hex)
- mem 배열에 속성 추가:
  - ram_style = "distributed"
  - rom_style = "distributed"
- $readmemh("imem.hex", mem) -> $readmemh(INIT_HEX, mem)

2) Single_cycle/src/rtl/data_memory.v
- parameter INIT_HEX 추가 (기본값: dmem.hex)
- mem 배열에 속성 추가:
  - ram_style = "distributed"
- $readmemh("dmem.hex", mem) -> $readmemh(INIT_HEX, mem)

### 3.3 정적 검증
- 변경 파일 2개에 대해 오류 점검 수행
- 결과: No errors found

## 4. 현재 상태
- RTL 기준으로 LUTRAM 우선 경로 구현 완료
- 시뮬레이션 기준 HEX 실행 성공(테스트벤치 통과)
- 다음 단계는 Vivado에서 PS FCLK 기반으로 PL 클럭을 공급해 보드 bitstream 검증

## 5. Vivado에서 다음으로 할 일
1. Ultra96 v1 기준 프로젝트 생성
2. Zynq UltraScale+ MPSoC Block Design 생성
3. PS에서 FCLK_CLK0 enable (예: 50MHz 또는 100MHz)
4. RV32I_System 모듈 연결
   - CLOCK_50 <- FCLK_CLK0
   - reset polarity 정합 확인
5. Design Sources에 imem.hex, dmem.hex 추가
   - Used In: Synthesis, Implementation 체크
6. Synthesis 실행 후 확인
   - 메모리 distributed RAM 추론 여부
   - readmemh 파일 경로 경고/오류 여부
7. Implementation/Bitstream 생성
8. Hardware Manager 다운로드 후 동작 확인

## 6. 리스크 및 전환 기준
- LUTRAM은 빠른 bring-up에 유리하지만 용량 증가 시 LUT 소모가 커진다.
- 프로그램/데이터 규모가 증가하거나 타이밍 여유가 줄면 BRAM/동기 구조로 전환한다.
- 전환 시점 기준은 아래를 권장한다.
  - LUT 사용률 급증
  - Timing WNS 악화
  - 구현 재현성 저하

## 7. 변경 파일 목록
- Single_cycle/src/rtl/inst_memory.v
- Single_cycle/src/rtl/data_memory.v

## 8. 비고
- 현재 문서는 2026-04-25 시점 진행 스냅샷이다.
- 이후 보드 실제 동작 결과(ILA 관측값, 종료 조건, 메모리 dump)는 후속 문서에 누적 기록한다.
