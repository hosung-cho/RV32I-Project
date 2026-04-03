# Vivado 시뮬레이션 기본 가이드

이 폴더의 `scripts/simple_run.tcl`과 `simple_run.bat`는 가장 기본적이고 이해하기 쉬운 구조입니다.

## 빠른 시작

이 폴더에서:

```bat
simple_run.bat
```

## 원리 (이해하기 쉽게)

### 1. tcl 파일 (`scripts/simple_run.tcl`)
Vivado 안에서 실제 작업을 수행하는 스크립트입니다.

**수행 순서:**
1. RTL 파일들을 컴파일 (xvlog)
2. 테스트벤치와 함께 엘라보레이션 (xelab)
3. 시뮬레이션 실행 (xsim)

**설정하기:**
코드의 맨 앞부분만 수정합니다:
```tcl
# 프로젝트 루트 경로
set project_root "../../.."

# RTL 파일 목록
set rtl_files [list \
    "src/rtl/file1.v" \
    "src/rtl/file2.v" \
]

# 테스트벤치 파일
set tb_file "testbench/tb.v"

# 최상위 모듈 이름
set tb_top "tb"

# include 경로
set tb_include_dir "testbench"

# define 옵션
set defines [list "IVERILOG"]
```

### 2. 배치 파일 (`simple_run.bat`)
Windows 터미널에서 깔끔하게 실행하는 진입점입니다.

이 파일은 건드리지 마세요.

## 다른 RTL 프로젝트에서 사용하기

1. 이 폴더 전체를 복사: `/<project>/sim/vivado`
2. `scripts/simple_run.tcl` 맨 앞부분만 수정
3. `simple_run.bat` 실행

## 출력 위치

- 로그: `logs/sim.log`
- 파형 데이터: `build/sim.wdb` (Vivado에서 열 수 있음)

## 로그 해석

성공 시:
```
[INFO] Starting Vivado simulation...
[INFO] Step 1/3: Compiling with xvlog...
[INFO] Step 2/3: Elaborating with xelab...
[INFO] Step 3/3: Running with xsim...
[INFO] Simulation completed successfully!
```

실패 시 에러 메시지가 로그에 표시됩니다.
