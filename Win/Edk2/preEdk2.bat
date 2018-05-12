

git clone https://github.com/tianocore/edk2.git edk2

cd Edk2\BaseTools\Bin

git clone https://github.com/tianocore/edk2-BaseTools-win32.git win32
cd ..\..

set PYTHON_HOME=C:\Python27
call edksetup.bat --nt32
call nmake -f %BASE_TOOLS_PATH%\Makefile

