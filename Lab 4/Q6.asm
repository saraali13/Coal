include irvine32.inc

.data
SecondsInDay = 60*60*24
.code
main PROC
MOV EAX, SecondsInDay    

CALL WriteINT
CALL DumpRegs
exit
main ENDP
end main
