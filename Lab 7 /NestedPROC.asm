;examplecode
INCLUDE Irvine32.inc
.data
A DWORD 10
B DWORD 5
.code
main PROC
call MyP
mov eax,A
mov ebx,B
CALL WriteInt
EXIT
main ENDP

MyP PROC 
call MyP2
mov eax,A
mov ebx,B
add eax,ebx
call WriteInt
ret 
MyP endp

MyP2 PROC
mov eax,A
mov ebx,B
sub eax,ebx
call WriteInt
ret
MyP2 endp
END main
