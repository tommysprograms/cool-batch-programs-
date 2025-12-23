@echo off
setlocal ENABLEDELAYEDEXPANSION
title coooool flashing screen

:loop
color 0F
call :text
timeout /t 0 >nul
cls
color F0
call :text
timeout /t 0 >nul
cls

if errorlevel 1 goto text
goto loop

:text
cls
echo text goes here
exit /b
