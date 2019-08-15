.intel_syntax noprefix
.global _main
a:
	.long 3
b:
	.long 7
	.long 1
	.long 15
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret
