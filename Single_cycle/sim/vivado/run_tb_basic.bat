@echo off
setlocal

set "SCRIPT_DIR=%~dp0"
set "TCL_SCRIPT=%SCRIPT_DIR%scripts\run_tb.tcl"

if not exist "%TCL_SCRIPT%" (
  echo [ERROR] Tcl script not found: %TCL_SCRIPT%
  exit /b 1
)

where vivado >nul 2>&1
if errorlevel 1 (
  echo [ERROR] vivado command was not found in PATH.
  echo [ERROR] Run this inside Vivado Tcl Shell/Terminal or add Vivado bin to PATH.
  exit /b 1
)

echo [INFO] Starting Vivado batch simulation for testbench_basic...
vivado -mode batch -source "%TCL_SCRIPT%" -tclargs basic

set "EXIT_CODE=%ERRORLEVEL%"
if not "%EXIT_CODE%"=="0" (
  echo [ERROR] Simulation failed with exit code %EXIT_CODE%.
  exit /b %EXIT_CODE%
)

echo [INFO] Simulation completed successfully.
exit /b 0
