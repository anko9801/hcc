.intel_syntax noprefix
.extern _make_lvar, _call_func, _variable, _dot, _variable_decl, _initializer, _rvalue, _stmts, _stmt, _expr, _print_variable_scope, _cu, _printf, _memcmp, _strlen, _strncpy, _strncmp, _calloc, _error_at, _gen_funcs, _gen_extern, _new_hash, _new_node_num, _new_node_s, _new_binary_node, _aggregate_decl, _print_all, _compile_at, _read_file, _print_lvar, _print_type, _get_name, _analyse, _analyse_pre, _gen_pre, _runtest, _push_back, _new_vector, _gen, _program, _tokenize, _expect
.global _program, _global, _include_file, _typedef_decl, _aggregate_decl, _enum_decl, _struct_decl, _move_type, _func_decl_or_def, _init_variable_list, _variable_decl, _stmts, _stmt, _switch_case, _expr, _initializer, _lvalue, _dot, _rvalue, _bit_and, _bit_xor, _bit_or, _equality, _relational, _sht_expr, _add_expr, _mul_expr, _unary, _postfix, _term, _variable, _call_func, _type_spec, _prim_type_spec, _add_cur_scope_code, _add_code, _find_typedef, _find_aggr_elem, _find_aggr, _find_func, _search_enum_lvar, _find_lvar, _new_func, _new_arg, _new_lvar, _make_lvar, _add_node, _new_hash, _add_var, _search_hash, _new_node_num, _new_node_s, _new_node_for, _new_node_if, _new_binary_node, _new_node, _new_node0, _at_eof, _consume_number, _consume_ident, _consume, _check, _enum_type, _struct_type, _array_type, _wrap_pointer, _char_type, _int_type, _void_type
user_input:
	.zero 8
token:
	.zero 8
code:
	.zero 8000
funcs:
	.zero 8
extern_funcs:
	.zero 8
filename:
	.zero 8
hashs:
	.zero 8
strings:
	.zero 8
typedef_list:
	.zero 8
aggr_list:
	.zero 8
token:
	.zero 8
code:
	.zero 8000
pos:
	.long 0
locals:
	.zero 8
globals:
	.zero 8
hashs:
	.zero 8
cur_scope:
	.zero 8
cur_nodes:
	.zero 8
funcs:
	.zero 8
extern_funcs:
	.zero 8
strings:
	.zero 8
typedef_list:
	.zero 8
aggr_list:
	.zero 8
_void_type:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	push 1
	pop rdi
	push 56
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else0
	call _calloc
	jmp call.end0
call.else0:
	push rsi
	call _calloc
	pop rsi
call.end0:
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
	lea rax, [rbp-0]
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
	lea rax, [rax-32]
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
	pop rax
	lea rax, [rax-48]
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
	pop rax
	lea rax, [rax-52]
	push rax
	push 1
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
	pop rsi
_int_type:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	push 1
	pop rdi
	push 56
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else1
	call _calloc
	jmp call.end1
call.else1:
	push rsi
	call _calloc
	pop rsi
call.end1:
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
	lea rax, DWORD PTR [rip + INT@GOTPCREL]
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
	lea rax, [rax-32]
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
	pop rax
	lea rax, [rax-48]
	push rax
	push 4
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-52]
	push rax
	push 1
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
	pop rsi
_char_type:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	push 1
	pop rdi
	push 56
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else2
	call _calloc
	jmp call.end2
call.else2:
	push rsi
	call _calloc
	pop rsi
call.end2:
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
	lea rax, DWORD PTR [rip + CHAR@GOTPCREL]
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
	lea rax, [rax-32]
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
	pop rax
	lea rax, [rax-48]
	push rax
	push 1
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-52]
	push rax
	push 1
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
	pop rsi
_wrap_pointer:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	push 1
	pop rdi
	push 56
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else3
	call _calloc
	jmp call.end3
call.else3:
	push rsi
	call _calloc
	pop rsi
call.end3:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, DWORD PTR [rip + PTR@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-48]
	push rax
	push 8
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-52]
	push rax
	push 1
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_array_type:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-8], rsi
	push 1
	pop rdi
	push 56
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else4
	call _calloc
	jmp call.end4
call.else4:
	push rsi
	call _calloc
	pop rsi
call.end4:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, DWORD PTR [rip + ARRAY@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
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
	lea rax, DWORD PTR [rip + size@GOTPCREL]
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
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-52]
	push rax
	lea rax, DWORD PTR [rip + size@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_struct_type:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-8], rsi
	push 1
	pop rdi
	push 56
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else5
	call _calloc
	jmp call.end5
call.else5:
	push rsi
	call _calloc
	pop rsi
call.end5:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, DWORD PTR [rip + STRUCT@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-40]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-48]
	push rax
	lea rax, DWORD PTR [rip + size@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-52]
	push rax
	push 1
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_enum_type:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-8], rsi
	push 1
	pop rdi
	push 56
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else6
	call _calloc
	jmp call.end6
call.else6:
	push rsi
	call _calloc
	pop rsi
call.end6:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, DWORD PTR [rip + ENUM@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-40]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-48]
	push rax
	lea rax, DWORD PTR [rip + size@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-52]
	push rax
	push 1
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_check:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	movsx BYTE PTR [rbp-0], edi
	lea rax, [rbp-8072]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, DWORD PTR [rax]
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
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else7
	call _strlen
	jmp call.end7
call.else7:
	push rsi
	call _strlen
	pop rsi
call.end7:
	push rax
	lea rax, [rbp-8072]
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
	lea rax, [rbp-8072]
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
	lea rax, [rbp-8072]
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
	jne call.else8
	call _memcmp
	jmp call.end8
call.else8:
	push rsi
	call _memcmp
	pop rsi
call.end8:
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	(null) .Lif.then0
	jmp .Lif.end0
.Lif.then0:
	push 0
	pop rbp
	ret
.Lif.end0:
	push 1
	pop rbp
	ret
	pop rsi
_consume:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	movsx BYTE PTR [rbp-0], edi
	lea rax, [rbp-8072]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, DWORD PTR [rax]
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
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else9
	call _strlen
	jmp call.end9
call.else9:
	push rsi
	call _strlen
	pop rsi
call.end9:
	push rax
	lea rax, [rbp-8072]
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
	lea rax, [rbp-8072]
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
	lea rax, [rbp-8072]
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
	jne call.else10
	call _memcmp
	jmp call.end10
call.else10:
	push rsi
	call _memcmp
	pop rsi
call.end10:
	push rax
	pop rbx
	pop rax
	or eax, ebx
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	(null) .Lif.then1
	jmp .Lif.end1
.Lif.then1:
	push 0
	pop rbp
	ret
	pop rsi
.Lif.end1:
	lea rax, [rbp-8072]
	push rax
	lea rax, [rbp-8072]
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
_consume_ident:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-8072]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-8072]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + TK_IDENT@GOTPCREL]
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
	lea rax, [rbp-8072]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + TK_STRING@GOTPCREL]
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
	pop rax
	pop rbx
	cmp rax, rbx
	(null) .Lif.then2
	jmp .Lif.end2
.Lif.then2:
	push 0
	pop rbp
	ret
.Lif.end2:
	lea rax, [rbp-8072]
	push rax
	lea rax, [rbp-8072]
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
	pop rbp
	ret
	pop rsi
_consume_number:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-8072]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + TK_NUM@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	jne .Lif.then3
	jmp .Lif.end3
.Lif.then3:
	push -1
	pop rbp
	ret
.Lif.end3:
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-8072]
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
	lea rax, [rbp-8072]
	push rax
	lea rax, [rbp-8072]
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
	pop rsi
_at_eof:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-8072]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + TK_EOF@GOTPCREL]
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
	pop rbp
	ret
	pop rsi
_new_node0:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	push 1
	pop rdi
	push 288
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else11
	call _calloc
	jmp call.end11
call.else11:
	push rsi
	call _calloc
	pop rsi
call.end11:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_new_node:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-4], rsi
	push 1
	pop rdi
	push 288
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else12
	call _calloc
	jmp call.end12
call.else12:
	push rsi
	call _calloc
	pop rsi
call.end12:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + lhs@GOTPCREL]
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
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	lea rax, QWORD PTR [rip + lhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_new_binary_node:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-4], rsi
	mov QWORD PTR [rbp-12], rdx
	push 1
	pop rdi
	push 288
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else13
	call _calloc
	jmp call.end13
call.else13:
	push rsi
	call _calloc
	pop rsi
call.end13:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + lhs@GOTPCREL]
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
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	lea rax, QWORD PTR [rip + lhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
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
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_new_node_if:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-4], rsi
	mov QWORD PTR [rbp-12], rdx
	mov QWORD PTR [rbp-20], rcx
	push 1
	pop rdi
	push 288
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else14
	call _calloc
	jmp call.end14
call.else14:
	push rsi
	call _calloc
	pop rsi
call.end14:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	lea rax, QWORD PTR [rip + Cond@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
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
	lea rax, QWORD PTR [rip + Then@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	push 16
	push 8
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	lea rax, QWORD PTR [rip + Else@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_new_node_for:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-4], rsi
	mov QWORD PTR [rbp-12], rdx
	mov QWORD PTR [rbp-20], rcx
	mov QWORD PTR [rbp-28], r8
	push 1
	pop rdi
	push 288
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else15
	call _calloc
	jmp call.end15
call.else15:
	push rsi
	call _calloc
	pop rsi
call.end15:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	lea rax, QWORD PTR [rip + Cond1@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
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
	lea rax, QWORD PTR [rip + Cond2@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	push 16
	push 8
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	lea rax, QWORD PTR [rip + Cond3@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-160]
	push rax
	push 24
	push 8
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	lea rax, QWORD PTR [rip + Loop@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_new_node_s:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-4], rsi
	mov QWORD PTR [rbp-12], rdx
	push 1
	pop rdi
	push 288
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else16
	call _calloc
	jmp call.end16
call.else16:
	push rsi
	call _calloc
	pop rsi
call.end16:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then4
	jmp .Lif.end4
.Lif.then4:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-260]
	push rax
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-268]
	push rax
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
.Lif.end4:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_new_node_num:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	push 1
	pop rdi
	push 288
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else17
	call _calloc
	jmp call.end17
call.else17:
	push rsi
	call _calloc
	pop rsi
call.end17:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, DWORD PTR [rip + ND_NUM@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-248]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else18
	call _int_type
	jmp call.end18
call.else18:
	push rsi
	call _int_type
	pop rsi
call.end18:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_search_hash:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-8], rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then5
	jmp .Lif.end5
.Lif.then5:
	push 0
	pop rbp
	ret
.Lif.end5:
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
	lea rax, QWORD PTR [rip + scope@GOTPCREL]
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
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	pop rsi
.Lif.end6:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop0:
	lea rax, DWORD PTR [rip + i@GOTPCREL]
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
	lea rax, [rax-0]
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
	je .Lfor.end0
	lea rax, QWORD PTR [rip + ans@GOTPCREL]
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
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + i@GOTPCREL]
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
	lea rax, QWORD PTR [rip + scope@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else19
	call _search_hash
	jmp call.end19
call.else19:
	push rsi
	call _search_hash
	pop rsi
call.end19:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + ans@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then7
	jmp .Lif.end7
.Lif.then7:
	lea rax, QWORD PTR [rip + ans@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end7:
.Lfor.inc0:
	lea rax, DWORD PTR [rip + i@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + i@GOTPCREL]
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
	jmp .Lfor.loop0
.Lfor.end0:
	push 0
	pop rbp
	ret
_add_var:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	movsx BYTE PTR [rbp-0], edi
	movsx BYTE PTR [rbp-8], esi
	lea rax, [rbp-16100]
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
	mov rax, 2
	test rsp, 15
	jne call.else20
	call _search_hash
	jmp call.end20
call.else20:
	push rsi
	call _search_hash
	pop rsi
call.end20:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + hash@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then8
	jmp .Lif.end8
.Lif.then8:
	lea rax, QWORD PTR [rip + hash@GOTPCREL]
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
	(null) .Lif.then8
	jmp .Lif.else8
.Lif.then8:
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, QWORD PTR [rip + hash@GOTPCREL]
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
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-28]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	lea rax, QWORD PTR [rip + hash@GOTPCREL]
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
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, QWORD PTR [rip + hash@GOTPCREL]
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
	lea rax, [rax-20]
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
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + hash@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	pop rsi
	jmp .Lif.end8
.Lif.else8:
	lea rax, QWORD PTR [rip + hash@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + hash@GOTPCREL]
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
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	jmp .Lif.end8
.Lif.end8:
	push 1
	pop rbp
	ret
.Lif.end9:
	push 0
	pop rbp
	ret
_new_hash:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	push 1
	pop rdi
	push 32
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else21
	call _calloc
	jmp call.end21
call.else21:
	push rsi
	call _calloc
	pop rsi
call.end21:
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
	mov rax, 0
	test rsp, 15
	jne call.else22
	call _new_vector
	jmp call.end22
call.else22:
	push rsi
	call _new_vector
	pop rsi
call.end22:
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
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-16]
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
	pop rsi
_add_node:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	movsx BYTE PTR [rbp-0], edi
	movsx BYTE PTR [rbp-8], esi
	lea rax, [rbp-16100]
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
	mov rax, 2
	test rsp, 15
	jne call.else23
	call _search_hash
	jmp call.end23
call.else23:
	push rsi
	call _search_hash
	pop rsi
call.end23:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + hash@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then10
	jmp .Lif.else10
.Lif.then10:
	push 1
	pop rdi
	push 32
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else24
	call _calloc
	jmp call.end24
call.else24:
	push rsi
	call _calloc
	pop rsi
call.end24:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + new_hash@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else25
	call _new_vector
	jmp call.end25
call.else25:
	push rsi
	call _new_vector
	pop rsi
call.end25:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + new_hash@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-8]
	push rax
	lea rax, QWORD PTR [rip + hash@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + new_hash@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-16]
	push rax
	lea rax, QWORD PTR [rip + next@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + hash@GOTPCREL]
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
	lea rax, QWORD PTR [rip + new_hash@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else26
	call _push_back
	jmp call.end26
call.else26:
	push rsi
	call _push_back
	pop rsi
call.end26:
	push rax
	push 1
	pop rbp
	ret
	jmp .Lif.end10
.Lif.else10:
	push 0
	pop rbp
	ret
	jmp .Lif.end10
.Lif.end10:
_make_lvar:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-8], rsi
	push 1
	pop rdi
	push 40
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else27
	call _calloc
	jmp call.end27
call.else27:
	push rsi
	call _calloc
	pop rsi
call.end27:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
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
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-16]
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
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-20]
	push rax
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_new_lvar:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-8], rsi
	mov QWORD PTR [rbp-16], rdx
	push 1
	pop rdi
	push 40
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else28
	call _calloc
	jmp call.end28
call.else28:
	push rsi
	call _calloc
	pop rsi
call.end28:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
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
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-8]
	push rax
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-16]
	push rax
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-28]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
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
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-0]
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
	lea rax, [rax-48]
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
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-20]
	push rax
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_new_arg:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-8], rsi
	mov QWORD PTR [rbp-16], rdx
	push 1
	pop rdi
	push 40
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else29
	call _calloc
	jmp call.end29
call.else29:
	push rsi
	call _calloc
	pop rsi
call.end29:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-8]
	push rax
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-16]
	push rax
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
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
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-0]
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
	lea rax, [rax-48]
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
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-20]
	push rax
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_new_func:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-8], rsi
	mov QWORD PTR [rbp-16], rdx
	mov QWORD PTR [rbp-24], rcx
	push 1
	pop rdi
	push 48
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else30
	call _calloc
	jmp call.end30
call.else30:
	push rsi
	call _calloc
	pop rsi
call.end30:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + func@GOTPCREL]
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
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-16]
	push rax
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-24]
	push rax
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	lea rax, QWORD PTR [rip + args@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-28]
	push rax
	lea rax, QWORD PTR [rip + args@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-8]
	push rax
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_find_lvar:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	lea rax, [rbp-16100]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-16108]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else31
	call _search_hash
	jmp call.end31
call.else31:
	push rsi
	call _search_hash
	pop rsi
call.end31:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lfor.loop1:
	lea rax, QWORD PTR [rip + hash@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	cmp rax, 0
	je .Lfor.end1
	lea rax, QWORD PTR [rip + hash@GOTPCREL]
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
.Lfor.loop1:
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	cmp rax, 0
	je .Lfor.end1
	lea rax, QWORD PTR [rip + var@GOTPCREL]
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
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + var@GOTPCREL]
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
	pop rsi
	lea rax, QWORD PTR [rip + var@GOTPCREL]
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
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else32
	call _memcmp
	jmp call.end32
call.else32:
	push rsi
	call _memcmp
	pop rsi
call.end32:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	(null) .Lif.then11
	jmp .Lif.end11
.Lif.then11:
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end11:
	pop rsi
.Lfor.inc1:
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + var@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lfor.loop1
.Lfor.end1:
.Lfor.inc2:
	lea rax, QWORD PTR [rip + hash@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + hash@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lfor.loop2
.Lfor.end2:
	push 0
	pop rbp
	ret
_search_enum_lvar:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-8], rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then12
	jmp .Lif.end12
.Lif.then12:
	push 0
	pop rbp
	ret
.Lif.end12:
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
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + ENUM@GOTPCREL]
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
	(null) .Lif.then13
	jmp .Lif.end13
.Lif.then13:
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
.Lfor.loop3:
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	cmp rax, 0
	je .Lfor.end3
	lea rax, QWORD PTR [rip + var@GOTPCREL]
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
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
	sete al
	movzx rax, al
	push rax
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
	lea rax, QWORD PTR [rip + var@GOTPCREL]
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
	pop rsi
	lea rax, QWORD PTR [rip + var@GOTPCREL]
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
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else33
	call _memcmp
	jmp call.end33
call.else33:
	push rsi
	call _memcmp
	pop rsi
call.end33:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	(null) .Lif.then13
	jmp .Lif.end13
.Lif.then13:
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end13:
	pop rsi
.Lfor.inc3:
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + var@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lfor.loop3
.Lfor.end3:
.Lif.end14:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop4:
	lea rax, DWORD PTR [rip + i@GOTPCREL]
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
	lea rax, [rax-0]
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
	je .Lfor.end4
	lea rax, QWORD PTR [rip + ans@GOTPCREL]
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
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + i@GOTPCREL]
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
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else34
	call _search_enum_lvar
	jmp call.end34
call.else34:
	push rsi
	call _search_enum_lvar
	pop rsi
call.end34:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + ans@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then15
	jmp .Lif.end15
.Lif.then15:
	lea rax, QWORD PTR [rip + ans@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end15:
.Lfor.inc4:
	lea rax, DWORD PTR [rip + i@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + i@GOTPCREL]
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
	push 0
	pop rbp
	ret
_find_func:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	lea rax, [rbp-16124]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lfor.loop5:
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	cmp rax, 0
	je .Lfor.end5
	lea rax, QWORD PTR [rip + func@GOTPCREL]
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
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + func@GOTPCREL]
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
	pop rsi
	lea rax, QWORD PTR [rip + func@GOTPCREL]
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
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else35
	call _memcmp
	jmp call.end35
call.else35:
	push rsi
	call _memcmp
	pop rsi
call.end35:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	(null) .Lif.then16
	jmp .Lif.end16
.Lif.then16:
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end16:
	pop rsi
.Lfor.inc5:
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + func@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lfor.loop5
.Lfor.end5:
	lea rax, [rbp-16132]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lfor.loop6:
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	cmp rax, 0
	je .Lfor.end6
	lea rax, QWORD PTR [rip + func@GOTPCREL]
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
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + func@GOTPCREL]
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
	pop rsi
	lea rax, QWORD PTR [rip + func@GOTPCREL]
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
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else36
	call _memcmp
	jmp call.end36
call.else36:
	push rsi
	call _memcmp
	pop rsi
call.end36:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	(null) .Lif.then17
	jmp .Lif.end17
.Lif.then17:
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end17:
.Lfor.inc6:
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + func@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lfor.loop6
.Lfor.end6:
	push 0
	pop rbp
	ret
_find_aggr:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then18
	jmp .Lif.end18
.Lif.then18:
	push 0
	pop rbp
	ret
.Lif.end18:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop7:
	lea rax, DWORD PTR [rip + i@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-16156]
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
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	lea rax, [rbp-16156]
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
	lea rax, DWORD PTR [rip + i@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
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
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
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
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
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
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else37
	call _strncmp
	jmp call.end37
call.else37:
	push rsi
	call _strncmp
	pop rsi
call.end37:
	push rax
	push 0
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
	lea rax, [rax-44]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
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
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	(null) .Lif.then19
	jmp .Lif.end19
.Lif.then19:
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	pop rsi
.Lif.end19:
.Lfor.inc7:
	lea rax, DWORD PTR [rip + i@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + i@GOTPCREL]
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
	push 0
	pop rbp
	ret
_find_aggr_elem:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-8], rsi
	mov QWORD PTR [rbp-16], rdx
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
.Lfor.loop8:
	lea rax, DWORD PTR [rip + i@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
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
	je .Lfor.end8
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
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
	lea rax, DWORD PTR [rip + i@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + str@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + var@GOTPCREL]
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
	lea rax, QWORD PTR [rip + var@GOTPCREL]
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
	jne call.else38
	call _strncmp
	jmp call.end38
call.else38:
	push rsi
	call _strncmp
	pop rsi
call.end38:
	push rax
	push 0
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, DWORD PTR [rip + len@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, QWORD PTR [rip + var@GOTPCREL]
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
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	(null) .Lif.then20
	jmp .Lif.end20
.Lif.then20:
	lea rax, QWORD PTR [rip + var@GOTPCREL]
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
	(null) .Lif.then20
	jmp .Lif.end20
.Lif.then20:
.Lif.end20:
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end21:
.Lfor.inc8:
	lea rax, DWORD PTR [rip + i@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + i@GOTPCREL]
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
	push 0
	pop rbp
	ret
_find_typedef:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-8], rsi
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop9:
	lea rax, DWORD PTR [rip + i@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-16148]
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
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
	push rax
	lea rax, [rbp-16148]
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
	lea rax, DWORD PTR [rip + i@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
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
	pop rsi
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
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
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else39
	call _strncmp
	jmp call.end39
call.else39:
	push rsi
	call _strncmp
	pop rsi
call.end39:
	push rax
	push 0
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, DWORD PTR [rip + len@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
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
	sete al
	movzx rax, al
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	(null) .Lif.then22
	jmp .Lif.end22
.Lif.then22:
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end22:
.Lfor.inc9:
	lea rax, DWORD PTR [rip + i@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + i@GOTPCREL]
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
	push 0
	pop rbp
	ret
_add_code:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov  [rbp-0], rdi
	lea rax, [rbp-8080]
	push rax
	lea rax, [rbp-16080]
	push rax
	lea rax, [rbp-16080]
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
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
_add_cur_scope_code:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov  [rbp-0], rdi
	lea rax, [rbp-16116]
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
	mov rax, 2
	test rsp, 15
	jne call.else40
	call _push_back
	jmp call.end40
call.else40:
	push rsi
	call _push_back
	pop rsi
call.end40:
	push rax
_prim_type_spec:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-8072]
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
	lea rax, [rbp-8072]
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
	jne call.else41
	call _find_typedef
	jmp call.end41
call.else41:
	push rsi
	call _find_typedef
	pop rsi
call.end41:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then23
	jmp .Lif.else23
.Lif.then23:
	lea rax, [rbp-8072]
	push rax
	lea rax, [rbp-8072]
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
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end23
.Lif.else23:
	lea rax, qword ptr [rip + .LC0]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else42
	call _consume
	jmp call.end42
call.else42:
	push rsi
	call _consume
	pop rsi
call.end42:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then23
	jmp .Lif.else23
.Lif.then23:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else43
	call _void_type
	jmp call.end43
call.else43:
	push rsi
	call _void_type
	pop rsi
call.end43:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end23
.Lif.else23:
	lea rax, qword ptr [rip + .LC1]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else44
	call _consume
	jmp call.end44
call.else44:
	push rsi
	call _consume
	pop rsi
call.end44:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then23
	jmp .Lif.else23
.Lif.then23:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else45
	call _char_type
	jmp call.end45
call.else45:
	push rsi
	call _char_type
	pop rsi
call.end45:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end23
.Lif.else23:
	lea rax, qword ptr [rip + .LC2]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else46
	call _consume
	jmp call.end46
call.else46:
	push rsi
	call _consume
	pop rsi
call.end46:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then23
	jmp .Lif.else23
.Lif.then23:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else47
	call _char_type
	jmp call.end47
call.else47:
	push rsi
	call _char_type
	pop rsi
call.end47:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end23
.Lif.else23:
	lea rax, qword ptr [rip + .LC3]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else48
	call _consume
	jmp call.end48
call.else48:
	push rsi
	call _consume
	pop rsi
call.end48:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then23
	jmp .Lif.else23
.Lif.then23:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else49
	call _int_type
	jmp call.end49
call.else49:
	push rsi
	call _int_type
	pop rsi
call.end49:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end23
.Lif.else23:
	lea rax, qword ptr [rip + .LC4]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else50
	call _consume
	jmp call.end50
call.else50:
	push rsi
	call _consume
	pop rsi
call.end50:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then23
	jmp .Lif.else23
.Lif.then23:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else51
	call _int_type
	jmp call.end51
call.else51:
	push rsi
	call _int_type
	pop rsi
call.end51:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end23
.Lif.else23:
	lea rax, qword ptr [rip + .LC5]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else52
	call _consume
	jmp call.end52
call.else52:
	push rsi
	call _consume
	pop rsi
call.end52:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then23
	jmp .Lif.else23
.Lif.then23:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else53
	call _int_type
	jmp call.end53
call.else53:
	push rsi
	call _int_type
	pop rsi
call.end53:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end23
.Lif.else23:
	lea rax, qword ptr [rip + .LC6]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else54
	call _consume
	jmp call.end54
call.else54:
	push rsi
	call _consume
	pop rsi
call.end54:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then23
	jmp .Lif.else23
.Lif.then23:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else55
	call _int_type
	jmp call.end55
call.else55:
	push rsi
	call _int_type
	pop rsi
call.end55:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end23
.Lif.else23:
	lea rax, qword ptr [rip + .LC7]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else56
	call _consume
	jmp call.end56
call.else56:
	push rsi
	call _consume
	pop rsi
call.end56:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then23
	jmp .Lif.else23
.Lif.then23:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else57
	call _int_type
	jmp call.end57
call.else57:
	push rsi
	call _int_type
	pop rsi
call.end57:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end23
.Lif.else23:
	lea rax, qword ptr [rip + .LC8]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else58
	call _consume
	jmp call.end58
call.else58:
	push rsi
	call _consume
	pop rsi
call.end58:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then23
	jmp .Lif.else23
.Lif.then23:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else59
	call _int_type
	jmp call.end59
call.else59:
	push rsi
	call _int_type
	pop rsi
call.end59:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end23
.Lif.else23:
	mov rax, 0
	test rsp, 15
	jne call.else60
	call _aggregate_decl
	jmp call.end60
call.else60:
	push rsi
	call _aggregate_decl
	pop rsi
call.end60:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then23
	jmp .Lif.end23
.Lif.then23:
	lea rax, qword ptr [rip + .LC9]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else61
	call _consume
	jmp call.end61
call.else61:
	push rsi
	call _consume
	pop rsi
call.end61:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then23
	jmp .Lif.end23
.Lif.then23:
	lea rax, [rbp-8072]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else62
	call _find_aggr
	jmp call.end62
call.else62:
	push rsi
	call _find_aggr
	pop rsi
call.end62:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then23
	jmp .Lif.end23
.Lif.then23:
	push 0
	pop rbp
	ret
.Lif.end23:
	lea rax, [rbp-0]
	push rax
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-20]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else63
	call _struct_type
	jmp call.end63
call.else63:
	push rsi
	call _struct_type
	pop rsi
call.end63:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end24:
	push 0
	pop rbp
	ret
.Lif.end25:
	lea rax, [rbp-0]
	push rax
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	jmp .Lif.end26
.Lif.end26:
	jmp .Lif.end27
.Lif.end27:
	jmp .Lif.end28
.Lif.end28:
	jmp .Lif.end29
.Lif.end29:
	jmp .Lif.end30
.Lif.end30:
	jmp .Lif.end31
.Lif.end31:
	jmp .Lif.end32
.Lif.end32:
	jmp .Lif.end33
.Lif.end33:
	jmp .Lif.end34
.Lif.end34:
	jmp .Lif.end35
.Lif.end35:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_type_spec:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else64
	call _prim_type_spec
	jmp call.end64
call.else64:
	push rsi
	call _prim_type_spec
	pop rsi
call.end64:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lwhile.loop0:
	lea rax, qword ptr [rip + .LC10]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else65
	call _consume
	jmp call.end65
call.else65:
	push rsi
	call _consume
	pop rsi
call.end65:
	push rax
	cmp rax, 0
	je .Lwhile.end0
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else66
	call _wrap_pointer
	jmp call.end66
call.else66:
	push rsi
	call _wrap_pointer
	pop rsi
call.end66:
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
	pop rbp
	ret
_call_func:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-8072]
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
	mov rax, 0
	test rsp, 15
	jne call.else67
	call _consume_ident
	jmp call.end67
call.else67:
	push rsi
	call _consume_ident
	pop rsi
call.end67:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then36
	jmp .Lif.end36
.Lif.then36:
	lea rax, qword ptr [rip + .LC11]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else68
	call _consume
	jmp call.end68
call.else68:
	push rsi
	call _consume
	pop rsi
call.end68:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then36
	jmp .Lif.end36
.Lif.then36:
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else69
	call _find_func
	jmp call.end69
call.else69:
	push rsi
	call _find_func
	pop rsi
call.end69:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then36
	jmp .Lif.end36
.Lif.then36:
	lea rax, [rbp-8072]
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
	lea rax, qword ptr [rip + .LC12]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else70
	call _error_at
	jmp call.end70
call.else70:
	push rsi
	call _error_at
	pop rsi
call.end70:
	push rax
.Lif.end36:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_CALL@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + func@GOTPCREL]
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
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else71
	call _new_node_s
	jmp call.end71
call.else71:
	push rsi
	call _new_node_s
	pop rsi
call.end71:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	mov rax, 0
	test rsp, 15
	jne call.else72
	call _new_vector
	jmp call.end72
call.else72:
	push rsi
	call _new_vector
	pop rsi
call.end72:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lwhile.loop1:
	lea rax, qword ptr [rip + .LC13]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else73
	call _consume
	jmp call.end73
call.else73:
	push rsi
	call _consume
	pop rsi
call.end73:
	push rax
	pop rax
	not eax
	push rax
	cmp rax, 0
	je .Lwhile.end1
	lea rax, QWORD PTR [rip + arg@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else74
	call _expr
	jmp call.end74
call.else74:
	push rsi
	call _expr
	pop rsi
call.end74:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + arg@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then37
	jmp .Lif.end37
.Lif.then37:
	lea rax, [rbp-8072]
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
	lea rax, qword ptr [rip + .LC14]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else75
	call _error_at
	jmp call.end75
call.else75:
	push rsi
	call _error_at
	pop rsi
call.end75:
	push rax
	jmp .Lwhile.end1
.Lif.end37:
	lea rax, QWORD PTR [rip + args@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + arg@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else76
	call _push_back
	jmp call.end76
call.else76:
	push rsi
	call _push_back
	pop rsi
call.end76:
	push rax
	lea rax, qword ptr [rip + .LC15]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else77
	call _consume
	jmp call.end77
call.else77:
	push rsi
	call _consume
	pop rsi
call.end77:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then38
	jmp .Lif.end38
.Lif.then38:
	lea rax, qword ptr [rip + .LC16]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else78
	call _expect
	jmp call.end78
call.else78:
	push rsi
	call _expect
	pop rsi
call.end78:
	push rax
	jmp .Lwhile.end1
.Lif.end38:
	jmp .Lwhile.loop1
.Lwhile.end1:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-240]
	push rax
	lea rax, QWORD PTR [rip + args@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then39
	jmp .Lif.end39
.Lif.then39:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + func@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end39:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end40:
.Lif.end41:
	lea rax, [rbp-8072]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	push 0
	pop rbp
	ret
_variable:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-8072]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	mov rax, 0
	test rsp, 15
	jne call.else79
	call _consume_ident
	jmp call.end79
call.else79:
	push rsi
	call _consume_ident
	pop rsi
call.end79:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then42
	jmp .Lif.end42
.Lif.then42:
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else80
	call _find_lvar
	jmp call.end80
call.else80:
	push rsi
	call _find_lvar
	pop rsi
call.end80:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then42
	jmp .Lif.end42
.Lif.then42:
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	lea rax, [rbp-16100]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else81
	call _search_enum_lvar
	jmp call.end81
call.else81:
	push rsi
	call _search_enum_lvar
	pop rsi
call.end81:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end42:
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then43
	jmp .Lif.else43
.Lif.then43:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_LVAR@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
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
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else82
	call _new_node_s
	jmp call.end82
call.else82:
	push rsi
	call _new_node_s
	pop rsi
call.end82:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-272]
	push rax
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + ARRAY@GOTPCREL]
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
	(null) .Lif.then43
	jmp .Lif.end43
.Lif.then43:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_ADDR@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else83
	call _new_node
	jmp call.end83
call.else83:
	push rsi
	call _new_node
	pop rsi
call.end83:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	pop rax
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
	jne call.else84
	call _wrap_pointer
	jmp call.end84
call.else84:
	push rsi
	call _wrap_pointer
	pop rsi
call.end84:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	pop rsi
.Lif.end43:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	jmp .Lif.end44
.Lif.else44:
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
	jne call.else85
	call _strncmp
	jmp call.end85
call.else85:
	push rsi
	call _strncmp
	pop rsi
call.end85:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then44
	jmp .Lif.end44
.Lif.then44:
	push 0
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else86
	call _new_node_num
	jmp call.end86
call.else86:
	push rsi
	call _new_node_num
	pop rsi
call.end86:
	push rax
	pop rbp
	ret
.Lif.end44:
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
	jne call.else87
	call _strncmp
	jmp call.end87
call.else87:
	push rsi
	call _strncmp
	pop rsi
call.end87:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then45
	jmp .Lif.end45
.Lif.then45:
	push 0
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else88
	call _new_node_num
	jmp call.end88
call.else88:
	push rsi
	call _new_node_num
	pop rsi
call.end88:
	push rax
	pop rbp
	ret
.Lif.end45:
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
	lea rax, qword ptr [rip + .LC19]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
	jne call.else89
	call _strncmp
	jmp call.end89
call.else89:
	push rsi
	call _strncmp
	pop rsi
call.end89:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then46
	jmp .Lif.end46
.Lif.then46:
	push 1
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else90
	call _new_node_num
	jmp call.end90
call.else90:
	push rsi
	call _new_node_num
	pop rsi
call.end90:
	push rax
	pop rbp
	ret
.Lif.end46:
	jmp .Lif.end47
.Lif.end47:
	lea rax, [rbp-8072]
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
	lea rax, qword ptr [rip + .LC20]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else91
	call _error_at
	jmp call.end91
call.else91:
	push rsi
	call _error_at
	pop rsi
call.end91:
	push rax
	pop rsi
.Lif.end48:
	lea rax, [rbp-8072]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	push 0
	pop rbp
	ret
_term:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, qword ptr [rip + .LC21]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else92
	call _consume
	jmp call.end92
call.else92:
	push rsi
	call _consume
	pop rsi
call.end92:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then49
	jmp .Lif.end49
.Lif.then49:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else93
	call _expr
	jmp call.end93
call.else93:
	push rsi
	call _expr
	pop rsi
call.end93:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC22]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else94
	call _expect
	jmp call.end94
call.else94:
	push rsi
	call _expect
	pop rsi
call.end94:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end49:
	lea rax, [rbp-0]
	push rax
	push 0
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else95
	call _variable_decl
	jmp call.end95
call.else95:
	push rsi
	call _variable_decl
	pop rsi
call.end95:
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
	cmp rax, 0
	je .Lif.then50
	jmp .Lif.end50
.Lif.then50:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end50:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else96
	call _call_func
	jmp call.end96
call.else96:
	push rsi
	call _call_func
	pop rsi
call.end96:
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
	cmp rax, 0
	je .Lif.then51
	jmp .Lif.end51
.Lif.then51:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end51:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else97
	call _variable
	jmp call.end97
call.else97:
	push rsi
	call _variable
	pop rsi
call.end97:
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
	cmp rax, 0
	je .Lif.then52
	jmp .Lif.end52
.Lif.then52:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end52:
	lea rax, qword ptr [rip + .LC23]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else98
	call _consume
	jmp call.end98
call.else98:
	push rsi
	call _consume
	pop rsi
call.end98:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then53
	jmp .Lif.end53
.Lif.then53:
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else99
	call _consume_ident
	jmp call.end99
call.else99:
	push rsi
	call _consume_ident
	pop rsi
call.end99:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then53
	jmp .Lif.end53
.Lif.then53:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_STRING@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 0
	test rsp, 15
	jne call.else100
	call _char_type
	jmp call.end100
call.else100:
	push rsi
	call _char_type
	pop rsi
call.end100:
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else101
	call _wrap_pointer
	jmp call.end101
call.else101:
	push rsi
	call _wrap_pointer
	pop rsi
call.end101:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else102
	call _new_node_s
	jmp call.end102
call.else102:
	push rsi
	call _new_node_s
	pop rsi
call.end102:
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
	lea rax, [rax-252]
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
	lea rax, [rax-268]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-16140]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else103
	call _push_back
	jmp call.end103
call.else103:
	push rsi
	call _push_back
	pop rsi
call.end103:
	push rax
	pop rsi
.Lif.end53:
	lea rax, qword ptr [rip + .LC24]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else104
	call _expect
	jmp call.end104
call.else104:
	push rsi
	call _expect
	pop rsi
call.end104:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	pop rsi
.Lif.end54:
	lea rax, qword ptr [rip + .LC25]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else105
	call _consume
	jmp call.end105
call.else105:
	push rsi
	call _consume
	pop rsi
call.end105:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then55
	jmp .Lif.end55
.Lif.then55:
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else106
	call _consume_ident
	jmp call.end106
call.else106:
	push rsi
	call _consume_ident
	pop rsi
call.end106:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then55
	jmp .Lif.end55
.Lif.then55:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_STRING@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 0
	test rsp, 15
	jne call.else107
	call _char_type
	jmp call.end107
call.else107:
	push rsi
	call _char_type
	pop rsi
call.end107:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else108
	call _new_node_s
	jmp call.end108
call.else108:
	push rsi
	call _new_node_s
	pop rsi
call.end108:
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
	lea rax, [rax-252]
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
	lea rax, [rax-268]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-16140]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else109
	call _push_back
	jmp call.end109
call.else109:
	push rsi
	call _push_back
	pop rsi
call.end109:
	push rax
	pop rsi
.Lif.end55:
	lea rax, qword ptr [rip + .LC26]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else110
	call _expect
	jmp call.end110
call.else110:
	push rsi
	call _expect
	pop rsi
call.end110:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	pop rsi
.Lif.end56:
	lea rax, qword ptr [rip + .LC27]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else111
	call _consume
	jmp call.end111
call.else111:
	push rsi
	call _consume
	pop rsi
call.end111:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then57
	jmp .Lif.end57
.Lif.then57:
	lea rax, DWORD PTR [rip + ND_BREAK@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else112
	call _new_node0
	jmp call.end112
call.else112:
	push rsi
	call _new_node0
	pop rsi
call.end112:
	push rax
	pop rbp
	ret
.Lif.end57:
	lea rax, qword ptr [rip + .LC28]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else113
	call _consume
	jmp call.end113
call.else113:
	push rsi
	call _consume
	pop rsi
call.end113:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then58
	jmp .Lif.end58
.Lif.then58:
	lea rax, DWORD PTR [rip + ND_CONTINUE@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else114
	call _new_node0
	jmp call.end114
call.else114:
	push rsi
	call _new_node0
	pop rsi
call.end114:
	push rax
	pop rbp
	ret
.Lif.end58:
	mov rax, 0
	test rsp, 15
	jne call.else115
	call _consume_number
	jmp call.end115
call.else115:
	push rsi
	call _consume_number
	pop rsi
call.end115:
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, DWORD PTR [rip + val@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push -1
	pop rax
	pop rbx
	cmp rax, rbx
	jne .Lif.then59
	jmp .Lif.end59
.Lif.then59:
	lea rax, DWORD PTR [rip + val@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else116
	call _new_node_num
	jmp call.end116
call.else116:
	push rsi
	call _new_node_num
	pop rsi
call.end116:
	push rax
	pop rbp
	ret
.Lif.end59:
	push 0
	pop rbp
	ret
	pop rsi
_postfix:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else117
	call _term
	jmp call.end117
call.else117:
	push rsi
	call _term
	pop rsi
call.end117:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-8072]
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
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then60
	jmp .Lif.end60
.Lif.then60:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end60:
.Lfor.loop10:
	cmp rax, 0
	je .Lfor.end10
	lea rax, QWORD PTR [rip + backup@GOTPCREL]
	push rax
	lea rax, [rbp-8072]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC29]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else118
	call _consume
	jmp call.end118
call.else118:
	push rsi
	call _consume
	pop rsi
call.end118:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then61
	jmp .Lif.else61
.Lif.then61:
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
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + STRUCT@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then61
	jmp .Lif.else61
.Lif.then61:
	lea rax, QWORD PTR [rip + id@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else119
	call _consume_ident
	jmp call.end119
call.else119:
	push rsi
	call _consume_ident
	pop rsi
call.end119:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + id@GOTPCREL]
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
	lea rax, QWORD PTR [rip + id@GOTPCREL]
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
	jne call.else120
	call _find_aggr_elem
	jmp call.end120
call.else120:
	push rsi
	call _find_aggr_elem
	pop rsi
call.end120:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then61
	jmp .Lif.else61
.Lif.then61:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_DOT@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else121
	call _new_binary_node
	jmp call.end121
call.else121:
	push rsi
	call _new_binary_node
	pop rsi
call.end121:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	pop rsi
	jmp .Lif.end61
.Lif.else61:
	lea rax, [rbp-8072]
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
	lea rax, qword ptr [rip + .LC30]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else122
	call _error_at
	jmp call.end122
call.else122:
	push rsi
	call _error_at
	pop rsi
call.end122:
	push rax
	pop rsi
	jmp .Lif.end61
.Lif.end61:
	jmp .Lif.end62
.Lif.else62:
	lea rax, [rbp-8072]
	push rax
	lea rax, QWORD PTR [rip + backup@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end62
.Lif.end62:
	jmp .Lif.end63
.Lif.else63:
	lea rax, qword ptr [rip + .LC31]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else123
	call _consume
	jmp call.end123
call.else123:
	push rsi
	call _consume
	pop rsi
call.end123:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then63
	jmp .Lif.else63
.Lif.then63:
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
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + PTR@GOTPCREL]
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
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + STRUCT@GOTPCREL]
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
	(null) .Lif.then63
	jmp .Lif.else63
.Lif.then63:
	lea rax, QWORD PTR [rip + id@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else124
	call _consume_ident
	jmp call.end124
call.else124:
	push rsi
	call _consume_ident
	pop rsi
call.end124:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + id@GOTPCREL]
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
	lea rax, QWORD PTR [rip + id@GOTPCREL]
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
	jne call.else125
	call _find_aggr_elem
	jmp call.end125
call.else125:
	push rsi
	call _find_aggr_elem
	pop rsi
call.end125:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then63
	jmp .Lif.else63
.Lif.then63:
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
	pop rax
	lea rax, [rax-32]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_DEREF@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
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
	jne call.else126
	call _new_node
	jmp call.end126
call.else126:
	push rsi
	call _new_node
	pop rsi
call.end126:
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
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_DOT@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else127
	call _new_binary_node
	jmp call.end127
call.else127:
	push rsi
	call _new_binary_node
	pop rsi
call.end127:
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
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + var@GOTPCREL]
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
	jmp .Lif.end63
.Lif.else63:
	lea rax, [rbp-8072]
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
	lea rax, qword ptr [rip + .LC32]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else128
	call _error_at
	jmp call.end128
call.else128:
	push rsi
	call _error_at
	pop rsi
call.end128:
	push rax
	pop rsi
	jmp .Lif.end63
.Lif.end63:
	jmp .Lif.end64
.Lif.else64:
	lea rax, [rbp-8072]
	push rax
	lea rax, QWORD PTR [rip + backup@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end64
.Lif.end64:
	jmp .Lif.end65
.Lif.else65:
	lea rax, qword ptr [rip + .LC33]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else129
	call _consume
	jmp call.end129
call.else129:
	push rsi
	call _consume
	pop rsi
call.end129:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then65
	jmp .Lif.else65
.Lif.then65:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else130
	call _rvalue
	jmp call.end130
call.else130:
	push rsi
	call _rvalue
	pop rsi
call.end130:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC34]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else131
	call _expect
	jmp call.end131
call.else131:
	push rsi
	call _expect
	pop rsi
call.end131:
	push rax
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
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + PTR@GOTPCREL]
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
	(null) .Lif.then65
	jmp .Lif.else65
.Lif.then65:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_MUL@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
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
	jne call.else132
	call _new_node_num
	jmp call.end132
call.else132:
	push rsi
	call _new_node_num
	pop rsi
call.end132:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else133
	call _new_binary_node
	jmp call.end133
call.else133:
	push rsi
	call _new_binary_node
	pop rsi
call.end133:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	pop rsi
	jmp .Lif.end65
.Lif.else65:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
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
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + PTR@GOTPCREL]
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
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
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
	(null) .Lif.then65
	jmp .Lif.end65
.Lif.then65:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_MUL@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
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
	jne call.else134
	call _new_node_num
	jmp call.end134
call.else134:
	push rsi
	call _new_node_num
	pop rsi
call.end134:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else135
	call _new_binary_node
	jmp call.end135
call.else135:
	push rsi
	call _new_binary_node
	pop rsi
call.end135:
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
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
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
.Lif.end65:
	jmp .Lif.end66
.Lif.end66:
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
	pop rax
	lea rax, [rax-32]
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
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else136
	call _new_binary_node
	jmp call.end136
call.else136:
	push rsi
	call _new_binary_node
	pop rsi
call.end136:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_DEREF@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
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
	jne call.else137
	call _new_node
	jmp call.end137
call.else137:
	push rsi
	call _new_node
	pop rsi
call.end137:
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
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	pop rsi
	jmp .Lif.end67
.Lif.else67:
	jmp .Lfor.end10
	jmp .Lif.end67
.Lif.end67:
	jmp .Lif.end68
.Lif.end68:
	jmp .Lif.end69
.Lif.end69:
.Lfor.inc10:
	jmp .Lfor.loop10
.Lfor.end10:
	lea rax, qword ptr [rip + .LC35]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else138
	call _consume
	jmp call.end138
call.else138:
	push rsi
	call _consume
	pop rsi
call.end138:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then70
	jmp .Lif.end70
.Lif.then70:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	push 1
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else139
	call _new_node_num
	jmp call.end139
call.else139:
	push rsi
	call _new_node_num
	pop rsi
call.end139:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else140
	call _new_binary_node
	jmp call.end140
call.else140:
	push rsi
	call _new_binary_node
	pop rsi
call.end140:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else141
	call _new_binary_node
	jmp call.end141
call.else141:
	push rsi
	call _new_binary_node
	pop rsi
call.end141:
	push rax
	pop rbp
	ret
.Lif.end70:
	lea rax, qword ptr [rip + .LC36]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else142
	call _consume
	jmp call.end142
call.else142:
	push rsi
	call _consume
	pop rsi
call.end142:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then71
	jmp .Lif.end71
.Lif.then71:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_SUB@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	push 1
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else143
	call _new_node_num
	jmp call.end143
call.else143:
	push rsi
	call _new_node_num
	pop rsi
call.end143:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else144
	call _new_binary_node
	jmp call.end144
call.else144:
	push rsi
	call _new_binary_node
	pop rsi
call.end144:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else145
	call _new_binary_node
	jmp call.end145
call.else145:
	push rsi
	call _new_binary_node
	pop rsi
call.end145:
	push rax
	pop rbp
	ret
.Lif.end71:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_unary:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-8072]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC37]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else146
	call _consume
	jmp call.end146
call.else146:
	push rsi
	call _consume
	pop rsi
call.end146:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then72
	jmp .Lif.end72
.Lif.then72:
	lea rax, QWORD PTR [rip + backup@GOTPCREL]
	push rax
	lea rax, [rbp-8072]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC38]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else147
	call _consume
	jmp call.end147
call.else147:
	push rsi
	call _consume
	pop rsi
call.end147:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then72
	jmp .Lif.end72
.Lif.then72:
	mov rax, 0
	test rsp, 15
	jne call.else148
	call _type_spec
	jmp call.end148
call.else148:
	push rsi
	call _type_spec
	pop rsi
call.end148:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then72
	jmp .Lif.else72
.Lif.then72:
	lea rax, qword ptr [rip + .LC39]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else149
	call _expect
	jmp call.end149
call.else149:
	push rsi
	call _expect
	pop rsi
call.end149:
	push rax
	lea rax, QWORD PTR [rip + type@GOTPCREL]
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
	lea rax, QWORD PTR [rip + type@GOTPCREL]
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
	mul rbx
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else150
	call _new_node_num
	jmp call.end150
call.else150:
	push rsi
	call _new_node_num
	pop rsi
call.end150:
	push rax
	pop rbp
	ret
	jmp .Lif.end72
.Lif.else72:
	lea rax, [rbp-8072]
	push rax
	lea rax, QWORD PTR [rip + backup@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end72
.Lif.end72:
.Lif.end73:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else151
	call _unary
	jmp call.end151
call.else151:
	push rsi
	call _unary
	pop rsi
call.end151:
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
	cmp rax, 0
	je .Lif.then74
	jmp .Lif.else74
.Lif.then74:
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
	(null) .Lif.then74
	jmp .Lif.else74
.Lif.then74:
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
	pop rax
	lea rax, [rax-48]
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
	lea rax, [rax-252]
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
	mul rbx
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else152
	call _new_node_num
	jmp call.end152
call.else152:
	push rsi
	call _new_node_num
	pop rsi
call.end152:
	push rax
	pop rbp
	ret
	jmp .Lif.end74
.Lif.else74:
	push 0
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else153
	call _new_node_num
	jmp call.end153
call.else153:
	push rsi
	call _new_node_num
	pop rsi
call.end153:
	push rax
	pop rbp
	ret
	jmp .Lif.end74
.Lif.end74:
	pop rsi
	jmp .Lif.end75
.Lif.else75:
	push 0
	pop rbp
	ret
	jmp .Lif.end75
.Lif.end75:
.Lif.end76:
	lea rax, qword ptr [rip + .LC40]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else154
	call _consume
	jmp call.end154
call.else154:
	push rsi
	call _consume
	pop rsi
call.end154:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then77
	jmp .Lif.end77
.Lif.then77:
	mov rax, 0
	test rsp, 15
	jne call.else155
	call _type_spec
	jmp call.end155
call.else155:
	push rsi
	call _type_spec
	pop rsi
call.end155:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then77
	jmp .Lif.else77
.Lif.then77:
	lea rax, qword ptr [rip + .LC41]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else156
	call _expect
	jmp call.end156
call.else156:
	push rsi
	call _expect
	pop rsi
call.end156:
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else157
	call _postfix
	jmp call.end157
call.else157:
	push rsi
	call _postfix
	pop rsi
call.end157:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then77
	jmp .Lif.end77
.Lif.then77:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end77:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	pop rsi
	jmp .Lif.end78
.Lif.else78:
	lea rax, [rbp-8072]
	push rax
	lea rax, QWORD PTR [rip + backup@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end78
.Lif.end78:
.Lif.end79:
	lea rax, qword ptr [rip + .LC42]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else158
	call _consume
	jmp call.end158
call.else158:
	push rsi
	call _consume
	pop rsi
call.end158:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then80
	jmp .Lif.end80
.Lif.then80:
	mov rax, 0
	test rsp, 15
	jne call.else159
	call _postfix
	jmp call.end159
call.else159:
	push rsi
	call _postfix
	pop rsi
call.end159:
	push rax
	pop rbp
	ret
.Lif.end80:
	lea rax, qword ptr [rip + .LC43]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else160
	call _consume
	jmp call.end160
call.else160:
	push rsi
	call _consume
	pop rsi
call.end160:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then81
	jmp .Lif.end81
.Lif.then81:
	lea rax, DWORD PTR [rip + ND_SUB@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	push 0
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else161
	call _new_node_num
	jmp call.end161
call.else161:
	push rsi
	call _new_node_num
	pop rsi
call.end161:
	push rax
	pop rsi
	mov rax, 0
	test rsp, 15
	jne call.else162
	call _postfix
	jmp call.end162
call.else162:
	push rsi
	call _postfix
	pop rsi
call.end162:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else163
	call _new_binary_node
	jmp call.end163
call.else163:
	push rsi
	call _new_binary_node
	pop rsi
call.end163:
	push rax
	pop rbp
	ret
.Lif.end81:
	lea rax, qword ptr [rip + .LC44]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else164
	call _consume
	jmp call.end164
call.else164:
	push rsi
	call _consume
	pop rsi
call.end164:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then82
	jmp .Lif.end82
.Lif.then82:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 0
	test rsp, 15
	jne call.else165
	call _unary
	jmp call.end165
call.else165:
	push rsi
	call _unary
	pop rsi
call.end165:
	push rax
	pop rsi
	push 1
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else166
	call _new_node_num
	jmp call.end166
call.else166:
	push rsi
	call _new_node_num
	pop rsi
call.end166:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else167
	call _new_binary_node
	jmp call.end167
call.else167:
	push rsi
	call _new_binary_node
	pop rsi
call.end167:
	push rax
	pop rbp
	ret
.Lif.end82:
	lea rax, qword ptr [rip + .LC45]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else168
	call _consume
	jmp call.end168
call.else168:
	push rsi
	call _consume
	pop rsi
call.end168:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then83
	jmp .Lif.end83
.Lif.then83:
	lea rax, DWORD PTR [rip + ND_SUB@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 0
	test rsp, 15
	jne call.else169
	call _unary
	jmp call.end169
call.else169:
	push rsi
	call _unary
	pop rsi
call.end169:
	push rax
	pop rsi
	push 1
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else170
	call _new_node_num
	jmp call.end170
call.else170:
	push rsi
	call _new_node_num
	pop rsi
call.end170:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else171
	call _new_binary_node
	jmp call.end171
call.else171:
	push rsi
	call _new_binary_node
	pop rsi
call.end171:
	push rax
	pop rbp
	ret
.Lif.end83:
	lea rax, qword ptr [rip + .LC46]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else172
	call _consume
	jmp call.end172
call.else172:
	push rsi
	call _consume
	pop rsi
call.end172:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then84
	jmp .Lif.end84
.Lif.then84:
	lea rax, DWORD PTR [rip + ND_NOT@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 0
	test rsp, 15
	jne call.else173
	call _unary
	jmp call.end173
call.else173:
	push rsi
	call _unary
	pop rsi
call.end173:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else174
	call _new_node
	jmp call.end174
call.else174:
	push rsi
	call _new_node
	pop rsi
call.end174:
	push rax
	pop rbp
	ret
.Lif.end84:
	lea rax, qword ptr [rip + .LC47]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else175
	call _consume
	jmp call.end175
call.else175:
	push rsi
	call _consume
	pop rsi
call.end175:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then85
	jmp .Lif.end85
.Lif.then85:
	lea rax, DWORD PTR [rip + ND_NOT@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 0
	test rsp, 15
	jne call.else176
	call _unary
	jmp call.end176
call.else176:
	push rsi
	call _unary
	pop rsi
call.end176:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else177
	call _new_node
	jmp call.end177
call.else177:
	push rsi
	call _new_node
	pop rsi
call.end177:
	push rax
	pop rbp
	ret
.Lif.end85:
	lea rax, qword ptr [rip + .LC48]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else178
	call _consume
	jmp call.end178
call.else178:
	push rsi
	call _consume
	pop rsi
call.end178:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then86
	jmp .Lif.end86
.Lif.then86:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else179
	call _unary
	jmp call.end179
call.else179:
	push rsi
	call _unary
	pop rsi
call.end179:
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
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then86
	jmp .Lif.end86
.Lif.then86:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end86:
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
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + PTR@GOTPCREL]
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
	(null) .Lif.then87
	jmp .Lif.else87
.Lif.then87:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_DEREF@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
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
	jne call.else180
	call _new_node
	jmp call.end180
call.else180:
	push rsi
	call _new_node
	pop rsi
call.end180:
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
	pop rax
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
	pop rax
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
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + PTR@GOTPCREL]
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
	(null) .Lif.then87
	jmp .Lif.else87
.Lif.then87:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
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
	pop rax
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end87
.Lif.else87:
	lea rax, [rbp-8072]
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
	lea rax, qword ptr [rip + .LC49]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else181
	call _error_at
	jmp call.end181
call.else181:
	push rsi
	call _error_at
	pop rsi
call.end181:
	push rax
	jmp .Lif.end87
.Lif.end87:
	pop rsi
	jmp .Lif.end88
.Lif.else88:
	lea rax, [rbp-8072]
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
	lea rax, qword ptr [rip + .LC50]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else182
	call _error_at
	jmp call.end182
call.else182:
	push rsi
	call _error_at
	pop rsi
call.end182:
	push rax
	jmp .Lif.end88
.Lif.end88:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	pop rsi
.Lif.end89:
	lea rax, qword ptr [rip + .LC51]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else183
	call _consume
	jmp call.end183
call.else183:
	push rsi
	call _consume
	pop rsi
call.end183:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then90
	jmp .Lif.end90
.Lif.then90:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else184
	call _unary
	jmp call.end184
call.else184:
	push rsi
	call _unary
	pop rsi
call.end184:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_ADDR@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
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
	jne call.else185
	call _new_node
	jmp call.end185
call.else185:
	push rsi
	call _new_node
	pop rsi
call.end185:
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
	lea rax, [rax-252]
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
	pop rax
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
	jne call.else186
	call _wrap_pointer
	jmp call.end186
call.else186:
	push rsi
	call _wrap_pointer
	pop rsi
call.end186:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end90:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else187
	call _postfix
	jmp call.end187
call.else187:
	push rsi
	call _postfix
	pop rsi
call.end187:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_mul_expr:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else188
	call _unary
	jmp call.end188
call.else188:
	push rsi
	call _unary
	pop rsi
call.end188:
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
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then91
	jmp .Lif.end91
.Lif.then91:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end91:
.Lfor.loop11:
	cmp rax, 0
	je .Lfor.end11
	lea rax, qword ptr [rip + .LC52]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else189
	call _consume
	jmp call.end189
call.else189:
	push rsi
	call _consume
	pop rsi
call.end189:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then92
	jmp .Lif.else92
.Lif.then92:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_MUL@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 0
	test rsp, 15
	jne call.else190
	call _unary
	jmp call.end190
call.else190:
	push rsi
	call _unary
	pop rsi
call.end190:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else191
	call _new_binary_node
	jmp call.end191
call.else191:
	push rsi
	call _new_binary_node
	pop rsi
call.end191:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end92
.Lif.else92:
	lea rax, qword ptr [rip + .LC53]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else192
	call _consume
	jmp call.end192
call.else192:
	push rsi
	call _consume
	pop rsi
call.end192:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then92
	jmp .Lif.else92
.Lif.then92:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_DIV@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 0
	test rsp, 15
	jne call.else193
	call _unary
	jmp call.end193
call.else193:
	push rsi
	call _unary
	pop rsi
call.end193:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else194
	call _new_binary_node
	jmp call.end194
call.else194:
	push rsi
	call _new_binary_node
	pop rsi
call.end194:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end92
.Lif.else92:
	lea rax, qword ptr [rip + .LC54]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else195
	call _consume
	jmp call.end195
call.else195:
	push rsi
	call _consume
	pop rsi
call.end195:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then92
	jmp .Lif.else92
.Lif.then92:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_MOD@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 0
	test rsp, 15
	jne call.else196
	call _unary
	jmp call.end196
call.else196:
	push rsi
	call _unary
	pop rsi
call.end196:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else197
	call _new_binary_node
	jmp call.end197
call.else197:
	push rsi
	call _new_binary_node
	pop rsi
call.end197:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end92
.Lif.else92:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	jmp .Lif.end92
.Lif.end92:
	jmp .Lif.end93
.Lif.end93:
	jmp .Lif.end94
.Lif.end94:
	pop rsi
.Lfor.inc11:
	jmp .Lfor.loop11
.Lfor.end11:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_add_expr:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else198
	call _mul_expr
	jmp call.end198
call.else198:
	push rsi
	call _mul_expr
	pop rsi
call.end198:
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
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then95
	jmp .Lif.end95
.Lif.then95:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end95:
.Lfor.loop12:
	cmp rax, 0
	je .Lfor.end12
	lea rax, qword ptr [rip + .LC55]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else199
	call _consume
	jmp call.end199
call.else199:
	push rsi
	call _consume
	pop rsi
call.end199:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then96
	jmp .Lif.else96
.Lif.then96:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else200
	call _mul_expr
	jmp call.end200
call.else200:
	push rsi
	call _mul_expr
	pop rsi
call.end200:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else201
	call _new_binary_node
	jmp call.end201
call.else201:
	push rsi
	call _new_binary_node
	pop rsi
call.end201:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	pop rsi
	jmp .Lif.end96
.Lif.else96:
	lea rax, qword ptr [rip + .LC56]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else202
	call _consume
	jmp call.end202
call.else202:
	push rsi
	call _consume
	pop rsi
call.end202:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then96
	jmp .Lif.else96
.Lif.then96:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else203
	call _mul_expr
	jmp call.end203
call.else203:
	push rsi
	call _mul_expr
	pop rsi
call.end203:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_SUB@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else204
	call _new_binary_node
	jmp call.end204
call.else204:
	push rsi
	call _new_binary_node
	pop rsi
call.end204:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end96
.Lif.else96:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	jmp .Lif.end96
.Lif.end96:
	jmp .Lif.end97
.Lif.end97:
.Lfor.inc12:
	jmp .Lfor.loop12
.Lfor.end12:
_sht_expr:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else205
	call _add_expr
	jmp call.end205
call.else205:
	push rsi
	call _add_expr
	pop rsi
call.end205:
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
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then98
	jmp .Lif.end98
.Lif.then98:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end98:
.Lfor.loop13:
	cmp rax, 0
	je .Lfor.end13
	lea rax, qword ptr [rip + .LC57]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else206
	call _consume
	jmp call.end206
call.else206:
	push rsi
	call _consume
	pop rsi
call.end206:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then99
	jmp .Lif.else99
.Lif.then99:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_SAL@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 0
	test rsp, 15
	jne call.else207
	call _sht_expr
	jmp call.end207
call.else207:
	push rsi
	call _sht_expr
	pop rsi
call.end207:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else208
	call _new_binary_node
	jmp call.end208
call.else208:
	push rsi
	call _new_binary_node
	pop rsi
call.end208:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end99
.Lif.else99:
	lea rax, qword ptr [rip + .LC58]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else209
	call _consume
	jmp call.end209
call.else209:
	push rsi
	call _consume
	pop rsi
call.end209:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then99
	jmp .Lif.else99
.Lif.then99:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_SAR@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 0
	test rsp, 15
	jne call.else210
	call _sht_expr
	jmp call.end210
call.else210:
	push rsi
	call _sht_expr
	pop rsi
call.end210:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else211
	call _new_binary_node
	jmp call.end211
call.else211:
	push rsi
	call _new_binary_node
	pop rsi
call.end211:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end99
.Lif.else99:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	jmp .Lif.end99
.Lif.end99:
	jmp .Lif.end100
.Lif.end100:
	pop rsi
.Lfor.inc13:
	jmp .Lfor.loop13
.Lfor.end13:
_relational:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else212
	call _sht_expr
	jmp call.end212
call.else212:
	push rsi
	call _sht_expr
	pop rsi
call.end212:
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
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then101
	jmp .Lif.end101
.Lif.then101:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end101:
.Lfor.loop14:
	cmp rax, 0
	je .Lfor.end14
	lea rax, qword ptr [rip + .LC59]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else213
	call _consume
	jmp call.end213
call.else213:
	push rsi
	call _consume
	pop rsi
call.end213:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then102
	jmp .Lif.else102
.Lif.then102:
	lea rax, qword ptr [rip + .LC60]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else214
	call _consume
	jmp call.end214
call.else214:
	push rsi
	call _consume
	pop rsi
call.end214:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then102
	jmp .Lif.else102
.Lif.then102:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_LE@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 0
	test rsp, 15
	jne call.else215
	call _add_expr
	jmp call.end215
call.else215:
	push rsi
	call _add_expr
	pop rsi
call.end215:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else216
	call _new_binary_node
	jmp call.end216
call.else216:
	push rsi
	call _new_binary_node
	pop rsi
call.end216:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end102
.Lif.else102:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_LT@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 0
	test rsp, 15
	jne call.else217
	call _add_expr
	jmp call.end217
call.else217:
	push rsi
	call _add_expr
	pop rsi
call.end217:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else218
	call _new_binary_node
	jmp call.end218
call.else218:
	push rsi
	call _new_binary_node
	pop rsi
call.end218:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end102
.Lif.end102:
	jmp .Lif.end103
.Lif.else103:
	lea rax, qword ptr [rip + .LC61]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else219
	call _consume
	jmp call.end219
call.else219:
	push rsi
	call _consume
	pop rsi
call.end219:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then103
	jmp .Lif.else103
.Lif.then103:
	lea rax, qword ptr [rip + .LC62]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else220
	call _consume
	jmp call.end220
call.else220:
	push rsi
	call _consume
	pop rsi
call.end220:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then103
	jmp .Lif.else103
.Lif.then103:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_LE@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 0
	test rsp, 15
	jne call.else221
	call _add_expr
	jmp call.end221
call.else221:
	push rsi
	call _add_expr
	pop rsi
call.end221:
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else222
	call _new_binary_node
	jmp call.end222
call.else222:
	push rsi
	call _new_binary_node
	pop rsi
call.end222:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end103
.Lif.else103:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_LT@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 0
	test rsp, 15
	jne call.else223
	call _add_expr
	jmp call.end223
call.else223:
	push rsi
	call _add_expr
	pop rsi
call.end223:
	push rax
	pop rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else224
	call _new_binary_node
	jmp call.end224
call.else224:
	push rsi
	call _new_binary_node
	pop rsi
call.end224:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end103
.Lif.end103:
	jmp .Lif.end104
.Lif.else104:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	jmp .Lif.end104
.Lif.end104:
	jmp .Lif.end105
.Lif.end105:
	pop rsi
.Lfor.inc14:
	jmp .Lfor.loop14
.Lfor.end14:
_equality:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else225
	call _relational
	jmp call.end225
call.else225:
	push rsi
	call _relational
	pop rsi
call.end225:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lfor.loop15:
	cmp rax, 0
	je .Lfor.end15
	lea rax, qword ptr [rip + .LC63]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else226
	call _consume
	jmp call.end226
call.else226:
	push rsi
	call _consume
	pop rsi
call.end226:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then106
	jmp .Lif.else106
.Lif.then106:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_EQ@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 0
	test rsp, 15
	jne call.else227
	call _relational
	jmp call.end227
call.else227:
	push rsi
	call _relational
	pop rsi
call.end227:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else228
	call _new_binary_node
	jmp call.end228
call.else228:
	push rsi
	call _new_binary_node
	pop rsi
call.end228:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end106
.Lif.else106:
	lea rax, qword ptr [rip + .LC64]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else229
	call _consume
	jmp call.end229
call.else229:
	push rsi
	call _consume
	pop rsi
call.end229:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then106
	jmp .Lif.else106
.Lif.then106:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_NE@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 0
	test rsp, 15
	jne call.else230
	call _relational
	jmp call.end230
call.else230:
	push rsi
	call _relational
	pop rsi
call.end230:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else231
	call _new_binary_node
	jmp call.end231
call.else231:
	push rsi
	call _new_binary_node
	pop rsi
call.end231:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end106
.Lif.else106:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	jmp .Lif.end106
.Lif.end106:
	jmp .Lif.end107
.Lif.end107:
	pop rsi
.Lfor.inc15:
	jmp .Lfor.loop15
.Lfor.end15:
_bit_or:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else232
	call _equality
	jmp call.end232
call.else232:
	push rsi
	call _equality
	pop rsi
call.end232:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lfor.loop16:
	cmp rax, 0
	je .Lfor.end16
	lea rax, qword ptr [rip + .LC65]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else233
	call _consume
	jmp call.end233
call.else233:
	push rsi
	call _consume
	pop rsi
call.end233:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then108
	jmp .Lif.else108
.Lif.then108:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_OR@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 0
	test rsp, 15
	jne call.else234
	call _bit_or
	jmp call.end234
call.else234:
	push rsi
	call _bit_or
	pop rsi
call.end234:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else235
	call _new_binary_node
	jmp call.end235
call.else235:
	push rsi
	call _new_binary_node
	pop rsi
call.end235:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end108
.Lif.else108:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	jmp .Lif.end108
.Lif.end108:
	pop rsi
.Lfor.inc16:
	jmp .Lfor.loop16
.Lfor.end16:
_bit_xor:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else236
	call _bit_or
	jmp call.end236
call.else236:
	push rsi
	call _bit_or
	pop rsi
call.end236:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lfor.loop17:
	cmp rax, 0
	je .Lfor.end17
	lea rax, qword ptr [rip + .LC66]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else237
	call _consume
	jmp call.end237
call.else237:
	push rsi
	call _consume
	pop rsi
call.end237:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then109
	jmp .Lif.else109
.Lif.then109:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_XOR@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 0
	test rsp, 15
	jne call.else238
	call _bit_xor
	jmp call.end238
call.else238:
	push rsi
	call _bit_xor
	pop rsi
call.end238:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else239
	call _new_binary_node
	jmp call.end239
call.else239:
	push rsi
	call _new_binary_node
	pop rsi
call.end239:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end109
.Lif.else109:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	jmp .Lif.end109
.Lif.end109:
	pop rsi
.Lfor.inc17:
	jmp .Lfor.loop17
.Lfor.end17:
_bit_and:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else240
	call _bit_xor
	jmp call.end240
call.else240:
	push rsi
	call _bit_xor
	pop rsi
call.end240:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lfor.loop18:
	cmp rax, 0
	je .Lfor.end18
	lea rax, qword ptr [rip + .LC67]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else241
	call _consume
	jmp call.end241
call.else241:
	push rsi
	call _consume
	pop rsi
call.end241:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then110
	jmp .Lif.else110
.Lif.then110:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_AND@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 0
	test rsp, 15
	jne call.else242
	call _bit_and
	jmp call.end242
call.else242:
	push rsi
	call _bit_and
	pop rsi
call.end242:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else243
	call _new_binary_node
	jmp call.end243
call.else243:
	push rsi
	call _new_binary_node
	pop rsi
call.end243:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end110
.Lif.else110:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	jmp .Lif.end110
.Lif.end110:
	pop rsi
.Lfor.inc18:
	jmp .Lfor.loop18
.Lfor.end18:
_rvalue:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else244
	call _bit_and
	jmp call.end244
call.else244:
	push rsi
	call _bit_and
	pop rsi
call.end244:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lfor.loop19:
	cmp rax, 0
	je .Lfor.end19
	lea rax, qword ptr [rip + .LC68]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else245
	call _consume
	jmp call.end245
call.else245:
	push rsi
	call _consume
	pop rsi
call.end245:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then111
	jmp .Lif.else111
.Lif.then111:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_AND@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 0
	test rsp, 15
	jne call.else246
	call _rvalue
	jmp call.end246
call.else246:
	push rsi
	call _rvalue
	pop rsi
call.end246:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else247
	call _new_binary_node
	jmp call.end247
call.else247:
	push rsi
	call _new_binary_node
	pop rsi
call.end247:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end111
.Lif.else111:
	lea rax, qword ptr [rip + .LC69]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else248
	call _consume
	jmp call.end248
call.else248:
	push rsi
	call _consume
	pop rsi
call.end248:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then111
	jmp .Lif.else111
.Lif.then111:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_OR@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 0
	test rsp, 15
	jne call.else249
	call _rvalue
	jmp call.end249
call.else249:
	push rsi
	call _rvalue
	pop rsi
call.end249:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else250
	call _new_binary_node
	jmp call.end250
call.else250:
	push rsi
	call _new_binary_node
	pop rsi
call.end250:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end111
.Lif.else111:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	jmp .Lif.end111
.Lif.end111:
	jmp .Lif.end112
.Lif.end112:
	pop rsi
.Lfor.inc19:
	jmp .Lfor.loop19
.Lfor.end19:
_dot:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
.Lfor.loop20:
	cmp rax, 0
	je .Lfor.end20
	lea rax, qword ptr [rip + .LC70]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else251
	call _consume
	jmp call.end251
call.else251:
	push rsi
	call _consume
	pop rsi
call.end251:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then113
	jmp .Lif.else113
.Lif.then113:
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
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + STRUCT@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then113
	jmp .Lif.end113
.Lif.then113:
	mov rax, 0
	test rsp, 15
	jne call.else252
	call _consume_ident
	jmp call.end252
call.else252:
	push rsi
	call _consume_ident
	pop rsi
call.end252:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
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
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
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
	jne call.else253
	call _find_aggr_elem
	jmp call.end253
call.else253:
	push rsi
	call _find_aggr_elem
	pop rsi
call.end253:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then113
	jmp .Lif.else113
.Lif.then113:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_DOT@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else254
	call _new_binary_node
	jmp call.end254
call.else254:
	push rsi
	call _new_binary_node
	pop rsi
call.end254:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	pop rsi
	jmp .Lif.end113
.Lif.else113:
	lea rax, [rbp-8072]
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
	lea rax, qword ptr [rip + .LC71]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else255
	call _error_at
	jmp call.end255
call.else255:
	push rsi
	call _error_at
	pop rsi
call.end255:
	push rax
	pop rsi
	jmp .Lif.end113
.Lif.end113:
.Lif.end114:
	jmp .Lif.end115
.Lif.else115:
	lea rax, qword ptr [rip + .LC72]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else256
	call _consume
	jmp call.end256
call.else256:
	push rsi
	call _consume
	pop rsi
call.end256:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then115
	jmp .Lif.else115
.Lif.then115:
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
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + PTR@GOTPCREL]
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
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + STRUCT@GOTPCREL]
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
	(null) .Lif.then115
	jmp .Lif.end115
.Lif.then115:
	mov rax, 0
	test rsp, 15
	jne call.else257
	call _consume_ident
	jmp call.end257
call.else257:
	push rsi
	call _consume_ident
	pop rsi
call.end257:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
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
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
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
	jne call.else258
	call _find_aggr_elem
	jmp call.end258
call.else258:
	push rsi
	call _find_aggr_elem
	pop rsi
call.end258:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then115
	jmp .Lif.else115
.Lif.then115:
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
	pop rax
	lea rax, [rax-32]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_DEREF@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
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
	jne call.else259
	call _new_node
	jmp call.end259
call.else259:
	push rsi
	call _new_node
	pop rsi
call.end259:
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
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_DOT@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else260
	call _new_binary_node
	jmp call.end260
call.else260:
	push rsi
	call _new_binary_node
	pop rsi
call.end260:
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
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + var@GOTPCREL]
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
	pop rsi
	jmp .Lif.end115
.Lif.else115:
	lea rax, [rbp-8072]
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
	lea rax, qword ptr [rip + .LC73]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else261
	call _error_at
	jmp call.end261
call.else261:
	push rsi
	call _error_at
	pop rsi
call.end261:
	push rax
	pop rsi
	jmp .Lif.end115
.Lif.end115:
.Lif.end116:
	jmp .Lif.end117
.Lif.else117:
	jmp .Lfor.end20
	jmp .Lif.end117
.Lif.end117:
	jmp .Lif.end118
.Lif.end118:
.Lfor.inc20:
	jmp .Lfor.loop20
.Lfor.end20:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_lvalue:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	lea rax, [rbp-8072]
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
	lea rax, qword ptr [rip + .LC74]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else262
	call _consume
	jmp call.end262
call.else262:
	push rsi
	call _consume
	pop rsi
call.end262:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then119
	jmp .Lif.end119
.Lif.then119:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else263
	call _rvalue
	jmp call.end263
call.else263:
	push rsi
	call _rvalue
	pop rsi
call.end263:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + PTR@GOTPCREL]
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
	(null) .Lif.then119
	jmp .Lif.end119
.Lif.then119:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_DEREF@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else264
	call _new_node
	jmp call.end264
call.else264:
	push rsi
	call _new_node
	pop rsi
call.end264:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	pop rsi
.Lif.end119:
	push 0
	pop rbp
	ret
.Lif.end120:
	lea rax, qword ptr [rip + .LC75]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else265
	call _consume
	jmp call.end265
call.else265:
	push rsi
	call _consume
	pop rsi
call.end265:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then121
	jmp .Lif.end121
.Lif.then121:
	lea rax, DWORD PTR [rip + ND_ADDR@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 0
	test rsp, 15
	jne call.else266
	call _lvalue
	jmp call.end266
call.else266:
	push rsi
	call _lvalue
	pop rsi
call.end266:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else267
	call _new_node
	jmp call.end267
call.else267:
	push rsi
	call _new_node
	pop rsi
call.end267:
	push rax
	pop rbp
	ret
.Lif.end121:
	mov rax, 0
	test rsp, 15
	jne call.else268
	call _cu
	jmp call.end268
call.else268:
	push rsi
	call _cu
	pop rsi
call.end268:
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else269
	call _consume_ident
	jmp call.end269
call.else269:
	push rsi
	call _consume_ident
	pop rsi
call.end269:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then122
	jmp .Lif.end122
.Lif.then122:
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else270
	call _find_lvar
	jmp call.end270
call.else270:
	push rsi
	call _find_lvar
	pop rsi
call.end270:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then122
	jmp .Lif.else122
.Lif.then122:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_LVAR@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
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
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else271
	call _new_node_s
	jmp call.end271
call.else271:
	push rsi
	call _new_node_s
	pop rsi
call.end271:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-272]
	push rax
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else272
	call _dot
	jmp call.end272
call.else272:
	push rsi
	call _dot
	pop rsi
call.end272:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + ARRAY@GOTPCREL]
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
	(null) .Lif.then122
	jmp .Lif.end122
.Lif.then122:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_ADDR@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else273
	call _new_node
	jmp call.end273
call.else273:
	push rsi
	call _new_node
	pop rsi
call.end273:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	pop rax
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
	jne call.else274
	call _wrap_pointer
	jmp call.end274
call.else274:
	push rsi
	call _wrap_pointer
	pop rsi
call.end274:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	pop rsi
.Lif.end122:
	lea rax, qword ptr [rip + .LC76]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else275
	call _consume
	jmp call.end275
call.else275:
	push rsi
	call _consume
	pop rsi
call.end275:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then123
	jmp .Lif.end123
.Lif.then123:
	mov rax, 0
	test rsp, 15
	jne call.else276
	call _rvalue
	jmp call.end276
call.else276:
	push rsi
	call _rvalue
	pop rsi
call.end276:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + PTR@GOTPCREL]
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
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	(null) .Lif.then123
	jmp .Lif.else123
.Lif.then123:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_MUL@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	jne call.else277
	call _new_node_num
	jmp call.end277
call.else277:
	push rsi
	call _new_node_num
	pop rsi
call.end277:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else278
	call _new_binary_node
	jmp call.end278
call.else278:
	push rsi
	call _new_binary_node
	pop rsi
call.end278:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	pop rsi
	jmp .Lif.end123
.Lif.else123:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
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
	mov rax, DWORD PTR [rax]
	push rax
	lea rax, DWORD PTR [rip + PTR@GOTPCREL]
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
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
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
	(null) .Lif.then123
	jmp .Lif.end123
.Lif.then123:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_MUL@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
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
	jne call.else279
	call _new_node_num
	jmp call.end279
call.else279:
	push rsi
	call _new_node_num
	pop rsi
call.end279:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else280
	call _new_binary_node
	jmp call.end280
call.else280:
	push rsi
	call _new_binary_node
	pop rsi
call.end280:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
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
.Lif.end123:
	jmp .Lif.end124
.Lif.end124:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else281
	call _new_binary_node
	jmp call.end281
call.else281:
	push rsi
	call _new_binary_node
	pop rsi
call.end281:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_DEREF@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else282
	call _new_node
	jmp call.end282
call.else282:
	push rsi
	call _new_node
	pop rsi
call.end282:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC77]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else283
	call _expect
	jmp call.end283
call.else283:
	push rsi
	call _expect
	pop rsi
call.end283:
	push rax
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end125:
	jmp .Lif.end126
.Lif.else126:
	lea rax, [rbp-8072]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	push 0
	pop rbp
	ret
	jmp .Lif.end126
.Lif.end126:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end127:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_initializer:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, qword ptr [rip + .LC78]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else284
	call _consume
	jmp call.end284
call.else284:
	push rsi
	call _consume
	pop rsi
call.end284:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then128
	jmp .Lif.else128
.Lif.then128:
	mov rax, 0
	test rsp, 15
	jne call.else285
	call _new_vector
	jmp call.end285
call.else285:
	push rsi
	call _new_vector
	pop rsi
call.end285:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lfor.loop21:
	cmp rax, 0
	je .Lfor.end21
	lea rax, QWORD PTR [rip + nodes@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 0
	test rsp, 15
	jne call.else286
	call _rvalue
	jmp call.end286
call.else286:
	push rsi
	call _rvalue
	pop rsi
call.end286:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else287
	call _push_back
	jmp call.end287
call.else287:
	push rsi
	call _push_back
	pop rsi
call.end287:
	push rax
	lea rax, qword ptr [rip + .LC79]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else288
	call _consume
	jmp call.end288
call.else288:
	push rsi
	call _consume
	pop rsi
call.end288:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then128
	jmp .Lif.end128
.Lif.then128:
	lea rax, qword ptr [rip + .LC80]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else289
	call _expect
	jmp call.end289
call.else289:
	push rsi
	call _expect
	pop rsi
call.end289:
	push rax
	jmp .Lfor.end21
.Lif.end128:
.Lfor.inc21:
	jmp .Lfor.loop21
.Lfor.end21:
	lea rax, [rbp-0]
	push rax
	push 1
	pop rdi
	push 288
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else290
	call _calloc
	jmp call.end290
call.else290:
	push rsi
	call _calloc
	pop rsi
call.end290:
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
	lea rax, DWORD PTR [rip + ND_INITIALIZER@GOTPCREL]
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
	lea rax, [rax-240]
	push rax
	lea rax, QWORD PTR [rip + nodes@GOTPCREL]
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
	pop rbp
	ret
	jmp .Lif.end129
.Lif.else129:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else291
	call _rvalue
	jmp call.end291
call.else291:
	push rsi
	call _rvalue
	pop rsi
call.end291:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end129
.Lif.end129:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_expr:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-8072]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	mov rax, 0
	test rsp, 15
	jne call.else292
	call _lvalue
	jmp call.end292
call.else292:
	push rsi
	call _lvalue
	pop rsi
call.end292:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	mov rax, 0
	test rsp, 15
	jne call.else293
	call _cu
	jmp call.end293
call.else293:
	push rsi
	call _cu
	pop rsi
call.end293:
	push rax
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then130
	jmp .Lif.else130
.Lif.then130:
	lea rax, qword ptr [rip + .LC81]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else294
	call _consume
	jmp call.end294
call.else294:
	push rsi
	call _consume
	pop rsi
call.end294:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then130
	jmp .Lif.else130
.Lif.then130:
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else295
	call _expr
	jmp call.end295
call.else295:
	push rsi
	call _expr
	pop rsi
call.end295:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else296
	call _new_binary_node
	jmp call.end296
call.else296:
	push rsi
	call _new_binary_node
	pop rsi
call.end296:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else297
	call _new_binary_node
	jmp call.end297
call.else297:
	push rsi
	call _new_binary_node
	pop rsi
call.end297:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end130
.Lif.else130:
	lea rax, qword ptr [rip + .LC82]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else298
	call _consume
	jmp call.end298
call.else298:
	push rsi
	call _consume
	pop rsi
call.end298:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then130
	jmp .Lif.else130
.Lif.then130:
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else299
	call _expr
	jmp call.end299
call.else299:
	push rsi
	call _expr
	pop rsi
call.end299:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_SUB@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else300
	call _new_binary_node
	jmp call.end300
call.else300:
	push rsi
	call _new_binary_node
	pop rsi
call.end300:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else301
	call _new_binary_node
	jmp call.end301
call.else301:
	push rsi
	call _new_binary_node
	pop rsi
call.end301:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end130
.Lif.else130:
	lea rax, qword ptr [rip + .LC83]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else302
	call _consume
	jmp call.end302
call.else302:
	push rsi
	call _consume
	pop rsi
call.end302:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then130
	jmp .Lif.else130
.Lif.then130:
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else303
	call _expr
	jmp call.end303
call.else303:
	push rsi
	call _expr
	pop rsi
call.end303:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_MUL@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else304
	call _new_binary_node
	jmp call.end304
call.else304:
	push rsi
	call _new_binary_node
	pop rsi
call.end304:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else305
	call _new_binary_node
	jmp call.end305
call.else305:
	push rsi
	call _new_binary_node
	pop rsi
call.end305:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end130
.Lif.else130:
	lea rax, qword ptr [rip + .LC84]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else306
	call _consume
	jmp call.end306
call.else306:
	push rsi
	call _consume
	pop rsi
call.end306:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then130
	jmp .Lif.else130
.Lif.then130:
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else307
	call _expr
	jmp call.end307
call.else307:
	push rsi
	call _expr
	pop rsi
call.end307:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_DIV@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else308
	call _new_binary_node
	jmp call.end308
call.else308:
	push rsi
	call _new_binary_node
	pop rsi
call.end308:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else309
	call _new_binary_node
	jmp call.end309
call.else309:
	push rsi
	call _new_binary_node
	pop rsi
call.end309:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end130
.Lif.else130:
	lea rax, qword ptr [rip + .LC85]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else310
	call _consume
	jmp call.end310
call.else310:
	push rsi
	call _consume
	pop rsi
call.end310:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then130
	jmp .Lif.else130
.Lif.then130:
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else311
	call _expr
	jmp call.end311
call.else311:
	push rsi
	call _expr
	pop rsi
call.end311:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_MOD@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else312
	call _new_binary_node
	jmp call.end312
call.else312:
	push rsi
	call _new_binary_node
	pop rsi
call.end312:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else313
	call _new_binary_node
	jmp call.end313
call.else313:
	push rsi
	call _new_binary_node
	pop rsi
call.end313:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end130
.Lif.else130:
	lea rax, qword ptr [rip + .LC86]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else314
	call _consume
	jmp call.end314
call.else314:
	push rsi
	call _consume
	pop rsi
call.end314:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then130
	jmp .Lif.else130
.Lif.then130:
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else315
	call _expr
	jmp call.end315
call.else315:
	push rsi
	call _expr
	pop rsi
call.end315:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_SAL@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else316
	call _new_binary_node
	jmp call.end316
call.else316:
	push rsi
	call _new_binary_node
	pop rsi
call.end316:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else317
	call _new_binary_node
	jmp call.end317
call.else317:
	push rsi
	call _new_binary_node
	pop rsi
call.end317:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end130
.Lif.else130:
	lea rax, qword ptr [rip + .LC87]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else318
	call _consume
	jmp call.end318
call.else318:
	push rsi
	call _consume
	pop rsi
call.end318:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then130
	jmp .Lif.else130
.Lif.then130:
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else319
	call _expr
	jmp call.end319
call.else319:
	push rsi
	call _expr
	pop rsi
call.end319:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_SAR@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else320
	call _new_binary_node
	jmp call.end320
call.else320:
	push rsi
	call _new_binary_node
	pop rsi
call.end320:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else321
	call _new_binary_node
	jmp call.end321
call.else321:
	push rsi
	call _new_binary_node
	pop rsi
call.end321:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end130
.Lif.else130:
	lea rax, qword ptr [rip + .LC88]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else322
	call _consume
	jmp call.end322
call.else322:
	push rsi
	call _consume
	pop rsi
call.end322:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then130
	jmp .Lif.else130
.Lif.then130:
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else323
	call _expr
	jmp call.end323
call.else323:
	push rsi
	call _expr
	pop rsi
call.end323:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_AND@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else324
	call _new_binary_node
	jmp call.end324
call.else324:
	push rsi
	call _new_binary_node
	pop rsi
call.end324:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else325
	call _new_binary_node
	jmp call.end325
call.else325:
	push rsi
	call _new_binary_node
	pop rsi
call.end325:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end130
.Lif.else130:
	lea rax, qword ptr [rip + .LC89]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else326
	call _consume
	jmp call.end326
call.else326:
	push rsi
	call _consume
	pop rsi
call.end326:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then130
	jmp .Lif.else130
.Lif.then130:
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else327
	call _expr
	jmp call.end327
call.else327:
	push rsi
	call _expr
	pop rsi
call.end327:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_XOR@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else328
	call _new_binary_node
	jmp call.end328
call.else328:
	push rsi
	call _new_binary_node
	pop rsi
call.end328:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else329
	call _new_binary_node
	jmp call.end329
call.else329:
	push rsi
	call _new_binary_node
	pop rsi
call.end329:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end130
.Lif.else130:
	lea rax, qword ptr [rip + .LC90]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else330
	call _consume
	jmp call.end330
call.else330:
	push rsi
	call _consume
	pop rsi
call.end330:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then130
	jmp .Lif.else130
.Lif.then130:
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else331
	call _expr
	jmp call.end331
call.else331:
	push rsi
	call _expr
	pop rsi
call.end331:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_OR@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else332
	call _new_binary_node
	jmp call.end332
call.else332:
	push rsi
	call _new_binary_node
	pop rsi
call.end332:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else333
	call _new_binary_node
	jmp call.end333
call.else333:
	push rsi
	call _new_binary_node
	pop rsi
call.end333:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end130
.Lif.else130:
	lea rax, qword ptr [rip + .LC91]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else334
	call _consume
	jmp call.end334
call.else334:
	push rsi
	call _consume
	pop rsi
call.end334:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then130
	jmp .Lif.else130
.Lif.then130:
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else335
	call _expr
	jmp call.end335
call.else335:
	push rsi
	call _expr
	pop rsi
call.end335:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rval@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else336
	call _new_binary_node
	jmp call.end336
call.else336:
	push rsi
	call _new_binary_node
	pop rsi
call.end336:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end130
.Lif.else130:
	lea rax, [rbp-8072]
	push rax
	lea rax, QWORD PTR [rip + backup@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else337
	call _rvalue
	jmp call.end337
call.else337:
	push rsi
	call _rvalue
	pop rsi
call.end337:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end130
.Lif.end130:
	jmp .Lif.end131
.Lif.end131:
	jmp .Lif.end132
.Lif.end132:
	jmp .Lif.end133
.Lif.end133:
	jmp .Lif.end134
.Lif.end134:
	jmp .Lif.end135
.Lif.end135:
	jmp .Lif.end136
.Lif.end136:
	jmp .Lif.end137
.Lif.end137:
	jmp .Lif.end138
.Lif.end138:
	jmp .Lif.end139
.Lif.end139:
	jmp .Lif.end140
.Lif.end140:
	jmp .Lif.end141
.Lif.else141:
	lea rax, [rbp-8072]
	push rax
	lea rax, QWORD PTR [rip + backup@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else338
	call _rvalue
	jmp call.end338
call.else338:
	push rsi
	call _rvalue
	pop rsi
call.end338:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	mov rax, 0
	test rsp, 15
	jne call.else339
	call _cu
	jmp call.end339
call.else339:
	push rsi
	call _cu
	pop rsi
call.end339:
	push rax
	pop rsi
	jmp .Lif.end141
.Lif.end141:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_switch_case:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, qword ptr [rip + .LC92]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else340
	call _consume
	jmp call.end340
call.else340:
	push rsi
	call _consume
	pop rsi
call.end340:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then142
	jmp .Lif.else142
.Lif.then142:
	lea rax, QWORD PTR [rip + case_default@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else341
	call _rvalue
	jmp call.end341
call.else341:
	push rsi
	call _rvalue
	pop rsi
call.end341:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC93]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else342
	call _expect
	jmp call.end342
call.else342:
	push rsi
	call _expect
	pop rsi
call.end342:
	push rax
.Lwhile.loop2:
	lea rax, qword ptr [rip + .LC94]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else343
	call _check
	jmp call.end343
call.else343:
	push rsi
	call _check
	pop rsi
call.end343:
	push rax
	pop rax
	not eax
	push rax
	lea rax, qword ptr [rip + .LC95]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else344
	call _check
	jmp call.end344
call.else344:
	push rsi
	call _check
	pop rsi
call.end344:
	push rax
	pop rax
	not eax
	push rax
	pop rbx
	pop rax
	and eax, ebx
	push rax
	cmp rax, 0
	je .Lwhile.end2
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else345
	call _stmt
	jmp call.end345
call.else345:
	push rsi
	call _stmt
	pop rsi
call.end345:
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
	cmp rax, 0
	je .Lif.then142
	jmp .Lif.else142
.Lif.then142:
	lea rax, QWORD PTR [rip + nodes_stmt@GOTPCREL]
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
	mov rax, 2
	test rsp, 15
	jne call.else346
	call _push_back
	jmp call.end346
call.else346:
	push rsi
	call _push_back
	pop rsi
call.end346:
	push rax
	jmp .Lif.end142
.Lif.else142:
	jmp .Lwhile.end2
	jmp .Lif.end142
.Lif.end142:
	jmp .Lwhile.loop2
.Lwhile.end2:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_CASE@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + case_default@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else347
	call _new_node
	jmp call.end347
call.else347:
	push rsi
	call _new_node
	pop rsi
call.end347:
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
	lea rax, [rax-240]
	push rax
	lea rax, QWORD PTR [rip + nodes_stmt@GOTPCREL]
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
	pop rbp
	ret
	jmp .Lif.end143
.Lif.else143:
	lea rax, qword ptr [rip + .LC96]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else348
	call _consume
	jmp call.end348
call.else348:
	push rsi
	call _consume
	pop rsi
call.end348:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then143
	jmp .Lif.end143
.Lif.then143:
	lea rax, QWORD PTR [rip + case_default@GOTPCREL]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC97]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else349
	call _expect
	jmp call.end349
call.else349:
	push rsi
	call _expect
	pop rsi
call.end349:
	push rax
.Lwhile.loop3:
	lea rax, qword ptr [rip + .LC98]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else350
	call _check
	jmp call.end350
call.else350:
	push rsi
	call _check
	pop rsi
call.end350:
	push rax
	pop rax
	not eax
	push rax
	lea rax, qword ptr [rip + .LC99]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else351
	call _check
	jmp call.end351
call.else351:
	push rsi
	call _check
	pop rsi
call.end351:
	push rax
	pop rax
	not eax
	push rax
	pop rbx
	pop rax
	and eax, ebx
	push rax
	cmp rax, 0
	je .Lwhile.end3
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else352
	call _stmt
	jmp call.end352
call.else352:
	push rsi
	call _stmt
	pop rsi
call.end352:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + nodes_stmt@GOTPCREL]
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
	mov rax, 2
	test rsp, 15
	jne call.else353
	call _push_back
	jmp call.end353
call.else353:
	push rsi
	call _push_back
	pop rsi
call.end353:
	push rax
	pop rsi
	jmp .Lwhile.loop3
.Lwhile.end3:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_CASE@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + case_default@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else354
	call _new_node
	jmp call.end354
call.else354:
	push rsi
	call _new_node
	pop rsi
call.end354:
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
	lea rax, [rax-240]
	push rax
	lea rax, QWORD PTR [rip + nodes_stmt@GOTPCREL]
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
	pop rbp
	ret
.Lif.end143:
	jmp .Lif.end144
.Lif.end144:
	push 0
	pop rbp
	ret
_stmt:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, qword ptr [rip + .LC100]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else355
	call _consume
	jmp call.end355
call.else355:
	push rsi
	call _consume
	pop rsi
call.end355:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then145
	jmp .Lif.else145
.Lif.then145:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else356
	call _expr
	jmp call.end356
call.else356:
	push rsi
	call _expr
	pop rsi
call.end356:
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
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then145
	jmp .Lif.end145
.Lif.then145:
	lea rax, [rbp-0]
	push rax
	push 0
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else357
	call _new_node_num
	jmp call.end357
call.else357:
	push rsi
	call _new_node_num
	pop rsi
call.end357:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end145:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_RETURN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
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
	jne call.else358
	call _new_node
	jmp call.end358
call.else358:
	push rsi
	call _new_node
	pop rsi
call.end358:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC101]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else359
	call _expect
	jmp call.end359
call.else359:
	push rsi
	call _expect
	pop rsi
call.end359:
	push rax
	jmp .Lif.end146
.Lif.else146:
	lea rax, qword ptr [rip + .LC102]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else360
	call _consume
	jmp call.end360
call.else360:
	push rsi
	call _consume
	pop rsi
call.end360:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then146
	jmp .Lif.else146
.Lif.then146:
	lea rax, qword ptr [rip + .LC103]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else361
	call _expect
	jmp call.end361
call.else361:
	push rsi
	call _expect
	pop rsi
call.end361:
	push rax
	lea rax, QWORD PTR [rip + Cond@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else362
	call _expr
	jmp call.end362
call.else362:
	push rsi
	call _expr
	pop rsi
call.end362:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC104]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else363
	call _expect
	jmp call.end363
call.else363:
	push rsi
	call _expect
	pop rsi
call.end363:
	push rax
	lea rax, QWORD PTR [rip + Then@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else364
	call _stmts
	jmp call.end364
call.else364:
	push rsi
	call _stmts
	pop rsi
call.end364:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC105]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else365
	call _consume
	jmp call.end365
call.else365:
	push rsi
	call _consume
	pop rsi
call.end365:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then146
	jmp .Lif.else146
.Lif.then146:
	lea rax, QWORD PTR [rip + Else@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else366
	call _stmts
	jmp call.end366
call.else366:
	push rsi
	call _stmts
	pop rsi
call.end366:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end146
.Lif.else146:
	lea rax, QWORD PTR [rip + Else@GOTPCREL]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	jmp .Lif.end146
.Lif.end146:
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_IF@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + Cond@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + Then@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	lea rax, QWORD PTR [rip + Else@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne call.else367
	call _new_node_if
	jmp call.end367
call.else367:
	push rsi
	call _new_node_if
	pop rsi
call.end367:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end147
.Lif.else147:
	lea rax, qword ptr [rip + .LC106]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else368
	call _consume
	jmp call.end368
call.else368:
	push rsi
	call _consume
	pop rsi
call.end368:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then147
	jmp .Lif.else147
.Lif.then147:
	lea rax, qword ptr [rip + .LC107]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else369
	call _expect
	jmp call.end369
call.else369:
	push rsi
	call _expect
	pop rsi
call.end369:
	push rax
	lea rax, QWORD PTR [rip + Cond@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else370
	call _expr
	jmp call.end370
call.else370:
	push rsi
	call _expr
	pop rsi
call.end370:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC108]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else371
	call _expect
	jmp call.end371
call.else371:
	push rsi
	call _expect
	pop rsi
call.end371:
	push rax
	lea rax, QWORD PTR [rip + Loop@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else372
	call _stmts
	jmp call.end372
call.else372:
	push rsi
	call _stmts
	pop rsi
call.end372:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_WHILE@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + Cond@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + Loop@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else373
	call _new_binary_node
	jmp call.end373
call.else373:
	push rsi
	call _new_binary_node
	pop rsi
call.end373:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end147
.Lif.else147:
	lea rax, qword ptr [rip + .LC109]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else374
	call _consume
	jmp call.end374
call.else374:
	push rsi
	call _consume
	pop rsi
call.end374:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then147
	jmp .Lif.else147
.Lif.then147:
	lea rax, qword ptr [rip + .LC110]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else375
	call _expect
	jmp call.end375
call.else375:
	push rsi
	call _expect
	pop rsi
call.end375:
	push rax
	lea rax, QWORD PTR [rip + Cond1@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else376
	call _expr
	jmp call.end376
call.else376:
	push rsi
	call _expr
	pop rsi
call.end376:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC111]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else377
	call _expect
	jmp call.end377
call.else377:
	push rsi
	call _expect
	pop rsi
call.end377:
	push rax
	lea rax, QWORD PTR [rip + Cond2@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else378
	call _expr
	jmp call.end378
call.else378:
	push rsi
	call _expr
	pop rsi
call.end378:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC112]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else379
	call _expect
	jmp call.end379
call.else379:
	push rsi
	call _expect
	pop rsi
call.end379:
	push rax
	lea rax, QWORD PTR [rip + Cond3@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else380
	call _expr
	jmp call.end380
call.else380:
	push rsi
	call _expr
	pop rsi
call.end380:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC113]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else381
	call _expect
	jmp call.end381
call.else381:
	push rsi
	call _expect
	pop rsi
call.end381:
	push rax
	lea rax, QWORD PTR [rip + Loop@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else382
	call _stmts
	jmp call.end382
call.else382:
	push rsi
	call _stmts
	pop rsi
call.end382:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_FOR@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + Cond1@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + Cond2@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	lea rax, QWORD PTR [rip + Cond3@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rcx
	lea rax, QWORD PTR [rip + Loop@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop r8
	mov rax, 5
	test rsp, 15
	jne call.else383
	call _new_node_for
	jmp call.end383
call.else383:
	push rsi
	call _new_node_for
	pop rsi
call.end383:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end147
.Lif.else147:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else384
	call _expr
	jmp call.end384
call.else384:
	push rsi
	call _expr
	pop rsi
call.end384:
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
	cmp rax, 0
	je .Lif.then147
	jmp .Lif.end147
.Lif.then147:
	lea rax, qword ptr [rip + .LC114]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else385
	call _expect
	jmp call.end385
call.else385:
	push rsi
	call _expect
	pop rsi
call.end385:
	push rax
.Lif.end147:
	pop rsi
	jmp .Lif.end148
.Lif.end148:
	jmp .Lif.end149
.Lif.end149:
	jmp .Lif.end150
.Lif.end150:
	jmp .Lif.end151
.Lif.end151:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_stmts:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, qword ptr [rip + .LC115]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else386
	call _consume
	jmp call.end386
call.else386:
	push rsi
	call _consume
	pop rsi
call.end386:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then152
	jmp .Lif.else152
.Lif.then152:
	mov rax, 0
	test rsp, 15
	jne call.else387
	call _new_vector
	jmp call.end387
call.else387:
	push rsi
	call _new_vector
	pop rsi
call.end387:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16116]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16116]
	push rax
	lea rax, QWORD PTR [rip + nodes@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lfor.loop22:
	cmp rax, 0
	je .Lfor.end22
	lea rax, QWORD PTR [rip + nodes@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 0
	test rsp, 15
	jne call.else388
	call _stmt
	jmp call.end388
call.else388:
	push rsi
	call _stmt
	pop rsi
call.end388:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else389
	call _push_back
	jmp call.end389
call.else389:
	push rsi
	call _push_back
	pop rsi
call.end389:
	push rax
	lea rax, qword ptr [rip + .LC116]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else390
	call _consume
	jmp call.end390
call.else390:
	push rsi
	call _consume
	pop rsi
call.end390:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then152
	jmp .Lif.end152
.Lif.then152:
	jmp .Lfor.end22
.Lif.end152:
.Lfor.inc22:
	jmp .Lfor.loop22
.Lfor.end22:
	lea rax, [rbp-16116]
	push rax
	lea rax, QWORD PTR [rip + kari@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	push 1
	pop rdi
	push 288
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else391
	call _calloc
	jmp call.end391
call.else391:
	push rsi
	call _calloc
	pop rsi
call.end391:
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
	lea rax, DWORD PTR [rip + ND_BLOCK@GOTPCREL]
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
	lea rax, [rax-240]
	push rax
	lea rax, QWORD PTR [rip + nodes@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end153
.Lif.else153:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else392
	call _stmt
	jmp call.end392
call.else392:
	push rsi
	call _stmt
	pop rsi
call.end392:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end153
.Lif.end153:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_variable_decl:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov QWORD PTR [rbp-0], rdi
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-8072]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC117]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else393
	call _consume
	jmp call.end393
call.else393:
	push rsi
	call _consume
	pop rsi
call.end393:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then154
	jmp .Lif.end154
.Lif.then154:
	pop rsi
.Lif.end154:
	mov rax, 0
	test rsp, 15
	jne call.else394
	call _prim_type_spec
	jmp call.end394
call.else394:
	push rsi
	call _prim_type_spec
	pop rsi
call.end394:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + ident_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then155
	jmp .Lif.end155
.Lif.then155:
.Lfor.loop23:
	cmp rax, 0
	je .Lfor.end23
	lea rax, QWORD PTR [rip + each_type@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + ident_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lwhile.loop4:
	lea rax, qword ptr [rip + .LC118]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else395
	call _consume
	jmp call.end395
call.else395:
	push rsi
	call _consume
	pop rsi
call.end395:
	push rax
	cmp rax, 0
	je .Lwhile.end4
	lea rax, QWORD PTR [rip + each_type@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + each_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else396
	call _wrap_pointer
	jmp call.end396
call.else396:
	push rsi
	call _wrap_pointer
	pop rsi
call.end396:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop4
.Lwhile.end4:
	mov rax, 0
	test rsp, 15
	jne call.else397
	call _consume_ident
	jmp call.end397
call.else397:
	push rsi
	call _consume_ident
	pop rsi
call.end397:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	mov rax, 0
	test rsp, 15
	jne call.else398
	call _cu
	jmp call.end398
call.else398:
	push rsi
	call _cu
	pop rsi
call.end398:
	push rax
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, qword ptr [rip + .LC119]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else399
	call _check
	jmp call.end399
call.else399:
	push rsi
	call _check
	pop rsi
call.end399:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	(null) .Lif.then155
	jmp .Lif.else155
.Lif.then155:
	lea rax, qword ptr [rip + .LC120]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else400
	call _consume
	jmp call.end400
call.else400:
	push rsi
	call _consume
	pop rsi
call.end400:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then155
	jmp .Lif.end155
.Lif.then155:
	mov rax, 0
	test rsp, 15
	jne call.else401
	call _consume_number
	jmp call.end401
call.else401:
	push rsi
	call _consume_number
	pop rsi
call.end401:
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC121]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else402
	call _expect
	jmp call.end402
call.else402:
	push rsi
	call _expect
	pop rsi
call.end402:
	push rax
	lea rax, qword ptr [rip + .LC122]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else403
	call _consume
	jmp call.end403
call.else403:
	push rsi
	call _consume
	pop rsi
call.end403:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then155
	jmp .Lif.end155
.Lif.then155:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else404
	call _initializer
	jmp call.end404
call.else404:
	push rsi
	call _initializer
	pop rsi
call.end404:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	pop rsi
.Lif.end155:
	lea rax, DWORD PTR [rip + array_size@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push -1
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then156
	jmp .Lif.end156
.Lif.then156:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
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
	(null) .Lif.then156
	jmp .Lif.else156
.Lif.then156:
	lea rax, DWORD PTR [rip + array_size@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
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
	mov DWORD PTR [rax], ebx
	jmp .Lif.end156
.Lif.else156:
	lea rax, DWORD PTR [rip + array_size@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
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
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	jmp .Lif.end156
.Lif.end156:
	pop rsi
.Lif.end157:
	lea rax, QWORD PTR [rip + each_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + array_size@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else405
	call _array_type
	jmp call.end405
call.else405:
	push rsi
	call _array_type
	pop rsi
call.end405:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + each_type@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	pop rsi
.Lif.end158:
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + each_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else406
	call _make_lvar
	jmp call.end406
call.else406:
	push rsi
	call _make_lvar
	pop rsi
call.end406:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16108]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else407
	call _add_var
	jmp call.end407
call.else407:
	push rsi
	call _add_var
	pop rsi
call.end407:
	push rax
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_VARDECL@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + each_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else408
	call _new_node_s
	jmp call.end408
call.else408:
	push rsi
	call _new_node_s
	pop rsi
call.end408:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-272]
	push rax
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then159
	jmp .Lif.else159
.Lif.then159:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else409
	call _new_binary_node
	jmp call.end409
call.else409:
	push rsi
	call _new_binary_node
	pop rsi
call.end409:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	pop rsi
	jmp .Lif.end159
.Lif.else159:
	lea rax, qword ptr [rip + .LC123]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else410
	call _consume
	jmp call.end410
call.else410:
	push rsi
	call _consume
	pop rsi
call.end410:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then159
	jmp .Lif.end159
.Lif.then159:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else411
	call _initializer
	jmp call.end411
call.else411:
	push rsi
	call _initializer
	pop rsi
call.end411:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else412
	call _new_binary_node
	jmp call.end412
call.else412:
	push rsi
	call _new_binary_node
	pop rsi
call.end412:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end159:
	jmp .Lif.end160
.Lif.end160:
	lea rax, qword ptr [rip + .LC124]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else413
	call _consume
	jmp call.end413
call.else413:
	push rsi
	call _consume
	pop rsi
call.end413:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then161
	jmp .Lif.else161
.Lif.then161:
	jmp .Lfor.end23
	jmp .Lif.end161
.Lif.else161:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else414
	call _add_cur_scope_code
	jmp call.end414
call.else414:
	push rsi
	call _add_cur_scope_code
	pop rsi
call.end414:
	push rax
	pop rsi
	jmp .Lif.end161
.Lif.end161:
	jmp .Lif.end162
.Lif.else162:
	lea rax, [rbp-8072]
	push rax
	lea rax, QWORD PTR [rip + backup@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	jmp .Lif.end162
.Lif.end162:
.Lfor.inc23:
	jmp .Lfor.loop23
.Lfor.end23:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 1
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then163
	jmp .Lif.end163
.Lif.then163:
	lea rax, qword ptr [rip + .LC125]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else415
	call _expect
	jmp call.end415
call.else415:
	push rsi
	call _expect
	pop rsi
call.end415:
	push rax
.Lif.end163:
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	pop rsi
.Lif.end164:
	lea rax, [rbp-8072]
	push rax
	lea rax, QWORD PTR [rip + backup@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_init_variable_list:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	push 1
	pop rdi
	push 40
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else416
	call _calloc
	jmp call.end416
call.else416:
	push rsi
	call _calloc
	pop rsi
call.end416:
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
	lea rax, [rax-20]
	push rax
	push 1
	pop rdi
	push 56
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else417
	call _calloc
	jmp call.end417
call.else417:
	push rsi
	call _calloc
	pop rsi
call.end417:
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
	lea rax, [rax-20]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-48]
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
	pop rax
	lea rax, [rax-36]
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
	pop rsi
_func_decl_or_def:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-8072]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC126]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else418
	call _consume
	jmp call.end418
call.else418:
	push rsi
	call _consume
	pop rsi
call.end418:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then165
	jmp .Lif.end165
.Lif.then165:
.Lif.end165:
	mov rax, 0
	test rsp, 15
	jne call.else419
	call _type_spec
	jmp call.end419
call.else419:
	push rsi
	call _type_spec
	pop rsi
call.end419:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16084]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else420
	call _init_variable_list
	jmp call.end420
call.else420:
	push rsi
	call _init_variable_list
	pop rsi
call.end420:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + ident_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then166
	jmp .Lif.end166
.Lif.then166:
	mov rax, 0
	test rsp, 15
	jne call.else421
	call _consume_ident
	jmp call.end421
call.else421:
	push rsi
	call _consume_ident
	pop rsi
call.end421:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then166
	jmp .Lif.end166
.Lif.then166:
	lea rax, qword ptr [rip + .LC127]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else422
	call _consume
	jmp call.end422
call.else422:
	push rsi
	call _consume
	pop rsi
call.end422:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then166
	jmp .Lif.end166
.Lif.then166:
	mov rax, 0
	test rsp, 15
	jne call.else423
	call _init_variable_list
	jmp call.end423
call.else423:
	push rsi
	call _init_variable_list
	pop rsi
call.end423:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + args@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_DECL@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + ident_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else424
	call _new_node_s
	jmp call.end424
call.else424:
	push rsi
	call _new_node_s
	pop rsi
call.end424:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16108]
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
	mov rax, 2
	test rsp, 15
	jne call.else425
	call _add_node
	jmp call.end425
call.else425:
	push rsi
	call _add_node
	pop rsi
call.end425:
	push rax
	lea rax, [rbp-16108]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lwhile.loop5:
	lea rax, qword ptr [rip + .LC128]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else426
	call _consume
	jmp call.end426
call.else426:
	push rsi
	call _consume
	pop rsi
call.end426:
	push rax
	pop rax
	not eax
	push rax
	cmp rax, 0
	je .Lwhile.end5
	lea rax, QWORD PTR [rip + arg_type@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else427
	call _type_spec
	jmp call.end427
call.else427:
	push rsi
	call _type_spec
	pop rsi
call.end427:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + arg_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then166
	jmp .Lif.end166
.Lif.then166:
	lea rax, qword ptr [rip + .LC129]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else428
	call _consume
	jmp call.end428
call.else428:
	push rsi
	call _consume
	pop rsi
call.end428:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then166
	jmp .Lif.end166
.Lif.then166:
	lea rax, QWORD PTR [rip + arg_type@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + args@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + arg@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + arg_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else429
	call _new_arg
	jmp call.end429
call.else429:
	push rsi
	call _new_arg
	pop rsi
call.end429:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + args@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + args@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + arg@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + arg_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else430
	call _make_lvar
	jmp call.end430
call.else430:
	push rsi
	call _make_lvar
	pop rsi
call.end430:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16108]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else431
	call _add_var
	jmp call.end431
call.else431:
	push rsi
	call _add_var
	pop rsi
call.end431:
	push rax
	lea rax, qword ptr [rip + .LC130]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else432
	call _expect
	jmp call.end432
call.else432:
	push rsi
	call _expect
	pop rsi
call.end432:
	push rax
	jmp .Lwhile.end5
.Lif.end166:
	jmp .Lwhile.end5
.Lif.end167:
	lea rax, QWORD PTR [rip + arg@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else433
	call _consume_ident
	jmp call.end433
call.else433:
	push rsi
	call _consume_ident
	pop rsi
call.end433:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + arg@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then168
	jmp .Lif.end168
.Lif.then168:
	lea rax, [rbp-8072]
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
	lea rax, qword ptr [rip + .LC131]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else434
	call _error_at
	jmp call.end434
call.else434:
	push rsi
	call _error_at
	pop rsi
call.end434:
	push rax
	jmp .Lwhile.end5
	pop rsi
.Lif.end168:
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + args@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + arg@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + arg_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else435
	call _new_arg
	jmp call.end435
call.else435:
	push rsi
	call _new_arg
	pop rsi
call.end435:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + args@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + args@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + arg@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + arg_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else436
	call _make_lvar
	jmp call.end436
call.else436:
	push rsi
	call _make_lvar
	pop rsi
call.end436:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16108]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lvar@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else437
	call _add_var
	jmp call.end437
call.else437:
	push rsi
	call _add_var
	pop rsi
call.end437:
	push rax
	lea rax, qword ptr [rip + .LC132]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else438
	call _consume
	jmp call.end438
call.else438:
	push rsi
	call _consume
	pop rsi
call.end438:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then169
	jmp .Lif.end169
.Lif.then169:
	lea rax, qword ptr [rip + .LC133]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else439
	call _expect
	jmp call.end439
call.else439:
	push rsi
	call _expect
	pop rsi
call.end439:
	push rax
	jmp .Lwhile.end5
.Lif.end169:
	jmp .Lwhile.loop5
.Lwhile.end5:
	lea rax, qword ptr [rip + .LC134]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else440
	call _consume
	jmp call.end440
call.else440:
	push rsi
	call _consume
	pop rsi
call.end440:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then170
	jmp .Lif.else170
.Lif.then170:
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	lea rax, [rbp-16132]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + ident_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	lea rax, QWORD PTR [rip + arg_first@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne call.else441
	call _new_func
	jmp call.end441
call.else441:
	push rsi
	call _new_func
	pop rsi
call.end441:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16132]
	push rax
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16108]
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
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, DWORD PTR [rip + ND_DECL@GOTPCREL]
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
	lea rax, [rax-280]
	push rax
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end170
.Lif.else170:
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	lea rax, [rbp-16124]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + ident_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	lea rax, QWORD PTR [rip + arg_first@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne call.else442
	call _new_func
	jmp call.end442
call.else442:
	push rsi
	call _new_func
	pop rsi
call.end442:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16124]
	push rax
	lea rax, QWORD PTR [rip + func@GOTPCREL]
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
	lea rax, [rax-0]
	push rax
	lea rax, DWORD PTR [rip + ND_DEF@GOTPCREL]
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
	mov rax, 0
	test rsp, 15
	jne call.else443
	call _stmts
	jmp call.end443
call.else443:
	push rsi
	call _stmts
	pop rsi
call.end443:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16108]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-28]
	push rax
	lea rax, [rbp-16084]
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
	lea rax, [rax-280]
	push rax
	lea rax, QWORD PTR [rip + func@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end170
.Lif.end170:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end171:
.Lif.end172:
.Lif.end173:
	lea rax, [rbp-8072]
	push rax
	lea rax, QWORD PTR [rip + backup@GOTPCREL]
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
	pop rbp
	ret
_move_type:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov  [rbp-0], rdi
	mov  [rbp-8], rsi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, QWORD PTR [rip + rtype@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov rax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-32]
	push rax
	lea rax, QWORD PTR [rip + rtype@GOTPCREL]
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
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-40]
	push rax
	lea rax, QWORD PTR [rip + rtype@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-48]
	push rax
	lea rax, QWORD PTR [rip + rtype@GOTPCREL]
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
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-52]
	push rax
	lea rax, QWORD PTR [rip + rtype@GOTPCREL]
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
	pop rsi
_struct_decl:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC135]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else444
	call _consume
	jmp call.end444
call.else444:
	push rsi
	call _consume
	pop rsi
call.end444:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then174
	jmp .Lif.end174
.Lif.then174:
	mov rax, 0
	test rsp, 15
	jne call.else445
	call _consume_ident
	jmp call.end445
call.else445:
	push rsi
	call _consume_ident
	pop rsi
call.end445:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + id@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else446
	call _find_aggr
	jmp call.end446
call.else446:
	push rsi
	call _find_aggr
	pop rsi
call.end446:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then174
	jmp .Lif.end174
.Lif.then174:
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	push 1
	pop rdi
	push 32
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else447
	call _calloc
	jmp call.end447
call.else447:
	push rsi
	call _calloc
	pop rsi
call.end447:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end174:
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-12]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else448
	call _new_vector
	jmp call.end448
call.else448:
	push rsi
	call _new_vector
	pop rsi
call.end448:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + id@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then175
	jmp .Lif.end175
.Lif.then175:
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, QWORD PTR [rip + id@GOTPCREL]
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
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-8]
	push rax
	lea rax, QWORD PTR [rip + id@GOTPCREL]
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
	pop rsi
.Lif.end175:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + size@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else449
	call _struct_type
	jmp call.end449
call.else449:
	push rsi
	call _struct_type
	pop rsi
call.end449:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_STRUCT@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + id@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else450
	call _new_node_s
	jmp call.end450
call.else450:
	push rsi
	call _new_node_s
	pop rsi
call.end450:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC136]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else451
	call _consume
	jmp call.end451
call.else451:
	push rsi
	call _consume
	pop rsi
call.end451:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then176
	jmp .Lif.end176
.Lif.then176:
	lea rax, [rbp-16108]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16108]
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
	mov rax, 2
	test rsp, 15
	jne call.else452
	call _add_node
	jmp call.end452
call.else452:
	push rsi
	call _add_node
	pop rsi
call.end452:
	push rax
	lea rax, [rbp-16108]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lwhile.loop6:
	push 1
	cmp rax, 0
	je .Lwhile.end6
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	push 1
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else453
	call _variable_decl
	jmp call.end453
call.else453:
	push rsi
	call _variable_decl
	pop rsi
call.end453:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then176
	jmp .Lif.end176
.Lif.then176:
	jmp .Lwhile.end6
.Lif.end176:
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
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
	pop rdi
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else454
	call _push_back
	jmp call.end454
call.else454:
	push rsi
	call _push_back
	pop rsi
call.end454:
	push rax
	lea rax, DWORD PTR [rip + size@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + size@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, QWORD PTR [rip + var@GOTPCREL]
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
	lea rax, [rax-48]
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
	jmp .Lwhile.loop6
.Lwhile.end6:
	lea rax, qword ptr [rip + .LC137]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else455
	call _expect
	jmp call.end455
call.else455:
	push rsi
	call _expect
	pop rsi
call.end455:
	push rax
	lea rax, [rbp-16108]
	push rax
	lea rax, QWORD PTR [rip + prev_scope@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, DWORD PTR [rip + size@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + size@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 7
	pop rbx
	pop rax
	add rax, rbx
	push rax
	push 8
	pop rbx
	pop rax
	xor rdx, rdx
	div rbx
	push rax
	push 8
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-20]
	push rax
	lea rax, DWORD PTR [rip + size@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + size@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else456
	call _struct_type
	jmp call.end456
call.else456:
	push rsi
	call _struct_type
	pop rsi
call.end456:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop24:
	lea rax, DWORD PTR [rip + i@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-16148]
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
	je .Lfor.end24
	lea rax, [rbp-16148]
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
	lea rax, DWORD PTR [rip + i@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
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
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
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
	lea rax, [rax-40]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	(null) .Lif.then177
	jmp .Lif.end177
.Lif.then177:
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
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
	lea rax, [rax-40]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
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
	lea rax, QWORD PTR [rip + id@GOTPCREL]
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
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
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
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else457
	call _strncmp
	jmp call.end457
call.else457:
	push rsi
	call _strncmp
	pop rsi
call.end457:
	push rax
	push 0
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
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
	lea rax, QWORD PTR [rip + id@GOTPCREL]
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
	sete al
	movzx rax, al
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	(null) .Lif.then177
	jmp .Lif.end177
.Lif.then177:
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
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
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else458
	call _move_type
	jmp call.end458
call.else458:
	push rsi
	call _move_type
	pop rsi
call.end458:
	push rax
	pop rsi
.Lif.end177:
.Lif.end178:
.Lfor.inc24:
	lea rax, DWORD PTR [rip + i@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + i@GOTPCREL]
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
	jmp .Lfor.loop24
.Lfor.end24:
	lea rax, [rbp-16156]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else459
	call _push_back
	jmp call.end459
call.else459:
	push rsi
	call _push_back
	pop rsi
call.end459:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + type@GOTPCREL]
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
	pop rbp
	ret
	pop rsi
.Lif.end179:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end180:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_enum_decl:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC138]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else460
	call _consume
	jmp call.end460
call.else460:
	push rsi
	call _consume
	pop rsi
call.end460:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then181
	jmp .Lif.end181
.Lif.then181:
	mov rax, 0
	test rsp, 15
	jne call.else461
	call _consume_ident
	jmp call.end461
call.else461:
	push rsi
	call _consume_ident
	pop rsi
call.end461:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC139]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else462
	call _expect
	jmp call.end462
call.else462:
	push rsi
	call _expect
	pop rsi
call.end462:
	push rax
	lea rax, QWORD PTR [rip + id@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else463
	call _find_aggr
	jmp call.end463
call.else463:
	push rsi
	call _find_aggr
	pop rsi
call.end463:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then181
	jmp .Lif.end181
.Lif.then181:
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	push 1
	pop rdi
	push 32
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else464
	call _calloc
	jmp call.end464
call.else464:
	push rsi
	call _calloc
	pop rsi
call.end464:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end181:
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-12]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else465
	call _new_vector
	jmp call.end465
call.else465:
	push rsi
	call _new_vector
	pop rsi
call.end465:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + id@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then182
	jmp .Lif.end182
.Lif.then182:
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, QWORD PTR [rip + id@GOTPCREL]
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
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-8]
	push rax
	lea rax, QWORD PTR [rip + id@GOTPCREL]
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
.Lif.end182:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	mov rax, 0
	test rsp, 15
	jne call.else466
	call _int_type
	jmp call.end466
call.else466:
	push rsi
	call _int_type
	pop rsi
call.end466:
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
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + size@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else467
	call _enum_type
	jmp call.end467
call.else467:
	push rsi
	call _enum_type
	pop rsi
call.end467:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-0]
	push rax
	lea rax, DWORD PTR [rip + ND_ENUM@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + id@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else468
	call _new_node_s
	jmp call.end468
call.else468:
	push rsi
	call _new_node_s
	pop rsi
call.end468:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16108]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16108]
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
	mov rax, 2
	test rsp, 15
	jne call.else469
	call _add_node
	jmp call.end469
call.else469:
	push rsi
	call _add_node
	pop rsi
call.end469:
	push rax
	lea rax, [rbp-16108]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	push 1
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lwhile.loop7:
	lea rax, qword ptr [rip + .LC140]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else470
	call _consume
	jmp call.end470
call.else470:
	push rsi
	call _consume
	pop rsi
call.end470:
	push rax
	pop rax
	not eax
	push rax
	cmp rax, 0
	je .Lwhile.end7
	lea rax, QWORD PTR [rip + enumerator@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else471
	call _consume_ident
	jmp call.end471
call.else471:
	push rsi
	call _consume_ident
	pop rsi
call.end471:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + enumerator@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then183
	jmp .Lif.end183
.Lif.then183:
	lea rax, [rbp-8072]
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
	lea rax, qword ptr [rip + .LC141]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else472
	call _error_at
	jmp call.end472
call.else472:
	push rsi
	call _error_at
	pop rsi
call.end472:
	push rax
	jmp .Lwhile.end7
.Lif.end183:
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + enumerator@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + elem_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else473
	call _make_lvar
	jmp call.end473
call.else473:
	push rsi
	call _make_lvar
	pop rsi
call.end473:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16108]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else474
	call _add_var
	jmp call.end474
call.else474:
	push rsi
	call _add_var
	pop rsi
call.end474:
	push rax
	lea rax, QWORD PTR [rip + lhs@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_VARDECL@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + enumerator@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + elem_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else475
	call _new_node_s
	jmp call.end475
call.else475:
	push rsi
	call _new_node_s
	pop rsi
call.end475:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + lhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-272]
	push rax
	lea rax, QWORD PTR [rip + var@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
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
	pop rdi
	lea rax, QWORD PTR [rip + lhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else476
	call _push_back
	jmp call.end476
call.else476:
	push rsi
	call _push_back
	pop rsi
call.end476:
	push rax
	lea rax, DWORD PTR [rip + size@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + size@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, QWORD PTR [rip + elem_type@GOTPCREL]
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
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + lhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC142]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else477
	call _consume
	jmp call.end477
call.else477:
	push rsi
	call _consume
	pop rsi
call.end477:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then184
	jmp .Lif.end184
.Lif.then184:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else478
	call _initializer
	jmp call.end478
call.else478:
	push rsi
	call _initializer
	pop rsi
call.end478:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else479
	call _new_binary_node
	jmp call.end479
call.else479:
	push rsi
	call _new_binary_node
	pop rsi
call.end479:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end184:
	lea rax, BYTE PTR [rip + first@GOTPCREL]
	push rax
	pop rax
	movsx eax, BYTE PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then185
	jmp .Lif.else185
.Lif.then185:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then185
	jmp .Lif.else185
.Lif.then185:
	lea rax, QWORD PTR [rip + elem_type@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
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
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + elem_type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else480
	call _new_binary_node
	jmp call.end480
call.else480:
	push rsi
	call _new_binary_node
	pop rsi
call.end480:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end185
.Lif.else185:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	push 0
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else481
	call _new_node_num
	jmp call.end481
call.else481:
	push rsi
	call _new_node_num
	pop rsi
call.end481:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else482
	call _new_binary_node
	jmp call.end482
call.else482:
	push rsi
	call _new_binary_node
	pop rsi
call.end482:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end185
.Lif.end185:
	lea rax, BYTE PTR [rip + first@GOTPCREL]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	jmp .Lif.end186
.Lif.else186:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then186
	jmp .Lif.end186
.Lif.then186:
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	push 1
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else483
	call _new_node_num
	jmp call.end483
call.else483:
	push rsi
	call _new_node_num
	pop rsi
call.end483:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + rhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else484
	call _new_binary_node
	jmp call.end484
call.else484:
	push rsi
	call _new_binary_node
	pop rsi
call.end484:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + ND_ASSIGN@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + lhs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + node@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else485
	call _new_binary_node
	jmp call.end485
call.else485:
	push rsi
	call _new_binary_node
	pop rsi
call.end485:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lif.end186:
	jmp .Lif.end187
.Lif.end187:
	lea rax, qword ptr [rip + .LC143]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else486
	call _consume
	jmp call.end486
call.else486:
	push rsi
	call _consume
	pop rsi
call.end486:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then188
	jmp .Lif.end188
.Lif.then188:
	lea rax, qword ptr [rip + .LC144]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else487
	call _expect
	jmp call.end487
call.else487:
	push rsi
	call _expect
	pop rsi
call.end487:
	push rax
	jmp .Lwhile.end7
	pop rsi
.Lif.end188:
	jmp .Lwhile.loop7
.Lwhile.end7:
	lea rax, [rbp-16108]
	push rax
	lea rax, QWORD PTR [rip + prev_scope@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, DWORD PTR [rip + size@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + size@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 7
	pop rbx
	pop rax
	add rax, rbx
	push rax
	push 8
	pop rbx
	pop rax
	xor rdx, rdx
	div rbx
	push rax
	push 8
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-20]
	push rax
	lea rax, DWORD PTR [rip + size@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + size@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else488
	call _enum_type
	jmp call.end488
call.else488:
	push rsi
	call _enum_type
	pop rsi
call.end488:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop25:
	lea rax, DWORD PTR [rip + i@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-16148]
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
	je .Lfor.end25
	lea rax, [rbp-16148]
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
	lea rax, DWORD PTR [rip + i@GOTPCREL]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
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
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
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
	lea rax, [rax-40]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	(null) .Lif.then189
	jmp .Lif.end189
.Lif.then189:
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
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
	lea rax, [rax-40]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + id@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
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
	lea rax, QWORD PTR [rip + id@GOTPCREL]
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
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
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
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else489
	call _strncmp
	jmp call.end489
call.else489:
	push rsi
	call _strncmp
	pop rsi
call.end489:
	push rax
	push 0
	pop rbx
	pop rax
	cmp rax, rbx
	sete al
	movzx rax, al
	push rax
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
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
	lea rax, QWORD PTR [rip + id@GOTPCREL]
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
	sete al
	movzx rax, al
	push rax
	pop rbx
	pop rax
	and eax, ebx
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	(null) .Lif.then189
	jmp .Lif.end189
.Lif.then189:
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
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
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else490
	call _move_type
	jmp call.end490
call.else490:
	push rsi
	call _move_type
	pop rsi
call.end490:
	push rax
.Lif.end189:
.Lif.end190:
.Lfor.inc25:
	lea rax, DWORD PTR [rip + i@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + i@GOTPCREL]
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
	jmp .Lfor.loop25
.Lfor.end25:
	lea rax, [rbp-16156]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + aggr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else491
	call _push_back
	jmp call.end491
call.else491:
	push rsi
	call _push_back
	pop rsi
call.end491:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-252]
	push rax
	lea rax, QWORD PTR [rip + type@GOTPCREL]
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
	pop rbp
	ret
	pop rsi
.Lif.end191:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
_aggregate_decl:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-0]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else492
	call _struct_decl
	jmp call.end492
call.else492:
	push rsi
	call _struct_decl
	pop rsi
call.end492:
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
	cmp rax, 0
	je .Lif.then192
	jmp .Lif.end192
.Lif.then192:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end192:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else493
	call _enum_decl
	jmp call.end493
call.else493:
	push rsi
	call _enum_decl
	pop rsi
call.end493:
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
	cmp rax, 0
	je .Lif.then193
	jmp .Lif.end193
.Lif.then193:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end193:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	pop rsi
_typedef_decl:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, qword ptr [rip + .LC145]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else494
	call _consume
	jmp call.end494
call.else494:
	push rsi
	call _consume
	pop rsi
call.end494:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then194
	jmp .Lif.end194
.Lif.then194:
	lea rax, QWORD PTR [rip + backup@GOTPCREL]
	push rax
	lea rax, [rbp-8072]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else495
	call _type_spec
	jmp call.end495
call.else495:
	push rsi
	call _type_spec
	pop rsi
call.end495:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then194
	jmp .Lif.else194
.Lif.then194:
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else496
	call _consume_ident
	jmp call.end496
call.else496:
	push rsi
	call _consume_ident
	pop rsi
call.end496:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC146]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else497
	call _expect
	jmp call.end497
call.else497:
	push rsi
	call _expect
	pop rsi
call.end497:
	push rax
	push 1
	pop rdi
	push 24
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else498
	call _calloc
	jmp call.end498
call.else498:
	push rsi
	call _calloc
	pop rsi
call.end498:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	lea rax, QWORD PTR [rip + type@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-8]
	push rax
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-16]
	push rax
	lea rax, QWORD PTR [rip + tok@GOTPCREL]
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
	lea rax, [rbp-16148]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else499
	call _push_back
	jmp call.end499
call.else499:
	push rsi
	call _push_back
	pop rsi
call.end499:
	push rax
	lea rax, QWORD PTR [rip + tydef@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
	jmp .Lif.end194
.Lif.else194:
	lea rax, [rbp-8072]
	push rax
	lea rax, QWORD PTR [rip + backup@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lif.end194
.Lif.end194:
.Lif.end195:
	push 0
	pop rbp
	ret
_include_file:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, qword ptr [rip + .LC147]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else500
	call _consume
	jmp call.end500
call.else500:
	push rsi
	call _consume
	pop rsi
call.end500:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then196
	jmp .Lif.end196
.Lif.then196:
	lea rax, qword ptr [rip + .LC148]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else501
	call _consume
	jmp call.end501
call.else501:
	push rsi
	call _consume
	pop rsi
call.end501:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then196
	jmp .Lif.end196
.Lif.then196:
	lea rax, qword ptr [rip + .LC149]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else502
	call _consume
	jmp call.end502
call.else502:
	push rsi
	call _consume
	pop rsi
call.end502:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then196
	jmp .Lif.else196
.Lif.then196:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else503
	call _consume_ident
	jmp call.end503
call.else503:
	push rsi
	call _consume_ident
	pop rsi
call.end503:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + str@GOTPCREL]
	push rax
	pop rdi
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
	pop rsi
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
	pop rdx
	mov rax, 3
	test rsp, 15
	jne call.else504
	call _strncpy
	jmp call.end504
call.else504:
	push rsi
	call _strncpy
	pop rsi
call.end504:
	push rax
	lea rax, QWORD PTR [rip + str@GOTPCREL]
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
	push 1
	pop rbx
	pop rax
	mul rbx
	push rax
	pop rbx
	pop rax
	add rax, rbx
	push rax
	lea rax, qword ptr [rip + .LC150]
	push rax
	pop rbx
	pop rax
	mov BYTE PTR [rax], ebx
	lea rax, [rbp-8072]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + str@GOTPCREL]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else505
	call _compile_at
	jmp call.end505
call.else505:
	push rsi
	call _compile_at
	pop rsi
call.end505:
	push rax
	lea rax, [rbp-8072]
	push rax
	lea rax, QWORD PTR [rip + kari@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC151]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else506
	call _expect
	jmp call.end506
call.else506:
	push rsi
	call _expect
	pop rsi
call.end506:
	push rax
	pop rsi
	jmp .Lif.end196
.Lif.else196:
	lea rax, qword ptr [rip + .LC152]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else507
	call _consume
	jmp call.end507
call.else507:
	push rsi
	call _consume
	pop rsi
call.end507:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then196
	jmp .Lif.end196
.Lif.then196:
	mov rax, 0
	test rsp, 15
	jne call.else508
	call _consume_ident
	jmp call.end508
call.else508:
	push rsi
	call _consume_ident
	pop rsi
call.end508:
	push rax
	lea rax, qword ptr [rip + .LC153]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else509
	call _consume
	jmp call.end509
call.else509:
	push rsi
	call _consume
	pop rsi
call.end509:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then196
	jmp .Lif.end196
.Lif.then196:
	mov rax, 0
	test rsp, 15
	jne call.else510
	call _consume_ident
	jmp call.end510
call.else510:
	push rsi
	call _consume_ident
	pop rsi
call.end510:
	push rax
.Lif.end196:
	lea rax, qword ptr [rip + .LC154]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else511
	call _expect
	jmp call.end511
call.else511:
	push rsi
	call _expect
	pop rsi
call.end511:
	push rax
	pop rsi
.Lif.end197:
	jmp .Lif.end198
.Lif.end198:
	push 1
	pop rbp
	ret
.Lif.end199:
.Lif.end200:
	push 0
	pop rbp
	ret
_global:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	mov rax, 0
	test rsp, 15
	jne call.else512
	call _include_file
	jmp call.end512
call.else512:
	push rsi
	call _include_file
	pop rsi
call.end512:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then201
	jmp .Lif.end201
.Lif.then201:
	push 0
	pop rbp
	ret
.Lif.end201:
	mov rax, 0
	test rsp, 15
	jne call.else513
	call _typedef_decl
	jmp call.end513
call.else513:
	push rsi
	call _typedef_decl
	pop rsi
call.end513:
	push rax
	pop rax
	cmp rax, 0
	je .Lif.then202
	jmp .Lif.end202
.Lif.then202:
	push 0
	pop rbp
	ret
.Lif.end202:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else514
	call _aggregate_decl
	jmp call.end514
call.else514:
	push rsi
	call _aggregate_decl
	pop rsi
call.end514:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC155]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else515
	call _consume
	jmp call.end515
call.else515:
	push rsi
	call _consume
	pop rsi
call.end515:
	push rax
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	(null) .Lif.then203
	jmp .Lif.end203
.Lif.then203:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end203:
	lea rax, [rbp-0]
	push rax
	push 1
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else516
	call _variable_decl
	jmp call.end516
call.else516:
	push rsi
	call _variable_decl
	pop rsi
call.end516:
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
	cmp rax, 0
	je .Lif.then204
	jmp .Lif.end204
.Lif.then204:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end204:
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else517
	call _func_decl_or_def
	jmp call.end517
call.else517:
	push rsi
	call _func_decl_or_def
	pop rsi
call.end517:
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
	cmp rax, 0
	je .Lif.then205
	jmp .Lif.end205
.Lif.then205:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lif.end205:
	mov rax, 0
	test rsp, 15
	jne call.else518
	call _stmt
	jmp call.end518
call.else518:
	push rsi
	call _stmt
	pop rsi
call.end518:
	push rax
	pop rbp
	ret
	pop rsi
_program:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	lea rax, [rbp-16140]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else519
	call _new_vector
	jmp call.end519
call.else519:
	push rsi
	call _new_vector
	pop rsi
call.end519:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16092]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else520
	call _init_variable_list
	jmp call.end520
call.else520:
	push rsi
	call _init_variable_list
	pop rsi
call.end520:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
.Lwhile.loop8:
	mov rax, 0
	test rsp, 15
	jne call.else521
	call _at_eof
	jmp call.end521
call.else521:
	push rsi
	call _at_eof
	pop rsi
call.end521:
	push rax
	pop rax
	not eax
	push rax
	cmp rax, 0
	je .Lwhile.end8
	lea rax, [rbp-0]
	push rax
	mov rax, 0
	test rsp, 15
	jne call.else522
	call _global
	jmp call.end522
call.else522:
	push rsi
	call _global
	pop rsi
call.end522:
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
	cmp rax, 0
	je .Lif.then206
	jmp .Lif.end206
.Lif.then206:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne call.else523
	call _add_code
	jmp call.end523
call.else523:
	push rsi
	call _add_code
	pop rsi
call.end523:
	push rax
.Lif.end206:
	pop rsi
	jmp .Lwhile.loop8
.Lwhile.end8:
	lea rax, [rbp-16100]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	push 0
	pop rsi
	mov rax, 2
	test rsp, 15
	jne call.else524
	call _print_variable_scope
	jmp call.end524
call.else524:
	push rsi
	call _print_variable_scope
	pop rsi
call.end524:
	push rax
	lea rax, [rbp-8080]
	push rax
	lea rax, [rbp-16080]
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
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	push 0
	pop rbp
	ret
	pop rsi
.LC0:
	.string "void"
.LC1:
	.string "bool"
.LC2:
	.string "char"
.LC3:
	.string "short"
.LC4:
	.string "int"
.LC5:
	.string "long"
.LC6:
	.string "float"
.LC7:
	.string "signed"
.LC8:
	.string "unsigned"
.LC9:
	.string "struct"
.LC10:
	.string "*"
.LC11:
	.string "("
.LC12:
	.string "関数がありません"
.LC13:
	.string ")"
.LC14:
	.string "関数の引数が','で終わっています"
.LC15:
	.string ","
.LC16:
	.string ")"
.LC17:
	.string "NULL"
.LC18:
	.string "false"
.LC19:
	.string "true"
.LC20:
	.string "その変数は宣言されていません"
.LC21:
	.string "("
.LC22:
	.string ")"
.LC23:
	.string "\""
.LC24:
	.string "\""
.LC25:
	.string "\'"
.LC26:
	.string "\'"
.LC27:
	.string "break"
.LC28:
	.string "continue"
.LC29:
	.string "."
.LC30:
	.string "構造体のドット演算子のrhsが存在しません"
.LC31:
	.string "->"
.LC32:
	.string "構造体のアロー演算子のrhsが存在しません"
.LC33:
	.string "["
.LC34:
	.string "]"
.LC35:
	.string "++"
.LC36:
	.string "--"
.LC37:
	.string "sizeof"
.LC38:
	.string "("
.LC39:
	.string ")"
.LC40:
	.string "("
.LC41:
	.string ")"
.LC42:
	.string "+"
.LC43:
	.string "-"
.LC44:
	.string "++"
.LC45:
	.string "--"
.LC46:
	.string "!"
.LC47:
	.string "~"
.LC48:
	.string "*"
.LC49:
	.string "型がありません\n"
.LC50:
	.string "error: indirection requires pointer operand ('int' invalid)"
.LC51:
	.string "&"
.LC52:
	.string "*"
.LC53:
	.string "/"
.LC54:
	.string "%"
.LC55:
	.string "+"
.LC56:
	.string "-"
.LC57:
	.string "<<"
.LC58:
	.string ">>"
.LC59:
	.string "<"
.LC60:
	.string "="
.LC61:
	.string ">"
.LC62:
	.string "="
.LC63:
	.string "=="
.LC64:
	.string "!="
.LC65:
	.string "|"
.LC66:
	.string "^"
.LC67:
	.string "&"
.LC68:
	.string "&&"
.LC69:
	.string "||"
.LC70:
	.string "."
.LC71:
	.string "構造体のドット演算子のrhsが存在しません"
.LC72:
	.string "->"
.LC73:
	.string "構造体のアロー演算子のrhsが存在しません"
.LC74:
	.string "*"
.LC75:
	.string "&"
.LC76:
	.string "["
.LC77:
	.string "]"
.LC78:
	.string "{"
.LC79:
	.string ","
.LC80:
	.string "}"
.LC81:
	.string "+="
.LC82:
	.string "-="
.LC83:
	.string "*="
.LC84:
	.string "/="
.LC85:
	.string "%="
.LC86:
	.string "<<="
.LC87:
	.string ">>="
.LC88:
	.string "&="
.LC89:
	.string "^="
.LC90:
	.string "|="
.LC91:
	.string "="
.LC92:
	.string "case"
.LC93:
	.string ":"
.LC94:
	.string "case"
.LC95:
	.string "}"
.LC96:
	.string "default"
.LC97:
	.string ":"
.LC98:
	.string "case"
.LC99:
	.string "}"
.LC100:
	.string "return"
.LC101:
	.string ";"
.LC102:
	.string "if"
.LC103:
	.string "("
.LC104:
	.string ")"
.LC105:
	.string "else"
.LC106:
	.string "while"
.LC107:
	.string "("
.LC108:
	.string ")"
.LC109:
	.string "for"
.LC110:
	.string "("
.LC111:
	.string ";"
.LC112:
	.string ";"
.LC113:
	.string ")"
.LC114:
	.string ";"
.LC115:
	.string "{"
.LC116:
	.string "}"
.LC117:
	.string "extern"
.LC118:
	.string "*"
.LC119:
	.string "("
.LC120:
	.string "["
.LC121:
	.string "]"
.LC122:
	.string "="
.LC123:
	.string "="
.LC124:
	.string ","
.LC125:
	.string ";"
.LC126:
	.string "extern"
.LC127:
	.string "("
.LC128:
	.string ")"
.LC129:
	.string "..."
.LC130:
	.string ")"
.LC131:
	.string "関数の引数が','で終わっています"
.LC132:
	.string ","
.LC133:
	.string ")"
.LC134:
	.string ";"
.LC135:
	.string "struct"
.LC136:
	.string "{"
.LC137:
	.string "}"
.LC138:
	.string "enum"
.LC139:
	.string "{"
.LC140:
	.string "}"
.LC141:
	.string "enumが','で終わっています"
.LC142:
	.string "="
.LC143:
	.string ","
.LC144:
	.string "}"
.LC145:
	.string "typedef"
.LC146:
	.string ";"
.LC147:
	.string "#"
.LC148:
	.string "include"
.LC149:
	.string "\""
.LC150:
	.string "\0"
.LC151:
	.string "\""
.LC152:
	.string "<"
.LC153:
	.string "."
.LC154:
	.string ">"
.LC155:
	.string ";"
