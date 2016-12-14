set "var=%cd%"
rmdir /s /q .\Build
del CorebootPayloadPkg\vbt.bin
del CorebootPayloadPkg\IntelGopDriver.efi
build -a IA32 -a X64 -p CorebootPayloadPkg\CorebootPayloadPkgIa32X64.dsc -b RELEASE -t VS2015x86 -n 4
copy .\Build\CorebootPayloadPkgX64\RELEASE_VS2015x86\FV\UEFIPAYLOAD.fd z:\firmware\tianocore\UEFIPAYLOAD-NGI.fd