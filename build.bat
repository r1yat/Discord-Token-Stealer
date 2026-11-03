@echo off
cd /d "%~dp0"
:menu
cls
echo ================================
echo    r1yat
echo ================================
echo  [1] Install dependencies
echo  [2] Run
echo  [3] Run (dry-run)
echo  [4] Build EXE
echo  [5] Build EXE (stealth)
echo  [6] Exit
echo.
set /p c="> "
if "%c%"=="1" (python setup.py & pause & goto menu)
if "%c%"=="2" (python r1yat.py & goto menu)
if "%c%"=="3" (python r1yat.py --dry-run & pause & goto menu)
if "%c%"=="4" (python r1yat_builder.py & pause & goto menu)
if "%c%"=="5" (python r1yat_builder.py --stealth & pause & goto menu)
if "%c%"=="6" exit /b
goto menu