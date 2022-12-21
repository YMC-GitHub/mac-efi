#!/bin/sh

CPU_NAME=E52678V3
CPU_ID=Haswell-E
MB=huananzhi-X99-F8
NCY=RealtekRTL8111
NCW=IntelAX200
# Intel(R) Wi-Fi 6 AX200 160MHz
GPU_NAME=AMD-RX580
MAC_OS_NAME=macos12
MAC_OS_NAME=macos10.15.7
OC_VERSION=0.8.7
timenow=`date '+%Y-%m-%d-%H-%M-%S'`


# name=${MAC_OS_NAME}_${CPU_NAME}-${CPU_ID}_${MB}_${NCY}-${NCW}_${GPU_NAME}
name=oc${OC_VERSION}_${MAC_OS_NAME}_${CPU_NAME}-${CPU_ID}_${MB}_${NCY}-${NCW}_${GPU_NAME}


# add changelog
# chades=OpenCore/X64/CHANGELOG.md
 chades=OpenCore/X64/EFI/CHANGELOG.md
rm -rf $chades;cp CHANGELOG.md $chades;

mkdir -p zip
rm -rf zip/${name}-efi.zip
zip -r zip/${name}-efi.zip OpenCore/X64/EFI
echo zip/${name}-efi.zip

# mkdir -p debug
# cp -r OpenCore/X64/EFI debug/${name}


mkdir -p archive
# rm -rf archive/${name}
# mkdir -p archive/${name}
# cp -r OpenCore/X64/EFI archive/${name}

# copy to latest
name=latest
rm -rf archive/${name}
mkdir -p archive/${name}
cp -r OpenCore/X64/EFI archive/${name}


name="$timenow"
rm -rf archive/${name}
mkdir -p archive/${name}
cp -r OpenCore/X64/EFI archive/${name}

# copy to desktop
rm -r ~/Desktop/EFI
cp -r OpenCore/X64/EFI ~/Desktop

# scripts/6.zip-efi.sh