@echo off
set SASS_LIBSASS_PATH=%~dp0compile\%ARCH%\libsass
set SASS_PLUGIN_PATH=%~dp0compile\%ARCH%\libsass-math
set SASS_SASSC_PATH=%~dp0compile\%ARCH%\sassc
set PATH=%~dp0compile\mingw%ARCH%\bin;%PATH%

echo Compiling Arch %ARCH%
call unxutils.cmd

REM ToDo: error in case arch is not set
IF %ARCH% == 64 set PREFIX=%~dp0create\x64
IF %ARCH% == 32 set PREFIX=%~dp0create\x86
IF %PREFIX% == "" exit /B

if not exist compile\%ARCH% (
	mkdir compile\%ARCH%
)

