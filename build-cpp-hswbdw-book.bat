set "var=%cd%"
rmdir /s /q .\Build
copy ..\blobs\soc\intel\bdw\book\vbt.bin CorebootPayloadPkg\vbt.bin
copy ..\blobs\soc\intel\bdw\IntelGopDriver.efi CorebootPayloadPkg\IntelGopDriver.efi
build -a IA32 -a X64 -p CorebootPayloadPkg\CorebootPayloadPkgIa32X64.dsc -b RELEASE -t VS2017 -n 4
copy .\Build\CorebootPayloadPkgX64\RELEASE_VS2017\FV\UEFIPAYLOAD.fd z:\firmware\tianocore\UEFIPAYLOAD-hswbdw-book.fd