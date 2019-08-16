.intel_syntax noprefix
.global _main
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 7
	mov rax, rbp
	sub rax, 3
	push rax
	push 0
	pop rbx
	pop rax
	add rax, rbx
	push rax
	push -1
	pop rbx
	pop rax
	mov BYTE PTR [rax], rbx
	mov rax, rbp
	sub rax, 3
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	push 2
	pop rbx
	pop rax
	mov BYTE PTR [rax], rbx
	mov rax, rbp
	sub rax, 7
	push rax
	push 4
	pop rbx
	pop rax
	mov  [rax], rbx
	mov rax, rbp
	sub rax, 3
	push rax
	push 0
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	movsx eax, BYTE PTR [rax]
	push rax
	mov rax, rbp
	sub rax, 7
	push rax
	pop rax
	mov rax,  [rax]
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov rsp, rbp
	pop rbp
	ret
