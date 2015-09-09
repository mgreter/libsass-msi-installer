set ARCH=32
set SASS_LIBSASS_PATH=%~dp0\%ARCH%\libsass
set SASS_SASSC_PATH=%~dp0\%ARCH%\sassc
set PATH=%~dp0\mingw%ARCH%\bin;%PATH%
set PREFIX=%~dp0\..\create\x86

mingw32-make -C "%SASS_LIBSASS_PATH%" clean
mingw32-make -C "%SASS_SASSC_PATH%" clean

mingw32-make CC=gcc BUILD=shared -C "%SASS_LIBSASS_PATH%" -j6
mingw32-make CC=gcc BUILD=shared -C "%SASS_SASSC_PATH%" -j6

if not exist %PREFIX% mkdir %PREFIX%
if not exist %PREFIX%\include mkdir %PREFIX%\include
if not exist %PREFIX%\include\sass mkdir %PREFIX%\include\sass

copy %SASS_SASSC_PATH%\bin\sassc.exe %PREFIX%
copy %SASS_LIBSASS_PATH%\lib\libsass.a %PREFIX%
copy %SASS_LIBSASS_PATH%\lib\libsass.dll %PREFIX%
copy %SASS_LIBSASS_PATH%\include\sass.h %PREFIX%\include
copy %SASS_LIBSASS_PATH%\include\sass2scss.h %PREFIX%\include
copy %SASS_LIBSASS_PATH%\include\sass\values.h %PREFIX%\include\sass
copy %SASS_LIBSASS_PATH%\include\sass\context.h %PREFIX%\include\sass
copy %SASS_LIBSASS_PATH%\include\sass\functions.h %PREFIX%\include\sass
