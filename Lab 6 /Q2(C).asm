INCLUDE Irvine32.inc

.code
main PROC
  mov ecx,4
	mov ebx,4
	L1:
	mov edx,ecx
	mov ecx,ebx
	mov eax,4
	L2:
	call writedec
	dec eax
	loop L2
	call crlf
	mov ecx,edx
	dec ebx
	loop L1
	exit
main ENDP
END main
