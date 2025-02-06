include irvine32.inc
.data
.code
main proc
mov eax,30
sub eax,9
add eax,186
sub eax,150

call DumpRegs
call writedec;for priting only the answer ,DumpRegs is used for printing regs details
exit
main ENDP
end main
