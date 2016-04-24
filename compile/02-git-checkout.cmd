@echo off
cd /D %~dp0
call ..\mingw.cmd
if not exist %ARCH% mkdir %ARCH%

if not exist %ARCH%/sassc (
  git -C %ARCH% clone https://github.com/sass/sassc.git
) else (
  git -C %ARCH%/sassc pull -ff
)

if not exist %ARCH%/libsass (
  git -C %ARCH% clone https://github.com/sass/libsass.git
) else (
  git -C %ARCH%/libsass pull -ff
)

if not exist %ARCH%/libsass-math (
  git -C %ARCH% clone https://github.com/mgreter/libsass-math.git
) else (
  git -C %ARCH%/libsass-math pull -ff
)

if not exist %ARCH%/libsass-glob (
  git -C %ARCH% clone https://github.com/mgreter/libsass-glob.git
) else (
  git -C %ARCH%/libsass-glob pull -ff
)
