INCLUDE Irvine32.inc
.data
	arr WORD 10, 4, 7, 14, 299, 156, 3, 19, 29, 300, 20
	msg1 BYTE "Match found",0
	msg2 BYTE "No Match found",0
	msg BYTE "Enter a number",0

.code
main PROC
    mov edx, OFFSET msg
    call WriteString
	call ReadDec
	;movzx eax,ax ax-eax have that value already stored

	mov esi, OFFSET arr
	mov ecx, SIZEOF arr

	Loop1:
		mov bx,[esi]
		CMP ax,bx
		JE found
		add esi,2
		loop Loop1
		mov edx, OFFSET msg2
		call WriteString
		exit
	found:
		mov edx, OFFSET msg1
		call WriteString


exit
main ENDP
END main
