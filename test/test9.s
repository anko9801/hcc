.intel_syntax noprefix
.global _main
x:
	.zero 3
y:
	.zero 3
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, DWORD PTR [rip + x@GOTPCREL]
	push 0
	pop rbx
	pop rax
	add rax, rbx
	push rax
	lea rax, DWORD PTR [rip + y@GOTPCREL]
	push 1
	push 1
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov rax, BYTE PTR [rax]
	push rax
	pop rbx
	pop rax
	mov BYTE PTR [rax], rbx
	lea rax, DWORD PTR [rip + x@GOTPCREL]
	push 0
	push 1
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov rax, BYTE PTR [rax]
	push rax
	pop rax
	mov rsp, rbp
	pop rbp
	ret
