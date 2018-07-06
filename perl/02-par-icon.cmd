@echo off
SETLOCAL
cd /D %~dp0
call settings.cmd
call ..\unxutils.cmd

REM you will need to copy this over from data/.cpanm
SET PAR_PACKER_SRC=%PERLDIR%\cpan\build

REM for /D %%a in (%PERL_CPANM_HOME%\work) do @if exist %%a echo %%a
for /f "tokens=*" %%a in ('dir /b /a:d "%PERL_CPANM_HOME%\work"') do @if exist %PERL_CPANM_HOME%\work\%%a\PAR-Packer-* set workpath=%%a
for /f "tokens=*" %%a in ('dir /b /a:d "%PERL_CPANM_HOME%\work\%workpath%\PAR-Packer-*"') do set workversion=%%a

echo "got %workpath% - %workversion%"

mkdir %PERLDIR%\cpan\build

xcopy /S /E /Q /Y "%PERL_CPANM_HOME%\work\%workpath%\%workversion%" "%PERLDIR%\cpan\build\%workversion%\"

copy /Y ..\create\res\libsass.ico "%PAR_PACKER_SRC%\%workversion%\myldr\winres\pp.ico"

pushd "%PAR_PACKER_SRC%\%workversion%\myldr\"

del ppresource.coff
perl Makefile.PL
dmake boot.exe
dmake Static.pm

popd

attrib -R "%PERLDIR%\perl\site\lib\PAR\StrippedPARL\Static.pm"
copy /Y "%PAR_PACKER_SRC%\%workversion%\myldr\Static.pm" "%PERLDIR%\perl\site\lib\PAR\StrippedPARL\Static.pm"
