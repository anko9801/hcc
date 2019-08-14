.intel_syntax noprefix
.global _main
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	lea rax, [rbp-8]
	push rax
	mov rax, rbp
	sub rax, 8
	push rax
	push 0
	pop rbx
	pop rax
	add rax, rbx
	push rax
	push 0
	push 1
	pop rbx
	pop rax
	sub rax, rbx
	push rax
	pop rbx
	pop rax
	mov BYTE PTR [rax], bl
	mov rax, rbp
	sub rax, 8
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	push 2
	pop rbx
	pop rax
	mov BYTE PTR [rax], bl
	mov rax, rbp
	sub rax, 16
	push rax
	push 4
	pop rbx
	pop rax
	mov [rax], rbx
	mov rax, rbp
	sub rax, 8
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
	mov rax, rbp
	sub rax, 16
	push rax
	pop rax
	mov rax, [rax]
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov rsp, rbp
	pop rbp
	ret
