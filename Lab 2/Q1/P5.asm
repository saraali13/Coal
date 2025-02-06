include irvine32.inc
.data
.code
main proc
mov eax,101b
sub eax,9
add eax,01A4h
sub eax, 569


call DumpRegs
call writedec;for priting only the answer ,DumpRegs is used for printing regs details
exit
main ENDP
end main
