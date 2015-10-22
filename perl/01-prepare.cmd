@echo off
cd /D %~dp0
call settings.cmd
call ..\unxutils.cmd

call cpanm Win32::IPC
call cpanm Win32::Unicode --notest
call cpanm PAR::Packer
call cpanm List::MoreUtils

call cpan install Win32::ChangeNotify
call cpan install Filesys::Notify::Simple
