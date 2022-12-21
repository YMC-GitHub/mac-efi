## make your owne macos efi for youself
```bash
# work dir
#
# code .

# ocp=OpenCore-0.8.7-DEBUG
# ocp=OpenCore
```

- [x] prepare oc-pkg `scripts/1.prepare-oc.sh`
- [x] del 32 arch `scripts/1.del32.sh`
- [x] shim Drivers and Tools for debug `scripts/2.init-drivers.sh`
- [x] move Kexts `scripts/3.move-kexts.sh`
- [x] copy Kexts from ocat database `scripts/3.init-kexts.sh`
- [x] copy acpi from ocat database `scripts/4.build-acpi.sh`
- [x] set config.plist for mime cpu `scripts/5.build-config.sh`
- [x] use latest config.plist for mime cpu `scripts/5.use-prev-config.sh`
- [x] zip it `scripts/6.zip-efi.sh`
- [x] clean archive `scripts/6.clean-archive.sh`
- [x] collect err log `scripts/6.collect-err.sh`


## video
- [x] install mac os
```
# https://www.bilibili.com/video/BV1SL4y1a7gg
# https://www.bilibili.com/video/BV1rQ4y1C7LK
```

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