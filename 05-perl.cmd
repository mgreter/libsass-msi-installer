@echo off
SETLOCAL

cd perl
call 00-fetch-%ARCH%
call 01-prepare-%ARCH%
call 02-par-icon-%ARCH%
call 04-build-dist-%ARCH%
call 05-unpack-dist-%ARCH%
call 06-install-%ARCH%
call 08-pack-%ARCH%
cd ..
