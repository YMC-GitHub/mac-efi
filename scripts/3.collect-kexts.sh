
#!/bin/sh

#desc:
#copy Kexts from ocat database

database=database-kexts
# C:\Users\Administrator\Desktop\huananzhi_x99_f8-main\EFI\OC\Kexts
# https://github.com/RehabMan/OS-X-USB-Inject-All/blob/master/XHCI-unsupported.kext/Contents/Info.plist
mkdir -p ${database}-custom

cp -r "C:\Users\Administrator\Desktop\huananzhi_x99_f8-main\EFI\OC\Kexts\XHCI-unsupported.kext" ${database}-custom

cp -r ${database}-custom/XHCI-unsupported.kext $database

# scripts/3.collect-kexts.sh
