set IASL_PREFIX=e:\temp\tools
set NASM_PREFIX=E:\temp\tools\nasm-2.13.03
build  -t VS2017 -a X64 -p OvmfPkg\OvmfPkgX64.dsc -y ReportFileOvmfX64.txt


"C:\Program Files\qemu\qemu-system-x86_64" -L . --bios .\Build\OvmfX64\DEBUG_VS2017\FV\OVMF.fd -net none


