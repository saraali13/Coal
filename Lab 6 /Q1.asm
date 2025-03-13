INCLUDE Irvine32.inc

.code
main PROC
    mov ecx,10
	mov ebx,0
	mov eax,0
	call WriteInt
	mov eax, 1
	call WriteInt

	L1:
	mov edx,eax
	add eax,ebx
	mov ebx, edx
	call WriteInt	
	
	loop L1
	exit
main ENDP
END main
