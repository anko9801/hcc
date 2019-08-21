.intel_syntax noprefix
.extern _print
.global _main
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	lea rax, [rbp-0]
	push rax
	push 0
	pop rbx
	pop rax
	add rax, rbx
	push rax
	push 1
	pop rbx
	pop rax
	mov [rax], rbx
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
	mov [rax], rbx
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rbx
	pop rax
	mov [rax], rbx
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else0
	call _print
	jmp call.end0
call.else0:
	push rsi
	call _print
	pop rsi
call.end0:
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else1
	call _print
	jmp call.end1
call.else1:
	push rsi
	call _print
	pop rsi
call.end1:
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
	pop rbx
	pop rax
	add rax, rbx
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
