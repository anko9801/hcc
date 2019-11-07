.intel_syntax noprefix
.extern _print_variable_scope, _cu, _exit, _strerror, _vfprintf, _fprintf, _snprintf, _sprintf, _ftell, _fclose, _fread, _fseek, _fopen, _isdigit, _isspace, _printf, _memcmp, _strtol, _strlen, _strncpy, _strncmp, _realloc, _malloc, _calloc, _error_at, _error, _print_token, _preprocessor, _gen_funcs, _gen_extern, _search_hash, _new_hash, _new_node_num, _new_node_s, _consume_ident, _is_reserved, _new_token, _new_binary_node, _aggregate_decl, _print_all, _compile_at, _read_file, _print_lvar, _print_type, _get_name, _analyse, _analyse_pre, _gen_pre, _runtest, _push_back, _new_vector, _gen, _program, _tokenize, _expect
.global _print_token, _preprocessor, _deep_copy, _preconsume
_preconsume:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov DWORD PTR [rbp-0], edi
	mov DWORD PTR [rbp-8], esi
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else0
	call _strlen
	jmp .call.end0
.call.else0:
	push rsi
	call _strlen
	pop rsi
.call.end0:
	push rax
	lea rax, [rbp-0]
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
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setne al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
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
	lea rax, [rbp-0]
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
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else1
	call _strncmp
	jmp .call.end1
.call.else1:
	push rsi
	call _strncmp
	pop rsi
.call.end1:
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then1
	jmp .Lif.end1
.Lif.then1:
	push 0
	pop rbp
	ret
.Lif.end1:
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
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	push 1
	pop rbp
	ret
_deep_copy:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov QWORD PTR [rbp-0], rdi
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
	pop rax
	pop rbx
	cmp rax, rbx
	jne .Lif.then2
	jmp .Lif.end2
.Lif.then2:
	lea rax, [rbp-8]
	push rax
	push 1
	pop rdi
	push 56
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else2
	call _calloc
	jmp .call.end2
.call.else2:
	push rsi
	call _calloc
	pop rsi
.call.end2:
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
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-8]
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
	pop rax
	lea rax, [rax-32]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
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
	lea rax, [rax-44]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-48]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-48]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-52]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-52]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else3
	call _deep_copy
	jmp .call.end3
.call.else3:
	push rsi
	call _deep_copy
	pop rsi
.call.end3:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end2:
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_preprocessor:
	push rbp
	mov rbp, rsp
	sub rsp, 1128
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-16], 0
	mov QWORD PTR [rbp-24], 0
	mov QWORD PTR [rbp-32], 0
	mov QWORD PTR [rbp-40], 0
	mov QWORD PTR [rbp-48], 0
	mov QWORD PTR [rbp-56], 0
	mov QWORD PTR [rbp-64], 0
	mov QWORD PTR [rbp-72], 0
	mov QWORD PTR [rbp-80], 0
	mov QWORD PTR [rbp-88], 0
	mov QWORD PTR [rbp-96], 0
	mov QWORD PTR [rbp-104], 0
	mov QWORD PTR [rbp-112], 0
	mov QWORD PTR [rbp-120], 0
	mov QWORD PTR [rbp-128], 0
	mov QWORD PTR [rbp-136], 0
	mov QWORD PTR [rbp-144], 0
	mov QWORD PTR [rbp-152], 0
	mov QWORD PTR [rbp-160], 0
	mov QWORD PTR [rbp-168], 0
	mov QWORD PTR [rbp-176], 0
	mov QWORD PTR [rbp-184], 0
	mov QWORD PTR [rbp-192], 0
	mov QWORD PTR [rbp-200], 0
	mov QWORD PTR [rbp-208], 0
	mov QWORD PTR [rbp-216], 0
	mov QWORD PTR [rbp-224], 0
	mov QWORD PTR [rbp-232], 0
	mov QWORD PTR [rbp-240], 0
	mov QWORD PTR [rbp-248], 0
	mov QWORD PTR [rbp-256], 0
	mov QWORD PTR [rbp-264], 0
	mov QWORD PTR [rbp-272], 0
	mov QWORD PTR [rbp-280], 0
	mov QWORD PTR [rbp-288], 0
	mov QWORD PTR [rbp-296], 0
	mov QWORD PTR [rbp-304], 0
	mov QWORD PTR [rbp-312], 0
	mov QWORD PTR [rbp-320], 0
	mov QWORD PTR [rbp-328], 0
	mov QWORD PTR [rbp-336], 0
	mov QWORD PTR [rbp-344], 0
	mov QWORD PTR [rbp-352], 0
	mov QWORD PTR [rbp-360], 0
	mov QWORD PTR [rbp-368], 0
	mov QWORD PTR [rbp-376], 0
	mov QWORD PTR [rbp-384], 0
	mov QWORD PTR [rbp-392], 0
	mov QWORD PTR [rbp-400], 0
	mov QWORD PTR [rbp-408], 0
	mov QWORD PTR [rbp-416], 0
	mov QWORD PTR [rbp-424], 0
	mov QWORD PTR [rbp-432], 0
	mov QWORD PTR [rbp-440], 0
	mov QWORD PTR [rbp-448], 0
	mov QWORD PTR [rbp-456], 0
	mov QWORD PTR [rbp-464], 0
	mov QWORD PTR [rbp-472], 0
	mov QWORD PTR [rbp-480], 0
	mov QWORD PTR [rbp-488], 0
	mov QWORD PTR [rbp-496], 0
	mov QWORD PTR [rbp-504], 0
	mov QWORD PTR [rbp-512], 0
	mov QWORD PTR [rbp-520], 0
	mov QWORD PTR [rbp-528], 0
	mov QWORD PTR [rbp-536], 0
	mov QWORD PTR [rbp-544], 0
	mov QWORD PTR [rbp-552], 0
	mov QWORD PTR [rbp-560], 0
	mov QWORD PTR [rbp-568], 0
	mov QWORD PTR [rbp-576], 0
	mov QWORD PTR [rbp-584], 0
	mov QWORD PTR [rbp-592], 0
	mov QWORD PTR [rbp-600], 0
	mov QWORD PTR [rbp-608], 0
	mov QWORD PTR [rbp-616], 0
	mov QWORD PTR [rbp-624], 0
	mov QWORD PTR [rbp-632], 0
	mov QWORD PTR [rbp-640], 0
	mov QWORD PTR [rbp-648], 0
	mov QWORD PTR [rbp-656], 0
	mov QWORD PTR [rbp-664], 0
	mov QWORD PTR [rbp-672], 0
	mov QWORD PTR [rbp-680], 0
	mov QWORD PTR [rbp-688], 0
	mov QWORD PTR [rbp-696], 0
	mov QWORD PTR [rbp-704], 0
	mov QWORD PTR [rbp-712], 0
	mov QWORD PTR [rbp-720], 0
	mov QWORD PTR [rbp-728], 0
	mov QWORD PTR [rbp-736], 0
	mov QWORD PTR [rbp-744], 0
	mov QWORD PTR [rbp-752], 0
	mov QWORD PTR [rbp-760], 0
	mov QWORD PTR [rbp-768], 0
	mov QWORD PTR [rbp-776], 0
	mov QWORD PTR [rbp-784], 0
	mov QWORD PTR [rbp-792], 0
	mov QWORD PTR [rbp-800], 0
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	push 1
	pop rdi
	push 56
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else4
	call _calloc
	jmp .call.end4
.call.else4:
	push rsi
	call _calloc
	pop rsi
.call.end4:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-816]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-816]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lwhile.loop1:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-20]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setne al
	movzx rax, al
	push rax
	cmp rax, 0
	je .Lwhile.end1
	lea rax, qword ptr [rip + .LC0]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
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
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else5
	call _strncmp
	jmp .call.end5
.call.else5:
	push rsi
	call _strncmp
	pop rsi
.call.end5:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	test rax, rax
	je .Lif.then3
	jmp .Lif.end3
.Lif.then3:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC1]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else6
	call _preconsume
	jmp .call.end6
.call.else6:
	push rsi
	call _preconsume
	pop rsi
.call.end6:
	push rax
	pop rax
	test rax, rax
	je .Lif.then4
	jmp .Lif.else4
.Lif.then4:
	push 1
	pop rdi
	push 104
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else7
	call _calloc
	jmp .call.end7
.call.else7:
	push rsi
	call _calloc
	pop rsi
.call.end7:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-832]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC2]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else8
	call _preconsume
	jmp .call.end8
.call.else8:
	push rsi
	call _preconsume
	pop rsi
.call.end8:
	push rax
	pop rax
	test rax, rax
	je .Lif.then5
	jmp .Lif.end5
.Lif.then5:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop1:
	lea rax, [rbp-844]
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
	je .Lfor.end1
	lea rax, [rbp-832]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-20]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-844]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC3]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else9
	call _preconsume
	jmp .call.end9
.call.else9:
	push rsi
	call _preconsume
	pop rsi
.call.end9:
	push rax
	pop rax
	test rax, rax
	je .Lif.then6
	jmp .Lif.end6
.Lif.then6:
	jmp .Lfor.inc1
.Lif.end6:
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC4]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else10
	call _preconsume
	jmp .call.end10
.call.else10:
	push rsi
	call _preconsume
	pop rsi
.call.end10:
	push rax
	pop rax
	test rax, rax
	je .Lif.then7
	jmp .Lif.end7
.Lif.then7:
	lea rax, [rbp-840]
	push rax
	lea rax, [rbp-844]
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
	jmp .Lfor.end1
.Lif.end7:
.Lfor.inc1:
	lea rax, [rbp-844]
	push rax
	lea rax, [rbp-844]
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
.Lif.end5:
	lea rax, [rbp-832]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-16]
	push rax
	lea rax, [rbp-840]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-832]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lwhile.loop2:
	push 1
	cmp rax, 0
	je .Lwhile.end2
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC5]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then8
	jmp .Lif.end8
.Lif.then8:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end8:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop2:
	lea rax, [rbp-856]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-832]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-16]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setl al
	movzx rax, al
	push rax
	cmp rax, 0
	je .Lfor.end2
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-832]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-20]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-856]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-832]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-20]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-856]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else11
	call _strncmp
	jmp .call.end11
.call.else11:
	push rsi
	call _strncmp
	pop rsi
.call.end11:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	test rax, rax
	je .Lif.then9
	jmp .Lif.end9
.Lif.then9:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-52]
	push rax
	lea rax, [rbp-856]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	jmp .Lfor.end2
.Lif.end9:
.Lfor.inc2:
	lea rax, [rbp-856]
	push rax
	lea rax, [rbp-856]
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
	jmp .Lfor.loop2
.Lfor.end2:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC6]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setne al
	movzx rax, al
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
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
	lea rax, [rax-44]
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
	add rax, rbx
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC7]
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
	je .Lif.then10
	jmp .Lif.end10
.Lif.then10:
	lea rax, [rbp-848]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
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
	lea rax, [rax-24]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	jmp .Lwhile.end2
.Lif.end10:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop2
.Lwhile.end2:
	lea rax, [rbp-824]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	lea rax, [rbp-848]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-824]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop3:
	lea rax, [rbp-860]
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
	je .Lfor.end3
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-860]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	test rax, rax
	je .Lif.then11
	jmp .Lif.end11
.Lif.then11:
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-860]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
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
	lea rax, [rbp-832]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lfor.end3
.Lif.end11:
.Lfor.inc3:
	lea rax, [rbp-860]
	push rax
	lea rax, [rbp-860]
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
	jmp .Lfor.loop3
.Lfor.end3:
	jmp .Lwhile.loop1
	jmp .Lif.end4
.Lif.else4:
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC8]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else12
	call _preconsume
	jmp .call.end12
.call.else12:
	push rsi
	call _preconsume
	pop rsi
.call.end12:
	push rax
	pop rax
	test rax, rax
	je .Lif.then12
	jmp .Lif.end12
.Lif.then12:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC9]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else13
	call _preconsume
	jmp .call.end13
.call.else13:
	push rsi
	call _preconsume
	pop rsi
.call.end13:
	push rax
	pop rax
	test rax, rax
	je .Lif.then13
	jmp .Lif.else13
.Lif.then13:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC10]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else14
	call _preconsume
	jmp .call.end14
.call.else14:
	push rsi
	call _preconsume
	pop rsi
.call.end14:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	test rax, rax
	je .Lif.then14
	jmp .Lif.end14
.Lif.then14:
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
	jne .call.else15
	call _fprintf
	jmp .call.end15
.call.else15:
	push rsi
	call _fprintf
	pop rsi
.call.end15:
	push rax
.Lif.end14:
	lea rax, [rbp-888]
	push rax
	pop rdi
	lea rax, [rbp-880]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-880]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else16
	call _strncpy
	jmp .call.end16
.call.else16:
	push rsi
	call _strncpy
	pop rsi
.call.end16:
	push rax
	lea rax, [rbp-888]
	push rax
	lea rax, [rbp-880]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
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
	lea rax, qword ptr [rip + .LC12]
	push rax
	pop rbx
	pop rax
	mov BYTE PTR [rax], bl
	lea rax, [rbp-872]
	push rax
	lea rax, [rbp-888]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else17
	call _read_file
	jmp .call.end17
.call.else17:
	push rsi
	call _read_file
	pop rsi
.call.end17:
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else18
	call _tokenize
	jmp .call.end18
.call.else18:
	push rsi
	call _tokenize
	pop rsi
.call.end18:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-864]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end13
.Lif.else13:
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC13]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else19
	call _preconsume
	jmp .call.end19
.call.else19:
	push rsi
	call _preconsume
	pop rsi
.call.end19:
	push rax
	pop rax
	test rax, rax
	je .Lif.then15
	jmp .Lif.end15
.Lif.then15:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC14]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else20
	call _preconsume
	jmp .call.end20
.call.else20:
	push rsi
	call _preconsume
	pop rsi
.call.end20:
	push rax
	pop rax
	test rax, rax
	je .Lif.then16
	jmp .Lif.end16
.Lif.then16:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end16:
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC15]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else21
	call _preconsume
	jmp .call.end21
.call.else21:
	push rsi
	call _preconsume
	pop rsi
.call.end21:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	test rax, rax
	je .Lif.then17
	jmp .Lif.end17
.Lif.then17:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC16]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else22
	call _fprintf
	jmp .call.end22
.call.else22:
	push rsi
	call _fprintf
	pop rsi
.call.end22:
	push rax
.Lif.end17:
	lea rax, [rbp-864]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end15:
	jmp .Lif.end13
.Lif.end13:
	lea rax, [rbp-872]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	test rax, rax
	je .Lif.then18
	jmp .Lif.else18
.Lif.then18:
	lea rax, [rbp-824]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	lea rax, [rbp-872]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lwhile.loop3:
	lea rax, [rbp-872]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-20]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setne al
	movzx rax, al
	push rax
	cmp rax, 0
	je .Lwhile.end3
	lea rax, [rbp-872]
	push rax
	lea rax, [rbp-872]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop3
.Lwhile.end3:
	lea rax, [rbp-872]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	lea rax, [rbp-864]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-824]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end18
.Lif.else18:
	lea rax, [rbp-824]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	lea rax, [rbp-864]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end18
.Lif.end18:
.Lif.end12:
	jmp .Lif.end4
.Lif.end4:
.Lif.end3:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop4:
	lea rax, [rbp-996]
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
	je .Lfor.end4
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-996]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	test rax, rax
	je .Lif.then19
	jmp .Lif.end19
.Lif.then19:
	jmp .Lfor.end4
.Lif.end19:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-996]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-996]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else23
	call _strncmp
	jmp .call.end23
.call.else23:
	push rsi
	call _strncmp
	pop rsi
.call.end23:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	test rax, rax
	je .Lif.then20
	jmp .Lif.end20
.Lif.then20:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC17]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else24
	call _preconsume
	jmp .call.end24
.call.else24:
	push rsi
	call _preconsume
	pop rsi
.call.end24:
	push rax
	pop rax
	test rax, rax
	je .Lif.then21
	jmp .Lif.else21
.Lif.then21:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC18]
	push rax
	pop rsi
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-996]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-996]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else25
	call _get_name
	jmp .call.end25
.call.else25:
	push rsi
	call _get_name
	pop rsi
.call.end25:
	push rax
	pop rdx
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-996]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-16]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else26
	call _fprintf
	jmp .call.end26
.call.else26:
	push rsi
	call _fprintf
	pop rsi
.call.end26:
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop5:
	lea rax, [rbp-1096]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-996]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-16]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setl al
	movzx rax, al
	push rax
	cmp rax, 0
	je .Lfor.end5
	lea rax, [rbp-1016]
	push rax
	lea rax, [rbp-1096]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
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
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lfor.loop6:
	cmp rax, 0
	je .Lfor.end6
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC19]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else27
	call _preconsume
	jmp .call.end27
.call.else27:
	push rsi
	call _preconsume
	pop rsi
.call.end27:
	push rax
	pop rax
	test rax, rax
	je .Lif.then22
	jmp .Lif.end22
.Lif.then22:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
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
	lea rax, [rax-24]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-1100]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lfor.end6
.Lif.end22:
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-996]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-16]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	sub rax, rbx
	push rax
	lea rax, [rbp-1096]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
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
	lea rax, [rax-24]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC20]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else28
	call _preconsume
	jmp .call.end28
.call.else28:
	push rsi
	call _preconsume
	pop rsi
.call.end28:
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then23
	jmp .Lif.end23
.Lif.then23:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
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
	lea rax, [rax-24]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-1108]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-1008]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lfor.end6
.Lif.end23:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lfor.inc6:
	jmp .Lfor.loop6
.Lfor.end6:
.Lfor.inc5:
	lea rax, [rbp-1096]
	push rax
	lea rax, [rbp-1096]
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
	jmp .Lfor.loop5
.Lfor.end5:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-1000]
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
	lea rax, [rax-24]
	push rax
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-996]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else29
	call _deep_copy
	jmp .call.end29
.call.else29:
	push rsi
	call _deep_copy
	pop rsi
.call.end29:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lwhile.loop4:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	cmp rax, 0
	je .Lwhile.end4
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
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
	je .Lif.then24
	jmp .Lif.end24
.Lif.then24:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end24:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-52]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push -1
	pop rax
	pop rbx
	cmp rax, rbx
	jne .Lif.then25
	jmp .Lif.end25
.Lif.then25:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
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
	lea rax, [rax-24]
	push rax
	lea rax, [rbp-1016]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-52]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else30
	call _deep_copy
	jmp .call.end30
.call.else30:
	push rsi
	call _deep_copy
	pop rsi
.call.end30:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lwhile.loop5:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	cmp rax, 0
	je .Lwhile.end5
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop5
.Lwhile.end5:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	lea rax, [rbp-1116]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end25:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop4
.Lwhile.end4:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	lea rax, [rbp-1008]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end21
.Lif.else21:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC22]
	push rax
	pop rsi
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-996]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-996]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else31
	call _get_name
	jmp .call.end31
.call.else31:
	push rsi
	call _get_name
	pop rsi
.call.end31:
	push rax
	pop rdx
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-996]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-16]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else32
	call _fprintf
	jmp .call.end32
.call.else32:
	push rsi
	call _fprintf
	pop rsi
.call.end32:
	push rax
	lea rax, [rbp-1008]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-1000]
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
	lea rax, [rax-24]
	push rax
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-996]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else33
	call _deep_copy
	jmp .call.end33
.call.else33:
	push rsi
	call _deep_copy
	pop rsi
.call.end33:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lwhile.loop6:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	cmp rax, 0
	je .Lwhile.end6
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop6
.Lwhile.end6:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	lea rax, [rbp-1008]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end21
.Lif.end21:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-1000]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end20:
.Lfor.inc4:
	lea rax, [rbp-996]
	push rax
	lea rax, [rbp-996]
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
	jmp .Lfor.loop4
.Lfor.end4:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop1
.Lwhile.end1:
	lea rax, [rbp-816]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_print_token:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov  [rbp-0], rdi
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop7:
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 20000
	pop rbx
	pop rax
	cmp rax, rbx
	setl al
	movzx rax, al
	push rax
	cmp rax, 0
	je .Lfor.end7
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	test rax, rax
	je .Lif.then26
	jmp .Lif.end26
.Lif.then26:
	jmp .Lfor.end7
.Lif.end26:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC23]
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else34
	call _get_name
	jmp .call.end34
.call.else34:
	push rsi
	call _get_name
	pop rsi
.call.end34:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else35
	call _fprintf
	jmp .call.end35
.call.else35:
	push rsi
	call _fprintf
	pop rsi
.call.end35:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC24]
	push rax
	pop rsi
	push 1
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else36
	call _strncmp
	jmp .call.end36
.call.else36:
	push rsi
	call _strncmp
	pop rsi
.call.end36:
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
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC25]
	push rax
	pop rsi
	push 1
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else37
	call _strncmp
	jmp .call.end37
.call.else37:
	push rsi
	call _strncmp
	pop rsi
.call.end37:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then27
	jmp .Lif.end27
.Lif.then27:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC26]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else38
	call _fprintf
	jmp .call.end38
.call.else38:
	push rsi
	call _fprintf
	pop rsi
.call.end38:
	push rax
.Lif.end27:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lfor.inc7:
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
	jmp .Lfor.loop7
.Lfor.end7:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC27]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else39
	call _fprintf
	jmp .call.end39
.call.else39:
	push rsi
	call _fprintf
	pop rsi
.call.end39:
	push rax
.LC0:
	.string "#"
.LC1:
	.string "define"
.LC2:
	.string "("
.LC3:
	.string ","
.LC4:
	.string ")"
.LC5:
	.string "\\"
.LC6:
	.string "\\"
.LC7:
	.string "\n"
.LC8:
	.string "include"
.LC9:
	.string "\""
.LC10:
	.string "\""
.LC11:
	.string "\n"
.LC12:
	.string "\0"
.LC13:
	.string "<"
.LC14:
	.string "."
.LC15:
	.string ">"
.LC16:
	.string "not >\n"
.LC17:
	.string "("
.LC18:
	.string "expanding define %s %d\n"
.LC19:
	.string ","
.LC20:
	.string ")"
.LC21:
	.string "\\"
.LC22:
	.string "expanding define %s %d\n"
.LC23:
	.string "%s  "
.LC24:
	.string "{"
.LC25:
	.string ";"
.LC26:
	.string "\n"
.LC27:
	.string "\n\n\n\n\n\n"
