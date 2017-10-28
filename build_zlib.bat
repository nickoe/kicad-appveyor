call "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /x64
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86_amd64
 
:: zlib

git clone -b v1.2.8 https://github.com/madler/zlib.git
call cd zlib && nmake /f win32\Makefile.msc
call dir .
::call cp zlib.lib,zlib1.dll,zlib1.pdb,zdll.lib,zlib.h,zconf.h cache/
::call xcopy /I zlib.lib zlib1.dll zlib1.pdb zdll.lib zlib.h zconf.h cache
for %%i in (zlib.lib,zlib1.dll,zlib1.pdb,zdll.lib,zlib.h,zconf.h) do
  xcopy %%i cache
dir cache
cd %WORKSPACE%
