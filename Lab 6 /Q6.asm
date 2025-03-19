INCLUDE Irvine32.inc

.data
arr DWORD 8, 5, 1, 2, 6

.code
main PROC
    mov ecx, LENGTHOF arr - 1  

OuterLoop:
    mov esi, OFFSET arr        
    mov ebx, ecx               

InnerLoop:
    mov eax, [esi]             
    cmp eax, [esi + 4]         
    JLE NoSwap                 

    ; Swap elements
    mov edx, [esi + 4]         
    mov [esi + 4], eax         
    mov [esi], edx             

NoSwap:
    add esi, 4                 
    dec ebx                    
    JNZ InnerLoop              

    loop OuterLoop             

    ; Print the sorted array
    mov esi, OFFSET arr        
    mov ecx, LENGTHOF arr      

PrintArray:
    mov eax, [esi]             
    call WriteDec      
    add esi, 4         
    loop PrintArray    

    exit
main ENDP
END main
