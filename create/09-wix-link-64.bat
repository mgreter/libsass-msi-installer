@echo off
SETLOCAL
set ARCH=x64
cd /D %~dp0

call %CD%\..\settings.cmd
if not exist dist mkdir dist

cd %ARCH%

"%WIX%\bin\light.exe" ^
-nologo -sw1076 ^
-dPlatform="%ARCH%" ^
-dGitVersion=%gitversion% ^
-b bin dist\files.wixobj ^
dist\sass.wixobj ^
-ext WixBalExtension ^
-ext WixUIExtension ^
-ext WixUtilExtension ^
-o ..\dist\libsass-%gitrelease%-%ARCH%.msi

cd ..
