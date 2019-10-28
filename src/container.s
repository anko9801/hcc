.intel_syntax noprefix
.extern _print_variable_scope, _cu, _exit, _strerror, _vfprintf, _fprintf, _snprintf, _sprintf, _ftell, _fclose, _fread, _fseek, _fopen, _printf, _memcmp, _strlen, _strncpy, _strncmp, _realloc, _malloc, _calloc, _error_at, _error, _print_token, _preprocessor, _gen_funcs, _gen_extern, _search_hash, _new_hash, _new_node_num, _new_node_s, _consume_ident, _is_reserved, _new_token, _new_binary_node, _aggregate_decl, _print_all, _compile_at, _read_file, _print_lvar, _print_type, _get_name, _analyse, _analyse_pre, _gen_pre, _runtest, _push_back, _new_vector, _gen, _program, _tokenize, _expect
.global _runtest, _test, _push_back, _new_vector
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
_new_vector:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	push 1
	pop rdi
	push 16
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
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	push 1
	pop rdi
	push 128
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else1
	call _calloc
	jmp .call.end1
.call.else1:
	push rsi
	call _calloc
	pop rsi
.call.end1:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-8]
	push rax
	push 16
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-12]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_push_back:
	push rbp
	mov rbp, rsp
	sub rsp, 24
	mov  [rbp-0], rdi
	mov  [rbp-8], rsi
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-12]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then1
	jmp .Lif.end1
.Lif.then1:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-8]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 2
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
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
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	push 8
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else2
	call _realloc
	jmp .call.end2
.call.else2:
	push rsi
	call _realloc
	pop rsi
.call.end2:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end1:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
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
	lea rax, [rax-12]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-12]
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
	push 8
	pop rbx
	pop rax
	mul rbx
	push rax
	push 8
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
_test:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov  [rbp-0], rdi
	mov  [rbp-4], rsi
	mov  [rbp-8], rdx
	lea rax, qword ptr [rip + .LC0]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-4]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else3
	call _printf
	jmp .call.end3
.call.else3:
	push rsi
	call _printf
	pop rsi
.call.end3:
	push rax
_runtest:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov rax, 0
	test rsp, 15
	jne .call.else4
	call _new_vector
	jmp .call.end4
.call.else4:
	push rsi
	call _new_vector
	pop rsi
.call.end4:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	push 0
	pop rdi
	push 0
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-12]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else5
	call _test
	jmp .call.end5
.call.else5:
	push rsi
	call _test
	pop rsi
.call.end5:
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop1:
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 100
	pop rbx
	pop rax
	cmp rax, rbx
	setl al
	movzx rax, al
	push rax
	cmp rax, 0
	je .Lfor.end1
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else6
	call _push_back
	jmp .call.end6
.call.else6:
	push rsi
	call _push_back
	pop rsi
.call.end6:
	push rax
.Lfor.inc1:
	lea rax, [rbp-8]
	push rax
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
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	jmp .Lfor.loop1
.Lfor.end1:
	push 0
	pop rdi
	push 100
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-12]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else7
	call _test
	jmp .call.end7
.call.else7:
	push rsi
	call _test
	pop rsi
.call.end7:
	push rax
	push 0
	pop rdi
	push 0
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
	push 8
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else8
	call _test
	jmp .call.end8
.call.else8:
	push rsi
	call _test
	pop rsi
.call.end8:
	push rax
	push 0
	pop rdi
	push 50
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 400
	push 8
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else9
	call _test
	jmp .call.end9
.call.else9:
	push rsi
	call _test
	pop rsi
.call.end9:
	push rax
	push 0
	pop rdi
	push 99
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 792
	push 8
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else10
	call _test
	jmp .call.end10
.call.else10:
	push rsi
	call _test
	pop rsi
.call.end10:
	push rax
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC1]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else11
	call _fprintf
	jmp .call.end11
.call.else11:
	push rsi
	call _fprintf
	pop rsi
.call.end11:
	push rax
.LC0:
	.string "%d %d %d\n"
.LC1:
	.string "OK\n"
