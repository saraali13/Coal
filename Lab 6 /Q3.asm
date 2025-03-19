INCLUDE Irvine32.inc
.data
	id DWORD 5 DUP(?)
	nname BYTE 5 DUP(20 DUP(?))
	birthyear DWORD 5 DUP(?)
	salary DWORD 5 DUP (?)
	TotalSalary DWORD ?
	msg BYTE "Enter the Employees information: ", 0
	msg_id BYTE "Enter ID: ", 0
	msg_name BYTE "Enter Name: ", 0
	msg_birthyear BYTE "Enter Birth Year: ", 0
	msg_salary BYTE "Enter Salary: ", 0
	msg_totalSalary BYTE "Total Salary: ",0

.code
main PROC
    mov ecx,5
	mov esi,0
	mov TotalSalary,0

	mov edx,OFFSET msg
	call WriteString
	call Crlf
	L1:
	mov edx, OFFSET msg_id
    call WriteString
    call ReadInt
    mov id[esi], eax

	mov edx, OFFSET msg_name
    call WriteString
    mov edx, OFFSET nname
    mov eax, esi
    imul eax, 20             
    add edx, eax
    call ReadString
    
	mov edx, OFFSET msg_birthyear
    call WriteString
    call ReadInt
    mov birthyear[esi], eax 

   
    mov edx, OFFSET msg_salary
    call WriteString
    call ReadInt
    mov salary[esi], eax 

    add TotalSalary, eax      
    add esi,4
    loop L1                   

    mov edx, OFFSET msg_totalSalary
    call WriteString
    mov eax, TotalSalary
    call WriteDec   

    exit
main ENDP
END main
	exit
main ENDP
END mains
