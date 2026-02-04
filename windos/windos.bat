@echo off
setlocal enabledelayedexpansion
title SETUP

:start
color 0F
echo Starting WIN-DOS...
timeout 3 >nul
echo.
echo Please wait, SETUP is verifying your system configuration...
timeout 5 >nul
echo.
echo System configuration is eligible for installation. Now initializing SETUP...
timeout 3 >nul
cls
goto setup

:setup
color 1F
echo.
echo  Microsoft WIN-DOS Setup
echo  -----------------------
echo.
echo          Welcome to Setup.
echo.
echo          The Setup program prepares WIN-DOS 1.40 to run on your
echo          computer.
echo.           
echo            - To set up WIN-DOS now, press ENTER.
echo.
echo            - To exit Setup without installing WIN-DOS, exit out this script.
echo.
echo          To continue Setup, press ENTER.
pause >nul
goto uds

:uds
cls
echo.
echo  Microsoft WIN-DOS Setup
echo  -----------------------
echo.
echo           Setup needs to configure the unallocated space on your
echo           hard disk for use with WIN-DOS. None of your existing
echo           files will be affected.
echo.
echo           To have Setup configure the space for you, press ENTER.
pause >nul
goto restarting

:restarting
cls
echo.
echo  Microsoft WIN-DOS Setup
echo  -----------------------
echo.
echo           Setup will restart your computer now.
echo.
echo           Please make sure Setup Disk 1 is in drive A.
echo.
echo            - To continue, press ENTER.
pause >nul  
goto start2

:start2
cls
color 0F
echo Starting WIN-DOS...
timeout 3 >nul
goto format

:format
color 1F
for /L %%p in (0,1,100) do (
cls
echo.
echo  Microsoft WIN-DOS Setup
echo  -----------------------
echo.
echo           Formatting Hark Disk Drives
echo.
echo           You have configured some or all of your disk space for use
echo           with WIN-DOS. This space is being formatted now.
echo.
echo           Formatting drive C, %%p%% of drive formatted.

set /a delay=!random! %% 2+1
timeout /t !delay! >nul

)
goto analyzing

:analyzing
cls
echo.
echo  Microsoft WIN-DOS Setup
echo  -----------------------
echo.
echo           Formatting Hark Disk Drives
echo.
echo           You have configured some or all of your disk space for use
echo           with WIN-DOS. This space is being formatted now.
echo.
echo           Please wait, Setup is analyzing your hard disk...
timeout 5 >nul
cls
goto directory

:directory
echo.
echo  Microsoft WIN-DOS Setup
echo  -----------------------
echo.
echo           Setup will place your WIN-DOS files in the following 
echo           directory:
echo.
echo           C:\WINDOS
echo.
echo           To place WIN-DOS files in this directory, press ENTER.
pause >nul
goto disk1

:disk1
for /L %%p in (0,1,25) do (
cls
echo.
echo  Microsoft WIN-DOS Setup
echo  -----------------------
echo.
echo           Now is a great time to fill out your registration card. When
echo           you send it in, Microsoft will:
echo.
echo              - Keep you up to date on the latest product improvements.
echo              - Let you know about related Microsoft products.
echo.
echo           %%p%% complete

set /a delay=!random! %% 2+1
timeout /t !delay! >nul

)
goto disk2insert

:disk2insert
cls
echo.
echo  Microsoft WIN-DOS Setup
echo  -----------------------
echo.
echo           Please insert the following disk in drive A:
echo.
echo           Setup Disk #2
echo.
echo           When you are ready to continue, press ENTER.
pause >nul
goto disk2

:disk2
for /L %%p in (26,27,58) do (
cls
echo.
echo  Microsoft WIN-DOS Setup
echo  -----------------------
echo.
echo           Increase your hard disk space with DriveSpace. WIN-DOS
echo           gives you a safe, easy way to increase disk capacity by
echo           integrating data compression into the operating system.
echo.
echo           If you are not already using disk compression, you can
echo           increase your disk space by typing DRVSPACE at the command
echo           prompt as soon as you complete this setup program
echo.
echo           %%p%% complete

set /a delay=!random! %% 2+1
timeout /t !delay! >nul

)
goto disk3insert

:disk3insert
cls
echo.
echo  Microsoft WIN-DOS Setup
echo  -----------------------
echo.
echo           Please insert the following disk in drive A:
echo.
echo           Setup Disk #3
echo.
echo           When you are ready to continue, press ENTER.
pause >nul
goto disk3

:disk3
for /L %%p in (59,60,100) do (
cls
echo.
echo  Microsoft WIN-DOS Setup
echo  -----------------------
echo.
echo           Protect your data^^!
echo.
echo              - Anti-Virus detects and removes computer viruses.
echo              - Backup safeguards your files.
echo              - Improved Undelete provides three levels of undelete security
echo.
echo           WIN-DOS includes both WIN-DOS and Windows versions of these
echo           three data-protecting services.
echo.
echo           %%p%% complete

set /a delay=!random! %% 2+1
timeout /t !delay! >nul

)  
goto diskremove

:diskremove
cls
echo.
echo  Microsoft WIN-DOS Setup
echo  -----------------------
echo.
echo           Remove disks from all floppy disk drives, 
echo           and then press ENTER.
pause >nul
goto setupcomplete

:setupcomplete
cls
echo.
echo  Microsoft WIN-DOS Setup
echo  -----------------------
echo.
echo           WIN-DOS 1.40 is now installed on your computer.
echo.
echo              - To restart your computer with WIN-DOS 1.40,
echo                press ENTER.
pause >nul
goto start3

:start3
cls
setlocal disabledelayedexpansion

title WIN-DOS 1.40
color 0F
echo Starting WIN-DOS...
timeout 3 >nul
echo.
echo HIMEM is testing extended memory...
timeout 3 >nul
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
if /I "%usercmd%"=="dir exit.com" goto direxit
if /I "%usercmd%"=="dir reboot.com" goto dirreboot
if /I "%usercmd%"=="dir readme.com" goto dirreadme
goto main

:command
echo.
echo Microsoft(R) WIN-DOS(R) Version 1.40
echo              (C)Copyright tommy February 3 2026.
echo.
goto main2

:main2
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
goto start3

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
echo         5 file(s)         55,067 bytes
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
if /I "%usercmd%"=="abraxas" goto abraxas
if /I "%usercmd%"=="dir abraxas.com" goto dirabraxas
if /I "%usercmd%"=="apple" goto apple
if /I "%usercmd%"=="dir apple.exe" goto dirapple
if /I "%usercmd%"=="blazer" goto blazer
if /I "%usercmd%"=="dir blazer.com" goto dirblazer
if /I "%usercmd%"=="cookie" goto cookie
if /I "%usercmd%"=="dir cookie.exe" goto dircookie
if /I "%usercmd%"=="sebal" goto sebal
if /I "%usercmd%"=="dir sebal.exe" goto dirsebal

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
echo ABRAXAS  COM         1,179 02-04-26  12:04a
echo APPLE    EXE         1,265 02-04-26  12:17a
echo BLAZER   COM           491 02-04-26  12:28a
echo COOKIE   EXE        11,752 02-04-26  12:36a
echo         8 file(s)         51,913 bytes 
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

:abraxas
cls
color 4
echo.
echo  ███████████████████████████████████████████████████████████████████████████████████████████
echo  █                                                                                         █           
echo  █     █████╗     ██████╗     ██████╗      █████╗     ██╗  ██╗     █████╗     ███████╗     █  
echo  █    ██╔══██╗    ██╔══██╗    ██╔══██╗    ██╔══██╗    ╚██╗██╔╝    ██╔══██╗    ██╔════╝     █ 
echo  █    ███████║    ██████╔╝    ██████╔╝    ███████║     ╚███╔╝     ███████║    ███████╗     █          
echo  █    ██╔══██║    ██╔══██╗    ██╔══██╗    ██╔══██║     ██╔██╗     ██╔══██║    ╚════██║     █  
echo  █    ██║  ██║    ██████╔╝    ██║  ██║    ██║  ██║    ██╔╝ ██╗    ██║  ██║    ███████║     █
echo  █    ╚═╝  ╚═╝    ╚═════╝     ╚═╝  ╚═╝    ╚═╝  ╚═╝    ╚═╝  ╚═╝    ╚═╝  ╚═╝    ╚══════╝     █
echo  █                                                                                         █
echo  ███████████████████████████████████████████████████████████████████████████████████████████                                                                       
echo.
timeout 10 >nul
cls
goto cdwindos

:dirabraxas
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo ABRAXAS  COM         1,179 02-04-26  12:04a
echo         1 file(s)         1,179 bytes
echo                    1,234,567,890 bytes free
goto cdwindos

:apple
cls
color 4F
echo.
echo.
echo                               #@
echo                             ,@@@
echo                           '@@@@
echo                          #@@@@#
echo                         '@@@@@,
echo                         @@@@@@
echo                        '@@@@
echo                         @@#
echo               #@@@@@+`        +@@@@@@#
echo             @@@@@@@@@@@+;#@@@@@@@@@@@@@@+
echo           '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#       
echo          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#         -You ate my Apple-      
echo         ,@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#     Now i'm gonna eat your PC!!!
echo         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo         @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo         '@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@#
echo           `@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@'
echo             '@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo              #@@@@@@@@@@@@@@@@@@@@@@@@@@
echo                #@@@@@@@@';;+@@@@@@@@:
echo                 :@@@@+        @@@@@`
echo.
echo.
timeout 10 >nul
cls
goto cdwindos

:dirapple
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo APPLE  EXE           1,265 02-04-26  12:17a
echo         1 file(s)         1,265 bytes
echo                    1,234,567,890 bytes free
goto cdwindos

:blazer
echo /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
echo \ CSEG:OFFS OPCODE        PSEUDO INSTR.  /
echo / 1F47:0103 90            MOP            \
echo \ 1F47:0104 0000          ADD [BX+SI],AL /
echo / 1F47:0106 E80000        CALL 0109      \
echo \ 1F47:0109 5D            POP BP         /
echo / 1F47:010A 81ED0901      SUB BP,0109    \
echo \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
echo           -=≡ßL/\ZΣR≡=- (c)'2025
goto cdwindos

:dirblazer
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo BLAZER  COM            491 02-04-26  12:28a
echo         1 file(s)         491 bytes
echo                    1,234,567,890 bytes free
goto cdwindos

:cookie
cls
for /L %%i in (1,1,22) do echo.
echo                                                                                            I want a COOKIE !
for /L %%i in (1,1,22) do echo.

set /p "cookie=> "

rem Check for empty input
if "%cookie%"=="" goto blank

if /I "%cookie%"=="cookie" goto cookieisgiven
if /I "%cookie%"=="no" goto hate

rem Default if input doesn't match
cls
for /L %%i in (1,1,22) do echo.
echo                                                                                    Just give me a cookie already !
for /L %%i in (1,1,22) do echo.

set /p "cookie=> "

if "%cookie%"=="" goto blank
if /I "%cookie%"=="cookie" goto cookieisgiven
if /I "%cookie%"=="no" goto hate
goto :eof

:cookieisgiven
cls
for /L %%i in (1,1,22) do echo.
echo                                                                                                BURPS...
for /L %%i in (1,1,22) do echo.
timeout /t 10 >nul
cls
goto cdwindos

:blank
cls
for /L %%i in (1,1,22) do echo.
echo                                                                                    Did you hear me? I want a COOKIE !
for /L %%i in (1,1,22) do echo.

set /p "cookie=> "

if "%cookie%"=="" goto blank
if /I "%cookie%"=="cookie" goto cookieisgiven
if /I "%cookie%"=="no" goto hate
goto cdwindos

:hate
cls
for /L %%i in (1,1,22) do echo.
echo                                                                                      You won't give it to me, huh?
for /L %%i in (1,1,22) do echo.
timeout /t 5 >nul
cls
goto :eof

:dircookie
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo COOKIE  EXE         11,752 02-04-26  12:36a
echo         1 file(s)         11,752 bytes
echo                    1,234,567,890 bytes free
goto cdwindos

:sebal
echo Sorry kid.
echo You-how dare-brushed off my warning. As I warned you, I deleted this file.
echo Though you recover the file, it will be deleted soon again.
echo Do you know who i am?
echo EVERYONE CALLS ME MOST POWERFUL VIRUS
echo THE GLORIOUS NAME IS ...
echo ###   S  E  B  A  L   ###
goto cdwindos

:dirsebal
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo SEBAL   EXE            305 02-04-26   1:08p
echo         1 file(s)         305 bytes
echo                    1,234,567,890 bytes free
goto cdwindos
