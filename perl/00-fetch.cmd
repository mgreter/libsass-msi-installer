@echo off
SETLOCAL
cd /D %~dp0
call settings.cmd
call ..\unxutils.cmd

if not exist %ARCH% mkdir %ARCH%

cd %ARCH%

wget --progress=bar:force -c "http://strawberryperl.com/download/%PERLVER%/strawberry-perl-%PERLVER%-%ARCH%bit-portable.zip"

if not exist perl (
	mkdir perl
	cd perl
	unzip ..\strawberry-perl-%PERLVER%-%ARCH%bit-portable.zip > nul
	cd ..
)

cd ..