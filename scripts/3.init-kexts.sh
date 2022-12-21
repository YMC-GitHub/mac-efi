
#!/bin/sh

#desc:
#copy Kexts from ocat database

# database="C:\Users\Administrator\tempocat"
database=database-kexts

# base requires
cp -r OCAT-Win64/OCAT-Win64/Database/EFI/OC/Kexts/VirtualSMC.kext OpenCore/X64/EFI/OC/Kexts/
cp -r OCAT-Win64/OCAT-Win64/Database/EFI/OC/Kexts/Lilu.kext OpenCore/X64/EFI/OC/Kexts/
# graphics
cp -r OCAT-Win64/OCAT-Win64/Database/EFI/OC/Kexts/WhateverGreen.kext OpenCore/X64/EFI/OC/Kexts/
# audio
cp -r OCAT-Win64/OCAT-Win64/Database/EFI/OC/Kexts/AppleALC.kext OpenCore/X64/EFI/OC/Kexts/

# https://caizhiyuan.gitee.io/opencore-install-guide/ktext.html#graphics
# https://dortania.github.io/OpenCore-Install-Guide/
# update ocat database
# or download from https://github.com/Mieze/RTL8111_driver_for_OS_X/releases
# network card
cp -r "database-kexts/RealtekRTL8111-V2.4.2/Debug/RealtekRTL8111.kext" OpenCore/X64/EFI/OC/Kexts/
# Realtek PCIe GBE Family Controller




# usb
# USBInjectAll.kext
cp -r "database-kexts/USBInjectAll.kext" OpenCore/X64/EFI/OC/Kexts/
# 

# wifi and blueteeth  (wareless network card)
# https://post.smzdm.com/p/a83d937n/
# https://zhuanlan.zhihu.com/p/339648390
# for inter - mime is Intel(R) Wi-Fi 6 AX200 160MHz
cp -r "database-kexts/AirportBrcmFixup.kext" OpenCore/X64/EFI/OC/Kexts/
cp -r "database-kexts/IntelBluetoothFirmware.kext" OpenCore/X64/EFI/OC/Kexts/

# extras for using NVMe m.2 ssd
# NVMeFix.kext
cp -r "database-kexts/NVMeFix.kext" OpenCore/X64/EFI/OC/Kexts/
# rm -rf OpenCore/X64/EFI/OC/Kexts/NVMeFix.kext