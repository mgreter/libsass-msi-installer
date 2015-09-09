set ARCH=64
if not exist %ARCH% mkdir %ARCH%

git -C %ARCH% clone https://github.com/sass/libsass.git
git -C %ARCH% clone https://github.com/sass/sassc.git