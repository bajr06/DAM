	.file	"Pr\303\241ctica6.c"
	.text
	.section	.rodata
.LC1:
	.string	"FICCION"
.LC2:
	.string	"NO_FICCION"
.LC3:
	.string	"POESIA"
.LC4:
	.string	"TEATRO"
.LC5:
	.string	"ENSAYO"
.LC6:
	.string	"GENERO NO ENCONTRADO"
	.text
	.globl	categoria
	.type	categoria, @function
categoria:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$4, %eax
	ja	.L2
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L4(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L4(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L4:
	.long	.L8-.L4
	.long	.L7-.L4
	.long	.L6-.L4
	.long	.L5-.L4
	.long	.L3-.L4
	.text
.L8:
	leaq	.LC1(%rip), %rax
	jmp	.L9
.L7:
	leaq	.LC2(%rip), %rax
	jmp	.L9
.L6:
	leaq	.LC3(%rip), %rax
	jmp	.L9
.L5:
	leaq	.LC4(%rip), %rax
	jmp	.L9
.L3:
	leaq	.LC5(%rip), %rax
	jmp	.L9
.L2:
	leaq	.LC6(%rip), %rax
.L9:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	categoria, .-categoria
	.section	.rodata
.LC7:
	.string	"%d, %s, %s, %.2f, %s, %d.\n"
	.text
	.globl	mostrarLibro
	.type	mostrarLibro, @function
mostrarLibro:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	112(%rax), %ebx
	movq	-24(%rbp), %rax
	addq	$108, %rax
	movq	%rax, %rdi
	call	categoria
	movq	%rax, %rdi
	movq	-24(%rbp), %rax
	movss	104(%rax), %xmm0
	pxor	%xmm1, %xmm1
	cvtss2sd	%xmm0, %xmm1
	movq	%xmm1, %rdx
	movq	-24(%rbp), %rax
	leaq	54(%rax), %rcx
	movq	-24(%rbp), %rax
	leaq	4(%rax), %rsi
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	movl	%ebx, %r9d
	movq	%rdi, %r8
	movq	%rdx, %xmm0
	movq	%rsi, %rdx
	movl	%eax, %esi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	mostrarLibro, .-mostrarLibro
	.globl	comparar_y_mostrar
	.type	comparar_y_mostrar, @function
comparar_y_mostrar:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L13
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	mostrarLibro
.L13:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	comparar_y_mostrar, .-comparar_y_mostrar
	.globl	añadir_stock
	.type	añadir_stock, @function
añadir_stock:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	cmpl	%eax, -12(%rbp)
	jne	.L16
	movq	-8(%rbp), %rax
	movl	112(%rax), %edx
	movl	-16(%rbp), %eax
	addl	%eax, %edx
	movq	-8(%rbp), %rax
	movl	%edx, 112(%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	mostrarLibro
.L16:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	añadir_stock, .-añadir_stock
	.globl	mostrar_por_categoria
	.type	mostrar_por_categoria, @function
mostrar_por_categoria:
.LFB10:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L18
.L21:
	movl	-4(%rbp), %eax
	cltq
	imulq	$116, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	108(%rax), %edx
	movl	-28(%rbp), %eax
	cmpl	%eax, %edx
	jne	.L22
	movl	-4(%rbp), %eax
	cltq
	imulq	$116, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	mostrarLibro
	jmp	.L20
.L22:
	nop
.L20:
	addl	$1, -4(%rbp)
.L18:
	cmpl	$39, -4(%rbp)
	jle	.L21
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	mostrar_por_categoria, .-mostrar_por_categoria
	.globl	mostrar_por_autor
	.type	mostrar_por_autor, @function
mostrar_por_autor:
.LFB11:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L24
.L26:
	movq	-24(%rbp), %rax
	leaq	54(%rax), %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L25
	movl	-4(%rbp), %eax
	cltq
	imulq	$116, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	mostrarLibro
.L25:
	addl	$1, -4(%rbp)
	addq	$116, -24(%rbp)
.L24:
	cmpl	$39, -4(%rbp)
	jle	.L26
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	mostrar_por_autor, .-mostrar_por_autor
	.section	.rodata
	.align 8
.LC8:
	.ascii	"Bienvenido a la biblioteca de Pantheon. Escriba el n\303\272"
	.ascii	"mero de una de las siguientes operaciones que d"
	.string	"eseas ejecutar:\n        1. Mostrar todos los libros.\n        2. Mostrar el libro que escojas por ID.\n        3. Aumentar el stock de un libro atrav\303\251s de su ID.\n        4. Mostrar todos los libros de una categor\303\255a.\n        5. Mostrar los libros del autor."
.LC9:
	.string	"%d"
	.align 8
.LC10:
	.string	"\tInserte el id del libro que desea visualizar:"
	.align 8
.LC11:
	.string	"Error: el id que has insertado no existe."
	.align 8
.LC12:
	.string	"\tInserte el ID del libro al que le quiera cambiar el stock:"
	.align 8
.LC13:
	.string	"\302\277Cu\303\241ntos libros deseas a\303\261adir al stock?"
	.align 8
.LC14:
	.string	"\302\277De qu\303\251 categor\303\255a de libros quieres ver los libros (FICCION = 0, NO_FICCION = 1, POESIA = 2, TEATRO = 3, ENSAYO = 4)?"
	.align 8
.LC15:
	.string	"Escriba el nombre del autor de manera totalmente correcta:"
.LC16:
	.string	" "
	.align 8
.LC17:
	.string	"Error, no existe esa numeraci\303\263n"
	.align 32
.LC0:
	.long	1
	.string	"To Kill a Mockingbird"
	.zero	28
	.string	"Harper Lee"
	.zero	39
	.long	1098897162
	.long	0
	.long	10
	.long	2
	.string	"1984"
	.zero	45
	.string	"George Orwell"
	.zero	36
	.long	1095227146
	.long	0
	.long	5
	.long	3
	.string	"The Great Gatsby"
	.zero	33
	.string	"F. Scott Fitzgerald"
	.zero	30
	.long	1093654282
	.long	0
	.long	8
	.long	4
	.string	"Moby Dick"
	.zero	40
	.string	"Herman Melville"
	.zero	34
	.long	1100475269
	.long	0
	.long	12
	.long	5
	.string	"War and Peace"
	.zero	36
	.string	"Leo Tolstoy"
	.zero	38
	.long	1101004800
	.long	0
	.long	7
	.long	6
	.string	"Pride and Prejudice"
	.zero	30
	.string	"Jane Austen"
	.zero	38
	.long	1097848586
	.long	0
	.long	9
	.long	7
	.string	"The Catcher in the Rye"
	.zero	27
	.string	"J.D. Salinger"
	.zero	36
	.long	1092616192
	.long	0
	.long	6
	.long	8
	.string	"The Odyssey"
	.zero	38
	.string	"Homer"
	.zero	44
	.long	1099688837
	.long	0
	.long	4
	.long	9
	.string	"Ulysses"
	.zero	42
	.string	"James Joyce"
	.zero	38
	.long	1103626240
	.long	0
	.long	2
	.long	10
	.string	"The Divine Comedy"
	.zero	32
	.string	"Dante Alighieri"
	.zero	34
	.long	1102053376
	.long	2
	.long	3
	.long	11
	.string	"Leaves of Grass"
	.zero	34
	.string	"Walt Whitman"
	.zero	37
	.long	1095761920
	.long	2
	.long	11
	.long	12
	.string	"The Iliad"
	.zero	40
	.string	"Homer"
	.zero	44
	.long	1100218368
	.long	0
	.long	7
	.long	13
	.string	"A Brief History of Time"
	.zero	26
	.string	"Stephen Hawking"
	.zero	34
	.long	1097859072
	.long	1
	.long	15
	.long	14
	.string	"The Art of War"
	.zero	35
	.string	"Sun Tzu"
	.zero	42
	.long	1092605706
	.long	1
	.long	20
	.long	15
	.string	"Sapiens: A Brief History of Humankind"
	.zero	12
	.string	"Yuval Noah Harari"
	.zero	32
	.long	1099164549
	.long	1
	.long	13
	.long	16
	.string	"The Selfish Gene"
	.zero	33
	.string	"Richard Dawkins"
	.zero	34
	.long	1096810496
	.long	1
	.long	6
	.long	17
	.string	"The Road to Serfdom"
	.zero	30
	.string	"F.A. Hayek"
	.zero	39
	.long	1093140480
	.long	1
	.long	5
	.long	18
	.string	"The Wealth of Nations"
	.zero	28
	.string	"Adam Smith"
	.zero	39
	.long	1106247680
	.long	1
	.long	8
	.long	19
	.string	"On the Origin of Species"
	.zero	25
	.string	"Charles Darwin"
	.zero	35
	.long	1103620997
	.long	1
	.long	4
	.long	20
	.string	"The Prince"
	.zero	39
	.string	"Niccol\303\262 Machiavelli"
	.zero	29
	.long	1091557130
	.long	1
	.long	14
	.long	21
	.string	"Hamlet"
	.zero	43
	.string	"William Shakespeare"
	.zero	30
	.long	1094189056
	.long	3
	.long	6
	.long	22
	.string	"Macbeth"
	.zero	42
	.string	"William Shakespeare"
	.zero	30
	.long	1092091904
	.long	3
	.long	8
	.long	23
	.string	"Othello"
	.zero	42
	.string	"William Shakespeare"
	.zero	30
	.long	1093654282
	.long	3
	.long	7
	.long	24
	.string	"A Doll's House"
	.zero	35
	.string	"Henrik Ibsen"
	.zero	37
	.long	1095237632
	.long	3
	.long	5
	.long	25
	.string	"Waiting for Godot"
	.zero	32
	.string	"Samuel Beckett"
	.zero	35
	.long	1096800010
	.long	3
	.long	4
	.long	26
	.string	"Death of a Salesman"
	.zero	30
	.string	"Arthur Miller"
	.zero	36
	.long	1097848586
	.long	3
	.long	10
	.long	27
	.string	"The Glass Menagerie"
	.zero	30
	.string	"Tennessee Williams"
	.zero	31
	.long	1093664768
	.long	3
	.long	9
	.long	28
	.string	"Long Day's Journey into Night"
	.zero	20
	.string	"Eugene O'Neill"
	.zero	35
	.long	1100742656
	.long	3
	.long	3
	.long	29
	.string	"The Importance of Being Earnest"
	.zero	18
	.string	"Oscar Wilde"
	.zero	38
	.long	1091043328
	.long	3
	.long	15
	.long	30
	.string	"The Waste Land"
	.zero	35
	.string	"T.S. Eliot"
	.zero	39
	.long	1088400916
	.long	2
	.long	10
	.long	31
	.string	"Paradise Lost"
	.zero	36
	.string	"John Milton"
	.zero	38
	.long	1094713344
	.long	2
	.long	7
	.long	32
	.string	"Beowulf"
	.zero	42
	.string	"Anonymous"
	.zero	40
	.long	1097859072
	.long	2
	.long	5
	.long	33
	.string	"Essays"
	.zero	43
	.string	"Michel de Montaigne"
	.zero	30
	.long	1101004800
	.long	4
	.long	4
	.long	34
	.string	"Self-Reliance and Other Essays"
	.zero	19
	.string	"Ralph Waldo Emerson"
	.zero	30
	.long	1091567616
	.long	4
	.long	9
	.long	35
	.string	"Civil Disobedience and Other Essays"
	.zero	14
	.string	"Henry David Thoreau"
	.zero	30
	.long	1089470464
	.long	4
	.long	11
	.long	36
	.string	"Meditations"
	.zero	38
	.string	"Marcus Aurelius"
	.zero	34
	.long	1094702858
	.long	4
	.long	8
	.long	37
	.string	"The Federalist Papers"
	.zero	28
	.string	"Alexander Hamilton, James Madison, John Jay"
	.zero	6
	.long	1099956224
	.long	4
	.long	5
	.long	38
	.string	"The Communist Manifesto"
	.zero	26
	.string	"Karl Marx and Friedrich Engels"
	.zero	19
	.long	1086303764
	.long	4
	.long	12
	.long	39
	.string	"The Republic"
	.zero	37
	.string	"Plato"
	.zero	44
	.long	1098907648
	.long	4
	.long	6
	.long	40
	.string	"Thus Spoke Zarathustra"
	.zero	27
	.string	"Friedrich Nietzsche"
	.zero	30
	.long	1097848586
	.long	4
	.long	10
	.text
	.globl	main
	.type	main, @function
main:
.LFB12:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4096, %rsp
	orq	$0, (%rsp)
	subq	$640, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	leaq	-4704(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movl	$580, %ecx
	movq	%rax, %rdi
	movq	%rdx, %rsi
	rep movsq
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-4736(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-4736(%rbp), %eax
	cmpl	$5, %eax
	ja	.L28
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L30(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L30(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L30:
	.long	.L28-.L30
	.long	.L34-.L30
	.long	.L33-.L30
	.long	.L32-.L30
	.long	.L31-.L30
	.long	.L29-.L30
	.text
.L34:
	movl	$0, -4716(%rbp)
	jmp	.L35
.L36:
	movl	-4716(%rbp), %eax
	cltq
	imulq	$116, %rax, %rax
	leaq	-4704(%rbp), %rdx
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	mostrarLibro
	addl	$1, -4716(%rbp)
.L35:
	cmpl	$39, -4716(%rbp)
	jle	.L36
	jmp	.L37
.L33:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-4732(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-4732(%rbp), %eax
	cmpl	$40, %eax
	jg	.L38
	movl	-4732(%rbp), %eax
	testl	%eax, %eax
	jle	.L38
	movl	$0, -4712(%rbp)
	jmp	.L39
.L40:
	movl	-4732(%rbp), %eax
	movl	-4712(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$116, %rdx, %rdx
	leaq	-4704(%rbp), %rcx
	addq	%rcx, %rdx
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	comparar_y_mostrar
	addl	$1, -4712(%rbp)
.L39:
	cmpl	$39, -4712(%rbp)
	jle	.L40
	jmp	.L47
.L38:
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L37
.L47:
	jmp	.L37
.L32:
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-4728(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-4724(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-4728(%rbp), %eax
	cmpl	$40, %eax
	jg	.L42
	movl	-4728(%rbp), %eax
	testl	%eax, %eax
	jle	.L42
	movl	$0, -4708(%rbp)
.L43:
	movl	-4724(%rbp), %edx
	movl	-4728(%rbp), %eax
	movl	-4708(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	$116, %rcx, %rcx
	leaq	-4704(%rbp), %rsi
	addq	%rsi, %rcx
	movl	%eax, %esi
	movq	%rcx, %rdi
	call	añadir_stock
	addl	$1, -4708(%rbp)
	cmpl	$39, -4708(%rbp)
	jle	.L43
	jmp	.L48
.L42:
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L37
.L48:
	jmp	.L37
.L31:
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	-4720(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-4720(%rbp), %edx
	leaq	-4704(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	mostrar_por_categoria
	jmp	.L37
.L29:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	stdin(%rip), %rdx
	leaq	-64(%rbp), %rax
	movl	$50, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	leaq	-64(%rbp), %rdx
	leaq	-4704(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	mostrar_por_autor
	jmp	.L37
.L28:
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L37:
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L46
	call	__stack_chk_fail@PLT
.L46:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE12:
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
