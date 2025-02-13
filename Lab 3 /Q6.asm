include irvine32.inc

.data
a BYTE 00010001b
b BYTE 00010000b
cc BYTE 00110000b
d BYTE 01000000b

.code
main PROC

mov al,a
add al,b

mov bl,a
sub bl,b

sub al,bl
add al,cc
add al,d

mov bl,al

call WriteInt
call DumpRegs
exit
main ENDP
end main
