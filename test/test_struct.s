.intel_syntax noprefix
.global _main
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret
