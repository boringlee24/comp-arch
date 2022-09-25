	.arch armv8-a
	.file	"drystone_arm.c"
	.text
	.align	2
	.p2align 3,,7
	.global	Proc0
	.type	Proc0, %function
Proc0:
	stp	x29, x30, [sp, -256]!
	adrp	x1, __stack_chk_guard
	add	x1, x1, :lo12:__stack_chk_guard
	mov	w0, 0
	add	x29, sp, 0
	ldr	x2, [x1]
	str	x2, [x29, 248]
	mov	x2,0
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	adrp	x20, PtrGlb
	stp	x23, x24, [sp, 48]
	mov	w21, 2
	stp	x25, x26, [sp, 64]
	adrp	x23, Char1Glob
	stp	x27, x28, [sp, 80]
	bl	time
	mov	x22, x0
	mov	w0, 0
	mov	w19, 49664
	add	x24, x29, 216
	bl	time
	sub	x0, x0, x22
	str	x0, [x29, 104]
	mov	x0, 56
	movk	w19, 0xbeb, lsl 16
	bl	malloc
	mov	x22, x0
	adrp	x1, PtrGlbNext
	mov	x0, 56
	str	x22, [x1, #:lo12:PtrGlbNext]
	bl	malloc
	adrp	x1, .LC0
	mov	w3, 40
	add	x1, x1, :lo12:.LC0
	add	x2, x0, 20
	str	x22, [x0]
	adrp	x22, Char2Glob
	stp	wzr, w21, [x0, 8]
	str	w3, [x0, 16]
	str	x0, [x20, #:lo12:PtrGlb]
	ldr	x0, [x1, 16]
	ldp	x4, x5, [x1]
	str	x0, [x2, 16]
	ldr	x1, [x1, 23]
	mov	w0, 0
	stp	x4, x5, [x2]
	str	x1, [x2, 23]
	str	w21, [x29, 116]
	adrp	x21, IntGlob
	bl	time
	str	x0, [x29, 96]
	adrp	x0, .LC1
	add	x1, x23, :lo12:Char1Glob
	add	x0, x0, :lo12:.LC1
	str	x1, [x29, 168]
	add	x1, x22, :lo12:Char2Glob
	adrp	x2, Array2Glob
	str	x1, [x29, 160]
	add	x1, x21, :lo12:IntGlob
	str	x1, [x29, 120]
	add	x25, x2, :lo12:Array2Glob
	ldr	x1, [x0, 16]
	adrp	x8, BoolGlob
	add	x27, x8, :lo12:BoolGlob
	adrp	x4, Array1Glob
	str	x1, [x29, 136]
	add	x26, x4, :lo12:Array1Glob
	ldr	x1, [x0, 23]
	mov	w23, 7
	ldrb	w28, [x29, 185]
	mov	w22, 8
	str	x1, [x29, 128]
	mov	w21, 5
	ldp	x0, x1, [x0]
	stp	x0, x1, [x29, 144]
	mov	x0, x25
	mov	x25, x27
	mov	x27, x0
	.p2align 2
.L13:
	ldr	x0, [x29, 136]
	mov	w1, 65
	cmp	w28, 82
	str	wzr, [x25]
	str	x0, [x24, 16]
	ldr	x0, [x29, 168]
	strb	w1, [x0]
	mov	w1, 66
	ldr	x0, [x29, 160]
	strb	w1, [x0]
	ldr	x0, [x29, 128]
	str	x0, [x24, 23]
	ldp	x0, x1, [x29, 144]
	stp	x0, x1, [x24]
	bne	.L2
.L3:
	b	.L3
	.p2align 3
.L2:
	mov	x1, x24
	add	x0, x29, 184
	bl	strcmp
	cmp	w0, 0
	ldr	x6, [x20, #:lo12:PtrGlb]
	cset	w0, le
	ldr	w1, [x27, 1660]
	add	w1, w1, 1
	ldr	x7, [x6]
	str	w1, [x27, 1660]
	ldr	x1, [x29, 120]
	str	w22, [x26, 152]
	str	w22, [x27, 1664]
	str	w22, [x27, 1668]
	str	w23, [x27, 5744]
	stp	w23, w23, [x26, 32]
	str	w0, [x25]
	str	w21, [x1]
	ldp	x0, x1, [x6]
	stp	x0, x1, [x7]
	ldp	x0, x1, [x6, 16]
	ldr	x8, [x6]
	stp	x0, x1, [x7, 16]
	ldp	x0, x1, [x6, 32]
	stp	x0, x1, [x7, 32]
	ldr	x0, [x6, 48]
	str	x0, [x7, 48]
	str	w21, [x6, 16]
	str	x8, [x8]
	str	w21, [x8, 16]
	ldr	x0, [x6]
	ldr	x1, [x0]
	str	x0, [x1]
	mov	w1, 17
	ldr	x0, [x20, #:lo12:PtrGlb]
	ldr	x7, [x6]
	str	w1, [x0, 16]
	ldr	w1, [x7, 8]
	cbz	w1, .L25
	ldp	x0, x1, [x7]
	stp	x0, x1, [x6]
	ldp	x0, x1, [x7, 16]
	stp	x0, x1, [x6, 16]
	ldp	x0, x1, [x7, 32]
	stp	x0, x1, [x6, 32]
	ldr	x0, [x7, 48]
	str	x0, [x6, 48]
.L9:
	subs	w19, w19, #1
	bne	.L13
	mov	w0, 0
	mov	x20, 49664
	movk	x20, 0xbeb, lsl 16
	bl	time
	ldr	x1, [x29, 96]
	sub	x0, x0, x1
	ldr	x1, [x29, 104]
	sub	x19, x0, x1
	adrp	x0, .LC2
	mov	x1, x20
	mov	x2, x19
	add	x0, x0, :lo12:.LC2
	bl	printf
	adrp	x0, __stack_chk_guard
	add	x0, x0, :lo12:__stack_chk_guard
	ldr	x1, [x29, 248]
	ldr	x0, [x0]
	eor	x0, x1, x0
	cbnz	x0, .L26
	ldp	x21, x22, [sp, 32]
	adrp	x0, .LC3
	ldp	x23, x24, [sp, 48]
	add	x0, x0, :lo12:.LC3
	ldp	x25, x26, [sp, 64]
	ldp	x27, x28, [sp, 80]
	sdiv	x1, x20, x19
	ldp	x19, x20, [sp, 16]
	ldp	x29, x30, [sp], 256
	b	printf
	.p2align 3
.L25:
	mov	w1, 6
	str	w1, [x7, 16]
	ldr	w1, [x6, 12]
	cmp	w1, 2
	beq	.L27
	mov	w2, 3
	str	w2, [x7, 12]
	cbz	w1, .L6
	cmp	w1, 4
	bne	.L7
	ldr	w1, [x29, 116]
	str	w1, [x7, 12]
.L7:
	ldr	x0, [x0]
	str	x0, [x7]
	ldr	x1, [x6]
	ldr	w0, [x1, 16]
	add	w0, w0, 12
	str	w0, [x1, 16]
	b	.L9
	.p2align 3
.L27:
	mov	w1, 1
	str	w1, [x7, 12]
	b	.L7
	.p2align 3
.L6:
	str	wzr, [x7, 12]
	b	.L7
.L26:
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
	.global	Proc1
	.type	Proc1, %function
Proc1:
	adrp	x4, PtrGlb
	ldr	x2, [x0]
	adrp	x3, IntGlob
	mov	w5, 5
	ldr	x1, [x4, #:lo12:PtrGlb]
	ldr	w8, [x3, #:lo12:IntGlob]
	add	w9, w8, 12
	ldp	x6, x7, [x1]
	stp	x6, x7, [x2]
	ldp	x6, x7, [x1, 16]
	ldr	x3, [x0]
	stp	x6, x7, [x2, 16]
	ldp	x6, x7, [x1, 32]
	stp	x6, x7, [x2, 32]
	ldr	x6, [x1, 48]
	str	x6, [x2, 48]
	str	w5, [x0, 16]
	str	x3, [x3]
	str	w5, [x3, 16]
	ldr	x3, [x0]
	ldr	x2, [x1]
	ldr	x1, [x3]
	str	x2, [x1]
	ldr	x1, [x0]
	ldr	x2, [x4, #:lo12:PtrGlb]
	ldr	w3, [x1, 8]
	str	w9, [x2, 16]
	cbz	w3, .L39
	ldp	x2, x3, [x1]
	stp	x2, x3, [x0]
	ldp	x2, x3, [x1, 16]
	stp	x2, x3, [x0, 16]
	ldp	x2, x3, [x1, 32]
	stp	x2, x3, [x0, 32]
	ldr	x1, [x1, 48]
	str	x1, [x0, 48]
	ret
	.p2align 3
.L39:
	ldr	w3, [x0, 12]
	mov	w4, 6
	cmp	w3, 2
	str	w4, [x1, 16]
	beq	.L32
	mov	w4, 3
	cmp	w3, 1
	str	w4, [x1, 12]
	beq	.L34
	cbz	w3, .L38
	cmp	w3, 4
	bne	.L33
	mov	w3, 2
	str	w3, [x1, 12]
	b	.L33
	.p2align 3
.L32:
	mov	w3, 1
	str	w3, [x1, 12]
.L33:
	ldr	x2, [x2]
	str	x2, [x1]
	ldr	x1, [x0]
	ldr	w0, [x1, 16]
	add	w0, w0, 12
	str	w0, [x1, 16]
	ret
	.p2align 3
.L34:
	cmp	w8, 100
	ble	.L33
.L38:
	str	wzr, [x1, 12]
	b	.L33
	.size	Proc1, .-Proc1
	.align	2
	.p2align 3,,7
	.global	Proc2
	.type	Proc2, %function
Proc2:
	adrp	x1, Char1Glob
	ldrb	w1, [x1, #:lo12:Char1Glob]
	cmp	w1, 65
	beq	.L42
	ret
	.p2align 3
.L42:
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
	cbz	x1, .L44
	adrp	x2, IntGlob
	ldr	x1, [x1]
	ldr	w2, [x2, #:lo12:IntGlob]
	str	x1, [x0]
	add	w2, w2, 12
	ldr	x1, [x3, #:lo12:PtrGlb]
	str	w2, [x1, 16]
	ret
	.p2align 3
.L44:
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
	beq	.L49
	mov	w2, 3
	cmp	w0, 1
	str	w2, [x1]
	beq	.L51
	cbz	w0, .L54
	cmp	w0, 4
	bne	.L55
	mov	w0, 2
	str	w0, [x1]
.L50:
	ret
	.p2align 3
.L51:
	adrp	x0, IntGlob
	ldr	w0, [x0, #:lo12:IntGlob]
	cmp	w0, 100
	ble	.L50
.L54:
	str	wzr, [x1]
	ret
	.p2align 3
.L49:
	mov	w0, 1
	str	w0, [x1]
	ret
	.p2align 3
.L55:
	ret
	.size	Proc6, .-Proc6
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
	bne	.L60
.L62:
	b	.L62
	.p2align 3
.L60:
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
