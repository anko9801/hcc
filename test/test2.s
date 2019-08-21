.intel_syntax noprefix
.global _main
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	lea rax, [rbp-0]
	push rax
	push 3
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-4]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rax
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rax
	mov rsp, rbp
	pop rbp
	ret
