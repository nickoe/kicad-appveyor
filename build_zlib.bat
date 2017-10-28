:: zlib

git clone -b v1.2.8 https://github.com/madler/zlib.git
call cd zlib && nmake /f win32\Makefile.msc
call dir .
::call cp zlib.lib,zlib1.dll,zlib1.pdb,zdll.lib,zlib.h,zconf.h cache/
::call xcopy /I zlib.lib zlib1.dll zlib1.pdb zdll.lib zlib.h zconf.h cache
mkdir cache/zlib
for %%i in (zlib.lib,zlib1.dll,zlib1.pdb,zdll.lib,zlib.h,zconf.h) do (
  echo %%i
  xcopy %%i cache/zlib /I
)
dir cache/zlib
cd %WORKSPACE%
