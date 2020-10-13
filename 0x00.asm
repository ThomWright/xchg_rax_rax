; Zero all the things! Or at least some of the things.

xor     eax, eax    ; zero the eax register
lea     rbx, [0]    ; set rbx to memory address zero
loop    $           ; resets counter register rcx by looping to the current instruction until it's zero?
mov     rdx, 0      ; set rdx to zero (I see a theme here)
and     esi, 0      ; aaand another way to set to zero
sub     edi, edi    ; you guessed it
push    0           ; push zero to the stack...
pop     rbp         ; and pop it back off again into the stack base pointer
