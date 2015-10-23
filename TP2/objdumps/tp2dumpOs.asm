0000000000401d9d <infNorm>:
  401d9d:	0f b6 c9             	movzx  ecx,cl
  401da0:	40 0f b6 ff          	movzx  edi,dil
  401da4:	40 0f b6 c6          	movzx  eax,sil
  401da8:	29 cf                	sub    edi,ecx
  401daa:	45 0f b6 c0          	movzx  r8d,r8b
  401dae:	0f b6 d2             	movzx  edx,dl
  401db1:	89 f9                	mov    ecx,edi
  401db3:	44 29 c0             	sub    eax,r8d
  401db6:	45 0f b6 c9          	movzx  r9d,r9b
  401dba:	c1 f9 1f             	sar    ecx,0x1f
  401dbd:	44 29 ca             	sub    edx,r9d
  401dc0:	31 cf                	xor    edi,ecx
  401dc2:	29 cf                	sub    edi,ecx
  401dc4:	89 c1                	mov    ecx,eax
  401dc6:	c1 f9 1f             	sar    ecx,0x1f
  401dc9:	31 c8                	xor    eax,ecx
  401dcb:	29 c8                	sub    eax,ecx
  401dcd:	89 d1                	mov    ecx,edx
  401dcf:	c1 f9 1f             	sar    ecx,0x1f
  401dd2:	31 ca                	xor    edx,ecx
  401dd4:	29 ca                	sub    edx,ecx
  401dd6:	66 39 c7             	cmp    di,ax
  401dd9:	7f 07                	jg     401de2 <infNorm+0x45>
  401ddb:	66 39 d0             	cmp    ax,dx
  401dde:	0f 4c c2             	cmovl  eax,edx
  401de1:	c3                   	ret    
  401de2:	66 39 d7             	cmp    di,dx
  401de5:	89 d0                	mov    eax,edx
  401de7:	0f 4d c7             	cmovge eax,edi
  401dea:	c3                   	ret    

0000000000401deb <diff_c>:
  401deb:	41 57                	push   r15
  401ded:	41 56                	push   r14
  401def:	41 55                	push   r13
  401df1:	49 89 fd             	mov    r13,rdi
  401df4:	41 54                	push   r12
  401df6:	49 89 f4             	mov    r12,rsi
  401df9:	55                   	push   rbp
  401dfa:	48 89 d5             	mov    rbp,rdx
  401dfd:	53                   	push   rbx
  401dfe:	48 83 ec 38          	sub    rsp,0x38
  401e02:	48 63 44 24 70       	movsxd rax,DWORD PTR [rsp+0x70]
  401e07:	89 4c 24 20          	mov    DWORD PTR [rsp+0x20],ecx
  401e0b:	44 89 44 24 24       	mov    DWORD PTR [rsp+0x24],r8d
  401e10:	c7 44 24 04 00 00 00 	mov    DWORD PTR [rsp+0x4],0x0
  401e17:	00 
  401e18:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  401e1d:	49 63 c1             	movsxd rax,r9d
  401e20:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  401e25:	48 63 44 24 78       	movsxd rax,DWORD PTR [rsp+0x78]
  401e2a:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  401e2f:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
  401e33:	39 44 24 04          	cmp    DWORD PTR [rsp+0x4],eax
  401e37:	0f 8d 93 00 00 00    	jge    401ed0 <diff_c+0xe5>
  401e3d:	bb 02 00 00 00       	mov    ebx,0x2
  401e42:	45 31 ff             	xor    r15d,r15d
  401e45:	44 3b 7c 24 20       	cmp    r15d,DWORD PTR [rsp+0x20]
  401e4a:	7d 6c                	jge    401eb8 <diff_c+0xcd>
  401e4c:	44 8d 5b fe          	lea    r11d,[rbx-0x2]
  401e50:	44 8d 53 ff          	lea    r10d,[rbx-0x1]
  401e54:	4c 63 f3             	movsxd r14,ebx
  401e57:	43 0f b6 54 35 00    	movzx  edx,BYTE PTR [r13+r14*1+0x0]
  401e5d:	47 0f b6 0c 34       	movzx  r9d,BYTE PTR [r12+r14*1]
  401e62:	41 ff c7             	inc    r15d
  401e65:	4d 63 d2             	movsxd r10,r10d
  401e68:	4d 63 db             	movsxd r11,r11d
  401e6b:	43 0f b6 0c 1c       	movzx  ecx,BYTE PTR [r12+r11*1]
  401e70:	43 0f b6 74 15 00    	movzx  esi,BYTE PTR [r13+r10*1+0x0]
  401e76:	43 0f b6 7c 1d 00    	movzx  edi,BYTE PTR [r13+r11*1+0x0]
  401e7c:	47 0f b6 04 14       	movzx  r8d,BYTE PTR [r12+r10*1]
  401e81:	4c 89 5c 24 30       	mov    QWORD PTR [rsp+0x30],r11
  401e86:	4c 89 54 24 28       	mov    QWORD PTR [rsp+0x28],r10
  401e8b:	e8 0d ff ff ff       	call   401d9d <infNorm>
  401e90:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
  401e95:	4c 8b 54 24 28       	mov    r10,QWORD PTR [rsp+0x28]
  401e9a:	42 88 44 1d 00       	mov    BYTE PTR [rbp+r11*1+0x0],al
  401e9f:	42 88 44 15 00       	mov    BYTE PTR [rbp+r10*1+0x0],al
  401ea4:	42 88 44 35 00       	mov    BYTE PTR [rbp+r14*1+0x0],al
  401ea9:	8d 43 01             	lea    eax,[rbx+0x1]
  401eac:	83 c3 04             	add    ebx,0x4
  401eaf:	48 98                	cdqe   
  401eb1:	c6 44 05 00 ff       	mov    BYTE PTR [rbp+rax*1+0x0],0xff
  401eb6:	eb 8d                	jmp    401e45 <diff_c+0x5a>
  401eb8:	ff 44 24 04          	inc    DWORD PTR [rsp+0x4]
  401ebc:	4c 03 64 24 08       	add    r12,QWORD PTR [rsp+0x8]
  401ec1:	4c 03 6c 24 10       	add    r13,QWORD PTR [rsp+0x10]
  401ec6:	48 03 6c 24 18       	add    rbp,QWORD PTR [rsp+0x18]
  401ecb:	e9 5f ff ff ff       	jmp    401e2f <diff_c+0x44>
  401ed0:	48 83 c4 38          	add    rsp,0x38
  401ed4:	5b                   	pop    rbx
  401ed5:	5d                   	pop    rbp
  401ed6:	41 5c                	pop    r12
  401ed8:	41 5d                	pop    r13
  401eda:	41 5e                	pop    r14
  401edc:	41 5f                	pop    r15
  401ede:	c3                   	ret    

0000000000401edf <matrizDeConvolucion>:
  401edf:	41 57                	push   r15
  401ee1:	f3 0f 5a d0          	cvtss2sd xmm2,xmm0
  401ee5:	41 56                	push   r14
  401ee7:	44 8d 74 3f 01       	lea    r14d,[rdi+rdi*1+0x1]
  401eec:	41 55                	push   r13
  401eee:	4d 63 fe             	movsxd r15,r14d
  401ef1:	41 89 fd             	mov    r13d,edi
  401ef4:	4c 89 ff             	mov    rdi,r15
  401ef7:	41 54                	push   r12
  401ef9:	45 31 e4             	xor    r12d,r12d
  401efc:	49 0f af ff          	imul   rdi,r15
  401f00:	55                   	push   rbp
  401f01:	53                   	push   rbx
  401f02:	48 c1 e7 02          	shl    rdi,0x2
  401f06:	48 83 ec 28          	sub    rsp,0x28
  401f0a:	f2 0f 10 0d 8e 0c 00 	movsd  xmm1,QWORD PTR [rip+0xc8e]        # 402ba0 <_IO_stdin_used+0x990>
  401f11:	00 
  401f12:	f3 0f 10 1d 8e 0c 00 	movss  xmm3,DWORD PTR [rip+0xc8e]        # 402ba8 <_IO_stdin_used+0x998>
  401f19:	00 
  401f1a:	f2 0f 59 ca          	mulsd  xmm1,xmm2
  401f1e:	f3 0f 59 d8          	mulss  xmm3,xmm0
  401f22:	f2 0f 59 ca          	mulsd  xmm1,xmm2
  401f26:	f3 0f 59 c3          	mulss  xmm0,xmm3
  401f2a:	f2 0f 5a e1          	cvtsd2ss xmm4,xmm1
  401f2e:	f3 0f 11 64 24 08    	movss  DWORD PTR [rsp+0x8],xmm4
  401f34:	f3 0f 11 44 24 0c    	movss  DWORD PTR [rsp+0xc],xmm0
  401f3a:	e8 81 ec ff ff       	call   400bc0 <malloc@plt>
  401f3f:	4a 8d 0c bd 00 00 00 	lea    rcx,[r15*4+0x0]
  401f46:	00 
  401f47:	49 89 c7             	mov    r15,rax
  401f4a:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
  401f4f:	45 39 e6             	cmp    r14d,r12d
  401f52:	7e 5a                	jle    401fae <matrizDeConvolucion+0xcf>
  401f54:	44 89 ed             	mov    ebp,r13d
  401f57:	31 db                	xor    ebx,ebx
  401f59:	44 29 e5             	sub    ebp,r12d
  401f5c:	0f af ed             	imul   ebp,ebp
  401f5f:	41 39 de             	cmp    r14d,ebx
  401f62:	7e 40                	jle    401fa4 <matrizDeConvolucion+0xc5>
  401f64:	44 89 ea             	mov    edx,r13d
  401f67:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  401f6c:	29 da                	sub    edx,ebx
  401f6e:	0f af d2             	imul   edx,edx
  401f71:	01 ea                	add    edx,ebp
  401f73:	f3 0f 2a c2          	cvtsi2ss xmm0,edx
  401f77:	f3 0f 5e 44 24 0c    	divss  xmm0,DWORD PTR [rsp+0xc]
  401f7d:	f3 0f 5a c0          	cvtss2sd xmm0,xmm0
  401f81:	e8 8a eb ff ff       	call   400b10 <exp@plt>
  401f86:	f3 0f 5a 4c 24 08    	cvtss2sd xmm1,DWORD PTR [rsp+0x8]
  401f8c:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
  401f91:	f2 0f 5e c1          	divsd  xmm0,xmm1
  401f95:	f2 0f 5a e8          	cvtsd2ss xmm5,xmm0
  401f99:	f3 41 0f 11 2c 9f    	movss  DWORD PTR [r15+rbx*4],xmm5
  401f9f:	48 ff c3             	inc    rbx
  401fa2:	eb bb                	jmp    401f5f <matrizDeConvolucion+0x80>
  401fa4:	49 ff c4             	inc    r12
  401fa7:	4c 03 7c 24 10       	add    r15,QWORD PTR [rsp+0x10]
  401fac:	eb a1                	jmp    401f4f <matrizDeConvolucion+0x70>
  401fae:	48 83 c4 28          	add    rsp,0x28
  401fb2:	5b                   	pop    rbx
  401fb3:	5d                   	pop    rbp
  401fb4:	41 5c                	pop    r12
  401fb6:	41 5d                	pop    r13
  401fb8:	41 5e                	pop    r14
  401fba:	41 5f                	pop    r15
  401fbc:	c3                   	ret    

0000000000401fbd <blur_c>:
  401fbd:	41 57                	push   r15
  401fbf:	41 56                	push   r14
  401fc1:	41 55                	push   r13
  401fc3:	41 89 d5             	mov    r13d,edx
  401fc6:	41 54                	push   r12
  401fc8:	46 8d 24 ad 00 00 00 	lea    r12d,[r13*4+0x0]
  401fcf:	00 
  401fd0:	55                   	push   rbp
  401fd1:	48 89 f5             	mov    rbp,rsi
  401fd4:	4d 63 e4             	movsxd r12,r12d
  401fd7:	53                   	push   rbx
  401fd8:	89 cb                	mov    ebx,ecx
  401fda:	48 83 ec 48          	sub    rsp,0x48
  401fde:	48 89 7c 24 28       	mov    QWORD PTR [rsp+0x28],rdi
  401fe3:	44 89 c7             	mov    edi,r8d
  401fe6:	44 89 44 24 08       	mov    DWORD PTR [rsp+0x8],r8d
  401feb:	e8 ef fe ff ff       	call   401edf <matrizDeConvolucion>
  401ff0:	44 8b 44 24 08       	mov    r8d,DWORD PTR [rsp+0x8]
  401ff5:	43 8d 54 00 01       	lea    edx,[r8+r8*1+0x1]
  401ffa:	45 29 c5             	sub    r13d,r8d
  401ffd:	44 29 c3             	sub    ebx,r8d
  402000:	44 89 6c 24 34       	mov    DWORD PTR [rsp+0x34],r13d
  402005:	45 89 c5             	mov    r13d,r8d
  402008:	89 5c 24 38          	mov    DWORD PTR [rsp+0x38],ebx
  40200c:	48 63 d2             	movsxd rdx,edx
  40200f:	41 f7 dd             	neg    r13d
  402012:	45 89 c1             	mov    r9d,r8d
  402015:	48 8d 34 95 00 00 00 	lea    rsi,[rdx*4+0x0]
  40201c:	00 
  40201d:	49 63 d0             	movsxd rdx,r8d
  402020:	43 8d 5c 05 00       	lea    ebx,[r13+r8*1+0x0]
  402025:	49 0f af d4          	imul   rdx,r12
  402029:	48 89 74 24 08       	mov    QWORD PTR [rsp+0x8],rsi
  40202e:	42 8d 34 85 00 00 00 	lea    esi,[r8*4+0x0]
  402035:	00 
  402036:	89 5c 24 3c          	mov    DWORD PTR [rsp+0x3c],ebx
  40203a:	89 74 24 14          	mov    DWORD PTR [rsp+0x14],esi
  40203e:	48 8d 7c 15 00       	lea    rdi,[rbp+rdx*1+0x0]
  402043:	31 ed                	xor    ebp,ebp
  402045:	41 6b d0 fc          	imul   edx,r8d,0xfffffffc
  402049:	48 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],rdi
  40204e:	89 54 24 18          	mov    DWORD PTR [rsp+0x18],edx
  402052:	44 3b 4c 24 34       	cmp    r9d,DWORD PTR [rsp+0x34]
  402057:	0f 8d 1c 01 00 00    	jge    402179 <blur_c+0x1bc>
  40205d:	48 8b 5c 24 20       	mov    rbx,QWORD PTR [rsp+0x20]
  402062:	44 89 cf             	mov    edi,r9d
  402065:	8b 54 24 14          	mov    edx,DWORD PTR [rsp+0x14]
  402069:	44 29 c7             	sub    edi,r8d
  40206c:	45 89 c3             	mov    r11d,r8d
  40206f:	89 7c 24 30          	mov    DWORD PTR [rsp+0x30],edi
  402073:	48 01 eb             	add    rbx,rbp
  402076:	44 3b 5c 24 38       	cmp    r11d,DWORD PTR [rsp+0x38]
  40207b:	0f 8d ed 00 00 00    	jge    40216e <blur_c+0x1b1>
  402081:	8b 74 24 18          	mov    esi,DWORD PTR [rsp+0x18]
  402085:	0f 57 c0             	xorps  xmm0,xmm0
  402088:	8d 3c 32             	lea    edi,[rdx+rsi*1]
  40208b:	0f 28 c8             	movaps xmm1,xmm0
  40208e:	0f 28 d0             	movaps xmm2,xmm0
  402091:	31 f6                	xor    esi,esi
  402093:	89 7c 24 1c          	mov    DWORD PTR [rsp+0x1c],edi
  402097:	41 8d 4c 35 00       	lea    ecx,[r13+rsi*1+0x0]
  40209c:	44 39 c1             	cmp    ecx,r8d
  40209f:	0f 8f 97 00 00 00    	jg     40213c <blur_c+0x17f>
  4020a5:	8b 7c 24 30          	mov    edi,DWORD PTR [rsp+0x30]
  4020a9:	8b 4c 24 3c          	mov    ecx,DWORD PTR [rsp+0x3c]
  4020ad:	45 89 ea             	mov    r10d,r13d
  4020b0:	44 8d 34 37          	lea    r14d,[rdi+rsi*1]
  4020b4:	8d 3c 31             	lea    edi,[rcx+rsi*1]
  4020b7:	8b 4c 24 1c          	mov    ecx,DWORD PTR [rsp+0x1c]
  4020bb:	48 63 ff             	movsxd rdi,edi
  4020be:	4d 63 f6             	movsxd r14,r14d
  4020c1:	48 0f af 7c 24 08    	imul   rdi,QWORD PTR [rsp+0x8]
  4020c7:	4d 0f af f4          	imul   r14,r12
  4020cb:	4c 03 74 24 28       	add    r14,QWORD PTR [rsp+0x28]
  4020d0:	48 01 c7             	add    rdi,rax
  4020d3:	45 39 c2             	cmp    r10d,r8d
  4020d6:	7f 5c                	jg     402134 <blur_c+0x177>
  4020d8:	47 8d 3c 02          	lea    r15d,[r10+r8*1]
  4020dc:	41 ff c2             	inc    r10d
  4020df:	4d 63 ff             	movsxd r15,r15d
  4020e2:	f3 42 0f 10 24 bf    	movss  xmm4,DWORD PTR [rdi+r15*4]
  4020e8:	4c 63 f9             	movsxd r15,ecx
  4020eb:	47 0f b6 3c 3e       	movzx  r15d,BYTE PTR [r14+r15*1]
  4020f0:	f3 41 0f 2a df       	cvtsi2ss xmm3,r15d
  4020f5:	44 8d 79 01          	lea    r15d,[rcx+0x1]
  4020f9:	4d 63 ff             	movsxd r15,r15d
  4020fc:	47 0f b6 3c 3e       	movzx  r15d,BYTE PTR [r14+r15*1]
  402101:	f3 0f 59 dc          	mulss  xmm3,xmm4
  402105:	f3 0f 58 d3          	addss  xmm2,xmm3
  402109:	f3 41 0f 2a df       	cvtsi2ss xmm3,r15d
  40210e:	44 8d 79 02          	lea    r15d,[rcx+0x2]
  402112:	83 c1 04             	add    ecx,0x4
  402115:	4d 63 ff             	movsxd r15,r15d
  402118:	47 0f b6 3c 3e       	movzx  r15d,BYTE PTR [r14+r15*1]
  40211d:	f3 0f 59 dc          	mulss  xmm3,xmm4
  402121:	f3 0f 58 cb          	addss  xmm1,xmm3
  402125:	f3 41 0f 2a df       	cvtsi2ss xmm3,r15d
  40212a:	f3 0f 59 dc          	mulss  xmm3,xmm4
  40212e:	f3 0f 58 c3          	addss  xmm0,xmm3
  402132:	eb 9f                	jmp    4020d3 <blur_c+0x116>
  402134:	48 ff c6             	inc    rsi
  402137:	e9 5b ff ff ff       	jmp    402097 <blur_c+0xda>
  40213c:	f3 0f 2c f2          	cvttss2si esi,xmm2
  402140:	48 63 ca             	movsxd rcx,edx
  402143:	41 ff c3             	inc    r11d
  402146:	40 88 34 0b          	mov    BYTE PTR [rbx+rcx*1],sil
  40214a:	f3 0f 2c f1          	cvttss2si esi,xmm1
  40214e:	8d 4a 01             	lea    ecx,[rdx+0x1]
  402151:	48 63 c9             	movsxd rcx,ecx
  402154:	40 88 34 0b          	mov    BYTE PTR [rbx+rcx*1],sil
  402158:	f3 0f 2c f0          	cvttss2si esi,xmm0
  40215c:	8d 4a 02             	lea    ecx,[rdx+0x2]
  40215f:	83 c2 04             	add    edx,0x4
  402162:	48 63 c9             	movsxd rcx,ecx
  402165:	40 88 34 0b          	mov    BYTE PTR [rbx+rcx*1],sil
  402169:	e9 08 ff ff ff       	jmp    402076 <blur_c+0xb9>
  40216e:	41 ff c1             	inc    r9d
  402171:	4c 01 e5             	add    rbp,r12
  402174:	e9 d9 fe ff ff       	jmp    402052 <blur_c+0x95>
  402179:	48 83 c4 48          	add    rsp,0x48
  40217d:	48 89 c7             	mov    rdi,rax
  402180:	5b                   	pop    rbx
  402181:	5d                   	pop    rbp
  402182:	41 5c                	pop    r12
  402184:	41 5d                	pop    r13
  402186:	41 5e                	pop    r14
  402188:	41 5f                	pop    r15
  40218a:	e9 31 e9 ff ff       	jmp    400ac0 <free@plt>
  40218f:	90                   	nop