.intel_syntax noprefix
.extern _print
.global _main
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	lea rax, [rbp-0]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	push 2
	pop rbx
	pop rax
	mov [rax], rbx
	lea rax, [rbp-16]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	push 3
	pop rbx
	pop rax
	mov [rax], rbx
	lea rax, [rbp-0]
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
	lea rax, [rbp-16]
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
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret
