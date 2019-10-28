.intel_syntax noprefix
.extern _print_variable_scope, _cu, _exit, _strerror, _vfprintf, _fprintf, _snprintf, _sprintf, _ftell, _fclose, _fread, _fseek, _fopen, _printf, _memcmp, _strlen, _strncpy, _strncmp, _realloc, _malloc, _calloc, _error_at, _error, _print_token, _preprocessor, _gen_funcs, _gen_extern, _search_hash, _new_hash, _new_node_num, _new_node_s, _consume_ident, _is_reserved, _new_token, _new_binary_node, _aggregate_decl, _print_all, _compile_at, _read_file, _print_lvar, _print_type, _get_name, _analyse, _analyse_pre, _gen_pre, _runtest, _push_back, _new_vector, _gen, _program, _tokenize, _expect
.global _main, _compile_at, _compile, _read_file
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
_read_file:
	push rbp
	mov rbp, rsp
	sub rsp, 32
	mov QWORD PTR [rbp-0], rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC0]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else0
	call _fopen
	jmp .call.end0
.call.else0:
	push rsi
	call _fopen
	pop rsi
.call.end0:
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
	not eax
	push rax
	pop rax
	test rax, rax
	je .Lif.then1
	jmp .Lif.end1
.Lif.then1:
	lea rax, qword ptr [rip + .LC1]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	push 0
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else1
	call _strerror
	jmp .call.end1
.call.else1:
	push rsi
	call _strerror
	pop rsi
.call.end1:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else2
	call _error
	jmp .call.end2
.call.else2:
	push rsi
	call _error
	pop rsi
.call.end2:
	push rax
.Lif.end1:
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	push 0
	pop rsi
	push 3
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else3
	call _fseek
	jmp .call.end3
.call.else3:
	push rsi
	call _fseek
	pop rsi
.call.end3:
	push rax
	push -1
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then2
	jmp .Lif.end2
.Lif.then2:
	lea rax, qword ptr [rip + .LC2]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	push 0
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else4
	call _strerror
	jmp .call.end4
.call.else4:
	push rsi
	call _strerror
	pop rsi
.call.end4:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else5
	call _error
	jmp .call.end5
.call.else5:
	push rsi
	call _error
	pop rsi
.call.end5:
	push rax
.Lif.end2:
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else6
	call _ftell
	jmp .call.end6
.call.else6:
	push rsi
	call _ftell
	pop rsi
.call.end6:
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	push 0
	pop rsi
	push 1
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else7
	call _fseek
	jmp .call.end7
.call.else7:
	push rsi
	call _fseek
	pop rsi
.call.end7:
	push rax
	push -1
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then3
	jmp .Lif.end3
.Lif.then3:
	lea rax, qword ptr [rip + .LC3]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	push 0
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else8
	call _strerror
	jmp .call.end8
.call.else8:
	push rsi
	call _strerror
	pop rsi
.call.end8:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else9
	call _error
	jmp .call.end9
.call.else9:
	push rsi
	call _error
	pop rsi
.call.end9:
	push rax
.Lif.end3:
	push 1
	pop rdi
	lea rax, [rbp-16]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 2
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else10
	call _calloc
	jmp .call.end10
.call.else10:
	push rsi
	call _calloc
	pop rsi
.call.end10:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-20]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-16]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	push 1
	pop rdx
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else11
	call _fread
	jmp .call.end11
.call.else11:
	push rsi
	call _fread
	pop rsi
.call.end11:
	push rax
	lea rax, [rbp-16]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 0
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, [rbp-20]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-16]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	sub rax, rbx
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
	lea rax, qword ptr [rip + .LC4]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setne al
	movzx rax, al
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then4
	jmp .Lif.end4
.Lif.then4:
	lea rax, [rbp-20]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-16]
	push rax
	lea rax, [rbp-16]
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
	lea rax, qword ptr [rip + .LC5]
	push rax
	pop rbx
	pop rax
	mov BYTE PTR [rax], bl
.Lif.end4:
	lea rax, [rbp-20]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-16]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
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
	lea rax, qword ptr [rip + .LC6]
	push rax
	pop rbx
	pop rax
	mov BYTE PTR [rax], bl
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else12
	call _fclose
	jmp .call.end12
.call.else12:
	push rsi
	call _fclose
	pop rsi
.call.end12:
	push rax
	lea rax, [rbp-20]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_compile:
	push rbp
	mov rbp, rsp
	sub rsp, 32
	mov  [rbp-0], rdi
	mov  [rbp-8], rsi
	lea rax, QWORD PTR [rip + user_input@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + filename@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + user_input@GOTPCREL]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + filename@GOTPCREL]
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + token@GOTPCREL]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else13
	call _tokenize
	jmp .call.end13
.call.else13:
	push rsi
	call _tokenize
	pop rsi
.call.end13:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC7]
	push rax
	pop rsi
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else14
	call _fprintf
	jmp .call.end14
.call.else14:
	push rsi
	call _fprintf
	pop rsi
.call.end14:
	push rax
	lea rax, QWORD PTR [rip + token@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + token@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else15
	call _preprocessor
	jmp .call.end15
.call.else15:
	push rsi
	call _preprocessor
	pop rsi
.call.end15:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC8]
	push rax
	pop rsi
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else16
	call _fprintf
	jmp .call.end16
.call.else16:
	push rsi
	call _fprintf
	pop rsi
.call.end16:
	push rax
	lea rax, QWORD PTR [rip + token@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else17
	call _print_token
	jmp .call.end17
.call.else17:
	push rsi
	call _print_token
	pop rsi
.call.end17:
	push rax
	mov rax, 0
	test rsp, 15
	jne .call.else18
	call _program
	jmp .call.end18
.call.else18:
	push rsi
	call _program
	pop rsi
.call.end18:
	push rax
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC9]
	push rax
	pop rsi
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else19
	call _fprintf
	jmp .call.end19
.call.else19:
	push rsi
	call _fprintf
	pop rsi
.call.end19:
	push rax
	lea rax, QWORD PTR [rip + code@GOTPCREL]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else20
	call _analyse_pre
	jmp .call.end20
.call.else20:
	push rsi
	call _analyse_pre
	pop rsi
.call.end20:
	push rax
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC10]
	push rax
	pop rsi
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else21
	call _fprintf
	jmp .call.end21
.call.else21:
	push rsi
	call _fprintf
	pop rsi
.call.end21:
	push rax
	lea rax, QWORD PTR [rip + user_input@GOTPCREL]
	push rax
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + filename@GOTPCREL]
	push rax
	lea rax, [rbp-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
_compile_at:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else22
	call _read_file
	jmp .call.end22
.call.else22:
	push rsi
	call _read_file
	pop rsi
.call.end22:
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else23
	call _compile
	jmp .call.end23
.call.else23:
	push rsi
	call _compile
	pop rsi
.call.end23:
	push rax
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov DWORD PTR [rbp-0], edi
	mov DWORD PTR [rbp-4], esi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 2
	pop rax
	pop rbx
	cmp rax, rbx
	jne .Lif.then5
	jmp .Lif.end5
.Lif.then5:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC11]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else24
	call _fprintf
	jmp .call.end24
.call.else24:
	push rsi
	call _fprintf
	pop rsi
.call.end24:
	push rax
	push 0
	pop rbp
	ret
.Lif.end5:
	lea rax, QWORD PTR [rip + aggr_list@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne .call.else25
	call _new_vector
	jmp .call.end25
.call.else25:
	push rsi
	call _new_vector
	pop rsi
.call.end25:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + typedef_list@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne .call.else26
	call _new_vector
	jmp .call.end26
.call.else26:
	push rsi
	call _new_vector
	pop rsi
.call.end26:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + hashs@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne .call.else27
	call _new_hash
	jmp .call.end27
.call.else27:
	push rsi
	call _new_hash
	pop rsi
.call.end27:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 8
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
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else28
	call _compile_at
	jmp .call.end28
.call.else28:
	push rsi
	call _compile_at
	pop rsi
.call.end28:
	push rax
	lea rax, QWORD PTR [rip + code@GOTPCREL]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + funcs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + extern_funcs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else29
	call _gen_pre
	jmp .call.end29
.call.else29:
	push rsi
	call _gen_pre
	pop rsi
.call.end29:
	push rax
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC12]
	push rax
	pop rsi
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 8
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
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else30
	call _fprintf
	jmp .call.end30
.call.else30:
	push rsi
	call _fprintf
	pop rsi
.call.end30:
	push rax
	push 0
	pop rbp
	ret
.LC0:
	.string "r"
.LC1:
	.string "cannot open %s: %s"
.LC2:
	.string "%s: fseek: %s"
.LC3:
	.string "%s: fseek: %s"
.LC4:
	.string "\n"
.LC5:
	.string "\n"
.LC6:
	.string "\0"
.LC7:
	.string "complete tokenize of %s\n"
.LC8:
	.string "complete preprocessor of %s\n"
.LC9:
	.string "complete parsing of %s\n"
.LC10:
	.string "complete making AST of %s\n"
.LC11:
	.string "Usage: ucc <code>\n"
.LC12:
	.string "complete Code Generating of %s\n"
