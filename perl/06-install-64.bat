@echo off
SETLOCAL
call %~dp0\settings.cmd

SET PERLPATH=%~dp0\64\perl
SET PATH=C:\Windows\system32

SET PATH=%PERLPATH%\perl\site\bin;%PATH%
SET PATH=%PERLPATH%\perl\bin;%PATH%
SET PATH=%PERLPATH%\c\bin;%PATH%

cd /D %~dp0\dist\64\CSS-Sass-%RELVERSION%

call cpanm --installdeps .
call perl Makefile.PL
call dmake -P10 install
call dmake test

cd ..\..\..