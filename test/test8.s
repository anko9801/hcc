.intel_syntax noprefix
.extern _print
.global _main
b:
	.long 0
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, DWORD PTR [rip + b@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	push rsi
	call _print
	pop rsi
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret
