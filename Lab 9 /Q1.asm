INCLUDE Irvine32.inc

.data

.code
main PROC
    push 5
    push 7
    push 3
    
    call ThreeProd
    
    INVOKE ExitProcess, 0
main ENDP

ThreeProd PROC
    push ebp
    mov ebp, esp
    
    ; Get parameters from stack
    mov eax, [ebp+16]  
    imul eax, [ebp+12] 
    imul eax, [ebp+8]  
    
    ; Display result
    call WriteInt
    call Crlf
    
    pop ebp
    ret 12              ; Clean up stack (3 params * 4 bytes each)
ThreeProd ENDP
END main
