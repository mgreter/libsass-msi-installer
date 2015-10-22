@echo off
set ARCH=64
set SASS_LIBSASS_PATH=%~dp0\%ARCH%\libsass
set SASS_PLUGIN_PATH=%~dp0\%ARCH%\plugin
set SASS_SASSC_PATH=%~dp0\%ARCH%\sassc
set PATH=%~dp0\mingw%ARCH%\bin;%PATH%
set PATH=%~dp0\..\tools;%PATH%
set PREFIX=%~dp0\..\create\x64

cmd
