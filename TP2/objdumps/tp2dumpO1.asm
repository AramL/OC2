000000000040203d <infNorm>:
  40203d:	40 0f b6 ff          	movzx  edi,dil
  402041:	0f b6 c9             	movzx  ecx,cl
  402044:	29 cf                	sub    edi,ecx
  402046:	89 f8                	mov    eax,edi
  402048:	c1 f8 1f             	sar    eax,0x1f
  40204b:	31 c7                	xor    edi,eax
  40204d:	29 c7                	sub    edi,eax
  40204f:	40 0f b6 c6          	movzx  eax,sil
  402053:	45 0f b6 c0          	movzx  r8d,r8b
  402057:	44 29 c0             	sub    eax,r8d
  40205a:	89 c1                	mov    ecx,eax
  40205c:	c1 f9 1f             	sar    ecx,0x1f
  40205f:	31 c8                	xor    eax,ecx
  402061:	29 c8                	sub    eax,ecx
  402063:	0f b6 d2             	movzx  edx,dl
  402066:	45 0f b6 c9          	movzx  r9d,r9b
  40206a:	44 29 ca             	sub    edx,r9d
  40206d:	89 d1                	mov    ecx,edx
  40206f:	c1 f9 1f             	sar    ecx,0x1f
  402072:	31 ca                	xor    edx,ecx
  402074:	29 ca                	sub    edx,ecx
  402076:	66 39 c7             	cmp    di,ax
  402079:	7f 07                	jg     402082 <infNorm+0x45>
  40207b:	66 39 d0             	cmp    ax,dx
  40207e:	0f 4c c2             	cmovl  eax,edx
  402081:	c3                   	ret    
  402082:	66 39 d7             	cmp    di,dx
  402085:	89 d0                	mov    eax,edx
  402087:	0f 4d c7             	cmovge eax,edi
  40208a:	c3                   	ret    

000000000040208b <diff_c>:
  40208b:	41 57                	push   r15
  40208d:	41 56                	push   r14
  40208f:	41 55                	push   r13
  402091:	41 54                	push   r12
  402093:	55                   	push   rbp
  402094:	53                   	push   rbx
  402095:	48 83 ec 50          	sub    rsp,0x50
  402099:	89 4c 24 04          	mov    DWORD PTR [rsp+0x4],ecx
  40209d:	44 89 44 24 4c       	mov    DWORD PTR [rsp+0x4c],r8d
  4020a2:	45 85 c0             	test   r8d,r8d
  4020a5:	0f 8e fe 00 00 00    	jle    4021a9 <diff_c+0x11e>
  4020ab:	48 63 84 24 88 00 00 	movsxd rax,DWORD PTR [rsp+0x88]
  4020b2:	00 
  4020b3:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  4020b8:	48 89 74 24 18       	mov    QWORD PTR [rsp+0x18],rsi
  4020bd:	49 63 c1             	movsxd rax,r9d
  4020c0:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
  4020c5:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  4020ca:	48 63 84 24 90 00 00 	movsxd rax,DWORD PTR [rsp+0x90]
  4020d1:	00 
  4020d2:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
  4020d7:	48 89 54 24 28       	mov    QWORD PTR [rsp+0x28],rdx
  4020dc:	c7 44 24 48 00 00 00 	mov    DWORD PTR [rsp+0x48],0x0
  4020e3:	00 
  4020e4:	e9 91 00 00 00       	jmp    40217a <diff_c+0xef>
  4020e9:	44 8d 3c ad 00 00 00 	lea    r15d,[rbp*4+0x0]
  4020f0:	00 
  4020f1:	44 8d 73 ff          	lea    r14d,[rbx-0x1]
  4020f5:	4c 63 eb             	movsxd r13,ebx
  4020f8:	4d 63 f6             	movsxd r14,r14d
  4020fb:	4d 63 ff             	movsxd r15,r15d
  4020fe:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
  402103:	42 0f b6 0c 38       	movzx  ecx,BYTE PTR [rax+r15*1]
  402108:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
  40210d:	42 0f b6 14 2f       	movzx  edx,BYTE PTR [rdi+r13*1]
  402112:	42 0f b6 34 37       	movzx  esi,BYTE PTR [rdi+r14*1]
  402117:	42 0f b6 3c 3f       	movzx  edi,BYTE PTR [rdi+r15*1]
  40211c:	46 0f b6 0c 28       	movzx  r9d,BYTE PTR [rax+r13*1]
  402121:	46 0f b6 04 30       	movzx  r8d,BYTE PTR [rax+r14*1]
  402126:	e8 12 ff ff ff       	call   40203d <infNorm>
  40212b:	43 88 04 3c          	mov    BYTE PTR [r12+r15*1],al
  40212f:	43 88 04 34          	mov    BYTE PTR [r12+r14*1],al
  402133:	43 88 04 2c          	mov    BYTE PTR [r12+r13*1],al
  402137:	8d 43 01             	lea    eax,[rbx+0x1]
  40213a:	48 98                	cdqe   
  40213c:	41 c6 04 04 ff       	mov    BYTE PTR [r12+rax*1],0xff
  402141:	83 c5 01             	add    ebp,0x1
  402144:	83 c3 04             	add    ebx,0x4
  402147:	3b 6c 24 04          	cmp    ebp,DWORD PTR [rsp+0x4]
  40214b:	75 9c                	jne    4020e9 <diff_c+0x5e>
  40214d:	83 44 24 48 01       	add    DWORD PTR [rsp+0x48],0x1
  402152:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  402157:	48 01 44 24 18       	add    QWORD PTR [rsp+0x18],rax
  40215c:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
  402161:	48 01 44 24 20       	add    QWORD PTR [rsp+0x20],rax
  402166:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
  40216b:	48 01 44 24 28       	add    QWORD PTR [rsp+0x28],rax
  402170:	8b 44 24 4c          	mov    eax,DWORD PTR [rsp+0x4c]
  402174:	39 44 24 48          	cmp    DWORD PTR [rsp+0x48],eax
  402178:	74 2f                	je     4021a9 <diff_c+0x11e>
  40217a:	83 7c 24 04 00       	cmp    DWORD PTR [rsp+0x4],0x0
  40217f:	7e cc                	jle    40214d <diff_c+0xc2>
  402181:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
  402186:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  40218b:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  402190:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  402195:	4c 8b 64 24 28       	mov    r12,QWORD PTR [rsp+0x28]
  40219a:	bb 02 00 00 00       	mov    ebx,0x2
  40219f:	bd 00 00 00 00       	mov    ebp,0x0
  4021a4:	e9 40 ff ff ff       	jmp    4020e9 <diff_c+0x5e>
  4021a9:	48 83 c4 50          	add    rsp,0x50
  4021ad:	5b                   	pop    rbx
  4021ae:	5d                   	pop    rbp
  4021af:	41 5c                	pop    r12
  4021b1:	41 5d                	pop    r13
  4021b3:	41 5e                	pop    r14
  4021b5:	41 5f                	pop    r15
  4021b7:	c3                   	ret    

00000000004021b8 <matrizDeConvolucion>:
  4021b8:	41 57                	push   r15
  4021ba:	41 56                	push   r14
  4021bc:	41 55                	push   r13
  4021be:	41 54                	push   r12
  4021c0:	55                   	push   rbp
  4021c1:	53                   	push   rbx
  4021c2:	48 83 ec 38          	sub    rsp,0x38
  4021c6:	41 89 ff             	mov    r15d,edi
  4021c9:	8d 1c 3f             	lea    ebx,[rdi+rdi*1]
  4021cc:	44 8d 6b 01          	lea    r13d,[rbx+0x1]
  4021d0:	0f 14 c0             	unpcklps xmm0,xmm0
  4021d3:	0f 5a c8             	cvtps2pd xmm1,xmm0
  4021d6:	66 0f 28 d1          	movapd xmm2,xmm1
  4021da:	f2 0f 59 15 36 0f 00 	mulsd  xmm2,QWORD PTR [rip+0xf36]        # 403118 <_IO_stdin_used+0xbd8>
  4021e1:	00 
  4021e2:	f2 0f 59 ca          	mulsd  xmm1,xmm2
  4021e6:	66 0f 14 c9          	unpcklpd xmm1,xmm1
  4021ea:	66 0f 5a e1          	cvtpd2ps xmm4,xmm1
  4021ee:	f3 0f 11 64 24 0c    	movss  DWORD PTR [rsp+0xc],xmm4
  4021f4:	0f 28 c8             	movaps xmm1,xmm0
  4021f7:	f3 0f 59 0d 21 0f 00 	mulss  xmm1,DWORD PTR [rip+0xf21]        # 403120 <_IO_stdin_used+0xbe0>
  4021fe:	00 
  4021ff:	f3 0f 59 c8          	mulss  xmm1,xmm0
  402203:	f3 0f 11 4c 24 20    	movss  DWORD PTR [rsp+0x20],xmm1
  402209:	49 63 ed             	movsxd rbp,r13d
  40220c:	48 89 ef             	mov    rdi,rbp
  40220f:	48 0f af fd          	imul   rdi,rbp
  402213:	48 c1 e7 02          	shl    rdi,0x2
  402217:	e8 64 e9 ff ff       	call   400b80 <malloc@plt>
  40221c:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  402221:	45 85 ed             	test   r13d,r13d
  402224:	0f 8e 8d 00 00 00    	jle    4022b7 <matrizDeConvolucion+0xff>
  40222a:	48 8d 14 ad 00 00 00 	lea    rdx,[rbp*4+0x0]
  402231:	00 
  402232:	48 89 54 24 18       	mov    QWORD PTR [rsp+0x18],rdx
  402237:	45 89 fe             	mov    r14d,r15d
  40223a:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  40223f:	41 8d 47 ff          	lea    eax,[r15-0x1]
  402243:	29 d8                	sub    eax,ebx
  402245:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  402249:	eb 59                	jmp    4022a4 <matrizDeConvolucion+0xec>
  40224b:	44 89 f0             	mov    eax,r14d
  40224e:	29 d8                	sub    eax,ebx
  402250:	0f af c0             	imul   eax,eax
  402253:	44 01 e0             	add    eax,r12d
  402256:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  40225a:	f3 0f 5e 44 24 20    	divss  xmm0,DWORD PTR [rsp+0x20]
  402260:	0f 14 c0             	unpcklps xmm0,xmm0
  402263:	0f 5a c0             	cvtps2pd xmm0,xmm0
  402266:	e8 75 e8 ff ff       	call   400ae0 <exp@plt>
  40226b:	f3 0f 10 4c 24 0c    	movss  xmm1,DWORD PTR [rsp+0xc]
  402271:	0f 5a c9             	cvtps2pd xmm1,xmm1
  402274:	f2 0f 5e c1          	divsd  xmm0,xmm1
  402278:	66 0f 14 c0          	unpcklpd xmm0,xmm0
  40227c:	66 0f 5a d8          	cvtpd2ps xmm3,xmm0
  402280:	f3 0f 11 5c 9d 00    	movss  DWORD PTR [rbp+rbx*4+0x0],xmm3
  402286:	48 83 c3 01          	add    rbx,0x1
  40228a:	41 39 dd             	cmp    r13d,ebx
  40228d:	7f bc                	jg     40224b <matrizDeConvolucion+0x93>
  40228f:	41 83 ef 01          	sub    r15d,0x1
  402293:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
  402298:	48 01 44 24 10       	add    QWORD PTR [rsp+0x10],rax
  40229d:	44 3b 7c 24 24       	cmp    r15d,DWORD PTR [rsp+0x24]
  4022a2:	74 13                	je     4022b7 <matrizDeConvolucion+0xff>
  4022a4:	45 89 fc             	mov    r12d,r15d
  4022a7:	45 0f af e7          	imul   r12d,r15d
  4022ab:	48 8b 6c 24 10       	mov    rbp,QWORD PTR [rsp+0x10]
  4022b0:	bb 00 00 00 00       	mov    ebx,0x0
  4022b5:	eb 94                	jmp    40224b <matrizDeConvolucion+0x93>
  4022b7:	48 8b 44 24 28       	mov    rax,QWORD PTR [rsp+0x28]
  4022bc:	48 83 c4 38          	add    rsp,0x38
  4022c0:	5b                   	pop    rbx
  4022c1:	5d                   	pop    rbp
  4022c2:	41 5c                	pop    r12
  4022c4:	41 5d                	pop    r13
  4022c6:	41 5e                	pop    r14
  4022c8:	41 5f                	pop    r15
  4022ca:	c3                   	ret    

00000000004022cb <blur_c>:
  4022cb:	41 57                	push   r15
  4022cd:	41 56                	push   r14
  4022cf:	41 55                	push   r13
  4022d1:	41 54                	push   r12
  4022d3:	55                   	push   rbp
  4022d4:	53                   	push   rbx
  4022d5:	48 83 ec 48          	sub    rsp,0x48
  4022d9:	49 89 ff             	mov    r15,rdi
  4022dc:	48 89 74 24 30       	mov    QWORD PTR [rsp+0x30],rsi
  4022e1:	41 89 d5             	mov    r13d,edx
  4022e4:	41 89 cc             	mov    r12d,ecx
  4022e7:	44 89 44 24 18       	mov    DWORD PTR [rsp+0x18],r8d
  4022ec:	8d 2c 95 00 00 00 00 	lea    ebp,[rdx*4+0x0]
  4022f3:	47 8d 74 00 01       	lea    r14d,[r8+r8*1+0x1]
  4022f8:	44 89 c7             	mov    edi,r8d
  4022fb:	e8 b8 fe ff ff       	call   4021b8 <matrizDeConvolucion>
  402300:	48 89 c3             	mov    rbx,rax
  402303:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  402307:	41 29 c5             	sub    r13d,eax
  40230a:	44 89 6c 24 2c       	mov    DWORD PTR [rsp+0x2c],r13d
  40230f:	44 39 e8             	cmp    eax,r13d
  402312:	0f 8d 86 01 00 00    	jge    40249e <blur_c+0x1d3>
  402318:	4d 63 f6             	movsxd r14,r14d
  40231b:	49 c1 e6 02          	shl    r14,0x2
  40231f:	8d 3c 85 00 00 00 00 	lea    edi,[rax*4+0x0]
  402326:	89 7c 24 38          	mov    DWORD PTR [rsp+0x38],edi
  40232a:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
  40232e:	44 8d 4c 00 01       	lea    r9d,[rax+rax*1+0x1]
  402333:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  402337:	41 29 c4             	sub    r12d,eax
  40233a:	44 89 64 24 3c       	mov    DWORD PTR [rsp+0x3c],r12d
  40233f:	48 63 ed             	movsxd rbp,ebp
  402342:	41 29 c4             	sub    r12d,eax
  402345:	44 89 64 24 1c       	mov    DWORD PTR [rsp+0x1c],r12d
  40234a:	f7 d8                	neg    eax
  40234c:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  402350:	45 0f 57 c0          	xorps  xmm8,xmm8
  402354:	41 0f 28 f0          	movaps xmm6,xmm8
  402358:	41 0f 28 f8          	movaps xmm7,xmm8
  40235c:	41 0f 28 e8          	movaps xmm5,xmm8
  402360:	e9 fc 00 00 00       	jmp    402461 <blur_c+0x196>
  402365:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  402369:	39 44 24 18          	cmp    DWORD PTR [rsp+0x18],eax
  40236d:	0f 8c 95 00 00 00    	jl     402408 <blur_c+0x13d>
  402373:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
  402377:	44 8d 1c 85 00 00 00 	lea    r11d,[rax*4+0x0]
  40237e:	00 
  40237f:	45 89 d0             	mov    r8d,r10d
  402382:	0f 28 ce             	movaps xmm1,xmm6
  402385:	0f 28 d5             	movaps xmm2,xmm5
  402388:	0f 28 dd             	movaps xmm3,xmm5
  40238b:	eb 5b                	jmp    4023e8 <blur_c+0x11d>
  40238d:	48 63 f2             	movsxd rsi,edx
  402390:	f3 0f 10 04 b7       	movss  xmm0,DWORD PTR [rdi+rsi*4]
  402395:	48 63 f0             	movsxd rsi,eax
  402398:	0f b6 34 31          	movzx  esi,BYTE PTR [rcx+rsi*1]
  40239c:	f3 0f 2a e6          	cvtsi2ss xmm4,esi
  4023a0:	f3 0f 59 e0          	mulss  xmm4,xmm0
  4023a4:	f3 0f 58 dc          	addss  xmm3,xmm4
  4023a8:	8d 70 01             	lea    esi,[rax+0x1]
  4023ab:	48 63 f6             	movsxd rsi,esi
  4023ae:	0f b6 34 31          	movzx  esi,BYTE PTR [rcx+rsi*1]
  4023b2:	f3 0f 2a e6          	cvtsi2ss xmm4,esi
  4023b6:	f3 0f 59 e0          	mulss  xmm4,xmm0
  4023ba:	f3 0f 58 d4          	addss  xmm2,xmm4
  4023be:	8d 70 02             	lea    esi,[rax+0x2]
  4023c1:	48 63 f6             	movsxd rsi,esi
  4023c4:	0f b6 34 31          	movzx  esi,BYTE PTR [rcx+rsi*1]
  4023c8:	f3 0f 2a e6          	cvtsi2ss xmm4,esi
  4023cc:	f3 0f 59 c4          	mulss  xmm0,xmm4
  4023d0:	f3 0f 58 c8          	addss  xmm1,xmm0
  4023d4:	83 c0 04             	add    eax,0x4
  4023d7:	83 c2 01             	add    edx,0x1
  4023da:	44 39 ca             	cmp    edx,r9d
  4023dd:	75 ae                	jne    40238d <blur_c+0xc2>
  4023df:	41 83 c0 01          	add    r8d,0x1
  4023e3:	45 39 c8             	cmp    r8d,r9d
  4023e6:	74 2a                	je     402412 <blur_c+0x147>
  4023e8:	43 8d 0c 04          	lea    ecx,[r12+r8*1]
  4023ec:	48 63 c9             	movsxd rcx,ecx
  4023ef:	48 0f af cd          	imul   rcx,rbp
  4023f3:	4c 01 f9             	add    rcx,r15
  4023f6:	49 63 f8             	movsxd rdi,r8d
  4023f9:	49 0f af fe          	imul   rdi,r14
  4023fd:	48 01 df             	add    rdi,rbx
  402400:	44 89 d2             	mov    edx,r10d
  402403:	44 89 d8             	mov    eax,r11d
  402406:	eb 85                	jmp    40238d <blur_c+0xc2>
  402408:	41 0f 28 c8          	movaps xmm1,xmm8
  40240c:	0f 28 d7             	movaps xmm2,xmm7
  40240f:	0f 28 df             	movaps xmm3,xmm7
  402412:	49 63 c5             	movsxd rax,r13d
  402415:	f3 0f 2c d3          	cvttss2si edx,xmm3
  402419:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
  40241e:	88 14 07             	mov    BYTE PTR [rdi+rax*1],dl
  402421:	41 8d 45 01          	lea    eax,[r13+0x1]
  402425:	48 98                	cdqe   
  402427:	f3 0f 2c d2          	cvttss2si edx,xmm2
  40242b:	88 14 07             	mov    BYTE PTR [rdi+rax*1],dl
  40242e:	41 8d 45 02          	lea    eax,[r13+0x2]
  402432:	48 98                	cdqe   
  402434:	f3 0f 2c d1          	cvttss2si edx,xmm1
  402438:	88 14 07             	mov    BYTE PTR [rdi+rax*1],dl
  40243b:	83 44 24 0c 01       	add    DWORD PTR [rsp+0xc],0x1
  402440:	41 83 c5 04          	add    r13d,0x4
  402444:	8b 44 24 1c          	mov    eax,DWORD PTR [rsp+0x1c]
  402448:	39 44 24 0c          	cmp    DWORD PTR [rsp+0xc],eax
  40244c:	0f 85 13 ff ff ff    	jne    402365 <blur_c+0x9a>
  402452:	83 44 24 24 01       	add    DWORD PTR [rsp+0x24],0x1
  402457:	8b 44 24 2c          	mov    eax,DWORD PTR [rsp+0x2c]
  40245b:	39 44 24 24          	cmp    DWORD PTR [rsp+0x24],eax
  40245f:	74 3d                	je     40249e <blur_c+0x1d3>
  402461:	8b 44 24 3c          	mov    eax,DWORD PTR [rsp+0x3c]
  402465:	39 44 24 18          	cmp    DWORD PTR [rsp+0x18],eax
  402469:	7d e7                	jge    402452 <blur_c+0x187>
  40246b:	44 8b 64 24 24       	mov    r12d,DWORD PTR [rsp+0x24]
  402470:	49 63 c4             	movsxd rax,r12d
  402473:	48 0f af c5          	imul   rax,rbp
  402477:	48 03 44 24 30       	add    rax,QWORD PTR [rsp+0x30]
  40247c:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  402481:	44 8b 6c 24 38       	mov    r13d,DWORD PTR [rsp+0x38]
  402486:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [rsp+0xc],0x0
  40248d:	00 
  40248e:	41 ba 00 00 00 00    	mov    r10d,0x0
  402494:	44 2b 64 24 28       	sub    r12d,DWORD PTR [rsp+0x28]
  402499:	e9 c7 fe ff ff       	jmp    402365 <blur_c+0x9a>
  40249e:	48 89 df             	mov    rdi,rbx
  4024a1:	e8 da e5 ff ff       	call   400a80 <free@plt>
  4024a6:	48 83 c4 48          	add    rsp,0x48
  4024aa:	5b                   	pop    rbx
  4024ab:	5d                   	pop    rbp
  4024ac:	41 5c                	pop    r12
  4024ae:	41 5d                	pop    r13
  4024b0:	41 5e                	pop    r14
  4024b2:	41 5f                	pop    r15
  4024b4:	c3                   	ret    
  4024b5:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  4024bc:	00 00 00 
  4024bf:	90                   	nop