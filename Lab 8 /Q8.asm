INCLUDE Irvine32.inc

.data
    Msg BYTE "Enter a character: ",0
    isAlphaMsg BYTE "The character is an alphabet letter.",0
    notAlphaMsg BYTE "The character is NOT an alphabet letter.",0

.code
main PROC

    mov edx, OFFSET Msg
    call WriteString
    
    call ReadChar
    call WriteChar      
    call Crlf           
    
    cmp al, 'A'
    jb NotAlphabet       ; Below 'A' in ASCII
    
    cmp al, 'Z'
    jbe IsAlphabet       ; Between 'A'-'Z'
    
    cmp al, 'a'
    jb NotAlphabet       ; Between 'Z' and 'a'
    
    cmp al, 'z'
    ja NotAlphabet       ; Above 'z' in ASCII
    
IsAlphabet:
    mov edx, OFFSET isAlphaMsg
    call WriteString
    call Crlf
    exit
    
NotAlphabet:
    mov edx, OFFSET notAlphaMsg
    call WriteString
    call Crlf
    
    exit
main ENDP
END main
