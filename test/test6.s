.intel_syntax noprefix
.extern _print
.global _main
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	lea rax, [rbp-0]
	push rax
	push 1
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	push 4
	pop rbx
	pop rax
	add rax, rbx
	push rax
	push 2
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	push rsi
	call _print
	pop rsi
	lea rax, [rbp-0]
	push rax
	push 4
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	push rsi
	call _print
	pop rsi
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 4
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rdi
	mov rax, 1
	push rsi
	call _print
	pop rsi
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 4
	pop rbx
	pop rax
	add rax, rbx
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
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret
