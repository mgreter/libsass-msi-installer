@echo off
SETLOCAL
cd /D %~dp0
call ..\unxutils.cmd
call ..\settings.cmd

if not exist %XARCH% mkdir %XARCH%

cd %XARCH%

REM call copy ...\%ARCH%\*.h .
REM call copy ...\%ARCH%\sassc.exe .
REM call copy ...\%ARCH%\libsass.dll .

cd ..
