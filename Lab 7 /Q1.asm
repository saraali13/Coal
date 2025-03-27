INCLUDE Irvine32.inc
.data
arr1 WORD 10,20,30,40,50,60,70,80,90,100
arr2 WORD 10 DUP(?)

.code
main PROC
    mov esi, OFFSET arr1
    mov edi, OFFSET arr2
    mov ecx, 10

L1:
    mov ax, [esi]
    mov [edi], ax
    add esi, 2
    add edi, 2
    loop L1

    mov esi, OFFSET arr2
    mov ecx, 10

L2:
    mov ax, [esi]
    movzx eax, ax
    call WriteDec
    call Crlf
    add esi, 2
    loop L2

    exit
main ENDP
END main
