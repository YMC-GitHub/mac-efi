#!/bin/sh

# SSDT-PLUG,SSDT-EC-USBX,SSDT-RTC0-RANGE,SSDT-UNC
cp OpenCore/Docs/AcpiSamples/Binaries/SSDT-PLUG.aml OpenCore/X64/EFI/OC/ACPI/
# cp OpenCore/Docs/AcpiSamples/Binaries/SSDT-EC.aml OpenCore/X64/EFI/OC/ACPI/ # add 
cp OpenCore/Docs/AcpiSamples/Binaries/SSDT-EC-USBX.aml OpenCore/X64/EFI/OC/ACPI/
cp OpenCore/Docs/AcpiSamples/Binaries/SSDT-RTC0-RANGE.aml OpenCore/X64/EFI/OC/ACPI/
cp OpenCore/Docs/AcpiSamples/Binaries/SSDT-UNC.aml OpenCore/X64/EFI/OC/ACPI/


# https://www.intel.cn/content/www/cn/zh/design/products-and-solutions/processors-and-chipsets/iot-platform-codenames.html
# mime is  Haswell-E
# Haswell-E vs Haswell
# https://caizhiyuan.gitee.io/opencore-install-guide/ktext.html#high-end-desktop
# https://dortania.github.io/OpenCore-Install-Guide/ktext.html#high-end-desktop
# https://caizhiyuan.gitee.io/opencore-install-guide/ktext.html#laptop
