@echo off
SETLOCAL
call ..\settings.cmd

echo Compiling installer for %gitversion% (64bit)

cd 64

"%WIX%\bin\candle.exe" -arch x64 -dPlatform="x64" -nologo -ext WixBalExtension -dGitVersion=%gitversion% -out dist\files.wixobj dist\files.wxs

"%WIX%\bin\candle.exe" -arch x64 -dPlatform="x64" -nologo -ext WixBalExtension -ext WixUtilExtension -dGitVersion=%gitversion% -out dist\sassc.wixobj ..\res\sassc.wxs

cd ..
