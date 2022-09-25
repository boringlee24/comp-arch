	.file	"drystone_long.c"
	.text
	.p2align 4,,15
	.globl	Proc2
	.type	Proc2, @function
Proc2:
.LFB3:
	.cfi_startproc
	cmpb	$65, Char1Glob(%rip)
	movl	(%rdi), %eax
	je	.L5
	rep ret
	.p2align 4,,10
	.p2align 3
.L5:
	addl	$9, %eax
	subl	IntGlob(%rip), %eax
	movl	%eax, (%rdi)
	ret
	.cfi_endproc
.LFE3:
	.size	Proc2, .-Proc2
	.p2align 4,,15
	.globl	Proc3
	.type	Proc3, @function
Proc3:
.LFB4:
	.cfi_startproc
	movq	PtrGlb(%rip), %rax
	testq	%rax, %rax
	je	.L7
	movq	(%rax), %rax
	movl	IntGlob(%rip), %ecx
	movq	%rax, (%rdi)
	movq	PtrGlb(%rip), %rax
	leal	12(%rcx), %edx
	movl	%edx, 16(%rax)
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	xorl	%eax, %eax
	movl	$112, %edx
	movl	$100, IntGlob(%rip)
	movl	%edx, 16(%rax)
	ret
	.cfi_endproc
.LFE4:
	.size	Proc3, .-Proc3
	.p2align 4,,15
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
	.p2align 4,,15
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
	.p2align 4,,15
	.globl	Proc6
	.type	Proc6, @function
Proc6:
.LFB7:
	.cfi_startproc
	cmpl	$2, %edi
	je	.L12
	cmpl	$1, %edi
	movl	$3, (%rsi)
	je	.L14
	jb	.L18
	cmpl	$4, %edi
	jne	.L19
	movl	$2, (%rsi)
.L17:
	.p2align 4,,2
	rep ret
	.p2align 4,,10
	.p2align 3
.L14:
	cmpl	$100, IntGlob(%rip)
	jle	.L17
.L18:
	movl	$0, (%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L12:
	movl	$1, (%rsi)
	ret
	.p2align 4,,10
	.p2align 3
.L19:
	rep ret
	.cfi_endproc
.LFE7:
	.size	Proc6, .-Proc6
	.p2align 4,,15
	.globl	Proc1
	.type	Proc1, @function
Proc1:
.LFB2:
	.cfi_startproc
	movq	PtrGlb(%rip), %rax
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	(%rdi), %rdx
	movq	(%rax), %rcx
	movq	%rcx, (%rdx)
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rdx)
	movq	16(%rax), %rcx
	movq	%rcx, 16(%rdx)
	movq	24(%rax), %rcx
	movq	%rcx, 24(%rdx)
	movq	32(%rax), %rcx
	movq	%rcx, 32(%rdx)
	movq	40(%rax), %rcx
	movq	%rcx, 40(%rdx)
	movq	48(%rax), %rcx
	movq	%rcx, 48(%rdx)
	movq	(%rdi), %rdx
	movl	$5, 16(%rdi)
	movq	%rdx, (%rdx)
	movl	$5, 16(%rdx)
	movq	(%rdi), %rdx
	movq	(%rax), %rax
	movq	(%rdx), %rdx
	movq	%rax, (%rdx)
	movl	IntGlob(%rip), %eax
	movq	(%rdi), %rsi
	leal	12(%rax), %edx
	movq	PtrGlb(%rip), %rax
	movl	%edx, 16(%rax)
	movl	8(%rsi), %eax
	testl	%eax, %eax
	je	.L25
	movq	(%rsi), %rax
	movq	%rax, (%rdi)
	movq	8(%rsi), %rax
	movq	%rax, 8(%rdi)
	movq	16(%rsi), %rax
	movq	%rax, 16(%rdi)
	movq	24(%rsi), %rax
	movq	%rax, 24(%rdi)
	movq	32(%rsi), %rax
	movq	%rax, 32(%rdi)
	movq	40(%rsi), %rax
	movq	%rax, 40(%rdi)
	movq	48(%rsi), %rax
	movq	%rax, 48(%rdi)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	.cfi_restore_state
	movl	12(%rdi), %edi
	movl	$6, 16(%rsi)
	xorl	%eax, %eax
	addq	$12, %rsi
	call	Proc6
	movq	PtrGlb(%rip), %rdx
	movq	(%rbx), %rax
	movq	(%rdx), %rdx
	movq	%rdx, (%rax)
	movq	(%rbx), %rax
	addl	$12, 16(%rax)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2:
	.size	Proc1, .-Proc1
	.p2align 4,,15
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
	.p2align 4,,15
	.globl	Proc8
	.type	Proc8, @function
Proc8:
.LFB9:
	.cfi_startproc
	leal	5(%rdx), %r8d
	movslq	%r8d, %r9
	leaq	0(,%r9,4), %rax
	leaq	(%rdi,%rax), %r10
	movl	%ecx, (%r10)
	movl	%ecx, 4(%rdi,%rax)
	movl	%r8d, 120(%rdi,%rax)
	addq	%rsi, %rax
	imulq	$204, %r9, %rdi
	leaq	(%rsi,%rdi), %rcx
	movl	%r8d, (%rcx,%r9,4)
	leal	6(%rdx), %r9d
	addl	$4, %edx
	movslq	%edx, %rdx
	movslq	%r9d, %r9
	movl	%r8d, (%rcx,%r9,4)
	addl	$1, (%rcx,%rdx,4)
	movl	(%r10), %edx
	movl	%edx, 4080(%rdi,%rax)
	movl	$5, IntGlob(%rip)
	ret
	.cfi_endproc
.LFE9:
	.size	Proc8, .-Proc8
	.p2align 4,,15
	.globl	Func1
	.type	Func1, @function
Func1:
.LFB10:
	.cfi_startproc
	xorl	%eax, %eax
	cmpb	%sil, %dil
	sete	%al
	ret
	.cfi_endproc
.LFE10:
	.size	Func1, .-Func1
	.p2align 4,,15
	.globl	Func2
	.type	Func2, @function
Func2:
.LFB11:
	.cfi_startproc
	movzbl	1(%rdi), %eax
	cmpb	%al, 2(%rsi)
	je	.L32
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	strcmp
	testl	%eax, %eax
	setg	%al
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	movzbl	%al, %eax
	ret
.L32:
	jmp	.L32
	.cfi_endproc
.LFE11:
	.size	Func2, .-Func2
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"Dhrystone time for %ld passes = %ld\n"
	.align 8
.LC1:
	.string	"This machine benchmarks at %ld dhrystones/second\n"
	.text
	.p2align 4,,15
	.globl	Proc0
	.type	Proc0, @function
Proc0:
.LFB1:
	.cfi_startproc
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	xorl	%edi, %edi
	xorl	%eax, %eax
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$64, %rsp
	.cfi_def_cfa_offset 96
	call	time
	xorl	%edi, %edi
	movq	%rax, %rbx
	xorl	%eax, %eax
	call	time
	movl	$56, %edi
	movq	%rax, %rbp
	subq	%rbx, %rbp
	call	malloc
	movl	$56, %edi
	movq	%rax, %rbx
	movq	%rax, PtrGlbNext(%rip)
	call	malloc
	movq	%rbx, (%rax)
	movabsq	$5642821575076104260, %rbx
	movl	$18254, %ecx
	movq	%rbx, 20(%rax)
	movabsq	$4706902966564560965, %rbx
	movq	%rax, PtrGlb(%rip)
	movq	%rbx, 28(%rax)
	movabsq	$2325349785699101773, %rbx
	movl	$0, 8(%rax)
	movq	%rbx, 36(%rax)
	movl	$2, 12(%rax)
	xorl	%edi, %edi
	movl	$40, 16(%rax)
	movl	$1230132307, 44(%rax)
	movl	$500000000, %ebx
	movw	%cx, 48(%rax)
	movb	$0, 50(%rax)
	xorl	%eax, %eax
	call	time
	movq	%rax, %r12
	.p2align 4,,10
	.p2align 3
.L38:
	movabsq	$5642821575076104260, %rax
	leaq	32(%rsp), %rsi
	movq	%rsp, %rdi
	movq	%rax, 32(%rsp)
	movabsq	$4706902966564560965, %rax
	movb	$65, Char1Glob(%rip)
	movq	%rax, 40(%rsp)
	movabsq	$2325069237881678925, %rax
	movl	$0, BoolGlob(%rip)
	movq	%rax, 48(%rsp)
	movl	$18254, %eax
	movb	$66, Char2Glob(%rip)
	movw	%ax, 60(%rsp)
	xorl	%eax, %eax
	movl	$1230132307, 56(%rsp)
	movb	$0, 62(%rsp)
	call	Func2
	xorl	%edx, %edx
	testl	%eax, %eax
	movl	$7, %ecx
	sete	%dl
	movl	$Array2Glob, %esi
	movl	$Array1Glob, %edi
	movl	%edx, BoolGlob(%rip)
	xorl	%eax, %eax
	movl	$3, %edx
	call	Proc8
	movq	PtrGlb(%rip), %rdi
	xorl	%eax, %eax
	call	Proc1
	movzbl	Char2Glob(%rip), %ecx
	cmpb	$64, %cl
	jle	.L35
	movl	$65, %edx
	.p2align 4,,10
	.p2align 3
.L36:
	addl	$1, %edx
	cmpb	%dl, %cl
	jge	.L36
.L35:
	subl	$1, %ebx
	jne	.L38
	xorl	%edi, %edi
	xorl	%eax, %eax
	call	time
	movq	%rax, %rbx
	movl	$500000000, %esi
	movl	$.LC0, %edi
	subq	%r12, %rbx
	xorl	%eax, %eax
	subq	%rbp, %rbx
	movq	%rbx, %rdx
	call	printf
	movl	$500000000, %eax
	addq	$64, %rsp
	.cfi_def_cfa_offset 32
	movl	$.LC1, %edi
	cqto
	idivq	%rbx
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	movq	%rax, %rsi
	xorl	%eax, %eax
	jmp	printf
	.cfi_endproc
.LFE1:
	.size	Proc0, .-Proc0
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	xorl	%eax, %eax
	jmp	Proc0
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.text
	.p2align 4,,15
	.globl	Func3
	.type	Func3, @function
Func3:
.LFB12:
	.cfi_startproc
	xorl	%eax, %eax
	cmpl	$2, %edi
	sete	%al
	ret
	.cfi_endproc
.LFE12:
	.size	Func3, .-Func3
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
