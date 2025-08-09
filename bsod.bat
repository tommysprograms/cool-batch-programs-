@echo off
CHCP 65001 >nul
MODE CON COLS=60 LINES=30
color 17
title BSOD

setlocal ENABLEDELAYEDEXPANSION

:bsod
for %%p in (0 5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100) do (
    cls
    echo.
    echo.
    echo.
    echo.
    echo.
    echo.
    echo                     ██
    echo                    ██
    echo     ██████        ██
    echo     ██████       ██
    echo     ██████      ██
    echo                ██
    echo                ██
    echo                ██
    echo                ██  
    echo     ██████      ██
    echo     ██████       ██
    echo     ██████        ██
    echo                    ██
    echo                     ██
    echo.
    echo.
    echo     Your PC ran into a problem and needs to restart. We're just collecting 
    echo     some error info, and then we'll restart for you.
    echo.
    echo.
    echo.
    echo     %%p%% complete
    echo.
    echo.
    echo.
    echo    ----------
    echo   ^|          ^| For more information about this issue and possible fixes, visit https://github.com/tommysprograms/cool-batch-programs-
    echo   ^|    qr    ^|
    echo   ^|   code   ^| 
    echo   ^|          ^| If you call a support person, give them this info:
    echo    ----------  Stop code: CRITICAL_PROCESS_DIED
    echo.
    echo.
    echo.
    timeout /t 1 >nul
)
