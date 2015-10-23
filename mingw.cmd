@echo off
set SASS_LIBSASS_PATH=%~dp0\compile\%ARCH%\libsass
set SASS_PLUGIN_PATH=%~dp0\compile\%ARCH%\libsass-math
set SASS_SASSC_PATH=%~dp0\compile\%ARCH%\sassc
set PATH=%~dp0\compile\mingw%ARCH%\bin;%PATH%

echo Compiling Arch %ARCH%
call %~dp0\unxutils.cmd

REM ToDo: error in case arch is not set
IF %ARCH% == 64 set PREFIX=%~dp0\create\x64
IF %ARCH% == 32 set PREFIX=%~dp0\create\x86
IF %PREFIX% == "" exit /B

if not exist %~dp0\compile\%ARCH% (
	mkdir %~dp0\compile\%ARCH%
)

