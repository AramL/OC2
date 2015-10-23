000000000040287d <infNorm>:
  40287d:	55                   	push   rbp
  40287e:	48 89 e5             	mov    rbp,rsp
  402881:	89 c8                	mov    eax,ecx
  402883:	44 89 c9             	mov    ecx,r9d
  402886:	40 88 7d ec          	mov    BYTE PTR [rbp-0x14],dil
  40288a:	40 88 75 e8          	mov    BYTE PTR [rbp-0x18],sil
  40288e:	88 55 e4             	mov    BYTE PTR [rbp-0x1c],dl
  402891:	88 45 e0             	mov    BYTE PTR [rbp-0x20],al
  402894:	44 88 45 dc          	mov    BYTE PTR [rbp-0x24],r8b
  402898:	88 4d d8             	mov    BYTE PTR [rbp-0x28],cl
  40289b:	0f b6 55 ec          	movzx  edx,BYTE PTR [rbp-0x14]
  40289f:	0f b6 45 e0          	movzx  eax,BYTE PTR [rbp-0x20]
  4028a3:	29 c2                	sub    edx,eax
  4028a5:	89 d0                	mov    eax,edx
  4028a7:	99                   	cdq    
  4028a8:	31 d0                	xor    eax,edx
  4028aa:	29 d0                	sub    eax,edx
  4028ac:	66 89 45 fe          	mov    WORD PTR [rbp-0x2],ax
  4028b0:	0f b6 55 e8          	movzx  edx,BYTE PTR [rbp-0x18]
  4028b4:	0f b6 45 dc          	movzx  eax,BYTE PTR [rbp-0x24]
  4028b8:	29 c2                	sub    edx,eax
  4028ba:	89 d0                	mov    eax,edx
  4028bc:	99                   	cdq    
  4028bd:	31 d0                	xor    eax,edx
  4028bf:	29 d0                	sub    eax,edx
  4028c1:	66 89 45 fc          	mov    WORD PTR [rbp-0x4],ax
  4028c5:	0f b6 55 e4          	movzx  edx,BYTE PTR [rbp-0x1c]
  4028c9:	0f b6 45 d8          	movzx  eax,BYTE PTR [rbp-0x28]
  4028cd:	29 c2                	sub    edx,eax
  4028cf:	89 d0                	mov    eax,edx
  4028d1:	99                   	cdq    
  4028d2:	31 d0                	xor    eax,edx
  4028d4:	29 d0                	sub    eax,edx
  4028d6:	66 89 45 fa          	mov    WORD PTR [rbp-0x6],ax
  4028da:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  4028de:	66 3b 45 fc          	cmp    ax,WORD PTR [rbp-0x4]
  4028e2:	7f 0f                	jg     4028f3 <infNorm+0x76>
  4028e4:	0f b7 45 fc          	movzx  eax,WORD PTR [rbp-0x4]
  4028e8:	66 39 45 fa          	cmp    WORD PTR [rbp-0x6],ax
  4028ec:	66 0f 4d 45 fa       	cmovge ax,WORD PTR [rbp-0x6]
  4028f1:	eb 0d                	jmp    402900 <infNorm+0x83>
  4028f3:	0f b7 45 fe          	movzx  eax,WORD PTR [rbp-0x2]
  4028f7:	66 39 45 fa          	cmp    WORD PTR [rbp-0x6],ax
  4028fb:	66 0f 4d 45 fa       	cmovge ax,WORD PTR [rbp-0x6]
  402900:	5d                   	pop    rbp
  402901:	c3                   	ret    

0000000000402902 <diff_c>:
  402902:	55                   	push   rbp
  402903:	48 89 e5             	mov    rbp,rsp
  402906:	41 57                	push   r15
  402908:	41 56                	push   r14
  40290a:	41 55                	push   r13
  40290c:	41 54                	push   r12
  40290e:	53                   	push   rbx
  40290f:	48 81 ec 88 00 00 00 	sub    rsp,0x88
  402916:	48 89 7d 88          	mov    QWORD PTR [rbp-0x78],rdi
  40291a:	48 89 75 80          	mov    QWORD PTR [rbp-0x80],rsi
  40291e:	48 89 95 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],rdx
  402925:	89 8d 74 ff ff ff    	mov    DWORD PTR [rbp-0x8c],ecx
  40292b:	44 89 85 70 ff ff ff 	mov    DWORD PTR [rbp-0x90],r8d
  402932:	44 89 8d 6c ff ff ff 	mov    DWORD PTR [rbp-0x94],r9d
  402939:	44 8b a5 6c ff ff ff 	mov    r12d,DWORD PTR [rbp-0x94]
  402940:	49 63 c4             	movsxd rax,r12d
  402943:	48 83 e8 01          	sub    rax,0x1
  402947:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
  40294b:	49 63 c4             	movsxd rax,r12d
  40294e:	48 89 85 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],rax
  402955:	48 c7 85 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],0x0
  40295c:	00 00 00 00 
  402960:	48 8b 45 88          	mov    rax,QWORD PTR [rbp-0x78]
  402964:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
  402968:	44 8b 6d 10          	mov    r13d,DWORD PTR [rbp+0x10]
  40296c:	49 63 c5             	movsxd rax,r13d
  40296f:	48 83 e8 01          	sub    rax,0x1
  402973:	48 89 45 b0          	mov    QWORD PTR [rbp-0x50],rax
  402977:	49 63 c5             	movsxd rax,r13d
  40297a:	49 89 c6             	mov    r14,rax
  40297d:	41 bf 00 00 00 00    	mov    r15d,0x0
  402983:	48 8b 45 80          	mov    rax,QWORD PTR [rbp-0x80]
  402987:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
  40298b:	8b 5d 18             	mov    ebx,DWORD PTR [rbp+0x18]
  40298e:	48 63 c3             	movsxd rax,ebx
  402991:	48 83 e8 01          	sub    rax,0x1
  402995:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax
  402999:	48 63 c3             	movsxd rax,ebx
  40299c:	49 89 c2             	mov    r10,rax
  40299f:	41 bb 00 00 00 00    	mov    r11d,0x0
  4029a5:	48 8b 85 78 ff ff ff 	mov    rax,QWORD PTR [rbp-0x88]
  4029ac:	48 89 45 98          	mov    QWORD PTR [rbp-0x68],rax
  4029b0:	c7 45 cc 00 00 00 00 	mov    DWORD PTR [rbp-0x34],0x0
  4029b7:	e9 a8 01 00 00       	jmp    402b64 <diff_c+0x262>
  4029bc:	c7 45 c8 00 00 00 00 	mov    DWORD PTR [rbp-0x38],0x0
  4029c3:	e9 89 01 00 00       	jmp    402b51 <diff_c+0x24f>
  4029c8:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  4029cb:	48 63 d0             	movsxd rdx,eax
  4029ce:	49 63 c5             	movsxd rax,r13d
  4029d1:	48 0f af d0          	imul   rdx,rax
  4029d5:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  4029d9:	48 01 c2             	add    rdx,rax
  4029dc:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  4029df:	c1 e0 02             	shl    eax,0x2
  4029e2:	83 c0 02             	add    eax,0x2
  4029e5:	48 98                	cdqe   
  4029e7:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
  4029eb:	44 0f b6 c0          	movzx  r8d,al
  4029ef:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  4029f2:	48 63 d0             	movsxd rdx,eax
  4029f5:	49 63 c5             	movsxd rax,r13d
  4029f8:	48 0f af d0          	imul   rdx,rax
  4029fc:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  402a00:	48 01 c2             	add    rdx,rax
  402a03:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  402a06:	c1 e0 02             	shl    eax,0x2
  402a09:	83 c0 01             	add    eax,0x1
  402a0c:	48 98                	cdqe   
  402a0e:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
  402a12:	0f b6 f8             	movzx  edi,al
  402a15:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  402a18:	48 63 d0             	movsxd rdx,eax
  402a1b:	49 63 c5             	movsxd rax,r13d
  402a1e:	48 0f af d0          	imul   rdx,rax
  402a22:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  402a26:	48 01 c2             	add    rdx,rax
  402a29:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  402a2c:	c1 e0 02             	shl    eax,0x2
  402a2f:	48 98                	cdqe   
  402a31:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
  402a35:	0f b6 c8             	movzx  ecx,al
  402a38:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  402a3b:	48 63 d0             	movsxd rdx,eax
  402a3e:	49 63 c4             	movsxd rax,r12d
  402a41:	48 0f af d0          	imul   rdx,rax
  402a45:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  402a49:	48 01 c2             	add    rdx,rax
  402a4c:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  402a4f:	c1 e0 02             	shl    eax,0x2
  402a52:	83 c0 02             	add    eax,0x2
  402a55:	48 98                	cdqe   
  402a57:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
  402a5b:	0f b6 d0             	movzx  edx,al
  402a5e:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  402a61:	48 63 f0             	movsxd rsi,eax
  402a64:	49 63 c4             	movsxd rax,r12d
  402a67:	48 0f af f0          	imul   rsi,rax
  402a6b:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  402a6f:	48 01 c6             	add    rsi,rax
  402a72:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  402a75:	c1 e0 02             	shl    eax,0x2
  402a78:	83 c0 01             	add    eax,0x1
  402a7b:	48 98                	cdqe   
  402a7d:	0f b6 04 06          	movzx  eax,BYTE PTR [rsi+rax*1]
  402a81:	0f b6 f0             	movzx  esi,al
  402a84:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  402a87:	4c 63 c8             	movsxd r9,eax
  402a8a:	49 63 c4             	movsxd rax,r12d
  402a8d:	4c 0f af c8          	imul   r9,rax
  402a91:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  402a95:	49 01 c1             	add    r9,rax
  402a98:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  402a9b:	c1 e0 02             	shl    eax,0x2
  402a9e:	48 98                	cdqe   
  402aa0:	41 0f b6 04 01       	movzx  eax,BYTE PTR [r9+rax*1]
  402aa5:	0f b6 c0             	movzx  eax,al
  402aa8:	45 89 c1             	mov    r9d,r8d
  402aab:	41 89 f8             	mov    r8d,edi
  402aae:	89 c7                	mov    edi,eax
  402ab0:	e8 c8 fd ff ff       	call   40287d <infNorm>
  402ab5:	88 45 97             	mov    BYTE PTR [rbp-0x69],al
  402ab8:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  402abb:	48 63 d0             	movsxd rdx,eax
  402abe:	48 63 c3             	movsxd rax,ebx
  402ac1:	48 0f af d0          	imul   rdx,rax
  402ac5:	48 8b 45 98          	mov    rax,QWORD PTR [rbp-0x68]
  402ac9:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
  402acd:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  402ad0:	c1 e0 02             	shl    eax,0x2
  402ad3:	48 98                	cdqe   
  402ad5:	0f b6 55 97          	movzx  edx,BYTE PTR [rbp-0x69]
  402ad9:	88 14 01             	mov    BYTE PTR [rcx+rax*1],dl
  402adc:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  402adf:	48 63 d0             	movsxd rdx,eax
  402ae2:	48 63 c3             	movsxd rax,ebx
  402ae5:	48 0f af d0          	imul   rdx,rax
  402ae9:	48 8b 45 98          	mov    rax,QWORD PTR [rbp-0x68]
  402aed:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
  402af1:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  402af4:	c1 e0 02             	shl    eax,0x2
  402af7:	83 c0 01             	add    eax,0x1
  402afa:	48 98                	cdqe   
  402afc:	0f b6 55 97          	movzx  edx,BYTE PTR [rbp-0x69]
  402b00:	88 14 01             	mov    BYTE PTR [rcx+rax*1],dl
  402b03:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  402b06:	48 63 d0             	movsxd rdx,eax
  402b09:	48 63 c3             	movsxd rax,ebx
  402b0c:	48 0f af d0          	imul   rdx,rax
  402b10:	48 8b 45 98          	mov    rax,QWORD PTR [rbp-0x68]
  402b14:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
  402b18:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  402b1b:	c1 e0 02             	shl    eax,0x2
  402b1e:	83 c0 02             	add    eax,0x2
  402b21:	48 98                	cdqe   
  402b23:	0f b6 55 97          	movzx  edx,BYTE PTR [rbp-0x69]
  402b27:	88 14 01             	mov    BYTE PTR [rcx+rax*1],dl
  402b2a:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  402b2d:	48 63 d0             	movsxd rdx,eax
  402b30:	48 63 c3             	movsxd rax,ebx
  402b33:	48 0f af d0          	imul   rdx,rax
  402b37:	48 8b 45 98          	mov    rax,QWORD PTR [rbp-0x68]
  402b3b:	48 01 c2             	add    rdx,rax
  402b3e:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  402b41:	c1 e0 02             	shl    eax,0x2
  402b44:	83 c0 03             	add    eax,0x3
  402b47:	48 98                	cdqe   
  402b49:	c6 04 02 ff          	mov    BYTE PTR [rdx+rax*1],0xff
  402b4d:	83 45 c8 01          	add    DWORD PTR [rbp-0x38],0x1
  402b51:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  402b54:	3b 85 74 ff ff ff    	cmp    eax,DWORD PTR [rbp-0x8c]
  402b5a:	0f 8c 68 fe ff ff    	jl     4029c8 <diff_c+0xc6>
  402b60:	83 45 cc 01          	add    DWORD PTR [rbp-0x34],0x1
  402b64:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  402b67:	3b 85 70 ff ff ff    	cmp    eax,DWORD PTR [rbp-0x90]
  402b6d:	0f 8c 49 fe ff ff    	jl     4029bc <diff_c+0xba>
  402b73:	48 81 c4 88 00 00 00 	add    rsp,0x88
  402b7a:	5b                   	pop    rbx
  402b7b:	41 5c                	pop    r12
  402b7d:	41 5d                	pop    r13
  402b7f:	41 5e                	pop    r14
  402b81:	41 5f                	pop    r15
  402b83:	5d                   	pop    rbp
  402b84:	c3                   	ret    

0000000000402b85 <matrizDeConvolucion>:
  402b85:	55                   	push   rbp
  402b86:	48 89 e5             	mov    rbp,rsp
  402b89:	41 54                	push   r12
  402b8b:	53                   	push   rbx
  402b8c:	48 83 ec 40          	sub    rsp,0x40
  402b90:	f3 0f 11 45 bc       	movss  DWORD PTR [rbp-0x44],xmm0
  402b95:	89 7d b8             	mov    DWORD PTR [rbp-0x48],edi
  402b98:	8b 4d b8             	mov    ecx,DWORD PTR [rbp-0x48]
  402b9b:	01 c9                	add    ecx,ecx
  402b9d:	83 c1 01             	add    ecx,0x1
  402ba0:	89 4d e4             	mov    DWORD PTR [rbp-0x1c],ecx
  402ba3:	f3 0f 10 45 bc       	movss  xmm0,DWORD PTR [rbp-0x44]
  402ba8:	0f 5a c0             	cvtps2pd xmm0,xmm0
  402bab:	f2 0f 10 0d ad 11 00 	movsd  xmm1,QWORD PTR [rip+0x11ad]        # 403d60 <_IO_stdin_used+0xc20>
  402bb2:	00 
  402bb3:	f2 0f 59 c8          	mulsd  xmm1,xmm0
  402bb7:	f3 0f 10 45 bc       	movss  xmm0,DWORD PTR [rbp-0x44]
  402bbc:	0f 5a c0             	cvtps2pd xmm0,xmm0
  402bbf:	f2 0f 59 c1          	mulsd  xmm0,xmm1
  402bc3:	66 0f 14 c0          	unpcklpd xmm0,xmm0
  402bc7:	66 0f 5a d0          	cvtpd2ps xmm2,xmm0
  402bcb:	f3 0f 11 55 e0       	movss  DWORD PTR [rbp-0x20],xmm2
  402bd0:	f3 0f 10 4d bc       	movss  xmm1,DWORD PTR [rbp-0x44]
  402bd5:	f3 0f 10 05 8b 11 00 	movss  xmm0,DWORD PTR [rip+0x118b]        # 403d68 <_IO_stdin_used+0xc28>
  402bdc:	00 
  402bdd:	f3 0f 59 c1          	mulss  xmm0,xmm1
  402be1:	f3 0f 59 45 bc       	mulss  xmm0,DWORD PTR [rbp-0x44]
  402be6:	f3 0f 11 45 dc       	movss  DWORD PTR [rbp-0x24],xmm0
  402beb:	8b 5d e4             	mov    ebx,DWORD PTR [rbp-0x1c]
  402bee:	48 63 cb             	movsxd rcx,ebx
  402bf1:	48 83 e9 01          	sub    rcx,0x1
  402bf5:	48 89 4d d0          	mov    QWORD PTR [rbp-0x30],rcx
  402bf9:	48 63 cb             	movsxd rcx,ebx
  402bfc:	48 89 c8             	mov    rax,rcx
  402bff:	ba 00 00 00 00       	mov    edx,0x0
  402c04:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  402c07:	48 63 d0             	movsxd rdx,eax
  402c0a:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  402c0d:	48 98                	cdqe   
  402c0f:	48 0f af c2          	imul   rax,rdx
  402c13:	48 c1 e0 02          	shl    rax,0x2
  402c17:	48 89 c7             	mov    rdi,rax
  402c1a:	e8 51 df ff ff       	call   400b70 <malloc@plt>
  402c1f:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  402c23:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
  402c2a:	e9 ac 00 00 00       	jmp    402cdb <matrizDeConvolucion+0x156>
  402c2f:	c7 45 e8 00 00 00 00 	mov    DWORD PTR [rbp-0x18],0x0
  402c36:	e9 90 00 00 00       	jmp    402ccb <matrizDeConvolucion+0x146>
  402c3b:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  402c3e:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
  402c41:	29 c2                	sub    edx,eax
  402c43:	89 d1                	mov    ecx,edx
  402c45:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  402c48:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
  402c4b:	29 c2                	sub    edx,eax
  402c4d:	89 d0                	mov    eax,edx
  402c4f:	0f af c1             	imul   eax,ecx
  402c52:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
  402c55:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  402c58:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
  402c5b:	89 d1                	mov    ecx,edx
  402c5d:	29 c1                	sub    ecx,eax
  402c5f:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  402c62:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
  402c65:	29 c2                	sub    edx,eax
  402c67:	89 d0                	mov    eax,edx
  402c69:	0f af c1             	imul   eax,ecx
  402c6c:	89 45 c0             	mov    DWORD PTR [rbp-0x40],eax
  402c6f:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  402c72:	48 63 d0             	movsxd rdx,eax
  402c75:	48 63 c3             	movsxd rax,ebx
  402c78:	48 0f af c2          	imul   rax,rdx
  402c7c:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  402c83:	00 
  402c84:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  402c88:	4c 8d 24 02          	lea    r12,[rdx+rax*1]
  402c8c:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
  402c8f:	8b 55 c4             	mov    edx,DWORD PTR [rbp-0x3c]
  402c92:	01 d0                	add    eax,edx
  402c94:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  402c98:	f3 0f 5e 45 dc       	divss  xmm0,DWORD PTR [rbp-0x24]
  402c9d:	0f 14 c0             	unpcklps xmm0,xmm0
  402ca0:	0f 5a c0             	cvtps2pd xmm0,xmm0
  402ca3:	e8 28 de ff ff       	call   400ad0 <exp@plt>
  402ca8:	f3 0f 10 4d e0       	movss  xmm1,DWORD PTR [rbp-0x20]
  402cad:	0f 5a c9             	cvtps2pd xmm1,xmm1
  402cb0:	f2 0f 5e c1          	divsd  xmm0,xmm1
  402cb4:	66 0f 14 c0          	unpcklpd xmm0,xmm0
  402cb8:	66 0f 5a c0          	cvtpd2ps xmm0,xmm0
  402cbc:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  402cbf:	48 98                	cdqe   
  402cc1:	f3 41 0f 11 04 84    	movss  DWORD PTR [r12+rax*4],xmm0
  402cc7:	83 45 e8 01          	add    DWORD PTR [rbp-0x18],0x1
  402ccb:	8b 45 e8             	mov    eax,DWORD PTR [rbp-0x18]
  402cce:	3b 45 e4             	cmp    eax,DWORD PTR [rbp-0x1c]
  402cd1:	0f 8c 64 ff ff ff    	jl     402c3b <matrizDeConvolucion+0xb6>
  402cd7:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
  402cdb:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  402cde:	3b 45 e4             	cmp    eax,DWORD PTR [rbp-0x1c]
  402ce1:	0f 8c 48 ff ff ff    	jl     402c2f <matrizDeConvolucion+0xaa>
  402ce7:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  402ceb:	48 83 c4 40          	add    rsp,0x40
  402cef:	5b                   	pop    rbx
  402cf0:	41 5c                	pop    r12
  402cf2:	5d                   	pop    rbp
  402cf3:	c3                   	ret    

0000000000402cf4 <blur_c>:
  402cf4:	55                   	push   rbp
  402cf5:	48 89 e5             	mov    rbp,rsp
  402cf8:	41 57                	push   r15
  402cfa:	41 56                	push   r14
  402cfc:	41 55                	push   r13
  402cfe:	41 54                	push   r12
  402d00:	53                   	push   rbx
  402d01:	48 81 ec 98 00 00 00 	sub    rsp,0x98
  402d08:	48 89 bd 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],rdi
  402d0f:	48 89 b5 60 ff ff ff 	mov    QWORD PTR [rbp-0xa0],rsi
  402d16:	89 95 5c ff ff ff    	mov    DWORD PTR [rbp-0xa4],edx
  402d1c:	89 8d 58 ff ff ff    	mov    DWORD PTR [rbp-0xa8],ecx
  402d22:	f3 0f 11 85 54 ff ff 	movss  DWORD PTR [rbp-0xac],xmm0
  402d29:	ff 
  402d2a:	44 89 85 50 ff ff ff 	mov    DWORD PTR [rbp-0xb0],r8d
  402d31:	8b 85 5c ff ff ff    	mov    eax,DWORD PTR [rbp-0xa4]
  402d37:	44 8d 24 85 00 00 00 	lea    r12d,[rax*4+0x0]
  402d3e:	00 
  402d3f:	49 63 c4             	movsxd rax,r12d
  402d42:	48 83 e8 01          	sub    rax,0x1
  402d46:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
  402d4a:	49 63 c4             	movsxd rax,r12d
  402d4d:	48 89 85 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rax
  402d54:	48 c7 85 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],0x0
  402d5b:	00 00 00 00 
  402d5f:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
  402d66:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax
  402d6a:	8b 85 5c ff ff ff    	mov    eax,DWORD PTR [rbp-0xa4]
  402d70:	44 8d 2c 85 00 00 00 	lea    r13d,[rax*4+0x0]
  402d77:	00 
  402d78:	49 63 c5             	movsxd rax,r13d
  402d7b:	48 83 e8 01          	sub    rax,0x1
  402d7f:	48 89 45 98          	mov    QWORD PTR [rbp-0x68],rax
  402d83:	49 63 c5             	movsxd rax,r13d
  402d86:	49 89 c6             	mov    r14,rax
  402d89:	41 bf 00 00 00 00    	mov    r15d,0x0
  402d8f:	48 8b 85 60 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa0]
  402d96:	48 89 45 90          	mov    QWORD PTR [rbp-0x70],rax
  402d9a:	8b 85 50 ff ff ff    	mov    eax,DWORD PTR [rbp-0xb0]
  402da0:	01 c0                	add    eax,eax
  402da2:	83 c0 01             	add    eax,0x1
  402da5:	89 45 8c             	mov    DWORD PTR [rbp-0x74],eax
  402da8:	8b 5d 8c             	mov    ebx,DWORD PTR [rbp-0x74]
  402dab:	48 63 c3             	movsxd rax,ebx
  402dae:	48 83 e8 01          	sub    rax,0x1
  402db2:	48 89 45 80          	mov    QWORD PTR [rbp-0x80],rax
  402db6:	48 63 c3             	movsxd rax,ebx
  402db9:	49 89 c1             	mov    r9,rax
  402dbc:	41 ba 00 00 00 00    	mov    r10d,0x0
  402dc2:	8b 95 50 ff ff ff    	mov    edx,DWORD PTR [rbp-0xb0]
  402dc8:	8b 85 54 ff ff ff    	mov    eax,DWORD PTR [rbp-0xac]
  402dce:	89 d7                	mov    edi,edx
  402dd0:	89 85 40 ff ff ff    	mov    DWORD PTR [rbp-0xc0],eax
  402dd6:	f3 0f 10 85 40 ff ff 	movss  xmm0,DWORD PTR [rbp-0xc0]
  402ddd:	ff 
  402dde:	e8 a2 fd ff ff       	call   402b85 <matrizDeConvolucion>
  402de3:	48 89 85 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],rax
  402dea:	8b 85 50 ff ff ff    	mov    eax,DWORD PTR [rbp-0xb0]
  402df0:	89 45 c0             	mov    DWORD PTR [rbp-0x40],eax
  402df3:	e9 86 02 00 00       	jmp    40307e <blur_c+0x38a>
  402df8:	8b 85 50 ff ff ff    	mov    eax,DWORD PTR [rbp-0xb0]
  402dfe:	89 45 bc             	mov    DWORD PTR [rbp-0x44],eax
  402e01:	e9 5b 02 00 00       	jmp    403061 <blur_c+0x36d>
  402e06:	8b 05 60 0f 00 00    	mov    eax,DWORD PTR [rip+0xf60]        # 403d6c <_IO_stdin_used+0xc2c>
  402e0c:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
  402e0f:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
  402e12:	89 45 c8             	mov    DWORD PTR [rbp-0x38],eax
  402e15:	8b 45 c8             	mov    eax,DWORD PTR [rbp-0x38]
  402e18:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
  402e1b:	8b 85 50 ff ff ff    	mov    eax,DWORD PTR [rbp-0xb0]
  402e21:	f7 d8                	neg    eax
  402e23:	89 45 b8             	mov    DWORD PTR [rbp-0x48],eax
  402e26:	e9 a1 01 00 00       	jmp    402fcc <blur_c+0x2d8>
  402e2b:	8b 85 50 ff ff ff    	mov    eax,DWORD PTR [rbp-0xb0]
  402e31:	f7 d8                	neg    eax
  402e33:	89 45 b4             	mov    DWORD PTR [rbp-0x4c],eax
  402e36:	e9 7e 01 00 00       	jmp    402fb9 <blur_c+0x2c5>
  402e3b:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
  402e3e:	8b 55 c0             	mov    edx,DWORD PTR [rbp-0x40]
  402e41:	01 d0                	add    eax,edx
  402e43:	48 63 d0             	movsxd rdx,eax
  402e46:	49 63 c4             	movsxd rax,r12d
  402e49:	48 0f af d0          	imul   rdx,rax
  402e4d:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  402e51:	48 01 c2             	add    rdx,rax
  402e54:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  402e57:	8b 4d bc             	mov    ecx,DWORD PTR [rbp-0x44]
  402e5a:	01 c8                	add    eax,ecx
  402e5c:	c1 e0 02             	shl    eax,0x2
  402e5f:	48 98                	cdqe   
  402e61:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
  402e65:	0f b6 c0             	movzx  eax,al
  402e68:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  402e6c:	8b 85 50 ff ff ff    	mov    eax,DWORD PTR [rbp-0xb0]
  402e72:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
  402e75:	01 d0                	add    eax,edx
  402e77:	48 63 d0             	movsxd rdx,eax
  402e7a:	48 63 c3             	movsxd rax,ebx
  402e7d:	48 0f af c2          	imul   rax,rdx
  402e81:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  402e88:	00 
  402e89:	48 8b 85 78 ff ff ff 	mov    rax,QWORD PTR [rbp-0x88]
  402e90:	48 01 c2             	add    rdx,rax
  402e93:	8b 85 50 ff ff ff    	mov    eax,DWORD PTR [rbp-0xb0]
  402e99:	8b 4d b4             	mov    ecx,DWORD PTR [rbp-0x4c]
  402e9c:	01 c8                	add    eax,ecx
  402e9e:	48 98                	cdqe   
  402ea0:	f3 0f 10 0c 82       	movss  xmm1,DWORD PTR [rdx+rax*4]
  402ea5:	f3 0f 59 c1          	mulss  xmm0,xmm1
  402ea9:	f3 0f 10 4d cc       	movss  xmm1,DWORD PTR [rbp-0x34]
  402eae:	f3 0f 58 c1          	addss  xmm0,xmm1
  402eb2:	f3 0f 11 45 cc       	movss  DWORD PTR [rbp-0x34],xmm0
  402eb7:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
  402eba:	8b 55 c0             	mov    edx,DWORD PTR [rbp-0x40]
  402ebd:	01 d0                	add    eax,edx
  402ebf:	48 63 d0             	movsxd rdx,eax
  402ec2:	49 63 c4             	movsxd rax,r12d
  402ec5:	48 0f af d0          	imul   rdx,rax
  402ec9:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  402ecd:	48 01 c2             	add    rdx,rax
  402ed0:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  402ed3:	8b 4d bc             	mov    ecx,DWORD PTR [rbp-0x44]
  402ed6:	01 c8                	add    eax,ecx
  402ed8:	c1 e0 02             	shl    eax,0x2
  402edb:	83 c0 01             	add    eax,0x1
  402ede:	48 98                	cdqe   
  402ee0:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
  402ee4:	0f b6 c0             	movzx  eax,al
  402ee7:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  402eeb:	8b 85 50 ff ff ff    	mov    eax,DWORD PTR [rbp-0xb0]
  402ef1:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
  402ef4:	01 d0                	add    eax,edx
  402ef6:	48 63 d0             	movsxd rdx,eax
  402ef9:	48 63 c3             	movsxd rax,ebx
  402efc:	48 0f af c2          	imul   rax,rdx
  402f00:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  402f07:	00 
  402f08:	48 8b 85 78 ff ff ff 	mov    rax,QWORD PTR [rbp-0x88]
  402f0f:	48 01 c2             	add    rdx,rax
  402f12:	8b 85 50 ff ff ff    	mov    eax,DWORD PTR [rbp-0xb0]
  402f18:	8b 4d b4             	mov    ecx,DWORD PTR [rbp-0x4c]
  402f1b:	01 c8                	add    eax,ecx
  402f1d:	48 98                	cdqe   
  402f1f:	f3 0f 10 0c 82       	movss  xmm1,DWORD PTR [rdx+rax*4]
  402f24:	f3 0f 59 c1          	mulss  xmm0,xmm1
  402f28:	f3 0f 10 4d c8       	movss  xmm1,DWORD PTR [rbp-0x38]
  402f2d:	f3 0f 58 c1          	addss  xmm0,xmm1
  402f31:	f3 0f 11 45 c8       	movss  DWORD PTR [rbp-0x38],xmm0
  402f36:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
  402f39:	8b 55 c0             	mov    edx,DWORD PTR [rbp-0x40]
  402f3c:	01 d0                	add    eax,edx
  402f3e:	48 63 d0             	movsxd rdx,eax
  402f41:	49 63 c4             	movsxd rax,r12d
  402f44:	48 0f af d0          	imul   rdx,rax
  402f48:	48 8b 45 a0          	mov    rax,QWORD PTR [rbp-0x60]
  402f4c:	48 01 c2             	add    rdx,rax
  402f4f:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  402f52:	8b 4d bc             	mov    ecx,DWORD PTR [rbp-0x44]
  402f55:	01 c8                	add    eax,ecx
  402f57:	c1 e0 02             	shl    eax,0x2
  402f5a:	83 c0 02             	add    eax,0x2
  402f5d:	48 98                	cdqe   
  402f5f:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
  402f63:	0f b6 c0             	movzx  eax,al
  402f66:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  402f6a:	8b 85 50 ff ff ff    	mov    eax,DWORD PTR [rbp-0xb0]
  402f70:	8b 55 b8             	mov    edx,DWORD PTR [rbp-0x48]
  402f73:	01 d0                	add    eax,edx
  402f75:	48 63 d0             	movsxd rdx,eax
  402f78:	48 63 c3             	movsxd rax,ebx
  402f7b:	48 0f af c2          	imul   rax,rdx
  402f7f:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  402f86:	00 
  402f87:	48 8b 85 78 ff ff ff 	mov    rax,QWORD PTR [rbp-0x88]
  402f8e:	48 01 c2             	add    rdx,rax
  402f91:	8b 85 50 ff ff ff    	mov    eax,DWORD PTR [rbp-0xb0]
  402f97:	8b 4d b4             	mov    ecx,DWORD PTR [rbp-0x4c]
  402f9a:	01 c8                	add    eax,ecx
  402f9c:	48 98                	cdqe   
  402f9e:	f3 0f 10 0c 82       	movss  xmm1,DWORD PTR [rdx+rax*4]
  402fa3:	f3 0f 59 c1          	mulss  xmm0,xmm1
  402fa7:	f3 0f 10 4d c4       	movss  xmm1,DWORD PTR [rbp-0x3c]
  402fac:	f3 0f 58 c1          	addss  xmm0,xmm1
  402fb0:	f3 0f 11 45 c4       	movss  DWORD PTR [rbp-0x3c],xmm0
  402fb5:	83 45 b4 01          	add    DWORD PTR [rbp-0x4c],0x1
  402fb9:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  402fbc:	3b 85 50 ff ff ff    	cmp    eax,DWORD PTR [rbp-0xb0]
  402fc2:	0f 8e 73 fe ff ff    	jle    402e3b <blur_c+0x147>
  402fc8:	83 45 b8 01          	add    DWORD PTR [rbp-0x48],0x1
  402fcc:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
  402fcf:	3b 85 50 ff ff ff    	cmp    eax,DWORD PTR [rbp-0xb0]
  402fd5:	0f 8e 50 fe ff ff    	jle    402e2b <blur_c+0x137>
  402fdb:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
  402fde:	48 63 d0             	movsxd rdx,eax
  402fe1:	49 63 c5             	movsxd rax,r13d
  402fe4:	48 0f af d0          	imul   rdx,rax
  402fe8:	48 8b 45 90          	mov    rax,QWORD PTR [rbp-0x70]
  402fec:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
  402ff0:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
  402ff3:	8d 34 85 00 00 00 00 	lea    esi,[rax*4+0x0]
  402ffa:	f3 0f 2c 45 cc       	cvttss2si eax,DWORD PTR [rbp-0x34]
  402fff:	89 c2                	mov    edx,eax
  403001:	48 63 c6             	movsxd rax,esi
  403004:	88 14 01             	mov    BYTE PTR [rcx+rax*1],dl
  403007:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
  40300a:	48 63 d0             	movsxd rdx,eax
  40300d:	49 63 c5             	movsxd rax,r13d
  403010:	48 0f af d0          	imul   rdx,rax
  403014:	48 8b 45 90          	mov    rax,QWORD PTR [rbp-0x70]
  403018:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
  40301c:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
  40301f:	c1 e0 02             	shl    eax,0x2
  403022:	8d 70 01             	lea    esi,[rax+0x1]
  403025:	f3 0f 2c 45 c8       	cvttss2si eax,DWORD PTR [rbp-0x38]
  40302a:	89 c2                	mov    edx,eax
  40302c:	48 63 c6             	movsxd rax,esi
  40302f:	88 14 01             	mov    BYTE PTR [rcx+rax*1],dl
  403032:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
  403035:	48 63 d0             	movsxd rdx,eax
  403038:	49 63 c5             	movsxd rax,r13d
  40303b:	48 0f af d0          	imul   rdx,rax
  40303f:	48 8b 45 90          	mov    rax,QWORD PTR [rbp-0x70]
  403043:	48 8d 0c 02          	lea    rcx,[rdx+rax*1]
  403047:	8b 45 bc             	mov    eax,DWORD PTR [rbp-0x44]
  40304a:	c1 e0 02             	shl    eax,0x2
  40304d:	8d 70 02             	lea    esi,[rax+0x2]
  403050:	f3 0f 2c 45 c4       	cvttss2si eax,DWORD PTR [rbp-0x3c]
  403055:	89 c2                	mov    edx,eax
  403057:	48 63 c6             	movsxd rax,esi
  40305a:	88 14 01             	mov    BYTE PTR [rcx+rax*1],dl
  40305d:	83 45 bc 01          	add    DWORD PTR [rbp-0x44],0x1
  403061:	8b 85 50 ff ff ff    	mov    eax,DWORD PTR [rbp-0xb0]
  403067:	8b 95 58 ff ff ff    	mov    edx,DWORD PTR [rbp-0xa8]
  40306d:	29 c2                	sub    edx,eax
  40306f:	89 d0                	mov    eax,edx
  403071:	3b 45 bc             	cmp    eax,DWORD PTR [rbp-0x44]
  403074:	0f 8f 8c fd ff ff    	jg     402e06 <blur_c+0x112>
  40307a:	83 45 c0 01          	add    DWORD PTR [rbp-0x40],0x1
  40307e:	8b 85 50 ff ff ff    	mov    eax,DWORD PTR [rbp-0xb0]
  403084:	8b 95 5c ff ff ff    	mov    edx,DWORD PTR [rbp-0xa4]
  40308a:	29 c2                	sub    edx,eax
  40308c:	89 d0                	mov    eax,edx
  40308e:	3b 45 c0             	cmp    eax,DWORD PTR [rbp-0x40]
  403091:	0f 8f 61 fd ff ff    	jg     402df8 <blur_c+0x104>
  403097:	48 8b 85 78 ff ff ff 	mov    rax,QWORD PTR [rbp-0x88]
  40309e:	48 89 c7             	mov    rdi,rax
  4030a1:	e8 da d9 ff ff       	call   400a80 <free@plt>
  4030a6:	48 81 c4 98 00 00 00 	add    rsp,0x98
  4030ad:	5b                   	pop    rbx
  4030ae:	41 5c                	pop    r12
  4030b0:	41 5d                	pop    r13
  4030b2:	41 5e                	pop    r14
  4030b4:	41 5f                	pop    r15
  4030b6:	5d                   	pop    rbp
  4030b7:	c3                   	ret    
  4030b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4030bf:	00 