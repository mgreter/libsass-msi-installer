@echo off
cd /D %~dp0
call ..\mingw.cmd
if not exist %ARCH% mkdir %ARCH%

if not exist %SASS_PLUGIN_PATH%\build (
	mkdir %SASS_PLUGIN_PATH%\build
)
chdir %SASS_PLUGIN_PATH%\build

cmake -G "MinGW Makefiles" .. -DLIBSASS_DIR="../../libsass"

mingw32-make clean
mingw32-make math

if not exist %PREFIX% mkdir %PREFIX%
if not exist %PREFIX%\plugin mkdir %PREFIX%\plugin
copy %SASS_PLUGIN_PATH%\build\math.dll %PREFIX%\plugin

chdir ..\..\..