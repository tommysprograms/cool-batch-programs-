@echo off
title merry Christmas :)
color 42
cls

set "PSERR=%TEMP%\vdv_ps_err.txt"
if exist "%PSERR%" del "%PSERR%" >nul 2>&1

powershell -NoProfile -ExecutionPolicy Bypass -Command "try { $lines = Get-Content -LiteralPath '%~f0' -Encoding UTF8 -ErrorAction Stop } catch { $lines = Get-Content -LiteralPath '%~f0' }; $found = $false; $out = [System.Collections.Generic.List[string]]::new(); foreach ($l in $lines) { if ($found) { $out.Add($l) } elseif ($l -eq '__ART__') { $found = $true } }; $out | Out-File -FilePath (Join-Path $env:TEMP 'vdv_art.txt') -Encoding utf8; foreach ($line in $out) { Write-Host $line -ForegroundColor Green }" 2> "%PSERR%"

rem show stderr only if non-empty
if exist "%PSERR%" (
  for %%I in ("%PSERR%") do if not "%%~zI"=="0" (
    echo.
    echo --- PowerShell STDERR ---
    type "%PSERR%"
    echo --- end STDERR ---
    pause
  )
  del "%PSERR%" >nul 2>&1
)

echo.
timeout /t 20 >nul
cls
goto :EOF

__ART__
               
                 ██
               ██████
             ██████████
               ██████
             ██████████        Happy Christmas wishes the community
           ██████████████    
             ███████████
           ██████████████
         ██████████████████ 
       ██████████████████████           of virus lovers around the world!
                 ██
                 ██
                
                
                
                      Oh yeah, we then also wish you a lot of fun
                      as you search for your data on this hard disk!
                
                
                                VDV, December 2025.
