@echo off

REM has trailing slash!
set ROOT=%~dp0

set SASS_LIBSASS_PATH=%ROOT%compile\%ARCH%\libsass
set SASS_SASSC_PATH=%ROOT%compile\%ARCH%\sassc
set PATH=%ROOT%mingw\mingw%ARCH%\bin;%PATH%
REM this would be dangerous, but should work
REM set PATH=C:\MinGW\msys\1.0\bin;%PATH%

REM hard one to find, as it only minfests when executing from another makefile
REM http://stackoverflow.com/questions/24066265/force-mingw32-make-to-ignore-sh
set MAKE=%ROOT%mingw\mingw%ARCH%\bin\mingw32-make.exe SHELL=cmd
REM set CXX=%ROOT%mingw\mingw%ARCH%\bin\g++.exe
REM set CC=%ROOT%mingw\mingw%ARCH%\bin\gcc.exe
set CC=gcc

REM echo Compiling Arch %ARCH%
call %ROOT%unxutils.cmd

REM ToDo: error in case arch is not set
IF %ARCH% == 64 set PREFIX=%ROOT%create\x64
IF %ARCH% == 32 set PREFIX=%ROOT%create\x86
IF %PREFIX% == "" exit /B

if not exist %ROOT%compile\%ARCH% (
	mkdir %ROOT%compile\%ARCH%
)

