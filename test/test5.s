.intel_syntax noprefix
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
	pop rbp
	ret
