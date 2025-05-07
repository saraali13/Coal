INCLUDE Irvine32.inc

.data
Str1 BYTE "Hello",0
Str2 BYTE "Hello",0
equalMsg BYTE "Strings are equal",0
notEqualMsg BYTE "Strings are not equal",0

.code
main PROC
    cld                     ; Clear direction flag
    mov esi, OFFSET Str1
    mov edi, OFFSET Str2
    
    ; First check lengths are equal
    push esi
    mov ecx, -1
    xor al, al
    repne scasb
    not ecx
    dec ecx
    mov ebx, ecx            ; EBX = length of Str2
    
    pop edi
    mov ecx, -1
    repne scasb
    not ecx
    dec ecx                 ; ECX = length of Str1
    
    cmp ecx, ebx
    jne NotEqual
    
    ; If lengths equal, compare content
    mov esi, OFFSET Str1
    mov edi, OFFSET Str2
    mov ecx, ebx            ; Length to compare
    repe cmpsb
    jne NotEqual
    
Equal:
    mov edx, OFFSET equalMsg
    jmp Display
    
NotEqual:
    mov edx, OFFSET notEqualMsg
    
Display:
    call WriteString
    call Crlf
    exit
main ENDP
END main
