@echo off
SETLOCAL
cd /D %~dp0
call ..\unxutils.cmd
call ..\settings.cmd
if not exist %XARCH% mkdir %XARCH%

echo Compiling installer for %gitversion% (%XARCH%)

cd %XARCH%

set PATH=%PATH%;%WIX%\bin

candle.exe -arch %XARCH% -dPlatform="%XARCH%" -nologo -ext WixBalExtension -dGitVersion=%gitversion% -out dist\files.wixobj dist\files.wxs

candle.exe -arch %XARCH% -dPlatform="%XARCH%" -nologo -ext WixBalExtension -ext WixUtilExtension -dGitVersion=%gitversion% -out dist\sass.wixobj ..\res\sass.wxs

cd ..
