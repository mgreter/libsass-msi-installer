@echo off

set drive=%~dp0
set drivep=%drive%
set PERLVER=5.20.3.1
set PERLDIR=%drivep%\%ARCH%\perl

set RELVERSION=3.3.3

if #%drive:~-1%# == #\# set drivep=%drive:~0,-1%

set PATH=%PERLDIR%\perl\site\bin;%PERLDIR%\perl\bin;%PERLDIR%\c\bin;%PATH%
