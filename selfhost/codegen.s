.intel_syntax noprefix
.extern _new_node_num, _new_node, _print_variable_scope, _cu, _exit, _strerror, _vfprintf, _fprintf, _snprintf, _sprintf, _ftell, _fclose, _fread, _fseek, _fopen, _isdigit, _isspace, _printf, _memcmp, _strtol, _strlen, _strncpy, _strncmp, _realloc, _malloc, _calloc, _error_at, _error, _print_token, _preprocessor, _gen_funcs, _gen_extern, _search_hash, _new_hash, _new_node_num, _new_node_s, _consume_ident, _is_reserved, _new_token, _new_binary_node, _aggregate_decl, _print_all, _compile_at, _read_file, _print_lvar, _print_type, _get_name, _analyse, _analyse_pre, _gen_pre, _runtest, _push_back, _new_vector, _gen, _program, _tokenize, _expect
.global _gen, _gen_cond, _gen_assign, _gen_mov, _gen_lvalue, _gen_type, _gen_pre, _gen_pop, _gen_push, _gen_funcs, _gen_extern, _gen_strings, _gen_global, _gen_global_ptr, _gen_global_ptr_sub, _gen_global_array, _gen_global_string, _gen_global_asciz, _gen_global_ascii, _gen_global_char, _gen_global_int, _gen_global_zero, _get_name, _node_kind_print
	.globl if_cnt
if_cnt:
	.long 0
	.globl while_cnt
while_cnt:
	.long 0
	.globl for_cnt
for_cnt:
	.long 0
	.globl switch_cnt
switch_cnt:
	.long 0
	.globl call_cnt
call_cnt:
	.long 0
	.globl rsp
rsp:
	.long 0
	.globl kari
kari:
	.zero 100
	.globl cur_loop
cur_loop:
	.zero 8
	.globl regs64
regs64.1:
	.asciz "rax"
regs64.2:
	.asciz "rbx"
regs64.3:
	.asciz "rcx"
regs64.4:
	.asciz "rdx"
regs64.5:
	.asciz "rsi"
regs64.6:
	.asciz "rdi"
regs64.7:
	.asciz "rbp"
regs64.8:
	.asciz "rsp"
regs64.9:
	.asciz "r8"
regs64.10:
	.asciz "r9"
regs64.11:
	.asciz "r10"
regs64.12:
	.asciz "r11"
regs64.13:
	.asciz "r12"
regs64.14:
	.asciz "r13"
regs64.15:
	.asciz "r14"
regs64.16:
	.asciz "r15"
	.globl regs64
regs64:
	.quad regs64.1
	.quad regs64.2
	.quad regs64.3
	.quad regs64.4
	.quad regs64.5
	.quad regs64.6
	.quad regs64.7
	.quad regs64.8
	.quad regs64.9
	.quad regs64.10
	.quad regs64.11
	.quad regs64.12
	.quad regs64.13
	.quad regs64.14
	.quad regs64.15
	.quad regs64.16
	.globl regs32
regs32.1:
	.asciz "eax"
regs32.2:
	.asciz "ebx"
regs32.3:
	.asciz "ecx"
regs32.4:
	.asciz "edx"
regs32.5:
	.asciz "esi"
regs32.6:
	.asciz "edi"
regs32.7:
	.asciz "ebp"
regs32.8:
	.asciz "esp"
regs32.9:
	.asciz "r8d"
regs32.10:
	.asciz "r9d"
regs32.11:
	.asciz "r10d"
regs32.12:
	.asciz "r11d"
regs32.13:
	.asciz "r12d"
regs32.14:
	.asciz "r13d"
regs32.15:
	.asciz "r14d"
regs32.16:
	.asciz "r15d"
	.globl regs32
regs32:
	.quad regs32.1
	.quad regs32.2
	.quad regs32.3
	.quad regs32.4
	.quad regs32.5
	.quad regs32.6
	.quad regs32.7
	.quad regs32.8
	.quad regs32.9
	.quad regs32.10
	.quad regs32.11
	.quad regs32.12
	.quad regs32.13
	.quad regs32.14
	.quad regs32.15
	.quad regs32.16
	.globl regs16
regs16.1:
	.asciz "ax"
regs16.2:
	.asciz "bx"
regs16.3:
	.asciz "cx"
regs16.4:
	.asciz "dx"
regs16.5:
	.asciz "si"
regs16.6:
	.asciz "di"
regs16.7:
	.asciz "bp"
regs16.8:
	.asciz "sp"
regs16.9:
	.asciz "r8w"
regs16.10:
	.asciz "r9w"
regs16.11:
	.asciz "r10w"
regs16.12:
	.asciz "r11w"
regs16.13:
	.asciz "r12w"
regs16.14:
	.asciz "r13w"
regs16.15:
	.asciz "r14w"
regs16.16:
	.asciz "r15w"
	.globl regs16
regs16:
	.quad regs16.1
	.quad regs16.2
	.quad regs16.3
	.quad regs16.4
	.quad regs16.5
	.quad regs16.6
	.quad regs16.7
	.quad regs16.8
	.quad regs16.9
	.quad regs16.10
	.quad regs16.11
	.quad regs16.12
	.quad regs16.13
	.quad regs16.14
	.quad regs16.15
	.quad regs16.16
	.globl regs8
regs8.1:
	.asciz "al"
regs8.2:
	.asciz "bl"
regs8.3:
	.asciz "cl"
regs8.4:
	.asciz "dl"
regs8.5:
	.asciz "sil"
regs8.6:
	.asciz "dil"
regs8.7:
	.asciz "bpl"
regs8.8:
	.asciz "spl"
regs8.9:
	.asciz "r8b"
regs8.10:
	.asciz "r9b"
regs8.11:
	.asciz "r10b"
regs8.12:
	.asciz "r11b"
regs8.13:
	.asciz "r12b"
regs8.14:
	.asciz "r13b"
regs8.15:
	.asciz "r14b"
regs8.16:
	.asciz "r15b"
	.globl regs8
regs8:
	.quad regs8.1
	.quad regs8.2
	.quad regs8.3
	.quad regs8.4
	.quad regs8.5
	.quad regs8.6
	.quad regs8.7
	.quad regs8.8
	.quad regs8.9
	.quad regs8.10
	.quad regs8.11
	.quad regs8.12
	.quad regs8.13
	.quad regs8.14
	.quad regs8.15
	.quad regs8.16
	.globl args_list
	.globl args_list
args_list:
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
	.long 0
_node_kind_print:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
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
	lea rax, [rbp-72]
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
	lea rax, [rbp-76]
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
	lea rax, [rbp-80]
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
	lea rax, [rbp-84]
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
	lea rax, [rbp-64]
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
	lea rax, [rbp-152]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch1.case6
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
	je .Lswitch1.case7
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
	je .Lswitch1.case8
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
	je .Lswitch1.case9
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
	je .Lswitch1.case10
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
	je .Lswitch1.case11
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
	je .Lswitch1.case12
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
	je .Lswitch1.case13
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
	je .Lswitch1.case14
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
	lea rax, [rbp-100]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch1.case15
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
	lea rax, [rbp-104]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch1.case16
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
	je .Lswitch1.case17
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
	je .Lswitch1.case18
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
	je .Lswitch1.case19
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
	je .Lswitch1.case20
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
	je .Lswitch1.case21
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
	je .Lswitch1.case22
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
	je .Lswitch1.case23
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
	je .Lswitch1.case24
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
	je .Lswitch1.case25
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
	je .Lswitch1.case26
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
	je .Lswitch1.case27
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
	je .Lswitch1.case28
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
	je .Lswitch1.case29
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
	je .Lswitch1.case30
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
	je .Lswitch1.case31
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
	je .Lswitch1.case32
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
	je .Lswitch1.case33
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
	je .Lswitch1.case34
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
	je .Lswitch1.case35
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
	je .Lswitch1.case36
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
	je .Lswitch1.case37
	jmp .Lswitch1.end
.Lswitch1.case0:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC64]
	push rax
	pop rsi
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
	pop rdx
	mov rax, 3
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
	jmp .Lswitch1.end
.Lswitch1.case1:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC65]
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
	jne .call.else1
	call _get_name
	jmp .call.end1
.call.else1:
	push rsi
	call _get_name
	pop rsi
.call.end1:
	push rax
	pop rdx
	mov rax, 3
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
	jmp .Lswitch1.end
.Lswitch1.case2:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC66]
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
	jne .call.else3
	call _get_name
	jmp .call.end3
.call.else3:
	push rsi
	call _get_name
	pop rsi
.call.end3:
	push rax
	pop rdx
	mov rax, 3
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
	jmp .Lswitch1.end
.Lswitch1.case3:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC67]
	push rax
	pop rsi
	mov rax, 2
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
	jmp .Lswitch1.end
.Lswitch1.case4:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC68]
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
	jmp .Lswitch1.end
.Lswitch1.case5:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC69]
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
	jne .call.else7
	call _print_type
	jmp .call.end7
.call.else7:
	push rsi
	call _print_type
	pop rsi
.call.end7:
	push rax
	pop rdx
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
	jne .call.else8
	call _get_name
	jmp .call.end8
.call.else8:
	push rsi
	call _get_name
	pop rsi
.call.end8:
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else9
	call _fprintf
	jmp .call.end9
.call.else9:
	push rsi
	call _fprintf
	pop rsi
.call.end9:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case6:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC70]
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
	jne .call.else10
	call _print_type
	jmp .call.end10
.call.else10:
	push rsi
	call _print_type
	pop rsi
.call.end10:
	push rax
	pop rdx
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
	jne .call.else11
	call _get_name
	jmp .call.end11
.call.else11:
	push rsi
	call _get_name
	pop rsi
.call.end11:
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else12
	call _fprintf
	jmp .call.end12
.call.else12:
	push rsi
	call _fprintf
	pop rsi
.call.end12:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case7:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC71]
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
	jne .call.else13
	call _print_type
	jmp .call.end13
.call.else13:
	push rsi
	call _print_type
	pop rsi
.call.end13:
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
	jmp .Lswitch1.end
.Lswitch1.case8:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC72]
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
	jmp .Lswitch1.end
.Lswitch1.case9:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
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
	jne .call.else16
	call _fprintf
	jmp .call.end16
.call.else16:
	push rsi
	call _fprintf
	pop rsi
.call.end16:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case10:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC74]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else17
	call _fprintf
	jmp .call.end17
.call.else17:
	push rsi
	call _fprintf
	pop rsi
.call.end17:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case11:
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
	jne .call.else18
	call _fprintf
	jmp .call.end18
.call.else18:
	push rsi
	call _fprintf
	pop rsi
.call.end18:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case12:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC76]
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
	jmp .Lswitch1.end
.Lswitch1.case13:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC77]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else20
	call _fprintf
	jmp .call.end20
.call.else20:
	push rsi
	call _fprintf
	pop rsi
.call.end20:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case14:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC78]
	push rax
	pop rsi
	mov rax, 2
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
	jmp .Lswitch1.end
.Lswitch1.case15:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC79]
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
	jmp .Lswitch1.end
.Lswitch1.case16:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC80]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else23
	call _fprintf
	jmp .call.end23
.call.else23:
	push rsi
	call _fprintf
	pop rsi
.call.end23:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case17:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC81]
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
	jmp .Lswitch1.end
.Lswitch1.case18:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC82]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else25
	call _fprintf
	jmp .call.end25
.call.else25:
	push rsi
	call _fprintf
	pop rsi
.call.end25:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case19:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC83]
	push rax
	pop rsi
	mov rax, 2
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
	jmp .Lswitch1.end
.Lswitch1.case20:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC84]
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
	jne .call.else27
	call _get_name
	jmp .call.end27
.call.else27:
	push rsi
	call _get_name
	pop rsi
.call.end27:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else28
	call _fprintf
	jmp .call.end28
.call.else28:
	push rsi
	call _fprintf
	pop rsi
.call.end28:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case21:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC85]
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
	jne .call.else29
	call _get_name
	jmp .call.end29
.call.else29:
	push rsi
	call _get_name
	pop rsi
.call.end29:
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
	jmp .Lswitch1.end
.Lswitch1.case22:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC86]
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
	mov rax, 3
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
	jmp .Lswitch1.end
.Lswitch1.case23:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC87]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else33
	call _fprintf
	jmp .call.end33
.call.else33:
	push rsi
	call _fprintf
	pop rsi
.call.end33:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case24:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC88]
	push rax
	pop rsi
	mov rax, 2
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
	jmp .Lswitch1.end
.Lswitch1.case25:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC89]
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
	jmp .Lswitch1.end
.Lswitch1.case26:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC90]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else36
	call _fprintf
	jmp .call.end36
.call.else36:
	push rsi
	call _fprintf
	pop rsi
.call.end36:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case27:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC91]
	push rax
	pop rsi
	mov rax, 2
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
	jmp .Lswitch1.end
.Lswitch1.case28:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC92]
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
	jmp .Lswitch1.end
.Lswitch1.case29:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC93]
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
	jmp .Lswitch1.end
.Lswitch1.case30:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC94]
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
	jmp .Lswitch1.end
.Lswitch1.case31:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC95]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else41
	call _fprintf
	jmp .call.end41
.call.else41:
	push rsi
	call _fprintf
	pop rsi
.call.end41:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case32:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC96]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else42
	call _fprintf
	jmp .call.end42
.call.else42:
	push rsi
	call _fprintf
	pop rsi
.call.end42:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case33:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC97]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else43
	call _fprintf
	jmp .call.end43
.call.else43:
	push rsi
	call _fprintf
	pop rsi
.call.end43:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case34:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC98]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else44
	call _fprintf
	jmp .call.end44
.call.else44:
	push rsi
	call _fprintf
	pop rsi
.call.end44:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case35:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC99]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else45
	call _fprintf
	jmp .call.end45
.call.else45:
	push rsi
	call _fprintf
	pop rsi
.call.end45:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case36:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC100]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else46
	call _fprintf
	jmp .call.end46
.call.else46:
	push rsi
	call _fprintf
	pop rsi
.call.end46:
	push rax
	jmp .Lswitch1.end
.Lswitch1.case37:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC101]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else47
	call _fprintf
	jmp .call.end47
.call.else47:
	push rsi
	call _fprintf
	pop rsi
.call.end47:
	push rax
	jmp .Lswitch1.end
.Lswitch1.end:
_get_name:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov QWORD PTR [rbp-0], rdi
	mov QWORD PTR [rbp-8], rsi
	lea rax, QWORD PTR [rip + kari@GOTPCREL]
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
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else48
	call _strncpy
	jmp .call.end48
.call.else48:
	push rsi
	call _strncpy
	pop rsi
.call.end48:
	push rax
	lea rax, QWORD PTR [rip + kari@GOTPCREL]
	push rax
	lea rax, [rbp-8]
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
	lea rax, qword ptr [rip + .LC102]
	push rax
	pop rbx
	pop rax
	mov BYTE PTR [rax], bl
	lea rax, QWORD PTR [rip + kari@GOTPCREL]
	push rax
	pop rbp
	ret
_gen_global_zero:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
	lea rax, qword ptr [rip + .LC103]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else49
	call _printf
	jmp .call.end49
.call.else49:
	push rsi
	call _printf
	pop rsi
.call.end49:
	push rax
_gen_global_int:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
	lea rax, qword ptr [rip + .LC104]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else50
	call _printf
	jmp .call.end50
.call.else50:
	push rsi
	call _printf
	pop rsi
.call.end50:
	push rax
_gen_global_char:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
	lea rax, qword ptr [rip + .LC105]
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
	jne .call.else51
	call _printf
	jmp .call.end51
.call.else51:
	push rsi
	call _printf
	pop rsi
.call.end51:
	push rax
_gen_global_ascii:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
	lea rax, qword ptr [rip + .LC106]
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
	jne .call.else52
	call _printf
	jmp .call.end52
.call.else52:
	push rsi
	call _printf
	pop rsi
.call.end52:
	push rax
_gen_global_asciz:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
	lea rax, qword ptr [rip + .LC107]
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
	jne .call.else53
	call _printf
	jmp .call.end53
.call.else53:
	push rsi
	call _printf
	pop rsi
.call.end53:
	push rax
_gen_global_string:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
	lea rax, qword ptr [rip + .LC108]
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
	jne .call.else54
	call _printf
	jmp .call.end54
.call.else54:
	push rsi
	call _printf
	pop rsi
.call.end54:
	push rax
_gen_global_array:
	push rbp
	mov rbp, rsp
	sub rsp, 40
	mov  [rbp-0], rdi
	mov  [rbp-8], rsi
	lea rax, [rbp-8]
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
	je .Lswitch2.case0
	lea rax, [rbp-8]
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
	jmp .Lswitch2.default
	jmp .Lswitch2.end
.Lswitch2.case0:
	lea rax, [rbp-8]
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
	lea rax, [rbp-8]
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
	sete al
	movzx rax, al
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then1
	jmp .Lif.end1
.Lif.then1:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop1:
	lea rax, [rbp-24]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-8]
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
	je .Lfor.end1
	lea rax, [rbp-16]
	push rax
	lea rax, [rbp-8]
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
	lea rax, [rbp-24]
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
	lea rax, [rbp-16]
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
	jmp .Lfor.end1
.Lif.end2:
	lea rax, qword ptr [rip + .LC109]
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
	jne .call.else55
	call _get_name
	jmp .call.end55
.call.else55:
	push rsi
	call _get_name
	pop rsi
.call.end55:
	push rax
	pop rsi
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
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else56
	call _printf
	jmp .call.end56
.call.else56:
	push rsi
	call _printf
	pop rsi
.call.end56:
	push rax
	lea rax, [rbp-16]
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
	lea rax, [rbp-16]
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
	jne .call.else57
	call _get_name
	jmp .call.end57
.call.else57:
	push rsi
	call _get_name
	pop rsi
.call.end57:
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else58
	call _gen_global_asciz
	jmp .call.end58
.call.else58:
	push rsi
	call _gen_global_asciz
	pop rsi
.call.end58:
	push rax
.Lfor.inc1:
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
	jmp .Lfor.loop1
.Lfor.end1:
.Lif.end1:
	lea rax, qword ptr [rip + .LC110]
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
	jne .call.else59
	call _get_name
	jmp .call.end59
.call.else59:
	push rsi
	call _get_name
	pop rsi
.call.end59:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else60
	call _printf
	jmp .call.end60
.call.else60:
	push rsi
	call _printf
	pop rsi
.call.end60:
	push rax
	lea rax, qword ptr [rip + .LC111]
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
	jne .call.else61
	call _get_name
	jmp .call.end61
.call.else61:
	push rsi
	call _get_name
	pop rsi
.call.end61:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else62
	call _printf
	jmp .call.end62
.call.else62:
	push rsi
	call _printf
	pop rsi
.call.end62:
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop2:
	lea rax, [rbp-28]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-8]
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
	je .Lfor.end2
	lea rax, [rbp-16]
	push rax
	lea rax, [rbp-8]
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
	lea rax, [rbp-28]
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
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	test rax, rax
	je .Lif.then3
	jmp .Lif.end3
.Lif.then3:
	jmp .Lfor.end2
.Lif.end3:
	lea rax, [rbp-16]
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
	lea rax, [rbp-4]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch3.case0
	lea rax, [rbp-16]
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
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch3.case1
	lea rax, [rbp-16]
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
	je .Lswitch3.case2
	jmp .Lswitch3.default
	jmp .Lswitch3.end
.Lswitch3.case0:
	lea rax, [rbp-16]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else63
	call _gen_global_int
	jmp .call.end63
.call.else63:
	push rsi
	call _gen_global_int
	pop rsi
.call.end63:
	push rax
	jmp .Lswitch3.end
.Lswitch3.case1:
	lea rax, [rbp-16]
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
	lea rax, [rbp-16]
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
	jne .call.else64
	call _get_name
	jmp .call.end64
.call.else64:
	push rsi
	call _get_name
	pop rsi
.call.end64:
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else65
	call _gen_global_char
	jmp .call.end65
.call.else65:
	push rsi
	call _gen_global_char
	pop rsi
.call.end65:
	push rax
	jmp .Lswitch3.end
.Lswitch3.case2:
	lea rax, [rbp-16]
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
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-8]
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
	lea rax, qword ptr [rip + .LC112]
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
	jne .call.else66
	call _get_name
	jmp .call.end66
.call.else66:
	push rsi
	call _get_name
	pop rsi
.call.end66:
	push rax
	pop rsi
	lea rax, [rbp-28]
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
	jne .call.else67
	call _printf
	jmp .call.end67
.call.else67:
	push rsi
	call _printf
	pop rsi
.call.end67:
	push rax
.Lif.end4:
	jmp .Lswitch3.end
.Lswitch3.default:
	jmp .Lswitch3.end
.Lswitch3.end:
.Lfor.inc2:
	lea rax, [rbp-28]
	push rax
	lea rax, [rbp-28]
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
	lea rax, [rbp-8]
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
.Lfor.loop3:
	lea rax, [rbp-32]
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
	cmp rax, rbx
	setl al
	movzx rax, al
	push rax
	cmp rax, 0
	je .Lfor.end3
	lea rax, [rbp-16]
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
	lea rax, [rbp-4]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch4.case0
	lea rax, [rbp-16]
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
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch4.case1
	jmp .Lswitch4.default
	jmp .Lswitch4.end
.Lswitch4.case0:
	push 0
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else68
	call _gen_global_int
	jmp .call.end68
.call.else68:
	push rsi
	call _gen_global_int
	pop rsi
.call.end68:
	push rax
	jmp .Lswitch4.end
.Lswitch4.case1:
	lea rax, qword ptr [rip + .LC113]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else69
	call _printf
	jmp .call.end69
.call.else69:
	push rsi
	call _printf
	pop rsi
.call.end69:
	push rax
	jmp .Lswitch4.end
.Lswitch4.default:
	jmp .Lswitch4.end
.Lswitch4.end:
.Lfor.inc3:
	lea rax, [rbp-32]
	push rax
	lea rax, [rbp-32]
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
	jmp .Lswitch2.end
.Lswitch2.case1:
	lea rax, qword ptr [rip + .LC114]
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
	jne .call.else70
	call _get_name
	jmp .call.end70
.call.else70:
	push rsi
	call _get_name
	pop rsi
.call.end70:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else71
	call _printf
	jmp .call.end71
.call.else71:
	push rsi
	call _printf
	pop rsi
.call.end71:
	push rax
	lea rax, qword ptr [rip + .LC115]
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
	jne .call.else72
	call _get_name
	jmp .call.end72
.call.else72:
	push rsi
	call _get_name
	pop rsi
.call.end72:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else73
	call _printf
	jmp .call.end73
.call.else73:
	push rsi
	call _printf
	pop rsi
.call.end73:
	push rax
	lea rax, [rbp-8]
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
	push 0
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then5
	jmp .Lif.else5
.Lif.then5:
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else74
	call _gen_global_zero
	jmp .call.end74
.call.else74:
	push rsi
	call _gen_global_zero
	pop rsi
.call.end74:
	push rax
	jmp .Lif.end5
.Lif.else5:
	lea rax, [rbp-8]
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
	lea rax, [rbp-8]
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
	jne .call.else75
	call _get_name
	jmp .call.end75
.call.else75:
	push rsi
	call _get_name
	pop rsi
.call.end75:
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else76
	call _gen_global_ascii
	jmp .call.end76
.call.else76:
	push rsi
	call _gen_global_ascii
	pop rsi
.call.end76:
	push rax
	jmp .Lif.end5
.Lif.end5:
	jmp .Lswitch2.end
.Lswitch2.default:
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else77
	call _node_kind_print
	jmp .call.end77
.call.else77:
	push rsi
	call _node_kind_print
	pop rsi
.call.end77:
	push rax
	jmp .Lswitch2.end
.Lswitch2.end:
_gen_global_ptr_sub:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	mov QWORD PTR [rbp-0], rdi
	push 1
	pop rdi
	push 100
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else78
	call _calloc
	jmp .call.end78
.call.else78:
	push rsi
	call _calloc
	pop rsi
.call.end78:
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
	je .Lswitch5.case0
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
	je .Lswitch5.case1
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
	je .Lswitch5.case2
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
	je .Lswitch5.case3
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
	je .Lswitch5.case4
	jmp .Lswitch5.default
	jmp .Lswitch5.end
.Lswitch5.case0:
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	push 100
	pop rsi
	lea rax, qword ptr [rip + .LC116]
	push rax
	pop rdx
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else79
	call _gen_global_ptr_sub
	jmp .call.end79
.call.else79:
	push rsi
	call _gen_global_ptr_sub
	pop rsi
.call.end79:
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else80
	call _snprintf
	jmp .call.end80
.call.else80:
	push rsi
	call _snprintf
	pop rsi
.call.end80:
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lswitch5.case1:
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	push 100
	pop rsi
	lea rax, qword ptr [rip + .LC117]
	push rax
	pop rdx
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else81
	call _gen_global_ptr_sub
	jmp .call.end81
.call.else81:
	push rsi
	call _gen_global_ptr_sub
	pop rsi
.call.end81:
	push rax
	pop rcx
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
	jne .call.else82
	call _gen_global_ptr_sub
	jmp .call.end82
.call.else82:
	push rsi
	call _gen_global_ptr_sub
	pop rsi
.call.end82:
	push rax
	pop r8
	mov rax, 5
	test rsp, 15
	jne .call.else83
	call _snprintf
	jmp .call.end83
.call.else83:
	push rsi
	call _snprintf
	pop rsi
.call.end83:
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lswitch5.case2:
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	push 100
	pop rsi
	lea rax, qword ptr [rip + .LC118]
	push rax
	pop rdx
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else84
	call _gen_global_ptr_sub
	jmp .call.end84
.call.else84:
	push rsi
	call _gen_global_ptr_sub
	pop rsi
.call.end84:
	push rax
	pop rcx
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
	call _gen_global_ptr_sub
	jmp .call.end85
.call.else85:
	push rsi
	call _gen_global_ptr_sub
	pop rsi
.call.end85:
	push rax
	pop r8
	mov rax, 5
	test rsp, 15
	jne .call.else86
	call _snprintf
	jmp .call.end86
.call.else86:
	push rsi
	call _snprintf
	pop rsi
.call.end86:
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lswitch5.case3:
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	push 100
	pop rsi
	lea rax, qword ptr [rip + .LC119]
	push rax
	pop rdx
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
	jne .call.else87
	call _get_name
	jmp .call.end87
.call.else87:
	push rsi
	call _get_name
	pop rsi
.call.end87:
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else88
	call _snprintf
	jmp .call.end88
.call.else88:
	push rsi
	call _snprintf
	pop rsi
.call.end88:
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lswitch5.case4:
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	push 100
	pop rsi
	lea rax, qword ptr [rip + .LC120]
	push rax
	pop rdx
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
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else89
	call _snprintf
	jmp .call.end89
.call.else89:
	push rsi
	call _snprintf
	pop rsi
.call.end89:
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbp
	ret
.Lswitch5.default:
	lea rax, qword ptr [rip + .LC121]
	push rax
	pop rbp
	ret
.Lswitch5.end:
_gen_global_ptr:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
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
	je .Lswitch6.case0
	jmp .Lswitch6.default
	jmp .Lswitch6.end
.Lswitch6.case0:
	lea rax, qword ptr [rip + .LC122]
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
	jne .call.else90
	call _get_name
	jmp .call.end90
.call.else90:
	push rsi
	call _get_name
	pop rsi
.call.end90:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else91
	call _printf
	jmp .call.end91
.call.else91:
	push rsi
	call _printf
	pop rsi
.call.end91:
	push rax
	jmp .Lswitch6.end
.Lswitch6.default:
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
	je .Lif.then6
	jmp .Lif.else6
.Lif.then6:
	lea rax, qword ptr [rip + .LC123]
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
	jne .call.else92
	call _printf
	jmp .call.end92
.call.else92:
	push rsi
	call _printf
	pop rsi
.call.end92:
	push rax
	jmp .Lif.end6
.Lif.else6:
	lea rax, qword ptr [rip + .LC124]
	push rax
	pop rdi
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else93
	call _gen_global_ptr_sub
	jmp .call.end93
.call.else93:
	push rsi
	call _gen_global_ptr_sub
	pop rsi
.call.end93:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else94
	call _printf
	jmp .call.end94
.call.else94:
	push rsi
	call _printf
	pop rsi
.call.end94:
	push rax
	jmp .Lif.end6
.Lif.end6:
	jmp .Lswitch6.end
.Lswitch6.end:
_gen_global:
	push rbp
	mov rbp, rsp
	sub rsp, 24
	mov  [rbp-0], rdi
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
	je .Lswitch7.case0
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
	je .Lswitch7.case1
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
	je .Lswitch7.case2
	jmp .Lswitch7.default
	jmp .Lswitch7.end
.Lswitch7.case0:
	lea rax, qword ptr [rip + .LC125]
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
	jne .call.else95
	call _get_name
	jmp .call.end95
.call.else95:
	push rsi
	call _get_name
	pop rsi
.call.end95:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else96
	call _printf
	jmp .call.end96
.call.else96:
	push rsi
	call _printf
	pop rsi
.call.end96:
	push rax
	lea rax, qword ptr [rip + .LC126]
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
	jne .call.else97
	call _get_name
	jmp .call.end97
.call.else97:
	push rsi
	call _get_name
	pop rsi
.call.end97:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else98
	call _printf
	jmp .call.end98
.call.else98:
	push rsi
	call _printf
	pop rsi
.call.end98:
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
	lea rax, [rax-48]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else99
	call _gen_global_zero
	jmp .call.end99
.call.else99:
	push rsi
	call _gen_global_zero
	pop rsi
.call.end99:
	push rax
	jmp .Lswitch7.end
.Lswitch7.case1:
	lea rax, [rbp-8]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-16]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, qword ptr [rip + .LC127]
	push rax
	pop rdi
	lea rax, [rbp-8]
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
	lea rax, [rbp-8]
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
	jne .call.else100
	call _get_name
	jmp .call.end100
.call.else100:
	push rsi
	call _get_name
	pop rsi
.call.end100:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else101
	call _printf
	jmp .call.end101
.call.else101:
	push rsi
	call _printf
	pop rsi
.call.end101:
	push rax
	lea rax, [rbp-8]
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
	lea rax, [rbp-4]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch8.case0
	lea rax, [rbp-8]
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
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch8.case1
	lea rax, [rbp-8]
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
	lea rax, [rbp-16]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch8.case2
	lea rax, [rbp-8]
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
	je .Lswitch8.case3
	lea rax, [rbp-8]
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
	lea rax, [rbp-20]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch8.case4
	jmp .Lswitch8.default
	jmp .Lswitch8.end
.Lswitch8.case0:
	lea rax, qword ptr [rip + .LC128]
	push rax
	pop rdi
	lea rax, [rbp-8]
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
	lea rax, [rbp-8]
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
	jne .call.else102
	call _get_name
	jmp .call.end102
.call.else102:
	push rsi
	call _get_name
	pop rsi
.call.end102:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else103
	call _printf
	jmp .call.end103
.call.else103:
	push rsi
	call _printf
	pop rsi
.call.end103:
	push rax
	lea rax, [rbp-16]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else104
	call _gen_global_int
	jmp .call.end104
.call.else104:
	push rsi
	call _gen_global_int
	pop rsi
.call.end104:
	push rax
	jmp .Lswitch8.end
.Lswitch8.case1:
	lea rax, qword ptr [rip + .LC129]
	push rax
	pop rdi
	lea rax, [rbp-8]
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
	lea rax, [rbp-8]
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
	jne .call.else105
	call _get_name
	jmp .call.end105
.call.else105:
	push rsi
	call _get_name
	pop rsi
.call.end105:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else106
	call _printf
	jmp .call.end106
.call.else106:
	push rsi
	call _printf
	pop rsi
.call.end106:
	push rax
	lea rax, [rbp-16]
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
	lea rax, [rbp-16]
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
	jne .call.else107
	call _get_name
	jmp .call.end107
.call.else107:
	push rsi
	call _get_name
	pop rsi
.call.end107:
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else108
	call _gen_global_char
	jmp .call.end108
.call.else108:
	push rsi
	call _gen_global_char
	pop rsi
.call.end108:
	push rax
	jmp .Lswitch8.end
.Lswitch8.case2:
	lea rax, [rbp-8]
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
	mov rax, 2
	test rsp, 15
	jne .call.else109
	call _gen_global_array
	jmp .call.end109
.call.else109:
	push rsi
	call _gen_global_array
	pop rsi
.call.end109:
	push rax
	jmp .Lswitch8.end
.Lswitch8.case3:
	lea rax, qword ptr [rip + .LC130]
	push rax
	pop rdi
	lea rax, [rbp-8]
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
	lea rax, [rbp-8]
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
	jne .call.else110
	call _get_name
	jmp .call.end110
.call.else110:
	push rsi
	call _get_name
	pop rsi
.call.end110:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else111
	call _printf
	jmp .call.end111
.call.else111:
	push rsi
	call _printf
	pop rsi
.call.end111:
	push rax
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else112
	call _gen_global_ptr
	jmp .call.end112
.call.else112:
	push rsi
	call _gen_global_ptr
	pop rsi
.call.end112:
	push rax
	jmp .Lswitch8.end
.Lswitch8.case4:
	lea rax, qword ptr [rip + .LC131]
	push rax
	pop rdi
	lea rax, [rbp-8]
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
	lea rax, [rbp-8]
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
	jne .call.else113
	call _get_name
	jmp .call.end113
.call.else113:
	push rsi
	call _get_name
	pop rsi
.call.end113:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else114
	call _printf
	jmp .call.end114
.call.else114:
	push rsi
	call _printf
	pop rsi
.call.end114:
	push rax
	lea rax, [rbp-8]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else115
	call _gen_global_zero
	jmp .call.end115
.call.else115:
	push rsi
	call _gen_global_zero
	pop rsi
.call.end115:
	push rax
	jmp .Lswitch8.end
.Lswitch8.default:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC132]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else116
	call _fprintf
	jmp .call.end116
.call.else116:
	push rsi
	call _fprintf
	pop rsi
.call.end116:
	push rax
	jmp .Lswitch8.end
.Lswitch8.end:
	jmp .Lswitch7.end
.Lswitch7.case2:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else117
	call _gen
	jmp .call.end117
.call.else117:
	push rsi
	call _gen
	pop rsi
.call.end117:
	push rax
	jmp .Lswitch7.end
.Lswitch7.default:
	jmp .Lswitch7.end
.Lswitch7.end:
_gen_strings:
	push rbp
	mov rbp, rsp
	sub rsp, 16
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop4:
	lea rax, QWORD PTR [rip + strings@GOTPCREL]
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
	je .Lfor.end4
	lea rax, QWORD PTR [rip + strings@GOTPCREL]
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
	lea rax, qword ptr [rip + .LC133]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else118
	call _printf
	jmp .call.end118
.call.else118:
	push rsi
	call _printf
	pop rsi
.call.end118:
	push rax
	lea rax, [rbp-4]
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
	push 0
	pop rbx
	pop rax
	cmp rax, rbx
	setne al
	movzx rax, al
	push rax
	lea rax, [rbp-4]
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
	lea rax, qword ptr [rip + .LC134]
	push rax
	pop rsi
	lea rax, [rbp-4]
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
	jne .call.else119
	call _strncmp
	jmp .call.end119
.call.else119:
	push rsi
	call _strncmp
	pop rsi
.call.end119:
	push rax
	pop rax
	not eax
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then7
	jmp .Lif.end7
.Lif.then7:
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-36]
	push rax
	lea rax, [rbp-4]
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
	push 1
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-4]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	lea rax, [rax-44]
	push rax
	lea rax, [rbp-4]
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
	sub rax, rbx
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lif.end7:
	lea rax, [rbp-4]
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
	lea rax, [rbp-4]
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
	jne .call.else120
	call _get_name
	jmp .call.end120
.call.else120:
	push rsi
	call _get_name
	pop rsi
.call.end120:
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else121
	call _gen_global_string
	jmp .call.end121
.call.else121:
	push rsi
	call _gen_global_string
	pop rsi
.call.end121:
	push rax
.Lfor.inc4:
	lea rax, [rbp-0]
	push rax
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
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	jmp .Lfor.loop4
.Lfor.end4:
_gen_extern:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	test rax, rax
	je .Lif.then8
	jmp .Lif.end8
.Lif.then8:
	lea rax, qword ptr [rip + .LC135]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else122
	call _printf
	jmp .call.end122
.call.else122:
	push rsi
	call _printf
	pop rsi
.call.end122:
	push rax
.Lwhile.loop1:
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
	cmp rax, 0
	je .Lwhile.end1
	lea rax, qword ptr [rip + .LC136]
	push rax
	pop rdi
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
	jne .call.else123
	call _get_name
	jmp .call.end123
.call.else123:
	push rsi
	call _get_name
	pop rsi
.call.end123:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else124
	call _printf
	jmp .call.end124
.call.else124:
	push rsi
	call _printf
	pop rsi
.call.end124:
	push rax
	lea rax, [rbp-0]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop1
.Lwhile.end1:
	lea rax, qword ptr [rip + .LC137]
	push rax
	pop rdi
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
	jne .call.else125
	call _get_name
	jmp .call.end125
.call.else125:
	push rsi
	call _get_name
	pop rsi
.call.end125:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else126
	call _printf
	jmp .call.end126
.call.else126:
	push rsi
	call _printf
	pop rsi
.call.end126:
	push rax
.Lif.end8:
_gen_funcs:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	test rax, rax
	je .Lif.then9
	jmp .Lif.end9
.Lif.then9:
	lea rax, qword ptr [rip + .LC138]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else127
	call _printf
	jmp .call.end127
.call.else127:
	push rsi
	call _printf
	pop rsi
.call.end127:
	push rax
.Lwhile.loop2:
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
	cmp rax, 0
	je .Lwhile.end2
	lea rax, qword ptr [rip + .LC139]
	push rax
	pop rdi
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
	jne .call.else128
	call _get_name
	jmp .call.end128
.call.else128:
	push rsi
	call _get_name
	pop rsi
.call.end128:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else129
	call _printf
	jmp .call.end129
.call.else129:
	push rsi
	call _printf
	pop rsi
.call.end129:
	push rax
	lea rax, [rbp-0]
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
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	jmp .Lwhile.loop2
.Lwhile.end2:
	lea rax, qword ptr [rip + .LC140]
	push rax
	pop rdi
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
	jne .call.else130
	call _get_name
	jmp .call.end130
.call.else130:
	push rsi
	call _get_name
	pop rsi
.call.end130:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else131
	call _printf
	jmp .call.end131
.call.else131:
	push rsi
	call _printf
	pop rsi
.call.end131:
	push rax
.Lif.end9:
_gen_push:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
	lea rax, qword ptr [rip + .LC141]
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
	jne .call.else132
	call _printf
	jmp .call.end132
.call.else132:
	push rsi
	call _printf
	pop rsi
.call.end132:
	push rax
	lea rax, DWORD PTR [rip + rsp@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + rsp@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 8
	pop rbx
	pop rax
	add rax, rbx
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
_gen_pop:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
	lea rax, qword ptr [rip + .LC142]
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
	jne .call.else133
	call _printf
	jmp .call.end133
.call.else133:
	push rsi
	call _printf
	pop rsi
.call.end133:
	push rax
	lea rax, DWORD PTR [rip + rsp@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + rsp@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 8
	pop rbx
	pop rax
	sub rax, rbx
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
_gen_pre:
	push rbp
	mov rbp, rsp
	sub rsp, 48
	mov  [rbp-0], rdi
	mov  [rbp-8], rsi
	mov  [rbp-16], rdx
	lea rax, qword ptr [rip + .LC143]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else134
	call _printf
	jmp .call.end134
.call.else134:
	push rsi
	call _printf
	pop rsi
.call.end134:
	push rax
	lea rax, [rbp-16]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else135
	call _gen_extern
	jmp .call.end135
.call.else135:
	push rsi
	call _gen_extern
	pop rsi
.call.end135:
	push rax
	lea rax, [rbp-8]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else136
	call _gen_funcs
	jmp .call.end136
.call.else136:
	push rsi
	call _gen_funcs
	pop rsi
.call.end136:
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop5:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-40]
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
	je .Lfor.end5
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-40]
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
	jne .call.else137
	call _gen_global
	jmp .call.end137
.call.else137:
	push rsi
	call _gen_global
	pop rsi
.call.end137:
	push rax
.Lfor.inc5:
	lea rax, [rbp-40]
	push rax
	lea rax, [rbp-40]
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
	mov rax, 0
	test rsp, 15
	jne .call.else138
	call _gen_strings
	jmp .call.end138
.call.else138:
	push rsi
	call _gen_strings
	pop rsi
.call.end138:
	push rax
_gen_type:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov QWORD PTR [rbp-0], rdi
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
	je .Lswitch9.case0
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
	je .Lswitch9.case1
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
	je .Lswitch9.case2
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
	je .Lswitch9.case3
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
	je .Lswitch9.case4
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
	je .Lswitch9.case5
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
	je .Lswitch9.case6
	jmp .Lswitch9.end
.Lswitch9.case0:
	lea rax, qword ptr [rip + .LC144]
	push rax
	pop rbp
	ret
.Lswitch9.case1:
	lea rax, qword ptr [rip + .LC145]
	push rax
	pop rbp
	ret
.Lswitch9.case2:
	lea rax, qword ptr [rip + .LC146]
	push rax
	pop rbp
	ret
.Lswitch9.case3:
	lea rax, qword ptr [rip + .LC147]
	push rax
	pop rbp
	ret
.Lswitch9.case4:
	lea rax, qword ptr [rip + .LC148]
	push rax
	pop rbp
	ret
.Lswitch9.case5:
	lea rax, qword ptr [rip + .LC149]
	push rax
	pop rbp
	ret
.Lswitch9.case6:
	lea rax, qword ptr [rip + .LC150]
	push rax
	pop rbp
	ret
.Lswitch9.end:
_gen_lvalue:
	push rbp
	mov rbp, rsp
	sub rsp, 112
	mov  [rbp-0], rdi
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
	je .Lswitch10.case0
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
	je .Lswitch10.case1
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
	je .Lswitch10.case2
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
	je .Lswitch10.case3
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
	je .Lswitch10.case4
	jmp .Lswitch10.default
	jmp .Lswitch10.end
.Lswitch10.case0:
	lea rax, [rbp-0]
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then10
	jmp .Lif.else10
.Lif.then10:
	lea rax, qword ptr [rip + .LC151]
	push rax
	pop rdi
	lea rax, [rbp-0]
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
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else139
	call _printf
	jmp .call.end139
.call.else139:
	push rsi
	call _printf
	pop rsi
.call.end139:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else140
	call _gen_push
	jmp .call.end140
.call.else140:
	push rsi
	call _gen_push
	pop rsi
.call.end140:
	push rax
	jmp .Lif.end10
.Lif.else10:
	lea rax, qword ptr [rip + .LC152]
	push rax
	pop rdi
	lea rax, [rbp-0]
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
	pop rax
	lea rax, [rax-20]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else141
	call _gen_type
	jmp .call.end141
.call.else141:
	push rsi
	call _gen_type
	pop rsi
.call.end141:
	push rax
	pop rsi
	lea rax, [rbp-0]
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
	pop rax
	lea rax, [rax-8]
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
	lea rax, [rax-272]
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
	jne .call.else142
	call _get_name
	jmp .call.end142
.call.else142:
	push rsi
	call _get_name
	pop rsi
.call.end142:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else143
	call _printf
	jmp .call.end143
.call.else143:
	push rsi
	call _printf
	pop rsi
.call.end143:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else144
	call _gen_push
	jmp .call.end144
.call.else144:
	push rsi
	call _gen_push
	pop rsi
.call.end144:
	push rax
	jmp .Lif.end10
.Lif.end10:
	push 0
	pop rbp
	ret
.Lswitch10.case1:
	lea rax, [rbp-0]
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
	pop rax
	lea rax, [rax-28]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	push 0
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then11
	jmp .Lif.end11
.Lif.then11:
	lea rax, qword ptr [rip + .LC153]
	push rax
	pop rdi
	lea rax, [rbp-0]
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
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else145
	call _printf
	jmp .call.end145
.call.else145:
	push rsi
	call _printf
	pop rsi
.call.end145:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else146
	call _gen_push
	jmp .call.end146
.call.else146:
	push rsi
	call _gen_push
	pop rsi
.call.end146:
	push rax
.Lif.end11:
	push 0
	pop rbp
	ret
.Lswitch10.case2:
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else147
	call _gen_lvalue
	jmp .call.end147
.call.else147:
	push rsi
	call _gen_lvalue
	pop rsi
.call.end147:
	push rax
	push 0
	pop rbp
	ret
.Lswitch10.case3:
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else148
	call _gen
	jmp .call.end148
.call.else148:
	push rsi
	call _gen
	pop rsi
.call.end148:
	push rax
	push 0
	pop rbp
	ret
.Lswitch10.case4:
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
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then12
	jmp .Lif.else12
.Lif.then12:
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else149
	call _gen_lvalue
	jmp .call.end149
.call.else149:
	push rsi
	call _gen_lvalue
	pop rsi
.call.end149:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else150
	call _gen_pop
	jmp .call.end150
.call.else150:
	push rsi
	call _gen_pop
	pop rsi
.call.end150:
	push rax
	lea rax, qword ptr [rip + .LC154]
	push rax
	pop rdi
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
	pop rax
	lea rax, [rax-272]
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
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else151
	call _printf
	jmp .call.end151
.call.else151:
	push rsi
	call _printf
	pop rsi
.call.end151:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else152
	call _gen_push
	jmp .call.end152
.call.else152:
	push rsi
	call _gen_push
	pop rsi
.call.end152:
	push rax
	jmp .Lif.end12
.Lif.else12:
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else153
	call _gen
	jmp .call.end153
.call.else153:
	push rsi
	call _gen
	pop rsi
.call.end153:
	push rax
	jmp .Lif.end12
.Lif.end12:
	push 0
	pop rbp
	ret
.Lswitch10.default:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC155]
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
	pop rdx
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
	mov eax, DWORD PTR [rax]
	push rax
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else154
	call _fprintf
	jmp .call.end154
.call.else154:
	push rsi
	call _fprintf
	pop rsi
.call.end154:
	push rax
	jmp .Lswitch10.end
.Lswitch10.end:
_gen_mov:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
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
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then13
	jmp .Lif.else13
.Lif.then13:
	lea rax, qword ptr [rip + .LC156]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + regs8@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else155
	call _gen_type
	jmp .call.end155
.call.else155:
	push rsi
	call _gen_type
	pop rsi
.call.end155:
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else156
	call _printf
	jmp .call.end156
.call.else156:
	push rsi
	call _printf
	pop rsi
.call.end156:
	push rax
	jmp .Lif.end13
.Lif.else13:
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
	sete al
	movzx rax, al
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
	lea rax, [rbp-24]
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
	je .Lif.then14
	jmp .Lif.else14
.Lif.then14:
	lea rax, qword ptr [rip + .LC157]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else157
	call _gen_type
	jmp .call.end157
.call.else157:
	push rsi
	call _gen_type
	pop rsi
.call.end157:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else158
	call _printf
	jmp .call.end158
.call.else158:
	push rsi
	call _printf
	pop rsi
.call.end158:
	push rax
	jmp .Lif.end14
.Lif.else14:
	lea rax, qword ptr [rip + .LC158]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else159
	call _gen_type
	jmp .call.end159
.call.else159:
	push rsi
	call _gen_type
	pop rsi
.call.end159:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else160
	call _printf
	jmp .call.end160
.call.else160:
	push rsi
	call _printf
	pop rsi
.call.end160:
	push rax
	jmp .Lif.end14
.Lif.end14:
	jmp .Lif.end13
.Lif.end13:
_gen_assign:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov  [rbp-0], rdi
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
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then15
	jmp .Lif.else15
.Lif.then15:
	lea rax, qword ptr [rip + .LC159]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else161
	call _gen_type
	jmp .call.end161
.call.else161:
	push rsi
	call _gen_type
	pop rsi
.call.end161:
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + regs8@GOTPCREL]
	push rax
	lea rax, [rbp-4]
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
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else162
	call _printf
	jmp .call.end162
.call.else162:
	push rsi
	call _printf
	pop rsi
.call.end162:
	push rax
	jmp .Lif.end15
.Lif.else15:
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
	sete al
	movzx rax, al
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
	lea rax, [rbp-24]
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
	je .Lif.then16
	jmp .Lif.else16
.Lif.then16:
	lea rax, qword ptr [rip + .LC160]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else163
	call _gen_type
	jmp .call.end163
.call.else163:
	push rsi
	call _gen_type
	pop rsi
.call.end163:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else164
	call _printf
	jmp .call.end164
.call.else164:
	push rsi
	call _printf
	pop rsi
.call.end164:
	push rax
	jmp .Lif.end16
.Lif.else16:
	lea rax, qword ptr [rip + .LC161]
	push rax
	pop rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else165
	call _gen_type
	jmp .call.end165
.call.else165:
	push rsi
	call _gen_type
	pop rsi
.call.end165:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else166
	call _printf
	jmp .call.end166
.call.else166:
	push rsi
	call _printf
	pop rsi
.call.end166:
	push rax
	jmp .Lif.end16
.Lif.end16:
	jmp .Lif.end15
.Lif.end15:
_gen_cond:
	push rbp
	mov rbp, rsp
	sub rsp, 8
	mov QWORD PTR [rbp-0], rdi
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	test rax, rax
	je .Lif.then17
	jmp .Lif.end17
.Lif.then17:
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
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then18
	jmp .Lif.else18
.Lif.then18:
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else167
	call _gen
	jmp .call.end167
.call.else167:
	push rsi
	call _gen
	pop rsi
.call.end167:
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
	jne .call.else168
	call _gen
	jmp .call.end168
.call.else168:
	push rsi
	call _gen
	pop rsi
.call.end168:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else169
	call _gen_pop
	jmp .call.end169
.call.else169:
	push rsi
	call _gen_pop
	pop rsi
.call.end169:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-4]
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
	jne .call.else170
	call _gen_pop
	jmp .call.end170
.call.else170:
	push rsi
	call _gen_pop
	pop rsi
.call.end170:
	push rax
	lea rax, qword ptr [rip + .LC162]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else171
	call _printf
	jmp .call.end171
.call.else171:
	push rsi
	call _printf
	pop rsi
.call.end171:
	push rax
	jmp .Lif.end18
.Lif.else18:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else172
	call _gen
	jmp .call.end172
.call.else172:
	push rsi
	call _gen
	pop rsi
.call.end172:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else173
	call _gen_pop
	jmp .call.end173
.call.else173:
	push rsi
	call _gen_pop
	pop rsi
.call.end173:
	push rax
	lea rax, qword ptr [rip + .LC163]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else174
	call _printf
	jmp .call.end174
.call.else174:
	push rsi
	call _printf
	pop rsi
.call.end174:
	push rax
	lea rax, qword ptr [rip + .LC164]
	push rax
	pop rbp
	ret
	jmp .Lif.end18
.Lif.end18:
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
	je .Lswitch11.case0
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
	je .Lswitch11.case1
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
	je .Lswitch11.case2
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
	je .Lswitch11.case3
	jmp .Lswitch11.default
	jmp .Lswitch11.end
.Lswitch11.case0:
	lea rax, qword ptr [rip + .LC165]
	push rax
	pop rbp
	ret
.Lswitch11.case1:
	lea rax, qword ptr [rip + .LC166]
	push rax
	pop rbp
	ret
.Lswitch11.case2:
	lea rax, qword ptr [rip + .LC167]
	push rax
	pop rbp
	ret
.Lswitch11.case3:
	lea rax, qword ptr [rip + .LC168]
	push rax
	pop rbp
	ret
.Lswitch11.default:
	lea rax, qword ptr [rip + .LC169]
	push rax
	pop rbp
	ret
	lea rax, qword ptr [rip + .LC170]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else175
	call _error
	jmp .call.end175
.call.else175:
	push rsi
	call _error
	pop rsi
.call.end175:
	push rax
	push 0
	pop rbp
	ret
.Lswitch11.end:
.Lif.end17:
	lea rax, qword ptr [rip + .LC171]
	push rax
	pop rbp
	ret
_gen:
	push rbp
	mov rbp, rsp
	sub rsp, 240
	mov  [rbp-0], rdi
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
	je .Lif.then19
	jmp .Lif.end19
.Lif.then19:
	push 0
	pop rbp
	ret
.Lif.end19:
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
	je .Lswitch12.case0
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
	je .Lswitch12.case1
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
	je .Lswitch12.case2
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
	je .Lswitch12.case3
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
	je .Lswitch12.case4
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
	je .Lswitch12.case5
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
	je .Lswitch12.case6
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
	je .Lswitch12.case7
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
	je .Lswitch12.case8
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
	je .Lswitch12.case9
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
	je .Lswitch12.case10
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
	je .Lswitch12.case11
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
	je .Lswitch12.case12
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
	je .Lswitch12.case13
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
	je .Lswitch12.case14
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
	lea rax, [rbp-100]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch12.case15
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
	lea rax, [rbp-104]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	cmp rax, rbx
	je .Lswitch12.case16
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
	je .Lswitch12.case17
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
	je .Lswitch12.case18
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
	je .Lswitch12.case19
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
	je .Lswitch12.case20
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
	je .Lswitch12.case21
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
	je .Lswitch12.case22
	jmp .Lswitch12.default
	jmp .Lswitch12.end
.Lswitch12.case0:
	lea rax, QWORD PTR [rip + kari@GOTPCREL]
	push rax
	pop rdi
	push 100
	pop rsi
	lea rax, qword ptr [rip + .LC172]
	push rax
	pop rdx
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
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else176
	call _snprintf
	jmp .call.end176
.call.else176:
	push rsi
	call _snprintf
	pop rsi
.call.end176:
	push rax
	lea rax, QWORD PTR [rip + kari@GOTPCREL]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else177
	call _gen_push
	jmp .call.end177
.call.else177:
	push rsi
	call _gen_push
	pop rsi
.call.end177:
	push rax
	push 0
	pop rbp
	ret
.Lswitch12.case1:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-116]
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop6:
	lea rax, QWORD PTR [rip + strings@GOTPCREL]
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
	lea rax, QWORD PTR [rip + strings@GOTPCREL]
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
	lea rax, [rax-260]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	lea rax, [rbp-120]
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
	lea rax, [rax-268]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-120]
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
	je .Lif.then20
	jmp .Lif.end20
.Lif.then20:
	jmp .Lfor.end6
.Lif.end20:
.Lfor.inc6:
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
	jmp .Lfor.loop6
.Lfor.end6:
	lea rax, qword ptr [rip + .LC173]
	push rax
	pop rdi
	lea rax, [rbp-116]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else178
	call _printf
	jmp .call.end178
.call.else178:
	push rsi
	call _printf
	pop rsi
.call.end178:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else179
	call _gen_push
	jmp .call.end179
.call.else179:
	push rsi
	call _gen_push
	pop rsi
.call.end179:
	push rax
	push 0
	pop rbp
	ret
.Lswitch12.case2:
	push 0
	pop rbp
	ret
.Lswitch12.case3:
	push 0
	pop rbp
	ret
.Lswitch12.case4:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else180
	call _gen_lvalue
	jmp .call.end180
.call.else180:
	push rsi
	call _gen_lvalue
	pop rsi
.call.end180:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else181
	call _gen_pop
	jmp .call.end181
.call.else181:
	push rsi
	call _gen_pop
	pop rsi
.call.end181:
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
	pop rax
	mov rax, QWORD PTR [rax]
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
	pop rax
	lea rax, [rax-272]
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
	jne .call.else182
	call _gen_mov
	jmp .call.end182
.call.else182:
	push rsi
	call _gen_mov
	pop rsi
.call.end182:
	push rax
.Lif.end21:
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else183
	call _gen_push
	jmp .call.end183
.call.else183:
	push rsi
	call _gen_push
	pop rsi
.call.end183:
	push rax
	push 0
	pop rbp
	ret
.Lswitch12.case5:
	lea rax, [rbp-0]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else184
	call _gen_lvalue
	jmp .call.end184
.call.else184:
	push rsi
	call _gen_lvalue
	pop rsi
.call.end184:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else185
	call _gen_pop
	jmp .call.end185
.call.else185:
	push rsi
	call _gen_pop
	pop rsi
.call.end185:
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else186
	call _gen_mov
	jmp .call.end186
.call.else186:
	push rsi
	call _gen_mov
	pop rsi
.call.end186:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else187
	call _gen_push
	jmp .call.end187
.call.else187:
	push rsi
	call _gen_push
	pop rsi
.call.end187:
	push rax
	push 0
	pop rbp
	ret
.Lswitch12.case6:
	push 0
	pop rbp
	ret
.Lswitch12.case7:
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else188
	call _gen_lvalue
	jmp .call.end188
.call.else188:
	push rsi
	call _gen_lvalue
	pop rsi
.call.end188:
	push rax
	push 0
	pop rbp
	ret
.Lswitch12.case8:
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else189
	call _gen
	jmp .call.end189
.call.else189:
	push rsi
	call _gen
	pop rsi
.call.end189:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else190
	call _gen_pop
	jmp .call.end190
.call.else190:
	push rsi
	call _gen_pop
	pop rsi
.call.end190:
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else191
	call _gen_mov
	jmp .call.end191
.call.else191:
	push rsi
	call _gen_mov
	pop rsi
.call.end191:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else192
	call _gen_push
	jmp .call.end192
.call.else192:
	push rsi
	call _gen_push
	pop rsi
.call.end192:
	push rax
	push 0
	pop rbp
	ret
.Lswitch12.case9:
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else193
	call _gen
	jmp .call.end193
.call.else193:
	push rsi
	call _gen
	pop rsi
.call.end193:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else194
	call _gen_pop
	jmp .call.end194
.call.else194:
	push rsi
	call _gen_pop
	pop rsi
.call.end194:
	push rax
	lea rax, qword ptr [rip + .LC174]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else195
	call _printf
	jmp .call.end195
.call.else195:
	push rsi
	call _printf
	pop rsi
.call.end195:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else196
	call _gen_push
	jmp .call.end196
.call.else196:
	push rsi
	call _gen_push
	pop rsi
.call.end196:
	push rax
	push 0
	pop rbp
	ret
.Lswitch12.case10:
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
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then22
	jmp .Lif.else22
.Lif.then22:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop7:
	lea rax, [rbp-144]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-136]
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
	lea rax, [rbp-136]
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
	lea rax, [rbp-144]
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
	lea rax, [rbp-148]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rax
	not eax
	push rax
	pop rax
	test rax, rax
	je .Lif.then23
	jmp .Lif.end23
.Lif.then23:
	jmp .Lfor.inc7
.Lif.end23:
	lea rax, [rbp-148]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else197
	call _gen
	jmp .call.end197
.call.else197:
	push rsi
	call _gen
	pop rsi
.call.end197:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else198
	call _gen_pop
	jmp .call.end198
.call.else198:
	push rsi
	call _gen_pop
	pop rsi
.call.end198:
	push rax
	lea rax, [rbp-148]
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
	lea rax, [rbp-4]
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
	sete al
	movzx rax, al
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then24
	jmp .Lif.else24
.Lif.then24:
	lea rax, qword ptr [rip + .LC175]
	push rax
	pop rdi
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else199
	call _gen_type
	jmp .call.end199
.call.else199:
	push rsi
	call _gen_type
	pop rsi
.call.end199:
	push rax
	pop rsi
	lea rax, [rbp-128]
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
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-144]
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
	mul rbx
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
	lea rax, [rax-52]
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
	add rax, rbx
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else200
	call _printf
	jmp .call.end200
.call.else200:
	push rsi
	call _printf
	pop rsi
.call.end200:
	push rax
	jmp .Lif.end24
.Lif.else24:
	lea rax, qword ptr [rip + .LC176]
	push rax
	pop rdi
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else201
	call _gen_type
	jmp .call.end201
.call.else201:
	push rsi
	call _gen_type
	pop rsi
.call.end201:
	push rax
	pop rsi
	lea rax, [rbp-128]
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
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-144]
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
	mul rbx
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
	lea rax, [rax-52]
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
	add rax, rbx
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else202
	call _printf
	jmp .call.end202
.call.else202:
	push rsi
	call _printf
	pop rsi
.call.end202:
	push rax
	jmp .Lif.end24
.Lif.end24:
.Lfor.inc7:
	lea rax, [rbp-144]
	push rax
	lea rax, [rbp-144]
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
	lea rax, [rbp-136]
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
	lea rax, [rax-52]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	jl .Lif.then25
	jmp .Lif.end25
.Lif.then25:
	lea rax, [rbp-136]
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
.Lfor.loop8:
	lea rax, [rbp-156]
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
	cmp rax, rbx
	setl al
	movzx rax, al
	push rax
	cmp rax, 0
	je .Lfor.end8
	lea rax, qword ptr [rip + .LC177]
	push rax
	pop rdi
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else203
	call _gen_type
	jmp .call.end203
.call.else203:
	push rsi
	call _gen_type
	pop rsi
.call.end203:
	push rax
	pop rsi
	lea rax, [rbp-128]
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
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-156]
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
	mul rbx
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
	lea rax, [rax-52]
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
	add rax, rbx
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else204
	call _printf
	jmp .call.end204
.call.else204:
	push rsi
	call _printf
	pop rsi
.call.end204:
	push rax
.Lfor.inc8:
	lea rax, [rbp-156]
	push rax
	lea rax, [rbp-156]
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
.Lif.end25:
	jmp .Lif.end22
.Lif.else22:
	lea rax, [rbp-148]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else205
	call _gen_lvalue
	jmp .call.end205
.call.else205:
	push rsi
	call _gen_lvalue
	pop rsi
.call.end205:
	push rax
	lea rax, [rbp-148]
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
	jne .call.else206
	call _gen
	jmp .call.end206
.call.else206:
	push rsi
	call _gen
	pop rsi
.call.end206:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-4]
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
	jne .call.else207
	call _gen_pop
	jmp .call.end207
.call.else207:
	push rsi
	call _gen_pop
	pop rsi
.call.end207:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else208
	call _gen_pop
	jmp .call.end208
.call.else208:
	push rsi
	call _gen_pop
	pop rsi
.call.end208:
	push rax
	lea rax, [rbp-148]
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
	pop rax
	lea rax, [rax-252]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else209
	call _gen_assign
	jmp .call.end209
.call.else209:
	push rsi
	call _gen_assign
	pop rsi
.call.end209:
	push rax
	jmp .Lif.end22
.Lif.end22:
	push 0
	pop rbp
	ret
.Lswitch12.case11:
	lea rax, [rbp-148]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else210
	call _gen
	jmp .call.end210
.call.else210:
	push rsi
	call _gen
	pop rsi
.call.end210:
	push rax
	lea rax, qword ptr [rip + .LC178]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else211
	call _gen_pop
	jmp .call.end211
.call.else211:
	push rsi
	call _gen_pop
	pop rsi
.call.end211:
	push rax
	lea rax, qword ptr [rip + .LC179]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else212
	call _printf
	jmp .call.end212
.call.else212:
	push rsi
	call _printf
	pop rsi
.call.end212:
	push rax
	push 0
	pop rbp
	ret
.Lswitch12.case12:
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
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
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-148]
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
	pop rax
	test rax, rax
	je .Lif.then26
	jmp .Lif.else26
.Lif.then26:
	lea rax, qword ptr [rip + .LC180]
	push rax
	pop rdi
	lea rax, [rbp-148]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else213
	call _gen_cond
	jmp .call.end213
.call.else213:
	push rsi
	call _gen_cond
	pop rsi
.call.end213:
	push rax
	pop rsi
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else214
	call _printf
	jmp .call.end214
.call.else214:
	push rsi
	call _printf
	pop rsi
.call.end214:
	push rax
	lea rax, qword ptr [rip + .LC181]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else215
	call _printf
	jmp .call.end215
.call.else215:
	push rsi
	call _printf
	pop rsi
.call.end215:
	push rax
	lea rax, qword ptr [rip + .LC182]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else216
	call _printf
	jmp .call.end216
.call.else216:
	push rsi
	call _printf
	pop rsi
.call.end216:
	push rax
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-164]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-148]
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
	jne .call.else217
	call _gen
	jmp .call.end217
.call.else217:
	push rsi
	call _gen
	pop rsi
.call.end217:
	push rax
	lea rax, [rbp-164]
	push rax
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-160]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC183]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else218
	call _printf
	jmp .call.end218
.call.else218:
	push rsi
	call _printf
	pop rsi
.call.end218:
	push rax
	lea rax, qword ptr [rip + .LC184]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else219
	call _printf
	jmp .call.end219
.call.else219:
	push rsi
	call _printf
	pop rsi
.call.end219:
	push rax
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-164]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-148]
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
	jne .call.else220
	call _gen
	jmp .call.end220
.call.else220:
	push rsi
	call _gen
	pop rsi
.call.end220:
	push rax
	lea rax, [rbp-164]
	push rax
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-160]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC185]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else221
	call _printf
	jmp .call.end221
.call.else221:
	push rsi
	call _printf
	pop rsi
.call.end221:
	push rax
	lea rax, qword ptr [rip + .LC186]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else222
	call _printf
	jmp .call.end222
.call.else222:
	push rsi
	call _printf
	pop rsi
.call.end222:
	push rax
	jmp .Lif.end26
.Lif.else26:
	lea rax, qword ptr [rip + .LC187]
	push rax
	pop rdi
	lea rax, [rbp-148]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else223
	call _gen_cond
	jmp .call.end223
.call.else223:
	push rsi
	call _gen_cond
	pop rsi
.call.end223:
	push rax
	pop rsi
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else224
	call _printf
	jmp .call.end224
.call.else224:
	push rsi
	call _printf
	pop rsi
.call.end224:
	push rax
	lea rax, qword ptr [rip + .LC188]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else225
	call _printf
	jmp .call.end225
.call.else225:
	push rsi
	call _printf
	pop rsi
.call.end225:
	push rax
	lea rax, qword ptr [rip + .LC189]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else226
	call _printf
	jmp .call.end226
.call.else226:
	push rsi
	call _printf
	pop rsi
.call.end226:
	push rax
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-164]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-148]
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
	jne .call.else227
	call _gen
	jmp .call.end227
.call.else227:
	push rsi
	call _gen
	pop rsi
.call.end227:
	push rax
	lea rax, [rbp-164]
	push rax
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-160]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC190]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else228
	call _printf
	jmp .call.end228
.call.else228:
	push rsi
	call _printf
	pop rsi
.call.end228:
	push rax
	jmp .Lif.end26
.Lif.end26:
	lea rax, DWORD PTR [rip + if_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-164]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	push 0
	pop rbp
	ret
.Lswitch12.case13:
	lea rax, DWORD PTR [rip + while_cnt@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + while_cnt@GOTPCREL]
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
	lea rax, DWORD PTR [rip + while_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, DWORD PTR [rip + while_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-108]
	push rax
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	push 1
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	lea rax, [rax-4]
	push rax
	lea rax, DWORD PTR [rip + while_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC191]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + while_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else229
	call _printf
	jmp .call.end229
.call.else229:
	push rsi
	call _printf
	pop rsi
.call.end229:
	push rax
	lea rax, [rbp-148]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else230
	call _gen
	jmp .call.end230
.call.else230:
	push rsi
	call _gen
	pop rsi
.call.end230:
	push rax
	lea rax, qword ptr [rip + .LC192]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else231
	call _printf
	jmp .call.end231
.call.else231:
	push rsi
	call _printf
	pop rsi
.call.end231:
	push rax
	lea rax, qword ptr [rip + .LC193]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + while_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else232
	call _printf
	jmp .call.end232
.call.else232:
	push rsi
	call _printf
	pop rsi
.call.end232:
	push rax
	lea rax, DWORD PTR [rip + while_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-172]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-148]
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
	jne .call.else233
	call _gen
	jmp .call.end233
.call.else233:
	push rsi
	call _gen
	pop rsi
.call.end233:
	push rax
	lea rax, [rbp-172]
	push rax
	lea rax, DWORD PTR [rip + while_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, DWORD PTR [rip + while_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-168]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC194]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + while_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else234
	call _printf
	jmp .call.end234
.call.else234:
	push rsi
	call _printf
	pop rsi
.call.end234:
	push rax
	lea rax, qword ptr [rip + .LC195]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + while_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else235
	call _printf
	jmp .call.end235
.call.else235:
	push rsi
	call _printf
	pop rsi
.call.end235:
	push rax
	lea rax, DWORD PTR [rip + while_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-172]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	lea rax, [rbp-108]
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
.Lswitch12.case14:
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
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
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-108]
	push rax
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	push 2
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	lea rax, [rax-4]
	push rax
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-180]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-148]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else236
	call _gen
	jmp .call.end236
.call.else236:
	push rsi
	call _gen
	pop rsi
.call.end236:
	push rax
	lea rax, [rbp-180]
	push rax
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-176]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC196]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else237
	call _printf
	jmp .call.end237
.call.else237:
	push rsi
	call _printf
	pop rsi
.call.end237:
	push rax
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-180]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-148]
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
	jne .call.else238
	call _gen
	jmp .call.end238
.call.else238:
	push rsi
	call _gen
	pop rsi
.call.end238:
	push rax
	lea rax, [rbp-180]
	push rax
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-176]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC197]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else239
	call _printf
	jmp .call.end239
.call.else239:
	push rsi
	call _printf
	pop rsi
.call.end239:
	push rax
	lea rax, qword ptr [rip + .LC198]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else240
	call _printf
	jmp .call.end240
.call.else240:
	push rsi
	call _printf
	pop rsi
.call.end240:
	push rax
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-180]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-148]
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
	jne .call.else241
	call _gen
	jmp .call.end241
.call.else241:
	push rsi
	call _gen
	pop rsi
.call.end241:
	push rax
	lea rax, [rbp-180]
	push rax
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-176]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC199]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else242
	call _printf
	jmp .call.end242
.call.else242:
	push rsi
	call _printf
	pop rsi
.call.end242:
	push rax
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-180]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-148]
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
	jne .call.else243
	call _gen
	jmp .call.end243
.call.else243:
	push rsi
	call _gen
	pop rsi
.call.end243:
	push rax
	lea rax, [rbp-180]
	push rax
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-176]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, qword ptr [rip + .LC200]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else244
	call _printf
	jmp .call.end244
.call.else244:
	push rsi
	call _printf
	pop rsi
.call.end244:
	push rax
	lea rax, qword ptr [rip + .LC201]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else245
	call _printf
	jmp .call.end245
.call.else245:
	push rsi
	call _printf
	pop rsi
.call.end245:
	push rax
	lea rax, DWORD PTR [rip + for_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-180]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	lea rax, [rbp-108]
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
.Lswitch12.case15:
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
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
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-108]
	push rax
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	push 3
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	lea rax, [rax-4]
	push rax
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
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
	lea rax, qword ptr [rip + .LC202]
	push rax
	pop rsi
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else246
	call _fprintf
	jmp .call.end246
.call.else246:
	push rsi
	call _fprintf
	pop rsi
.call.end246:
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop9:
	lea rax, [rbp-200]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-148]
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
	lea rax, [rbp-192]
	push rax
	lea rax, [rbp-148]
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
	lea rax, [rbp-200]
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
	lea rax, [rbp-192]
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
	test rax, rax
	je .Lif.then27
	jmp .Lif.else27
.Lif.then27:
	lea rax, [rbp-148]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else247
	call _gen
	jmp .call.end247
.call.else247:
	push rsi
	call _gen
	pop rsi
.call.end247:
	push rax
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-188]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-192]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else248
	call _gen
	jmp .call.end248
.call.else248:
	push rsi
	call _gen
	pop rsi
.call.end248:
	push rax
	lea rax, [rbp-188]
	push rax
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-184]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-4]
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
	jne .call.else249
	call _gen_pop
	jmp .call.end249
.call.else249:
	push rsi
	call _gen_pop
	pop rsi
.call.end249:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else250
	call _gen_pop
	jmp .call.end250
.call.else250:
	push rsi
	call _gen_pop
	pop rsi
.call.end250:
	push rax
	lea rax, qword ptr [rip + .LC203]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else251
	call _printf
	jmp .call.end251
.call.else251:
	push rsi
	call _printf
	pop rsi
.call.end251:
	push rax
	lea rax, qword ptr [rip + .LC204]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-200]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else252
	call _printf
	jmp .call.end252
.call.else252:
	push rsi
	call _printf
	pop rsi
.call.end252:
	push rax
	jmp .Lif.end27
.Lif.else27:
	lea rax, qword ptr [rip + .LC205]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else253
	call _printf
	jmp .call.end253
.call.else253:
	push rsi
	call _printf
	pop rsi
.call.end253:
	push rax
	jmp .Lif.end27
.Lif.end27:
.Lfor.inc9:
	lea rax, [rbp-200]
	push rax
	lea rax, [rbp-200]
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
	lea rax, qword ptr [rip + .LC206]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else254
	call _printf
	jmp .call.end254
.call.else254:
	push rsi
	call _printf
	pop rsi
.call.end254:
	push rax
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop10:
	lea rax, [rbp-204]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-148]
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
	je .Lfor.end10
	lea rax, [rbp-192]
	push rax
	lea rax, [rbp-148]
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
	lea rax, [rbp-204]
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
	lea rax, [rbp-192]
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
	test rax, rax
	je .Lif.then28
	jmp .Lif.else28
.Lif.then28:
	lea rax, qword ptr [rip + .LC207]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	lea rax, [rbp-204]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rdx
	mov rax, 3
	test rsp, 15
	jne .call.else255
	call _printf
	jmp .call.end255
.call.else255:
	push rsi
	call _printf
	pop rsi
.call.end255:
	push rax
	jmp .Lif.end28
.Lif.else28:
	lea rax, qword ptr [rip + .LC208]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else256
	call _printf
	jmp .call.end256
.call.else256:
	push rsi
	call _printf
	pop rsi
.call.end256:
	push rax
	jmp .Lif.end28
.Lif.end28:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop11:
	lea rax, [rbp-208]
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
	je .Lfor.end11
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-188]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, [rbp-192]
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
	lea rax, [rbp-208]
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
	jne .call.else257
	call _gen
	jmp .call.end257
.call.else257:
	push rsi
	call _gen
	pop rsi
.call.end257:
	push rax
	lea rax, [rbp-188]
	push rax
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-184]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.inc11:
	lea rax, [rbp-208]
	push rax
	lea rax, [rbp-208]
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
	jmp .Lfor.loop11
.Lfor.end11:
.Lfor.inc10:
	lea rax, [rbp-204]
	push rax
	lea rax, [rbp-204]
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
	jmp .Lfor.loop10
.Lfor.end10:
	lea rax, qword ptr [rip + .LC209]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else258
	call _printf
	jmp .call.end258
.call.else258:
	push rsi
	call _printf
	pop rsi
.call.end258:
	push rax
	lea rax, DWORD PTR [rip + switch_cnt@GOTPCREL]
	push rax
	lea rax, [rbp-188]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	lea rax, [rbp-108]
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
.Lswitch12.case16:
	lea rax, QWORD PTR [rip + stderr@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, qword ptr [rip + .LC210]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else259
	call _fprintf
	jmp .call.end259
.call.else259:
	push rsi
	call _fprintf
	pop rsi
.call.end259:
	push rax
	push 0
	pop rbp
	ret
.Lswitch12.case17:
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 1
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then29
	jmp .Lif.else29
.Lif.then29:
	lea rax, qword ptr [rip + .LC211]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	lea rax, [rax-4]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else260
	call _printf
	jmp .call.end260
.call.else260:
	push rsi
	call _printf
	pop rsi
.call.end260:
	push rax
	jmp .Lif.end29
.Lif.else29:
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 2
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then30
	jmp .Lif.else30
.Lif.then30:
	lea rax, qword ptr [rip + .LC212]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	lea rax, [rax-4]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else261
	call _printf
	jmp .call.end261
.call.else261:
	push rsi
	call _printf
	pop rsi
.call.end261:
	push rax
	jmp .Lif.end30
.Lif.else30:
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 3
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then31
	jmp .Lif.end31
.Lif.then31:
	lea rax, qword ptr [rip + .LC213]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	lea rax, [rax-4]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else262
	call _printf
	jmp .call.end262
.call.else262:
	push rsi
	call _printf
	pop rsi
.call.end262:
	push rax
.Lif.end31:
	jmp .Lif.end30
.Lif.end30:
	jmp .Lif.end29
.Lif.end29:
	push 0
	pop rbp
	ret
.Lswitch12.case18:
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 1
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then32
	jmp .Lif.else32
.Lif.then32:
	lea rax, qword ptr [rip + .LC214]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	lea rax, [rax-4]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else263
	call _printf
	jmp .call.end263
.call.else263:
	push rsi
	call _printf
	pop rsi
.call.end263:
	push rax
	jmp .Lif.end32
.Lif.else32:
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	lea rax, [rax-0]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 2
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then33
	jmp .Lif.end33
.Lif.then33:
	lea rax, qword ptr [rip + .LC215]
	push rax
	pop rdi
	lea rax, QWORD PTR [rip + cur_loop@GOTPCREL]
	push rax
	pop rax
	lea rax, [rax-4]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else264
	call _printf
	jmp .call.end264
.call.else264:
	push rsi
	call _printf
	pop rsi
.call.end264:
	push rax
.Lif.end33:
	jmp .Lif.end32
.Lif.end32:
	push 0
	pop rbp
	ret
.Lswitch12.case19:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop12:
	lea rax, [rbp-212]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-148]
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
	je .Lfor.end12
	lea rax, [rbp-148]
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
	lea rax, [rbp-212]
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
	jne .call.else265
	call _gen
	jmp .call.end265
.call.else265:
	push rsi
	call _gen
	pop rsi
.call.end265:
	push rax
.Lfor.inc12:
	lea rax, [rbp-212]
	push rax
	lea rax, [rbp-212]
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
	jmp .Lfor.loop12
.Lfor.end12:
	push 0
	pop rbp
	ret
.Lswitch12.case20:
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop13:
	lea rax, [rbp-216]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	lea rax, [rbp-148]
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
	lea rax, [rbp-216]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 6
	pop rbx
	pop rax
	cmp rax, rbx
	setl al
	movzx rax, al
	push rax
	pop rbx
	pop rax
	and eax, ebx
	push rax
	cmp rax, 0
	je .Lfor.end13
	lea rax, [rbp-148]
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
	lea rax, [rbp-216]
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
	jne .call.else266
	call _gen
	jmp .call.end266
.call.else266:
	push rsi
	call _gen
	pop rsi
.call.end266:
	push rax
	lea rax, QWORD PTR [rip + kari@GOTPCREL]
	push rax
	pop rdi
	push 100
	pop rsi
	lea rax, qword ptr [rip + .LC216]
	push rax
	pop rdx
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + args_list@GOTPCREL]
	push rax
	lea rax, [rbp-216]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 4
	pop rbx
	pop rax
	mul rbx
	push rax
	push 4
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
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else267
	call _snprintf
	jmp .call.end267
.call.else267:
	push rsi
	call _snprintf
	pop rsi
.call.end267:
	push rax
	lea rax, QWORD PTR [rip + kari@GOTPCREL]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else268
	call _gen_pop
	jmp .call.end268
.call.else268:
	push rsi
	call _gen_pop
	pop rsi
.call.end268:
	push rax
.Lfor.inc13:
	lea rax, [rbp-216]
	push rax
	lea rax, [rbp-216]
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
	jmp .Lfor.loop13
.Lfor.end13:
	lea rax, qword ptr [rip + .LC217]
	push rax
	pop rdi
	lea rax, [rbp-148]
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
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else269
	call _printf
	jmp .call.end269
.call.else269:
	push rsi
	call _printf
	pop rsi
.call.end269:
	push rax
	lea rax, qword ptr [rip + .LC218]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else270
	call _printf
	jmp .call.end270
.call.else270:
	push rsi
	call _printf
	pop rsi
.call.end270:
	push rax
	lea rax, qword ptr [rip + .LC219]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + call_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else271
	call _printf
	jmp .call.end271
.call.else271:
	push rsi
	call _printf
	pop rsi
.call.end271:
	push rax
	lea rax, qword ptr [rip + .LC220]
	push rax
	pop rdi
	lea rax, [rbp-148]
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
	lea rax, [rbp-148]
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
	jne .call.else272
	call _get_name
	jmp .call.end272
.call.else272:
	push rsi
	call _get_name
	pop rsi
.call.end272:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else273
	call _printf
	jmp .call.end273
.call.else273:
	push rsi
	call _printf
	pop rsi
.call.end273:
	push rax
	lea rax, qword ptr [rip + .LC221]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + call_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else274
	call _printf
	jmp .call.end274
.call.else274:
	push rsi
	call _printf
	pop rsi
.call.end274:
	push rax
	lea rax, qword ptr [rip + .LC222]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + call_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else275
	call _printf
	jmp .call.end275
.call.else275:
	push rsi
	call _printf
	pop rsi
.call.end275:
	push rax
	lea rax, qword ptr [rip + .LC223]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else276
	call _printf
	jmp .call.end276
.call.else276:
	push rsi
	call _printf
	pop rsi
.call.end276:
	push rax
	lea rax, qword ptr [rip + .LC224]
	push rax
	pop rdi
	lea rax, [rbp-148]
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
	lea rax, [rbp-148]
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
	jne .call.else277
	call _get_name
	jmp .call.end277
.call.else277:
	push rsi
	call _get_name
	pop rsi
.call.end277:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else278
	call _printf
	jmp .call.end278
.call.else278:
	push rsi
	call _printf
	pop rsi
.call.end278:
	push rax
	lea rax, qword ptr [rip + .LC225]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else279
	call _printf
	jmp .call.end279
.call.else279:
	push rsi
	call _printf
	pop rsi
.call.end279:
	push rax
	lea rax, qword ptr [rip + .LC226]
	push rax
	pop rdi
	lea rax, DWORD PTR [rip + call_cnt@GOTPCREL]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else280
	call _printf
	jmp .call.end280
.call.else280:
	push rsi
	call _printf
	pop rsi
.call.end280:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else281
	call _gen_push
	jmp .call.end281
.call.else281:
	push rsi
	call _gen_push
	pop rsi
.call.end281:
	push rax
	lea rax, DWORD PTR [rip + call_cnt@GOTPCREL]
	push rax
	lea rax, DWORD PTR [rip + call_cnt@GOTPCREL]
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
	push 0
	pop rbp
	ret
.Lswitch12.case21:
	lea rax, qword ptr [rip + .LC227]
	push rax
	pop rdi
	lea rax, [rbp-148]
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
	lea rax, [rbp-148]
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
	jne .call.else282
	call _get_name
	jmp .call.end282
.call.else282:
	push rsi
	call _get_name
	pop rsi
.call.end282:
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else283
	call _printf
	jmp .call.end283
.call.else283:
	push rsi
	call _printf
	pop rsi
.call.end283:
	push rax
	lea rax, qword ptr [rip + .LC228]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else284
	call _gen_push
	jmp .call.end284
.call.else284:
	push rsi
	call _gen_push
	pop rsi
.call.end284:
	push rax
	lea rax, qword ptr [rip + .LC229]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else285
	call _printf
	jmp .call.end285
.call.else285:
	push rsi
	call _printf
	pop rsi
.call.end285:
	push rax
	lea rax, QWORD PTR [rip + hashs@GOTPCREL]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rdi
	lea rax, [rbp-148]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else286
	call _search_hash
	jmp .call.end286
.call.else286:
	push rsi
	call _search_hash
	pop rsi
.call.end286:
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-220]
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
	je .Lif.then34
	jmp .Lif.end34
.Lif.then34:
	lea rax, qword ptr [rip + .LC230]
	push rax
	pop rdi
	lea rax, [rbp-220]
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
	lea rax, [rbp-220]
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
	pop rsi
	mov rax, 2
	test rsp, 15
	jne .call.else287
	call _printf
	jmp .call.end287
.call.else287:
	push rsi
	call _printf
	pop rsi
.call.end287:
	push rax
.Lif.end34:
	lea rax, [rbp-148]
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
	pop rax
	lea rax, [rax-36]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	mov QWORD PTR [rax], rbx
	lea rax, [rbp-228]
	push rax
	lea rax, [rbp-228]
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
	push 0
	pop rbx
	pop rax
	mov DWORD PTR [rax], ebx
.Lfor.loop14:
	lea rax, [rbp-236]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 6
	pop rbx
	pop rax
	cmp rax, rbx
	setl al
	movzx rax, al
	push rax
	lea rax, [rbp-228]
	push rax
	pop rax
	mov rax, QWORD PTR [rax]
	push rax
	pop rbx
	pop rax
	and eax, ebx
	push rax
	cmp rax, 0
	je .Lfor.end14
	lea rax, [rbp-148]
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
	lea rax, [rbp-8]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	pop rax
	pop rbx
	cmp rax, rbx
	je .Lif.then35
	jmp .Lif.else35
.Lif.then35:
	lea rax, qword ptr [rip + .LC231]
	push rax
	pop rdi
	lea rax, [rbp-148]
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
	jne .call.else288
	call _gen_type
	jmp .call.end288
.call.else288:
	push rsi
	call _gen_type
	pop rsi
.call.end288:
	push rax
	pop rsi
	lea rax, [rbp-228]
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
	pop rdx
	lea rax, QWORD PTR [rip + regs8@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + args_list@GOTPCREL]
	push rax
	lea rax, [rbp-236]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 4
	pop rbx
	pop rax
	mul rbx
	push rax
	push 4
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
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else289
	call _printf
	jmp .call.end289
.call.else289:
	push rsi
	call _printf
	pop rsi
.call.end289:
	push rax
	jmp .Lif.end35
.Lif.else35:
	lea rax, [rbp-148]
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
	lea rax, [rbp-4]
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
	lea rax, [rbp-148]
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
	lea rax, [rbp-24]
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
	je .Lif.then36
	jmp .Lif.else36
.Lif.then36:
	lea rax, qword ptr [rip + .LC232]
	push rax
	pop rdi
	lea rax, [rbp-148]
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
	jne .call.else290
	call _gen_type
	jmp .call.end290
.call.else290:
	push rsi
	call _gen_type
	pop rsi
.call.end290:
	push rax
	pop rsi
	lea rax, [rbp-228]
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
	pop rdx
	lea rax, QWORD PTR [rip + regs32@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + args_list@GOTPCREL]
	push rax
	lea rax, [rbp-236]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 4
	pop rbx
	pop rax
	mul rbx
	push rax
	push 4
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
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else291
	call _printf
	jmp .call.end291
.call.else291:
	push rsi
	call _printf
	pop rsi
.call.end291:
	push rax
	jmp .Lif.end36
.Lif.else36:
	lea rax, qword ptr [rip + .LC233]
	push rax
	pop rdi
	lea rax, [rbp-148]
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
	jne .call.else292
	call _gen_type
	jmp .call.end292
.call.else292:
	push rsi
	call _gen_type
	pop rsi
.call.end292:
	push rax
	pop rsi
	lea rax, [rbp-228]
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
	pop rdx
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, QWORD PTR [rip + args_list@GOTPCREL]
	push rax
	lea rax, [rbp-236]
	push rax
	pop rax
	mov eax, DWORD PTR [rax]
	push rax
	push 4
	pop rbx
	pop rax
	mul rbx
	push rax
	push 4
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
	pop rcx
	mov rax, 4
	test rsp, 15
	jne .call.else293
	call _printf
	jmp .call.end293
.call.else293:
	push rsi
	call _printf
	pop rsi
.call.end293:
	push rax
	jmp .Lif.end36
.Lif.end36:
	jmp .Lif.end35
.Lif.end35:
	lea rax, [rbp-228]
	push rax
	lea rax, [rbp-228]
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
.Lfor.inc14:
	lea rax, [rbp-236]
	push rax
	lea rax, [rbp-236]
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
	jmp .Lfor.loop14
.Lfor.end14:
	lea rax, [rbp-148]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else294
	call _gen
	jmp .call.end294
.call.else294:
	push rsi
	call _gen
	pop rsi
.call.end294:
	push rax
	push 0
	pop rbp
	ret
.Lswitch12.case22:
	push 0
	pop rbp
	ret
.Lswitch12.default:
	jmp .Lswitch12.end
.Lswitch12.end:
	lea rax, [rbp-148]
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
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else295
	call _gen
	jmp .call.end295
.call.else295:
	push rsi
	call _gen
	pop rsi
.call.end295:
	push rax
	lea rax, [rbp-148]
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
	jne .call.else296
	call _gen
	jmp .call.end296
.call.else296:
	push rsi
	call _gen
	pop rsi
.call.end296:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-4]
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
	jne .call.else297
	call _gen_pop
	jmp .call.end297
.call.else297:
	push rsi
	call _gen_pop
	pop rsi
.call.end297:
	push rax
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else298
	call _gen_pop
	jmp .call.end298
.call.else298:
	push rsi
	call _gen_pop
	pop rsi
.call.end298:
	push rax
	lea rax, [rbp-148]
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
	je .Lswitch13.case0
	lea rax, [rbp-148]
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
	je .Lswitch13.case1
	lea rax, [rbp-148]
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
	je .Lswitch13.case2
	lea rax, [rbp-148]
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
	je .Lswitch13.case3
	lea rax, [rbp-148]
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
	je .Lswitch13.case4
	lea rax, [rbp-148]
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
	je .Lswitch13.case5
	lea rax, [rbp-148]
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
	je .Lswitch13.case6
	lea rax, [rbp-148]
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
	je .Lswitch13.case7
	lea rax, [rbp-148]
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
	je .Lswitch13.case8
	lea rax, [rbp-148]
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
	je .Lswitch13.case9
	lea rax, [rbp-148]
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
	je .Lswitch13.case10
	lea rax, [rbp-148]
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
	je .Lswitch13.case11
	lea rax, [rbp-148]
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
	je .Lswitch13.case12
	lea rax, [rbp-148]
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
	je .Lswitch13.case13
	jmp .Lswitch13.default
	jmp .Lswitch13.end
.Lswitch13.case0:
	lea rax, qword ptr [rip + .LC234]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else299
	call _printf
	jmp .call.end299
.call.else299:
	push rsi
	call _printf
	pop rsi
.call.end299:
	push rax
	jmp .Lswitch13.end
.Lswitch13.case1:
	lea rax, qword ptr [rip + .LC235]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else300
	call _printf
	jmp .call.end300
.call.else300:
	push rsi
	call _printf
	pop rsi
.call.end300:
	push rax
	jmp .Lswitch13.end
.Lswitch13.case2:
	lea rax, qword ptr [rip + .LC236]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else301
	call _printf
	jmp .call.end301
.call.else301:
	push rsi
	call _printf
	pop rsi
.call.end301:
	push rax
	jmp .Lswitch13.end
.Lswitch13.case3:
	lea rax, qword ptr [rip + .LC237]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else302
	call _printf
	jmp .call.end302
.call.else302:
	push rsi
	call _printf
	pop rsi
.call.end302:
	push rax
	lea rax, qword ptr [rip + .LC238]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else303
	call _printf
	jmp .call.end303
.call.else303:
	push rsi
	call _printf
	pop rsi
.call.end303:
	push rax
	jmp .Lswitch13.end
.Lswitch13.case4:
	lea rax, qword ptr [rip + .LC239]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else304
	call _printf
	jmp .call.end304
.call.else304:
	push rsi
	call _printf
	pop rsi
.call.end304:
	push rax
	lea rax, qword ptr [rip + .LC240]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else305
	call _printf
	jmp .call.end305
.call.else305:
	push rsi
	call _printf
	pop rsi
.call.end305:
	push rax
	lea rax, qword ptr [rip + .LC241]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else306
	call _printf
	jmp .call.end306
.call.else306:
	push rsi
	call _printf
	pop rsi
.call.end306:
	push rax
	jmp .Lswitch13.end
.Lswitch13.case5:
	lea rax, qword ptr [rip + .LC242]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else307
	call _printf
	jmp .call.end307
.call.else307:
	push rsi
	call _printf
	pop rsi
.call.end307:
	push rax
	lea rax, qword ptr [rip + .LC243]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else308
	call _printf
	jmp .call.end308
.call.else308:
	push rsi
	call _printf
	pop rsi
.call.end308:
	push rax
	jmp .Lswitch13.end
.Lswitch13.case6:
	lea rax, qword ptr [rip + .LC244]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else309
	call _printf
	jmp .call.end309
.call.else309:
	push rsi
	call _printf
	pop rsi
.call.end309:
	push rax
	lea rax, qword ptr [rip + .LC245]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else310
	call _printf
	jmp .call.end310
.call.else310:
	push rsi
	call _printf
	pop rsi
.call.end310:
	push rax
	jmp .Lswitch13.end
.Lswitch13.case7:
	lea rax, qword ptr [rip + .LC246]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else311
	call _printf
	jmp .call.end311
.call.else311:
	push rsi
	call _printf
	pop rsi
.call.end311:
	push rax
	lea rax, qword ptr [rip + .LC247]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else312
	call _printf
	jmp .call.end312
.call.else312:
	push rsi
	call _printf
	pop rsi
.call.end312:
	push rax
	lea rax, qword ptr [rip + .LC248]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else313
	call _printf
	jmp .call.end313
.call.else313:
	push rsi
	call _printf
	pop rsi
.call.end313:
	push rax
	jmp .Lswitch13.end
.Lswitch13.case8:
	lea rax, qword ptr [rip + .LC249]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else314
	call _printf
	jmp .call.end314
.call.else314:
	push rsi
	call _printf
	pop rsi
.call.end314:
	push rax
	lea rax, qword ptr [rip + .LC250]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else315
	call _printf
	jmp .call.end315
.call.else315:
	push rsi
	call _printf
	pop rsi
.call.end315:
	push rax
	lea rax, qword ptr [rip + .LC251]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else316
	call _printf
	jmp .call.end316
.call.else316:
	push rsi
	call _printf
	pop rsi
.call.end316:
	push rax
	jmp .Lswitch13.end
.Lswitch13.case9:
	lea rax, qword ptr [rip + .LC252]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else317
	call _printf
	jmp .call.end317
.call.else317:
	push rsi
	call _printf
	pop rsi
.call.end317:
	push rax
	lea rax, qword ptr [rip + .LC253]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else318
	call _printf
	jmp .call.end318
.call.else318:
	push rsi
	call _printf
	pop rsi
.call.end318:
	push rax
	lea rax, qword ptr [rip + .LC254]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else319
	call _printf
	jmp .call.end319
.call.else319:
	push rsi
	call _printf
	pop rsi
.call.end319:
	push rax
	jmp .Lswitch13.end
.Lswitch13.case10:
	lea rax, qword ptr [rip + .LC255]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else320
	call _printf
	jmp .call.end320
.call.else320:
	push rsi
	call _printf
	pop rsi
.call.end320:
	push rax
	lea rax, qword ptr [rip + .LC256]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else321
	call _printf
	jmp .call.end321
.call.else321:
	push rsi
	call _printf
	pop rsi
.call.end321:
	push rax
	lea rax, qword ptr [rip + .LC257]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else322
	call _printf
	jmp .call.end322
.call.else322:
	push rsi
	call _printf
	pop rsi
.call.end322:
	push rax
	jmp .Lswitch13.end
.Lswitch13.case11:
	lea rax, qword ptr [rip + .LC258]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else323
	call _printf
	jmp .call.end323
.call.else323:
	push rsi
	call _printf
	pop rsi
.call.end323:
	push rax
	jmp .Lswitch13.end
.Lswitch13.case12:
	lea rax, qword ptr [rip + .LC259]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else324
	call _printf
	jmp .call.end324
.call.else324:
	push rsi
	call _printf
	pop rsi
.call.end324:
	push rax
	jmp .Lswitch13.end
.Lswitch13.case13:
	lea rax, qword ptr [rip + .LC260]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else325
	call _printf
	jmp .call.end325
.call.else325:
	push rsi
	call _printf
	pop rsi
.call.end325:
	push rax
	jmp .Lswitch13.end
.Lswitch13.default:
	lea rax, qword ptr [rip + .LC261]
	push rax
	pop rdi
	mov rax, 1
	test rsp, 15
	jne .call.else326
	call _error
	jmp .call.end326
.call.else326:
	push rsi
	call _error
	pop rsi
.call.end326:
	push rax
.Lswitch13.end:
	lea rax, QWORD PTR [rip + regs64@GOTPCREL]
	push rax
	lea rax, [rbp-0]
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
	jne .call.else327
	call _gen_push
	jmp .call.end327
.call.else327:
	push rsi
	call _gen_push
	pop rsi
.call.end327:
	push rax
.LC0:
	.string "rax"
.LC1:
	.string "rbx"
.LC2:
	.string "rcx"
.LC3:
	.string "rdx"
.LC4:
	.string "rsi"
.LC5:
	.string "rdi"
.LC6:
	.string "rbp"
.LC7:
	.string "rsp"
.LC8:
	.string "r8"
.LC9:
	.string "r9"
.LC10:
	.string "r10"
.LC11:
	.string "r11"
.LC12:
	.string "r12"
.LC13:
	.string "r13"
.LC14:
	.string "r14"
.LC15:
	.string "r15"
.LC16:
	.string "eax"
.LC17:
	.string "ebx"
.LC18:
	.string "ecx"
.LC19:
	.string "edx"
.LC20:
	.string "esi"
.LC21:
	.string "edi"
.LC22:
	.string "ebp"
.LC23:
	.string "esp"
.LC24:
	.string "r8d"
.LC25:
	.string "r9d"
.LC26:
	.string "r10d"
.LC27:
	.string "r11d"
.LC28:
	.string "r12d"
.LC29:
	.string "r13d"
.LC30:
	.string "r14d"
.LC31:
	.string "r15d"
.LC32:
	.string "ax"
.LC33:
	.string "bx"
.LC34:
	.string "cx"
.LC35:
	.string "dx"
.LC36:
	.string "si"
.LC37:
	.string "di"
.LC38:
	.string "bp"
.LC39:
	.string "sp"
.LC40:
	.string "r8w"
.LC41:
	.string "r9w"
.LC42:
	.string "r10w"
.LC43:
	.string "r11w"
.LC44:
	.string "r12w"
.LC45:
	.string "r13w"
.LC46:
	.string "r14w"
.LC47:
	.string "r15w"
.LC48:
	.string "al"
.LC49:
	.string "bl"
.LC50:
	.string "cl"
.LC51:
	.string "dl"
.LC52:
	.string "sil"
.LC53:
	.string "dil"
.LC54:
	.string "bpl"
.LC55:
	.string "spl"
.LC56:
	.string "r8b"
.LC57:
	.string "r9b"
.LC58:
	.string "r10b"
.LC59:
	.string "r11b"
.LC60:
	.string "r12b"
.LC61:
	.string "r13b"
.LC62:
	.string "r14b"
.LC63:
	.string "r15b"
.LC64:
	.string "NUM %d\n"
.LC65:
	.string "STRING %s"
.LC66:
	.string "STRUCT %s"
.LC67:
	.string "ENUM\n"
.LC68:
	.string "DOT\n"
.LC69:
	.string "LVAR %s %s"
.LC70:
	.string "VARDECL %s %s"
.LC71:
	.string "ADDR %s"
.LC72:
	.string "DEREF\n"
.LC73:
	.string "ASSIGN\n"
.LC74:
	.string "INIT\n"
.LC75:
	.string "RETRUN\n"
.LC76:
	.string "IF\n"
.LC77:
	.string "WHILE\n"
.LC78:
	.string "FOR\n"
.LC79:
	.string "SWITCH\n"
.LC80:
	.string "CASE\n"
.LC81:
	.string "BREAK\n"
.LC82:
	.string "CONTINUE\n"
.LC83:
	.string "BLOCK\n"
.LC84:
	.string "CALL %s"
.LC85:
	.string "DEF %s"
.LC86:
	.string "DECL %s"
.LC87:
	.string "ADD\n"
.LC88:
	.string "SUB\n"
.LC89:
	.string "MUL\n"
.LC90:
	.string "DIV\n"
.LC91:
	.string "MOD\n"
.LC92:
	.string "SAL\n"
.LC93:
	.string "SAR\n"
.LC94:
	.string "LT\n"
.LC95:
	.string "LE\n"
.LC96:
	.string "EQ\n"
.LC97:
	.string "NE\n"
.LC98:
	.string "AND\n"
.LC99:
	.string "XOR\n"
.LC100:
	.string "OR\n"
.LC101:
	.string "NOT\n"
.LC102:
	.string "\0"
.LC103:
	.string "	.zero %d\n"
.LC104:
	.string "	.long %d\n"
.LC105:
	.string "	.byte '%s'\n"
.LC106:
	.string "	.ascii \"%s\\0\"\n"
.LC107:
	.string "	.asciz \"%s\"\n"
.LC108:
	.string "	.string \"%s\"\n"
.LC109:
	.string "%s.%d:\n"
.LC110:
	.string "	.globl %s\n"
.LC111:
	.string "%s:\n"
.LC112:
	.string "	.quad %s.%d\n"
.LC113:
	.string "	.byte 0\n"
.LC114:
	.string "	.globl %s\n"
.LC115:
	.string "%s:\n"
.LC116:
	.string "%s"
.LC117:
	.string "%s + %s"
.LC118:
	.string "%s - %s"
.LC119:
	.string "%s"
.LC120:
	.string "%d"
.LC121:
	.string ""
.LC122:
	.string "	.ascii \"%s\\0\"\n"
.LC123:
	.string "	.quad %d\n"
.LC124:
	.string "	.quad %s\n"
.LC125:
	.string "	.globl %s\n"
.LC126:
	.string "%s:\n"
.LC127:
	.string "	.globl %s\n"
.LC128:
	.string "%s:\n"
.LC129:
	.string "%s:\n"
.LC130:
	.string "%s:\n"
.LC131:
	.string "%s:\n"
.LC132:
	.string "I don't know this global kind\n"
.LC133:
	.string ".LC%d:\n"
.LC134:
	.string "\\'"
.LC135:
	.string ".extern "
.LC136:
	.string "_%s, "
.LC137:
	.string "_%s\n"
.LC138:
	.string ".global "
.LC139:
	.string "_%s, "
.LC140:
	.string "_%s\n"
.LC141:
	.string "	push %s\n"
.LC142:
	.string "	pop %s\n"
.LC143:
	.string ".intel_syntax noprefix\n"
.LC144:
	.string ""
.LC145:
	.string "DWORD PTR"
.LC146:
	.string "BYTE PTR"
.LC147:
	.string "QWORD PTR"
.LC148:
	.string "QWORD PTR"
.LC149:
	.string "QWORD PTR"
.LC150:
	.string "DWORD PTR"
.LC151:
	.string "	lea rax, [rbp-%d]\n"
.LC152:
	.string "	lea rax, %s [rip + %s@GOTPCREL]\n"
.LC153:
	.string "	lea rax, [rbp-%d]\n"
.LC154:
	.string "	lea rax, [rax-%d]\n"
.LC155:
	.string "It is not lvalue! %s %d\n"
.LC156:
	.string "	mov %s, %s [rax]\n"
.LC157:
	.string "	mov eax, %s [rax]\n"
.LC158:
	.string "	mov rax, %s [rax]\n"
.LC159:
	.string "	mov %s [rax], %s\n"
.LC160:
	.string "	mov %s [rax], ebx\n"
.LC161:
	.string "	mov %s [rax], rbx\n"
.LC162:
	.string "	cmp rax, rbx\n"
.LC163:
	.string "	test rax, rax\n"
.LC164:
	.string "je"
.LC165:
	.string "jl"
.LC166:
	.string "jle"
.LC167:
	.string "je"
.LC168:
	.string "jne"
.LC169:
	.string "je"
.LC170:
	.string "条件式の中に知らないものが入ってます\n"
.LC171:
	.string ""
.LC172:
	.string "%d"
.LC173:
	.string "	lea rax, qword ptr [rip + .LC%d]\n"
.LC174:
	.string "	not eax\n"
.LC175:
	.string "	mov %s [rbp-%d], eax\n"
.LC176:
	.string "	mov %s [rbp-%d], rax\n"
.LC177:
	.string "	mov %s [rbp-%d], 0\n"
.LC178:
	.string "rbp"
.LC179:
	.string "	ret\n"
.LC180:
	.string "	%s .Lif.then%d\n"
.LC181:
	.string "	jmp .Lif.else%d\n"
.LC182:
	.string ".Lif.then%d:\n"
.LC183:
	.string "	jmp .Lif.end%d\n"
.LC184:
	.string ".Lif.else%d:\n"
.LC185:
	.string "	jmp .Lif.end%d\n"
.LC186:
	.string ".Lif.end%d:\n"
.LC187:
	.string "	%s .Lif.then%d\n"
.LC188:
	.string "	jmp .Lif.end%d\n"
.LC189:
	.string ".Lif.then%d:\n"
.LC190:
	.string ".Lif.end%d:\n"
.LC191:
	.string ".Lwhile.loop%d:\n"
.LC192:
	.string "	cmp rax, 0\n"
.LC193:
	.string "	je .Lwhile.end%d\n"
.LC194:
	.string "	jmp .Lwhile.loop%d\n"
.LC195:
	.string ".Lwhile.end%d:\n"
.LC196:
	.string ".Lfor.loop%d:\n"
.LC197:
	.string "	cmp rax, 0\n"
.LC198:
	.string "	je .Lfor.end%d\n"
.LC199:
	.string ".Lfor.inc%d:\n"
.LC200:
	.string "	jmp .Lfor.loop%d\n"
.LC201:
	.string ".Lfor.end%d:\n"
.LC202:
	.string "%d\n"
.LC203:
	.string "	cmp rax, rbx\n"
.LC204:
	.string "	je .Lswitch%d.case%d\n"
.LC205:
	.string "	jmp .Lswitch%d.default\n"
.LC206:
	.string "	jmp .Lswitch%d.end\n"
.LC207:
	.string ".Lswitch%d.case%d:\n"
.LC208:
	.string ".Lswitch%d.default:\n"
.LC209:
	.string ".Lswitch%d.end:\n"
.LC210:
	.string "called switch-case is out of a switch\n"
.LC211:
	.string "	jmp .Lwhile.end%d\n"
.LC212:
	.string "	jmp .Lfor.end%d\n"
.LC213:
	.string "	jmp .Lswitch%d.end\n"
.LC214:
	.string "	jmp .Lwhile.loop%d\n"
.LC215:
	.string "	jmp .Lfor.inc%d\n"
.LC216:
	.string "%s"
.LC217:
	.string "	mov rax, %d\n"
.LC218:
	.string "	test rsp, 15\n"
.LC219:
	.string "	jne .call.else%d\n"
.LC220:
	.string "	call _%s\n"
.LC221:
	.string "	jmp .call.end%d\n"
.LC222:
	.string ".call.else%d:\n"
.LC223:
	.string "	push rsi\n"
.LC224:
	.string "	call _%s\n"
.LC225:
	.string "	pop rsi\n"
.LC226:
	.string ".call.end%d:\n"
.LC227:
	.string "_%s:\n"
.LC228:
	.string "rbp"
.LC229:
	.string "	mov rbp, rsp\n"
.LC230:
	.string "	sub rsp, %d\n"
.LC231:
	.string "	mov %s [rbp-%d], %s\n"
.LC232:
	.string "	mov %s [rbp-%d], %s\n"
.LC233:
	.string "	mov %s [rbp-%d], %s\n"
.LC234:
	.string "	add rax, rbx\n"
.LC235:
	.string "	sub rax, rbx\n"
.LC236:
	.string "	mul rbx\n"
.LC237:
	.string "	xor rdx, rdx\n"
.LC238:
	.string "	div rbx\n"
.LC239:
	.string "	xor rdx, rdx\n"
.LC240:
	.string "	div rbx\n"
.LC241:
	.string "	mov rax, rdx\n"
.LC242:
	.string "	mov rcx, rbx\n"
.LC243:
	.string "	sal eax, cl\n"
.LC244:
	.string "	mov rcx, rbx\n"
.LC245:
	.string "	sar eax, cl\n"
.LC246:
	.string "	cmp rax, rbx\n"
.LC247:
	.string "	setl al\n"
.LC248:
	.string "	movzx rax, al\n"
.LC249:
	.string "	cmp rax, rbx\n"
.LC250:
	.string "	setle al\n"
.LC251:
	.string "	movzx rax, al\n"
.LC252:
	.string "	cmp rax, rbx\n"
.LC253:
	.string "	sete al\n"
.LC254:
	.string "	movzx rax, al\n"
.LC255:
	.string "	cmp rax, rbx\n"
.LC256:
	.string "	setne al\n"
.LC257:
	.string "	movzx rax, al\n"
.LC258:
	.string "	and eax, ebx\n"
.LC259:
	.string "	or eax, ebx\n"
.LC260:
	.string "	xor eax, ebx\n"
.LC261:
	.string "I don't know this nodekind\n"
