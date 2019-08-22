.intel_syntax noprefix
.extern _print_s, _print
.global _main
.LC0:
	.string "aaaaaa"
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 40
	lea rax, [rbp-0]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	push 2
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	lea rax, [rax-0]
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
	lea rax, [rax-0]
	mov DWORD PTR [rax], 3
	lea rax, [rbp-0]
	lea rax, [rax-8]
	push rax
	lea rax, qword ptr [rip + .LC0]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rax
	lea rax, [rbp-16]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	lea rax, [rax-0]
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
	lea rax, [rbp]
	lea rax, [rax-8]
	lea rax, [rax-8]
	mov rdi, QWORD PTR [rax]
	mov rax, 1
	test rsp, 15
	jne call.else2
	call _print_s
	jmp call.end2
call.else2:
	push rsi
	call _print_s
	pop rsi
call.end2:
	lea rax, [rbp-0]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	lea rax, [rax-0]
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
	lea rax, [rbp-16]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	lea rax, [rax-0]
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else4
	call _print
	jmp call.end4
call.else4:
	push rsi
	call _print
	pop rsi
call.end4:
	lea rax, [rbp-32]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	push 2
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-32]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	lea rax, [rax-0]
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else5
	call _print
	jmp call.end5
call.else5:
	push rsi
	call _print
	pop rsi
call.end5:
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret
