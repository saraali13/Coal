INCLUDE Irvine32.inc
.data
	val1 DWORD ?
	val2 DWORD ?
	val3 DWORD ?
	val4 DWORD ?
	msg BYTE "Enter Four Numbers",0
	eq_msg BYTE "Equal numbers",0
	neq_msg BYTE "Not Equal numbers",0
.code
main PROC
	mov edx, OFFSET msg
	call WriteString
	call Crlf

	call ReadInt
	mov val1,eax
	call ReadInt
	mov val2,eax
	call ReadInt
	mov val3,eax
	call ReadInt
	mov val4,eax
	mov eax,val1
	mov ebx,val2
	CMP eax,ebx	; val1 and val2
	JNE eqq
	mov ebx,val3
	CMP eax,ebx	; val1 and val3
	JNE eqq
	mov ebx,val4
	CMP eax,ebx	; val1 and val4
	JNE eqq
	mov eax,val2
	mov ebx,val3
	CMP eax,ebx	; val2 and val3
	JNE eqq
	mov ebx,val4
	CMP eax,ebx	; val2 and val4
	JNE eqq
	mov eax,val3
	mov ebx,val4
	CMP eax,ebx	;val3 and val4
	JNE eqq
	mov edx, OFFSET eq_msg
	call WriteString
	call Crlf
	exit

eqq:
	mov edx, OFFSET neq_msg
	call WriteString
	call Crlf
exit

main ENDP
END main
