INCLUDE Irvine32.inc
.data
	var DWORD ?
	D1 BYTE "Monday",0
	D2 BYTE "Tuesday",0 
	D3 BYTE "Wednesday",0 
	D4 BYTE "Thrusday",0 
	D5 BYTE "Friday",0 
	D6 BYTE "Saturday",0 
	D7 BYTE "Sunday",0 
	msg BYTE "Enter the number to print week day (1-7)",0
.code
main PROC
	mov edx, OFFSET msg
	call WriteString
	call Crlf
	call ReadDec
	mov var,eax
	CMP var,1
	JE mon
	CMP var,2
	JE tues
	CMP var,3
	JE wed
	CMP var,4
	JE thrus
	CMP var,5
	JE fri
	CMP var,6
	JE sat
	CMP var,7
	JE sun
mon:
	mov edx, OFFSET D1
	call WriteString
	call Crlf
	exit
tues:
	mov edx, OFFSET D2
	call WriteString
	call Crlf
	exit
wed:
	mov edx, OFFSET D3
	call WriteString
	call Crlf
	exit
thrus:
	mov edx, OFFSET D4
	call WriteString
	call Crlf
	exit
fri:
	mov edx, OFFSET D5
	call WriteString
	call Crlf
	exit
sat:
	mov edx, OFFSET D6
	call WriteString
	call Crlf
	exit
sun:
	mov edx, OFFSET D7
	call WriteString
	call Crlf
	exit
exit
main ENDP
END main
