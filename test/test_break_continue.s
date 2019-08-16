.intel_syntax noprefix
.global _main
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	lea rax, [rbp-4]
	push rax
	push 0
	pop rbx
	pop rax
	mov [rax], rbx
.Lfor.loop0:
	lea rax, [rbp-4]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 10
	pop rbx
	pop rax
	cmp rax, rbx
	setl al
	movzx rax, al
	push rax
	cmp rax, 0
	je .Lfor.end0
	lea rax, [rbp-4]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 4
	pop rbx
	pop rax
	cmp rax, rbx
	jl .Lif.then0
	jmp .Lif.end0
.Lif.then0:
	jmp .Lfor.inc0
.Lif.end0:
	lea rax, [rbp-4]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 8
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lif.then1
	jmp .Lif.end1
.Lif.then1:
	jmp .Lfor.end0
.Lif.end1:
	lea rax, [rbp-4]
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
.Lfor.inc0:
	lea rax, [rbp-4]
	push rax
	lea rax, [rbp-4]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov [rax], rbx
	jmp .Lfor.loop0
.Lfor.end0:
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret
