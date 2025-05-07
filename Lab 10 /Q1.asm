INCLUDE Irvine32.inc

.data
Str1 BYTE '127&j~3#^&*#*#45^',0
foundMsg BYTE "Character found at index: ",0
notFoundMsg BYTE "Character not found",0

.code
main PROC
    call Scan_String
    exit
main ENDP

Scan_String PROC
    mov esi, OFFSET Str1   
    mov ecx, 0             

SearchLoop:
    mov al, [esi]          
    cmp al, 0              
    je NotFound            
    cmp al, '#'            
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
    ret

NotFound:
    mov edx, OFFSET notFoundMsg
    call WriteString
    call Crlf
    ret
Scan_String ENDP
END main
