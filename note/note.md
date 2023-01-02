## make your owne macos efi for youself
- [x] prepare oc-pkg `scripts/1.prepare-oc.sh`
- [x] del 32 arch `scripts/1.del32.sh`
- [x] shim Drivers and Tools for debug `scripts/2.init-drivers.sh`
- [x] collect Kexts `scripts/3.collect-kexts.sh`
- [x] move Kexts `scripts/3.move-kexts.sh`
- [x] copy Kexts from ocat database `scripts/3.init-kexts.sh`
- [x] copy acpi from ocat database `scripts/4.build-acpi.sh`
- [x] set config.plist for mime cpu `scripts/5.build-config.sh`
- [x] use latest config.plist for mime cpu `scripts/5.use-prev-config.sh`
- [x] zip it `scripts/6.zip-efi.sh`
- [x] clean archive `scripts/6.clean-archive.sh`
- [x] collect err log `scripts/6.collect-err.sh` `git add err-log ; git commit --file .changeset/msg.errlog.tmp.md;`

- [x] collect efi `mkdir -p EFIS; cp -rf /g/sharevm/mac/huanzhix99-haswelle-oc0.8.3-efi EFIS/` `git add EFIS ; git commit --file .changeset/msg.efi.tmp.md;`

- [x] device info `mkdir -p images ; cp -rf ~/desktop/RX570* images/` `git add images ; git commit --file .changeset/msg.device.tmp.md;`

- [x] bios data `mkdir -p bios ; cp -rf ~/desktop/*.rom bios/` `git add bios ; git commit --file .changeset/msg.bios.tmp.md;`

## video
- [x] install mac os
```
# https://www.bilibili.com/video/BV1SL4y1a7gg
# https://www.bilibili.com/video/BV1rQ4y1C7LK
```

- [x] make mac efi in window

[OCAuxiliaryTools + DiskGenius](https://www.bilibili.com/video/BV1he4y1k7H2)

[OC toolbox + OCAuxiliaryTools + cpuz + aid64 ](https://www.bilibili.com/video/BV12B4y1J7Le)

- [x] make mac efi in mac

[OC toolbox + OCAuxiliaryTools + cpuz + aid64 + vmware + mac](https://www.bilibili.com/video/BV1FR4y1o7m5)


- [x] skip tianyi yun [video-tutotial](https://www.bilibili.com/video/BV16U4y1f765/) `https://189.ly93.cc/#7vii6zuEfqia?accessCode=a0rv`

- [x] skip kuake yun


## blog and source code

- [x] error code (install mac)
```
# OCB：System has no boot entries
# before:17760515,after:0
# Misc—其他设置—Security—ScanPolicy—0 

# OCCPU: Failed to get FSBFequency
#https://github.com/acidanthera/bugtracker/issues/1937

# https://zhuanlan.zhihu.com/p/485666818
```



## custom efi
```bash
# https://dortania.github.io/OpenCore-Install-Guide/config.plist/haswell.html#starting-point
# https://dortania.github.io/Getting-Started-With-ACPI/ssdt-platform.html#desktop
# https://github.com/dortania/Getting-Started-With-ACPI/blob/master/extra-files/compiled/SSDT-PLUG-DRTNIA.aml
# https://github.com/acidanthera/OcBinaryData
# https://github.com/acidanthera/Lilu/releases
# https://github.com/acidanthera/VirtualSMC/releases
# https://github.com/acidanthera/WhateverGreen/releases
# https://github.com/acidanthera/AppleALC/releases
# https://github.com/aluveitie/RadeonSensor/releases
# https://github.com/Mieze/RTL8111_driver_for_OS_X/releases
# https://huananzhi.tw/catalog/motherboard/x99-f8/
# https://nonotree.xyz/download/download/huananzhi-x99-f8-users-manual/#
# Realtek RTL8111H,Realtek ALC892
# https://github.com/acidanthera/AppleALC/wiki/Supported-codecs
# 1, 2, 3, 4, 5, 7, 12, 15, 16, 17, 18, 20, 22, 23, 28, 31, 32, 90, 92, 97, 99, 100
# https://www.mydrivers.com/zhuanti/tianti/cpu/

# download opencore
# download ssdt
# download Drivers:OcBinaryData
# download kexts:Lilu,VirtualSMC,SMCProcessor
# download kexts:SMCRadeonGPU,SMCSuperIO
# download kexts:RTL8111_driver_for_OS_X


out=~/desktop/out
mkdir -p $out
cp -r ~/Desktop/OpenCore-0.7.2-RELEASE/X64/EFI $out/
cp ~/Desktop/OpenCore-0.7.2-RELEASE/Docs/Sample.plist $out/EFI/OC/Config.plist

# BOOT
rm -r $out/EFI/BOOT/.contentFlavour
# ACPI:Haswell
cp -r ~/desktop/Getting-Started-With-ACPI-master/extra-files/compiled/SSDT-PLUG-DRTNIA*  $out/EFI/OC/ACPI/
cp -r ~/desktop/Getting-Started-With-ACPI-master/extra-files/compiled/SSDT-EC-DESKTOP*  $out/EFI/OC/ACPI/
# ACPI:Haswell-E
# cp -r ~/desktop/Getting-Started-With-ACPI-master/extra-files/compiled/SSDT-PLUG-DRTNIA*  $out/EFI/OC/ACPI/
# cp -r ~/desktop/Getting-Started-With-ACPI-master/extra-files/compiled/SSDT-EC-USBX-DESKTOP*  $out/EFI/OC/ACPI/
# cp -r ~/desktop/Getting-Started-With-ACPI-master/extra-files/compiled/SSDT-RTC0-RANGE*  $out/EFI/OC/ACPI/
# cp -r ~/desktop/Getting-Started-With-ACPI-master/extra-files/compiledSSDT-UNC*  $out/EFI/OC/ACPI/

# Drivers
rm -r $out/EFI/OC/Drivers/*
cp -r ~/Desktop/OpenCore-0.7.2-RELEASE/X64/EFI/OC/Drivers/OpenRuntime* $out/EFI/OC/Drivers/
cp -r ~/Desktop/OcBinaryData-master/Drivers/HfsPlus.efi $out/EFI/OC/Drivers/

# kexts
# https://dortania.github.io/OpenCore-Install-Guide/ktext.html#kexts
# Lilu-1.5.5;VirtualSMC-1.2.6;WhateverGreen-1.5.2;AppleALC-1.6.3;RadeonSensor-0.3.1
cp -r ~/Desktop/Lilu-1.5.5-RELEASE/Lilu.kext $out/EFI/OC/Kexts/
cp -r ~/Desktop/VirtualSMC-1.2.6-RELEASE/Kexts/VirtualSMC.kext $out/EFI/OC/Kexts/
cp -r ~/Desktop/VirtualSMC-1.2.6-RELEASE/Kexts/SMCProcessor.kext $out/EFI/OC/Kexts/
cp -r ~/Desktop/VirtualSMC-1.2.6-RELEASE/Kexts/SMCSuperIO.kext $out/EFI/OC/Kexts/
cp -r ~/Desktop/RadeonSensor-0.3.1/SMCRadeonGPU.kext $out/EFI/OC/Kexts/
cp -r ~/Desktop/RadeonSensor-0.3.1/RadeonSensor.kext $out/EFI/OC/Kexts/
cp -r ~/Desktop/WhateverGreen-1.5.2-RELEASE/WhateverGreen.kext $out/EFI/OC/Kexts/
cp -r ~/Desktop/AppleALC-1.6.3-RELEASE/AppleALC.kext $out/EFI/OC/Kexts/
# RTL8111_driver_for_OS_X-2.4.2
cp -r ~/Desktop/RealtekRTL8111-V2.4.2/Release/RealtekRTL8111.kext $out/EFI/OC/Kexts/


rm -r $out/EFI/OC/Tools/*
cp -r ~/Desktop/OpenCore-0.7.2-RELEASE/X64/EFI/OC/Tools/OpenShell* $out/EFI/OC/Tools/

# rm -r $out


# git clone https://github.com/corpnewt/ProperTree
# ./ProperTree/ProperTree.bat
```

##  make usb drive
- [OpenCore](https://github.com/acidanthera/OpenCorePkg/releases)
- [rufus](https://rufus.ie/zh/)
- [python](https://www.python.org/downloads/)

```bash
# OpenCore-0.7.2,rufus-3.15;python-3.9.7
# video
# https://www.bilibili.com/video/BV1ZU4y1w7om
# docs
# https://dortania.github.io/OpenCore-Install-Guide/installer-guide/winblows-install.html#downloading-macos
# [conda-usage](https://www.jianshu.com/p/81f1dd1afb84)
# scoop install rufus@3.15
# conda env list
# conda create --name py39 python=3.9
# conda activate py39
# conda create --name py39facei --clone py39
# conda remove --name py39facei --all
# conda env export > environment.yaml
# conda env create -f environment.yaml

# install img
# Big Sur (11)
cd ~/Desktop/OpenCore-0.7.2-RELEASE/Utilities/macrecovery
python macrecovery.py -b Mac-42FD25EABCABB274 -m 00000000000000000 download

# format u-drive with rufus
# ...

udes=/i
# deploy efi
# cp -r ~/Desktop/EFI $udes/
mkdir -p $udes/EFI
# cp -r ~/Desktop/EFI $udes/
# cp -r ~/Desktop/out/EFI/* $udes/EFI

# deploy img
mkdir -p ${udes}/com.apple.recovery.boot
cp ~/Desktop/OpenCore-0.7.2-RELEASE/Utilities/macrecovery/BaseSystem.chunklist ${udes}/com.apple.recovery.boot/BaseSystem.chunklist
cp ~/Desktop/OpenCore-0.7.2-RELEASE/Utilities/macrecovery/BaseSystem.dmg ${udes}/com.apple.recovery.boot/BaseSystem.dmg
```
