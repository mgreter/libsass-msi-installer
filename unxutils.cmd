@echo off
set PATH=%~dp0tools;%PATH%
IF %ARCH% == 64 set XARCH=x64
IF %ARCH% == 32 set XARCH=x86
