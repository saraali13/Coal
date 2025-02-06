include irvine32.inc
.data
.code
main proc
mov eax,101110b
add eax,50Ah
add eax,6710d
add eax,1010001b
add eax,0Fh

call DumpRegs
call writedec;for priting only the answer ,DumpRegs is used for printing regs details
exit
main ENDP
end main
