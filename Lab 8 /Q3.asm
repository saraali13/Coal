INCLUDE Irvine32.inc
.data
	var DWORD 5
	x DWORD ?
.code
main PROC
	mov edx,var
	INC edx
	mov ecx,10
	CMP var, ecx          
	JGE L1 
	CMP ecx, edx 
	JL L1
	mov x, 0             
    mov eax,x
	call WriteDec
	exit
L1:
mov x,1
mov eax,x
call WriteDec
exit
main ENDP
END main
