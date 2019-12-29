
xyz：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000400400 <_start>:
  400400:	31 ed                	xor    %ebp,%ebp
  400402:	49 89 d1             	mov    %rdx,%r9
  400405:	5e                   	pop    %rsi
  400406:	48 89 e2             	mov    %rsp,%rdx
  400409:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40040d:	50                   	push   %rax
  40040e:	54                   	push   %rsp
  40040f:	49 c7 c0 b0 05 40 00 	mov    $0x4005b0,%r8
  400416:	48 c7 c1 40 05 40 00 	mov    $0x400540,%rcx
  40041d:	48 c7 c7 f6 04 40 00 	mov    $0x4004f6,%rdi
  400424:	ff 15 c6 0b 20 00    	callq  *0x200bc6(%rip)        # 600ff0 <__libc_start_main@GLIBC_2.2.5>
  40042a:	f4                   	hlt    
  40042b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400430 <deregister_tm_clones>:
  400430:	b8 57 10 60 00       	mov    $0x601057,%eax
  400435:	55                   	push   %rbp
  400436:	48 2d 50 10 60 00    	sub    $0x601050,%rax
  40043c:	48 83 f8 0e          	cmp    $0xe,%rax
  400440:	48 89 e5             	mov    %rsp,%rbp
  400443:	76 1b                	jbe    400460 <deregister_tm_clones+0x30>
  400445:	b8 00 00 00 00       	mov    $0x0,%eax
  40044a:	48 85 c0             	test   %rax,%rax
  40044d:	74 11                	je     400460 <deregister_tm_clones+0x30>
  40044f:	5d                   	pop    %rbp
  400450:	bf 50 10 60 00       	mov    $0x601050,%edi
  400455:	ff e0                	jmpq   *%rax
  400457:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40045e:	00 00 
  400460:	5d                   	pop    %rbp
  400461:	c3                   	retq   
  400462:	0f 1f 40 00          	nopl   0x0(%rax)
  400466:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40046d:	00 00 00 

0000000000400470 <register_tm_clones>:
  400470:	be 50 10 60 00       	mov    $0x601050,%esi
  400475:	55                   	push   %rbp
  400476:	48 81 ee 50 10 60 00 	sub    $0x601050,%rsi
  40047d:	48 c1 fe 03          	sar    $0x3,%rsi
  400481:	48 89 e5             	mov    %rsp,%rbp
  400484:	48 89 f0             	mov    %rsi,%rax
  400487:	48 c1 e8 3f          	shr    $0x3f,%rax
  40048b:	48 01 c6             	add    %rax,%rsi
  40048e:	48 d1 fe             	sar    %rsi
  400491:	74 15                	je     4004a8 <register_tm_clones+0x38>
  400493:	b8 00 00 00 00       	mov    $0x0,%eax
  400498:	48 85 c0             	test   %rax,%rax
  40049b:	74 0b                	je     4004a8 <register_tm_clones+0x38>
  40049d:	5d                   	pop    %rbp
  40049e:	bf 50 10 60 00       	mov    $0x601050,%edi
  4004a3:	ff e0                	jmpq   *%rax
  4004a5:	0f 1f 00             	nopl   (%rax)
  4004a8:	5d                   	pop    %rbp
  4004a9:	c3                   	retq   
  4004aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004b0 <__do_global_dtors_aux>:
  4004b0:	80 3d 95 0b 20 00 00 	cmpb   $0x0,0x200b95(%rip)        # 60104c <_edata>
  4004b7:	75 11                	jne    4004ca <__do_global_dtors_aux+0x1a>
  4004b9:	55                   	push   %rbp
  4004ba:	48 89 e5             	mov    %rsp,%rbp
  4004bd:	e8 6e ff ff ff       	callq  400430 <deregister_tm_clones>
  4004c2:	5d                   	pop    %rbp
  4004c3:	c6 05 82 0b 20 00 01 	movb   $0x1,0x200b82(%rip)        # 60104c <_edata>
  4004ca:	f3 c3                	repz retq 
  4004cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004d0 <frame_dummy>:
  4004d0:	bf 18 0e 60 00       	mov    $0x600e18,%edi
  4004d5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  4004d9:	75 05                	jne    4004e0 <frame_dummy+0x10>
  4004db:	eb 93                	jmp    400470 <register_tm_clones>
  4004dd:	0f 1f 00             	nopl   (%rax)
  4004e0:	b8 00 00 00 00       	mov    $0x0,%eax
  4004e5:	48 85 c0             	test   %rax,%rax
  4004e8:	74 f1                	je     4004db <frame_dummy+0xb>
  4004ea:	55                   	push   %rbp
  4004eb:	48 89 e5             	mov    %rsp,%rbp
  4004ee:	ff d0                	callq  *%rax
  4004f0:	5d                   	pop    %rbp
  4004f1:	e9 7a ff ff ff       	jmpq   400470 <register_tm_clones>

00000000004004f6 <main>:
  4004f6:	48 83 ec 08          	sub    $0x8,%rsp
  4004fa:	8b 35 48 0b 20 00    	mov    0x200b48(%rip),%esi        # 601048 <x_int>
  400500:	bf c4 05 40 00       	mov    $0x4005c4,%edi
  400505:	b8 00 00 00 00       	mov    $0x0,%eax
  40050a:	e8 e1 fe ff ff       	callq  4003f0 <printf@plt>
  40050f:	ba 30 10 60 00       	mov    $0x601030,%edx
  400514:	f2 0f 10 05 c4 00 00 	movsd  0xc4(%rip),%xmm0        # 4005e0 <_IO_stdin_used+0x20>
  40051b:	00 
  40051c:	8b 35 26 0b 20 00    	mov    0x200b26(%rip),%esi        # 601048 <x_int>
  400522:	bf c8 05 40 00       	mov    $0x4005c8,%edi
  400527:	b8 01 00 00 00       	mov    $0x1,%eax
  40052c:	e8 bf fe ff ff       	callq  4003f0 <printf@plt>
  400531:	b8 00 00 00 00       	mov    $0x0,%eax
  400536:	48 83 c4 08          	add    $0x8,%rsp
  40053a:	c3                   	retq   
  40053b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400540 <__libc_csu_init>:
  400540:	41 57                	push   %r15
  400542:	41 56                	push   %r14
  400544:	41 89 ff             	mov    %edi,%r15d
  400547:	41 55                	push   %r13
  400549:	41 54                	push   %r12
  40054b:	4c 8d 25 b6 08 20 00 	lea    0x2008b6(%rip),%r12        # 600e08 <__frame_dummy_init_array_entry>
  400552:	55                   	push   %rbp
  400553:	48 8d 2d b6 08 20 00 	lea    0x2008b6(%rip),%rbp        # 600e10 <__init_array_end>
  40055a:	53                   	push   %rbx
  40055b:	49 89 f6             	mov    %rsi,%r14
  40055e:	49 89 d5             	mov    %rdx,%r13
  400561:	4c 29 e5             	sub    %r12,%rbp
  400564:	48 83 ec 08          	sub    $0x8,%rsp
  400568:	48 c1 fd 03          	sar    $0x3,%rbp
  40056c:	e8 57 fe ff ff       	callq  4003c8 <_init>
  400571:	48 85 ed             	test   %rbp,%rbp
  400574:	74 20                	je     400596 <__libc_csu_init+0x56>
  400576:	31 db                	xor    %ebx,%ebx
  400578:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40057f:	00 
  400580:	4c 89 ea             	mov    %r13,%rdx
  400583:	4c 89 f6             	mov    %r14,%rsi
  400586:	44 89 ff             	mov    %r15d,%edi
  400589:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40058d:	48 83 c3 01          	add    $0x1,%rbx
  400591:	48 39 dd             	cmp    %rbx,%rbp
  400594:	75 ea                	jne    400580 <__libc_csu_init+0x40>
  400596:	48 83 c4 08          	add    $0x8,%rsp
  40059a:	5b                   	pop    %rbx
  40059b:	5d                   	pop    %rbp
  40059c:	41 5c                	pop    %r12
  40059e:	41 5d                	pop    %r13
  4005a0:	41 5e                	pop    %r14
  4005a2:	41 5f                	pop    %r15
  4005a4:	c3                   	retq   
  4005a5:	90                   	nop
  4005a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4005ad:	00 00 00 

00000000004005b0 <__libc_csu_fini>:
  4005b0:	f3 c3                	repz retq 
