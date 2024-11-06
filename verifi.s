	.file	"verifi.c"
	.text
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	"usuarios.txt"
	.align 8
.LC2:
	.string	"Error al abrir el archivo de usuarios."
.LC3:
	.string	"%[^:]:%s"
	.text
	.globl	validar_usuario
	.type	validar_usuario, @function
validar_usuario:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$272, %rsp
	movq	%rdi, -264(%rbp)
	movq	%rsi, -272(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC0(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -248(%rbp)
	cmpq	$0, -248(%rbp)
	jne	.L2
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
	jmp	.L8
.L2:
	movl	$0, -252(%rbp)
	jmp	.L4
.L7:
	leaq	-176(%rbp), %rcx
	leaq	-240(%rbp), %rdx
	leaq	-112(%rbp), %rax
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_sscanf@PLT
	leaq	-240(%rbp), %rdx
	movq	-264(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L4
	leaq	-176(%rbp), %rdx
	movq	-272(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L4
	movl	$1, -252(%rbp)
	jmp	.L6
.L4:
	movq	-248(%rbp), %rdx
	leaq	-112(%rbp), %rax
	movl	$100, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L7
.L6:
	movq	-248(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	movl	-252(%rbp), %eax
.L8:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	validar_usuario, .-validar_usuario
	.section	.rodata
.LC4:
	.string	"a"
.LC5:
	.string	"bitacora.txt"
	.align 8
.LC6:
	.string	"Error al abrir el archivo de bit\303\241cora."
.LC7:
	.string	"%Y/%m/%d"
.LC8:
	.string	"%s: %s \342\200\223 %s\n"
	.text
	.globl	guardar_bitacora
	.type	guardar_bitacora, @function
guardar_bitacora:
.LFB1:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	.LC4(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.L11
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L10
.L11:
	movl	$0, %edi
	call	time@PLT
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	localtime@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rcx
	leaq	.LC7(%rip), %rdx
	movl	$20, %esi
	movq	%rax, %rdi
	call	strftime@PLT
	movq	-80(%rbp), %rsi
	movq	-72(%rbp), %rcx
	leaq	-32(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rsi, %r8
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
	movl	$0, %eax
	call	fprintf@PLT
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L10:
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	guardar_bitacora, .-guardar_bitacora
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
