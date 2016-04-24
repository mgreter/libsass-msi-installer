@echo off
set ARCH=64
call %~dp0\04-plugin.cmd math
call %~dp0\04-plugin.cmd glob
pause