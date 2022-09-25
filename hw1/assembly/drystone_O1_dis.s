	.file	"drystone_long.c"
	.text
	.globl	Proc2
	.type	Proc2, @function
Proc2:
.LFB3:
	.cfi_startproc
	movl	(%rdi), %eax
	cmpb	$65, Char1Glob(%rip)
	jne	.L3
	addl	$9, %eax
	subl	IntGlob(%rip), %eax
	movl	%eax, (%rdi)
.L3:
	rep ret
	.cfi_endproc
.LFE3:
	.size	Proc2, .-Proc2
	.globl	Proc4
	.type	Proc4, @function
Proc4:
.LFB5:
	.cfi_startproc
	movb	$66, Char2Glob(%rip)
	ret
	.cfi_endproc
.LFE5:
	.size	Proc4, .-Proc4
	.globl	Proc5
	.type	Proc5, @function
Proc5:
.LFB6:
	.cfi_startproc
	movb	$65, Char1Glob(%rip)
	movl	$0, BoolGlob(%rip)
	ret
	.cfi_endproc
.LFE6:
	.size	Proc5, .-Proc5
	.globl	Proc7
	.type	Proc7, @function
Proc7:
.LFB8:
	.cfi_startproc
	leal	2(%rdi,%rsi), %eax
	movl	%eax, (%rdx)
	ret
	.cfi_endproc
.LFE8:
	.size	Proc7, .-Proc7
	.globl	Proc3
	.type	Proc3, @function
Proc3:
.LFB4:
	.cfi_startproc
	movq	PtrGlb(%rip), %rax
	testq	%rax, %rax
	je	.L8
	movq	(%rax), %rax
	movq	%rax, (%rdi)
	jmp	.L9
.L8:
	movl	$100, IntGlob(%rip)
.L9:
	movq	PtrGlb(%rip), %rax
	leaq	16(%rax), %rdx
	movl	IntGlob(%rip), %esi
	movl	$10, %edi
	movl	$0, %eax
	call	Proc7
	rep ret
	.cfi_endproc
.LFE4:
	.size	Proc3, .-Proc3
	.globl	Proc8
	.type	Proc8, @function
Proc8:
.LFB9:
	.cfi_startproc
	leal	5(%rdx), %r8d
	movslq	%r8d, %r10
	leaq	0(,%r10,4), %rax
	leaq	(%rdi,%rax), %r11
	movl	%ecx, (%r11)
	movl	%ecx, 4(%rdi,%rax)
	movl	%r8d, 120(%rdi,%rax)
	leal	6(%rdx), %edi
	cmpl	%edi, %r8d
	jg	.L11
	imulq	$204, %r10, %r9
	addq	%rsi, %r9
	movl	%r8d, %eax
.L12:
	movslq	%eax, %rcx
	movl	%r8d, (%r9,%rcx,4)
	addl	$1, %eax
	cmpl	%edi, %eax
	jle	.L12
.L11:
	imulq	$204, %r10, %r10
	leaq	(%rsi,%r10), %rax
	addl	$4, %edx
	movslq	%edx, %rdx
	addl	$1, (%rax,%rdx,4)
	movl	(%r11), %edx
	movslq	%r8d, %r8
	leaq	(%rsi,%r8,4), %rax
	movl	%edx, 4080(%r10,%rax)
	movl	$5, IntGlob(%rip)
	ret
	.cfi_endproc
.LFE9:
	.size	Proc8, .-Proc8
	.globl	Func1
	.type	Func1, @function
Func1:
.LFB10:
	.cfi_startproc
	cmpb	%sil, %dil
	sete	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE10:
	.size	Func1, .-Func1
	.globl	Func2
	.type	Func2, @function
Func2:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, %rbx
	movq	%rsi, %rbp
	movsbl	2(%rsi), %esi
	movsbl	1(%rdi), %edi
	movl	$0, %eax
	call	Func1
	testl	%eax, %eax
	je	.L15
.L17:
	jmp	.L17
.L15:
	movq	%rbp, %rsi
	movq	%rbx, %rdi
	call	strcmp
	testl	%eax, %eax
	setg	%al
	movzbl	%al, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	Func2, .-Func2
	.globl	Func3
	.type	Func3, @function
Func3:
.LFB12:
	.cfi_startproc
	cmpl	$2, %edi
	sete	%al
	movzbl	%al, %eax
	ret
	.cfi_endproc
.LFE12:
	.size	Func3, .-Func3
	.globl	Proc6
	.type	Proc6, @function
Proc6:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edi, %ebx
	movq	%rsi, %rbp
	movl	$0, %eax
	call	Func3
	testl	%eax, %eax
	movl	$3, %eax
	cmovne	%ebx, %eax
	movl	%eax, 0(%rbp)
	cmpl	$1, %ebx
	je	.L24
	cmpl	$1, %ebx
	jb	.L25
	cmpl	$2, %ebx
	je	.L26
	cmpl	$4, %ebx
	.p2align 4,,2
	je	.L27
	.p2align 4,,5
	jmp	.L29
.L25:
	movl	$0, 0(%rbp)
	jmp	.L29
.L24:
	cmpl	$101, IntGlob(%rip)
	setl	%al
	movzbl	%al, %eax
	leal	(%rax,%rax,2), %eax
	movl	%eax, 0(%rbp)
	jmp	.L29
.L26:
	movl	$1, 0(%rbp)
	jmp	.L29
.L27:
	movl	$2, 0(%rbp)
.L29:
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE7:
	.size	Proc6, .-Proc6
	.globl	Proc1
	.type	Proc1, @function
Proc1:
.LFB2:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rax
	movq	PtrGlb(%rip), %rdx
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	movq	8(%rdx), %rcx
	movq	%rcx, 8(%rax)
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%rax)
	movq	24(%rdx), %rcx
	movq	%rcx, 24(%rax)
	movq	32(%rdx), %rcx
	movq	%rcx, 32(%rax)
	movq	40(%rdx), %rcx
	movq	%rcx, 40(%rax)
	movq	48(%rdx), %rdx
	movq	%rdx, 48(%rax)
	movl	$5, 16(%rdi)
	movq	(%rdi), %rax
	movl	$5, 16(%rax)
	movq	(%rdi), %rax
	movq	%rax, (%rax)
	movq	(%rdi), %rax
	movq	(%rax), %rdi
	movl	$0, %eax
	call	Proc3
	movq	(%rbx), %rax
	cmpl	$0, 8(%rax)
	jne	.L32
	movl	$6, 16(%rax)
	movq	(%rbx), %rax
	leaq	12(%rax), %rsi
	movl	12(%rbx), %edi
	movl	$0, %eax
	call	Proc6
	movq	(%rbx), %rax
	movq	PtrGlb(%rip), %rdx
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	(%rbx), %rax
	leaq	16(%rax), %rdx
	movl	16(%rax), %edi
	movl	$10, %esi
	movl	$0, %eax
	call	Proc7
	jmp	.L34
.L32:
	movq	(%rax), %rdx
	movq	%rdx, (%rbx)
	movq	8(%rax), %rdx
	movq	%rdx, 8(%rbx)
	movq	16(%rax), %rdx
	movq	%rdx, 16(%rbx)
	movq	24(%rax), %rdx
	movq	%rdx, 24(%rbx)
	movq	32(%rax), %rdx
	movq	%rdx, 32(%rbx)
	movq	40(%rax), %rdx
	movq	%rdx, 40(%rbx)
	movq	48(%rax), %rax
	movq	%rax, 48(%rbx)
.L34:
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2:
	.size	Proc1, .-Proc1
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Dhrystone time for %ld passes = %ld\n"
	.align 8
.LC1:
	.string	"This machine benchmarks at %ld dhrystones/second\n"
	.text
	.globl	Proc0
	.type	Proc0, @function
Proc0:
.LFB1:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$88, %rsp
	.cfi_def_cfa_offset 128
	movl	$0, %edi
	movl	$0, %eax
	call	time
	movq	%rax, %rbx
	movl	$500000000, %edx
.L38:
	subl	$1, %edx
	jne	.L38
	movl	$0, %edi
	movl	$0, %eax
	call	time
	subq	%rbx, %rax
	movq	%rax, %r13
	movl	$56, %edi
	call	malloc
	movq	%rax, %rbx
	movq	%rax, PtrGlbNext(%rip)
	movl	$56, %edi
	call	malloc
	movq	%rax, %rdx
	movq	%rax, PtrGlb(%rip)
	movq	%rbx, (%rax)
	movl	$0, 8(%rax)
	movl	$2, 12(%rax)
	movl	$40, 16(%rax)
	movabsq	$5642821575076104260, %rcx
	movq	%rcx, 20(%rdx)
	movabsq	$4706902966564560965, %rcx
	movq	%rcx, 28(%rdx)
	movabsq	$2325349785699101773, %rcx
	movq	%rcx, 36(%rdx)
	movl	$1230132307, 44(%rdx)
	movw	$18254, 48(%rdx)
	movb	$0, 50(%rdx)
	movl	$0, %edi
	movl	$0, %eax
	call	time
	movq	%rax, %r12
	movl	$500000000, %ebp
.L45:
	movl	$0, %eax
	call	Proc5
	movl	$0, %eax
	call	Proc4
	movl	$2, 76(%rsp)
	movabsq	$5642821575076104260, %rax
	movq	%rax, (%rsp)
	movabsq	$4706902966564560965, %rax
	movq	%rax, 8(%rsp)
	movabsq	$2325069237881678925, %rax
	movq	%rax, 16(%rsp)
	movl	$1230132307, 24(%rsp)
	movw	$18254, 28(%rsp)
	movb	$0, 30(%rsp)
	movl	$1, 68(%rsp)
	movq	%rsp, %rsi
	leaq	32(%rsp), %rdi
	movl	$0, %eax
	call	Func2
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	movl	%eax, BoolGlob(%rip)
	movl	$2, %edx
.L40:
	leal	-3(%rdx,%rdx,4), %eax
	movl	%eax, 72(%rsp)
	leaq	72(%rsp), %rdx
	movl	$3, %esi
	movl	76(%rsp), %edi
	movl	$0, %eax
	call	Proc7
	movl	76(%rsp), %eax
	leal	1(%rax), %edx
	movl	%edx, 76(%rsp)
	cmpl	$2, %edx
	jle	.L40
	movl	72(%rsp), %ecx
	movl	$Array2Glob, %esi
	movl	$Array1Glob, %edi
	movl	$0, %eax
	call	Proc8
	movq	PtrGlb(%rip), %rdi
	movl	$0, %eax
	call	Proc1
	cmpb	$64, Char2Glob(%rip)
	jle	.L41
	movl	$65, %ebx
.L43:
	movsbl	%bl, %edi
	movl	$67, %esi
	movl	$0, %eax
	call	Func1
	cmpl	68(%rsp), %eax
	jne	.L42
	leaq	68(%rsp), %rsi
	movl	$0, %edi
	movl	$0, %eax
	call	Proc6
.L42:
	addl	$1, %ebx
	cmpb	%bl, Char2Glob(%rip)
	jge	.L43
.L41:
	movl	76(%rsp), %eax
	leal	(%rax,%rax,2), %eax
	movl	%eax, 72(%rsp)
	leaq	76(%rsp), %rdi
	movl	$0, %eax
	call	Proc2
	subl	$1, %ebp
	jne	.L45
	movl	$0, %edi
	movl	$0, %eax
	call	time
	subq	%r12, %rax
	movq	%rax, %rbx
	subq	%r13, %rbx
	movq	%rbx, %rdx
	movl	$500000000, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$500000000, %eax
	cqto
	idivq	%rbx
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	addq	$88, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1:
	.size	Proc0, .-Proc0
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movl	$0, %eax
	call	Proc0
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.comm	PtrGlbNext,8,8
	.comm	PtrGlb,8,8
	.comm	Array2Glob,10404,32
	.comm	Array1Glob,204,32
	.comm	Char2Glob,1,1
	.comm	Char1Glob,1,1
	.comm	BoolGlob,4,4
	.comm	IntGlob,4,4
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-16)"
	.section	.note.GNU-stack,"",@progbits
