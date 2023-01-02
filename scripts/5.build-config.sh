#!/bin/sh

# https://caizhiyuan.gitee.io/opencore-install-guide/config.plist/haswell.html#starting-point
cp OpenCore/Docs/Sample.plist OpenCore/X64/EFI/OC/config.plist

# - [x] acpi 
# https://caizhiyuan.gitee.io/opencore-install-guide/config.plist/haswell.html#acpi
# mime is haswell-e , but i can not found it in offical doc! 
# so refer to haswell!
# add/delete/patch/quirks
# enable acpi plugins in config.plist with atx tool
# ...

# - [x] booter
# https://caizhiyuan.gitee.io/opencore-install-guide/config.plist/haswell.html#booter

# - [x] deviceproperties
# https://caizhiyuan.gitee.io/opencore-install-guide/config.plist/haswell.html#deviceproperties
# 独显时：
# PciRoot(0x0)/Pci(0x2,0x0)|AAPL,ig-platform-id|Data|04001204
# 核显时：
# PciRoot(0x0)/Pci(0x2,0x0)|AAPL,ig-platform-id|Data|0300220D

# - [x] kernel
# https://dortania.github.io/OpenCore-Install-Guide/config.plist/haswell.html#kernel
# https://dortania.github.io/OpenCore-Install-Guide/config.plist/haswell.html#kernel
# enable kernel plugins in config.plist with atx tool
# ...

# AppleCpuPmCfgLock,AppleXcpmCfgLock,DisableIoMapper,LapicKernelPanic,PanicNoKextDump,PowerTimeoutKernelPanic,XhciPortLimit
# mac 12:

# mac 11:
# XhciPortLimit=no # it > mac 11.3
# XhciPortLimit=yes # it < mac 11.3
# mac 10:
# AppleCpuPmCfgLock=yes # it < mac 10.10

# - [x] misc
# https://dortania.github.io/OpenCore-Install-Guide/config.plist/haswell.html#misc
# https://dortania.github.io/OpenCore-Install-Guide/config.plist/haswell.html#misc
# Boot/Debug/Security


# - [x] nvram
# set nvram
# https://dortania.github.io/OpenCore-Install-Guide/config.plist/haswell.html#nvram
# boot-args|-v debug=0x100 keepsyms=1 alcid=1
# boot-args|-v keepsyms=1 debug=0x100 npci=0x2000 alcid=1 agdpmod=pikera
# N CARD:
# boot-args|agdpmod=pikera # prevoid black screen
# boot-args|-radcodec radpg=15 unfairgva=1

# boot-args|alcid=1
# boot-args|npci=0x2000

# -radcodec radpg=15 unfairgva=1
# agdpmod=pikera nvda_drv_vrl=1

# 英文键盘时：
# prev-lang:kbd|String|en-US:0
# 中文简体键盘时：
# prev-lang:kbd|String|zh-Hans:256
# https://dortania.github.io/OpenCore-Install-Guide/config.plist/haswell.html#nvram

# - [x] platforminfo
# set platforminfo
# https://dortania.github.io/OpenCore-Install-Guide/config.plist/haswell.html#platforminfo
# https://dortania.github.io/OpenCore-Install-Guide/config.plist/haswell.html#platforminfo
# 集显 + haswell时：iMac14，4
# 独显 + haswell时：iMac15，1
# 集显 + Broadwell + 安装 mac 11+ 时：iMac16，2
# 独显 + Broadwell + 安装 mac 11+ 时：iMac17，1

# - [x] uefi
# set efi
# https://dortania.github.io/OpenCore-Install-Guide/config.plist/haswell.html#uefi
# Drivers/APFS
# macOS Version	Min Version	Min Date
# High Sierra (10.13.6)	748077008000000	20180621
# Mojave (10.14.6)	945275007000000	20190820
# Catalina (10.15.4)	1412101001000000	20200306
# mac 11+ : -1	-1

# ref:
# https://www.bilibili.com/video/BV1qS4y1H7PC
# https://www.yhwxj.com/2569.html

# all above will be able to install macos 12 for me!
