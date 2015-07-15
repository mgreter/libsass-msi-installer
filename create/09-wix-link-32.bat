@echo off
SETLOCAL
call ..\settings.cmd

if not exist dist mkdir dist

cd 32

"%WIX%\bin\light.exe" ^
-nologo -sw1076 ^
-dPlatform="x86" ^
-dGitVersion=%gitversion% ^
-b bin dist\files.wixobj ^
dist\sassc.wixobj ^
-ext WixBalExtension ^
-ext WixUIExtension ^
-ext WixUtilExtension ^
-o ..\dist\libsass-%gitrelease%-x86.msi

cd ..
