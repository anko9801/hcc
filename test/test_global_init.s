.intel_syntax noprefix
.global _main
.LC0:
	.string "foobar"
a:
	.long 3
b:
	.ascii "foobar\0"
c:
	.quad a
d:
	.quad d + 3
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret
