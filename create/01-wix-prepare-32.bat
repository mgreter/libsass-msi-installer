@echo off
SETLOCAL
set ARCH=x86
cd /D %~dp0

call %CD%\..\settings.cmd
if not exist %ARCH% mkdir %ARCH%

cd %ARCH%

REM call copy ...\%ARCH%\*.h .
REM call copy ...\%ARCH%\sassc.exe .
REM call copy ...\%ARCH%\libsass.dll .

cd ..
