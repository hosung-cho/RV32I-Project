@echo off
REM 가장 기본적인 Vivado 시뮬레이션 실행 배치
REM 스크립트는 건드리지 말고, simple_run.tcl에서만 설정값을 수정하세요

setlocal
set "SCRIPT_DIR=%~dp0"
set "TCL_SCRIPT=%SCRIPT_DIR%scripts\simple_run.tcl"

if not exist "%TCL_SCRIPT%" (
  echo [ERROR] Tcl script not found: %TCL_SCRIPT%
  exit /b 1
)

echo [INFO] Running Vivado batch simulation...
vivado -mode batch -nolog -nojournal -source "%TCL_SCRIPT%" -notrace

set "EXIT_CODE=%ERRORLEVEL%"
if not "%EXIT_CODE%"=="0" (
  echo [ERROR] Simulation failed with exit code %EXIT_CODE%.
  exit /b %EXIT_CODE%
)

echo [INFO] Simulation completed successfully.
exit /b 0
