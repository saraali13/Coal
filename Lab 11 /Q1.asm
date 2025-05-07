INCLUDE Irvine32.inc

.data

.code
main PROC

; EAX * 21 = EAX * (16 + 4 + 1) = (EAX*16) + (EAX*4) + (EAX*1)
mov ebx, eax   
shl eax, 4     
shl ebx, 2     
add eax, ebx   
add eax, edx   
call WriteDec    
    exit
main ENDP
END main
