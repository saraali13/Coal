INCLUDE Irvine32.inc

.data
Str1 BYTE "Hello",0
Str2 BYTE "Hello",0
equalMsg BYTE "Strings are equal",0
notEqualMsg BYTE "Strings are not equal",0

.code
main PROC
    push OFFSET Str1
    push OFFSET Str2
    call IsCompare
    exit
main ENDP

IsCompare PROC
    push ebp
    mov ebp, esp
    push esi
    push edi
    
    mov esi, [ebp+12]       ; First string
    mov edi, [ebp+8]        ; Second string

CompareLoop:
    mov al, [esi]
    mov bl, [edi]
    cmp al, bl
    jne NotEqual
    cmp al, 0               ; Both reached null terminator?
    je Equal
    inc esi
    inc edi
    jmp CompareLoop

Equal:
    mov edx, OFFSET equalMsg
    jmp DisplayResult

NotEqual:
    mov edx, OFFSET notEqualMsg

DisplayResult:
    call WriteString
    call Crlf
    
    pop edi
    pop esi
    pop ebp
    ret 8                   ; Clean stack
IsCompare ENDP
END main
