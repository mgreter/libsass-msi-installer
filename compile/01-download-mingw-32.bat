@echo off
cd /D %~dp0
set ARCH=32
call ..\unxutils.cmd

set PATH=%programfiles%\7-zip;%PATH%

wget -c "http://downloads.sourceforge.net/project/mingw-w64/Toolchains targetting Win32/Personal Builds/mingw-builds/4.9.3/threads-win32/sjlj/i686-4.9.3-release-win32-sjlj-rt_v4-rev1.7z"

7z x -y "i686-4.9.3-release-win32-sjlj-rt_v4-rev1.7z"