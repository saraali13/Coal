INCLUDE Irvine32.inc
.data
	arr WORD 10, 4, 7, 14, 299, 156, 3, 19, 29, 300, 20
	msg BYTE "Sorted array",0
	msg1 BYTE ", ",0

.code
main PROC
	
	call BubbleSort
	mov esi, OFFSET arr
	mov ecx, LENGTHOF arr
	mov edx, OFFSET msg
    call WriteString
	call Crlf

Loop1:
    mov ax, [esi]
	movzx eax, ax
	call WriteDec
	mov edx, OFFSET msg1
    call WriteString
	add esi,2
	loop Loop1
exit
main ENDP

BubbleSort PROC
		mov esi, OFFSET arr
		mov ecx, LENGTHOF arr
	loop1:
		push ecx
		mov esi, OFFSET arr
		loop2:
			mov ax, [esi]
			cmp ax, [esi+2]
			jle NoSwap
			mov bx, [esi+2]
			mov [esi+2], ax
			mov [esi] ,bx
	NoSwap:
		add esi, 2
		loop loop2
	pop ecx
	loop loop1

	ret
BubbleSort ENDP

END main
