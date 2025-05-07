INCLUDE Irvine32.inc

.data
    numbers DWORD 4 DUP(?)     

.code
main PROC
    mov ecx, 4
    mov esi, OFFSET numbers
loop1:

    call ReadInt
    mov [esi], eax
    add esi, 4
    loop loop1

    ; Check if all numbers are prime
    mov ecx, 4
    mov esi, OFFSET numbers
    mov ebx, 1                  ; Assume all are prime (1 = true)
    
check_all_prime:
    push [esi]                 
    call CheckPrime
    add esp, 4                 
    cmp eax, 0                 
    je not_prime
    add esi, 4
    loop check_all_prime
    jmp all_prime

not_prime:
    mov ebx, 0                  ; Set flag to false

all_prime:
    cmp ebx, 1
    jne not_all_primes

    
    push OFFSET numbers
    push 4
    call LargestPrime
    add esp, 8              
    jmp done

not_all_primes:
    
done:
    exit
main ENDP

CheckPrime PROC
    push ebp
    mov ebp, esp
    push ebx
    push ecx
    push edx
    
    mov eax, [ebp+8]            ; Get number
    cmp eax, 2
    jl not_prime  
    je is_prime   
    
    test eax, 1
    jz not_prime  
    
    mov ecx, 3                
    mov ebx, eax
    shr ebx, 1                
    
check_divisors:
    cmp ecx, ebx
    jg is_prime               
    
    mov eax, [ebp+8]
    xor edx, edx
    div ecx
    cmp edx, 0
    je not_prime              
    
    add ecx, 2                
    jmp check_divisors

is_prime:
    mov eax, 1
    jmp display_result

not_prime:
    mov eax, 0

display_result:
    push eax                  
    mov eax, [ebp+8]
    cmp dword ptr [esp], 1    
    je show_prime

show_prime:
 
show_msg:

    pop eax                   
    
    pop edx
    pop ecx
    pop ebx
    pop ebp
    ret
CheckPrime ENDP

LargestPrime PROC
    push ebp
    mov ebp, esp
    push esi
    push ecx
    push ebx
    
    mov esi, [ebp+12]           
    mov ecx, [ebp+8]            
    mov eax, [esi]              
    
find_largest:
    cmp [esi], eax
    jle next_element
    mov eax, [esi]
next_element:
    add esi, 4
    loop find_largest
    
    call WriteInt
    call Crlf
    
    pop ebx
    pop ecx
    pop esi
    pop ebp
    ret
LargestPrime ENDP

END main
