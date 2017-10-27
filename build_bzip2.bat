call "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /x64
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86_amd64
 
:: zlib

git clone -b v1.2.8 https://github.com/madler/zlib.git
call cd zlib && nmake /f win32\Makefile.msc && cd ..
call cp zlib.lib,zlib1.dll,zlib1.pdb,zdll.lib,zlib.h,zconf.h cache/

:: bzip2 
set BZIP2_VER=1.0.6
echo %BZIP2_VER%
curl http://www.bzip.org/%BZIP2_VER%/bzip2-%BZIP2_VER%.tar.gz -o bzip2-%BZIP2_VER%.tar.gz
7z x bzip2-%BZIP2_VER%.tar.gz
7z x bzip2-%BZIP2_VER%.tar
call cd bzip2-%BZIP2_VER% && nmake /f Makefile.msc
    ::**/libbz2.lib,**/bzlib.h

:: boost
git clone -b boost-1.60.0 https://github.com/boostorg/boost.git

