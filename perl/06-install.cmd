@echo off
SETLOCAL
cd /D %~dp0
call settings.cmd
call ..\unxutils.cmd

cd dist\%ARCH%\CSS-Sass-%RELVERSION%

call cpanm --installdeps .
call perl Makefile.PL
call dmake -P10 install
call dmake test

cd ..\..\..
