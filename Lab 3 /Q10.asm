include irvine32.inc

.data
bArray BYTE 20 DUP(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)

.code
main PROC

call DumpRegs
exit
main ENDP
end main
