extern _ft_strlen
extern _malloc
extern _ft_memcpy

global _ft_strdup
section .text

_ft_strdup:
cmp rdi, 0
je fail
; mov rbx, rdi
call _ft_strlen
mov rdx, rax
inc rax
mov rdi, rax
push rax
call _malloc
cmp rax, 0
je fail
mov rdi, rax
; mov rsi, rbx
mov rsi, rdi
pop rdx
call _ft_memcpy
ret

fail:
xor rax, rax
ret
