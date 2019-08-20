.intel_syntax noprefix
.global _main
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	lea rax, [rbp-3]
	push rax
	push 0
	pop rbx
	pop rax
	add rax, rbx
	push rax
	push -1
	pop rbx
	pop rax
	mov [rax], rbx
	lea rax, [rbp-3]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	push 2
	pop rbx
	pop rax
	mov [rax], rbx
	lea rax, [rbp-7]
	push rax
	push 4
	pop rbx
	pop rax
	mov [rax], rbx
	lea rax, [rbp-3]
	push rax
	push 0
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	movsx eax, BYTE PTR [rax]
	push rax
	lea rax, [rbp-7]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov rsp, rbp
	pop rbp
	ret
