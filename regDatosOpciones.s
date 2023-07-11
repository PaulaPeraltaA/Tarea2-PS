	.file	"regDatosOpciones.c"
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"La cantidad de personas a registrar debe ser mayor o igual a 2 y num\303\251rica."
	.align 8
.LC1:
	.string	"Ingrese la cantidad de personas a registrar (mayor o igual a 2): "
.LC2:
	.string	"%d"
	.align 8
.LC3:
	.string	"La cantidad de personas a registrar debe ser mayor o igual a 2."
.LC4:
	.string	"Opci\303\263n: %c\n"
.LC5:
	.string	"Opci\303\263n: %c  Falta argumento\n"
.LC6:
	.string	"Opci\303\263n no reconocida: %c\n"
.LC7:
	.string	":pea"
.LC8:
	.string	"Argumentos sobrantes: %s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	cmpl	$1, -36(%rbp)
	jle	.L2
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cmpl	$1, %eax
	jle	.L3
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L6
.L3:
	movl	$.LC0, %edi
	call	puts
	movl	$1, %eax
	jmp	.L18
.L2:
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	leaq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	-24(%rbp), %eax
	cmpl	$1, %eax
	jg	.L6
	movl	$.LC3, %edi
	call	puts
	movl	$1, %eax
	jmp	.L18
.L12:
	cmpl	$112, -20(%rbp)
	je	.L7
	cmpl	$112, -20(%rbp)
	jg	.L6
	cmpl	$101, -20(%rbp)
	je	.L8
	cmpl	$101, -20(%rbp)
	jg	.L6
	cmpl	$97, -20(%rbp)
	je	.L9
	cmpl	$97, -20(%rbp)
	jg	.L6
	cmpl	$58, -20(%rbp)
	je	.L10
	cmpl	$63, -20(%rbp)
	je	.L11
	jmp	.L6
.L7:
	movl	-20(%rbp), %eax
	movb	%al, -1(%rbp)
	jmp	.L6
.L8:
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	-20(%rbp), %eax
	movb	%al, -1(%rbp)
	jmp	.L6
.L9:
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movl	-20(%rbp), %eax
	movb	%al, -1(%rbp)
	jmp	.L6
.L10:
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	jmp	.L6
.L11:
	movl	-20(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	nop
.L6:
	movq	-48(%rbp), %rcx
	movl	-36(%rbp), %eax
	movl	$.LC7, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	getopt
	movl	%eax, -20(%rbp)
	cmpl	$-1, -20(%rbp)
	jne	.L12
	movl	$0, -8(%rbp)
	jmp	.L13
.L14:
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	movl	$.LC8, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -8(%rbp)
.L13:
	movl	-8(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L14
	cmpb	$112, -1(%rbp)
	jne	.L15
	movl	-24(%rbp), %eax
	cltq
	imulq	$536, %rax, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -16(%rbp)
.L15:
	cmpb	$101, -1(%rbp)
	jne	.L16
	movl	-24(%rbp), %eax
	cltq
	imulq	$936, %rax, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -16(%rbp)
	jmp	.L17
.L16:
	movl	-24(%rbp), %eax
	cltq
	imulq	$536, %rax, %rdx
	movl	-24(%rbp), %eax
	subl	$1, %eax
	cltq
	imulq	$936, %rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -16(%rbp)
.L17:
	movl	-24(%rbp), %edx
	movsbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	registrarPersonas
	movl	-24(%rbp), %edx
	movsbl	-1(%rbp), %eax
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	mostrarDatos
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %eax
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (GNU) 11.4.1 20230605 (Red Hat 11.4.1-2)"
	.section	.note.GNU-stack,"",@progbits
