@echo off
SETLOCAL
set ARCH=32
cd /D %~dp0

call %CD%\settings.cmd
SET PERLPATH=%CD%\%ARCH%\perl
SET PATH=C:\Windows\system32

SET PATH=%PERLPATH%\perl\site\bin;%PATH%
SET PATH=%PERLPATH%\perl\bin;%PATH%
SET PATH=%PERLPATH%\c\bin;%PATH%

cd /D %CD%\dist\%ARCH%

call pp -B -o psass.exe ^
-I ../../../blib/lib ^
-M Encode::Byte ^
-M Win32::ChangeNotify ^
-M Filesys::Notify::Simple ^
CSS-Sass-%RELVERSION%/bin/psass

cd ..\..

REM tested and working, but much bigger size
REM -l "%PERLPATH%/c/bin/_libsass-0.dll" ^

copy %CD%\dist\%ARCH%\psass.exe %CD%\..\create\%ARCH%