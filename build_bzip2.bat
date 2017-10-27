call "C:\Program Files\Microsoft SDKs\Windows\v7.1\Bin\SetEnv.cmd" /x64
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x86_amd64
 

:: bzip2 
set BZIP2_VER=1.0.6
echo %BZIP2_VER%
curl http://www.bzip.org/%BZIP2_VER%/bzip2-%BZIP2_VER%.tar.gz -o bzip2-%BZIP2_VER%.tar.gz
7z x bzip2-%BZIP2_VER%.tar.gz
7z x bzip2-%BZIP2_VER%.tar
call cd bzip2-%BZIP2_VER% && nmake /f Makefile.msc
    ::**/libbz2.lib,**/bzlib.hcd ...
cd ..

