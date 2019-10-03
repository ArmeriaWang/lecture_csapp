	.file	"xyz.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"x = %d\ny = %lf\nz = %s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	leaq	z.2248(%rip), %rdx
	movsd	.LC0(%rip), %xmm0
	movl	x(%rip), %esi
	leaq	.LC1(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.data
	.align 16
	.type	z.2248, @object
	.size	z.2248, 22
z.2248:
	.string	"1183710106-WangHankun"
	.globl	x
	.align 4
	.type	x, @object
	.size	x, 4
x:
	.long	1183710106
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	1004282543
	.long	1133699368
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",@progbits
