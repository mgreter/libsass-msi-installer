@echo off
SETLOCAL
call ..\settings.cmd

if not exist dist mkdir dist

cd 64

"%WIX%\bin\light.exe" ^
-nologo -sw1076 ^
-dPlatform="x64" ^
-dGitVersion=%gitversion% ^
-b bin dist\files.wixobj ^
dist\sassc.wixobj ^
-ext WixBalExtension ^
-ext WixUIExtension ^
-ext WixUtilExtension ^
-o ..\dist\libsass-%gitrelease%-x64.msi

cd ..
