include irvine32.inc

.data
Val1 DWORD 25h
Val2 BYTE 36o
Val3 WORD 20d
.code
main PROC
MOV EAX, 89 
ADD EAX, 75Fh
SUB EAX,46o
SUB EAX, 28
ADD EAX, 1101b

CALL WriteINT
CALL DumpRegs
exit
main ENDP
end main
