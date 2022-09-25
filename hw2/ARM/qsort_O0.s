	.arch armv8-a
	.file	"qsort.c"
	.data
	.align	3
	.type	seed, %object
	.size	seed, 8
seed:
	.xword	7
	.global	buffer
	.bss
	.align	3
	.type	buffer, %object
	.size	buffer, 16000
buffer:
	.zero	16000
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	stp	x29, x30, [sp, -32]!
	add	x29, sp, 0
	str	wzr, [x29, 16]
	b	.L2
.L6:
	str	wzr, [x29, 20]
	b	.L3
.L5:
	mov	x0, 131072
	bl	random
	str	x0, [x29, 24]
	ldr	x0, [x29, 24]
	cmp	x0, 0
	bge	.L4
	ldr	x0, [x29, 24]
	neg	x0, x0
	str	x0, [x29, 24]
.L4:
	adrp	x0, buffer
	add	x0, x0, :lo12:buffer
	ldrsw	x1, [x29, 20]
	ldr	x2, [x29, 24]
	str	x2, [x0, x1, lsl 3]
	ldr	w0, [x29, 20]
	add	w0, w0, 1
	str	w0, [x29, 20]
.L3:
	ldr	w0, [x29, 20]
	cmp	w0, 1999
	ble	.L5
	adrp	x0, buffer
	add	x0, x0, :lo12:buffer
	mov	x2, x0
	mov	w1, 1999
	mov	w0, 0
	bl	quick
	ldr	w0, [x29, 16]
	add	w0, w0, 1
	str	w0, [x29, 16]
.L2:
	ldr	w0, [x29, 16]
	cmp	w0, 99
	ble	.L6
	mov	w0, 0
	bl	exit
	.size	main, .-main
	.align	2
	.global	quick
	.type	quick, %function
quick:
	stp	x29, x30, [sp, -64]!
	add	x29, sp, 0
	str	w0, [x29, 28]
	str	w1, [x29, 24]
	str	x2, [x29, 16]
	ldr	w1, [x29, 28]
	ldr	w0, [x29, 24]
	cmp	w1, w0
	bge	.L8
	ldr	w0, [x29, 28]
	str	w0, [x29, 40]
	ldr	w0, [x29, 24]
	str	w0, [x29, 44]
	ldrsw	x0, [x29, 24]
	lsl	x0, x0, 3
	ldr	x1, [x29, 16]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [x29, 48]
	b	.L9
.L12:
	ldr	w0, [x29, 40]
	add	w0, w0, 1
	str	w0, [x29, 40]
.L10:
	ldr	w1, [x29, 40]
	ldr	w0, [x29, 44]
	cmp	w1, w0
	bge	.L13
	ldrsw	x0, [x29, 40]
	lsl	x0, x0, 3
	ldr	x1, [x29, 16]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [x29, 48]
	cmp	x1, x0
	ble	.L12
	b	.L13
.L15:
	ldr	w0, [x29, 44]
	sub	w0, w0, #1
	str	w0, [x29, 44]
.L13:
	ldr	w1, [x29, 44]
	ldr	w0, [x29, 40]
	cmp	w1, w0
	ble	.L14
	ldrsw	x0, [x29, 44]
	lsl	x0, x0, 3
	ldr	x1, [x29, 16]
	add	x0, x1, x0
	ldr	x1, [x0]
	ldr	x0, [x29, 48]
	cmp	x1, x0
	bge	.L15
.L14:
	ldr	w1, [x29, 40]
	ldr	w0, [x29, 44]
	cmp	w1, w0
	bge	.L9
	ldrsw	x0, [x29, 40]
	lsl	x0, x0, 3
	ldr	x1, [x29, 16]
	add	x0, x1, x0
	ldr	x0, [x0]
	str	x0, [x29, 56]
	ldrsw	x0, [x29, 40]
	lsl	x0, x0, 3
	ldr	x1, [x29, 16]
	add	x0, x1, x0
	ldrsw	x1, [x29, 44]
	lsl	x1, x1, 3
	ldr	x2, [x29, 16]
	add	x1, x2, x1
	ldr	x1, [x1]
	str	x1, [x0]
	ldrsw	x0, [x29, 44]
	lsl	x0, x0, 3
	ldr	x1, [x29, 16]
	add	x0, x1, x0
	ldr	x1, [x29, 56]
	str	x1, [x0]
.L9:
	ldr	w1, [x29, 40]
	ldr	w0, [x29, 44]
	cmp	w1, w0
	blt	.L10
	ldr	w0, [x29, 40]
	sub	w0, w0, #1
	ldr	x2, [x29, 16]
	mov	w1, w0
	ldr	w0, [x29, 28]
	bl	quick
	ldr	w0, [x29, 40]
	add	w0, w0, 1
	ldr	x2, [x29, 16]
	ldr	w1, [x29, 24]
	bl	quick
.L8:
	nop
	ldp	x29, x30, [sp], 64
	ret
	.size	quick, .-quick
	.align	2
	.global	random
	.type	random, %function
random:
	sub	sp, sp, #16
	str	x0, [sp, 8]
	adrp	x0, seed
	add	x0, x0, :lo12:seed
	ldr	x1, [x0]
	mov	x0, 25173
	mul	x0, x1, x0
	add	x1, x0, 12288
	add	x1, x1, 1561
	adrp	x0, seed
	add	x0, x0, :lo12:seed
	str	x1, [x0]
	adrp	x0, seed
	add	x0, x0, :lo12:seed
	ldr	x0, [x0]
	ldr	x1, [sp, 8]
	sdiv	x2, x0, x1
	ldr	x1, [sp, 8]
	mul	x1, x2, x1
	sub	x0, x0, x1
	add	sp, sp, 16
	ret
	.size	random, .-random
	.ident	"GCC: (Ubuntu/Linaro 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
