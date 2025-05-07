INCLUDE Irvine32.inc

.data
Arr DWORD 4 DUP(?)
prompt BYTE "Enter 4 integers:",0
output BYTE "Sorted array:",0
space BYTE " ",0

.code
main PROC
    mov edx, OFFSET prompt
    call WriteString
    call Crlf
    
    
    mov ecx, LENGTHOF Arr
    mov esi, OFFSET Arr
L1:
    call ReadInt          
    mov [esi], eax        
    add esi, TYPE Arr     
    loop L1
    
    ; Call BubbleSort procedure
    push OFFSET Arr       
    push LENGTHOF Arr     
    call BubbleSort
    
    
    mov edx, OFFSET output
    call WriteString
    call Crlf
    
    mov ecx, LENGTHOF Arr
    mov esi, OFFSET Arr
L2:
    mov eax, [esi]        
    call WriteDec         
    mov edx, OFFSET space
    call WriteString      
    add esi, TYPE Arr     
    loop L2
    
    call Crlf
    exit
main ENDP

BubbleSort PROC
    push ebp
    mov ebp, esp
    pushad                
    
    mov esi, [ebp+12]     
    mov ecx, [ebp+8]      
    dec ecx               
    je Done               

OuterLoop:
    mov edx, ecx          
    mov edi, 0            

InnerLoop:
    mov eax, [esi + edi*4]   
    mov ebx, [esi + edi*4 +4] 
    cmp eax, ebx
    jle NoSwap
    
    ; Swap elements
    mov [esi + edi*4], ebx
    mov [esi + edi*4 +4], eax

NoSwap:
    inc edi                ; Move to next pair
    dec edx
    jnz InnerLoop          
    
    loop OuterLoop         

Done:
    popad                  ; Restore all registers
    pop ebp
    ret 8                  ; Clean stack (2 parameters * 4 bytes)
BubbleSort ENDP

END main
