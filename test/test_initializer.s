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
	lea rax, [rbp-4]
	push rax
	push 3
	pop rbx
	pop rax
	mov [rax], rbx
	push 1
	pop rax
	mov QWORD PTR [rbp-16], rax
	push 2
	pop rax
	mov QWORD PTR [rbp-20], rax
	push 3
	pop rax
	mov QWORD PTR [rbp-24], rax
	lea rax, [rbp-24]
	push rax
	lea rax, qword ptr [rip + .LC0]
	push rax
	pop rbx
	pop rax
	mov [rax], rbx
	lea rax, [rbp-27]
	push rax
	lea rax, qword ptr [rip + .LC1]
	push rax
	pop rbx
	pop rax
	mov [rax], rbx
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret
