@echo off
SETLOCAL
cd /D %~dp0
set PLUGIN=%1
call ..\mingw.cmd
if not exist %ARCH% mkdir %ARCH%
set SASS_PLUGIN_PATH=%SASS_LIBSASS_PATH%-%PLUGIN%

if not exist %SASS_PLUGIN_PATH%\build (
	mkdir %SASS_PLUGIN_PATH%\build
)
chdir %SASS_PLUGIN_PATH%\build

cmake -G "MinGW Makefiles" .. -DLIBSASS_DIR="../../libsass"

%MAKE% clean
%MAKE% %PLUGIN%

if not exist %PREFIX% mkdir %PREFIX%
if not exist %PREFIX%\plugin mkdir %PREFIX%\plugin
copy %SASS_PLUGIN_PATH%\build\%PLUGIN%.dll %PREFIX%\plugin

chdir ..\..\..