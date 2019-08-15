.intel_syntax noprefix
.global _main
.LC0:
	.string "foo"
.LC1:
	.string "bar"
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 32
	mov  [rbp-8], 3
	mov  [rbp-16], 1
	mov  [rbp-20], 2
	mov  [rbp-24], 3
	lea rax, [rbp-24]
	push rax
	lea rax, qword ptr [rip + .LC0]
	push rax
	pop rbx
	pop rax
	mov  [rax], rbx
	lea rax, [rbp-32]
	push rax
	lea rax, qword ptr [rip + .LC0]
	push rax
	pop rbx
	pop rax
	mov  [rax], rbx
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret
