
xyz：     文件格式 elf32-i386


Disassembly of section .init:

000003c0 <_init>:
 3c0:	53                   	push   %ebx
 3c1:	83 ec 08             	sub    $0x8,%esp
 3c4:	e8 a7 00 00 00       	call   470 <__x86.get_pc_thunk.bx>
 3c9:	81 c3 37 1c 00 00    	add    $0x1c37,%ebx
 3cf:	8b 83 f0 ff ff ff    	mov    -0x10(%ebx),%eax
 3d5:	85 c0                	test   %eax,%eax
 3d7:	74 05                	je     3de <_init+0x1e>
 3d9:	e8 4a 00 00 00       	call   428 <.plt.got+0x8>
 3de:	83 c4 08             	add    $0x8,%esp
 3e1:	5b                   	pop    %ebx
 3e2:	c3                   	ret    

Disassembly of section .plt:

000003f0 <.plt>:
 3f0:	ff b3 04 00 00 00    	pushl  0x4(%ebx)
 3f6:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
 3fc:	00 00                	add    %al,(%eax)
	...

00000400 <printf@plt>:
 400:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
 406:	68 00 00 00 00       	push   $0x0
 40b:	e9 e0 ff ff ff       	jmp    3f0 <.plt>

00000410 <__libc_start_main@plt>:
 410:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
 416:	68 08 00 00 00       	push   $0x8
 41b:	e9 d0 ff ff ff       	jmp    3f0 <.plt>

Disassembly of section .plt.got:

00000420 <.plt.got>:
 420:	ff a3 ec ff ff ff    	jmp    *-0x14(%ebx)
 426:	66 90                	xchg   %ax,%ax
 428:	ff a3 f0 ff ff ff    	jmp    *-0x10(%ebx)
 42e:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000430 <_start>:
 430:	31 ed                	xor    %ebp,%ebp
 432:	5e                   	pop    %esi
 433:	89 e1                	mov    %esp,%ecx
 435:	83 e4 f0             	and    $0xfffffff0,%esp
 438:	50                   	push   %eax
 439:	54                   	push   %esp
 43a:	52                   	push   %edx
 43b:	e8 22 00 00 00       	call   462 <_start+0x32>
 440:	81 c3 c0 1b 00 00    	add    $0x1bc0,%ebx
 446:	8d 83 60 e6 ff ff    	lea    -0x19a0(%ebx),%eax
 44c:	50                   	push   %eax
 44d:	8d 83 00 e6 ff ff    	lea    -0x1a00(%ebx),%eax
 453:	50                   	push   %eax
 454:	51                   	push   %ecx
 455:	56                   	push   %esi
 456:	ff b3 f4 ff ff ff    	pushl  -0xc(%ebx)
 45c:	e8 af ff ff ff       	call   410 <__libc_start_main@plt>
 461:	f4                   	hlt    
 462:	8b 1c 24             	mov    (%esp),%ebx
 465:	c3                   	ret    
 466:	66 90                	xchg   %ax,%ax
 468:	66 90                	xchg   %ax,%ax
 46a:	66 90                	xchg   %ax,%ax
 46c:	66 90                	xchg   %ax,%ax
 46e:	66 90                	xchg   %ax,%ax

00000470 <__x86.get_pc_thunk.bx>:
 470:	8b 1c 24             	mov    (%esp),%ebx
 473:	c3                   	ret    
 474:	66 90                	xchg   %ax,%ax
 476:	66 90                	xchg   %ax,%ax
 478:	66 90                	xchg   %ax,%ax
 47a:	66 90                	xchg   %ax,%ax
 47c:	66 90                	xchg   %ax,%ax
 47e:	66 90                	xchg   %ax,%ax

00000480 <deregister_tm_clones>:
 480:	e8 17 01 00 00       	call   59c <__x86.get_pc_thunk.dx>
 485:	81 c2 7b 1b 00 00    	add    $0x1b7b,%edx
 48b:	8d 8a 38 00 00 00    	lea    0x38(%edx),%ecx
 491:	8d 82 3b 00 00 00    	lea    0x3b(%edx),%eax
 497:	29 c8                	sub    %ecx,%eax
 499:	83 f8 06             	cmp    $0x6,%eax
 49c:	76 17                	jbe    4b5 <deregister_tm_clones+0x35>
 49e:	8b 82 e8 ff ff ff    	mov    -0x18(%edx),%eax
 4a4:	85 c0                	test   %eax,%eax
 4a6:	74 0d                	je     4b5 <deregister_tm_clones+0x35>
 4a8:	55                   	push   %ebp
 4a9:	89 e5                	mov    %esp,%ebp
 4ab:	83 ec 14             	sub    $0x14,%esp
 4ae:	51                   	push   %ecx
 4af:	ff d0                	call   *%eax
 4b1:	83 c4 10             	add    $0x10,%esp
 4b4:	c9                   	leave  
 4b5:	f3 c3                	repz ret 
 4b7:	89 f6                	mov    %esi,%esi
 4b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000004c0 <register_tm_clones>:
 4c0:	e8 d7 00 00 00       	call   59c <__x86.get_pc_thunk.dx>
 4c5:	81 c2 3b 1b 00 00    	add    $0x1b3b,%edx
 4cb:	55                   	push   %ebp
 4cc:	8d 8a 38 00 00 00    	lea    0x38(%edx),%ecx
 4d2:	8d 82 38 00 00 00    	lea    0x38(%edx),%eax
 4d8:	89 e5                	mov    %esp,%ebp
 4da:	53                   	push   %ebx
 4db:	29 c8                	sub    %ecx,%eax
 4dd:	c1 f8 02             	sar    $0x2,%eax
 4e0:	83 ec 04             	sub    $0x4,%esp
 4e3:	89 c3                	mov    %eax,%ebx
 4e5:	c1 eb 1f             	shr    $0x1f,%ebx
 4e8:	01 d8                	add    %ebx,%eax
 4ea:	d1 f8                	sar    %eax
 4ec:	74 14                	je     502 <register_tm_clones+0x42>
 4ee:	8b 92 fc ff ff ff    	mov    -0x4(%edx),%edx
 4f4:	85 d2                	test   %edx,%edx
 4f6:	74 0a                	je     502 <register_tm_clones+0x42>
 4f8:	83 ec 08             	sub    $0x8,%esp
 4fb:	50                   	push   %eax
 4fc:	51                   	push   %ecx
 4fd:	ff d2                	call   *%edx
 4ff:	83 c4 10             	add    $0x10,%esp
 502:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 505:	c9                   	leave  
 506:	c3                   	ret    
 507:	89 f6                	mov    %esi,%esi
 509:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000510 <__do_global_dtors_aux>:
 510:	55                   	push   %ebp
 511:	89 e5                	mov    %esp,%ebp
 513:	53                   	push   %ebx
 514:	e8 57 ff ff ff       	call   470 <__x86.get_pc_thunk.bx>
 519:	81 c3 e7 1a 00 00    	add    $0x1ae7,%ebx
 51f:	83 ec 04             	sub    $0x4,%esp
 522:	80 bb 38 00 00 00 00 	cmpb   $0x0,0x38(%ebx)
 529:	75 27                	jne    552 <__do_global_dtors_aux+0x42>
 52b:	8b 83 ec ff ff ff    	mov    -0x14(%ebx),%eax
 531:	85 c0                	test   %eax,%eax
 533:	74 11                	je     546 <__do_global_dtors_aux+0x36>
 535:	83 ec 0c             	sub    $0xc,%esp
 538:	ff b3 18 00 00 00    	pushl  0x18(%ebx)
 53e:	e8 dd fe ff ff       	call   420 <.plt.got>
 543:	83 c4 10             	add    $0x10,%esp
 546:	e8 35 ff ff ff       	call   480 <deregister_tm_clones>
 54b:	c6 83 38 00 00 00 01 	movb   $0x1,0x38(%ebx)
 552:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 555:	c9                   	leave  
 556:	c3                   	ret    
 557:	89 f6                	mov    %esi,%esi
 559:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000560 <frame_dummy>:
 560:	e8 37 00 00 00       	call   59c <__x86.get_pc_thunk.dx>
 565:	81 c2 9b 1a 00 00    	add    $0x1a9b,%edx
 56b:	8d 82 f4 fe ff ff    	lea    -0x10c(%edx),%eax
 571:	8b 08                	mov    (%eax),%ecx
 573:	85 c9                	test   %ecx,%ecx
 575:	75 09                	jne    580 <frame_dummy+0x20>
 577:	e9 44 ff ff ff       	jmp    4c0 <register_tm_clones>
 57c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 580:	8b 92 f8 ff ff ff    	mov    -0x8(%edx),%edx
 586:	85 d2                	test   %edx,%edx
 588:	74 ed                	je     577 <frame_dummy+0x17>
 58a:	55                   	push   %ebp
 58b:	89 e5                	mov    %esp,%ebp
 58d:	83 ec 14             	sub    $0x14,%esp
 590:	50                   	push   %eax
 591:	ff d2                	call   *%edx
 593:	83 c4 10             	add    $0x10,%esp
 596:	c9                   	leave  
 597:	e9 24 ff ff ff       	jmp    4c0 <register_tm_clones>

0000059c <__x86.get_pc_thunk.dx>:
 59c:	8b 14 24             	mov    (%esp),%edx
 59f:	c3                   	ret    

000005a0 <main>:
 5a0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 5a4:	83 e4 f0             	and    $0xfffffff0,%esp
 5a7:	ff 71 fc             	pushl  -0x4(%ecx)
 5aa:	55                   	push   %ebp
 5ab:	89 e5                	mov    %esp,%ebp
 5ad:	53                   	push   %ebx
 5ae:	51                   	push   %ecx
 5af:	e8 bc fe ff ff       	call   470 <__x86.get_pc_thunk.bx>
 5b4:	81 c3 4c 1a 00 00    	add    $0x1a4c,%ebx
 5ba:	83 ec 0c             	sub    $0xc,%esp
 5bd:	8d 83 1c 00 00 00    	lea    0x1c(%ebx),%eax
 5c3:	50                   	push   %eax
 5c4:	68 28 e1 92 43       	push   $0x4392e128
 5c9:	68 af 22 dc 3b       	push   $0x3bdc22af
 5ce:	ff b3 34 00 00 00    	pushl  0x34(%ebx)
 5d4:	8d 83 80 e6 ff ff    	lea    -0x1980(%ebx),%eax
 5da:	50                   	push   %eax
 5db:	e8 20 fe ff ff       	call   400 <printf@plt>
 5e0:	83 c4 20             	add    $0x20,%esp
 5e3:	b8 00 00 00 00       	mov    $0x0,%eax
 5e8:	8d 65 f8             	lea    -0x8(%ebp),%esp
 5eb:	59                   	pop    %ecx
 5ec:	5b                   	pop    %ebx
 5ed:	5d                   	pop    %ebp
 5ee:	8d 61 fc             	lea    -0x4(%ecx),%esp
 5f1:	c3                   	ret    
 5f2:	66 90                	xchg   %ax,%ax
 5f4:	66 90                	xchg   %ax,%ax
 5f6:	66 90                	xchg   %ax,%ax
 5f8:	66 90                	xchg   %ax,%ax
 5fa:	66 90                	xchg   %ax,%ax
 5fc:	66 90                	xchg   %ax,%ax
 5fe:	66 90                	xchg   %ax,%ax

00000600 <__libc_csu_init>:
 600:	55                   	push   %ebp
 601:	57                   	push   %edi
 602:	56                   	push   %esi
 603:	53                   	push   %ebx
 604:	e8 67 fe ff ff       	call   470 <__x86.get_pc_thunk.bx>
 609:	81 c3 f7 19 00 00    	add    $0x19f7,%ebx
 60f:	83 ec 0c             	sub    $0xc,%esp
 612:	8b 6c 24 20          	mov    0x20(%esp),%ebp
 616:	8d b3 f0 fe ff ff    	lea    -0x110(%ebx),%esi
 61c:	e8 9f fd ff ff       	call   3c0 <_init>
 621:	8d 83 ec fe ff ff    	lea    -0x114(%ebx),%eax
 627:	29 c6                	sub    %eax,%esi
 629:	c1 fe 02             	sar    $0x2,%esi
 62c:	85 f6                	test   %esi,%esi
 62e:	74 25                	je     655 <__libc_csu_init+0x55>
 630:	31 ff                	xor    %edi,%edi
 632:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 638:	83 ec 04             	sub    $0x4,%esp
 63b:	ff 74 24 2c          	pushl  0x2c(%esp)
 63f:	ff 74 24 2c          	pushl  0x2c(%esp)
 643:	55                   	push   %ebp
 644:	ff 94 bb ec fe ff ff 	call   *-0x114(%ebx,%edi,4)
 64b:	83 c7 01             	add    $0x1,%edi
 64e:	83 c4 10             	add    $0x10,%esp
 651:	39 fe                	cmp    %edi,%esi
 653:	75 e3                	jne    638 <__libc_csu_init+0x38>
 655:	83 c4 0c             	add    $0xc,%esp
 658:	5b                   	pop    %ebx
 659:	5e                   	pop    %esi
 65a:	5f                   	pop    %edi
 65b:	5d                   	pop    %ebp
 65c:	c3                   	ret    
 65d:	8d 76 00             	lea    0x0(%esi),%esi

00000660 <__libc_csu_fini>:
 660:	f3 c3                	repz ret 

Disassembly of section .fini:

00000664 <_fini>:
 664:	53                   	push   %ebx
 665:	83 ec 08             	sub    $0x8,%esp
 668:	e8 03 fe ff ff       	call   470 <__x86.get_pc_thunk.bx>
 66d:	81 c3 93 19 00 00    	add    $0x1993,%ebx
 673:	83 c4 08             	add    $0x8,%esp
 676:	5b                   	pop    %ebx
 677:	c3                   	ret    
