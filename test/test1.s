.intel_syntax noprefix
.extern _print
.global _main, _fibo
_fibo:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov DWORD PTR [rbp-0], edi
	mov DWORD PTR [rbp-4], esi
	mov DWORD PTR [rbp-8], edx
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 20
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lif.then0
	jmp .Lif.end0
.Lif.then0:
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret
.Lif.end0:
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
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-4]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else1
	call _fibo
	jmp call.end1
call.else1:
	push rsi
	call _fibo
	pop rsi
call.end1:
	pop rax
	mov rsp, rbp
	pop rbp
	ret
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	push 1
	pop rdi
	push 1
	pop rsi
	push 1
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else2
	call _fibo
	jmp call.end2
call.else2:
	push rsi
	call _fibo
	pop rsi
call.end2:
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret
