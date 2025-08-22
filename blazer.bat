@echo off
CHCP 65001 >nul
echo /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
echo \ CSEG:OFFS OPCODE        PSEUDO INSTR.  /
echo / 1F47:0103 90            MOP            \
echo \ 1F47:0104 0000          ADD [BX+SI],AL /
echo / 1F47:0106 E80000        CALL 0109      \
echo \ 1F47:0109 5D            POP BP         /
echo / 1F47:010A 81ED0901      SUB BP,0109    \
echo \/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
echo           -=≡ßL/\ZΣR≡=- (c)'2025
timeout 10 >nul
cls
goto :eof

            