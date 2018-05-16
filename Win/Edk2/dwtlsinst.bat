@echo off
IF not exist "C:\Program Files\qemu" (  
  if not exist qemu-w64-setup-20180430.exe  wget --no-check-certificate https://qemu.weilnetz.de/w64/qemu-w64-setup-20180430.exe
  
  qemu-w64-setup-20180430.exe
)
IF not exist nasm-2.13.03 (
  if not exist nasm-2.13.03-win64.zip (
   wget --no-check-certificate https://www.nasm.us/pub/nasm/releasebuilds/2.13.03/win64/nasm-2.13.03-win64.zip  
  )
  "C:\Program Files\7-Zip\7z.exe" x nasm-2.13.03-win64.zip  
)


IF not exist Qemu (
  if not exist qemu-0.13.0.patched.win32.zip (
   wget --no-check-certificate https://sourceforge.mirrorservice.org/g/gn/gns-3/Qemu/Windows/qemu-0.13.0.patched.win32.zip  
  )
  "C:\Program Files\7-Zip\7z.exe" x qemu-0.13.0.patched.win32.zip
)



IF not exist "c:\Python27" (
  if not exist python-2.7.14.amd64.msi (
    wget --no-check-certificate https://www.python.org/ftp/python/2.7.14/python-2.7.14.amd64.msi
  )
  python-2.7.14.amd64.msi
)

IF not exist c:\iasl (
  if not exist iasl-win-20180508.zip (
    wget --no-check-certificate https://acpica.org/sites/acpica/files/iasl-win-20180508.zip
  )
  "C:\Program Files\7-Zip\7z.exe"  x iasl-win-20180508.zip -oc:\iasl
)
start   https://www.visualstudio.com/thank-you-downloading-visual-studio/?sku=Community&rel=15 

@echo on