@echo off
SETLOCAL

set PATH=C:\Perl\site\bin;C:\Perl\bin;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files (x86)\Mercurial;C:\Program Files\7-Zip;C:\Program Files\Microsoft Windows Performance Toolkit\;C:\Program Files (x86)\Windows Kits\8.1\Windows Performance Toolkit\;C:\Program Files\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files (x86)\Microsoft ASP.NET\ASP.NET Web Pages\v1.0\;C:\Program Files (x86)\Microsoft SDKs\Windows Azure\CLI\wbin;C:\Program Files (x86)\MSBuild\12.0\Bin;C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\CommonExtensions\Microsoft\TestWindow;C:\Tools\xUnit;C:\Tools\NUnit\bin;C:\Tools\NuGet;C:\Python27;C:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn\;C:\Program Files\Microsoft SQL Server\100\Tools\Binn\;C:\Program Files\Microsoft SQL Server\100\DTS\Binn\;C:\Program Files (x86)\Microsoft SQL Server\100\Tools\Binn\VSShell\Common7\IDE\;C:\Program Files (x86)\Microsoft Visual Studio 9.0\Common7\IDE\PrivateAssemblies\;C:\Program Files (x86)\Microsoft SQL Server\100\DTS\Binn\;C:\Program Files (x86)\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files\Microsoft SQL Server\110\DTS\Binn\;C:\Program Files (x86)\Microsoft SQL Server\110\Tools\Binn\ManagementStudio\;C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE\PrivateAssemblies\;C:\Program Files (x86)\Microsoft SQL Server\110\DTS\Binn\;C:\Program Files\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files\Microsoft SQL Server\Client SDK\ODBC\110\Tools\Binn\;C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\;C:\Program Files\Microsoft SQL Server\120\DTS\Binn\;C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\ManagementStudio\;C:\Program Files (x86)\Microsoft SQL Server\120\DTS\Binn\;C:\Tools\WebDriver;C:\Program Files\Microsoft\Web Platform Installer\;C:\Tools\MSpec;C:\ProgramData\chocolatey\bin;C:\Tools\GitVersion;C:\Program Files\nodejs;C:\Program Files (x86)\CollabNet\Subversion Client;C:\Program Files (x86)\iojs;C:\Program Files\iojs;C:\Users\appveyor\AppData\Roaming\npm;C:\Program Files (x86)\Microsoft SDKs\TypeScript\1.4\;C:\Program Files\Windows Fabric\bin\Fabric\Fabric.Code.1.0;C:\Program Files (x86)\Microsoft SDKs\TypeScript\1.0\;C:\Ruby193\bin;C:\Program Files (x86)\CMake\bin;C:\go\bin;C:\Tools\Coverity\bin;C:\Program Files\erl6.3\bin;C:\Program Files\Amazon\AWSCLI\;C:\Program Files\Java\jdk1.8.0\bin;C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\Extensions\Microsoft\SQLDB\DAC\120;C:\Program Files\Git\cmd;C:\Tools\NUnit3\bin;C:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\PrivateAssemblies\;C:\Program Files\LLVM\bin;C:\Program Files (x86)\nodejs\;C:\Chocolatey\bin;C:\Users\appveyor\AppData\Roaming\npm;C:\Program Files\AppVeyor\BuildAgent\

call 01-compile-%ARCH%
call 05-perl-%ARCH%
call 09-create-%ARCH%

if exist create\dist (
	echo Listening distfiles:
	dir create\dist
) else (
	echo No distfiles found!
)
