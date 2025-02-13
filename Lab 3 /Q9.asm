include irvine32.inc

.data
testString BYTE "TEST",0 * 500
.code
main PROC

call DumpRegs
exit
main ENDP
end main
