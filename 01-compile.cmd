@echo off
SETLOCAL

cd compile
call 00-download-mingw-%ARCH%
call 01-git-checkout-%ARCH%
call 03-compile-%ARCH%
call 04-plugin-%ARCH%
cd ..
