.intel_syntax noprefix
.extern _print_s
.global _main
.LC0:
	.string "abc"
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 8
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
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret
