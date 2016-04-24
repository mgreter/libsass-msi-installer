This directory contains scripts to create a windows msi installer.
The installer is created by the [WIX Toolset] [1] (3.10). You need to
have it installed and `%WIX%` environment variable set up correctly.
After that you should be able to simply execute the scripts in order!

Some [unxutils] [2] are included to make it "run out of the box".
You will also need to have git available in your global path!

[![Build status](https://ci.appveyor.com/api/projects/status/54m5ygkkekj0a488/branch/master?svg=true)](https://ci.appveyor.com/project/sass/libsass-msi-installer/branch/master)

## Rough step by step guide

### compile libsass and math plugin
```cmd
cd compile
set ARCH=32
00-download-mingw-%ARCH%
01-git-checkout-%ARCH%
02-clean-%ARCH%
03-compile-%ARCH%
04-plugin-%ARCH%
cd ..
```

### create perl standalone cli tool
```cmd
cd perl
set ARCH=32
00-fetch-%ARCH%
01-prepare-%ARCH%
02-par-icon-%ARCH%
04-build-dist-%ARCH%
' adjust RELVERSION in settings.cmd
05-unpack-dist-%ARCH%
06-install-%ARCH%
08-pack-%ARCH%
cd ..
```

### create the (wix) msi installer

```cmd
cd create
set ARCH=32
01-wix-prepare-%ARCH%
05-wix-collect-%ARCH%
07-wix-compile-%ARCH%
09-wix-link-%ARCH%
cd ..
```

### results should be in `create/dist`

`create\dist\libsass-%VERSION-%ARCH%.msi`

### updates are irregularly published at

http://libsass.ocbnet.ch/installer/

[1]: http://wixtoolset.org/
[2]: http://unxutils.sourceforge.net/
