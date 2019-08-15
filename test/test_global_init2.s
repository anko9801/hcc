.intel_syntax noprefix
.global _main
.LC0:
	.string "foo"
.LC1:
	.string "f"
.LC2:
	.string "o"
.LC3:
	.string "o"
.LC4:
	.string "\0"
x:
	.long 0
	.long 1
	.long 2
x:
	.long 0
	.long 1
	.long 2
x:
	.long 1
	.long 2
	.long 3
	.long 0
	.long 0
x:
	.long 1
	.long 2
	.long 3
	.long 0
	.long 0
msg:
	.ascii "foo\0"
msg:
	.byte 'f'
	.byte 'o'
	.byte 'o'
	.byte '\'
_main:
	push rbp
	mov rbp, rsp
	sub rsp, 0
	push 0
	pop rax
	mov rsp, rbp
	pop rbp
	ret
