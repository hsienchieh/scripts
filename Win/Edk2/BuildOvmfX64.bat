set IASL_PREFIX=%~dp0tools\asl\
set NASM_PREFIX=%~dp0tools\nasm-2.13.03\


if not defined EDK_TOOLS_PATH {
  call edksetup.bat
}

build  -t VS2017 -a X64 -p OvmfPkg\OvmfPkgX64.dsc -y ReportFileOvmfX64.txt

if %ERRORLEVEL% == 0 goto :next
echo "Errors encountered during execution.  Exited with status: %errorlevel%"
goto :endofscript


:next

"C:\Program Files\qemu\qemu-system-x86_64" -L . --bios .\Build\OvmfX64\DEBUG_VS2017\FV\OVMF.fd -net none

:endofscript