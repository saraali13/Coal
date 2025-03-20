include irvine32.inc
.data

arr BYTE 61,43,11,52, 25
.code
main proc
movzx eax,[arr+2]
call writedec
movzx eax,[arr+4]
call writedec
movzx eax,[arr+1]
call writedec
movzx eax,[arr+3]
call writedec
movzx eax,[arr]
call writedec
exit
main endp
; for word we'll add 2 and for dword we'll add 4
end main
