	.file	"main.c"
	.text
	.section	.rodata
.LC0:
	.string	"Ingrese usuario: "
.LC1:
	.string	"%s"
.LC2:
	.string	"Ingrese clave: "
.LC3:
	.string	"Ingreso exitoso al sistema."
.LC4:
	.string	"Ingreso exitoso al sistema"
.LC5:
	.string	"Usuario o clave incorrectos."
	.align 8
.LC6:
	.string	"Ingreso fallido usuario/clave err\303\263neo"
	.align 8
.LC7:
	.string	"Demasiados intentos fallidos. Saliendo..."
.LC8:
	.string	"Ingrese una opci\303\263n: "
.LC9:
	.string	"%d"
.LC10:
	.string	"Figura seleccionada"
.LC11:
	.string	"Saliendo del programa."
.LC12:
	.string	"Salida del sistema"
	.align 8
.LC13:
	.string	"Opci\303\263n no v\303\241lida. Intente de nuevo."
	.align 8
.LC14:
	.string	"\302\277Desea realizar el an\303\241lisis de otra figura geom\303\251trica? (s/n): "
.LC15:
	.string	" %c"
	.align 8
.LC16:
	.string	"Respuesta no v\303\241lida. Por favor, ingrese 's' para s\303\255 o 'n' para no."
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$3, -132(%rbp)
	jmp	.L2
.L5:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-128(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	-64(%rbp), %rdx
	leaq	-128(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	validar_usuario@PLT
	testl	%eax, %eax
	je	.L3
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC4(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	jmp	.L4
.L3:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC6(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	subl	$1, -132(%rbp)
.L2:
	cmpl	$0, -132(%rbp)
	jg	.L5
.L4:
	cmpl	$0, -132(%rbp)
	jne	.L6
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L17
.L6:
	movl	$0, %eax
	call	mostrarMenu@PLT
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-136(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-136(%rbp), %eax
	testl	%eax, %eax
	je	.L8
	testl	%eax, %eax
	js	.L9
	subl	$1, %eax
	cmpl	$12, %eax
	ja	.L9
	leaq	-128(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	movl	-136(%rbp), %eax
	movl	%eax, %edi
	call	solicitarDatosFigura@PLT
	jmp	.L10
.L8:
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-128(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	jmp	.L10
.L9:
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	nop
.L10:
	movl	-136(%rbp), %eax
	testl	%eax, %eax
	je	.L11
.L16:
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-137(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movzbl	-137(%rbp), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	tolower@PLT
	movb	%al, -137(%rbp)
	movzbl	-137(%rbp), %eax
	cmpb	$110, %al
	jne	.L12
	movl	$0, -136(%rbp)
	leaq	-128(%rbp), %rax
	leaq	.LC12(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	guardar_bitacora@PLT
	jmp	.L13
.L12:
	movzbl	-137(%rbp), %eax
	cmpb	$115, %al
	je	.L19
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L13:
	movzbl	-137(%rbp), %eax
	cmpb	$115, %al
	je	.L11
	movzbl	-137(%rbp), %eax
	cmpb	$110, %al
	jne	.L16
	jmp	.L11
.L19:
	nop
.L11:
	movl	-136(%rbp), %eax
	testl	%eax, %eax
	jne	.L6
	movl	$0, %eax
.L17:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
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
