INCLUDE Irvine32.inc

.code
main PROC
    mov ecx,4
	mov eax,1
	mov ebx,1
	L1:
	mov edx,ecx
	mov ecx,ebx
	L2:
	call writedec
	loop L2
	call crlf
	mov ecx,edx
	inc ebx
	loop L1
	exit
main ENDP
END main
