# Single-cycle Vivado 시뮬레이션 (처음부터 새로 구성)

이 폴더는 새로 구성한 재사용 가능한 Vivado CLI 시뮬레이션 플로우를 제공합니다.

현재 대상:
- testbench_basic만 지원 (`cpu_tb`)

## 폴더 구성

- `scripts/run_tb.tcl`: 재사용 가능한 Vivado 배치 실행기 (테스트벤치 선택은 `-tclargs` 사용)
- `run_tb_basic.bat`: `testbench_basic` 실행용 Windows 런처
- `build/basic`: 생성되는 시뮬레이션 산출물 (`xsim.dir`, `.wdb`, 임시 파일)
- `logs/basic`: 실행 로그 (`xvlog`, `xelab`, `xsim`, 요약 실행 로그)

## 사전 준비

- Vivado 설치
- `vivado` 명령이 PATH에 등록되어 있어야 함 (또는 Vivado 제공 터미널 사용)

## 빠른 시작 (Windows 터미널)

이 폴더(`Single_cycle/sim/vivado`)에서 실행:

```bat
run_tb_basic.bat
```

## Vivado 배치 모드 직접 실행

```bat
vivado -mode batch -source scripts/run_tb.tcl -tclargs basic
```

## Vivado Tcl 콘솔에서 실행

이미 Vivado Tcl 셸 안에 있다면:

```tcl
cd <path-to>/Single_cycle/sim/vivado
set argv [list basic]
source scripts/run_tb.tcl
```

## 출력 및 디버깅

- 빌드 산출물: `build/basic`
- 로그: `logs/basic`
  - `run_basic.log`
  - `xvlog_basic.log`
  - `xelab_basic.log`
  - `xsim_basic.log`

성공 시 테스트벤치에서 `All tests passed!`를 출력합니다.

## 재사용 확장 가이드

나중에 다른 테스트벤치를 추가하려면:

1. `scripts/run_tb.tcl`을 엽니다.
2. `supported_tbs`에 항목 하나를 추가합니다:
   - `top`
   - `tb_dir`
   - `tb_file`
   - `defines`
3. 아래처럼 실행합니다:

```bat
vivado -mode batch -source scripts/run_tb.tcl -tclargs <new_tb_name>
```

이 방식은 "테스트벤치를 한 번에 하나씩 실행"하는 워크플로를 유지하면서 공용 러너를 재사용할 수 있게 해줍니다.
