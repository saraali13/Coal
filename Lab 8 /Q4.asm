INCLUDE Irvine32.inc
.data
	var DWORD 0
	msg1 BYTE "Hello",0
	msg2 BYTE "World",0
.code
main PROC

_While:
	CMP var, 10          
	Ja EndWhile
	CMP var, 5
	Jb hello
	mov edx, OFFSET msg2
	call WriteString
	call Crlf
	INC var
	JMP _While
	 
hello:
	mov edx, OFFSET msg1
	call WriteString
	call Crlf
	INC var                         
	JMP _While          
EndWhile:

exit
main ENDP
END main
