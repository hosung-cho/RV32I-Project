# pointwise 부트코드 없는 버전 진행 내역 (누락 점검본)

- 작성일: 2026-04-07
- 대상: TinyML/TFLM_standalone/pointwise 기반 no-bootcode 실행 경로
- 점검 기준:
  - 현재 소스 상태 직접 확인
  - pointwise/pointwise_bootcode 경로 git 이력 확인
  - Pipeline TB/RTL 연계 파일 확인

---

## 1) 점검 범위

이번 점검은 아래 항목을 모두 포함했다.

- pointwise no-bootcode 빌드 스크립트
- no-bootcode 링커 스크립트
- main 종료 방식 및 bare-metal 의존성 처리
- IMEM/DMEM 분리 생성 및 TB 로딩 연계
- Reset PC/Stack 초기화 등 RTL/TB 연동
- 관련 커밋 단위 변경 파일 교차 확인

---

## 2) 실제로 진행된 작업 (카테고리별)

### A. 빌드 엔트리 및 경로 구조 정리

완료 항목:

- [x] pointwise 빌드 스크립트를 스크립트 위치 기준 절대 경로 계산 방식으로 정리
- [x] 빌드 산출물을 build 디렉터리로 통합
- [x] 소스 목록을 배열로 처리해 공백 포함 경로에서도 안정 동작하도록 구성

근거 파일:

- TinyML/TFLM_standalone/pointwise/script/build_pointwise.sh

관련 커밋:

- 1bd76b4

### B. no-bootcode 링커 구성 도입

완료 항목:

- [x] no-bootcode 전용 링커 스크립트 추가
- [x] ENTRY를 main으로 지정
- [x] IMEM=0x00000000, DMEM=0x20000000 메모리 맵 명시
- [x] .text/.rodata는 IMEM, .data/.bss는 DMEM 배치
- [x] small-data 접근 대비 __global_pointer$ 제공

근거 파일:

- TinyML/TFLM_standalone/pointwise/src/custom_memory_noboot.ld
- TinyML/TFLM_standalone/pointwise/script/build_pointwise.sh

관련 커밋:

- 69b1c23

### C. bare-metal 런타임 의존성 최소화

완료 항목:

- [x] -nostdlib, --specs=nosys.specs 기반 링크 유지
- [x] 기본 함수 자동 삽입 억제를 위한 -fno-builtin 계열 옵션 적용
- [x] memcpy/memset 로컬 구현 제공으로 libc 의존성 회피

근거 파일:

- TinyML/TFLM_standalone/pointwise/script/build_pointwise.sh
- TinyML/TFLM_standalone/pointwise/src/main_pointwise.cc

관련 커밋:

- a104ee1
- (코드 반영 이력) a59d979

### D. 프로그램 종료 방식 변경 (부트코드 없음 대응)

완료 항목:

- [x] return 기반 종료 대신 a0(x10)에 결과 저장 후 self-loop로 정지
- [x] 부트코드 없는 엔트리에서 invalid return address 문제 회피
- [x] TB가 halt 시그니처(jal x0,0 패턴)로 안정 감지 가능하도록 정리

근거 파일:

- TinyML/TFLM_standalone/pointwise/src/main_pointwise.cc
- Pipeline/testbench/testbench_TFLM/RV32I_System_tb.v

관련 커밋:

- 94f08be

### E. IMEM/DMEM 분리 파일 생성 및 초기화 안전장치

완료 항목:

- [x] ELF에서 IMEM(.text/.rodata 등)과 DMEM(.data/.sdata) 분리 추출
- [x] DMEM 섹션 부재/빈 파일 상황에서 기본 @00000000 엔트리 강제 생성
- [x] TB가 바로 읽을 수 있는 verilog hex 형식 유지

근거 파일:

- TinyML/TFLM_standalone/pointwise/script/build_pointwise.sh
- TinyML/TFLM_standalone/pointwise/build/imem.hex
- TinyML/TFLM_standalone/pointwise/build/dmem.hex

관련 커밋:

- c47bebb
- 69b1c23

### F. 테스트벤치 no-bootcode 실행 연계

완료 항목:

- [x] TB에서 IMEM_HEX/DMEM_HEX 분리 로딩
- [x] reset release 전 x2(sp) 초기값(STACK_INIT_SP) 주입
- [x] CPU reset PC를 0x00000000으로 설정 가능하도록 연동
- [x] 정지 후 a0 및 DMEM 덤프 기반 검증 흐름 유지

근거 파일:

- Pipeline/testbench/testbench_TFLM/RV32I_System_tb.v

관련 커밋:

- c47bebb
- c742113
- cb49bce

### G. RTL에서 reset PC 파라미터화

완료 항목:

- [x] RV32I_System에 CPU_RESET_PC 파라미터 추가
- [x] rv32i_cpu RESET_PC 전달 구조 확립
- [x] bootcode 유무에 따라 초기 PC를 TB에서 제어 가능하게 구성

근거 파일:

- Pipeline/src/rtl/RV32I_System.v
- Pipeline/src/rtl/rv32i_cpu.v

관련 커밋:

- cb49bce

### H. bootcode 경로 분리 및 병행 유지

완료 항목:

- [x] bootcode 버전(pointwise_bootcode)과 no-bootcode 버전(pointwise) 병행 유지
- [x] bootcode 버전은 ENTRY(_start), no-bootcode는 ENTRY(main)으로 명확 분리
- [x] 테스트벤치도 bootcode 전용 디렉터리(testbench_TFLM_Bootcode)와 분리

근거 파일:

- TinyML/TFLM_standalone/pointwise_bootcode/src/custom_memory.ld
- TinyML/TFLM_standalone/pointwise/src/custom_memory_noboot.ld
- Pipeline/testbench/testbench_TFLM_Bootcode/RV32I_System_tb.v

관련 커밋:

- 86fea8a
- 69b1c23

---

## 3) 커밋 기준 누락 점검 결과

pointwise no-bootcode 전환에 직접 관련된 핵심 커밋과 반영 상태:

- [x] 1bd76b4: pointwise 빌드 경로/구조 정리
- [x] c47bebb: IMEM/DMEM 분리 생성 + TB 연동
- [x] 69b1c23: no-bootcode 링커 추가/스크립트 수정
- [x] a104ee1: 빌드 기본 함수 사용 억제 옵션
- [x] 94f08be: a0 저장 + self-loop 종료
- [x] cb49bce: CPU_RESET_PC 파라미터화
- [x] c742113: TFLM TB 메모리/파라미터/스크립트 연계
- [x] 86fea8a: bootcode/비bootcode 테스트 흐름 분리 기반

판정:

- 부트코드 없는 버전을 만들기 위해 필요한 핵심 작업(링크 진입점, 종료 방식, 스택/PC 초기화, 메모리 로딩, runtime 의존성)은 모두 반영되어 있으며, 점검 범위 내 누락 항목은 확인되지 않았다.

---

## 4) 현재 상태 요약

- no-bootcode pointwise는 main 직접 진입 구조로 빌드 가능
- TB는 sp 초기화 + reset PC 제어 + IMEM/DMEM 분리 로딩을 지원
- 프로그램 종료는 self-loop 시그니처로 안정 검출 가능
- bootcode 경로와 no-bootcode 경로가 분리되어 재현성과 비교 검증이 가능
