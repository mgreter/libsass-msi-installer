@echo off
cd /D %~dp0
call settings.cmd
call ..\unxutils.cmd

cd dist\%ARCH%

call pp -B -o psass.exe ^
-I ../../../blib/lib ^
-M Encode::Byte ^
-M PerlIO::encoding ^
-M List::MoreUtils::XS ^
-M List::MoreUtils::PP ^
-M Win32::ChangeNotify ^
-M Filesys::Notify::Simple ^
CSS-Sass-%RELVERSION%/bin/psass

cd ..\..

REM tested and working, but much bigger size
REM -l "%PERLPATH%/c/bin/_libsass-0.dll" ^

copy %CD%\dist\%ARCH%\psass.exe %CD%\..\create\%XARCH%
