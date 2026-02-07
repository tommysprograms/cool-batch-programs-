@echo off
CHCP 65001 >nul
setlocal DisableDelayedExpansion
color 0F

:start
title WIN-DOS 1.55
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
if /I "%usercmd%"=="a:" goto cda
if /I "%usercmd%"=="readme" goto readme
if /I "%usercmd%"=="dir command.com" goto dircommand
if /I "%usercmd%"=="dir exit.com" goto dirsys
if /I "%usercmd%"=="dir reboot.com" goto dirreboot
if /I "%usercmd%"=="dir readme.com" goto dirreadme

rem Default if input doesn't match
echo Bad command or file name
goto main2

:command
echo.
echo Microsoft(R) WIN-DOS(R) Version 1.55
echo              (C)Copyright tommy February 2026.
echo.
goto main2

:main2
color 0F
echo.
set /p "usercmd=C:\> "

if /I "%usercmd%"=="command" goto command
if /I "%usercmd%"=="exit" goto exit
if /I "%usercmd%"=="reboot" goto reboot
if /I "%usercmd%"=="dir" goto dir
if /I "%usercmd%"=="cd windos" goto cdwindos
if /I "%usercmd%"=="a:" goto cda
if /I "%usercmd%"=="readme" goto readme
if /I "%usercmd%"=="dir command.com" goto dircommand
if /I "%usercmd%"=="dir exit.com" goto direxit
if /I "%usercmd%"=="dir reboot.com" goto dirreboot
if /I "%usercmd%"=="dir readme.com" goto dirreadme

rem Default if input doesn't match
echo Bad command or file name
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
color 0F
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
if /I "%usercmd%"=="format" goto format
if /I "%usercmd%"=="dir format.com" goto dirformat
if /I "%usercmd%"=="keyb" goto keyb
if /I "%usercmd%"=="dir keyb.com" goto dirkeyb
if /I "%usercmd%"=="doskey" goto doskey
if /I "%usercmd%"=="dir doskey.com" goto dirdoskey
if /I "%usercmd%"=="deltree" goto deltree
if /I "%usercmd%"=="dir deltree.exe" goto dirdeltree
if /I "%usercmd%"=="fc" goto fc
if /I "%usercmd%"=="dir fc.exe" goto dirfc
if /I "%usercmd%"=="find" goto find
if /I "%usercmd%"=="dir find.exe" goto dirfind
if /I "%usercmd%"=="move" goto move
if /I "%usercmd%"=="dir move.exe" goto dirmove
if /I "%usercmd%"=="share" goto share
if /I "%usercmd%"=="dir share.exe" goto dirshare
if /I "%usercmd%"=="subst" goto subst
if /I "%usercmd%"=="dir subst.exe" goto dirsubst
if /I "%usercmd%"=="setup" goto setuperror
if /I "%usercmd%"=="dir setup.exe" goto dirsetup
if /I "%usercmd%"=="emm386" goto emm386
if /I "%usercmd%"=="dir emm386.exe" goto diremm386
if /I "%usercmd%"=="xcopy" goto xcopy
if /I "%usercmd%"=="dir xcopy.exe" goto dirxcopy
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

rem Default if input doesn't match
echo Bad command or file name
goto cdwindos

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
echo SEBAL    EXE           305 02-04-26   1:08p
echo FORMAT   COM        22,974 02-04-26   1:31p 
echo KEYB     COM        15,750 02-04-26   1:36p
echo DOSKEY   COM         5,861 02-04-26   1:45p
echo DELTREE  EXE        11,111 02-04-26   1:49p  
echo FC       EXE        18,650 02-04-26   1:55p
echo FIND     EXE         6,770 02-04-26   2:00p
echo MOVE     EXE        18,319 02-04-26   2:07p  
echo SHARE    EXE        10,912 02-04-26   2:11p 
echo SUBST    EXE        18,526 02-04-26   2:15p
echo SETUP    EXE        72,842 02-07-26  10:44a
echo EMM386   EXE       120,926 02-07-26  10:50a
echo XCOPY    EXE        16,930 02-07-26  11:16a
echo         21 file(s)        391,689 bytes 
echo                    1,234,567,890 bytes free 
echo.
goto cdwindos

:cda
echo.
echo.
echo Sector not found reading drive A
echo Current drive is no longer valid.
goto main2
         
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

:format
echo Required parameter missing
goto cdwindos

:dirformat
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo FORMAT  COM          22,974 02-04-26  1:31p
echo         1 file(s)         22,974 bytes
echo                    1,234,567,890 bytes free
goto cdwindos

:keyb
echo KEYB has not been installed
echo Active code page not available from CON device
goto cdwindos

:dirkeyb
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo KEYB    COM          15,750 02-04-26  1:36p
echo         1 file(s)         15,750 bytes
echo                    1,234,567,890 bytes free
goto cdwindos

:doskey
goto cdwindos

:dirdoskey
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo DOSKEY  COM          5,861 02-04-26   1:45p
echo         1 file(s)         5,861 bytes
echo                    1,234,567,890 bytes free
goto cdwindos

:deltree
echo Required parameter missing
goto cdwindos

:dirdeltree
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo DELTREE  EXE         11,111 02-04-26  1:49p
echo         1 file(s)         11,111 bytes
echo                    1,234,567,890 bytes free
goto cdwindos

:fc
echo FC: Insufficient number of filespecs
goto cdwindos

:dirfc
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo FC       EXE         18,650 02-04-26  1:55p
echo         1 file(s)         18,650 bytes
echo                    1,234,567,890 bytes free
goto cdwindos

:find
echo FIND: Required parameter missing
goto cdwindos

:dirfind
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo FIND     EXE         6,770 02-04-26   2:00p
echo         1 file(s)         6,770 bytes
echo                    1,234,567,890 bytes free
goto cdwindos

:move
echo Required parameter missing
goto cdwindos

:dirmove
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo MOVE     EXE         18,319 02-04-26  2:07p
echo         1 file(s)         18,319 bytes
echo                    1,234,567,890 bytes free
goto cdwindos

:share
goto cdwindos

:dirshare
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo SHARE    EXE         10,912 02-04-26  2:11p
echo         1 file(s)         10,912 bytes
echo                    1,234,567,890 bytes free
goto cdwindos

:subst
goto cdwindos

:dirsubst
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo SUBST    EXE        18,526 02-04-26  2:15p
echo         1 file(s)         18,526 bytes
echo                    1,234,567,890 bytes free
goto cdwindos

:setuperror
echo SETUP Error: WIN-DOS is already set up on this machine.
echo Press ENTER to return to your command prompt.
pause >nul
goto cdwindos

:dirsetup
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo SETUP   EXE         72,842 02-07-26  10:44a
echo         1 file(s)         72,842 bytes
echo                    1,234,567,890 bytes free
goto cdwindos

:emm386
echo EMM386 driver not installed.
goto cdwindos

:diremm386
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo EMM386   EXE       120,926 02-07-26  10:50a
echo         1 file(s)         120,926 bytes
echo                    1,234,567,890 bytes free
goto cdwindos

:xcopy
echo Invalid number of parameters
echo         0 file(s) copied
goto cdwindos

:dirxcopy
echo.
echo  Volume in drive C is WIN-DOS
echo  Volume Serial Number is 1234_ABCD
echo  Directory of C:\DOS
echo.
echo XCOPY   EXE         16,930 02-07-26  11:16a
echo         1 file(s)         16,930 bytes
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