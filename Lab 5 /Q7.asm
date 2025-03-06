include irvine32.inc
.data
arrayB BYTE 60, 70, 80
arrayW WORD 150, 250, 350
arrayD DWORD 600, 1200, 1800

sumB DWORD ?
sumW DWORD ?
sumD DWORD ?
.code
main proc
 ; Add the first and last elements of arrayB (BYTE)
    mov esi, OFFSET arrayB              ; ESI points to the first element of arrayB
    mov al, [esi]                        ; AL = arrayB[0] (60)
    movzx eax, al                        ; Zero-extend AL into EAX (EAX = 60)
    mov esi, OFFSET arrayB + 2          ; ESI points to the last element of arrayB (arrayB[2])
    add eax, [esi]                       ; EAX = EAX + arrayB[2] (60 + 80 = 140)
    ; Result for arrayB is now in EAX
    mov ebx, eax                         ; Store the result for arrayB in EBX
    call writeint   
    ; Add the first and last elements of arrayW (WORD)
    mov esi, OFFSET arrayW              ; ESI points to the first element of arrayW
    mov ax, [esi]                        ; AX = arrayW[0] (150)
    mov esi, OFFSET arrayW + 4          ; ESI points to the last element of arrayW (arrayW[2])
    add ax, [esi]                        ; AX = AX + arrayW[2] (150 + 350 = 500)
    ; Result for arrayW is now in AX
    mov ecx, eax                         ; Store the result for arrayW in ECX
    call writeint   
    ; Add the first and last elements of arrayD (DWORD)
    mov esi, OFFSET arrayD              ; ESI points to the first element of arrayD
    mov eax, [esi]                       ; EAX = arrayD[0] (600)
    mov esi, OFFSET arrayD + 8          ; ESI points to the last element of arrayD (arrayD[2])
    add eax, [esi]                       ; EAX = EAX + arrayD[2] (600 + 1800 = 2400)
    ; Result for arrayD is now in EAX
    mov edx, eax                         ; Store the result for arrayD in EDX
call writeint    

exit
main endp

end main
