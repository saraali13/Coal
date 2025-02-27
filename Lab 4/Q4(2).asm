include irvine32.inc

.data
Val1 DWORD 25h
Val2 BYTE 36o
Val3 WORD 20d
.code
main PROC
MOV EAX, Val1        
MOVZX ECX, Val2        
ADD EAX, ECX           
SUB EAX, 654h         
MOVZX ECX, Val3        
ADD EAX, ECX 

CALL WriteINT
CALL DumpRegs
exit
main ENDP
end main
