include irvine32.inc

.data
a DWORD 011h
b DWORD 010h
cc DWORD 030h
d DWORD 040h

.code
main PROC
mov eax,a
add eax,b

mov ebx,a
sub ebx,b

sub eax,ebx
add eax,cc
add eax,d

mov ebx,eax

call WriteInt
call DumpRegs
exit
main ENDP
end main
