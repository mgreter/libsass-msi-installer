@echo off
SETLOCAL
cd /D %~dp0
call ..\unxutils.cmd
call ..\settings.cmd
if not exist dist mkdir dist

cd %XARCH%

"%WIX%\bin\light.exe" ^
-nologo -sw1076 ^
-dPlatform="%XARCH%" ^
-dGitVersion=%gitversion% ^
-b bin dist\files.wixobj ^
dist\sass.wixobj ^
-ext WixBalExtension ^
-ext WixUIExtension ^
-ext WixUtilExtension ^
-o ..\dist\libsass-%gitrelease%-%XARCH%.msi

cd ..

echo created dist\libsass-%gitrelease%-%XARCH%.msi
