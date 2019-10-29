.intel_syntax noprefix
.extern _print_variable_scope, _cu, _exit, _strerror, _vfprintf, _fprintf, _snprintf, _sprintf, _ftell, _fclose, _fread, _fseek, _fopen, _isdigit, _isspace, _printf, _memcmp, _strtol, _strlen, _strncpy, _strncmp, _realloc, _malloc, _calloc, _error_at, _error, _print_token, _preprocessor, _gen_funcs, _gen_extern, _search_hash, _new_hash, _new_node_num, _new_node_s, _consume_ident, _is_reserved, _new_token, _new_binary_node, _aggregate_decl, _print_all, _compile_at, _read_file, _print_lvar, _print_type, _get_name, _analyse, _analyse_pre, _gen_pre, _runtest, _push_back, _new_vector, _gen, _program, _tokenize, _expect
.global _tokenize, _is_reserved_sign, _is_reserved, _new_token, _is_alpha, _is_alnum
token:
	.zero 8
funcs:
	.zero 8
filename:
	.zero 8
strings:
	.zero 8
aggr_list:
	.zero 8
token:
	.zero 8
line:
	.long 0
_is_alnum:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov DWORD PTR [rbp-0], edi
	lea rax, qword ptr [rip + .LC0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setle al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC1]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setle al
	movzx rax, al
	push rax
	pop rbx
	pop rax
	and eax, ebx
	push rax
	lea rax, qword ptr [rip + .LC2]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setle al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC3]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setle al
	movzx rax, al
	push rax
	pop rbx
	pop rax
	and eax, ebx
	push rax
	lea rax, qword ptr [rip + .LC4]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setle al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC5]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setle al
	movzx rax, al
	push rax
	pop rbx
	pop rax
	and eax, ebx
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC6]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbp
	ret
_is_alpha:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov DWORD PTR [rbp-0], edi
	lea rax, qword ptr [rip + .LC7]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setle al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC8]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setle al
	movzx rax, al
	push rax
	pop rbx
	pop rax
	and eax, ebx
	push rax
	lea rax, qword ptr [rip + .LC9]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setle al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC10]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setle al
	movzx rax, al
	push rax
	pop rbx
	pop rax
	and eax, ebx
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC11]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbp
	ret
_new_token:
	push rbp
	mov rbp, rsp
	sub rsp, 56
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-24], rsi
	mov QWORD PTR [rbp-32], rdx
	mov QWORD PTR [rbp-40], rcx
	push 1
	pop rdi
	push 56
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else0
	call _calloc
	jmp .call.end0
.call.else0:
	push rsi
	call _calloc
	pop rsi
.call.end0:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-44]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-44]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	lea rax, [rbp-32]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-44]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-48]
	push rax
	lea rax, [rbp-40]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-44]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-52]
	push rax
	push -1
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	lea rax, [rbp-44]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-44]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_is_reserved:
	push rbp
	mov rbp, rsp
	sub rsp, 24
	mov BYTE PTR [rbp-0], dil
	mov BYTE PTR [rbp-8], sil
	mov BYTE PTR [rbp-16], dl
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else1
	call _strlen
	jmp .call.end1
.call.else1:
	push rsi
	call _strlen
	pop rsi
.call.end1:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else2
	call _strncmp
	jmp .call.end2
.call.else2:
	push rsi
	call _strncmp
	pop rsi
.call.end2:
	push rax
	pop rax
	not eax
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else3
	call _strlen
	jmp .call.end3
.call.else3:
	push rsi
	call _strlen
	pop rsi
.call.end3:
	push rax
	push 1
	pop rbx
	pop rax
	mul rbx
	push rax
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
	mov al, BYTE PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else4
	call _is_alnum
	jmp .call.end4
.call.else4:
	push rsi
	call _is_alnum
	pop rsi
.call.end4:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then1
	jmp .Lif.end1
.Lif.then1:
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	lea rax, DWORD PTR [rip + line@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else5
	call _new_token
	jmp .call.end5
.call.else5:
	push rsi
	call _new_token
	pop rsi
.call.end5:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else6
	call _strlen
	jmp .call.end6
.call.else6:
	push rsi
	call _strlen
	pop rsi
.call.end6:
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else7
	call _strlen
	jmp .call.end7
.call.else7:
	push rsi
	call _strlen
	pop rsi
.call.end7:
	push rax
	push 1
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	push 1
	pop rbp
	ret
.Lif.end1:
	push 0
	pop rbp
	ret
_is_reserved_sign:
	push rbp
	mov rbp, rsp
	sub rsp, 24
	mov BYTE PTR [rbp-0], dil
	mov BYTE PTR [rbp-8], sil
	mov BYTE PTR [rbp-16], dl
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else8
	call _strlen
	jmp .call.end8
.call.else8:
	push rsi
	call _strlen
	pop rsi
.call.end8:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else9
	call _strncmp
	jmp .call.end9
.call.else9:
	push rsi
	call _strncmp
	pop rsi
.call.end9:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	test rax, rax
	je .Lif.then2
	jmp .Lif.end2
.Lif.then2:
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	lea rax, DWORD PTR [rip + line@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else10
	call _new_token
	jmp .call.end10
.call.else10:
	push rsi
	call _new_token
	pop rsi
.call.end10:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else11
	call _strlen
	jmp .call.end11
.call.else11:
	push rsi
	call _strlen
	pop rsi
.call.end11:
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else12
	call _strlen
	jmp .call.end12
.call.else12:
	push rsi
	call _strlen
	pop rsi
.call.end12:
	push rax
	push 1
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	push 1
	pop rbp
	ret
.Lif.end2:
	push 0
	pop rbp
	ret
_tokenize:
	push rbp
	mov rbp, rsp
	sub rsp, 104
	mov QWORD PTR [rbp-0], rdi
	lea rax, [rbp-8]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-8]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lwhile.loop0:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	cmp rax, 0
	je .Lwhile.end0
	lea rax, [rbp-76]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 1
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then3
	jmp .Lif.end3
.Lif.then3:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lwhile.loop0:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC12]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setne al
	movzx rax, al
	push rax
	cmp rax, 0
	je .Lwhile.end0
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC13]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then4
	jmp .Lif.end4
.Lif.then4:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-80]
	push rax
	lea rax, [rbp-80]
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
	mov DWORD PTR [rax], ebx
.Lif.end4:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-80]
	push rax
	lea rax, [rbp-80]
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
	mov DWORD PTR [rax], ebx
	jmp .Lwhile.loop0
.Lwhile.end0:
	lea rax, [rbp-64]
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-80]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	sub rax, rbx
	push rax
	pop rdx
	lea rax, DWORD PTR [rip + line@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else13
	call _new_token
	jmp .call.end13
.call.else13:
	push rsi
	call _new_token
	pop rsi
.call.end13:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	lea rax, [rbp-80]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-64]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	pop rdx
	lea rax, DWORD PTR [rip + line@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else14
	call _new_token
	jmp .call.end14
.call.else14:
	push rsi
	call _new_token
	pop rsi
.call.end14:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	push 1
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-76]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	jmp .Lwhile.loop0
.Lif.end3:
	lea rax, [rbp-76]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 2
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then5
	jmp .Lif.end5
.Lif.then5:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lwhile.loop1:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC14]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setne al
	movzx rax, al
	push rax
	cmp rax, 0
	je .Lwhile.end1
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC15]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then6
	jmp .Lif.end6
.Lif.then6:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-84]
	push rax
	lea rax, [rbp-84]
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
	mov DWORD PTR [rax], ebx
.Lif.end6:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-84]
	push rax
	lea rax, [rbp-84]
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
	mov DWORD PTR [rax], ebx
	jmp .Lwhile.loop1
.Lwhile.end1:
	lea rax, [rbp-64]
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-84]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	sub rax, rbx
	push rax
	pop rdx
	lea rax, DWORD PTR [rip + line@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else15
	call _new_token
	jmp .call.end15
.call.else15:
	push rsi
	call _new_token
	pop rsi
.call.end15:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	lea rax, [rbp-84]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-64]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	pop rdx
	lea rax, DWORD PTR [rip + line@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else16
	call _new_token
	jmp .call.end16
.call.else16:
	push rsi
	call _new_token
	pop rsi
.call.end16:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	push 1
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-76]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	jmp .Lwhile.loop0
.Lif.end5:
	lea rax, [rbp-72]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC16]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then7
	jmp .Lif.end7
.Lif.then7:
	lea rax, [rbp-72]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop0
.Lif.end7:
	lea rax, [rbp-72]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 2
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC17]
	push rax
	pop rsi
	push 2
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else17
	call _strncmp
	jmp .call.end17
.call.else17:
	push rsi
	call _strncmp
	pop rsi
.call.end17:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then8
	jmp .Lif.end8
.Lif.then8:
	lea rax, [rbp-72]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 2
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop0
.Lif.end8:
	push 0
	lea rax, [rbp-72]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	jl .Lif.then9
	jmp .Lif.end9
.Lif.then9:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop0
.Lif.end9:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC18]
	push rax
	pop rsi
	push 2
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else18
	call _strncmp
	jmp .call.end18
.call.else18:
	push rsi
	call _strncmp
	pop rsi
.call.end18:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	test rax, rax
	je .Lif.then10
	jmp .Lif.end10
.Lif.then10:
	lea rax, [rbp-72]
	push rax
	push 1
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 2
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop0
.Lif.end10:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC19]
	push rax
	pop rsi
	push 2
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else19
	call _strncmp
	jmp .call.end19
.call.else19:
	push rsi
	call _strncmp
	pop rsi
.call.end19:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	test rax, rax
	je .Lif.then11
	jmp .Lif.end11
.Lif.then11:
	lea rax, [rbp-72]
	push rax
	push 2
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 2
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop0
.Lif.end11:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else20
	call _isspace
	jmp .call.end20
.call.else20:
	push rsi
	call _isspace
	pop rsi
.call.end20:
	push rax
	pop rax
	test rax, rax
	je .Lif.then12
	jmp .Lif.end12
.Lif.then12:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop0
.Lif.end12:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC20]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then13
	jmp .Lif.end13
.Lif.then13:
	lea rax, DWORD PTR [rip + line@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + line@GOTPCREL]
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
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop0
.Lif.end13:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC21]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then14
	jmp .Lif.end14
.Lif.then14:
	lea rax, [rbp-76]
	push rax
	push 2
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-64]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	pop rdx
	lea rax, DWORD PTR [rip + line@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else21
	call _new_token
	jmp .call.end21
.call.else21:
	push rsi
	call _new_token
	pop rsi
.call.end21:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	push 1
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	jmp .Lwhile.loop0
.Lif.end14:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC22]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then15
	jmp .Lif.end15
.Lif.then15:
	lea rax, [rbp-76]
	push rax
	push 1
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-64]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	pop rdx
	lea rax, DWORD PTR [rip + line@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else22
	call _new_token
	jmp .call.end22
.call.else22:
	push rsi
	call _new_token
	pop rsi
.call.end22:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	push 1
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	jmp .Lwhile.loop0
.Lif.end15:
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC23]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else23
	call _is_reserved
	jmp .call.end23
.call.else23:
	push rsi
	call _is_reserved
	pop rsi
.call.end23:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC24]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else24
	call _is_reserved
	jmp .call.end24
.call.else24:
	push rsi
	call _is_reserved
	pop rsi
.call.end24:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC25]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else25
	call _is_reserved
	jmp .call.end25
.call.else25:
	push rsi
	call _is_reserved
	pop rsi
.call.end25:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC26]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else26
	call _is_reserved
	jmp .call.end26
.call.else26:
	push rsi
	call _is_reserved
	pop rsi
.call.end26:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC27]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else27
	call _is_reserved
	jmp .call.end27
.call.else27:
	push rsi
	call _is_reserved
	pop rsi
.call.end27:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC28]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else28
	call _is_reserved
	jmp .call.end28
.call.else28:
	push rsi
	call _is_reserved
	pop rsi
.call.end28:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC29]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else29
	call _is_reserved
	jmp .call.end29
.call.else29:
	push rsi
	call _is_reserved
	pop rsi
.call.end29:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC30]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else30
	call _is_reserved
	jmp .call.end30
.call.else30:
	push rsi
	call _is_reserved
	pop rsi
.call.end30:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC31]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else31
	call _is_reserved
	jmp .call.end31
.call.else31:
	push rsi
	call _is_reserved
	pop rsi
.call.end31:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC32]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else32
	call _is_reserved
	jmp .call.end32
.call.else32:
	push rsi
	call _is_reserved
	pop rsi
.call.end32:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC33]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else33
	call _is_reserved
	jmp .call.end33
.call.else33:
	push rsi
	call _is_reserved
	pop rsi
.call.end33:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC34]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else34
	call _is_reserved
	jmp .call.end34
.call.else34:
	push rsi
	call _is_reserved
	pop rsi
.call.end34:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC35]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else35
	call _is_reserved
	jmp .call.end35
.call.else35:
	push rsi
	call _is_reserved
	pop rsi
.call.end35:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC36]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else36
	call _is_reserved
	jmp .call.end36
.call.else36:
	push rsi
	call _is_reserved
	pop rsi
.call.end36:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC37]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else37
	call _is_reserved
	jmp .call.end37
.call.else37:
	push rsi
	call _is_reserved
	pop rsi
.call.end37:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC38]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else38
	call _is_reserved
	jmp .call.end38
.call.else38:
	push rsi
	call _is_reserved
	pop rsi
.call.end38:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC39]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else39
	call _is_reserved
	jmp .call.end39
.call.else39:
	push rsi
	call _is_reserved
	pop rsi
.call.end39:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC40]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else40
	call _is_reserved
	jmp .call.end40
.call.else40:
	push rsi
	call _is_reserved
	pop rsi
.call.end40:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC41]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else41
	call _is_reserved
	jmp .call.end41
.call.else41:
	push rsi
	call _is_reserved
	pop rsi
.call.end41:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC42]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else42
	call _is_reserved
	jmp .call.end42
.call.else42:
	push rsi
	call _is_reserved
	pop rsi
.call.end42:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC43]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else43
	call _is_reserved
	jmp .call.end43
.call.else43:
	push rsi
	call _is_reserved
	pop rsi
.call.end43:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC44]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else44
	call _is_reserved_sign
	jmp .call.end44
.call.else44:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end44:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC45]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else45
	call _is_reserved_sign
	jmp .call.end45
.call.else45:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end45:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC46]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else46
	call _is_reserved_sign
	jmp .call.end46
.call.else46:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end46:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC47]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else47
	call _is_reserved_sign
	jmp .call.end47
.call.else47:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end47:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC48]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else48
	call _is_reserved_sign
	jmp .call.end48
.call.else48:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end48:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC49]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else49
	call _is_reserved_sign
	jmp .call.end49
.call.else49:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end49:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC50]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else50
	call _is_reserved_sign
	jmp .call.end50
.call.else50:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end50:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC51]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else51
	call _is_reserved_sign
	jmp .call.end51
.call.else51:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end51:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC52]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else52
	call _is_reserved_sign
	jmp .call.end52
.call.else52:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end52:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC53]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else53
	call _is_reserved_sign
	jmp .call.end53
.call.else53:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end53:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC54]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else54
	call _is_reserved_sign
	jmp .call.end54
.call.else54:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end54:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC55]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else55
	call _is_reserved_sign
	jmp .call.end55
.call.else55:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end55:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC56]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else56
	call _is_reserved_sign
	jmp .call.end56
.call.else56:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end56:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC57]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else57
	call _is_reserved_sign
	jmp .call.end57
.call.else57:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end57:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC58]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else58
	call _is_reserved_sign
	jmp .call.end58
.call.else58:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end58:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC59]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else59
	call _is_reserved_sign
	jmp .call.end59
.call.else59:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end59:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC60]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else60
	call _is_reserved_sign
	jmp .call.end60
.call.else60:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end60:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC61]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else61
	call _is_reserved_sign
	jmp .call.end61
.call.else61:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end61:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC62]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else62
	call _is_reserved_sign
	jmp .call.end62
.call.else62:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end62:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rsi
	lea rax, qword ptr [rip + .LC63]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else63
	call _is_reserved_sign
	jmp .call.end63
.call.else63:
	push rsi
	call _is_reserved_sign
	pop rsi
.call.end63:
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then16
	jmp .Lif.end16
.Lif.then16:
	jmp .Lwhile.loop0
.Lif.end16:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC64]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC65]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC66]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC67]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC68]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC69]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC70]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC71]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC72]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC73]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC74]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC75]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC76]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC77]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC78]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC79]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC80]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC81]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC82]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC83]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC84]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC85]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC86]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC87]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC88]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC89]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then17
	jmp .Lif.end17
.Lif.then17:
	lea rax, [rbp-64]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	pop rdx
	lea rax, DWORD PTR [rip + line@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else64
	call _new_token
	jmp .call.end64
.call.else64:
	push rsi
	call _new_token
	pop rsi
.call.end64:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	push 1
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	jmp .Lwhile.loop0
.Lif.end17:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else65
	call _isdigit
	jmp .call.end65
.call.else65:
	push rsi
	call _isdigit
	pop rsi
.call.end65:
	push rax
	pop rax
	test rax, rax
	je .Lif.then18
	jmp .Lif.end18
.Lif.then18:
	lea rax, [rbp-64]
	push rax
	lea rax, [rbp-4]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	lea rax, DWORD PTR [rip + line@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else66
	call _new_token
	jmp .call.end66
.call.else66:
	push rsi
	call _new_token
	pop rsi
.call.end66:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-32]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rsi
	push 10
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else67
	call _strtol
	jmp .call.end67
.call.else67:
	push rsi
	call _strtol
	pop rsi
.call.end67:
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-88]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	sub rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop0
.Lif.end18:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else68
	call _is_alpha
	jmp .call.end68
.call.else68:
	push rsi
	call _is_alpha
	pop rsi
.call.end68:
	push rax
	pop rax
	test rax, rax
	je .Lif.then19
	jmp .Lif.end19
.Lif.then19:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-96]
	push rax
	lea rax, [rbp-96]
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
	mov DWORD PTR [rax], ebx
.Lfor.loop1:
	cmp rax, 0
	je .Lfor.end1
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else69
	call _is_alnum
	jmp .call.end69
.call.else69:
	push rsi
	call _is_alnum
	pop rsi
.call.end69:
	push rax
	pop rax
	test rax, rax
	je .Lif.then20
	jmp .Lif.else20
.Lif.then20:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-96]
	push rax
	lea rax, [rbp-96]
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
	mov DWORD PTR [rax], ebx
	jmp .Lif.end20
.Lif.else20:
	jmp .Lfor.end1
	jmp .Lif.end20
.Lif.end20:
.Lfor.inc1:
	jmp .Lfor.loop1
.Lfor.end1:
	lea rax, [rbp-64]
	push rax
	lea rax, [rbp-12]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-96]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	sub rax, rbx
	push rax
	pop rdx
	lea rax, DWORD PTR [rip + line@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else70
	call _new_token
	jmp .call.end70
.call.else70:
	push rsi
	call _new_token
	pop rsi
.call.end70:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	lea rax, [rbp-96]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	jmp .Lwhile.loop0
.Lif.end19:
	lea rax, qword ptr [rip + .LC90]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else71
	call _error
	jmp .call.end71
.call.else71:
	push rsi
	call _error
	pop rsi
.call.end71:
	push rax
	jmp .Lwhile.loop2
.Lwhile.end2:
	lea rax, [rbp-20]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-64]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	lea rax, DWORD PTR [rip + line@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else72
	call _new_token
	jmp .call.end72
.call.else72:
	push rsi
	call _new_token
	pop rsi
.call.end72:
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.LC0:
	.string "a"
.LC1:
	.string "z"
.LC2:
	.string "A"
.LC3:
	.string "Z"
.LC4:
	.string "0"
.LC5:
	.string "9"
.LC6:
	.string "_"
.LC7:
	.string "a"
.LC8:
	.string "z"
.LC9:
	.string "A"
.LC10:
	.string "Z"
.LC11:
	.string "_"
.LC12:
	.string "'"
.LC13:
	.string "\\"
.LC14:
	.string "\""
.LC15:
	.string "\\"
.LC16:
	.string "\n"
.LC17:
	.string "*/"
.LC18:
	.string "//"
.LC19:
	.string "/*"
.LC20:
	.string "\n"
.LC21:
	.string "\""
.LC22:
	.string "'"
.LC23:
	.string "void"
.LC24:
	.string "int"
.LC25:
	.string "char"
.LC26:
	.string "bool"
.LC27:
	.string "long"
.LC28:
	.string "struct"
.LC29:
	.string "enum"
.LC30:
	.string "return"
.LC31:
	.string "if"
.LC32:
	.string "else"
.LC33:
	.string "switch"
.LC34:
	.string "case"
.LC35:
	.string "default"
.LC36:
	.string "w