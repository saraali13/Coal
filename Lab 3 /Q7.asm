include irvine32.inc

.data
wArray WORD 12,11,23

.code
main PROC

call DumpRegs
exit
main ENDP
end main
