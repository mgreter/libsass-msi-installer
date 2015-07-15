@echo off
SETLOCAL
call ..\settings.cmd

cd 32

"%WIX%\bin\candle.exe" -arch x86 -dPlatform="x86" -nologo -ext WixBalExtension -dGitVersion=%gitversion% -out dist\files.wixobj dist\files.wxs

"%WIX%\bin\candle.exe" -arch x86 -dPlatform="x86" -nologo -ext WixBalExtension -ext WixUtilExtension -dGitVersion=%gitversion% -out dist\sassc.wixobj ..\res\sassc.wxs

cd ..
