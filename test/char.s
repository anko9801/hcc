	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_main                   ## -- Begin function main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 48
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 36], 0
	mov	rax, qword ptr [rip + l___const.main.a]
	mov	qword ptr [rbp - 32], rax
	mov	rax, qword ptr [rip + l___const.main.a+8]
	mov	qword ptr [rbp - 24], rax
	mov	ecx, dword ptr [rip + l___const.main.a+16]
	mov	dword ptr [rbp - 16], ecx
	mov	dx, word ptr [rip + l___const.main.b]
	mov	word ptr [rbp - 39], dx
	mov	sil, byte ptr [rip + l___const.main.b+2]
	mov	byte ptr [rbp - 37], sil
	movsx	ecx, byte ptr [rbp - 32]
	movsx	edi, byte ptr [rbp - 38]
	add	ecx, edi
	mov	rax, qword ptr [rip + ___stack_chk_guard@GOTPCREL]
	mov	rax, qword ptr [rax]
	mov	r8, qword ptr [rbp - 8]
	cmp	rax, r8
	mov	dword ptr [rbp - 44], ecx ## 4-byte Spill
	jne	LBB0_2
## %bb.1:
	mov	eax, dword ptr [rbp - 44] ## 4-byte Reload
	add	rsp, 48
	pop	rbp
	ret
LBB0_2:
	call	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__const
	.p2align	4               ## @__const.main.a
l___const.main.a:
	.asciz	"abchdkchhasld\000\000\000\000\000\000"

l___const.main.b:                       ## @__const.main.b
	.ascii	"def"


.subsections_via_symbols
