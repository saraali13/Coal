include irvine32.inc
.data
.code
main proc
mov ecx,110010101101b
add ecx,045h
sub ecx, 73o
add ecx, ebx
sub ecx,ecx
add ecx,1


call DumpRegs
call writedec;for priting only the answer ,DumpRegs is used for printing regs details
exit
main ENDP
end main
