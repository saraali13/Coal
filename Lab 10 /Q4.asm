INCLUDE Irvine32.inc

.data
array DWORD 10 DUP(?)
multiplier DWORD 5
arrayMsg BYTE "Array elements: ",0
space BYTE " ",0

.code
main PROC
    push OFFSET array
    push LENGTHOF array
    push multiplier
    call LoadArray
    
    mov edx, OFFSET arrayMsg
    call WriteString
    
    mov esi, OFFSET array
    mov ecx, LENGTHOF array
Display:
    lodsd                   ; Load into EAX
    call WriteDec
    mov edx, OFFSET space
    call WriteString
    loop Display
    
    call Crlf
    exit
main ENDP

LoadArray PROC
    push ebp
    mov ebp, esp
    push edi
    push ecx
    push ebx
    
    cld                     ; Forward direction
    mov edi, [ebp+16]       ; Array address
    mov ecx, [ebp+12]       ; Element count
    mov ebx, [ebp+8]        ; Multiplier
    mov eax, 1              ; Starting value
    
Fill:
    stosd                   ; Store EAX at [EDI]
    imul eax, ebx           ; Multiply for next value
    loop Fill
    
    pop ebx
    pop ecx
    pop edi
    pop ebp
    ret 12
LoadArray ENDP
END main
