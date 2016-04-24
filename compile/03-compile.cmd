@echo off
SETLOCAL
cd /D %~dp0
call ..\mingw.cmd
if not exist %ARCH% mkdir %ARCH%

%MAKE% BUILD=shared -C "%SASS_LIBSASS_PATH%" -j6
%MAKE% BUILD=shared -C "%SASS_SASSC_PATH%" -j6

if not exist %PREFIX% mkdir %PREFIX%
if not exist %PREFIX%\include mkdir %PREFIX%\include
if not exist %PREFIX%\include\sass mkdir %PREFIX%\include\sass

copy %SASS_SASSC_PATH%\bin\sassc.exe %PREFIX%
copy %SASS_LIBSASS_PATH%\lib\libsass.a %PREFIX%
copy %SASS_LIBSASS_PATH%\lib\libsass.dll %PREFIX%
copy %SASS_LIBSASS_PATH%\include\sass.h %PREFIX%\include
copy %SASS_LIBSASS_PATH%\include\sass2scss.h %PREFIX%\include
copy %SASS_LIBSASS_PATH%\include\sass\base.h %PREFIX%\include\sass
copy %SASS_LIBSASS_PATH%\include\sass\values.h %PREFIX%\include\sass
copy %SASS_LIBSASS_PATH%\include\sass\version.h %PREFIX%\include\sass
copy %SASS_LIBSASS_PATH%\include\sass\context.h %PREFIX%\include\sass
copy %SASS_LIBSASS_PATH%\include\sass\functions.h %PREFIX%\include\sass
