@echo off
SETLOCAL

git clone https://github.com/sass/perl-libsass.git

cd perl-libsass

perl Makefile.PL
dmake -P10 dist

cd ..

pause