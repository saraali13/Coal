INCLUDE Irvine32.inc

.data
Str1 BYTE '127&j~3#^&*#*#45^',0
foundMsg BYTE "Character found at index: ",0
notFoundMsg BYTE "Character not found",0

.code
main PROC
    push OFFSET Str1
    push '#'
    call Scan_String_Param
    exit
main ENDP

Scan_String_Param PROC
    push ebp
    mov ebp, esp
    push edi
    
    cld                     ; Clear direction flag
    mov edi, [ebp+12]     
    mov al, [ebp+8]       
    mov ecx, 0            
    
    ; Calculate string length first
    push edi                ; Save original position
    mov ecx, -1             ; Maximum possible length
    xor al, al              ; Search for null terminator
    repne scasb             ; Find string length
    not ecx                 ; Convert to positive length
    dec ecx                 ; Exclude null terminator
    
    pop edi                 ; Restore string address
    mov al, [ebp+8]         ; Restore search character
    repne scasb             ; Search for character
    jnz NotFound
    
    ; Calculate position
    mov eax, edi
    sub eax, [ebp+12]
    dec eax
    
    mov edx, OFFSET foundMsg
    call WriteString
    call WriteDec
    call Crlf
    jmp Done
    
NotFound:
    mov edx, OFFSET notFoundMsg
    call WriteString
    call Crlf
    
Done:
    pop edi
    pop ebp
    ret 8
Scan_String_Param ENDP
END main
