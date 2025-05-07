INCLUDE Irvine32.inc
.data
arr DWORD 10, 55, 3, 66, 23, 11, 5, 77, 2, 99, 12, 43, 1, 100, 0, 90, 13, 76, 14, 88

.code
main PROC
    push OFFSET arr
    push 20
    call MinMaxArray
    exit
main ENDP

MinMaxArray PROC
    push ebp
    mov ebp, esp
    pushad

    mov ecx, [ebp+8]
    mov esi, [ebp+12]

    mov eax, [esi]
    mov ebx, eax  ; min
    mov edx, eax  ; max

    L1:
        cmp [esi], ebx
        jl NewMin
        cmp [esi], edx
        jg NewMax
        jmp Next

    NewMin:
        mov ebx, [esi]
        jmp Next

    NewMax:
        mov edx, [esi]

    Next:
        add esi, 4
        loop L1

    mov eax, ebx
    call WriteDec
    call Crlf
    mov eax, edx
    call WriteDec
    call Crlf

    popad
    pop ebp
    ret 8
MinMaxArray ENDP
END main
