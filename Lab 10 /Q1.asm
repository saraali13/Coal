.386
.model flat, stdcall
.stack 4096
INCLUDE Irvine32.inc

.data
Str1 BYTE '127&j~3#^&*#*#45^',0
foundMsg BYTE "Character found at index: ",0
notFoundMsg BYTE "Character not found",0

.code
main PROC
    cld                     
    mov edi, OFFSET Str1    
    mov al, '#'             
    mov ecx, LENGTHOF Str1  
    
    repne scasb             ; Repeat while not equal
    jnz NotFound            ; Jump if not found
    
    ; Calculate position (EDI points one past the match)
    mov eax, edi
    sub eax, OFFSET Str1
    dec eax                 ; Adjust to 0-based index
    
    mov edx, OFFSET foundMsg
    call WriteString
    call WriteDec           ; Display position
    call Crlf
    jmp Done
    
NotFound:
    mov edx, OFFSET notFoundMsg
    call WriteString
    call Crlf
    
Done:
    exit
main ENDP
END main
