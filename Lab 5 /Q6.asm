include irvine32.inc
.data
arr DWORD 10,9,8,7,6
result DWORD 0
.code
main proc

mov esi,OFFSET arr
mov eax ,[esi]

add esi,4
sub eax,[esi]

add esi,4
sub eax,[esi]

add esi,4
sub eax,[esi]

add esi,4
sub eax,[esi]

mov result,eax
call writeint    

exit
main endp

end main
