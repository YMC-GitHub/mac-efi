#!/bin/sh

# del oc-pkg
rm -rf OpenCore*

version=0.8.7

[ $1 ] && version="$1"

# uzp oc-pkg
# unzip "F:\brower-download\OpenCore-0.7.9-DEBUG.zip" -d /h/make-macos-efi/OpenCore
# unzip "F:\brower-download\OpenCore-0.8.7-DEBUG.zip" -d /h/make-macos-efi/OpenCore
unzip "F:\brower-download\OpenCore-${version}-DEBUG.zip" -d /h/make-macos-efi/OpenCore