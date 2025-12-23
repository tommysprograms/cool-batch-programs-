@echo off
title vdv debug
color 42
cls

set "LOG=%TEMP%\vdv_debug.txt"
echo [debug] vdv_debug started at %DATE% %TIME% > "%LOG%"
echo [debug] current directory: %CD% >> "%LOG%"

echo [debug] Testing PowerShell availability... >> "%LOG%"
powershell -NoProfile -Command "Write-Host 'PowerShell_OK'" >> "%LOG%" 2>&1

echo. >> "%LOG%"
echo --- Directory listing of current folder --- >> "%LOG%"
dir /a /b >> "%LOG%" 2>&1

echo. >> "%LOG%"
echo --- CONTENTS of first 20 lines of this file (for quick check) --- >> "%LOG%"
for /f "usebackq skip=0 delims=" %%L in ("%~f0") do (
  echo %%L >> "%LOG%"
) 

rem Truncate log view in Notepad if it's very large - open it so you can read errors
notepad "%LOG%"

echo.
echo Log opened in Notepad: "%LOG%"
pause
