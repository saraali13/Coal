include irvine32.inc
.data
.code
main proc
mov eax,10001101b
add eax,0D83h
add eax,385
add eax, 10
add eax,1111101b
sub eax,0Eh
add eax,0Fh

call DumpRegs
call writedec;for priting only the answer ,DumpRegs is used for printing regs details
exit
main ENDP
end main
