.intel_syntax noprefix
.extern _print_content, _print_variable_scope, _cu, _vfprintf, _fprintf, _snprintf, _sprintf, _printf, _memcmp, _strlen, _strncpy, _strncmp, _calloc, _error_at, _error, _print_token, _preprocessor, _gen_funcs, _gen_extern, _search_hash, _new_hash, _new_node_num, _new_node_s, _consume_ident, _is_reserved, _new_token, _new_binary_node, _aggregate_decl, _print_all, _compile_at, _read_file, _print_lvar, _print_type, _get_name, _analyse, _analyse_pre, _gen_pre, _runtest, _push_back, _new_vector, _gen, _program, _tokenize, _expect
.global _analyse, _analyse_pre, _print_all, _print_content, _print_func, _print_lvars, _print_lvar, _print_type, _print_aggr, _print_node
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
tab:
	.long -1
type_char:
	.ascii "\0"
kari_char:
	.ascii "\0"
print_nodes:
	.byte ''
_print_node:
	push rbp
	mov rbp, rsp
	sub rsp, 24
	mov  [rbp-0], rdi
	mov  [rbp-8], rsi
	lea rax, BYTE PTR [rip + print_nodes@GOTPCREL]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	pop rax
	test rax, rax
	je .Lif.then1
	jmp .Lif.end1
.Lif.then1:
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
	lea rax, DWORD PTR [rip + tab@GOTPCREL]
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
	je .Lfor.end1
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC2]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else0
	call _fprintf
	jmp .call.end0
.call.else0:
	push rsi
	call _fprintf
	pop rsi
.call.end0:
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
	lea rax, [rbp-12]
	push rax
	lea rax, [rbp-0]
	push rax
	push 12
	push 1
	pop rbx
	pop rax
	sub rax, rbx
	push rax
	push 4
	pop rbx
	pop rax
	xor rdx, rdx
	div rbx
	push rax
	push 4
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
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
	pop rsi
	lea rax, [rbp-12]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else1
	call _vfprintf
	jmp .call.end1
.call.else1:
	push rsi
	call _vfprintf
	pop rsi
.call.end1:
	push rax
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC3]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else2
	call _fprintf
	jmp .call.end2
.call.else2:
	push rsi
	call _fprintf
	pop rsi
.call.end2:
	push rax
.Lif.end1:
_print_aggr:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov  [rbp-0], rdi
	mov  [rbp-4], rsi
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop2:
	lea rax, [rbp-12]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-12]
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
	mov eax, DWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rdi
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-12]
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
	lea rax, [rbp-12]
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
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else3
	call _print_content
	jmp .call.end3
.call.else3:
	push rsi
	call _print_content
	pop rsi
.call.end3:
	push rax
.Lfor.inc2:
	lea rax, [rbp-12]
	push rax
	lea rax, [rbp-12]
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
_print_type:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov QWORD PTR [rbp-0], rdi
	lea rax, QWORD PTR [rip + type_char@GOTPCREL]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC4]
	push rax
	pop rsi
	push 30
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else4
	call _strncpy
	jmp .call.end4
.call.else4:
	push rsi
	call _strncpy
	pop rsi
.call.end4:
	push rax
	lea rax, QWORD PTR [rip + kari_char@GOTPCREL]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC5]
	push rax
	pop rsi
	push 30
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else5
	call _strncpy
	jmp .call.end5
.call.else5:
	push rsi
	call _strncpy
	pop rsi
.call.end5:
	push rax
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
	je .Lif.then2
	jmp .Lif.end2
.Lif.then2:
	lea rax, qword ptr [rip + .LC6]
	push rax
	pop rbp
	ret
.Lif.end2:
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
.Lwhile.loop0:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-32]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	cmp rax, 0
	je .Lwhile.end0
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
	lea rax, [rbp-12]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then3
	jmp .Lif.end3
.Lif.then3:
	lea rax, QWORD PTR [rip + kari_char@GOTPCREL]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC7]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + type_char@GOTPCREL]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else6
	call _sprintf
	jmp .call.end6
.call.else6:
	push rsi
	call _sprintf
	pop rsi
.call.end6:
	push rax
.Lif.end3:
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
	lea rax, [rbp-16]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then4
	jmp .Lif.end4
.Lif.then4:
	lea rax, QWORD PTR [rip + kari_char@GOTPCREL]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC8]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + type_char@GOTPCREL]
	push rax
	pop rdx
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
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else7
	call _sprintf
	jmp .call.end7
.call.else7:
	push rsi
	call _sprintf
	pop rsi
.call.end7:
	push rax
.Lif.end4:
	lea rax, QWORD PTR [rip + type_char@GOTPCREL]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + kari_char@GOTPCREL]
	push rax
	pop rsi
	push 30
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else8
	call _strncpy
	jmp .call.end8
.call.else8:
	push rsi
	call _strncpy
	pop rsi
.call.end8:
	push rax
	lea rax, [rbp-0]
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
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop0
.Lwhile.end0:
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
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch1.case0
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
	lea rax, [rbp-4]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch1.case1
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
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch1.case2
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
	lea rax, [rbp-16]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch1.case3
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
	lea rax, [rbp-12]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch1.case4
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
	lea rax, [rbp-20]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch1.case5
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
	lea rax, [rbp-24]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch1.case6
	jmp .Lswitch1.end
.Lswitch1.case0
	lea rax, QWORD PTR [rip + kari_char@GOTPCREL]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC9]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + type_char@GOTPCREL]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else9
	call _sprintf
	jmp .call.end9
.call.else9:
	push rsi
	call _sprintf
	pop rsi
.call.end9:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case1
	lea rax, QWORD PTR [rip + kari_char@GOTPCREL]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC10]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + type_char@GOTPCREL]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else10
	call _sprintf
	jmp .call.end10
.call.else10:
	push rsi
	call _sprintf
	pop rsi
.call.end10:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case2
	lea rax, QWORD PTR [rip + kari_char@GOTPCREL]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC11]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + type_char@GOTPCREL]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else11
	call _sprintf
	jmp .call.end11
.call.else11:
	push rsi
	call _sprintf
	pop rsi
.call.end11:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case3
	lea rax, QWORD PTR [rip + kari_char@GOTPCREL]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC12]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + type_char@GOTPCREL]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else12
	call _sprintf
	jmp .call.end12
.call.else12:
	push rsi
	call _sprintf
	pop rsi
.call.end12:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case4
	lea rax, QWORD PTR [rip + kari_char@GOTPCREL]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC13]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + type_char@GOTPCREL]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else13
	call _sprintf
	jmp .call.end13
.call.else13:
	push rsi
	call _sprintf
	pop rsi
.call.end13:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case5
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then5
	jmp .Lif.end5
.Lif.then5:
	lea rax, QWORD PTR [rip + kari_char@GOTPCREL]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC14]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + type_char@GOTPCREL]
	push rax
	pop rdx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-40]
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
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-40]
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
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else14
	call _get_name
	jmp .call.end14
.call.else14:
	push rsi
	call _get_name
	pop rsi
.call.end14:
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else15
	call _sprintf
	jmp .call.end15
.call.else15:
	push rsi
	call _sprintf
	pop rsi
.call.end15:
	push rax
.Lif.end5:
	jmp .Lswitch1.end
.Lswitch1.case6
	lea rax, QWORD PTR [rip + kari_char@GOTPCREL]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC15]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + type_char@GOTPCREL]
	push rax
	pop rdx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-40]
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
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-40]
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
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else16
	call _get_name
	jmp .call.end16
.call.else16:
	push rsi
	call _get_name
	pop rsi
.call.end16:
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else17
	call _sprintf
	jmp .call.end17
.call.else17:
	push rsi
	call _sprintf
	pop rsi
.call.end17:
	push rax
	jmp .Lswitch1.end
.Lswitch1.end
	lea rax, QWORD PTR [rip + type_char@GOTPCREL]
	push rax
	pop rdi
	push 30
	pop rsi
	lea rax, qword ptr [rip + .LC16]
	push rax
	pop rdx
	lea rax, QWORD PTR [rip + kari_char@GOTPCREL]
	push rax
	pop rcx
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop r8
	mov rax, 5
	test rsp, 15
	jne .call.else18
	call _snprintf
	jmp .call.end18
.call.else18:
	push rsi
	call _snprintf
	pop rsi
.call.end18:
	push rax
	lea rax, QWORD PTR [rip + type_char@GOTPCREL]
	push rax
	pop rbp
	ret
_print_lvar:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov  [rbp-0], rdi
	mov  [rbp-4], rsi
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop3:
	lea rax, [rbp-12]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-0]
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
	je .Lfor.end3
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC17]
	push rax
	pop rsi
	mov rax, 2
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
.Lfor.inc3:
	lea rax, [rbp-12]
	push rax
	lea rax, [rbp-12]
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
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC18]
	push rax
	pop rsi
	lea rax, [rbp-4]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else20
	call _print_type
	jmp .call.end20
.call.else20:
	push rsi
	call _print_type
	pop rsi
.call.end20:
	push rax
	pop rdx
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	lea rax, [rbp-4]
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
	lea rax, [rbp-4]
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
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else21
	call _get_name
	jmp .call.end21
.call.else21:
	push rsi
	call _get_name
	pop rsi
.call.end21:
	push rax
	pop r8
	mov rax, 5
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
	lea rax, [rbp-4]
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then6
	jmp .Lif.end6
.Lif.then6:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-4]
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
	pop rax
	lea rax, [rax-40]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else23
	call _print_aggr
	jmp .call.end23
.call.else23:
	push rsi
	call _print_aggr
	pop rsi
.call.end23:
	push rax
.Lif.end6:
	lea rax, [rbp-4]
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
	pop rax
	lea rax, [rax-32]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-4]
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
	pop rax
	lea rax, [rax-32]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-40]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then7
	jmp .Lif.end7
.Lif.then7:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-4]
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
	pop rax
	lea rax, [rax-32]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-40]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else24
	call _print_aggr
	jmp .call.end24
.call.else24:
	push rsi
	call _print_aggr
	pop rsi
.call.end24:
	push rax
.Lif.end7:
_print_lvars:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov  [rbp-0], rdi
	mov  [rbp-4], rsi
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	test rax, rax
	je .Lif.then8
	jmp .Lif.end8
.Lif.then8:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else25
	call _print_lvar
	jmp .call.end25
.call.else25:
	push rsi
	call _print_lvar
	pop rsi
.call.end25:
	push rax
	pop rbp
	ret
.Lif.end8:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-4]
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
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else26
	call _print_lvars
	jmp .call.end26
.call.else26:
	push rsi
	call _print_lvars
	pop rsi
.call.end26:
	push rax
_print_func:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC19]
	push rax
	pop rsi
	lea rax, [rbp-0]
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
	jne .call.else27
	call _print_type
	jmp .call.end27
.call.else27:
	push rsi
	call _print_type
	pop rsi
.call.end27:
	push rax
	pop rdx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-16]
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
	lea rax, [rax-24]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else28
	call _get_name
	jmp .call.end28
.call.else28:
	push rsi
	call _get_name
	pop rsi
.call.end28:
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else29
	call _fprintf
	jmp .call.end29
.call.else29:
	push rsi
	call _fprintf
	pop rsi
.call.end29:
	push rax
_print_content:
	push rbp
	mov rbp, rsp
	sub rsp, 24
	mov  [rbp-0], rdi
	mov  [rbp-4], rsi
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then9
	jmp .Lif.else9
.Lif.then9:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-272]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else30
	call _print_lvar
	jmp .call.end30
.call.else30:
	push rsi
	call _print_lvar
	pop rsi
.call.end30:
	push rax
	jmp .Lif.end9
.Lif.else9:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop4:
	lea rax, [rbp-12]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-0]
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
	je .Lfor.end4
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC20]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else31
	call _fprintf
	jmp .call.end31
.call.else31:
	push rsi
	call _fprintf
	pop rsi
.call.end31:
	push rax
.Lfor.inc4:
	lea rax, [rbp-12]
	push rax
	lea rax, [rbp-12]
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
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC21]
	push rax
	pop rsi
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else32
	call _print_type
	jmp .call.end32
.call.else32:
	push rsi
	call _print_type
	pop rsi
.call.end32:
	push rax
	pop rdx
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-260]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-268]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else33
	call _get_name
	jmp .call.end33
.call.else33:
	push rsi
	call _get_name
	pop rsi
.call.end33:
	push rax
	pop rcx
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop r8
	mov rax, 5
	test rsp, 15
	jne .call.else34
	call _fprintf
	jmp .call.end34
.call.else34:
	push rsi
	call _fprintf
	pop rsi
.call.end34:
	push rax
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then10
	jmp .Lif.end10
.Lif.then10:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop5:
	lea rax, [rbp-16]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-0]
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
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC22]
	push rax
	pop rsi
	mov rax, 2
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
.Lfor.inc5:
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
	jmp .Lfor.loop5
.Lfor.end5:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC23]
	push rax
	pop rsi
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-32]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else36
	call _print_type
	jmp .call.end36
.call.else36:
	push rsi
	call _print_type
	pop rsi
.call.end36:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else37
	call _fprintf
	jmp .call.end37
.call.else37:
	push rsi
	call _fprintf
	pop rsi
.call.end37:
	push rax
.Lif.end10:
	jmp .Lif.end9
.Lif.end9:
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then11
	jmp .Lif.end11
.Lif.then11:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC24]
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
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-280]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else39
	call _print_func
	jmp .call.end39
.call.else39:
	push rsi
	call _print_func
	pop rsi
.call.end39:
	push rax
.Lif.end11:
_print_all:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC25]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else40
	call _fprintf
	jmp .call.end40
.call.else40:
	push rsi
	call _fprintf
	pop rsi
.call.end40:
	push rax
	push 1
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else41
	call _print_content
	jmp .call.end41
.call.else41:
	push rsi
	call _print_content
	pop rsi
.call.end41:
	push rax
_analyse_pre:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov  [rbp-0], rdi
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop6:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-8]
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
	cmp rax, 0
	je .Lfor.end6
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-8]
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
	jne .call.else42
	call _analyse
	jmp .call.end42
.call.else42:
	push rsi
	call _analyse
	pop rsi
.call.end42:
	push rax
.Lfor.inc6:
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
	jmp .Lfor.loop6
.Lfor.end6:
_analyse:
	push rbp
	mov rbp, rsp
	sub rsp, 200
	mov  [rbp-0], rdi
	lea rax, DWORD PTR [rip + tab@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + tab@GOTPCREL]
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	test rax, rax
	je .Lif.then12
	jmp .Lif.end12
.Lif.then12:
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
	lea rax, [rbp-68]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case0
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
	lea rax, [rbp-72]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case1
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
	lea rax, [rbp-76]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case2
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
	lea rax, [rbp-80]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case3
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
	lea rax, [rbp-84]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case4
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
	lea rax, [rbp-64]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case5
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
	lea rax, [rbp-152]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case6
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
	lea rax, [rbp-144]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case7
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
	lea rax, [rbp-148]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case8
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
	lea rax, [rbp-60]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case9
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
	lea rax, [rbp-88]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case10
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
	lea rax, [rbp-92]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case11
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
	lea rax, [rbp-96]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case12
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
	lea rax, [rbp-108]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case13
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
	lea rax, [rbp-112]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case14
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
	lea rax, [rbp-116]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case15
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
	lea rax, [rbp-120]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case16
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
	lea rax, [rbp-124]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case17
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
	lea rax, [rbp-128]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case18
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
	lea rax, [rbp-136]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case19
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
	lea rax, [rbp-132]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case20
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
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case21
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
	lea rax, [rbp-4]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case22
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
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case23
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
	lea rax, [rbp-12]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case24
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
	lea rax, [rbp-16]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case25
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
	lea rax, [rbp-20]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case26
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
	lea rax, [rbp-24]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case27
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
	lea rax, [rbp-28]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case28
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
	lea rax, [rbp-32]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case29
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
	lea rax, [rbp-36]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case30
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
	lea rax, [rbp-40]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case31
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
	lea rax, [rbp-48]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case32
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
	lea rax, [rbp-56]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case33
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
	lea rax, [rbp-52]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case34
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
	lea rax, [rbp-44]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch2.case35
	jmp .Lswitch2.default
	jmp .Lswitch2.end
.Lswitch2.case0
	lea rax, qword ptr [rip + .LC26]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else43
	call _print_node
	jmp .call.end43
.call.else43:
	push rsi
	call _print_node
	pop rsi
.call.end43:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case1
	lea rax, qword ptr [rip + .LC27]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-260]
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
	lea rax, [rax-268]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else44
	call _get_name
	jmp .call.end44
.call.else44:
	push rsi
	call _get_name
	pop rsi
.call.end44:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else45
	call _print_node
	jmp .call.end45
.call.else45:
	push rsi
	call _print_node
	pop rsi
.call.end45:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case2
	jmp .Lswitch2.end
.Lswitch2.case3
	lea rax, qword ptr [rip + .LC28]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else46
	call _print_node
	jmp .call.end46
.call.else46:
	push rsi
	call _print_node
	pop rsi
.call.end46:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case4
	lea rax, qword ptr [rip + .LC29]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else47
	call _print_node
	jmp .call.end47
.call.else47:
	push rsi
	call _print_node
	pop rsi
.call.end47:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else48
	call _analyse
	jmp .call.end48
.call.else48:
	push rsi
	call _analyse
	pop rsi
.call.end48:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else49
	call _analyse
	jmp .call.end49
.call.else49:
	push rsi
	call _analyse
	pop rsi
.call.end49:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case5
	lea rax, qword ptr [rip + .LC30]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else50
	call _print_type
	jmp .call.end50
.call.else50:
	push rsi
	call _print_type
	pop rsi
.call.end50:
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-260]
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
	lea rax, [rax-268]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else51
	call _get_name
	jmp .call.end51
.call.else51:
	push rsi
	call _get_name
	pop rsi
.call.end51:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else52
	call _print_node
	jmp .call.end52
.call.else52:
	push rsi
	call _print_node
	pop rsi
.call.end52:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case6
	lea rax, qword ptr [rip + .LC31]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else53
	call _print_type
	jmp .call.end53
.call.else53:
	push rsi
	call _print_type
	pop rsi
.call.end53:
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-260]
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
	lea rax, [rax-268]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else54
	call _get_name
	jmp .call.end54
.call.else54:
	push rsi
	call _get_name
	pop rsi
.call.end54:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else55
	call _print_node
	jmp .call.end55
.call.else55:
	push rsi
	call _print_node
	pop rsi
.call.end55:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case7
	lea rax, qword ptr [rip + .LC32]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else56
	call _print_type
	jmp .call.end56
.call.else56:
	push rsi
	call _print_type
	pop rsi
.call.end56:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else57
	call _print_node
	jmp .call.end57
.call.else57:
	push rsi
	call _print_node
	pop rsi
.call.end57:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else58
	call _analyse
	jmp .call.end58
.call.else58:
	push rsi
	call _analyse
	pop rsi
.call.end58:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case8
	lea rax, qword ptr [rip + .LC33]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else59
	call _print_node
	jmp .call.end59
.call.else59:
	push rsi
	call _print_node
	pop rsi
.call.end59:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else60
	call _analyse
	jmp .call.end60
.call.else60:
	push rsi
	call _analyse
	pop rsi
.call.end60:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case9
	lea rax, qword ptr [rip + .LC34]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else61
	call _print_node
	jmp .call.end61
.call.else61:
	push rsi
	call _print_node
	pop rsi
.call.end61:
	push rax
	lea rax, qword ptr [rip + .LC35]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else62
	call _print_node
	jmp .call.end62
.call.else62:
	push rsi
	call _print_node
	pop rsi
.call.end62:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else63
	call _analyse
	jmp .call.end63
.call.else63:
	push rsi
	call _analyse
	pop rsi
.call.end63:
	push rax
	lea rax, qword ptr [rip + .LC36]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else64
	call _print_node
	jmp .call.end64
.call.else64:
	push rsi
	call _print_node
	pop rsi
.call.end64:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else65
	call _analyse
	jmp .call.end65
.call.else65:
	push rsi
	call _analyse
	pop rsi
.call.end65:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case10
	lea rax, qword ptr [rip + .LC37]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else66
	call _print_node
	jmp .call.end66
.call.else66:
	push rsi
	call _print_node
	pop rsi
.call.end66:
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop7:
	lea rax, [rbp-108]
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
	lea rax, [rax-240]
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
	lea rax, [rax-240]
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
	lea rax, [rbp-108]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
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
	jne .call.else67
	call _analyse
	jmp .call.end67
.call.else67:
	push rsi
	call _analyse
	pop rsi
.call.end67:
	push rax
.Lfor.inc7:
	lea rax, [rbp-108]
	push rax
	lea rax, [rbp-108]
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
	jmp .Lswitch2.end
.Lswitch2.case11
	lea rax, qword ptr [rip + .LC38]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else68
	call _print_node
	jmp .call.end68
.call.else68:
	push rsi
	call _print_node
	pop rsi
.call.end68:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else69
	call _analyse
	jmp .call.end69
.call.else69:
	push rsi
	call _analyse
	pop rsi
.call.end69:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case12
	lea rax, qword ptr [rip + .LC39]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else70
	call _print_node
	jmp .call.end70
.call.else70:
	push rsi
	call _print_node
	pop rsi
.call.end70:
	push rax
	lea rax, qword ptr [rip + .LC40]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else71
	call _print_node
	jmp .call.end71
.call.else71:
	push rsi
	call _print_node
	pop rsi
.call.end71:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else72
	call _analyse
	jmp .call.end72
.call.else72:
	push rsi
	call _analyse
	pop rsi
.call.end72:
	push rax
	lea rax, qword ptr [rip + .LC41]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else73
	call _print_node
	jmp .call.end73
.call.else73:
	push rsi
	call _print_node
	pop rsi
.call.end73:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else74
	call _analyse
	jmp .call.end74
.call.else74:
	push rsi
	call _analyse
	pop rsi
.call.end74:
	push rax
	lea rax, qword ptr [rip + .LC42]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else75
	call _print_node
	jmp .call.end75
.call.else75:
	push rsi
	call _print_node
	pop rsi
.call.end75:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 2
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
	jne .call.else76
	call _analyse
	jmp .call.end76
.call.else76:
	push rsi
	call _analyse
	pop rsi
.call.end76:
	push rax
	lea rax, DWORD PTR [rip + tab@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + tab@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	sub rax, rbx
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	jmp .Lswitch2.end
.Lswitch2.case13
	lea rax, qword ptr [rip + .LC43]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else77
	call _print_node
	jmp .call.end77
.call.else77:
	push rsi
	call _print_node
	pop rsi
.call.end77:
	push rax
	lea rax, qword ptr [rip + .LC44]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else78
	call _print_node
	jmp .call.end78
.call.else78:
	push rsi
	call _print_node
	pop rsi
.call.end78:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else79
	call _analyse
	jmp .call.end79
.call.else79:
	push rsi
	call _analyse
	pop rsi
.call.end79:
	push rax
	lea rax, qword ptr [rip + .LC45]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else80
	call _print_node
	jmp .call.end80
.call.else80:
	push rsi
	call _print_node
	pop rsi
.call.end80:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else81
	call _analyse
	jmp .call.end81
.call.else81:
	push rsi
	call _analyse
	pop rsi
.call.end81:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case14
	lea rax, qword ptr [rip + .LC46]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else82
	call _print_node
	jmp .call.end82
.call.else82:
	push rsi
	call _print_node
	pop rsi
.call.end82:
	push rax
	lea rax, qword ptr [rip + .LC47]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else83
	call _print_node
	jmp .call.end83
.call.else83:
	push rsi
	call _print_node
	pop rsi
.call.end83:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else84
	call _analyse
	jmp .call.end84
.call.else84:
	push rsi
	call _analyse
	pop rsi
.call.end84:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else85
	call _analyse
	jmp .call.end85
.call.else85:
	push rsi
	call _analyse
	pop rsi
.call.end85:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 2
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
	jne .call.else86
	call _analyse
	jmp .call.end86
.call.else86:
	push rsi
	call _analyse
	pop rsi
.call.end86:
	push rax
	lea rax, qword ptr [rip + .LC48]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else87
	call _print_node
	jmp .call.end87
.call.else87:
	push rsi
	call _print_node
	pop rsi
.call.end87:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 3
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
	jne .call.else88
	call _analyse
	jmp .call.end88
.call.else88:
	push rsi
	call _analyse
	pop rsi
.call.end88:
	push rax
	lea rax, DWORD PTR [rip + tab@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + tab@GOTPCREL]
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
	jmp .Lswitch2.end
.Lswitch2.case15
	lea rax, qword ptr [rip + .LC49]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else89
	call _print_node
	jmp .call.end89
.call.else89:
	push rsi
	call _print_node
	pop rsi
.call.end89:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case16
	lea rax, qword ptr [rip + .LC50]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else90
	call _print_node
	jmp .call.end90
.call.else90:
	push rsi
	call _print_node
	pop rsi
.call.end90:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case17
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop8:
	lea rax, [rbp-112]
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
	lea rax, [rax-240]
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
	pop rbx
	pop rax
	cmp rax, rbx
	setl al
	movzx rax, al
	push rax
	cmp rax, 0
	je .Lfor.end8
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-240]
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
	lea rax, [rbp-112]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
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
	jne .call.else91
	call _analyse
	jmp .call.end91
.call.else91:
	push rsi
	call _analyse
	pop rsi
.call.end91:
	push rax
.Lfor.inc8:
	lea rax, [rbp-112]
	push rax
	lea rax, [rbp-112]
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
	jmp .Lfor.loop8
.Lfor.end8:
	jmp .Lswitch2.end
.Lswitch2.case18
	lea rax, [rbp-8]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-260]
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
	lea rax, [rax-268]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else92
	call _strncpy
	jmp .call.end92
.call.else92:
	push rsi
	call _strncpy
	pop rsi
.call.end92:
	push rax
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-268]
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
	lea rax, qword ptr [rip + .LC51]
	push rax
	pop rbx
	pop rax
	mov BYTE PTR [rax], bl
	lea rax, qword ptr [rip + .LC52]
	push rax
	pop rdi
	lea rax, [rbp-8]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else93
	call _print_node
	jmp .call.end93
.call.else93:
	push rsi
	call _print_node
	pop rsi
.call.end93:
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop9:
	lea rax, [rbp-116]
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
	lea rax, [rax-240]
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
	pop rbx
	pop rax
	cmp rax, rbx
	setl al
	movzx rax, al
	push rax
	cmp rax, 0
	je .Lfor.end9
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-240]
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
	lea rax, [rbp-116]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
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
	jne .call.else94
	call _analyse
	jmp .call.end94
.call.else94:
	push rsi
	call _analyse
	pop rsi
.call.end94:
	push rax
.Lfor.inc9:
	lea rax, [rbp-116]
	push rax
	lea rax, [rbp-116]
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
	jmp .Lfor.loop9
.Lfor.end9:
	jmp .Lswitch2.end
.Lswitch2.case19
	lea rax, [rbp-8]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-260]
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
	lea rax, [rax-268]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else95
	call _strncpy
	jmp .call.end95
.call.else95:
	push rsi
	call _strncpy
	pop rsi
.call.end95:
	push rax
	lea rax, [rbp-8]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-268]
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
	lea rax, qword ptr [rip + .LC53]
	push rax
	pop rbx
	pop rax
	mov BYTE PTR [rax], bl
	lea rax, qword ptr [rip + .LC54]
	push rax
	pop rdi
	lea rax, [rbp-8]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else96
	call _print_node
	jmp .call.end96
.call.else96:
	push rsi
	call _print_node
	pop rsi
.call.end96:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else97
	call _analyse
	jmp .call.end97
.call.else97:
	push rsi
	call _analyse
	pop rsi
.call.end97:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case20
	jmp .Lswitch2.end
.Lswitch2.case21
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
	pop rbx
	pop rax
	add rax, rbx
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
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-120]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
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
	lea rax, [rbp-12]
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
	lea rax, [rbp-120]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-32]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then13
	jmp .Lif.else13
.Lif.then13:
	lea rax, [rbp-128]
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-128]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-120]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-32]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else98
	call _new_node_num
	jmp .call.end98
.call.else98:
	push rsi
	call _new_node_num
	pop rsi
.call.end98:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else99
	call _new_binary_node
	jmp .call.end99
.call.else99:
	push rsi
	call _new_binary_node
	pop rsi
.call.end99:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-128]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, [rbp-120]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
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
	lea rax, [rax-160]
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
	lea rax, [rbp-120]
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
	lea rax, [rax-160]
	push rax
	push 1
	push 8
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	lea rax, [rbp-128]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end13
.Lif.else13:
	lea rax, [rbp-128]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
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
	lea rax, [rbp-12]
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
	lea rax, [rbp-128]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-32]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then14
	jmp .Lif.end14
.Lif.then14:
	lea rax, [rbp-120]
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-120]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-128]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-32]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else100
	call _new_node_num
	jmp .call.end100
.call.else100:
	push rsi
	call _new_node_num
	pop rsi
.call.end100:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else101
	call _new_binary_node
	jmp .call.end101
.call.else101:
	push rsi
	call _new_binary_node
	pop rsi
.call.end101:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-120]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, [rbp-128]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
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
	lea rax, [rax-160]
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
	lea rax, [rbp-120]
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
	lea rax, [rax-160]
	push rax
	push 1
	push 8
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	lea rax, [rbp-128]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end14:
	jmp .Lif.end13
.Lif.end13:
	lea rax, [rbp-120]
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
	lea rax, [rbp-68]
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
	lea rax, [rbp-128]
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
	lea rax, [rbp-68]
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
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then15
	jmp .Lif.end15
.Lif.then15:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, [rbp-68]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
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
	lea rax, [rax-252]
	push rax
	lea rax, [rbp-120]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
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
	lea rax, [rax-248]
	push rax
	lea rax, [rbp-120]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-128]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC55]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else102
	call _print_node
	jmp .call.end102
.call.else102:
	push rsi
	call _print_node
	pop rsi
.call.end102:
	push rax
	jmp .Lswitch2.end
.Lif.end15:
	lea rax, [rbp-120]
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
	lea rax, [rbp-68]
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
	lea rax, [rbp-120]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
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
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then16
	jmp .Lif.end16
.Lif.then16:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, [rbp-128]
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
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, [rbp-128]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-128]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else103
	call _analyse
	jmp .call.end103
.call.else103:
	push rsi
	call _analyse
	pop rsi
.call.end103:
	push rax
	jmp .Lswitch2.end
.Lif.end16:
	lea rax, [rbp-128]
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
	lea rax, [rbp-68]
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
	lea rax, [rbp-128]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
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
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then17
	jmp .Lif.end17
.Lif.then17:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, [rbp-120]
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
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, [rbp-120]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-120]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else104
	call _analyse
	jmp .call.end104
.call.else104:
	push rsi
	call _analyse
	pop rsi
.call.end104:
	push rax
	jmp .Lswitch2.end
.Lif.end17:
	lea rax, qword ptr [rip + .LC56]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else105
	call _print_node
	jmp .call.end105
.call.else105:
	push rsi
	call _print_node
	pop rsi
.call.end105:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else106
	call _analyse
	jmp .call.end106
.call.else106:
	push rsi
	call _analyse
	pop rsi
.call.end106:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else107
	call _analyse
	jmp .call.end107
.call.else107:
	push rsi
	call _analyse
	pop rsi
.call.end107:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case22
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
	pop rbx
	pop rax
	add rax, rbx
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
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-136]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
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
	lea rax, [rbp-12]
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
	lea rax, [rbp-136]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-32]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then18
	jmp .Lif.else18
.Lif.then18:
	lea rax, [rbp-144]
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-144]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-136]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-32]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else108
	call _new_node_num
	jmp .call.end108
.call.else108:
	push rsi
	call _new_node_num
	pop rsi
.call.end108:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else109
	call _new_binary_node
	jmp .call.end109
.call.else109:
	push rsi
	call _new_binary_node
	pop rsi
.call.end109:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-144]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, [rbp-136]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
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
	lea rax, [rax-160]
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
	lea rax, [rbp-136]
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
	lea rax, [rax-160]
	push rax
	push 1
	push 8
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	lea rax, [rbp-144]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end18
.Lif.else18:
	lea rax, [rbp-144]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
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
	lea rax, [rbp-12]
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
	lea rax, [rbp-144]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-32]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then19
	jmp .Lif.end19
.Lif.then19:
	lea rax, [rbp-136]
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-136]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-144]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-32]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else110
	call _new_node_num
	jmp .call.end110
.call.else110:
	push rsi
	call _new_node_num
	pop rsi
.call.end110:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else111
	call _new_binary_node
	jmp .call.end111
.call.else111:
	push rsi
	call _new_binary_node
	pop rsi
.call.end111:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-136]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, [rbp-144]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
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
	lea rax, [rax-160]
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
	lea rax, [rbp-136]
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
	lea rax, [rax-160]
	push rax
	push 1
	push 8
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	lea rax, [rbp-144]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end19:
	jmp .Lif.end18
.Lif.end18:
	lea rax, [rbp-136]
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
	lea rax, [rbp-68]
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
	lea rax, [rbp-144]
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
	lea rax, [rbp-68]
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
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then20
	jmp .Lif.end20
.Lif.then20:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, [rbp-68]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
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
	lea rax, [rax-252]
	push rax
	lea rax, [rbp-136]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
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
	lea rax, [rax-248]
	push rax
	lea rax, [rbp-136]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-144]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	sub rax, rbx
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC57]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else112
	call _print_node
	jmp .call.end112
.call.else112:
	push rsi
	call _print_node
	pop rsi
.call.end112:
	push rax
	jmp .Lswitch2.end
.Lif.end20:
	lea rax, qword ptr [rip + .LC58]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else113
	call _print_node
	jmp .call.end113
.call.else113:
	push rsi
	call _print_node
	pop rsi
.call.end113:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else114
	call _analyse
	jmp .call.end114
.call.else114:
	push rsi
	call _analyse
	pop rsi
.call.end114:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else115
	call _analyse
	jmp .call.end115
.call.else115:
	push rsi
	call _analyse
	pop rsi
.call.end115:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case23
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
	pop rbx
	pop rax
	add rax, rbx
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
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-152]
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
	lea rax, [rbp-68]
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
	lea rax, [rbp-160]
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
	lea rax, [rbp-68]
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
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then21
	jmp .Lif.end21
.Lif.then21:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, [rbp-68]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
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
	lea rax, [rax-252]
	push rax
	lea rax, [rbp-152]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
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
	lea rax, [rax-248]
	push rax
	lea rax, [rbp-152]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC59]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else116
	call _print_type
	jmp .call.end116
.call.else116:
	push rsi
	call _print_type
	pop rsi
.call.end116:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else117
	call _print_node
	jmp .call.end117
.call.else117:
	push rsi
	call _print_node
	pop rsi
.call.end117:
	push rax
	jmp .Lswitch2.end
.Lif.end21:
	lea rax, qword ptr [rip + .LC60]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else118
	call _print_node
	jmp .call.end118
.call.else118:
	push rsi
	call _print_node
	pop rsi
.call.end118:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else119
	call _analyse
	jmp .call.end119
.call.else119:
	push rsi
	call _analyse
	pop rsi
.call.end119:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else120
	call _analyse
	jmp .call.end120
.call.else120:
	push rsi
	call _analyse
	pop rsi
.call.end120:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case24
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
	pop rbx
	pop rax
	add rax, rbx
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
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-168]
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
	lea rax, [rbp-68]
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
	lea rax, [rbp-176]
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
	lea rax, [rbp-68]
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
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then22
	jmp .Lif.end22
.Lif.then22:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, [rbp-68]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
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
	lea rax, [rax-252]
	push rax
	lea rax, [rbp-168]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
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
	lea rax, [rax-248]
	push rax
	lea rax, [rbp-168]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-176]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	xor rdx, rdx
	div rbx
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC61]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else121
	call _print_node
	jmp .call.end121
.call.else121:
	push rsi
	call _print_node
	pop rsi
.call.end121:
	push rax
	jmp .Lswitch2.end
.Lif.end22:
	lea rax, qword ptr [rip + .LC62]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else122
	call _print_node
	jmp .call.end122
.call.else122:
	push rsi
	call _print_node
	pop rsi
.call.end122:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else123
	call _analyse
	jmp .call.end123
.call.else123:
	push rsi
	call _analyse
	pop rsi
.call.end123:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else124
	call _analyse
	jmp .call.end124
.call.else124:
	push rsi
	call _analyse
	pop rsi
.call.end124:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case25
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
	pop rbx
	pop rax
	add rax, rbx
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
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-184]
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
	lea rax, [rbp-68]
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
	lea rax, [rbp-192]
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
	lea rax, [rbp-68]
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
	lea rax, [rax-0]
	push rax
	lea rax, [rbp-68]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
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
	lea rax, [rax-252]
	push rax
	lea rax, [rbp-184]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
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
	lea rax, [rax-248]
	push rax
	lea rax, [rbp-184]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-192]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
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
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC63]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else125
	call _print_node
	jmp .call.end125
.call.else125:
	push rsi
	call _print_node
	pop rsi
.call.end125:
	push rax
	jmp .Lswitch2.end
.Lif.end23:
	lea rax, qword ptr [rip + .LC64]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else126
	call _print_node
	jmp .call.end126
.call.else126:
	push rsi
	call _print_node
	pop rsi
.call.end126:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else127
	call _analyse
	jmp .call.end127
.call.else127:
	push rsi
	call _analyse
	pop rsi
.call.end127:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else128
	call _analyse
	jmp .call.end128
.call.else128:
	push rsi
	call _analyse
	pop rsi
.call.end128:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case26
	lea rax, qword ptr [rip + .LC65]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else129
	call _print_node
	jmp .call.end129
.call.else129:
	push rsi
	call _print_node
	pop rsi
.call.end129:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else130
	call _analyse
	jmp .call.end130
.call.else130:
	push rsi
	call _analyse
	pop rsi
.call.end130:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else131
	call _analyse
	jmp .call.end131
.call.else131:
	push rsi
	call _analyse
	pop rsi
.call.end131:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case27
	lea rax, qword ptr [rip + .LC66]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else132
	call _print_node
	jmp .call.end132
.call.else132:
	push rsi
	call _print_node
	pop rsi
.call.end132:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else133
	call _analyse
	jmp .call.end133
.call.else133:
	push rsi
	call _analyse
	pop rsi
.call.end133:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else134
	call _analyse
	jmp .call.end134
.call.else134:
	push rsi
	call _analyse
	pop rsi
.call.end134:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case28
	lea rax, qword ptr [rip + .LC67]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else135
	call _print_node
	jmp .call.end135
.call.else135:
	push rsi
	call _print_node
	pop rsi
.call.end135:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else136
	call _analyse
	jmp .call.end136
.call.else136:
	push rsi
	call _analyse
	pop rsi
.call.end136:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else137
	call _analyse
	jmp .call.end137
.call.else137:
	push rsi
	call _analyse
	pop rsi
.call.end137:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case29
	lea rax, qword ptr [rip + .LC68]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else138
	call _print_node
	jmp .call.end138
.call.else138:
	push rsi
	call _print_node
	pop rsi
.call.end138:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else139
	call _analyse
	jmp .call.end139
.call.else139:
	push rsi
	call _analyse
	pop rsi
.call.end139:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else140
	call _analyse
	jmp .call.end140
.call.else140:
	push rsi
	call _analyse
	pop rsi
.call.end140:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case30
	lea rax, qword ptr [rip + .LC69]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else141
	call _print_node
	jmp .call.end141
.call.else141:
	push rsi
	call _print_node
	pop rsi
.call.end141:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else142
	call _analyse
	jmp .call.end142
.call.else142:
	push rsi
	call _analyse
	pop rsi
.call.end142:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else143
	call _analyse
	jmp .call.end143
.call.else143:
	push rsi
	call _analyse
	pop rsi
.call.end143:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case31
	lea rax, qword ptr [rip + .LC70]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else144
	call _print_node
	jmp .call.end144
.call.else144:
	push rsi
	call _print_node
	pop rsi
.call.end144:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else145
	call _analyse
	jmp .call.end145
.call.else145:
	push rsi
	call _analyse
	pop rsi
.call.end145:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else146
	call _analyse
	jmp .call.end146
.call.else146:
	push rsi
	call _analyse
	pop rsi
.call.end146:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case32
	lea rax, qword ptr [rip + .LC71]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else147
	call _print_node
	jmp .call.end147
.call.else147:
	push rsi
	call _print_node
	pop rsi
.call.end147:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else148
	call _analyse
	jmp .call.end148
.call.else148:
	push rsi
	call _analyse
	pop rsi
.call.end148:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else149
	call _analyse
	jmp .call.end149
.call.else149:
	push rsi
	call _analyse
	pop rsi
.call.end149:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case33
	lea rax, qword ptr [rip + .LC72]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else150
	call _print_node
	jmp .call.end150
.call.else150:
	push rsi
	call _print_node
	pop rsi
.call.end150:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else151
	call _analyse
	jmp .call.end151
.call.else151:
	push rsi
	call _analyse
	pop rsi
.call.end151:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else152
	call _analyse
	jmp .call.end152
.call.else152:
	push rsi
	call _analyse
	pop rsi
.call.end152:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case34
	lea rax, qword ptr [rip + .LC73]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else153
	call _print_node
	jmp .call.end153
.call.else153:
	push rsi
	call _print_node
	pop rsi
.call.end153:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else154
	call _analyse
	jmp .call.end154
.call.else154:
	push rsi
	call _analyse
	pop rsi
.call.end154:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
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
	jne .call.else155
	call _analyse
	jmp .call.end155
.call.else155:
	push rsi
	call _analyse
	pop rsi
.call.end155:
	push rax
	jmp .Lswitch2.end
.Lswitch2.case35
	lea rax, qword ptr [rip + .LC74]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else156
	call _print_node
	jmp .call.end156
.call.else156:
	push rsi
	call _print_node
	pop rsi
.call.end156:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
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
	jne .call.else157
	call _analyse
	jmp .call.end157
.call.else157:
	push rsi
	call _analyse
	pop rsi
.call.end157:
	push rax
	jmp .Lswitch2.end
.Lswitch2.default
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC75]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else158
	call _fprintf
	jmp .call.end158
.call.else158:
	push rsi
	call _fprintf
	pop rsi
.call.end158:
	push rax
.Lswitch2.end
	lea rax, DWORD PTR [rip + tab@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + tab@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	sub rax, rbx
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lif.end12:
.LC0:
	.string ""
.LC1:
	.string ""
.LC2:
	.string "  "
.LC3:
	.string "\n"
.LC4:
	.string ""
.LC5:
	.string ""
.LC6:
	.string ""
.LC7:
	.string "*%s"
.LC8:
	.string "%s[%d]"
.LC9:
	.string "void%s"
.LC10:
	.string "int%s"
.LC11:
	.string "char%s"
.LC12:
	.string "[]%s"
.LC13:
	.string "(*)%s"
.LC14:
	.string "struct%s %s"
.LC15:
	.string "enum%s %s"
.LC16:
	.string "%s(%d)"
.LC17:
	.string "\t"
.LC18:
	.string "%s+%d %s\n"
.LC19:
	.string "%s %s\n"
.LC20:
	.string "\t"
.LC21:
	.string "%s %s = %d\n"
.LC22:
	.string "\t"
.LC23:
	.string "%s\n"
.LC24:
	.string "func\n"
.LC25:
	.string "----print_all----\n"
.LC26:
	.string "NUM %d"
.LC27:
	.string "STRING %s"
.LC28:
	.string "ENUM"
.LC29:
	.string "DOT"
.LC30:
	.string "LVAR %s %s"
.LC31:
	.string "VARDECL %s %s"
.LC32:
	.string "ADDR %s"
.LC33:
	.string "DEREF"
.LC34:
	.string "ASSIGN"
.LC35:
	.string "LHS"
.LC36:
	.string "RHS"
.LC37:
	.string "INIT"
.LC38:
	.string "RETRUN"
.LC39:
	.string "IF"
.LC40:
	.string "COND"
.LC41:
	.string "THEN"
.LC42:
	.string "ELSE"
.LC43:
	.string "WHILE"
.LC44:
	.string "COND"
.LC45:
	.string "LOOP"
.LC46:
	.string "FOR"
.LC47:
	.string "COND"
.LC48:
	.string "LOOP"
.LC49:
	.string "BREAK"
.LC50:
	.string "CONTINUE"
.LC51:
	.string "\0"
.LC52:
	.string "CALL %s"
.LC53:
	.string "\0"
.LC54:
	.string "DEF %s"
.LC55:
	.string "NUM %d"
.LC56:
	.string "ADD"
.LC57:
	.string "NUM %d"
.LC58:
	.string "SUB"
.LC59:
	.string "NUM %d %s"
.LC60:
	.string "MUL"
.LC61:
	.string "NUM %d"
.LC62:
	.string "DIV"
.LC63:
	.string "NUM %d"
.LC64:
	.string "MOD"
.LC65:
	.string "SAL"
.LC66:
	.string "SAR"
.LC67:
	.string "LT"
.LC68:
	.string "LE"
.LC69:
	.string "EQ"
.LC70:
	.string "NE"
.LC71:
	.string "AND"
.LC72:
	.string "XOR"
.LC73:
	.string "OR"
.LC74:
	.string "NOT"
.LC75:
	.string "I don't know this nodekind\n"
