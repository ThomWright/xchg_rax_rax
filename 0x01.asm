; Produces the Fibonacci sequence in rdx

.loop:
    xadd     rax, rdx
    loop     .loop

; xadd - exchange and add
;   TEMP ← SRC + DEST
;   SRC ← DEST
;   DEST ← TEMP

; Example:
; If we start both registers at 1:
; rax = 1 -> 2 -> 3 -> 5 -> 8 -> 13
; rdx = 1 -> 1 -> 2 -> 3 -> 5 ->  8
