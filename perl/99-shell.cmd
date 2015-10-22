@echo off
cd /D %~dp0
call settings.cmd
call ..\unxutils.cmd

cd %ARCH%

call cmd

cd ..
