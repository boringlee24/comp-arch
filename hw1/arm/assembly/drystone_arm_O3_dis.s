	.arch armv8-a
	.file	"drystone_arm.c"
	.text
	.align	2
	.p2align 3,,7
	.global	Proc2
	.type	Proc2, %function
Proc2:
	adrp	x1, Char1Glob
	ldrb	w1, [x1, #:lo12:Char1Glob]
	cmp	w1, 65
	beq	.L4
	ret
	.p2align 3
.L4:
	adrp	x2, IntGlob
	ldr	w1, [x0]
	add	w1, w1, 9
	ldr	w2, [x2, #:lo12:IntGlob]
	sub	w1, w1, w2
	str	w1, [x0]
	ret
	.size	Proc2, .-Proc2
	.align	2
	.p2align 3,,7
	.global	Proc3
	.type	Proc3, %function
Proc3:
	adrp	x3, PtrGlb
	ldr	x1, [x3, #:lo12:PtrGlb]
	cbz	x1, .L6
	adrp	x2, IntGlob
	ldr	x1, [x1]
	ldr	w2, [x2, #:lo12:IntGlob]
	str	x1, [x0]
	add	w2, w2, 12
	ldr	x1, [x3, #:lo12:PtrGlb]
	str	w2, [x1, 16]
	ret
	.p2align 3
.L6:
	adrp	x0, IntGlob
	mov	w3, 100
	mov	w2, 112
	str	w3, [x0, #:lo12:IntGlob]
	str	w2, [x1, 16]
	ret
	.size	Proc3, .-Proc3
	.align	2
	.p2align 3,,7
	.global	Proc4
	.type	Proc4, %function
Proc4:
	adrp	x1, Char2Glob
	mov	w2, 66
	strb	w2, [x1, #:lo12:Char2Glob]
	ret
	.size	Proc4, .-Proc4
	.align	2
	.p2align 3,,7
	.global	Proc5
	.type	Proc5, %function
Proc5:
	adrp	x2, Char1Glob
	adrp	x1, BoolGlob
	mov	w3, 65
	strb	w3, [x2, #:lo12:Char1Glob]
	str	wzr, [x1, #:lo12:BoolGlob]
	ret
	.size	Proc5, .-Proc5
	.align	2
	.p2align 3,,7
	.global	Proc6
	.type	Proc6, %function
Proc6:
	cmp	w0, 2
	beq	.L11
	mov	w2, 3
	cmp	w0, 1
	str	w2, [x1]
	beq	.L13
	cbz	w0, .L16
	cmp	w0, 4
	bne	.L17
	mov	w0, 2
	str	w0, [x1]
.L12:
	ret
	.p2align 3
.L13:
	adrp	x0, IntGlob
	ldr	w0, [x0, #:lo12:IntGlob]
	cmp	w0, 100
	ble	.L12
.L16:
	str	wzr, [x1]
	ret
	.p2align 3
.L11:
	mov	w0, 1
	str	w0, [x1]
	ret
	.p2align 3
.L17:
	ret
	.size	Proc6, .-Proc6
	.align	2
	.p2align 3,,7
	.global	Proc1
	.type	Proc1, %function
Proc1:
	adrp	x5, PtrGlb
	ldr	x2, [x0]
	adrp	x3, IntGlob
	mov	w8, 5
	ldr	x1, [x5, #:lo12:PtrGlb]
	ldr	w3, [x3, #:lo12:IntGlob]
	add	w3, w3, 12
	ldp	x6, x7, [x1]
	stp	x6, x7, [x2]
	ldp	x6, x7, [x1, 16]
	ldr	x4, [x0]
	stp	x6, x7, [x2, 16]
	ldp	x6, x7, [x1, 32]
	stp	x6, x7, [x2, 32]
	ldr	x6, [x1, 48]
	str	x6, [x2, 48]
	str	w8, [x0, 16]
	str	x4, [x4]
	str	w8, [x4, 16]
	ldr	x4, [x0]
	ldr	x2, [x1]
	ldr	x1, [x4]
	str	x2, [x1]
	ldr	x2, [x0]
	ldr	x4, [x5, #:lo12:PtrGlb]
	ldr	w1, [x2, 8]
	str	w3, [x4, 16]
	cbz	w1, .L23
	ldp	x4, x5, [x2]
	stp	x4, x5, [x0]
	ldp	x4, x5, [x2, 16]
	stp	x4, x5, [x0, 16]
	ldp	x4, x5, [x2, 32]
	stp	x4, x5, [x0, 32]
	ldr	x1, [x2, 48]
	str	x1, [x0, 48]
	ret
	.p2align 3
.L23:
	stp	x29, x30, [sp, -16]!
	mov	x3, x0
	mov	w4, 6
	add	x1, x2, 12
	add	x29, sp, 0
	ldr	w0, [x0, 12]
	str	w4, [x2, 16]
	bl	Proc6
	ldr	x1, [x5, #:lo12:PtrGlb]
	ldr	x0, [x3]
	ldr	x1, [x1]
	str	x1, [x0]
	ldr	x1, [x3]
	ldr	w0, [x1, 16]
	add	w0, w0, 12
	str	w0, [x1, 16]
	ldp	x29, x30, [sp], 16
	ret
	.size	Proc1, .-Proc1
	.align	2
	.p2align 3,,7
	.global	Proc7
	.type	Proc7, %function
Proc7:
	add	w3, w0, 2
	mov	w0, w4
	add	w1, w3, w1
	str	w1, [x2]
	ret
	.size	Proc7, .-Proc7
	.align	2
	.p2align 3,,7
	.global	Proc8
	.type	Proc8, %function
Proc8:
	add	w5, w2, 5
	mov	x6, x0
	mov	w4, 204
	sbfiz	x2, x2, 2, 32
	sxtw	x7, w5
	smull	x4, w5, w4
	add	x8, x6, x7, lsl 2
	str	w3, [x6, x7, lsl 2]
	str	w3, [x8, 4]
	add	x3, x4, x2
	add	x3, x1, x3
	str	w5, [x8, 120]
	add	x4, x4, 4080
	adrp	x8, IntGlob
	add	x1, x1, x4
	ldr	w4, [x3, 16]
	add	x1, x1, x2
	str	w5, [x3, 24]
	add	w2, w4, 1
	mov	w4, 5
	stp	w2, w5, [x3, 16]
	ldr	w2, [x6, x7, lsl 2]
	str	w4, [x8, #:lo12:IntGlob]
	str	w2, [x1, 20]
	ret
	.size	Proc8, .-Proc8
	.align	2
	.p2align 3,,7
	.global	Func1
	.type	Func1, %function
Func1:
	uxtb	w1, w1
	cmp	w1, w0, uxtb
	cset	w0, eq
	ret
	.size	Func1, .-Func1
	.align	2
	.p2align 3,,7
	.global	Func2
	.type	Func2, %function
Func2:
	ldrb	w3, [x1, 2]
	ldrb	w2, [x0, 1]
	cmp	w3, w2
	bne	.L28
.L30:
	b	.L30
	.p2align 3
.L28:
	stp	x29, x30, [sp, -16]!
	add	x29, sp, 0
	bl	strcmp
	cmp	w0, 0
	cset	w0, gt
	ldp	x29, x30, [sp], 16
	ret
	.size	Func2, .-Func2
	.align	2
	.p2align 3,,7
	.global	Proc0
	.type	Proc0, %function
Proc0:
	stp	x29, x30, [sp, -208]!
	adrp	x1, __stack_chk_guard
	add	x1, x1, :lo12:__stack_chk_guard
	mov	w0, 0
	add	x29, sp, 0
	ldr	x2, [x1]
	str	x2, [x29, 200]
	mov	x2,0
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	adrp	x22, PtrGlb
	stp	x23, x24, [sp, 48]
	adrp	x21, Char1Glob
	stp	x25, x26, [sp, 64]
	mov	w19, 49664
	stp	x27, x28, [sp, 80]
	bl	time
	mov	x20, x0
	mov	w0, 0
	add	x23, x29, 168
	movk	w19, 0xbeb, lsl 16
	bl	time
	sub	x0, x0, x20
	str	x0, [x29, 112]
	mov	x0, 56
	adrp	x28, Array1Glob
	bl	malloc
	mov	x20, x0
	adrp	x1, PtrGlbNext
	mov	x0, 56
	str	x20, [x1, #:lo12:PtrGlbNext]
	bl	malloc
	adrp	x1, .LC0
	mov	w5, 2
	add	x1, x1, :lo12:.LC0
	mov	w4, 40
	add	x2, x0, 20
	str	x20, [x0]
	stp	wzr, w5, [x0, 8]
	adrp	x20, BoolGlob
	str	w4, [x0, 16]
	str	x0, [x22, #:lo12:PtrGlb]
	ldr	x0, [x1, 16]
	ldp	x4, x5, [x1]
	str	x0, [x2, 16]
	ldr	x1, [x1, 23]
	mov	w0, 0
	stp	x4, x5, [x2]
	str	x1, [x2, 23]
	bl	time
	str	x0, [x29, 104]
	adrp	x0, .LC1
	add	x1, x21, :lo12:Char1Glob
	add	x0, x0, :lo12:.LC1
	adrp	x21, Char2Glob
	str	x1, [x29, 120]
	ldp	x24, x25, [x0]
	ldr	x27, [x0, 16]
	ldr	x26, [x0, 23]
	.p2align 2
.L35:
	ldr	x3, [x29, 120]
	mov	x1, x23
	add	x0, x29, 136
	mov	w2, 66
	mov	w4, 65
	str	x27, [x23, 16]
	strb	w2, [x21, #:lo12:Char2Glob]
	strb	w4, [x3]
	str	wzr, [x20, #:lo12:BoolGlob]
	stp	x24, x25, [x23]
	str	x26, [x23, 23]
	bl	Func2
	adrp	x1, Array2Glob
	mov	w6, 8
	add	x1, x1, :lo12:Array2Glob
	add	x2, x28, :lo12:Array1Glob
	mov	w4, 7
	cmp	w0, 0
	ldr	x0, [x22, #:lo12:PtrGlb]
	cset	w9, eq
	ldr	w5, [x1, 1660]
	mov	w8, 5
	str	w6, [x1, 1664]
	add	w5, w5, 1
	str	w6, [x1, 1668]
	str	w5, [x1, 1660]
	str	w4, [x1, 5744]
	adrp	x1, IntGlob
	stp	w4, w4, [x2, 32]
	str	w6, [x2, 152]
	str	w8, [x1, #:lo12:IntGlob]
	str	w9, [x20, #:lo12:BoolGlob]
	bl	Proc1
	ldrb	w1, [x21, #:lo12:Char2Glob]
	cmp	w1, 64
	bls	.L33
	mov	w0, 65
	.p2align 2
.L34:
	add	w0, w0, 1
	uxtb	w0, w0
	cmp	w0, w1
	bls	.L34
.L33:
	subs	w19, w19, #1
	bne	.L35
	mov	w0, 0
	mov	x20, 49664
	movk	x20, 0xbeb, lsl 16
	bl	time
	ldr	x1, [x29, 104]
	sub	x0, x0, x1
	ldr	x1, [x29, 112]
	sub	x19, x0, x1
	adrp	x0, .LC2
	mov	x1, x20
	mov	x2, x19
	add	x0, x0, :lo12:.LC2
	bl	printf
	adrp	x0, __stack_chk_guard
	add	x0, x0, :lo12:__stack_chk_guard
	ldr	x1, [x29, 200]
	ldr	x0, [x0]
	eor	x0, x1, x0
	cbnz	x0, .L41
	ldp	x21, x22, [sp, 32]
	adrp	x0, .LC3
	ldp	x23, x24, [sp, 48]
	add	x0, x0, :lo12:.LC3
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	sdiv	x1, x20, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 208
	b	printf
.L41:
	bl	__stack_chk_fail
	.size	Proc0, .-Proc0
	.section	.text.startup,"ax",@progbits
	.align	2
	.p2align 3,,7
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -16]!
	add	x29, sp, 0
	bl	Proc0
	mov	w0, 0
	ldp	x29, x30, [sp], 16
	ret
	.size	main, .-main
	.text
	.align	2
	.p2align 3,,7
	.global	Func3
	.type	Func3, %function
Func3:
	cmp	w0, 2
	cset	w0, eq
	ret
	.size	Func3, .-Func3
	.comm	PtrGlbNext,8,8
	.comm	PtrGlb,8,8
	.comm	Array2Glob,10404,8
	.comm	Array1Glob,204,8
	.comm	Char2Glob,1,1
	.comm	Char1Glob,1,1
	.comm	BoolGlob,4,4
	.comm	IntGlob,4,4
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align	3
.LC0:
	.string	"DHRYSTONE PROGRAM, SOME STRING"
	.zero	1
.LC2:
	.string	"Dhrystone time for %ld passes = %ld\n"
	.zero	3
.LC3:
	.string	"This machine benchmarks at %ld dhrystones/second\n"
	.zero	6
.LC1:
	.string	"DHRYSTONE PROGRAM, 2'ND STRING"
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
