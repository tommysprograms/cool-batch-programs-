@echo off
setlocal DisableDelayedExpansion

:start
title WIN-DOS 1.31
color 0Fset /a delay=!random! %% 2+1
timeout /t !delay! >nul
echo Starting WIN-DOS...
timeout /t 3 >nul
echo.
echo HIMEM is testing extended memory...
timeout /t 3 >nul
cls

:main
echo Starting WIN-DOS...
echo.
echo HIMEM is testing extended memory...done.
echo.
set /p "usercmd=C:\> "

if /I "%usercmd%"=="command" goto command
if /I "%usercmd%"=="exit" goto exit
if /I "%usercmd%"=="reboot" goto reboot
if /I "%usercmd%"=="dir" goto dir
if /I "%usercmd%"=="cd windos" goto cdwindos
if /I "%usercmd%"=="readme" goto readme
if /I "%usercmd%"=="dir command.com" goto dircommand
if /I "%usercmd%"=="dir exit.com" goto dirsys
if /I "%usercmd%"=="dir reboot.com" goto dirreboot
if /I "%usercmd%"=="dir readme.com" goto dirreadme
goto main

:command
echo.
echo Microsoft(R) WIN-DOS(R) Version 1.31
echo              (C)Copyright tommy February 3 2026.
echo.
goto main2

:main2
echo.
set /p "usercmd=C:\> "

if /I "%usercmd%"=="command" goto command
if /I "%usercmd%"=="exit" goto exit
if /I "%usercmd%"=="reboot" goto reboot
if /I "%usercmd%"=="dir" goto dir
if /I "%usercmd%"=="cd windos" goto cdwindos
if /I "%usercmd%"=="readme" goto readme
if /I "%usercmd%"=="dir command.com" goto dircommand
if /I "%usercmd%"=="dir exit.com" goto direxit
if /I "%usercmd%"=="dir reboot.com" goto dirreboot
if /I "%usercmd%"=="dir readme.com" goto dirreadme
goto main2

:exit
cls
endlocal
exit /b

:reboot
cls
goto start

:dir
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\
echo.
echo WINDOS                     02-03-26   7:04p
echo COMMAND  COM        54,645 02-03-26   7:04p
echo EXIT     COM        23     02-03-26   7:05p
echo REBOOT   COM        20     02-03-26   7:06p
echo README   COM        379    02-03-26   7:46p
echo         4 file(s)         54,688 bytes
echo                    1,234,567,890 bytes free
goto main2

:cdwindos
echo.
set /p "usercmd=C:\WINDOS>"

if /I "%usercmd%"=="graphics" goto graphics
if /I "%usercmd%"=="power" goto power
if /I "%usercmd%"=="sys" goto sys
if /I "%usercmd%"=="cd.." goto main2
if /I "%usercmd%"=="dir" goto dirwindos
if /I "%usercmd%"=="dir graphics.com" goto dirgraphics
if /I "%usercmd%"=="dir sys.com" goto dirsys
if /I "%usercmd%"=="dir power.exe" goto dirpower

:graphics
goto cdwindos

:power
echo.
echo Power Manager (POWER.EXE) not installed.
echo.
goto cdwindos

:sys
echo Required parameter missing
goto cdwindos

:dirwindos
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\WINDOS
echo.
echo ..                         02-03-26   7:33p
echo GRAPHICS COM        19,742 02-03-26   7:33p
echo SYS      COM         9,432 02-03-26   7:33p
echo POWER    EXE         8,052 02-03-26   7:34p
echo         4 file(s)         37,226 bytes 
echo                    1,234,567,890 bytes free 
echo.
goto cdwindos
         
:readme
echo.
echo This script is still work in progress as I'll be adding new files with their
echo respective functions within real-life MS-DOS (cuz WIN-DOS is obviously
echo inspired by MS-DOS after all) as the days go by. I'm liking the way the
echo script's coding is going up to now so I'll definitely be continuing to work
echo on this :)
echo.
echo - tommy, the writer of WIN-DOS
goto main2

:dircommand
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\
echo.
echo COMMAND  COM        54,645 02-03-26   7:04p
echo         1 file(s)         54,645 bytes
echo                    1,234,567,890 bytes free
goto main2

:direxit
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\
echo.
echo EXIT     COM          23   02-03-26   7:04p
echo         1 file(s)         23 bytes
echo                    1,234,567,890 bytes free
goto main2

:dirreboot
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\
echo.
echo REBOOT  COM             20 02-03-26   7:04p
echo         1 file(s)         20 bytes
echo                    1,234,567,890 bytes free
goto main2

:dirreadme
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\
echo.
echo README  COM            379 02-03-26   7:46p
echo         1 file(s)         379 bytes
echo                    1,234,567,890 bytes free
goto main2

:dirgraphics
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo GRAPHICS COM        19.742 02-03-26   7:33p
echo         1 file(s)         19,742 bytes
echo                    1,234,567,890 bytes free
goto cdwindos

:dirsys
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo SYS      COM         9,432 02-03-26   7:33p
echo         1 file(s)         9,432 bytes
echo                    1,234,567,890 bytes free
goto cdwindos

:dirpower
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo POWER    EXE         8,052 02-03-26   7:34p
echo         1 file(s)         8,052 bytes
echo                    1,234,567,890 bytes free
goto cdwindos
