@echo off
rem cool script about a folder 
rem went mental several times while coding this cuz everything kept going wrong :(

:folder

echo   ________
echo  /        \  
echo  -------------------------------
echo  ^|                             ^|
echo  ^|                             ^|
echo  ^|                             ^|
echo  ^|                             ^|
echo  ^|                             ^|
echo  ^|                             ^| 
echo  ^|                             ^|
echo  ^|                             ^|
echo  -------------------------------
echo.
echo             New Folder
echo.
echo There's a folder on my desktop, but it wasn't here a minute ago...
timeout 3 >nul
echo.
echo What if there's something inside of it?
timeout 3 >nul
echo.
set /p "open=Open folder? (yes/no): "

if /I "%open%"=="yes" goto vbs
if /I "%open%"=="no" goto :eof

:vbs
cls
echo ____________________
echo ^|                   ^|\
echo ^|    ____________   ^|_\
echo ^|   /            / \   ^|
echo ^|  /  -----     /   \  ^|
echo ^| ^|  -----     /----   ^|
echo ^| ^|  -----    ^|        ^|
echo ^|  \ -----     \       ^|
echo ^|   \  -----    \      ^|
echo ^|    ^|           \     ^|
echo ^|   ----------    ^|    ^|
echo ^|  /          /   ^|    ^|
echo ^| ^|          ^|   /     ^|
echo ^|  \__________\_/      ^|
echo ^|                      ^|
echo ------------------------
echo.
echo        MSGBOX.vbs
echo.
echo The folder contains a VBS file.
timeout 3 >nul
echo.
echo But is it an innocent script or one to destroy my computer?
timeout 3 >nul
echo.
echo I guess we'll find out within.
echo.
timeout 3 >nul
set /p "open2= Open file? (yes/no): "

if /I "%open2%"=="yes" goto msgbox
if /I "%open2%"=="no" goto :eof

:msgbox
cls
echo  ---------------------------------------
echo  ^| just a message box                x ^|
echo  ^|-------------------------------------^|
echo  ^|                                     ^|
echo  ^|                                     ^|
echo  ^|  written by tommy 23/12/2025        ^|
echo  ^|                                     ^|
echo  ^|                  --------------     ^|
echo  ^|                 ^|              ^|    ^|
echo  ^|                 ^|      OK      ^|    ^|
echo  ^|                 ^|              ^|    ^|
echo  ^|                  --------------     ^|
echo  ---------------------------------------
echo.
echo The file causes a message box to open dictating credits for something.
timeout 3 >nul
echo.
echo What if this "something" is the file you've been running all along?
timeout 3 >nul 
echo.
echo It could be, but I guess we'll never really know...
timeout 3 >nul
echo.
echo Anyhow, goodbye.
timeout 3 >nul
cls

