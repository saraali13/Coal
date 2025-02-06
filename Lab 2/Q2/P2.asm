include irvine32.inc
.data
.code
main proc
mov eax,05ADh
sub eax,ebx
add eax,65o
add eax, 65d
sub eax,11110111b
add eax,150

call DumpRegs
call writedec;for priting only the answer ,DumpRegs is used for printing regs details
exit
main ENDP
end main
