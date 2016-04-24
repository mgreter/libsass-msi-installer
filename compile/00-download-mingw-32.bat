@echo off
SETLOCAL
cd /D %~dp0
set ARCH=32
call ..\unxutils.cmd

set PATH=%programfiles%\7-zip;%PATH%
if not exist ..\mingw mkdir ..\mingw
if not exist ..\downloads mkdir ..\downloads

if not exist ..\mingw\mingw%ARCH% (
	cd ..\downloads
	wget --progress=bar:force -c "http://sourceforge.net/projects/mingw-w64/files/Toolchains targetting Win32/Personal Builds/mingw-builds/4.9.3/threads-win32/sjlj/i686-4.9.3-release-win32-sjlj-rt_v4-rev1.7z/download"
	cd ..\mingw
	7z x -y "..\downloads\i686-4.9.3-release-win32-sjlj-rt_v4-rev1.7z" > nul
	cd ..\compile
) else (
	echo Compiler already unpacked
)