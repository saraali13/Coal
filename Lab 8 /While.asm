include irvine32.inc
.data
op1 DWORD 4
op2 DWORD 6
.code
main proc
mov eax,op1
mov ebx,op2

_While:
CMP eax, ebx          
JGE EndWhile           
INC eax                         
JMP _While          
EndWhile:
call WriteInt

 exit
main ENDP
END main
