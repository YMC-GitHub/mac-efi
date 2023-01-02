# 苹果efi

适合自己电脑的EFI，用于安装卡特琳娜10.15.17成功。

## 设备信息
- [x] 主板 [huananzhi-x99-f8](https://huananzhi.tw/catalog/motherboard/x99-f8/)
- [x] 处理器 [英特尔 Xeon(至强) E5-2678 v3 @ 2.50GHz](https://www.cpu-upgrade.com/CPUs/Intel/Xeon/E5-2678_v3.html) 
- [x] 内存 三星 DDR4 2133MHz 32GB X2（CE M386A4G40DM0-CPB）
- [x] 硬盘 英特尔 M.2 SSD 256G + WDC HDD 2T + 幻影 M.2 SSD 1T
- [x] 显卡 GPU-Z显示为[讯景XFX RX 580 2048sp 8G]() （实际系rx570 4G！某宝二手！买二手需谨慎！很玄学！）
- [x] 有线网卡 Realtek RTL8111H Gigabit Ethernet Controller [（板载）](https://huananzhi.tw/catalog/motherboard/x99-f8/)
- [x] 无线网卡+蓝牙 英特尔 Wi-Fi 6 AX200 160MHz
- [x] 声卡 Realtek ALC892 支持7.1声道，高清音頻解码器 [（板载）](https://huananzhi.tw/catalog/motherboard/x99-f8/)
- [x] 机箱+电源+散热 爱国者 + 鑫谷 750W
- [x] 显示器 拓普申 27英寸 4K分辨率
- [x] 键盘 无线背光
- [x] 鼠标 无线 兔兔鼠二代

## 构建指南

- [x] 使用oca
- [x] 使用oc-0.8.3版本
- [x] 使用x99-haswell-E config.list模板
- [x] 参考配置指南(https://dortania.github.io/OpenCore-Install-Guide/config-HEDT/haswell-e.htm)
- [x] acpi-add 使用x99-haswell-E config.list模板
- [x] boot-quicks 使用 haswell预设
- [x] kernel-quicks 使用 haswell-E预设
- [x] misc 照抄配置指南
- [x] nvram-add 参考配置指南
- [x] -v debug=0x100 keepsyms=1 npci=0x2000 alcid=1  -radcodec radpg=15 unfairgva=1
- [x] nvram-Delete 照抄配置指南
- [x] pi 使用 iMacPro1,1    Intel Xeon W-2140B CPU @ 3.20 GHz
- [x] UEFI 照抄配置指南
- [x] 保存-验证-备份

## 使用指南
- [x] 替换U盘中的EFI
