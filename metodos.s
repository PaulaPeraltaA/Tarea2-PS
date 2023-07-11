	.file	"metodos.c"
	.text
	.section	.rodata
.LC0:
	.string	"\nRegistro de Profesor"
.LC1:
	.string	"Nombre: "
.LC2:
	.string	"%s"
.LC3:
	.string	"Carrera: "
	.align 8
.LC4:
	.string	"Cantidad de materias dictadas (2-3): "
.LC5:
	.string	"%d"
.LC6:
	.string	"Materia %d:\n"
.LC7:
	.string	"Paralelo: "
	.text
	.globl	registroProfesor
	.type	registroProfesor, @function
registroProfesor:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$.LC0, %edi
	call	puts
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	addq	$100, %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	addq	$532, %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	call	getchar
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	-4(%rbp), %eax
	cltq
	imulq	$110, %rax, %rax
	leaq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC7, %edi
	movl	$0, %eax
	call	printf
	movl	-4(%rbp), %eax
	cltq
	imulq	$110, %rax, %rax
	leaq	288(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	call	getchar
	addl	$1, -4(%rbp)
.L2:
	movq	-24(%rbp), %rax
	movl	532(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L3
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	registroProfesor, .-registroProfesor
	.section	.rodata
.LC8:
	.string	"\nRegistro de Estudiante"
.LC9:
	.string	"Nivel: "
	.align 8
.LC10:
	.string	"Cantidad de materias tomadas (3-7): "
.LC11:
	.string	"Cr\303\251ditos: "
	.text
	.globl	registroEstudiante
	.type	registroEstudiante, @function
registroEstudiante:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$.LC8, %edi
	call	puts
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC9, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	addq	$100, %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
	movq	-24(%rbp), %rax
	addq	$932, %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	call	getchar
	movl	$0, -4(%rbp)
	jmp	.L5
.L6:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rax, %rsi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	$.LC11, %edi
	movl	$0, %eax
	call	printf
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	288(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$16, %rax
	movq	%rax, %rsi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	call	getchar
	addl	$1, -4(%rbp)
.L5:
	movq	-24(%rbp), %rax
	movl	932(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L6
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	registroEstudiante, .-registroEstudiante
	.section	.rodata
.LC12:
	.string	"\nInformaci\303\263n del Profesor:"
.LC13:
	.string	"Nombre: %s\n"
.LC14:
	.string	"Carrera: %s\n"
	.align 8
.LC15:
	.string	"Cantidad de materias dictadas: %d\n"
.LC16:
	.string	"Materias dictadas:"
.LC17:
	.string	"Paralelo: %s\n"
.LC18:
	.string	"\nInformaci\303\263n del Estudiante:"
.LC19:
	.string	"Nivel: %d\n"
	.align 8
.LC20:
	.string	"Cantidad de materias tomadas: %d\n"
.LC21:
	.string	"Materias tomadas:"
.LC22:
	.string	"Cr\303\251ditos: %d\n"
	.align 8
.LC23:
	.string	"\nInformaci\303\263n del Estudiante %d:\n"
	.text
	.globl	mostrarDatos
	.type	mostrarDatos, @function
mostrarDatos:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$80, %rsp
	movl	%edi, %eax
	movq	%rsi, -80(%rbp)
	movl	%edx, -72(%rbp)
	movb	%al, -68(%rbp)
	cmpb	$112, -68(%rbp)
	jne	.L8
	movq	-80(%rbp), %rax
	movq	%rax, -56(%rbp)
	movl	$.LC12, %edi
	call	puts
	movq	-56(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	printf
	movq	-56(%rbp), %rax
	addq	$100, %rax
	movq	%rax, %rsi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	printf
	movq	-56(%rbp), %rax
	movl	532(%rax), %eax
	movl	%eax, %esi
	movl	$.LC15, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC16, %edi
	call	puts
	movl	$0, -4(%rbp)
	jmp	.L9
.L10:
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movl	-4(%rbp), %eax
	cltq
	imulq	$110, %rax, %rax
	leaq	192(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	printf
	movl	-4(%rbp), %eax
	cltq
	imulq	$110, %rax, %rax
	leaq	288(%rax), %rdx
	movq	-56(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rax, %rsi
	movl	$.LC17, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -4(%rbp)
.L9:
	movq	-56(%rbp), %rax
	movl	532(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L10
	jmp	.L21
.L8:
	cmpb	$101, -68(%rbp)
	jne	.L12
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	$.LC18, %edi
	call	puts
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	printf
	movq	-48(%rbp), %rax
	movl	100(%rax), %eax
	movl	%eax, %esi
	movl	$.LC19, %edi
	movl	$0, %eax
	call	printf
	movq	-48(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rsi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	printf
	movq	-48(%rbp), %rax
	movl	932(%rax), %eax
	movl	%eax, %esi
	movl	$.LC20, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC21, %edi
	call	puts
	movl	$0, -8(%rbp)
	jmp	.L13
.L14:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	192(%rax), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rax, %rsi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	printf
	movq	-48(%rbp), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$304, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -8(%rbp)
.L13:
	movq	-48(%rbp), %rax
	movl	932(%rax), %eax
	cmpl	%eax, -8(%rbp)
	jl	.L14
	jmp	.L21
.L12:
	movq	-80(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-80(%rbp), %rax
	addq	$536, %rax
	movq	%rax, -40(%rbp)
	movl	$.LC12, %edi
	call	puts
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	printf
	movq	-32(%rbp), %rax
	addq	$100, %rax
	movq	%rax, %rsi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	printf
	movq	-32(%rbp), %rax
	movl	532(%rax), %eax
	movl	%eax, %esi
	movl	$.LC15, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC16, %edi
	call	puts
	movl	$0, -12(%rbp)
	jmp	.L15
.L16:
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movl	-12(%rbp), %eax
	cltq
	imulq	$110, %rax, %rax
	leaq	192(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, %rsi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	printf
	movl	-12(%rbp), %eax
	cltq
	imulq	$110, %rax, %rax
	leaq	288(%rax), %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rax, %rsi
	movl	$.LC17, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -12(%rbp)
.L15:
	movq	-32(%rbp), %rax
	movl	532(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jl	.L16
	movl	$0, -16(%rbp)
	jmp	.L17
.L20:
	movl	-16(%rbp), %eax
	cltq
	imulq	$936, %rax, %rax
	leaq	536(%rax), %rdx
	movq	-80(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -40(%rbp)
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	$.LC23, %edi
	movl	$0, %eax
	call	printf
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	printf
	movq	-40(%rbp), %rax
	movl	100(%rax), %eax
	movl	%eax, %esi
	movl	$.LC19, %edi
	movl	$0, %eax
	call	printf
	movq	-40(%rbp), %rax
	addq	$104, %rax
	movq	%rax, %rsi
	movl	$.LC14, %edi
	movl	$0, %eax
	call	printf
	movq	-40(%rbp), %rax
	movl	932(%rax), %eax
	movl	%eax, %esi
	movl	$.LC20, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC21, %edi
	call	puts
	movl	$0, -20(%rbp)
	jmp	.L18
.L19:
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	192(%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rax, %rsi
	movl	$.LC13, %edi
	movl	$0, %eax
	call	printf
	movq	-40(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$304, %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	movl	$.LC22, %edi
	movl	$0, %eax
	call	printf
	addl	$1, -20(%rbp)
.L18:
	movq	-40(%rbp), %rax
	movl	932(%rax), %eax
	cmpl	%eax, -20(%rbp)
	jl	.L19
	addl	$1, -16(%rbp)
.L17:
	movl	-72(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -16(%rbp)
	jl	.L20
.L21:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	mostrarDatos, .-mostrarDatos
	.section	.rodata
.LC24:
	.string	"Materia eliminada con \303\251xito."
	.align 8
.LC25:
	.string	"La materia no se encontr\303\263 en la lista del estudiante."
	.text
	.globl	eliminarMateriaEstudiante
	.type	eliminarMateriaEstudiante, @function
eliminarMateriaEstudiante:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$-1, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L23
.L26:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	12(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L24
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L25
.L24:
	addl	$1, -4(%rbp)
.L23:
	movq	-24(%rbp), %rax
	movl	932(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L26
.L25:
	cmpl	$-1, -12(%rbp)
	je	.L27
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L28
.L29:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	12(%rax), %rcx
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	addq	$12, %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movq	-24(%rbp), %rcx
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$304, %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rsi
	movl	-8(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rsi, %rax
	addq	$304, %rax
	movl	%ecx, (%rax)
	addl	$1, -8(%rbp)
.L28:
	movq	-24(%rbp), %rax
	movl	932(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -8(%rbp)
	jl	.L29
	movq	-24(%rbp), %rax
	movl	932(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 932(%rax)
	movl	$.LC24, %edi
	call	puts
	jmp	.L31
.L27:
	movl	$.LC25, %edi
	call	puts
.L31:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	eliminarMateriaEstudiante, .-eliminarMateriaEstudiante
	.section	.rodata
	.align 8
.LC26:
	.string	"La materia no se encontr\303\263 en la lista del profesor."
	.text
	.globl	eliminarMateriaProfesor
	.type	eliminarMateriaProfesor, @function
eliminarMateriaProfesor:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$-1, -12(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L33
.L36:
	movl	-4(%rbp), %eax
	cltq
	imulq	$110, %rax, %rax
	leaq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp
	testl	%eax, %eax
	jne	.L34
	movl	-4(%rbp), %eax
	movl	%eax, -12(%rbp)
	jmp	.L35
.L34:
	addl	$1, -4(%rbp)
.L33:
	movq	-24(%rbp), %rax
	movl	532(%rax), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L36
.L35:
	cmpl	$-1, -12(%rbp)
	je	.L37
	movl	-12(%rbp), %eax
	movl	%eax, -8(%rbp)
	jmp	.L38
.L39:
	movl	-8(%rbp), %eax
	addl	$1, %eax
	cltq
	imulq	$110, %rax, %rax
	leaq	192(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	imulq	$110, %rax, %rax
	leaq	192(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	movl	-8(%rbp), %eax
	addl	$1, %eax
	cltq
	imulq	$110, %rax, %rax
	leaq	288(%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	leaq	12(%rax), %rdx
	movl	-8(%rbp), %eax
	cltq
	imulq	$110, %rax, %rax
	leaq	288(%rax), %rcx
	movq	-24(%rbp), %rax
	addq	%rcx, %rax
	addq	$12, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy
	addl	$1, -8(%rbp)
.L38:
	movq	-24(%rbp), %rax
	movl	532(%rax), %eax
	subl	$1, %eax
	cmpl	%eax, -8(%rbp)
	jl	.L39
	movq	-24(%rbp), %rax
	movl	532(%rax), %eax
	leal	-1(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 532(%rax)
	movl	$.LC24, %edi
	call	puts
	jmp	.L41
.L37:
	movl	$.LC26, %edi
	call	puts
.L41:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	eliminarMateriaProfesor, .-eliminarMateriaProfesor
	.section	.rodata
.LC27:
	.string	"Nivel cambiado exitosamente."
	.text
	.globl	cambiarNivel
	.type	cambiarNivel, @function
cambiarNivel:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, 100(%rax)
	movl	$.LC27, %edi
	call	puts
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	cambiarNivel, .-cambiarNivel
	.ident	"GCC: (GNU) 11.4.1 20230605 (Red Hat 11.4.1-2)"
	.section	.note.GNU-stack,"",@progbits
