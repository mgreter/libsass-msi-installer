@echo off

set drive=%~dp0
set drivep=%drive%
set PERLVER=5.24.0.1
set PERLDIR=%drivep%\%ARCH%\perl
set PERL_CPANM_HOME=%PERLDIR%\data\.cpanm

REM latest version can be queried via 99-shell:
REM perl tools\query-version.pl CSS::Sass
set RELVERSION=3.6.4

if #%drive:~-1%# == #\# set drivep=%drive:~0,-1%

set PATH=%PERLDIR%\perl\site\bin\;%PERLDIR%\perl\bin\;%PERLDIR%\c\bin\;%PATH%
