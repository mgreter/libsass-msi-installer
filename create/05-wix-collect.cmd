@echo off
cd /D %~dp0
call ..\unxutils.cmd
call ..\settings.cmd
if not exist %XARCH% mkdir %XARCH%

cd %XARCH%

"%WIX%\bin\heat.exe" dir "." -nologo -cg gm -nologo -gg -scom -sreg -ke -dr APPLICATIONFOLDER -template fragment -out dist\files.wxs -platform %XARCH%

cd ..
