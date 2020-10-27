; Computes average of any two numbers
; Uses nice trick to handle overflow using the carry flag (CF)

add      rax,rdx
rcr      rax,1

; Case where `add` does not carry:
; rax = 0x3, rdx = 0x1
;
; rax = rax + rdx = 0x4, CF = 0
; rax = 0x2

; Case where `add` carries:
; rax = 0xffff, rdx = 0x1
;
; rax = rax + rdx = 0x0, CF = 1
; rax = 0x8000

; And another:
; rax = 0xffff, rdx = 0xffff
;
; rax = rax + rdx = 0xfffe, CF = 1
; rax = 0xffff
