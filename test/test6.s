.intel_syntax noprefix
.extern _print, _alloc4
.global _main
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov rax, rbp
	sub rax, 8
	push rax
	mov rax, rbp
	sub rax, 8
	push rax
	push 1
	pop rdi
	pop rax
	mov [rax], rdi
	push rdi
	mov rax, rbp
	sub rax, 8
	push rax
	push 1
	push 4
	pop rdi
	pop rax
	mul rdi
	push rax
	pop rdi
	pop rax
	add rax, rdi
	push rax
	push 2
	pop rdi
	pop rax
	mov [rax], rdi
	push rdi
	mov rax, rbp
	sub rax, 16
	push rax
	mov rax, rbp
	sub rax, 8
	push rax
	pop rdi
	pop rax
	mov [rax], rdi
	push rdi
	mov rax, rbp
	sub rax, 16
	push rax
	pop rax
	mov rax, [rax]
	push rax
	pop rax
	mov rax, [rax]
	push rax
	mov rax, rbp
	sub rax, 16
	push rax
	pop rax
	mov rax, [rax]
	push rax
	push 1
	push 4
	pop rdi
	pop rax
	mul rdi
	push rax
	pop rdi
	pop rax
	add rax, rdi
	push rax
	pop rax
	mov rax, [rax]
	push rax
	pop rdi
	pop rax
	add rax, rdi
	push rax
	pop rax
	mov rsp, rbp
	pop rbp
	ret
