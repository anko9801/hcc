.intel_syntax noprefix
.extern _print
.global _main
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 24
	lea rax, [rbp-20]
	push rax
	push 4
	pop rbx
	pop rax
	add rax, rbx
	push rax
	push 3
	pop rbx
	pop rax
	mov [rax], rbx
	lea rax, [rbp-20]
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
	jne call.else0
	call _print
	jmp call.end0
call.else0:
	push rsi
	call _print
	pop rsi
call.end0:
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret