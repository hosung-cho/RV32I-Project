# TFLM IMEM/DMEM 시뮬레이션 워크플로우 변경사항 (2026-03-23)

## 1. 목적
- TFLM에서 생성한 `imem.hex`, `dmem.hex`를 Single-cycle/Pipeline 양쪽에 동일하게 주입해 실행할 수 있도록 테스트벤치와 실행 구조를 통일.
- 산출물 충돌을 줄이기 위해 아키텍처별 시뮬레이션 작업 폴더를 분리.

## 2. 핵심 변경 요약
1. `testbench_TFLM` 기반 전용 TB를 Single-cycle/Pipeline 모두에 적용.
2. TB가 reset 구간에서 직접 `imem.hex`, `dmem.hex`를 메모리에 로드.
3. 아키텍처별 `sim_tflm` 폴더 분리.
4. 아키텍처별 실행 스크립트(`run_tflm_sim.sh`) 추가.
5. 시뮬레이션 산출물/임시 hex를 `.gitignore`에 반영.

## 3. 변경 파일 목록
### 3.1 Testbench
- `Single_cycle/testbench_TFLM/RV32I_System_tb.v`
- `Pipeline/testbench_TFLM/RV32I_System_tb.v`

### 3.2 실행 스크립트
- `Single_cycle/run_tflm_sim.sh`
- `Pipeline/run_tflm_sim.sh`

### 3.3 시뮬레이션 작업 폴더
- `Single_cycle/sim_tflm/`
- `Pipeline/sim_tflm/`

### 3.4 Git ignore
- `.gitignore`

## 4. TB 동작 방식
- reset active-low 입력 기준으로 시작 (`reset=0`).
- `RESET_CYCLES` 이후 TB에서 메모리 강제 로드:
  - `$readmemh(IMEM_HEX, iRV32I_System.iIMem.mem)`
  - `$readmemh(DMEM_HEX, iRV32I_System.iDMem.mem)`
- reset 해제 (`reset=1`) 후 실행.
- 종료 조건:
  - 명령어 `0x0000006f` 감지 시 종료 (`jal x0, 0`)
  - `TIMEOUT_CYCLES` 초과 시 timeout 종료
- 종료 시 출력:
  - 시뮬레이션 시간
  - cycle count
  - `x10(a0)`
  - `dmem[0..3]`

## 5. 실행 방법
### 5.1 기본 실행 (권장)
#### Single-cycle
```bash
cd Single_cycle
bash run_tflm_sim.sh
```

#### Pipeline
```bash
cd Pipeline
bash run_tflm_sim.sh
```

### 5.2 hex 경로를 명시해서 실행
#### Single-cycle
```bash
cd Single_cycle
bash run_tflm_sim.sh ../TinyML/my_standalone/260317/imem.hex ../TinyML/my_standalone/260317/dmem.hex
```

#### Pipeline
```bash
cd Pipeline
bash run_tflm_sim.sh ../TinyML/my_standalone/260317/imem.hex ../TinyML/my_standalone/260317/dmem.hex
```

## 6. run_tflm_sim.sh 동작
1. 기본 hex 경로를 `../TinyML/my_standalone/260317/`로 가정.
2. `sim_tflm/` 폴더 생성.
3. `imem.hex`, `dmem.hex`를 `sim_tflm/`로 복사.
4. `iverilog`로 TB + RTL 빌드.
5. `sim_tflm` 폴더에서 `vvp` 실행 후 `sim.log` 저장.

## 7. 구현 시 주의사항
- 워크스페이스 경로에 공백(iCloud 경로)이 포함되어 있어 shell glob 처리가 깨질 수 있음.
- 이를 방지하기 위해 스크립트에서 RTL 파일을 배열(`RTL_FILES=(...)`)로 수집하고 `"${RTL_FILES[@]}"`로 전달하도록 구성함.
- 실행 권한이 없는 환경에서는 `./run_tflm_sim.sh` 대신 `bash run_tflm_sim.sh`로 실행.

## 8. 현재 관찰 결과 (적용 직후)
- 스크립트 기반 빌드/실행 경로 자체는 Single-cycle/Pipeline 모두 정상 동작 확인.
- Single-cycle: timeout 발생 케이스 관찰.
- Pipeline: 빠른 종료(`jal x0,0` 감지) 케이스 관찰.
- 따라서 현재 변경의 범위는 **실행 워크플로우 통일/자동화**이며, 커널 동작 차이에 대한 디버깅은 별도 단계로 진행 필요.

## 9. 참고
- 본 문서는 TFLM hex 주입 시뮬레이션을 위한 인프라 변경사항을 정리한 문서이며, TinyML/TFLM 소스 동기화 변경 전체를 설명하지 않음.
