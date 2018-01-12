@echo off
SETLOCAL
cd /D %~dp0
call settings.cmd
call ..\unxutils.cmd


cd %ARCH%
git clone https://github.com/mgreter/Filesys-Notify-Simple
cd Filesys-Notify-Simple
perl Makefile.PL
dmake -P4 test
dmake install
cd ..\..

pause