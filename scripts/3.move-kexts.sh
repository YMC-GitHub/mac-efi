
#!/bin/sh

#desc:
#copy Kexts from ocat database

# database="C:\Users\Administrator\tempocat"
database=database-kexts

mkdir -p $database
mv /C/Users/Administrator/tempocat/* $database
# del __MACOSX dir and xx.zip file
rm -r $database/__MACOSX
rm -r $database/*.zip

# cp -r ${database}-custom/XHCI-unsupported.kext $database/XHCI-unsupported.kext
