@echo off
SETLOCAL
call ..\settings.cmd

if not exist 32 mkdir 32

cd 32

REM call copy ...\32\*.h .
REM call copy ...\32\sassc.exe .
REM call copy ...\32\libsass.dll .

cd ..
