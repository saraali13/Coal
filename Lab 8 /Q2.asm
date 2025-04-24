INCLUDE Irvine32.inc
.data
	intArr SWORD 0, 0, 0, 150, 120, 35, -12, 66, 4, 0
	msg BYTE "FIRST NON ZERO NUMBER FOUND",0
.code
main PROC
	mov esi, OFFSET intArr
	mov ecx, SIZEOF intArr

	Loop1:
	mov ax,[esi]
	TEST ax,ax
	JNZ found
	add esi,2
	loop Loop1
found:
	mov edx, OFFSET msg
	call WriteString
	movsx eax,ax
	call Crlf
	call WriteInt

exit
main ENDP
END main
