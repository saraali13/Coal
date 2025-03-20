include irvine32.inc

.data
bArray BYTE 20 DUP(0)

.code
main PROC

call DumpRegs
exit
main ENDP
end main
