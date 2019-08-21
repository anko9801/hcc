.intel_syntax noprefix
.extern _print
.global _main
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	lea rax, [rbp-0]
	push rax
	push 50
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-4]
	push rax
	push 20
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-8]
	push rax
	push 30
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
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
	sub rax, rbx
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
	mul rbx
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
	xor rdx, rdx
	div rbx
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
	xor rdx, rdx
	div rbx
	mov rax, rdx
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
	and eax, ebx
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
	xor eax, ebx
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
	or eax, ebx
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
	or eax, ebx
	push rax
	lea rax, [rbp-8]
	push rax
	pop rbx
	pop rax
	and eax, ebx
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
	and eax, ebx
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else9
	call _print
	jmp call.end9
call.else9:
	push rsi
	call _print
	pop rsi
call.end9:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 2
	pop rbx
	pop rax
	mov rcx, rbx
	sal eax, cl
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else10
	call _print
	jmp call.end10
call.else10:
	push rsi
	call _print
	pop rsi
call.end10:
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret
