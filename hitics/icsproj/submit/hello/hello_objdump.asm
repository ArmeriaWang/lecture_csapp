
hello：     文件格式 elf64-x86-64


Disassembly of section .init:

00000000004004c0 <_init>:
  4004c0:	48 83 ec 08          	sub    $0x8,%rsp
  4004c4:	48 8b 05 2d 0b 20 00 	mov    0x200b2d(%rip),%rax        # 600ff8 <__gmon_start__>
  4004cb:	48 85 c0             	test   %rax,%rax
  4004ce:	74 02                	je     4004d2 <_init+0x12>
  4004d0:	ff d0                	callq  *%rax
  4004d2:	48 83 c4 08          	add    $0x8,%rsp
  4004d6:	c3                   	retq   

Disassembly of section .plt:

00000000004004e0 <.plt>:
  4004e0:	ff 35 22 0b 20 00    	pushq  0x200b22(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4004e6:	ff 25 24 0b 20 00    	jmpq   *0x200b24(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4004ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004f0 <puts@plt>:
  4004f0:	ff 25 22 0b 20 00    	jmpq   *0x200b22(%rip)        # 601018 <puts@GLIBC_2.2.5>
  4004f6:	68 00 00 00 00       	pushq  $0x0
  4004fb:	e9 e0 ff ff ff       	jmpq   4004e0 <.plt>

0000000000400500 <printf@plt>:
  400500:	ff 25 1a 0b 20 00    	jmpq   *0x200b1a(%rip)        # 601020 <printf@GLIBC_2.2.5>
  400506:	68 01 00 00 00       	pushq  $0x1
  40050b:	e9 d0 ff ff ff       	jmpq   4004e0 <.plt>

0000000000400510 <getchar@plt>:
  400510:	ff 25 12 0b 20 00    	jmpq   *0x200b12(%rip)        # 601028 <getchar@GLIBC_2.2.5>
  400516:	68 02 00 00 00       	pushq  $0x2
  40051b:	e9 c0 ff ff ff       	jmpq   4004e0 <.plt>

0000000000400520 <atoi@plt>:
  400520:	ff 25 0a 0b 20 00    	jmpq   *0x200b0a(%rip)        # 601030 <atoi@GLIBC_2.2.5>
  400526:	68 03 00 00 00       	pushq  $0x3
  40052b:	e9 b0 ff ff ff       	jmpq   4004e0 <.plt>

0000000000400530 <exit@plt>:
  400530:	ff 25 02 0b 20 00    	jmpq   *0x200b02(%rip)        # 601038 <exit@GLIBC_2.2.5>
  400536:	68 04 00 00 00       	pushq  $0x4
  40053b:	e9 a0 ff ff ff       	jmpq   4004e0 <.plt>

0000000000400540 <sleep@plt>:
  400540:	ff 25 fa 0a 20 00    	jmpq   *0x200afa(%rip)        # 601040 <sleep@GLIBC_2.2.5>
  400546:	68 05 00 00 00       	pushq  $0x5
  40054b:	e9 90 ff ff ff       	jmpq   4004e0 <.plt>

Disassembly of section .text:

0000000000400550 <_start>:
  400550:	31 ed                	xor    %ebp,%ebp
  400552:	49 89 d1             	mov    %rdx,%r9
  400555:	5e                   	pop    %rsi
  400556:	48 89 e2             	mov    %rsp,%rdx
  400559:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40055d:	50                   	push   %rax
  40055e:	54                   	push   %rsp
  40055f:	49 c7 c0 40 07 40 00 	mov    $0x400740,%r8
  400566:	48 c7 c1 d0 06 40 00 	mov    $0x4006d0,%rcx
  40056d:	48 c7 c7 37 06 40 00 	mov    $0x400637,%rdi
  400574:	ff 15 76 0a 20 00    	callq  *0x200a76(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40057a:	f4                   	hlt    
  40057b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400580 <_dl_relocate_static_pie>:
  400580:	f3 c3                	repz retq 
  400582:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400589:	00 00 00 
  40058c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400590 <deregister_tm_clones>:
  400590:	55                   	push   %rbp
  400591:	b8 58 10 60 00       	mov    $0x601058,%eax
  400596:	48 3d 58 10 60 00    	cmp    $0x601058,%rax
  40059c:	48 89 e5             	mov    %rsp,%rbp
  40059f:	74 17                	je     4005b8 <deregister_tm_clones+0x28>
  4005a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4005a6:	48 85 c0             	test   %rax,%rax
  4005a9:	74 0d                	je     4005b8 <deregister_tm_clones+0x28>
  4005ab:	5d                   	pop    %rbp
  4005ac:	bf 58 10 60 00       	mov    $0x601058,%edi
  4005b1:	ff e0                	jmpq   *%rax
  4005b3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4005b8:	5d                   	pop    %rbp
  4005b9:	c3                   	retq   
  4005ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005c0 <register_tm_clones>:
  4005c0:	be 58 10 60 00       	mov    $0x601058,%esi
  4005c5:	55                   	push   %rbp
  4005c6:	48 81 ee 58 10 60 00 	sub    $0x601058,%rsi
  4005cd:	48 89 e5             	mov    %rsp,%rbp
  4005d0:	48 c1 fe 03          	sar    $0x3,%rsi
  4005d4:	48 89 f0             	mov    %rsi,%rax
  4005d7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4005db:	48 01 c6             	add    %rax,%rsi
  4005de:	48 d1 fe             	sar    %rsi
  4005e1:	74 15                	je     4005f8 <register_tm_clones+0x38>
  4005e3:	b8 00 00 00 00       	mov    $0x0,%eax
  4005e8:	48 85 c0             	test   %rax,%rax
  4005eb:	74 0b                	je     4005f8 <register_tm_clones+0x38>
  4005ed:	5d                   	pop    %rbp
  4005ee:	bf 58 10 60 00       	mov    $0x601058,%edi
  4005f3:	ff e0                	jmpq   *%rax
  4005f5:	0f 1f 00             	nopl   (%rax)
  4005f8:	5d                   	pop    %rbp
  4005f9:	c3                   	retq   
  4005fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400600 <__do_global_dtors_aux>:
  400600:	80 3d 51 0a 20 00 00 	cmpb   $0x0,0x200a51(%rip)        # 601058 <__TMC_END__>
  400607:	75 17                	jne    400620 <__do_global_dtors_aux+0x20>
  400609:	55                   	push   %rbp
  40060a:	48 89 e5             	mov    %rsp,%rbp
  40060d:	e8 7e ff ff ff       	callq  400590 <deregister_tm_clones>
  400612:	c6 05 3f 0a 20 00 01 	movb   $0x1,0x200a3f(%rip)        # 601058 <__TMC_END__>
  400619:	5d                   	pop    %rbp
  40061a:	c3                   	retq   
  40061b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400620:	f3 c3                	repz retq 
  400622:	0f 1f 40 00          	nopl   0x0(%rax)
  400626:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40062d:	00 00 00 

0000000000400630 <frame_dummy>:
  400630:	55                   	push   %rbp
  400631:	48 89 e5             	mov    %rsp,%rbp
  400634:	5d                   	pop    %rbp
  400635:	eb 89                	jmp    4005c0 <register_tm_clones>

0000000000400637 <main>:
  400637:	55                   	push   %rbp
  400638:	48 89 e5             	mov    %rsp,%rbp
  40063b:	48 83 ec 20          	sub    $0x20,%rsp
  40063f:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400642:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400646:	83 7d ec 04          	cmpl   $0x4,-0x14(%rbp)
  40064a:	74 16                	je     400662 <main+0x2b>
  40064c:	48 8d 3d 05 01 00 00 	lea    0x105(%rip),%rdi        # 400758 <_IO_stdin_used+0x8>
  400653:	e8 98 fe ff ff       	callq  4004f0 <puts@plt>
  400658:	bf 01 00 00 00       	mov    $0x1,%edi
  40065d:	e8 ce fe ff ff       	callq  400530 <exit@plt>
  400662:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400669:	eb 48                	jmp    4006b3 <main+0x7c>
  40066b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40066f:	48 83 c0 10          	add    $0x10,%rax
  400673:	48 8b 10             	mov    (%rax),%rdx
  400676:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40067a:	48 83 c0 08          	add    $0x8,%rax
  40067e:	48 8b 00             	mov    (%rax),%rax
  400681:	48 89 c6             	mov    %rax,%rsi
  400684:	48 8d 3d f3 00 00 00 	lea    0xf3(%rip),%rdi        # 40077e <_IO_stdin_used+0x2e>
  40068b:	b8 00 00 00 00       	mov    $0x0,%eax
  400690:	e8 6b fe ff ff       	callq  400500 <printf@plt>
  400695:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400699:	48 83 c0 18          	add    $0x18,%rax
  40069d:	48 8b 00             	mov    (%rax),%rax
  4006a0:	48 89 c7             	mov    %rax,%rdi
  4006a3:	e8 78 fe ff ff       	callq  400520 <atoi@plt>
  4006a8:	89 c7                	mov    %eax,%edi
  4006aa:	e8 91 fe ff ff       	callq  400540 <sleep@plt>
  4006af:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4006b3:	83 7d fc 07          	cmpl   $0x7,-0x4(%rbp)
  4006b7:	7e b2                	jle    40066b <main+0x34>
  4006b9:	e8 52 fe ff ff       	callq  400510 <getchar@plt>
  4006be:	b8 00 00 00 00       	mov    $0x0,%eax
  4006c3:	c9                   	leaveq 
  4006c4:	c3                   	retq   
  4006c5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006cc:	00 00 00 
  4006cf:	90                   	nop

00000000004006d0 <__libc_csu_init>:
  4006d0:	41 57                	push   %r15
  4006d2:	41 56                	push   %r14
  4006d4:	49 89 d7             	mov    %rdx,%r15
  4006d7:	41 55                	push   %r13
  4006d9:	41 54                	push   %r12
  4006db:	4c 8d 25 1e 07 20 00 	lea    0x20071e(%rip),%r12        # 600e00 <__frame_dummy_init_array_entry>
  4006e2:	55                   	push   %rbp
  4006e3:	48 8d 2d 1e 07 20 00 	lea    0x20071e(%rip),%rbp        # 600e08 <__init_array_end>
  4006ea:	53                   	push   %rbx
  4006eb:	41 89 fd             	mov    %edi,%r13d
  4006ee:	49 89 f6             	mov    %rsi,%r14
  4006f1:	4c 29 e5             	sub    %r12,%rbp
  4006f4:	48 83 ec 08          	sub    $0x8,%rsp
  4006f8:	48 c1 fd 03          	sar    $0x3,%rbp
  4006fc:	e8 bf fd ff ff       	callq  4004c0 <_init>
  400701:	48 85 ed             	test   %rbp,%rbp
  400704:	74 20                	je     400726 <__libc_csu_init+0x56>
  400706:	31 db                	xor    %ebx,%ebx
  400708:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40070f:	00 
  400710:	4c 89 fa             	mov    %r15,%rdx
  400713:	4c 89 f6             	mov    %r14,%rsi
  400716:	44 89 ef             	mov    %r13d,%edi
  400719:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40071d:	48 83 c3 01          	add    $0x1,%rbx
  400721:	48 39 dd             	cmp    %rbx,%rbp
  400724:	75 ea                	jne    400710 <__libc_csu_init+0x40>
  400726:	48 83 c4 08          	add    $0x8,%rsp
  40072a:	5b                   	pop    %rbx
  40072b:	5d                   	pop    %rbp
  40072c:	41 5c                	pop    %r12
  40072e:	41 5d                	pop    %r13
  400730:	41 5e                	pop    %r14
  400732:	41 5f                	pop    %r15
  400734:	c3                   	retq   
  400735:	90                   	nop
  400736:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40073d:	00 00 00 

0000000000400740 <__libc_csu_fini>:
  400740:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400744 <_fini>:
  400744:	48 83 ec 08          	sub    $0x8,%rsp
  400748:	48 83 c4 08          	add    $0x8,%rsp
  40074c:	c3                   	retq   
