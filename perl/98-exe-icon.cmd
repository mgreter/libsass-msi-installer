@echo off
cd /D %~dp0
call settings.cmd
call ..\unxutils.cmd

echo This seems to corrupt the exe, use par-icon scripts instead!

REM perl -e "use Win32::Exe; $exe = Win32::Exe->new('dist\%ARCH%\psass.exe'); $exe->set_single_group_icon('..\create\res\libsass.ico'); $exe->write;"
