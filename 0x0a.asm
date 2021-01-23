; Increment an arbitrarily long little-endian integer

    add      byte [rdi],1 ; add 1 to the byte at mem address rdi
.loop:
    inc      rdi          ; move to the next memory address
    adc      byte [rdi],0 ; add the carry bit to the byte at mem address rdi
    loop     .loop        ; decrement count (cx), jump to .loop if cx is not 0

; rdi = 64bit reg

; Starting at `byte [rdi]`, we move along byte-by-byte, adding 1 until there are no carries.

; If the initial add overflows, then we'll add 1 to the next mem address.
; This happens until a +1 doesn't overflow. After that, we simply add 0.

; The counter register (cx) defines how many bytes we do this to.

; If we have a two-byte little-endian integer (least significant byte first), like so:

; 0b1111_1111 0b0110_1001

; we add one to turn it into:

; 0b0000_0000 0b0110_1010
