@echo off
setlocal ENABLEDELAYEDEXPANSION

set "SCRIPT_DIR=%~dp0"
if "%SCRIPT_DIR:~-1%"=="\" set "SCRIPT_DIR=%SCRIPT_DIR:~0,-1%"
set "MODE=%~1"
set "FOLDER_MODE=timestamp"
set "GUI_MODE=0"
set "RUNS_DIR=%SCRIPT_DIR%\sim_out\vivado"
set "IMEM="
set "DMEM="

if "%MODE%"=="" set "MODE=cpu"

REM Parse optional args: latest, gui, imem, dmem (order-independent after mode)
for %%A in ("%~2" "%~3" "%~4" "%~5" "%~6") do (
  set "VAL=%%~A"
  if defined VAL (
    if /I "!VAL!"=="latest" (
      set "FOLDER_MODE=latest"
    ) else if /I "!VAL!"=="gui" (
      set "GUI_MODE=1"
    ) else if not defined IMEM (
      set "IMEM=!VAL!"
    ) else if not defined DMEM (
      set "DMEM=!VAL!"
    )
  )
)

echo [INFO] Project: Single_cycle
echo [INFO] Mode: %MODE%
echo [INFO] Folder mode: %FOLDER_MODE%
if "%GUI_MODE%"=="1" echo [INFO] GUI mode: on

if /I "%MODE%"=="clean" (
  echo [INFO] Removing %RUNS_DIR%
  if exist "%RUNS_DIR%" rmdir /s /q "%RUNS_DIR%"
  mkdir "%RUNS_DIR%" >nul 2>&1
  echo [DONE] Clean completed.
  exit /b 0
)

where vivado >nul 2>&1
if errorlevel 1 (
  echo [ERROR] vivado command not found in PATH.
  echo [HINT] Run this from Vivado TCL Shell or add Vivado bin to PATH.
  exit /b 1
)

if "%FOLDER_MODE%"=="latest" (
    set "RUN_DIR=%RUNS_DIR%\latest_%MODE%"
) else (
    for /f %%i in ('powershell -NoProfile -Command "Get-Date -Format yyyyMMdd_HHmmss"') do set "STAMP=%%i"
    if "%STAMP%"=="" set "STAMP=%RANDOM%"
    set "RUN_DIR=%RUNS_DIR%\%STAMP%_%MODE%"
)
mkdir "%RUN_DIR%" >nul 2>&1

echo [INFO] Run dir: %RUN_DIR%

pushd "%RUN_DIR%" >nul
vivado -mode batch -log "%RUN_DIR%\vivado.log" -journal "%RUN_DIR%\vivado.jou" -source "%SCRIPT_DIR%\run_vivado_entry.tcl" -tclargs "%SCRIPT_DIR%" "%MODE%" "%IMEM%" "%DMEM%" "%RUN_DIR%"
set "SIM_RC=%ERRORLEVEL%"
popd >nul

if not "%SIM_RC%"=="0" (
  echo [ERROR] Vivado simulation failed.
  exit /b 1
)

if "%GUI_MODE%"=="1" call :open_gui "%RUN_DIR%"

echo [DONE] Vivado simulation completed.
endlocal
exit /b 0

:open_gui
set "WDB_PATH="
for /f "delims=" %%i in ('dir /b /a:-d /o:-d "%~1\*.wdb" 2^>nul') do (
  set "WDB_PATH=%~1\%%i"
  goto :open_gui_found
)
echo [WARN] GUI mode requested, but no .wdb file found in %~1.
exit /b 0

:open_gui_found
echo [INFO] Opening Vivado GUI with WDB: !WDB_PATH!
start "" /D "%~1" vivado -nolog -nojournal "!WDB_PATH!"
exit /b 0
