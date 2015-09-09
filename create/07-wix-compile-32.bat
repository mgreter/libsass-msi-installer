@echo off
SETLOCAL
set ARCH=x86
cd /D %~dp0

call %CD%\..\settings.cmd
echo Compiling installer for %gitversion% (32bit)

cd %ARCH%

"%WIX%\bin\candle.exe" -arch %ARCH% -dPlatform="%ARCH%" -nologo -ext WixBalExtension -dGitVersion=%gitversion% -out dist\files.wixobj dist\files.wxs

"%WIX%\bin\candle.exe" -arch %ARCH% -dPlatform="%ARCH%" -nologo -ext WixBalExtension -ext WixUtilExtension -dGitVersion=%gitversion% -out dist\sass.wixobj ..\res\sass.wxs

cd ..
