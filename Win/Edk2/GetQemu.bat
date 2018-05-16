@echo off



IF not exist Qemu (
  if not exist qemu-0.13.0.patched.win32.zip (
   wget --no-check-certificate https://sourceforge.mirrorservice.org/g/gn/gns-3/Qemu/Windows/qemu-0.13.0.patched.win32.zip  
  )
  "C:\Program Files\7-Zip\7z.exe" x qemu-0.13.0.patched.win32.zip
)



@echo on