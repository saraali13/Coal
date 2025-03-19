INCLUDE Irvine32.inc

.data
Source BYTE "Hello, World!", 0  
Target BYTE SIZEOF Source DUP(?) 

.code
main PROC
    mov esi, 0                  
    mov ecx, SIZEOF Source      

CopyLoop:
    mov al, Source[esi]         
    mov Target[esi], al         
    inc esi                     
    loop CopyLoop               

    ; Display the copied string
    mov edx, OFFSET Target      
    call WriteString            
    call Crlf                  

    exit
main ENDP
END main
