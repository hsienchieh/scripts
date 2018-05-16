set IASL_PREFIX=%~dp0tools\asl\
set NASM_PREFIX=%~dp0tools\nasm-2.13.03\


if not defined EDK_TOOLS_PATH {
  call edksetup.bat
}

build  -t VS2017 -a X64 -p OvmfPkg\OvmfPkgX64.dsc -D DEBUG_ON_SERIAL_PORT  -D SOURCE_DEBUG_ENABLE


if %ERRORLEVEL% == 0 goto :next
echo "Errors encountered during execution.  Exited with status: %errorlevel%"
goto :endofscript



:next
;;start cmd /C "C:\Program Files\qemu\qemu-system-x86_64" -L . --bios .\Build\OvmfX64\DEBUG_VS2017\FV\OVMF.fd -net none  -serial pipe:qemu_dbg
start cmd /C "..\Qemu\qemu.exe" -L --bios .\Build\OvmfX64\DEBUG_VS2017\FV\OVMF.fd -net none  -serial pipe:qemu_dbg

"C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Intel(R) UEFI Development Kit Debugger Tool\Start WinDbg with Intel UDK Debugger Tool.lnk"


:endofscript
