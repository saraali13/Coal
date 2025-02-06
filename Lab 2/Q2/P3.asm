include irvine32.inc
.data
.code
main proc
mov ebx,05ADh
sub ebx,eax
add ebx,65d
add ebx, 73o
sub ebx,11100101b
add ebx,07Bh


call DumpRegs
call writedec;for priting only the answer ,DumpRegs is used for printing regs details
exit
main ENDP
end main
