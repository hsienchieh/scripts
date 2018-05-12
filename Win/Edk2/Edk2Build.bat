call edksetup.bat --nt32
call nmake -f %BASE_TOOLS_PATH%\Makefile

call build -t VS2017
