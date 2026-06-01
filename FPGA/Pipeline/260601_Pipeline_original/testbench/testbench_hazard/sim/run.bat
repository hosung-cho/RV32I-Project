@echo off
setlocal
cd /d "%~dp0"

REM Vivado path setup. Adjust the version path here if needed.
call C:\Xilinx\Vivado\2024.2\settings64.bat

echo Starting Vivado functional simulation...
call vivado -mode batch -source run_sim.tcl -notrace
set SIM_EXIT=%ERRORLEVEL%

echo.
echo =========================================
echo Cleaning temporary Vivado files
echo =========================================
if exist .Xil rmdir /S /Q .Xil
del /Q vivado*.jou vivado*.log >nul 2>&1

echo Cleanup complete
exit /b %SIM_EXIT%
@REM pause
