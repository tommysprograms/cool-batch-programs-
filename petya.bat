@echo off
CHCP 65001 >nul
setlocal ENABLEDELAYEDEXPANSION
title petya
mode con cols=80 lines=25

:: ======================
:: 1. Fake CHKDSK Stage
:: ======================
for /L %%p in (0,1,100) do (
    cls
    echo Repairing file system on C:
    echo.
    echo The type of the file system is NTFS.
    echo One of your disks contains errors and needs to be repaired. This process
    echo may take several hours to complete. It is strongly recommended to let it
    echo complete.
    echo.
    echo WARNING: DO NOT TURN OFF YOUR PC^^! IF YOU ABORT THIS, YOU COULD
    echo DESTROY ALL OF YOUR DATA^^! PLEASE ENSURE THAT YOUR POWER CABLE IS PLUGGED
    echo IN^^!
    echo.
    echo CHKDSK is repairing sectors... %%p%% complete.
    
    :: Random delay (1–2 sec)
    set /a delay=!random! %% 2 + 1
    timeout /t !delay! >nul
)

:: ======================
:: 2. Skull Payload
:: ======================
:skull_loop
color 4F
call :skull
timeout /t 1 >nul
color F4
call :skull
timeout /t 1 >nul

:: check for keypress
choice /c ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789 /n /t 0 /d Z >nul
if errorlevel 1 goto ransom
goto skull_loop

:skull
cls
echo                     uu$$$$$$$$$$$uu
echo                   uu$$$$$$$$$$$$$$$$$uu
echo                  u$$$$$$$$$$$$$$$$$$$$$u
echo                  u$$$$$$$$$$$$$$$$$$$$$u
echo                u$$$$$$$$$$$$$$$$$$$$$$$$$u
echo                u$$$$$$$$$$$$$$$$$$$$$$$$$u
echo                u$$$$$$*   *$$$*   *$$$$$$u
echo                *$$$$*      u$u       $$$$*
echo                 $$$u       u$u       u$$$
echo                 $$$u      u$$$u      u$$$
echo                  *$$$$uu$$$   $$$uu$$$$*
echo                   *$$$$$$$*   *$$$$$$$*
echo                     u$$$$$$$u$$$$$$$u
echo                      u$*$*$*$*$*$*$u
echo           uuu        $$u$ $ $ $ $u$$       uuu 
echo          u$$$$        $$$$$u$u$u$$$       u$$$$
echo           $$$$$uu      *$$$$$$$$$*     uu$$$$$$
echo         u$$$$$$$$$$$uu    *****    uuuu$$$$$$$$$
echo         $$$$***$$$$$$$$$$uuu   uu$$$$$$$$$***$$$*
echo          ***      **$$$$$$$$$$$uu **$***
echo                   uuuu **$$$$$$$$$$uuu
echo          u$$$uuu$$$$$$$$$uu **$$$$$$$$$$$uuu$$$
echo          $$$$$$$$$$****           **$$$$$$$$$$$*
echo            *$$$$$*                      **$$$$**
echo              $$$*     PRESS ANY KEY^^!    $$$$*
exit /b

:ransom
cls
color 4F
echo You became victim of the PETYA RANSOMWARE^^!
echo.
echo █████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████
echo.
echo The hard disks of your computer have been encrypted with a military grade
echo encryption algorithm. There is no way to restore your files without a special
echo key. You can purchase this key on the Google page shown in step 2.
echo.
echo To purchase your key and restore your data, please follow these three easy   
echo steps:
echo.
echo 1. Download the Google browser at "https://www.google.com/intl/it/chrome/". If you need 
echo    help, please search for "access google page".
echo 2. Visit the following site with the Google Browser:
echo.
echo    https://github.com/tommysprograms/cool-batch-programs-
echo.
echo 3. Enter your person decryption code there:
echo.
echo    testdecryptioncode
echo.
echo If you already purchased your key, please enter it below.
echo.

set /p "Key=Enter key: " >nul

if "%Key%"=="testkey" goto decrypt
goto error

:decrypt
echo x=msgbox("File decryption successful!",0,"Decryption attempt...") > decryption.vbs
start decryption.vbs
goto :eof

:error
echo x=msgbox("Incorrect key!",0,"Error 404") > error.vbs
start error.vbs

