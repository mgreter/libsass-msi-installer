@echo off
SETLOCAL

cd create
call 01-wix-prepare-%ARCH%
call 05-wix-collect-%ARCH%
call 07-wix-compile-%ARCH%
call 09-wix-link-%ARCH%
cd ..
