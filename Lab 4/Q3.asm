include irvine32.inc

.data
varB BYTE +10
varW WORD -150
varD DWORD 600
.code
main PROC
MOVSX EAX, varB 
MOVSX EBX, varW  
MOV ECX, varD

call DumpRegs
exit
main ENDP
end main
