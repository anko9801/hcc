int gen_MOV_code(Code *code) {
	{0x48, 0x89, 0xd0}mov	rax, rdx
	{0x89, 0xc1}mov	ecx, eax
	{0x89, 0xc2}mov	edx, eax
	{0x48, 0x89, 0xc7}mov	rdi, rax
	{0x89, 0x08}mov	dword ptr [rax], ecx
	{0xb1, 0x01}mov	cl, 1
	{0xb0, 0x00}mov	al, 0
	{0x8b, 0x49, 0x10}mov	ecx, dword ptr [rcx + 16]
	{0x89, 0xc7}mov	edi, eax
	{0xb8, 0x68, 0x00, 0x00, 0x00}mov	eax, 104
	89 c6 	mov	esi, eax
}
