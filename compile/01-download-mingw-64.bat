@echo off
set ARCH=32

set PATH=%programfiles%\7-zip;%PATH%

wget -c "http://sourceforge.net/projects/mingw-w64/files/Toolchains targetting Win64/Personal Builds/mingw-builds/4.9.2/threads-win32/seh/x86_64-4.9.2-release-win32-seh-rt_v3-rev0.7z"

7z x -y "x86_64-4.9.2-release-win32-seh-rt_v3-rev0.7z"