.intel_syntax noprefix
.extern _print_variable_scope, _cu, _exit, _vfprintf, _fprintf, _snprintf, _sprintf, _printf, _memcmp, _strlen, _strncpy, _strncmp, _calloc, _error_at, _error, _print_token, _preprocessor, _gen_funcs, _gen_extern, _search_hash, _new_hash, _new_node_num, _new_node_s, _consume_ident, _is_reserved, _new_token, _new_binary_node, _aggregate_decl, _print_all, _compile_at, _read_file, _print_lvar, _print_type, _get_name, _analyse, _analyse_pre, _gen_pre, _runtest, _push_back, _new_vector, _gen, _program, _tokenize, _expect
.global _expect_number, _expect, _error_at, _error
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
user_input:
	.zero 8
filename:
	.zero 8
_error:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov  [rbp-0], rdi
	mov  [rbp-8], rsi
	lea rax, [rbp-8]
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
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else0
	call _vfprintf
	jmp .call.end0
.call.else0:
	push rsi
	call _vfprintf
	pop rsi
.call.end0:
	push rax
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
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
	jne .call.else1
	call _fprintf
	jmp .call.end1
.call.else1:
	push rsi
	call _fprintf
	pop rsi
.call.end1:
	push rax
	push 1
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else2
	call _exit
	jmp .call.end2
.call.else2:
	push rsi
	call _exit
	pop rsi
.call.end2:
	push rax
_error_at:
	push rbp
	mov rbp, rsp
	sub rsp, 72
	mov  [rbp-0], rdi
	mov  [rbp-8], rsi
	mov  [rbp-16], rdx
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
.Lwhile.loop0:
	lea rax, QWORD PTR [rip + user_input@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setl al
	movzx rax, al
	push rax
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push -1
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
	lea rax, qword ptr [rip + .LC1]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setne al
	movzx rax, al
	push rax
	pop rbx
	pop rax
	and eax, ebx
	push rax
	cmp rax, 0
	je .Lwhile.end0
	lea rax, [rbp-16]
	push rax
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	sub rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC2]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then1
	jmp .Lif.end1
.Lif.then1:
	lea rax, [rbp-24]
	push rax
	lea rax, [rbp-24]
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
.Lif.end1:
	jmp .Lwhile.loop0
.Lwhile.end0:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lwhile.loop1:
	lea rax, [rbp-28]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
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
	cmp rax, 0
	je .Lwhile.end1
	lea rax, [rbp-28]
	push rax
	lea rax, [rbp-28]
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
	jmp .Lwhile.loop1
.Lwhile.end1:
	push 1
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + user_input@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lfor.loop1:
	lea rax, [rbp-40]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	setl al
	movzx rax, al
	push rax
	cmp rax, 0
	je .Lfor.end1
	lea rax, [rbp-40]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	mov al, BYTE PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC6]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then2
	jmp .Lif.end2
.Lif.then2:
	lea rax, [rbp-36]
	push rax
	lea rax, [rbp-36]
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
.Lif.end2:
.Lfor.inc1:
	lea rax, [rbp-40]
	push rax
	lea rax, [rbp-40]
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
	jmp .Lfor.loop1
.Lfor.end1:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC8]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + filename@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	lea rax, [rbp-36]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else3
	call _fprintf
	jmp .call.end3
.call.else3:
	push rsi
	call _fprintf
	pop rsi
.call.end3:
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC9]
	push rax
	pop rsi
	lea rax, [rbp-28]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-16]
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
	pop rdx
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else4
	call _fprintf
	jmp .call.end4
.call.else4:
	push rsi
	call _fprintf
	pop rsi
.call.end4:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-16]
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
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC10]
	push rax
	pop rsi
	lea rax, [rbp-48]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	lea rax, qword ptr [rip + .LC11]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else5
	call _fprintf
	jmp .call.end5
.call.else5:
	push rsi
	call _fprintf
	pop rsi
.call.end5:
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop2:
	lea rax, [rbp-56]
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
	setl al
	movzx rax, al
	push rax
	cmp rax, 0
	je .Lfor.end2
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC12]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else6
	call _fprintf
	jmp .call.end6
.call.else6:
	push rsi
	call _fprintf
	pop rsi
.call.end6:
	push rax
.Lfor.inc2:
	lea rax, [rbp-56]
	push rax
	lea rax, [rbp-56]
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
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC13]
	push rax
	pop rsi
	lea rax, [rbp-52]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 1
	pop rbx
	pop rax
	sub rax, rbx
	push rax
	pop rdx
	lea rax, qword ptr [rip + .LC14]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else7
	call _fprintf
	jmp .call.end7
.call.else7:
	push rsi
	call _fprintf
	pop rsi
.call.end7:
	push rax
	lea rax, [rbp-60]
	push rax
	lea rax, [rbp-8]
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
	lea rax, qword ptr [rip + .LC15]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else8
	call _fprintf
	jmp .call.end8
.call.else8:
	push rsi
	call _fprintf
	pop rsi
.call.end8:
	push rax
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
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
	lea rax, [rbp-60]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else9
	call _vfprintf
	jmp .call.end9
.call.else9:
	push rsi
	call _vfprintf
	pop rsi
.call.end9:
	push rax
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
	jne .call.else10
	call _fprintf
	jmp .call.end10
.call.else10:
	push rsi
	call _fprintf
	pop rsi
.call.end10:
	push rax
	push 1
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else11
	call _exit
	jmp .call.end11
.call.else11:
	push rsi
	call _exit
	pop rsi
.call.end11:
	push rax
_expect:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
	lea rax, QWORD PTR [rip + token@GOTPCREL]
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
	setne al
	movzx rax, al
	push rax
	lea rax, QWORD PTR [rip + token@GOTPCREL]
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
	pop rsi
	lea rax, [rbp-0]
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
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else13
	call _memcmp
	jmp .call.end13
.call.else13:
	push rsi
	call _memcmp
	pop rsi
.call.end13:
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then3
	jmp .Lif.end3
.Lif.then3:
	lea rax, QWORD PTR [rip + token@GOTPCREL]
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
	lea rax, qword ptr [rip + .LC17]
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	lea rax, QWORD PTR [rip + token@GOTPCREL]
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
	lea rax, QWORD PTR [rip + token@GOTPCREL]
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
	call _error_at
	jmp .call.end15
.call.else15:
	push rsi
	call _error_at
	pop rsi
.call.end15:
	push rax
.Lif.end3:
	lea rax, QWORD PTR [rip + token@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + token@GOTPCREL]
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
_expect_number:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	lea rax, QWORD PTR [rip + token@GOTPCREL]
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
	pop rax
	pop rbx
	cmp rax, rbx
	jne .Lif.then4
	jmp .Lif.end4
.Lif.then4:
	lea rax, QWORD PTR [rip + token@GOTPCREL]
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
	lea rax, qword ptr [rip + .LC18]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else16
	call _error_at
	jmp .call.end16
.call.else16:
	push rsi
	call _error_at
	pop rsi
.call.end16:
	push rax
.Lif.end4:
	lea rax, QWORD PTR [rip + token@GOTPCREL]
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
	lea rax, QWORD PTR [rip + token@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + token@GOTPCREL]
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
	mov eax, DWORD PTR [rax]
	push rax
	pop rbp
	ret
.LC0:
	.string "\n"
.LC1:
	.string "\n"
.LC2:
	.string "\t"
.LC3:
	.string "\t"
.LC4:
	.string "\n"
.LC5:
	.string "\n"
.LC6:
	.string "\n"
.LC7:
	.string "\n"
.LC8:
	.string "%s:%d:"
.LC9:
	.string "%.*s\n"
.LC10:
	.string "%*s"
.LC11:
	.string ""
.LC12:
	.string "\t"
.LC13:
	.string "%*s"
.LC14:
	.string ""
.LC15:
	.string "^ "
.LC16:
	.string "\n"
.LC17:
	.string "'%s' is expected, but %s"
.LC18:
	.string "数ではありません"
