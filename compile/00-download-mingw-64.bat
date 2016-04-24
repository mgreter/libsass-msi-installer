@echo off
SETLOCAL
cd /D %~dp0
set ARCH=64
call ..\unxutils.cmd

set PATH=%programfiles%\7-zip;%PATH%
if not exist ..\mingw mkdir ..\mingw
if not exist ..\downloads mkdir ..\downloads

if not exist ..\mingw\mingw%ARCH% (
	cd ..\downloads
	wget --progress=bar:force -c "http://sourceforge.net/projects/mingw-w64/files/Toolchains targetting Win64/Personal Builds/mingw-builds/4.9.2/threads-win32/seh/x86_64-4.9.2-release-win32-seh-rt_v4-rev4.7z/download"
	cd ..\mingw
	7z x -y "..\downloads\x86_64-4.9.2-release-win32-seh-rt_v4-rev4.7z" > nul
	cd ..\compile
) else (
	echo Compiler already unpacked
)
