@echo off
color 1F 
title BSOD2
echo A problem has been detected and Windows has been shut down to prevent damage
echo to your computer.
echo.
echo If this is the first time you've seen this stop error screen,
echo restart your computer. If this screen appears again, follow
echo these steps:
echo.
echo Check to make sure any new hardware or software is properly installed.
echo If this is a new installation, ask your hardware or software manufacturer
echo for any Windows updates you might need.
echo.
echo If problems continue, disable or remove any newly installed hardware
echo or software. Disable BIOS memory options such as caching or shadowing.
echo If you need to use safe mode to remove or disable components, restart
echo your computer, press F8 to select Advanced Startup Options, and then
echo select Safe Mode.
echo.
echo Technical information:
echo.
echo *** STOP: 0x000000F4 (0x00000003, 0x81905D40, 0x81905EAC, 0x8BC23CFO)
echo.
echo.
echo Beginning dump of physical memory
echo Physical memory dump completed.
echo Contact your system administrator or technical support group for further
echo assistance.
timeout 20 >nul
cls


