	.file	"regDatos.c"
	.text
	.globl	registrarPersonas
	.type	registrarPersonas, @function
registrarPersonas:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, %eax
	movq	%rsi, -32(%rbp)
	movl	%edx, -24(%rbp)
	movb	%al, -20(%rbp)
	cmpb	$112, -20(%rbp)
	jne	.L2
	movl	$0, -4(%rbp)
	jmp	.L3
.L4:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	registroProfesor
	addl	$1, -4(%rbp)
.L3:
	movl	-4(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L4
.L2:
	cmpb	$101, -20(%rbp)
	jne	.L5
	movl	$0, -8(%rbp)
	jmp	.L6
.L7:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	registroEstudiante
	addl	$1, -8(%rbp)
.L6:
	movl	-8(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jl	.L7
.L5:
	cmpb	$97, -20(%rbp)
	jne	.L11
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	registroProfesor
	movl	$0, -12(%rbp)
	jmp	.L9
.L10:
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	registroEstudiante
	addl	$1, -12(%rbp)
.L9:
	movl	-24(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -12(%rbp)
	jl	.L10
.L11:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	registrarPersonas, .-registrarPersonas
	.ident	"GCC: (GNU) 11.4.1 20230605 (Red Hat 11.4.1-2)"
	.section	.note.GNU-stack,"",@progbits
