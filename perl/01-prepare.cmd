@echo off
SETLOCAL
cd /D %~dp0
call settings.cmd
call ..\unxutils.cmd

call cpan Test::Output
call cpanm -f Test::Output
call cpan install Test::Output
call cpan install Getopt::ArgvFile
call cpan install Module::ScanDeps
REM 0.10 fails cpanm, cpan works?
REM or cpanm Test::Mock::Guard@0.09
call cpan install Test::Mock::Guard

REM 0.10+ fails cpanm, broken pipe?
REM or cpanm ExtUtils::CppGuess@0.09
call cpan install ExtUtils::CppGuess

echo ================================================================================

REM some had problems with tests?
REM check future if still needed!
call cpanm Win32::IPC --notest
call cpanm Win32::Unicode --notest

echo ================================================================================

call cpanm PAR::Packer --notest
call cpanm List::MoreUtils --notest

echo ================================================================================

cd %ARCH%
perl -MCPAN -e "CPAN::Shell->notest('install', 'Test::SharedFork')"
perl -MCPAN -e "CPAN::Shell->notest('install', 'Win32::ChangeNotify')"
git clone https://github.com/mgreter/Filesys-Notify-Simple
cd Filesys-Notify-Simple
perl Makefile.PL
dmake -P4 test
dmake install
cd ..\..
