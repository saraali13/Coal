include irvine32.inc

.data
val1 BYTE 10h
val2 WORD 8000h
val3 DWORD 0FFFFh
val4 WORD 7FFFh
.code
main PROC
MOV AX,val2
INC AX
MOV val2,AX

MOV EAX,0
SUB EAX,val3

MOV AX,val2
MOV BX,val4
SUB AX,BX

CALL WriteINT
CALL DumpRegs
exit
main ENDP
end main
