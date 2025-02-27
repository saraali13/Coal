include irvine32.inc

.code
main PROC
mov al,"S"
add al,"A"
add al,"R"

call DumpRegs
exit
main ENDP
end main
