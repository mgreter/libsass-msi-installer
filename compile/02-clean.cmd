@echo off
SETLOCAL
cd /D %~dp0
call ..\mingw.cmd
if not exist %ARCH% mkdir %ARCH%
%MAKE% -C "%SASS_LIBSASS_PATH%" clean
%MAKE% -C "%SASS_SASSC_PATH%" clean
