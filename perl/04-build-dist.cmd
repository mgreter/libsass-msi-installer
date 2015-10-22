@echo off
cd /D %~dp0
call settings.cmd
call ..\unxutils.cmd

cd %ARCH%

git clone https://github.com/sass/perl-libsass.git

cd perl-libsass

call cpanm --installdeps .
call perl Makefile.PL
call dmake -P10 dist

cd ..

cd ..
