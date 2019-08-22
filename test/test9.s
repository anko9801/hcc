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
	lea rax, QWORD PTR [rip + x@GOTPCREL]
	push rax
	push 0
	pop rbx
	pop rax
	add rax, rbx
	push rax
	lea rax, QWORD PTR [rip + y@GOTPCREL]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop rbx
	pop rax
	mov BYTE PTR [rax], ebx
	lea rax, QWORD PTR [rip + x@GOTPCREL]
	push rax
	push 0
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop rax
	mov rsp, rbp
	pop rbp
	ret
