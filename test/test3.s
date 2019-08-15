.intel_syntax noprefix
.global _main
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov rax, rbp
	sub rax, 16
	push rax
	mov rax, rbp
	sub rax, 8
	push rax
	pop rbx
	pop rax
	mov  [rax], rbx
	mov rax, rbp
	sub rax, 16
	push rax
	pop rax
	mov rax,  [rax]
	push rax
	push 3
	pop rbx
	pop rax
	mov  [rax], rbx
	mov rax, rbp
	sub rax, 8
	push rax
	pop rax
	mov rax,  [rax]
	push rax
	pop rax
	mov rsp, rbp
	pop rbp
	ret
