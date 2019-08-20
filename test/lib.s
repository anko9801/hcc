	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 10, 14	sdk_version 10, 14
	.intel_syntax noprefix
	.globl	_foo                    ## -- Begin function foo
	.p2align	4, 0x90
_foo:                                   ## @foo
	.cfi_startproc
## %bb.0:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset rbp, -16
	mov	rbp, rsp
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	dword ptr [rbp - 8], edi
	mov	dword ptr [rbp - 12], esi
	mov	esi, dword ptr [rbp - 8]
	mov	edx, dword ptr [rbp - 12]
	lea	rdi, [rip + L_.str]
	mov	al, 0
	call	_printf
	mov	edx, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 16], eax ## 4-byte Spill
	mov	eax, edx
	add	rsp, 16
	pop	rbp
	ret
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d %d\n"


.subsections_via_symbols
