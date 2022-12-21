
#!/bin/sh

# shim Drivers and Tools for debug

# only OpenRuntime.efi
mkdir -p tmp; cp OpenCore/X64/EFI/OC/Drivers/OpenRuntime.efi tmp/OpenRuntime.efi ; rm -rf OpenCore/X64/EFI/OC/Drivers/* ; mv tmp/OpenRuntime.efi OpenCore/X64/EFI/OC/Drivers/OpenRuntime.efi ;rm -r tmp;

# only OpenShell.efi
mkdir -p tmp; cp OpenCore/X64/EFI/OC/Tools/OpenShell.efi tmp/OpenShell.efi ; rm -rf OpenCore/X64/EFI/OC/Tools/* ; mv tmp/OpenShell.efi OpenCore/X64/EFI/OC/Tools/OpenShell.efi ;rm -r tmp;

# copy hfsplus.efi
cp OCAT-Win64/OCAT-Win64/Database/EFI/OC/Drivers/HfsPlus.efi OpenCore/X64/EFI/OC/Drivers/HfsPlus.efi