@echo off
SETLOCAL
set ARCH=x86
cd /D %~dp0

echo %CD%\..\settings.cmd
call %CD%\..\settings.cmd
if not exist %ARCH% mkdir %ARCH%

cd %ARCH%

"%WIX%\bin\heat.exe" dir "." -nologo -cg gm -nologo -gg -scom -sreg -ke -dr APPLICATIONFOLDER -template fragment -out dist\files.wxs -platform %ARCH%

cd ..
