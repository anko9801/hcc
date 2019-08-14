.intel_syntax noprefix
.global _main
x:
	.zero 3
y:
	.zero 3
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, BYTE PTR [rip]
	push rax
	push 0
	pop rbx
	pop rax
	add rax, rbx
	push rax
	lea rax, BYTE PTR y[rip]
	push rax
	push 1
	push 1
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop rbx
	pop rax
	mov BYTE PTR [rax], bl
	push rbx
	lea rax, BYTE PTR x[rip]
	push rax
	push 0
	push 1
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop rax
	mov rsp, rbp
	pop rbp
	ret
