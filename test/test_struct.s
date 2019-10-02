.intel_syntax noprefix
.extern _calloc, _print_s, _print
.global _main
.LC0:
	.string "aaaaaa"
.LC1:
	.string "abc"
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 56
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
	push rax
	lea rax, [rbp-16]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	push 3
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	pop rax
	lea rax, [rax-8]
	push rax
	lea rax, qword ptr [rip + .LC0]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16]
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
	jne call.else1
	call _print
	jmp call.end1
call.else1:
	push rsi
	call _print
	pop rsi
call.end1:
	push rax
	lea rax, qword ptr [rip + .LC1]
	push rax
	pop rdi
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
	push rax
	lea rax, [rbp-0]
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
	jne call.else3
	call _print_s
	jmp call.end3
call.else3:
	push rsi
	call _print_s
	pop rsi
call.end3:
	push rax
	lea rax, [rbp-32]
	push rax
	push 1
	pop rdi
	push 16
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else4
	call _calloc
	jmp call.end4
call.else4:
	push rsi
	call _calloc
	pop rsi
call.end4:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
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
	jne call.else5
	call _print
	jmp call.end5
call.else5:
	push rsi
	call _print
	pop rsi
call.end5:
	push rax
	lea rax, [rbp-16]
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
	jne call.else6
	call _print
	jmp call.end6
call.else6:
	push rsi
	call _print
	pop rsi
call.end6:
	push rax
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
	lea rax, [rbp-0]
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
	jne call.else7
	call _print
	jmp call.end7
call.else7:
	push rsi
	call _print
	pop rsi
call.end7:
	push rax
	lea rax, [rbp-32]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
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
	jne call.else8
	call _print
	jmp call.end8
call.else8:
	push rsi
	call _print
	pop rsi
call.end8:
	push rax
	lea rax, [rbp-40]
	push rax
	lea rax, DWORD PTR [rip + red@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-40]
	push rax
	pop rax
