INCLUDE Irvine32.inc
.data
A DWORD 2

.code
main PROC
    mov eax,0
    mov ecx, 3

L1:
   PUSH A
    ADD A, 2
loop L1

    mov ecx, 3

L2:
    POP ebx
    ADD eax,ebx
loop L2

;mov eax,ebx
call WriteInt

    exit
main ENDP
END main
