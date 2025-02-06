include irvine32.inc
.data
.code
main proc
mov edx,eax
add edx,1
add edx,ebx
sub edx, ecx
add edx,0Ah
sub edx,65o
add edx,73d


call DumpRegs
call writedec;for priting only the answer ,DumpRegs is used for printing regs details
exit
main ENDP
end main
