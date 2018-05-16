set IASL_PREFIX=%~dp0tools\asl\
set NASM_PREFIX=%~dp0tools\nasm-2.13.03\


if not defined EDK_TOOLS_PATH {
  call edksetup.bat
}


build -a IA32 -p OvmfPkg/OvmfPkgIa32.dsc -t VS2017 -D DEBUG_ON_SERIAL_PORT -D SOURCE_DEBUG_ENABLE


if %ERRORLEVEL% == 0 goto :next
echo "Errors encountered during execution.  Exited with status: %errorlevel%"
goto :endofscript



:next

start cmd /C "..\Qemu\qemu.exe" -L . --bios .\Build\OvmfIa32\DEBUG_VS2017\FV\OVMF.fd -net none -serial pipe:qemu_dbg

"C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Intel(R) UEFI Development Kit Debugger Tool\Start WinDbg with Intel UDK Debugger Tool.lnk"

:endofscript