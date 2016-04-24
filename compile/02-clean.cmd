@echo off
cd /D %~dp0
call ..\mingw.cmd
if not exist %ARCH% mkdir %ARCH%

mingw32-make -C "%SASS_LIBSASS_PATH%" clean
mingw32-make -C "%SASS_SASSC_PATH%" clean
