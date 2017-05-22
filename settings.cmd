@echo off

IF %ARCH% == 64 set XARCH=x64
IF %ARCH% == 32 set XARCH=x86

for /F "tokens=2 skip=1" %%V IN ('%XARCH%\sassc.exe -v') DO (
	set gitrelease=%%V
	goto :has_release
)

:has_release

set first="1"
for /F "tokens=1 delims=-." %%V IN ('echo %gitrelease%') DO set gitmajor=%%V
for /F "tokens=2 delims=-." %%V IN ('echo %gitrelease%') DO set gitminor=%%V
for /F "tokens=3 delims=-." %%V IN ('echo %gitrelease%') DO set gitpatch=%%V
for /F "tokens=4 delims=-." %%V IN ('echo %gitrelease%') DO set gitmicro=%%V
for /F "tokens=5 delims=-." %%V IN ('echo %gitrelease%') DO set githash=%%V

for /F "tokens=2 delims=eta" %%V IN ('echo %gitmicro%') DO set gitmicro=%%V

set gitversion=%gitmajor%.%gitminor%.%gitpatch%

REM ToDo: check for numeric arg
if "%gitmicro%" NEQ "" (
	if "%gitmicro%" NEQ "beta" (
		if "%gitmicro%" NEQ "alpha" (
			set gitversion=%gitversion%.%gitmicro%
		)
	)
)

REM echo gitrelease: %gitrelease%
REM echo gitversion: %gitversion%

