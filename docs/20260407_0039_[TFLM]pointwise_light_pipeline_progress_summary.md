# RV32I Pipeline + TFLM Pointwise 진행 요약

- 작성 시각: 2026-04-07 00:39
- 범위: pointwise 경량 검증 케이스 추가, TB 출력 확장, 실행 스크립트 정리, 관련 질의응답

## 1. 작업 배경

기존 pointwise 검증은 연산량이 커서 RTL 시뮬레이션 시간이 길었고, 결과 확인도 a0 중심이라 출력 텐서 전체 검증이 어려웠음.
이에 따라 아래 3가지를 목표로 개선함.

- 연산량이 작은 pointwise_light 추가
- 케이스 번호(case_id) 기반 반복 검증 자동화
- 연산 종료 시 DMEM 결과 구간 덤프를 통한 전체 출력 확인

## 2. 신규/수정 내용 요약

### 2-1. pointwise_light 신규 구성

신규 경량 타깃을 추가함.

- 경로: TinyML/TFLM_standalone/pointwise_light/src/main_pointwise_light.cc
- 프로파일: N=1, H=2, W=4, Cin=16, Cout=16
- 연산량: 1x1 pointwise 기준 2048 MAC

특징:

- CASE_ID에 따라 입력/필터/바이어스/양자화 파라미터를 바꿔서 3개 케이스 검증
- ConvPerChannel 호출 후 output_data 전체를 DMEM 0x2000F000 영역으로 복사
- a0에는 checksum(요약값) 유지

### 2-2. pointwise_light 빌드 스크립트 추가

- 경로: TinyML/TFLM_standalone/pointwise_light/script/build_pointwise_light.sh

역할:

- CASE_ID를 컴파일 매크로로 전달하여 케이스별 ELF 생성
- objcopy로 imem_caseX.hex / dmem_caseX.hex 생성
- .data/.sdata 없을 때 dmem 기본값 파일 생성

### 2-3. 다중 케이스 실행 스크립트 추가

- 경로: TinyML/TFLM_standalone/pointwise_light/script/run_pipeline_cases.sh

역할:

- 기본 케이스 0,1,2 순차 실행(인자 전달 시 해당 케이스만 실행)
- 케이스별 빌드 후 pipeline 시뮬레이션 스크립트 호출
- 숫자 바꿔가며 검증 자동화

### 2-4. Pipeline TB에서 DMEM 덤프 기능 추가

- 경로: Pipeline/testbench/testbench_TFLM/RV32I_System_tb.v

추가 파라미터:

- DUMP_DMEM_AFTER_HALT
- DUMP_BASE_ADDR (기본 0x2000_F000)
- DUMP_BYTE_COUNT (기본 128)

동작:

- halt 또는 timeout 시 dump_dmem_window()를 호출
- 지정 영역을 word(hex) + signed int8 4바이트 형태로 출력
- a0 단일 값 외에 출력 텐서 실제 메모리 상태를 확인 가능

### 2-5. Pipeline 실행 스크립트 모드/경로 개선 시도

- 경로: Pipeline/sim/iverilog/run_tflm_sim.sh

반영된 변경(현재 워킹트리 기준):

- fast/debug 모드 인자 추가
- fast 모드에서 runtime stats/logging 최소화
- TB 파라미터 오버라이드 전달
- 스크립트 기준 경로 계산을 프로젝트 구조에 맞게 조정

비고:

- 대화 중 해당 파일은 사용자 측 추가 변경 이력이 있어 실행 전 최종 내용 재확인 필요.

## 3. 케이스 3개 차이점

공통:

- 텐서 shape/Conv 설정은 동일
- 차이는 데이터 패턴과 양자화 파라미터

case 0:

- 입력 1 고정, 필터 2 고정, bias 0
- multiplier=1073741824, shift=-1
- 가장 단순한 스모크 성격

case 1:

- 입력/필터를 인덱스 기반 주기 패턴으로 생성
- bias 채널별 변화
- multiplier=805306368, shift=-2

case 2:

- 입력/필터 분포를 더 넓힌 패턴
- bias 채널별 변화 폭 증가
- multiplier=1342177280, shift=-1
- 현재 구현상 case_id >= 2는 동일 분기로 동작

## 4. multiplier/shift 관련 정리

- output_multiplier[c], output_shift[c]는 per-channel 재스케일용 정수 파라미터
- 실제 모델 정확도 검증 목적이면 임의값 대신 모델 양자화 스케일로부터 산출한 값을 사용해야 함
- 임의값은 경로 테스트(동작 점검) 용도로는 가능하나, 모델 정확도 검증 결과로 해석하면 안 됨

## 5. 사용 예시

단일 케이스 빌드:

- TinyML/TFLM_standalone/pointwise_light/script/build_pointwise_light.sh 1

다중 케이스 실행:

- TinyML/TFLM_standalone/pointwise_light/script/run_pipeline_cases.sh
- TinyML/TFLM_standalone/pointwise_light/script/run_pipeline_cases.sh 0 2

## 6. 다음 권장 작업

- run_tflm_sim.sh 최종본 확정(경로/모드 포함)
- case_id를 3개 이상으로 확장하고 else 분기 분리
- TB에 expected checksum 비교를 추가해 자동 pass/fail 회귀화
