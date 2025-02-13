include irvine32.inc

.data

arr1 WORD 40,20,50  ; Declare an array of unsigned 16-bit integers with three initializers
.code
main PROC

call DumpRegs
exit
main ENDP
end main
