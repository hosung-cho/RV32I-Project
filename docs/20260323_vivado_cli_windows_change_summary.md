# 2026-03-23 Vivado CLI (Windows) 변경사항 정리

## 1) 작업 목적
- Windows 환경에서 Vivado CLI로 Pipeline/Single_cycle 시뮬레이션을 일관된 방식으로 실행할 수 있도록 실행 스크립트 추가
- testbench 종류(cpu/ho/tflm) 선택 실행 지원
- tflm 모드에서 메모리 이미지(imem.hex, dmem.hex) 자동/수동 입력 지원

## 2) 코드/스크립트 변경 파일 (핵심)
- Pipeline/run_vivado_sim.bat (신규)
- Pipeline/run_vivado_sim.tcl (신규)
- Single_cycle/run_vivado_sim.bat (신규)
- Single_cycle/run_vivado_sim.tcl (신규)

## 3) 스크립트 동작 개요
- 공통 실행 진입점: run_vivado_sim.bat
- 배치 스크립트가 Vivado batch 모드 호출:
  - vivado -mode batch -source run_vivado_sim.tcl -tclargs <root_dir> <mode> <imem> <dmem>
- tcl 스크립트가 모드별 TB/Top/snapshot 선택
  - cpu: testbench/cpu_tb.v, top=cpu_tb
  - ho: testbench_Ho/RV32I_System_tb.v, top=RV32I_System_tb
  - tflm: testbench_TFLM/RV32I_System_tb.v, top=RV32I_System_tb
- rtl 파일은 src/rtl/*.v 자동 수집 후 xvlog -> xelab -> xsim 순서 실행

## 4) 구현 중 반영된 안정화 수정 사항
### 4.1 Windows 경로 인자 깨짐 방지
- 문제: %~dp0(후행 백슬래시) + 인용부호 조합으로 -tclargs 전달 시 경로 파싱 오동작
- 조치: run_vivado_sim.bat에서 SCRIPT_DIR 후행 백슬래시 제거 로직 추가

### 4.2 Tcl source 경로 결합 오류 수정
- 문제: source 경로에서 디렉터리와 파일명 사이 구분자 누락 가능
- 조치: %SCRIPT_DIR%\\run_vivado_sim.tcl 형태로 명시

### 4.3 Vivado batch Tcl에서 외부 도구 호출 방식 수정
- 문제: Tcl 컨텍스트에서 xvlog/xelab/xsim을 직접 명령처럼 호출 시 실패 가능
- 조치: exec {*}$cmd 형태로 호출하도록 변경

### 4.4 Tcl 문자열의 대괄호 치환 이슈 수정
- 문제: "[INFO]" 같은 문자열이 Tcl 명령 치환으로 해석
- 조치: 로그 태그를 \[INFO\], \[ERROR\], \[DONE\] 형태로 escape

### 4.5 cpu_tb의 VCS 전용 시스템 태스크 호환성 우회
- 문제: cpu_tb.v의 $vcdpluson가 xelab에서 Undefined system task 오류 유발
- 조치: cpu 모드에서 xvlog에 -d IVERILOG 매크로 자동 추가
  - 결과: `ifndef IVERILOG` 경로 비활성화, xsim 호환 실행

## 5) 실행 방법

### 5.1 Pipeline

#### 5.1.1 타임스탐프 기반 폴더 (기본, 결과 보관용)
- CPU TB:
  - `run_vivado_sim.bat cpu`
  - 결과 저장: `sim_out/vivado/yyyyMMdd_HHmmss_cpu/`
- Ho TB:
  - `run_vivado_sim.bat ho`
  - 결과 저장: `sim_out/vivado/yyyyMMdd_HHmmss_ho/`
- TFLM TB(기본 hex):
  - `run_vivado_sim.bat tflm`
  - 결과 저장: `sim_out/vivado/yyyyMMdd_HHmmss_tflm/`
- TFLM TB(사용자 hex):
  - `run_vivado_sim.bat tflm C:\path\to\imem.hex C:\path\to\dmem.hex`
  - 결과 저장: `sim_out/vivado/yyyyMMdd_HHmmss_tflm/`

#### 5.1.2 최신 폴더 모드 (개발 중 반복 테스트용)
- CPU TB:
  - `run_vivado_sim.bat cpu latest`
  - 결과 저장: `sim_out/vivado/latest_cpu/` (매번 덮어쓰기)
- Ho TB:
  - `run_vivado_sim.bat ho latest`
  - 결과 저장: `sim_out/vivado/latest_ho/`
- TFLM TB(기본 hex):
  - `run_vivado_sim.bat tflm latest`
  - 결과 저장: `sim_out/vivado/latest_tflm/`
- TFLM TB(사용자 hex):
  - `run_vivado_sim.bat tflm C:\path\to\imem.hex C:\path\to\dmem.hex latest`
  - 결과 저장: `sim_out/vivado/latest_tflm/`

### 5.2 Single_cycle

#### 5.2.1 타임스탐프 기반 폴더 (기본, 결과 보관용)
- CPU TB:
  - `run_vivado_sim.bat cpu`
  - 결과 저장: `sim_out/vivado/yyyyMMdd_HHmmss_cpu/`
- Ho TB:
  - `run_vivado_sim.bat ho`
  - 결과 저장: `sim_out/vivado/yyyyMMdd_HHmmss_ho/`
- TFLM TB(기본 hex):
  - `run_vivado_sim.bat tflm`
  - 결과 저장: `sim_out/vivado/yyyyMMdd_HHmmss_tflm/`
- TFLM TB(사용자 hex):
  - `run_vivado_sim.bat tflm C:\path\to\imem.hex C:\path\to\dmem.hex`
  - 결과 저장: `sim_out/vivado/yyyyMMdd_HHmmss_tflm/`

#### 5.2.2 최신 폴더 모드 (개발 중 반복 테스트용)
- CPU TB:
  - `run_vivado_sim.bat cpu latest`
  - 결과 저장: `sim_out/vivado/latest_cpu/` (매번 덮어쓰기)
- Ho TB:
  - `run_vivado_sim.bat ho latest`
  - 결과 저장: `sim_out/vivado/latest_ho/`
- TFLM TB(기본 hex):
  - `run_vivado_sim.bat tflm latest`
  - 결과 저장: `sim_out/vivado/latest_tflm/`
- TFLM TB(사용자 hex):
  - `run_vivado_sim.bat tflm C:\path\to\imem.hex C:\path\to\dmem.hex latest`
  - 결과 저장: `sim_out/vivado/latest_tflm/`

## 6) 검증 결과
- Vivado CLI PATH 확인 성공
  - C:\Xilinx\Vivado\2024.2\bin\vivado
- Pipeline cpu 모드 실행 성공
  - 컴파일(xvlog), 엘라보레이션(xelab), 실행(xsim -runall) 완료
- Single_cycle cpu 모드 실행 성공
  - 컴파일(xvlog), 엘라보레이션(xelab), 실행(xsim -runall) 완료

## 7) 작업 중 생성된 산출물/부수 변경 파일
아래는 코드 변경이 아니라 시뮬레이션 수행 과정에서 생성/갱신된 파일들임.
- 대표 예시:
  - Pipeline/vivado.jou, Pipeline/xsim.jou, Pipeline/xelab.pb, Pipeline/xvlog.pb
  - Pipeline/xsim.dir/**
  - Pipeline/pipeline_cpu_tb_sim.wdb
  - Single_cycle/vivado.jou, Single_cycle/xsim.jou, Single_cycle/xelab.pb, Single_cycle/xvlog.pb
  - Single_cycle/xsim.dir/**
  - Single_cycle/single_cycle_cpu_tb_sim.wdb
  - Pipeline/imem.hex, Pipeline/dmem.hex
  - Single_cycle/imem.hex, Single_cycle/dmem.hex
  - cpu_tb.fst 갱신

## 8) 참고
- 본 변경은 testbench 소스 자체를 수정하지 않고, 실행 스크립트 레벨에서 Vivado/xsim 호환성 문제를 해결하는 방향으로 구성됨.

## 9) 로그/산출물 정리 개선 (추가)

### 9.1 출력 폴더 정리
- 기존 문제:
  - Vivado 실행 시 프로젝트 루트에 vivado.jou, xsim.dir, *.pb, *.wdb 등이 흩어져 생성됨
- 개선 내용:
  - 실행 결과를 모드/시간 단위 전용 폴더로 분리 저장
  - 저장 경로: `<project>/sim_out/vivado/<yyyyMMdd_HHmmss>_<mode>/` (기본)
  - Vivado 자체 로그/저널도 전용 폴더로 저장(vivado.log, vivado.jou)
  - tflm 모드의 imem.hex/dmem.hex도 전용 폴더로 복사
- 정리 명령:
  - `run_vivado_sim.bat clean`
  - sim_out/vivado 하위 실행 결과를 일괄 삭제 후 폴더 재생성

### 9.2 최신 폴더 모드 (latest mode, 추가)
- 목적: RTL 개발 중 반복적인 시뮬레이션 시 파형 열기를 단순화
- 사용 방법: 명령 마지막에 `latest` 옵션 추가
  - 예: `run_vivado_sim.bat cpu latest`
  - 예: `run_vivado_sim.bat ho latest`
  - 예: `run_vivado_sim.bat tflm <imem.hex> <dmem.hex> latest`
- 동작:
  - `latest` 옵션 사용 시 → `sim_out/vivado/latest_<mode>/` 폴더에 매번 덮어쓰기
  - `latest` 옵션 미사용 시 → `sim_out/vivado/<timestamp>_<mode>/` 폴더에 저장 (기본)
- 장점:
  - 폴더명이 고정되므로 파형 반복 열기 시 경로 찾기 불필요
  - 해당 모드의 최신 결과만 보관(과거 결과는 자동 덮어쓰기)
  - 빠른 수정-테스트-확인 사이클에 적합

### 9.3 Git 정리
- .gitignore에 Vivado/XSIM 산출물 경로를 추가하여 git status 오염 최소화
  - 경로: *.jou, *.pb, *.wdb, xsim.dir/, sim_out/ 등
