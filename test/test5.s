.intel_syntax noprefix
.extern _print, _alloc4
.global _main
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	push 4
	push 8
	push 4
	push 8
	push 4
	push 4
	push 4
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret
