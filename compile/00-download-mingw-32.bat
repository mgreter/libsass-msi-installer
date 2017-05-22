@echo off
SETLOCAL
cd /D %~dp0
set ARCH=32
call ..\unxutils.cmd

set PATH=%programfiles%\7-zip;%PATH%
if not exist ..\mingw mkdir ..\mingw
if not exist ..\downloads mkdir ..\downloads

REM perl toolchain is mingw 4.9.2
REM use the same for compatibility
if not exist ..\mingw\mingw%ARCH% (
	cd ..\downloads
	REM wget --progress=bar:force -c "https://sourceforge.net/projects/mingw-w64/files/Toolchains targetting Win32/Personal Builds/mingw-builds/7.1.0/threads-win32/sjlj/i686-7.1.0-release-win32-sjlj-rt_v5-rev0.7z"
	REM wget --progress=bar:force -c "https://sourceforge.net/projects/mingw-w64/files/Toolchains targetting Win32/Personal Builds/mingw-builds/4.9.3/threads-win32/sjlj/i686-4.9.3-release-win32-sjlj-rt_v4-rev1.7z"
	wget --progress=bar:force -c "https://sourceforge.net/projects/mingw-w64/files/Toolchains targetting Win32/Personal Builds/mingw-builds/4.9.2/threads-win32/sjlj/i686-4.9.2-release-win32-sjlj-rt_v4-rev4.7z"
	cd ..\mingw
	REM 7z x -y "..\downloads\i686-7.1.0-release-win32-sjlj-rt_v5-rev0.7z" > nul
	REM 7z x -y "..\downloads\i686-4.9.3-release-win32-sjlj-rt_v4-rev1.7z" > nul
	7z x -y "..\downloads\i686-4.9.2-release-win32-sjlj-rt_v4-rev4.7z" > nul
	cd ..\compile
) else (
	echo Compiler already unpacked
)