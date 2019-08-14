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
	mov	rax, qword ptr [rip + _a@GOTPCREL]
	mov	rcx, qword ptr [rip + _b@GOTPCREL]
	mov	cl, byte ptr [rcx + 1]
	add	cl, byte ptr [rax]
	movsx	eax, cl
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.comm	_a,3,0                  ## @a
	.comm	_b,3,0                  ## @b

.subsections_via_symbols
