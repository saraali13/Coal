INCLUDE Irvine32.inc
.data
prompt BYTE "Enter a number: ",0
.code
main PROC
    call LocalSquare
    exit
main ENDP

LocalSquare PROC
    enter 4, 0              ; allocate 4 bytes for local var
    mov edx, OFFSET prompt
    call WriteString
    call ReadInt
    mov [ebp-4], eax
    mov eax, [ebp-4]
    imul eax, eax
    call WriteDec
    leave
    ret
LocalSquare ENDP

END main
