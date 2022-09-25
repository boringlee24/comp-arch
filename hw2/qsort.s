	.file	"qsort.c"
	.data
	.align 8
	.type	seed, @object
	.size	seed, 8
seed:
	.quad	7
	.globl	buffer
	.bss
	.align 32
	.type	buffer, @object
	.size	buffer, 16000
buffer:
	.zero	16000
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	.L2
.L6:
	movl	$0, -8(%rbp)
	jmp	.L3
.L5:
	movl	$131072, %edi
	movl	$0, %eax
	call	random
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jns	.L4
	negq	-16(%rbp)
.L4:
	movl	-8(%rbp), %eax
	cltq
	movq	-16(%rbp), %rdx
	movq	%rdx, buffer(,%rax,8)
	addl	$1, -8(%rbp)
.L3:
	cmpl	$1999, -8(%rbp)
	jle	.L5
	movl	$buffer, %edx
	movl	$1999, %esi
	movl	$0, %edi
	movl	$0, %eax
	call	quick
	addl	$1, -4(%rbp)
.L2:
	cmpl	$99, -4(%rbp)
	jle	.L6
	movl	$0, %edi
	call	exit
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	quick
	.type	quick, @function
quick:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movq	%rdx, -48(%rbp)
	movl	-36(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	.L17
	movl	-36(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -8(%rbp)
	movl	-40(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.L9
.L16:
	jmp	.L10
.L12:
	addl	$1, -4(%rbp)
.L10:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L11
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jle	.L12
.L11:
	jmp	.L13
.L15:
	subl	$1, -8(%rbp)
.L13:
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jle	.L14
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	cmpq	-16(%rbp), %rax
	jge	.L15
.L14:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	.L9
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rdx, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rcx
	movq	-48(%rbp), %rax
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, (%rdx)
	movl	-8(%rbp), %eax
	cltq
	leaq	0(,%rax,8), %rdx
	movq	-48(%rbp), %rax
	addq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rax, (%rdx)
.L9:
	movl	-4(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jl	.L16
	movl	-4(%rbp), %eax
	leal	-1(%rax), %ecx
	movq	-48(%rbp), %rdx
	movl	-36(%rbp), %eax
	movl	%ecx, %esi
	movl	%eax, %edi
	movl	$0, %eax
	call	quick
	movl	-4(%rbp), %eax
	leal	1(%rax), %ecx
	movq	-48(%rbp), %rdx
	movl	-40(%rbp), %eax
	movl	%eax, %esi
	movl	%ecx, %edi
	movl	$0, %eax
	call	quick
.L17:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	quick, .-quick
	.globl	random
	.type	random, @function
random:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	seed(%rip), %rax
	imulq	$25173, %rax, %rax
	addq	$13849, %rax
	movq	%rax, seed(%rip)
	movq	seed(%rip), %rax
	cqto
	idivq	-8(%rbp)
	movq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	random, .-random
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-16)"
	.section	.note.GNU-stack,"",@progbits
