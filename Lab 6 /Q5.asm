INCLUDE Irvine32.inc

.data
arr DWORD 10, 20, 30, 40, 50 

.code
main PROC
    mov esi, OFFSET arr      
    mov edi, OFFSET arr + SIZEOF arr - TYPE arr
    mov ecx, LENGTHOF arr / 2   

ReverseLoop:
    ; Swap elements
    mov eax, [esi]              
    mov ebx, [edi]              
    mov [edi], eax              
    mov [esi], ebx              

    ; Move pointers
    add esi, TYPE arr           
    sub edi, TYPE arr           
    loop ReverseLoop            

    ; Display the reversed array
    mov esi, OFFSET arr         
    mov ecx, LENGTHOF arr       

DisplayLoop:
    mov eax, [esi]              
    call WriteDec                 
    add esi, TYPE arr           
    loop DisplayLoop            

    exit
main ENDP
END main
