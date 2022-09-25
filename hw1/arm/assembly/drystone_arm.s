	.arch armv8-a
	.file	"drystone_arm.c"
	.text
	.align	2
	.global	Proc2
	.type	Proc2, %function
Proc2:
	adrp	x1, Char1Glob
	ldrb	w1, [x1, #:lo12:Char1Glob]
	cmp	w1, 65
	bne	.L2
	ldr	w1, [x0]
	add	w1, w1, 9
	adrp	x2, IntGlob
	ldr	w2, [x2, #:lo12:IntGlob]
	sub	w1, w1, w2
	str	w1, [x0]
.L2:
	ret
	.size	Proc2, .-Proc2
	.align	2
	.global	Proc3
	.type	Proc3, %function
Proc3:
	adrp	x1, PtrGlb
	ldr	x1, [x1, #:lo12:PtrGlb]
	cbz	x1, .L4
	ldr	x1, [x1]
	str	x1, [x0]
	b	.L5
.L4:
	mov	w1, 100
	adrp	x0, IntGlob
	str	w1, [x0, #:lo12:IntGlob]
.L5:
	adrp	x0, PtrGlb
	ldr	x1, [x0, #:lo12:PtrGlb]
	adrp	x0, IntGlob
	ldr	w0, [x0, #:lo12:IntGlob]
	add	w0, w0, 12
	str	w0, [x1, 16]
	ret
	.size	Proc3, .-Proc3
	.align	2
	.global	Proc4
	.type	Proc4, %function
Proc4:
	mov	w1, 66
	adrp	x0, Char2Glob
	strb	w1, [x0, #:lo12:Char2Glob]
	ret
	.size	Proc4, .-Proc4
	.align	2
	.global	Proc5
	.type	Proc5, %function
Proc5:
	mov	w1, 65
	adrp	x0, Char1Glob
	strb	w1, [x0, #:lo12:Char1Glob]
	adrp	x0, BoolGlob
	str	wzr, [x0, #:lo12:BoolGlob]
	ret
	.size	Proc5, .-Proc5
	.align	2
	.global	Proc6
	.type	Proc6, %function
Proc6:
	cmp	w0, 2
	beq	.L9
	mov	w2, 3
	str	w2, [x1]
	cmp	w0, 4
	bhi	.L10
	adrp	x2, .L12
	add	x2, x2, :lo12:.L12
	ldrb	w0, [x2,w0,uxtw]
	adr	x2, .Lrtx12
	add	x0, x2, w0, sxtb #2
	br	x0
.Lrtx12:
	.section	.rodata
	.align	0
	.align	2
.L12:
	.byte	(.L11 - .Lrtx12) / 4
	.byte	(.L13 - .Lrtx12) / 4
	.byte	(.L9 - .Lrtx12) / 4
	.byte	(.L10 - .Lrtx12) / 4
	.byte	(.L14 - .Lrtx12) / 4
	.text
.L11:
	str	wzr, [x1]
	ret
.L13:
	adrp	x0, IntGlob
	ldr	w0, [x0, #:lo12:IntGlob]
	cmp	w0, 100
	ble	.L15
	str	wzr, [x1]
	ret
.L15:
	mov	w0, 3
	str	w0, [x1]
	ret
.L9:
	mov	w0, 1
	str	w0, [x1]
	ret
.L14:
	mov	w0, 2
	str	w0, [x1]
.L10:
	ret
	.size	Proc6, .-Proc6
	.align	2
	.global	Proc1
	.type	Proc1, %function
Proc1:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	x19, [sp, 16]
	mov	x19, x0
	ldr	x0, [x0]
	adrp	x1, PtrGlb
	ldr	x1, [x1, #:lo12:PtrGlb]
	ldp	x2, x3, [x1]
	stp	x2, x3, [x0]
	ldp	x2, x3, [x1, 16]
	stp	x2, x3, [x0, 16]
	ldp	x2, x3, [x1, 32]
	stp	x2, x3, [x0, 32]
	ldr	x1, [x1, 48]
	str	x1, [x0, 48]
	mov	w0, 5
	str	w0, [x19, 16]
	ldr	x1, [x19]
	str	w0, [x1, 16]
	ldr	x0, [x19]
	str	x0, [x0]
	ldr	x0, [x19]
	ldr	x0, [x0]
	bl	Proc3
	ldr	x0, [x19]
	ldr	w1, [x0, 8]
	cbnz	w1, .L17
	mov	w1, 6
	str	w1, [x0, 16]
	ldr	x1, [x19]
	add	x1, x1, 12
	ldr	w0, [x19, 12]
	bl	Proc6
	ldr	x0, [x19]
	adrp	x1, PtrGlb
	ldr	x1, [x1, #:lo12:PtrGlb]
	ldr	x1, [x1]
	str	x1, [x0]
	ldr	x1, [x19]
	ldr	w0, [x1, 16]
	add	w0, w0, 12
	str	w0, [x1, 16]
	b	.L18
.L17:
	ldp	x2, x3, [x0]
	stp	x2, x3, [x19]
	ldp	x2, x3, [x0, 16]
	stp	x2, x3, [x19, 16]
	ldp	x2, x3, [x0, 32]
	stp	x2, x3, [x19, 32]
	ldr	x0, [x0, 48]
	str	x0, [x19, 48]
.L18:
	ldr	x19, [sp, 16]
	ldp	x29, x30, [sp], 32
	ret
	.size	Proc1, .-Proc1
	.align	2
	.global	Proc7
	.type	Proc7, %function
Proc7:
	add	w0, w0, 2
	add	w1, w0, w1
	str	w1, [x2]
	ret
	.size	Proc7, .-Proc7
	.align	2
	.global	Proc8
	.type	Proc8, %function
Proc8:
	add	w4, w2, 5
	sxtw	x7, w4
	add	x5, x0, x7, lsl 2
	str	w3, [x0, x7, lsl 2]
	str	w3, [x5, 4]
	str	w4, [x5, 120]
	add	w6, w2, 6
	cmp	w4, w6
	bgt	.L22
	add	x5, x7, x7, lsl 1
	add	x5, x5, x5, lsl 4
	add	x5, x1, x5, lsl 2
	mov	w3, w4
.L23:
	str	w4, [x5, w3, sxtw 2]
	add	w3, w3, 1
	cmp	w3, w6
	ble	.L23
.L22:
	add	x3, x7, x7, lsl 1
	add	x3, x3, x3, lsl 4
	lsl	x3, x3, 2
	add	x2, x3, x2, sxtw 2
	add	x2, x1, x2
	ldr	w5, [x2, 16]
	add	w5, w5, 1
	str	w5, [x2, 16]
	ldr	w2, [x0, x7, lsl 2]
	add	x0, x1, x3
	add	x0, x0, 4080
	str	w2, [x0, w4, sxtw 2]
	mov	w1, 5
	adrp	x0, IntGlob
	str	w1, [x0, #:lo12:IntGlob]
	ret
	.size	Proc8, .-Proc8
	.align	2
	.global	Func1
	.type	Func1, %function
Func1:
	uxtb	w1, w1
	cmp	w1, w0, uxtb
	cset	w0, eq
	ret
	.size	Func1, .-Func1
	.align	2
	.global	Func2
	.type	Func2, %function
Func2:
	ldrb	w3, [x0, 1]
	ldrb	w2, [x1, 2]
	cmp	w3, w2
	bne	.L27
.L29:
	b	.L29
.L27:
	stp	x29, x30, [sp, -16]!
	add	x29, sp, 0
	bl	strcmp
	cmp	w0, 0
	cset	w0, gt
	ldp	x29, x30, [sp], 16
	ret
	.size	Func2, .-Func2
	.align	2
	.global	Proc0
	.type	Proc0, %function
Proc0:
	stp	x29, x30, [sp, -160]!
	add	x29, sp, 0
	stp	x19, x20, [sp, 16]
	stp	x21, x22, [sp, 32]
	stp	x23, x24, [sp, 48]
	str	x25, [sp, 64]
	adrp	x0, __stack_chk_guard
	ldr	x1, [x0, #:lo12:__stack_chk_guard]
	str	x1, [x29, 152]
	mov	x1,0
	mov	w0, 0
	bl	time
	mov	x24, x0
	mov	w0, 49664
	movk	w0, 0xbeb, lsl 16
.L32:
	subs	w0, w0, #1
	bne	.L32
	mov	w0, 0
	bl	time
	sub	x24, x0, x24
	mov	x0, 56
	bl	malloc
	mov	x19, x0
	adrp	x0, PtrGlbNext
	str	x19, [x0, #:lo12:PtrGlbNext]
	mov	x0, 56
	bl	malloc
	adrp	x1, PtrGlb
	str	x0, [x1, #:lo12:PtrGlb]
	str	x19, [x0]
	str	wzr, [x0, 8]
	mov	w1, 2
	str	w1, [x0, 12]
	mov	w1, 40
	str	w1, [x0, 16]
	add	x0, x0, 20
	adrp	x1, .LC0
	add	x1, x1, :lo12:.LC0
	ldp	x2, x3, [x1]
	stp	x2, x3, [x0]
	ldr	x2, [x1, 16]
	str	x2, [x0, 16]
	ldr	x1, [x1, 23]
	str	x1, [x0, 23]
	mov	w0, 0
	bl	time
	mov	x25, x0
	mov	w23, 49664
	movk	w23, 0xbeb, lsl 16
	adrp	x20, Char2Glob
	add	x20, x20, :lo12:Char2Glob
	adrp	x22, .LC1
	add	x22, x22, :lo12:.LC1
	add	x21, x29, 120
.L36:
	bl	Proc5
	mov	w0, 66
	strb	w0, [x20]
	mov	w0, 2
	str	w0, [x29, 80]
	ldp	x0, x1, [x22]
	stp	x0, x1, [x21]
	ldr	x0, [x22, 16]
	str	x0, [x21, 16]
	ldr	x0, [x22, 23]
	str	x0, [x21, 23]
	mov	w0, 1
	str	w0, [x29, 84]
	mov	x1, x21
	add	x0, x29, 88
	bl	Func2
	cmp	w0, 0
	cset	w1, eq
	adrp	x0, BoolGlob
	str	w1, [x0, #:lo12:BoolGlob]
	mov	w2, 3
	str	w2, [x29, 80]
	mov	w3, 7
	adrp	x1, Array2Glob
	add	x1, x1, :lo12:Array2Glob
	adrp	x0, Array1Glob
	add	x0, x0, :lo12:Array1Glob
	bl	Proc8
	adrp	x0, PtrGlb
	ldr	x0, [x0, #:lo12:PtrGlb]
	bl	Proc1
	ldrb	w0, [x20]
	cmp	w0, 64
	bls	.L33
	mov	w19, 65
.L35:
	cmp	w19, 67
	cset	w1, eq
	ldr	w0, [x29, 84]
	cmp	w1, w0
	bne	.L34
	add	x1, x29, 84
	mov	w0, 0
	bl	Proc6
.L34:
	add	w19, w19, 1
	uxtb	w19, w19
	ldrb	w0, [x20]
	cmp	w0, w19
	bcs	.L35
.L33:
	add	x0, x29, 80
	bl	Proc2
	subs	w23, w23, #1
	bne	.L36
	mov	w0, 0
	bl	time
	sub	x0, x0, x25
	sub	x24, x0, x24
	mov	x19, 49664
	movk	x19, 0xbeb, lsl 16
	mov	x2, x24
	mov	x1, x19
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	bl	printf
	sdiv	x1, x19, x24
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	bl	printf
	adrp	x1, __stack_chk_guard
	ldr	x2, [x29, 152]
	ldr	x1, [x1, #:lo12:__stack_chk_guard]
	eor	x1, x2, x1
	cbz	x1, .L37
	bl	__stack_chk_fail
.L37:
	ldp	x19, x20, [sp, 16]
	ldp	x21, x22, [sp, 32]
	ldp	x23, x24, [sp, 48]
	ldr	x25, [sp, 64]
	ldp	x29, x30, [sp], 160
	ret
	.size	Proc0, .-Proc0
	.align	2
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
	.align	2
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
