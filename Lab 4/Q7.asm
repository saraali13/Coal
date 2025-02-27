include irvine32.inc

.data
A = 0FF10h
B = 0E10Bh
.code
main PROC
MOV EAX, A
MOV EBX,B
XCHG EAX,EBX

CALL WriteINT
CALL DumpRegs
exit
main ENDP
end main
