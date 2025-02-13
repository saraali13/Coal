include irvine32.inc

.data

val3 SDWORD -2147483648  ; Declare a 32-bit signed integer and initialize with the smallest possible negative value

.code
main PROC

call DumpRegs
exit
main ENDP
end main
