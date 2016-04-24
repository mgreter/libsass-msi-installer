@echo off
SETLOCAL
cd /D %~dp0
call settings.cmd
call ..\unxutils.cmd

cd %ARCH%

git clone https://github.com/sass/perl-libsass.git

cd perl-libsass

call git checkout tags/%RELVERSION% -b %RELVERSION%
call cpanm --installdeps .
call perl Makefile.PL
call dmake -P10 dist > nul

cd ..

cd ..
