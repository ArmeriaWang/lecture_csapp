
swap：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000000530 <_init>:
 530:	48 83 ec 08          	sub    $0x8,%rsp
 534:	48 8b 05 a5 0a 20 00 	mov    0x200aa5(%rip),%rax        # 200fe0 <__gmon_start__>
 53b:	48 85 c0             	test   %rax,%rax
 53e:	74 02                	je     542 <_init+0x12>
 540:	ff d0                	callq  *%rax
 542:	48 83 c4 08          	add    $0x8,%rsp
 546:	c3                   	retq   

Disassembly of section .plt:

0000000000000550 <.plt>:
 550:	ff 35 b2 0a 20 00    	pushq  0x200ab2(%rip)        # 201008 <_GLOBAL_OFFSET_TABLE_+0x8>
 556:	ff 25 b4 0a 20 00    	jmpq   *0x200ab4(%rip)        # 201010 <_GLOBAL_OFFSET_TABLE_+0x10>
 55c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000560 <printf@plt>:
 560:	ff 25 b2 0a 20 00    	jmpq   *0x200ab2(%rip)        # 201018 <printf@GLIBC_2.2.5>
 566:	68 00 00 00 00       	pushq  $0x0
 56b:	e9 e0 ff ff ff       	jmpq   550 <.plt>

Disassembly of section .plt.got:

0000000000000570 <.plt.got>:
 570:	ff 25 82 0a 20 00    	jmpq   *0x200a82(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 576:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000000580 <_start>:
 580:	31 ed                	xor    %ebp,%ebp
 582:	49 89 d1             	mov    %rdx,%r9
 585:	5e                   	pop    %rsi
 586:	48 89 e2             	mov    %rsp,%rdx
 589:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 58d:	50                   	push   %rax
 58e:	54                   	push   %rsp
 58f:	4c 8d 05 ea 01 00 00 	lea    0x1ea(%rip),%r8        # 780 <__libc_csu_fini>
 596:	48 8d 0d 73 01 00 00 	lea    0x173(%rip),%rcx        # 710 <__libc_csu_init>
 59d:	48 8d 3d 19 01 00 00 	lea    0x119(%rip),%rdi        # 6bd <main>
 5a4:	ff 15 2e 0a 20 00    	callq  *0x200a2e(%rip)        # 200fd8 <__libc_start_main@GLIBC_2.2.5>
 5aa:	f4                   	hlt    
 5ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000005b0 <deregister_tm_clones>:
 5b0:	48 8d 3d 79 0a 20 00 	lea    0x200a79(%rip),%rdi        # 201030 <__TMC_END__>
 5b7:	48 8d 05 79 0a 20 00 	lea    0x200a79(%rip),%rax        # 201037 <__TMC_END__+0x7>
 5be:	55                   	push   %rbp
 5bf:	48 29 f8             	sub    %rdi,%rax
 5c2:	48 89 e5             	mov    %rsp,%rbp
 5c5:	48 83 f8 0e          	cmp    $0xe,%rax
 5c9:	76 15                	jbe    5e0 <deregister_tm_clones+0x30>
 5cb:	48 8b 05 fe 09 20 00 	mov    0x2009fe(%rip),%rax        # 200fd0 <_ITM_deregisterTMCloneTable>
 5d2:	48 85 c0             	test   %rax,%rax
 5d5:	74 09                	je     5e0 <deregister_tm_clones+0x30>
 5d7:	5d                   	pop    %rbp
 5d8:	ff e0                	jmpq   *%rax
 5da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 5e0:	5d                   	pop    %rbp
 5e1:	c3                   	retq   
 5e2:	0f 1f 40 00          	nopl   0x0(%rax)
 5e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 5ed:	00 00 00 

00000000000005f0 <register_tm_clones>:
 5f0:	48 8d 3d 39 0a 20 00 	lea    0x200a39(%rip),%rdi        # 201030 <__TMC_END__>
 5f7:	48 8d 35 32 0a 20 00 	lea    0x200a32(%rip),%rsi        # 201030 <__TMC_END__>
 5fe:	55                   	push   %rbp
 5ff:	48 29 fe             	sub    %rdi,%rsi
 602:	48 89 e5             	mov    %rsp,%rbp
 605:	48 c1 fe 03          	sar    $0x3,%rsi
 609:	48 89 f0             	mov    %rsi,%rax
 60c:	48 c1 e8 3f          	shr    $0x3f,%rax
 610:	48 01 c6             	add    %rax,%rsi
 613:	48 d1 fe             	sar    %rsi
 616:	74 18                	je     630 <register_tm_clones+0x40>
 618:	48 8b 05 d1 09 20 00 	mov    0x2009d1(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 61f:	48 85 c0             	test   %rax,%rax
 622:	74 0c                	je     630 <register_tm_clones+0x40>
 624:	5d                   	pop    %rbp
 625:	ff e0                	jmpq   *%rax
 627:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 62e:	00 00 
 630:	5d                   	pop    %rbp
 631:	c3                   	retq   
 632:	0f 1f 40 00          	nopl   0x0(%rax)
 636:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 63d:	00 00 00 

0000000000000640 <__do_global_dtors_aux>:
 640:	80 3d e9 09 20 00 00 	cmpb   $0x0,0x2009e9(%rip)        # 201030 <__TMC_END__>
 647:	75 27                	jne    670 <__do_global_dtors_aux+0x30>
 649:	48 83 3d a7 09 20 00 	cmpq   $0x0,0x2009a7(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 650:	00 
 651:	55                   	push   %rbp
 652:	48 89 e5             	mov    %rsp,%rbp
 655:	74 0c                	je     663 <__do_global_dtors_aux+0x23>
 657:	48 8b 3d ca 09 20 00 	mov    0x2009ca(%rip),%rdi        # 201028 <__dso_handle>
 65e:	e8 0d ff ff ff       	callq  570 <.plt.got>
 663:	e8 48 ff ff ff       	callq  5b0 <deregister_tm_clones>
 668:	5d                   	pop    %rbp
 669:	c6 05 c0 09 20 00 01 	movb   $0x1,0x2009c0(%rip)        # 201030 <__TMC_END__>
 670:	f3 c3                	repz retq 
 672:	0f 1f 40 00          	nopl   0x0(%rax)
 676:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 67d:	00 00 00 

0000000000000680 <frame_dummy>:
 680:	48 8d 3d 61 07 20 00 	lea    0x200761(%rip),%rdi        # 200de8 <__JCR_END__>
 687:	48 83 3f 00          	cmpq   $0x0,(%rdi)
 68b:	75 0b                	jne    698 <frame_dummy+0x18>
 68d:	e9 5e ff ff ff       	jmpq   5f0 <register_tm_clones>
 692:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
 698:	48 8b 05 49 09 20 00 	mov    0x200949(%rip),%rax        # 200fe8 <_Jv_RegisterClasses>
 69f:	48 85 c0             	test   %rax,%rax
 6a2:	74 e9                	je     68d <frame_dummy+0xd>
 6a4:	55                   	push   %rbp
 6a5:	48 89 e5             	mov    %rsp,%rbp
 6a8:	ff d0                	callq  *%rax
 6aa:	5d                   	pop    %rbp
 6ab:	e9 40 ff ff ff       	jmpq   5f0 <register_tm_clones>

00000000000006b0 <swap>:
 6b0:	48 8b 07             	mov    (%rdi),%rax
 6b3:	48 8b 16             	mov    (%rsi),%rdx
 6b6:	48 89 17             	mov    %rdx,(%rdi)
 6b9:	48 89 06             	mov    %rax,(%rsi)
 6bc:	c3                   	retq   

00000000000006bd <main>:
 6bd:	48 83 ec 18          	sub    $0x18,%rsp
 6c1:	48 c7 44 24 08 6b 00 	movq   $0x6b,0x8(%rsp)
 6c8:	00 00 
 6ca:	48 c7 04 24 e9 00 00 	movq   $0xe9,(%rsp)
 6d1:	00 
 6d2:	48 89 e6             	mov    %rsp,%rsi
 6d5:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
 6da:	e8 d1 ff ff ff       	callq  6b0 <swap>
 6df:	48 8b 14 24          	mov    (%rsp),%rdx
 6e3:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
 6e8:	48 8d 3d a5 00 00 00 	lea    0xa5(%rip),%rdi        # 794 <_IO_stdin_used+0x4>
 6ef:	b8 00 00 00 00       	mov    $0x0,%eax
 6f4:	e8 67 fe ff ff       	callq  560 <printf@plt>
 6f9:	b8 00 00 00 00       	mov    $0x0,%eax
 6fe:	48 83 c4 18          	add    $0x18,%rsp
 702:	c3                   	retq   
 703:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 70a:	00 00 00 
 70d:	0f 1f 00             	nopl   (%rax)

0000000000000710 <__libc_csu_init>:
 710:	41 57                	push   %r15
 712:	41 56                	push   %r14
 714:	41 89 ff             	mov    %edi,%r15d
 717:	41 55                	push   %r13
 719:	41 54                	push   %r12
 71b:	4c 8d 25 b6 06 20 00 	lea    0x2006b6(%rip),%r12        # 200dd8 <__frame_dummy_init_array_entry>
 722:	55                   	push   %rbp
 723:	48 8d 2d b6 06 20 00 	lea    0x2006b6(%rip),%rbp        # 200de0 <__init_array_end>
 72a:	53                   	push   %rbx
 72b:	49 89 f6             	mov    %rsi,%r14
 72e:	49 89 d5             	mov    %rdx,%r13
 731:	4c 29 e5             	sub    %r12,%rbp
 734:	48 83 ec 08          	sub    $0x8,%rsp
 738:	48 c1 fd 03          	sar    $0x3,%rbp
 73c:	e8 ef fd ff ff       	callq  530 <_init>
 741:	48 85 ed             	test   %rbp,%rbp
 744:	74 20                	je     766 <__libc_csu_init+0x56>
 746:	31 db                	xor    %ebx,%ebx
 748:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 74f:	00 
 750:	4c 89 ea             	mov    %r13,%rdx
 753:	4c 89 f6             	mov    %r14,%rsi
 756:	44 89 ff             	mov    %r15d,%edi
 759:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 75d:	48 83 c3 01          	add    $0x1,%rbx
 761:	48 39 dd             	cmp    %rbx,%rbp
 764:	75 ea                	jne    750 <__libc_csu_init+0x40>
 766:	48 83 c4 08          	add    $0x8,%rsp
 76a:	5b                   	pop    %rbx
 76b:	5d                   	pop    %rbp
 76c:	41 5c                	pop    %r12
 76e:	41 5d                	pop    %r13
 770:	41 5e                	pop    %r14
 772:	41 5f                	pop    %r15
 774:	c3                   	retq   
 775:	90                   	nop
 776:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 77d:	00 00 00 

0000000000000780 <__libc_csu_fini>:
 780:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000784 <_fini>:
 784:	48 83 ec 08          	sub    $0x8,%rsp
 788:	48 83 c4 08          	add    $0x8,%rsp
 78c:	c3                   	retq   
