INCLUDE Irvine32.inc

.data
arrayB BYTE 60, 70, 80          
arrayW WORD 150, 250, 350       
arrayD DWORD 600, 1200, 1800    

.code
main PROC
    ; Add first and last elements of arrayB (BYTE)
    mov esi, OFFSET arrayB      
    mov al, [esi]               
    add al, [esi + (LENGTHOF arrayB - 1) * TYPE arrayB] 
    movzx eax,al
    call WriteDec                
    call Crlf                   

    ; Add first and last elements of arrayW (WORD)
    mov esi, OFFSET arrayW      
    mov ax, [esi]               
    add ax, [esi + (LENGTHOF arrayW - 1) * TYPE arrayW] 
    movzx eax,ax
    call WriteDec               
    call Crlf                   

    ; Add first and last elements of arrayD (DWORD)
    mov esi, OFFSET arrayD       
    mov eax, [esi]               
    add eax, [esi + (LENGTHOF arrayD - 1) * TYPE arrayD]
    call WriteDec               
    call Crlf                   

    exit
main ENDP
END main
