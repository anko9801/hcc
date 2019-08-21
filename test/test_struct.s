.intel_syntax noprefix
.extern _print_s, _print
.global _main
.LC0:
	.string "aaaaaaass"
.LC1:
	.string "aaaaaa"
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 48
	lea rax, [rbp-0]
	push rax
	lea rax, qword ptr [rip + .LC0]
	push rax
	pop rbx
	pop rax
	mov [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else0
	call _print_s
	jmp call.end0
call.else0:
	push rsi
	call _print_s
	pop rsi
call.end0:
	lea rax, [rbp-8]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	push 2
	pop rbx
	pop rax
	mov [rax], rbx
	lea rax, [rbp-24]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	push 3
	pop rbx
	pop rax
	mov [rax], rbx
	lea rax, [rbp-8]
	push rax
	pop rax
	lea rax, [rax-8]
	push rax
	lea rax, qword ptr [rip + .LC1]
	push rax
	pop rbx
	pop rax
	mov [rax], rbx
	lea rax, [rbp-8]
	push rax
	pop rax
	lea rax, [rax-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else1
	call _print_s
	jmp call.end1
call.else1:
	push rsi
	call _print_s
	pop rsi
call.end1:
	lea rax, [rbp-8]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else2
	call _print
	jmp call.end2
call.else2:
	push rsi
	call _print
	pop rsi
call.end2:
	lea rax, [rbp-24]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else3
	call _print
	jmp call.end3
call.else3:
	push rsi
	call _print
	pop rsi
call.end3:
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret
