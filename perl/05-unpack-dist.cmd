@echo off
cd /D %~dp0
call settings.cmd
call ..\unxutils.cmd

if exist dist\%ARCH% rd /S dist\%ARCH%
if not exist dist mkdir dist
if not exist dist\%ARCH% mkdir dist\%ARCH%

cd dist\%ARCH%

call ptar -x -v -z -vf ..\..\%ARCH%\perl-libsass\CSS-Sass-%RELVERSION%.tar.gz

cd ..\..