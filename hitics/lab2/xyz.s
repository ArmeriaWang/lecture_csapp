	.file	"xyz.c"
	.globl	x_int
	.section	.rodata
	.align 4
	.type	x_int, @object
	.size	x_int, 4
x_int:
	.long	-1183710106
.LC1:
	.string	"%d\n"
.LC2:
	.string	"x = %d\ny = %lf\nz = %s\n"
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
	subq	$32, %rsp
	movsd	.LC0(%rip), %xmm0
	movsd	%xmm0, -8(%rbp)
	movl	$-1183710106, %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$-1183710106, %ecx
	movq	-8(%rbp), %rax
	leaq	z_string.2212(%rip), %rdx
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	movl	%ecx, %esi
	leaq	.LC2(%rip), %rdi
	movl	$1, %eax
	call	printf@PLT
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.data
	.align 16
	.type	z_string.2212, @object
	.size	z_string.2212, 22
z_string.2212:
	.string	"1183710106-WangHankun"
	.section	.rodata
	.align 8
.LC0:
	.long	1004282570
	.long	1133699368
	.ident	"GCC: (Debian 6.3.0-18+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",@progbits
