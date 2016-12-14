#!/bin/bash

rm -rf Build
rm CorebootPayloadPkg/vbt.bin
rm CorebootPayloadPkg/IntelGopDriver.efi
build -a IA32 -a X64 -p CorebootPayloadPkg/CorebootPayloadPkgIa32X64.dsc -b RELEASE -t GCC5 -n 4
cp Build/CorebootPayloadPkgX64/RELEASE_GCC5/FV/UEFIPAYLOAD.fd ../UEFIPAYLOAD-NGI.fd
exit 0
