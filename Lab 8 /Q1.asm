INCLUDE Irvine32.inc
.data
	val1 BYTE ?
	val2 BYTE ?
	msg BYTE "Enter two numbers",0
	eq_msg BYTE "Equal numbers",0
	neq_msg BYTE "Not Equal numbers",0
.code
main PROC
	mov edx, OFFSET msg
	call WriteString
	call Crlf

	call WriteInt
	mov val1,eax
	call WriteInt
	mov val2,eax

	CMP val1,val2
	JE eqq


main ENDP
END main
