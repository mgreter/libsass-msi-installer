@echo off
SETLOCAL
call ..\settings.cmd

if not exist 64 mkdir 64

cd 64

REM call copy ...\32\*.h .
REM call copy ...\32\sassc.exe .
REM call copy ...\32\libsass.dll .

cd ..
