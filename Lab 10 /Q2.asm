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
    push esi               
    push ecx
    
    mov esi, [ebp+12]      
    mov al, [ebp+8]        
    mov ecx, 0             

SearchLoop:
    mov dl, [esi]          
    cmp dl, 0              
    je NotFound
    cmp dl, al             
    je Found
    inc esi
    inc ecx
    jmp SearchLoop

Found:
    mov edx, OFFSET foundMsg
    call WriteString
    mov eax, ecx
    call WriteDec
    call Crlf
    jmp Done

NotFound:
    mov edx, OFFSET notFoundMsg
    call WriteString
    call Crlf

Done:
    pop ecx
    pop esi
    pop ebp
    ret 8                  
Scan_String_Param ENDP
END main
