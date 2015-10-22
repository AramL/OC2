
tp2:     file format elf64-x86-64


Disassembly of section .init:

0000000000400a50 <_init>:
  400a50:	48 83 ec 08          	sub    rsp,0x8
  400a54:	48 8b 05 9d 35 20 00 	mov    rax,QWORD PTR [rip+0x20359d]        # 603ff8 <_DYNAMIC+0x1f0>
  400a5b:	48 85 c0             	test   rax,rax
  400a5e:	74 05                	je     400a65 <_init+0x15>
  400a60:	e8 fb 00 00 00       	call   400b60 <__gmon_start__@plt>
  400a65:	48 83 c4 08          	add    rsp,0x8
  400a69:	c3                   	ret    

Disassembly of section .plt:

0000000000400a70 <free@plt-0x10>:
  400a70:	ff 35 92 35 20 00    	push   QWORD PTR [rip+0x203592]        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400a76:	ff 25 94 35 20 00    	jmp    QWORD PTR [rip+0x203594]        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400a7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400a80 <free@plt>:
  400a80:	ff 25 92 35 20 00    	jmp    QWORD PTR [rip+0x203592]        # 604018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400a86:	68 00 00 00 00       	push   0x0
  400a8b:	e9 e0 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400a90 <putchar@plt>:
  400a90:	ff 25 8a 35 20 00    	jmp    QWORD PTR [rip+0x20358a]        # 604020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400a96:	68 01 00 00 00       	push   0x1
  400a9b:	e9 d0 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400aa0 <abort@plt>:
  400aa0:	ff 25 82 35 20 00    	jmp    QWORD PTR [rip+0x203582]        # 604028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400aa6:	68 02 00 00 00       	push   0x2
  400aab:	e9 c0 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400ab0 <puts@plt>:
  400ab0:	ff 25 7a 35 20 00    	jmp    QWORD PTR [rip+0x20357a]        # 604030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400ab6:	68 03 00 00 00       	push   0x3
  400abb:	e9 b0 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400ac0 <fread@plt>:
  400ac0:	ff 25 72 35 20 00    	jmp    QWORD PTR [rip+0x203572]        # 604038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400ac6:	68 04 00 00 00       	push   0x4
  400acb:	e9 a0 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400ad0 <strtod@plt>:
  400ad0:	ff 25 6a 35 20 00    	jmp    QWORD PTR [rip+0x20356a]        # 604040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400ad6:	68 05 00 00 00       	push   0x5
  400adb:	e9 90 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400ae0 <exp@plt>:
  400ae0:	ff 25 62 35 20 00    	jmp    QWORD PTR [rip+0x203562]        # 604048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400ae6:	68 06 00 00 00       	push   0x6
  400aeb:	e9 80 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400af0 <fclose@plt>:
  400af0:	ff 25 5a 35 20 00    	jmp    QWORD PTR [rip+0x20355a]        # 604050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400af6:	68 07 00 00 00       	push   0x7
  400afb:	e9 70 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400b00 <getopt_long@plt>:
  400b00:	ff 25 52 35 20 00    	jmp    QWORD PTR [rip+0x203552]        # 604058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400b06:	68 08 00 00 00       	push   0x8
  400b0b:	e9 60 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400b10 <printf@plt>:
  400b10:	ff 25 4a 35 20 00    	jmp    QWORD PTR [rip+0x20354a]        # 604060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400b16:	68 09 00 00 00       	push   0x9
  400b1b:	e9 50 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400b20 <snprintf@plt>:
  400b20:	ff 25 42 35 20 00    	jmp    QWORD PTR [rip+0x203542]        # 604068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400b26:	68 0a 00 00 00       	push   0xa
  400b2b:	e9 40 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400b30 <__libc_start_main@plt>:
  400b30:	ff 25 3a 35 20 00    	jmp    QWORD PTR [rip+0x20353a]        # 604070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400b36:	68 0b 00 00 00       	push   0xb
  400b3b:	e9 30 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400b40 <strcmp@plt>:
  400b40:	ff 25 32 35 20 00    	jmp    QWORD PTR [rip+0x203532]        # 604078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400b46:	68 0c 00 00 00       	push   0xc
  400b4b:	e9 20 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400b50 <basename@plt>:
  400b50:	ff 25 2a 35 20 00    	jmp    QWORD PTR [rip+0x20352a]        # 604080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400b56:	68 0d 00 00 00       	push   0xd
  400b5b:	e9 10 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400b60 <__gmon_start__@plt>:
  400b60:	ff 25 22 35 20 00    	jmp    QWORD PTR [rip+0x203522]        # 604088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400b66:	68 0e 00 00 00       	push   0xe
  400b6b:	e9 00 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400b70 <strtol@plt>:
  400b70:	ff 25 1a 35 20 00    	jmp    QWORD PTR [rip+0x20351a]        # 604090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400b76:	68 0f 00 00 00       	push   0xf
  400b7b:	e9 f0 fe ff ff       	jmp    400a70 <_init+0x20>

0000000000400b80 <malloc@plt>:
  400b80:	ff 25 12 35 20 00    	jmp    QWORD PTR [rip+0x203512]        # 604098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400b86:	68 10 00 00 00       	push   0x10
  400b8b:	e9 e0 fe ff ff       	jmp    400a70 <_init+0x20>

0000000000400b90 <access@plt>:
  400b90:	ff 25 0a 35 20 00    	jmp    QWORD PTR [rip+0x20350a]        # 6040a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400b96:	68 11 00 00 00       	push   0x11
  400b9b:	e9 d0 fe ff ff       	jmp    400a70 <_init+0x20>

0000000000400ba0 <fopen@plt>:
  400ba0:	ff 25 02 35 20 00    	jmp    QWORD PTR [rip+0x203502]        # 6040a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400ba6:	68 12 00 00 00       	push   0x12
  400bab:	e9 c0 fe ff ff       	jmp    400a70 <_init+0x20>

0000000000400bb0 <perror@plt>:
  400bb0:	ff 25 fa 34 20 00    	jmp    QWORD PTR [rip+0x2034fa]        # 6040b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400bb6:	68 13 00 00 00       	push   0x13
  400bbb:	e9 b0 fe ff ff       	jmp    400a70 <_init+0x20>

0000000000400bc0 <exit@plt>:
  400bc0:	ff 25 f2 34 20 00    	jmp    QWORD PTR [rip+0x2034f2]        # 6040b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400bc6:	68 14 00 00 00       	push   0x14
  400bcb:	e9 a0 fe ff ff       	jmp    400a70 <_init+0x20>

0000000000400bd0 <fwrite@plt>:
  400bd0:	ff 25 ea 34 20 00    	jmp    QWORD PTR [rip+0x2034ea]        # 6040c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400bd6:	68 15 00 00 00       	push   0x15
  400bdb:	e9 90 fe ff ff       	jmp    400a70 <_init+0x20>

Disassembly of section .text:

0000000000400be0 <_start>:
  400be0:	31 ed                	xor    ebp,ebp
  400be2:	49 89 d1             	mov    r9,rdx
  400be5:	5e                   	pop    rsi
  400be6:	48 89 e2             	mov    rdx,rsp
  400be9:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  400bed:	50                   	push   rax
  400bee:	54                   	push   rsp
  400bef:	49 c7 c0 30 25 40 00 	mov    r8,0x402530
  400bf6:	48 c7 c1 c0 24 40 00 	mov    rcx,0x4024c0
  400bfd:	48 c7 c7 2b 0f 40 00 	mov    rdi,0x400f2b
  400c04:	e8 27 ff ff ff       	call   400b30 <__libc_start_main@plt>
  400c09:	f4                   	hlt    
  400c0a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400c10 <deregister_tm_clones>:
  400c10:	b8 7f 41 60 00       	mov    eax,0x60417f
  400c15:	55                   	push   rbp
  400c16:	48 2d 78 41 60 00    	sub    rax,0x604178
  400c1c:	48 83 f8 0e          	cmp    rax,0xe
  400c20:	48 89 e5             	mov    rbp,rsp
  400c23:	77 02                	ja     400c27 <deregister_tm_clones+0x17>
  400c25:	5d                   	pop    rbp
  400c26:	c3                   	ret    
  400c27:	b8 00 00 00 00       	mov    eax,0x0
  400c2c:	48 85 c0             	test   rax,rax
  400c2f:	74 f4                	je     400c25 <deregister_tm_clones+0x15>
  400c31:	5d                   	pop    rbp
  400c32:	bf 78 41 60 00       	mov    edi,0x604178
  400c37:	ff e0                	jmp    rax
  400c39:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400c40 <register_tm_clones>:
  400c40:	b8 78 41 60 00       	mov    eax,0x604178
  400c45:	55                   	push   rbp
  400c46:	48 2d 78 41 60 00    	sub    rax,0x604178
  400c4c:	48 c1 f8 03          	sar    rax,0x3
  400c50:	48 89 e5             	mov    rbp,rsp
  400c53:	48 89 c2             	mov    rdx,rax
  400c56:	48 c1 ea 3f          	shr    rdx,0x3f
  400c5a:	48 01 d0             	add    rax,rdx
  400c5d:	48 d1 f8             	sar    rax,1
  400c60:	75 02                	jne    400c64 <register_tm_clones+0x24>
  400c62:	5d                   	pop    rbp
  400c63:	c3                   	ret    
  400c64:	ba 00 00 00 00       	mov    edx,0x0
  400c69:	48 85 d2             	test   rdx,rdx
  400c6c:	74 f4                	je     400c62 <register_tm_clones+0x22>
  400c6e:	5d                   	pop    rbp
  400c6f:	48 89 c6             	mov    rsi,rax
  400c72:	bf 78 41 60 00       	mov    edi,0x604178
  400c77:	ff e2                	jmp    rdx
  400c79:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400c80 <__do_global_dtors_aux>:
  400c80:	80 3d 09 35 20 00 00 	cmp    BYTE PTR [rip+0x203509],0x0        # 604190 <completed.6335>
  400c87:	75 11                	jne    400c9a <__do_global_dtors_aux+0x1a>
  400c89:	55                   	push   rbp
  400c8a:	48 89 e5             	mov    rbp,rsp
  400c8d:	e8 7e ff ff ff       	call   400c10 <deregister_tm_clones>
  400c92:	5d                   	pop    rbp
  400c93:	c6 05 f6 34 20 00 01 	mov    BYTE PTR [rip+0x2034f6],0x1        # 604190 <completed.6335>
  400c9a:	f3 c3                	repz ret 
  400c9c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400ca0 <frame_dummy>:
  400ca0:	48 83 3d 58 31 20 00 	cmp    QWORD PTR [rip+0x203158],0x0        # 603e00 <__JCR_END__>
  400ca7:	00 
  400ca8:	74 1e                	je     400cc8 <frame_dummy+0x28>
  400caa:	b8 00 00 00 00       	mov    eax,0x0
  400caf:	48 85 c0             	test   rax,rax
  400cb2:	74 14                	je     400cc8 <frame_dummy+0x28>
  400cb4:	55                   	push   rbp
  400cb5:	bf 00 3e 60 00       	mov    edi,0x603e00
  400cba:	48 89 e5             	mov    rbp,rsp
  400cbd:	ff d0                	call   rax
  400cbf:	5d                   	pop    rbp
  400cc0:	e9 7b ff ff ff       	jmp    400c40 <register_tm_clones>
  400cc5:	0f 1f 00             	nop    DWORD PTR [rax]
  400cc8:	e9 73 ff ff ff       	jmp    400c40 <register_tm_clones>

0000000000400ccd <detectar_filtro>:
  400ccd:	41 54                	push   r12
  400ccf:	55                   	push   rbp
  400cd0:	53                   	push   rbx
  400cd1:	48 8b 35 28 34 20 00 	mov    rsi,QWORD PTR [rip+0x203428]        # 604100 <filtros>
  400cd8:	48 85 f6             	test   rsi,rsi
  400cdb:	74 3b                	je     400d18 <detectar_filtro+0x4b>
  400cdd:	4c 8b 27             	mov    r12,QWORD PTR [rdi]
  400ce0:	bb 28 41 60 00       	mov    ebx,0x604128
  400ce5:	bd 00 00 00 00       	mov    ebp,0x0
  400cea:	4c 89 e7             	mov    rdi,r12
  400ced:	e8 4e fe ff ff       	call   400b40 <strcmp@plt>
  400cf2:	85 c0                	test   eax,eax
  400cf4:	75 12                	jne    400d08 <detectar_filtro+0x3b>
  400cf6:	48 63 ed             	movsxd rbp,ebp
  400cf9:	48 8d 44 ad 00       	lea    rax,[rbp+rbp*4+0x0]
  400cfe:	48 8d 04 c5 00 41 60 	lea    rax,[rax*8+0x604100]
  400d05:	00 
  400d06:	eb 30                	jmp    400d38 <detectar_filtro+0x6b>
  400d08:	83 c5 01             	add    ebp,0x1
  400d0b:	48 83 c3 28          	add    rbx,0x28
  400d0f:	48 8b 73 d8          	mov    rsi,QWORD PTR [rbx-0x28]
  400d13:	48 85 f6             	test   rsi,rsi
  400d16:	75 d2                	jne    400cea <detectar_filtro+0x1d>
  400d18:	48 8b 0d 69 34 20 00 	mov    rcx,QWORD PTR [rip+0x203469]        # 604188 <stderr@@GLIBC_2.2.5>
  400d1f:	ba 13 00 00 00       	mov    edx,0x13
  400d24:	be 01 00 00 00       	mov    esi,0x1
  400d29:	bf 44 25 40 00       	mov    edi,0x402544
  400d2e:	e8 9d fe ff ff       	call   400bd0 <fwrite@plt>
  400d33:	b8 00 00 00 00       	mov    eax,0x0
  400d38:	5b                   	pop    rbx
  400d39:	5d                   	pop    rbp
  400d3a:	41 5c                	pop    r12
  400d3c:	c3                   	ret    

0000000000400d3d <imprimir_tiempos_ejecucion>:
  400d3d:	41 55                	push   r13
  400d3f:	41 54                	push   r12
  400d41:	55                   	push   rbp
  400d42:	53                   	push   rbx
  400d43:	48 83 ec 08          	sub    rsp,0x8
  400d47:	49 89 fd             	mov    r13,rdi
  400d4a:	49 89 f4             	mov    r12,rsi
  400d4d:	89 d5                	mov    ebp,edx
  400d4f:	48 89 f3             	mov    rbx,rsi
  400d52:	48 29 fb             	sub    rbx,rdi
  400d55:	bf 58 25 40 00       	mov    edi,0x402558
  400d5a:	e8 51 fd ff ff       	call   400ab0 <puts@plt>
  400d5f:	4c 89 ee             	mov    rsi,r13
  400d62:	bf e8 25 40 00       	mov    edi,0x4025e8
  400d67:	b8 00 00 00 00       	mov    eax,0x0
  400d6c:	e8 9f fd ff ff       	call   400b10 <printf@plt>
  400d71:	4c 89 e6             	mov    rsi,r12
  400d74:	bf 18 26 40 00       	mov    edi,0x402618
  400d79:	b8 00 00 00 00       	mov    eax,0x0
  400d7e:	e8 8d fd ff ff       	call   400b10 <printf@plt>
  400d83:	89 ee                	mov    esi,ebp
  400d85:	bf 48 26 40 00       	mov    edi,0x402648
  400d8a:	b8 00 00 00 00       	mov    eax,0x0
  400d8f:	e8 7c fd ff ff       	call   400b10 <printf@plt>
  400d94:	48 89 de             	mov    rsi,rbx
  400d97:	bf 78 26 40 00       	mov    edi,0x402678
  400d9c:	b8 00 00 00 00       	mov    eax,0x0
  400da1:	e8 6a fd ff ff       	call   400b10 <printf@plt>
  400da6:	48 85 db             	test   rbx,rbx
  400da9:	78 07                	js     400db2 <imprimir_tiempos_ejecucion+0x75>
  400dab:	f3 48 0f 2a c3       	cvtsi2ss xmm0,rbx
  400db0:	eb 15                	jmp    400dc7 <imprimir_tiempos_ejecucion+0x8a>
  400db2:	48 89 d8             	mov    rax,rbx
  400db5:	48 d1 e8             	shr    rax,1
  400db8:	83 e3 01             	and    ebx,0x1
  400dbb:	48 09 d8             	or     rax,rbx
  400dbe:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
  400dc3:	f3 0f 58 c0          	addss  xmm0,xmm0
  400dc7:	f3 0f 2a cd          	cvtsi2ss xmm1,ebp
  400dcb:	f3 0f 5e c1          	divss  xmm0,xmm1
  400dcf:	0f 14 c0             	unpcklps xmm0,xmm0
  400dd2:	0f 5a c0             	cvtps2pd xmm0,xmm0
  400dd5:	bf a8 26 40 00       	mov    edi,0x4026a8
  400dda:	b8 01 00 00 00       	mov    eax,0x1
  400ddf:	e8 2c fd ff ff       	call   400b10 <printf@plt>
  400de4:	48 83 c4 08          	add    rsp,0x8
  400de8:	5b                   	pop    rbx
  400de9:	5d                   	pop    rbp
  400dea:	41 5c                	pop    r12
  400dec:	41 5d                	pop    r13
  400dee:	c3                   	ret    

0000000000400def <correr_filtro_imagen>:
  400def:	41 57                	push   r15
  400df1:	41 56                	push   r14
  400df3:	41 55                	push   r13
  400df5:	41 54                	push   r12
  400df7:	55                   	push   rbp
  400df8:	53                   	push   rbx
  400df9:	48 83 ec 18          	sub    rsp,0x18
  400dfd:	48 89 fb             	mov    rbx,rdi
  400e00:	49 89 f4             	mov    r12,rsi
  400e03:	4c 8b bf 90 01 00 00 	mov    r15,QWORD PTR [rdi+0x190]
  400e0a:	83 7f 08 00          	cmp    DWORD PTR [rdi+0x8],0x0
  400e0e:	b8 6e 25 40 00       	mov    eax,0x40256e
  400e13:	41 be 70 25 40 00    	mov    r14d,0x402570
  400e19:	4c 0f 44 f0          	cmove  r14,rax
  400e1d:	4c 8b 2f             	mov    r13,QWORD PTR [rdi]
  400e20:	48 8b 7f 78          	mov    rdi,QWORD PTR [rdi+0x78]
  400e24:	e8 27 fd ff ff       	call   400b50 <basename@plt>
  400e29:	49 89 c0             	mov    r8,rax
  400e2c:	48 8d ab 88 00 00 00 	lea    rbp,[rbx+0x88]
  400e33:	48 8b 8b 88 01 00 00 	mov    rcx,QWORD PTR [rbx+0x188]
  400e3a:	4c 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],r15
  400e3f:	4c 89 34 24          	mov    QWORD PTR [rsp],r14
  400e43:	4d 89 e9             	mov    r9,r13
  400e46:	ba 74 25 40 00       	mov    edx,0x402574
  400e4b:	be ff 00 00 00       	mov    esi,0xff
  400e50:	48 89 ef             	mov    rdi,rbp
  400e53:	b8 00 00 00 00       	mov    eax,0x0
  400e58:	e8 c3 fc ff ff       	call   400b20 <snprintf@plt>
  400e5d:	80 bb 9b 01 00 00 00 	cmp    BYTE PTR [rbx+0x19b],0x0
  400e64:	74 15                	je     400e7b <correr_filtro_imagen+0x8c>
  400e66:	48 89 ef             	mov    rdi,rbp
  400e69:	e8 e2 fc ff ff       	call   400b50 <basename@plt>
  400e6e:	48 89 c7             	mov    rdi,rax
  400e71:	e8 3a fc ff ff       	call   400ab0 <puts@plt>
  400e76:	e9 a1 00 00 00       	jmp    400f1c <correr_filtro_imagen+0x12d>
  400e7b:	48 89 df             	mov    rdi,rbx
  400e7e:	e8 27 0c 00 00       	call   401aaa <imagenes_abrir>
  400e83:	48 31 d2             	xor    rdx,rdx
  400e86:	48 31 c0             	xor    rax,rax
  400e89:	0f ae e8             	lfence 
  400e8c:	0f 31                	rdtsc  
  400e8e:	48 c1 e2 20          	shl    rdx,0x20
  400e92:	48 09 d0             	or     rax,rdx
  400e95:	48 89 c1             	mov    rcx,rax
  400e98:	48 31 d2             	xor    rdx,rdx
  400e9b:	48 31 c0             	xor    rax,rax
  400e9e:	0f ae e8             	lfence 
  400ea1:	0f 31                	rdtsc  
  400ea3:	48 c1 e2 20          	shl    rdx,0x20
  400ea7:	48 09 d0             	or     rax,rdx
  400eaa:	48 89 c1             	mov    rcx,rax
  400ead:	48 31 d2             	xor    rdx,rdx
  400eb0:	48 31 c0             	xor    rax,rax
  400eb3:	0f ae e8             	lfence 
  400eb6:	0f 31                	rdtsc  
  400eb8:	48 c1 e2 20          	shl    rdx,0x20
  400ebc:	48 09 d0             	or     rax,rdx
  400ebf:	49 89 c5             	mov    r13,rax
  400ec2:	83 bb 9c 01 00 00 00 	cmp    DWORD PTR [rbx+0x19c],0x0
  400ec9:	7e 16                	jle    400ee1 <correr_filtro_imagen+0xf2>
  400ecb:	bd 00 00 00 00       	mov    ebp,0x0
  400ed0:	48 89 df             	mov    rdi,rbx
  400ed3:	41 ff d4             	call   r12
  400ed6:	83 c5 01             	add    ebp,0x1
  400ed9:	39 ab 9c 01 00 00    	cmp    DWORD PTR [rbx+0x19c],ebp
  400edf:	7f ef                	jg     400ed0 <correr_filtro_imagen+0xe1>
  400ee1:	48 31 d2             	xor    rdx,rdx
  400ee4:	48 31 c0             	xor    rax,rax
  400ee7:	0f ae e8             	lfence 
  400eea:	0f 31                	rdtsc  
  400eec:	48 c1 e2 20          	shl    rdx,0x20
  400ef0:	48 09 d0             	or     rax,rdx
  400ef3:	48 89 c5             	mov    rbp,rax
  400ef6:	48 89 df             	mov    rdi,rbx
  400ef9:	e8 25 0d 00 00       	call   401c23 <imagenes_guardar>
  400efe:	48 89 df             	mov    rdi,rbx
  400f01:	b8 00 00 00 00       	mov    eax,0x0
  400f06:	e8 34 0d 00 00       	call   401c3f <imagenes_liberar>
  400f0b:	8b 93 9c 01 00 00    	mov    edx,DWORD PTR [rbx+0x19c]
  400f11:	48 89 ee             	mov    rsi,rbp
  400f14:	4c 89 ef             	mov    rdi,r13
  400f17:	e8 21 fe ff ff       	call   400d3d <imprimir_tiempos_ejecucion>
  400f1c:	48 83 c4 18          	add    rsp,0x18
  400f20:	5b                   	pop    rbx
  400f21:	5d                   	pop    rbp
  400f22:	41 5c                	pop    r12
  400f24:	41 5d                	pop    r13
  400f26:	41 5e                	pop    r14
  400f28:	41 5f                	pop    r15
  400f2a:	c3                   	ret    

0000000000400f2b <main>:
  400f2b:	41 54                	push   r12
  400f2d:	55                   	push   rbp
  400f2e:	53                   	push   rbx
  400f2f:	48 81 ec a0 01 00 00 	sub    rsp,0x1a0
  400f36:	89 fd                	mov    ebp,edi
  400f38:	49 89 f4             	mov    r12,rsi
  400f3b:	48 89 e2             	mov    rdx,rsp
  400f3e:	e8 90 01 00 00       	call   4010d3 <procesar_opciones>
  400f43:	80 bc 24 9b 01 00 00 	cmp    BYTE PTR [rsp+0x19b],0x0
  400f4a:	00 
  400f4b:	75 53                	jne    400fa0 <main+0x75>
  400f4d:	bf 86 25 40 00       	mov    edi,0x402586
  400f52:	e8 59 fb ff ff       	call   400ab0 <puts@plt>
  400f57:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  400f5b:	bf 94 25 40 00       	mov    edi,0x402594
  400f60:	b8 00 00 00 00       	mov    eax,0x0
  400f65:	e8 a6 fb ff ff       	call   400b10 <printf@plt>
  400f6a:	83 7c 24 08 00       	cmp    DWORD PTR [rsp+0x8],0x0
  400f6f:	b8 6e 25 40 00       	mov    eax,0x40256e
  400f74:	be 70 25 40 00       	mov    esi,0x402570
  400f79:	48 0f 44 f0          	cmove  rsi,rax
  400f7d:	bf af 25 40 00       	mov    edi,0x4025af
  400f82:	b8 00 00 00 00       	mov    eax,0x0
  400f87:	e8 84 fb ff ff       	call   400b10 <printf@plt>
  400f8c:	48 8b 74 24 78       	mov    rsi,QWORD PTR [rsp+0x78]
  400f91:	bf cb 25 40 00       	mov    edi,0x4025cb
  400f96:	b8 00 00 00 00       	mov    eax,0x0
  400f9b:	e8 70 fb ff ff       	call   400b10 <printf@plt>
  400fa0:	48 89 e7             	mov    rdi,rsp
  400fa3:	e8 25 fd ff ff       	call   400ccd <detectar_filtro>
  400fa8:	48 89 c3             	mov    rbx,rax
  400fab:	48 85 c0             	test   rax,rax
  400fae:	74 17                	je     400fc7 <main+0x9c>
  400fb0:	4c 89 e2             	mov    rdx,r12
  400fb3:	89 ee                	mov    esi,ebp
  400fb5:	48 89 e7             	mov    rdi,rsp
  400fb8:	ff 50 08             	call   QWORD PTR [rax+0x8]
  400fbb:	48 8b 73 18          	mov    rsi,QWORD PTR [rbx+0x18]
  400fbf:	48 89 e7             	mov    rdi,rsp
  400fc2:	e8 28 fe ff ff       	call   400def <correr_filtro_imagen>
  400fc7:	b8 00 00 00 00       	mov    eax,0x0
  400fcc:	48 81 c4 a0 01 00 00 	add    rsp,0x1a0
  400fd3:	5b                   	pop    rbx
  400fd4:	5d                   	pop    rbp
  400fd5:	41 5c                	pop    r12
  400fd7:	c3                   	ret    

0000000000400fd8 <imprimir_ayuda>:
  400fd8:	53                   	push   rbx
  400fd9:	48 89 fe             	mov    rsi,rdi
  400fdc:	bf d8 26 40 00       	mov    edi,0x4026d8
  400fe1:	b8 00 00 00 00       	mov    eax,0x0
  400fe6:	e8 25 fb ff ff       	call   400b10 <printf@plt>
  400feb:	bf 20 27 40 00       	mov    edi,0x402720
  400ff0:	e8 bb fa ff ff       	call   400ab0 <puts@plt>
  400ff5:	48 83 3d 03 31 20 00 	cmp    QWORD PTR [rip+0x203103],0x0        # 604100 <filtros>
  400ffc:	00 
  400ffd:	74 28                	je     401027 <imprimir_ayuda+0x4f>
  400fff:	bb 00 00 00 00       	mov    ebx,0x0
  401004:	48 63 c3             	movsxd rax,ebx
  401007:	48 8d 04 80          	lea    rax,[rax+rax*4]
  40100b:	ff 14 c5 10 41 60 00 	call   QWORD PTR [rax*8+0x604110]
  401012:	83 c3 01             	add    ebx,0x1
  401015:	48 63 c3             	movsxd rax,ebx
  401018:	48 8d 04 80          	lea    rax,[rax+rax*4]
  40101c:	48 83 3c c5 00 41 60 	cmp    QWORD PTR [rax*8+0x604100],0x0
  401023:	00 00 
  401025:	75 dd                	jne    401004 <imprimir_ayuda+0x2c>
  401027:	bf 0a 00 00 00       	mov    edi,0xa
  40102c:	e8 5f fa ff ff       	call   400a90 <putchar@plt>
  401031:	bf a9 2a 40 00       	mov    edi,0x402aa9
  401036:	e8 75 fa ff ff       	call   400ab0 <puts@plt>
  40103b:	bf 50 27 40 00       	mov    edi,0x402750
  401040:	e8 6b fa ff ff       	call   400ab0 <puts@plt>
  401045:	bf 0a 00 00 00       	mov    edi,0xa
  40104a:	e8 41 fa ff ff       	call   400a90 <putchar@plt>
  40104f:	bf 78 27 40 00       	mov    edi,0x402778
  401054:	e8 57 fa ff ff       	call   400ab0 <puts@plt>
  401059:	bf a0 27 40 00       	mov    edi,0x4027a0
  40105e:	e8 4d fa ff ff       	call   400ab0 <puts@plt>
  401063:	bf 0a 00 00 00       	mov    edi,0xa
  401068:	e8 23 fa ff ff       	call   400a90 <putchar@plt>
  40106d:	bf 80 28 40 00       	mov    edi,0x402880
  401072:	e8 39 fa ff ff       	call   400ab0 <puts@plt>
  401077:	bf a8 28 40 00       	mov    edi,0x4028a8
  40107c:	e8 2f fa ff ff       	call   400ab0 <puts@plt>
  401081:	bf 0a 00 00 00       	mov    edi,0xa
  401086:	e8 05 fa ff ff       	call   400a90 <putchar@plt>
  40108b:	bf ba 2a 40 00       	mov    edi,0x402aba
  401090:	e8 1b fa ff ff       	call   400ab0 <puts@plt>
  401095:	bf 90 29 40 00       	mov    edi,0x402990
  40109a:	e8 11 fa ff ff       	call   400ab0 <puts@plt>
  40109f:	bf d3 2a 40 00       	mov    edi,0x402ad3
  4010a4:	e8 07 fa ff ff       	call   400ab0 <puts@plt>
  4010a9:	bf e8 29 40 00       	mov    edi,0x4029e8
  4010ae:	e8 fd f9 ff ff       	call   400ab0 <puts@plt>
  4010b3:	bf e4 2a 40 00       	mov    edi,0x402ae4
  4010b8:	e8 f3 f9 ff ff       	call   400ab0 <puts@plt>
  4010bd:	bf 48 2a 40 00       	mov    edi,0x402a48
  4010c2:	e8 e9 f9 ff ff       	call   400ab0 <puts@plt>
  4010c7:	bf 0a 00 00 00       	mov    edi,0xa
  4010cc:	e8 bf f9 ff ff       	call   400a90 <putchar@plt>
  4010d1:	5b                   	pop    rbx
  4010d2:	c3                   	ret    

00000000004010d3 <procesar_opciones>:
  4010d3:	41 55                	push   r13
  4010d5:	41 54                	push   r12
  4010d7:	55                   	push   rbp
  4010d8:	53                   	push   rbx
  4010d9:	48 81 ec 28 01 00 00 	sub    rsp,0x128
  4010e0:	89 fd                	mov    ebp,edi
  4010e2:	49 89 f4             	mov    r12,rsi
  4010e5:	83 ff 01             	cmp    edi,0x1
  4010e8:	75 12                	jne    4010fc <procesar_opciones+0x29>
  4010ea:	48 8b 3e             	mov    rdi,QWORD PTR [rsi]
  4010ed:	e8 e6 fe ff ff       	call   400fd8 <imprimir_ayuda>
  4010f2:	bf 00 00 00 00       	mov    edi,0x0
  4010f7:	e8 c4 fa ff ff       	call   400bc0 <exit@plt>
  4010fc:	48 89 d3             	mov    rbx,rdx
  4010ff:	c6 82 98 01 00 00 00 	mov    BYTE PTR [rdx+0x198],0x0
  401106:	c6 82 99 01 00 00 00 	mov    BYTE PTR [rdx+0x199],0x0
  40110d:	c6 82 9a 01 00 00 00 	mov    BYTE PTR [rdx+0x19a],0x0
  401114:	c6 82 9b 01 00 00 00 	mov    BYTE PTR [rdx+0x19b],0x0
  40111b:	c7 82 9c 01 00 00 01 	mov    DWORD PTR [rdx+0x19c],0x1
  401122:	00 00 00 
  401125:	48 c7 42 78 00 00 00 	mov    QWORD PTR [rdx+0x78],0x0
  40112c:	00 
  40112d:	48 c7 82 80 00 00 00 	mov    QWORD PTR [rdx+0x80],0x0
  401134:	00 00 00 00 
  401138:	48 c7 82 88 01 00 00 	mov    QWORD PTR [rdx+0x188],0x402592
  40113f:	92 25 40 00 
  401143:	48 c7 82 90 01 00 00 	mov    QWORD PTR [rdx+0x190],0x402e5e
  40114a:	5e 2e 40 00 
  40114e:	48 89 e7             	mov    rdi,rsp
  401151:	be 40 2b 40 00       	mov    esi,0x402b40
  401156:	b9 24 00 00 00       	mov    ecx,0x24
  40115b:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
  40115e:	41 b8 00 00 00 00    	mov    r8d,0x0
  401164:	48 89 e1             	mov    rcx,rsp
  401167:	ba f6 2a 40 00       	mov    edx,0x402af6
  40116c:	4c 89 e6             	mov    rsi,r12
  40116f:	89 ef                	mov    edi,ebp
  401171:	e8 8a f9 ff ff       	call   400b00 <getopt_long@plt>
  401176:	83 f8 ff             	cmp    eax,0xffffffff
  401179:	0f 84 a7 00 00 00    	je     401226 <procesar_opciones+0x153>
  40117f:	83 e8 3f             	sub    eax,0x3f
  401182:	83 f8 38             	cmp    eax,0x38
  401185:	0f 87 96 00 00 00    	ja     401221 <procesar_opciones+0x14e>
  40118b:	89 c0                	mov    eax,eax
  40118d:	ff 24 c5 60 2c 40 00 	jmp    QWORD PTR [rax*8+0x402c60]
  401194:	49 8b 3c 24          	mov    rdi,QWORD PTR [r12]
  401198:	e8 3b fe ff ff       	call   400fd8 <imprimir_ayuda>
  40119d:	bf 00 00 00 00       	mov    edi,0x0
  4011a2:	e8 19 fa ff ff       	call   400bc0 <exit@plt>
  4011a7:	4c 8b 2d d2 2f 20 00 	mov    r13,QWORD PTR [rip+0x202fd2]        # 604180 <optarg@@GLIBC_2.2.5>
  4011ae:	eb ae                	jmp    40115e <procesar_opciones+0x8b>
  4011b0:	ba 0a 00 00 00       	mov    edx,0xa
  4011b5:	be 00 00 00 00       	mov    esi,0x0
  4011ba:	48 8b 3d bf 2f 20 00 	mov    rdi,QWORD PTR [rip+0x202fbf]        # 604180 <optarg@@GLIBC_2.2.5>
  4011c1:	e8 aa f9 ff ff       	call   400b70 <strtol@plt>
  4011c6:	89 83 9c 01 00 00    	mov    DWORD PTR [rbx+0x19c],eax
  4011cc:	eb 90                	jmp    40115e <procesar_opciones+0x8b>
  4011ce:	c6 83 99 01 00 00 01 	mov    BYTE PTR [rbx+0x199],0x1
  4011d5:	eb 87                	jmp    40115e <procesar_opciones+0x8b>
  4011d7:	c6 83 9a 01 00 00 01 	mov    BYTE PTR [rbx+0x19a],0x1
  4011de:	e9 7b ff ff ff       	jmp    40115e <procesar_opciones+0x8b>
  4011e3:	c6 83 9b 01 00 00 01 	mov    BYTE PTR [rbx+0x19b],0x1
  4011ea:	e9 6f ff ff ff       	jmp    40115e <procesar_opciones+0x8b>
  4011ef:	48 8b 05 8a 2f 20 00 	mov    rax,QWORD PTR [rip+0x202f8a]        # 604180 <optarg@@GLIBC_2.2.5>
  4011f6:	48 89 83 88 01 00 00 	mov    QWORD PTR [rbx+0x188],rax
  4011fd:	e9 5c ff ff ff       	jmp    40115e <procesar_opciones+0x8b>
  401202:	c6 83 98 01 00 00 01 	mov    BYTE PTR [rbx+0x198],0x1
  401209:	e9 50 ff ff ff       	jmp    40115e <procesar_opciones+0x8b>
  40120e:	49 8b 3c 24          	mov    rdi,QWORD PTR [r12]
  401212:	e8 c1 fd ff ff       	call   400fd8 <imprimir_ayuda>
  401217:	bf 00 00 00 00       	mov    edi,0x0
  40121c:	e8 9f f9 ff ff       	call   400bc0 <exit@plt>
  401221:	e8 7a f8 ff ff       	call   400aa0 <abort@plt>
  401226:	8b 05 4c 2f 20 00    	mov    eax,DWORD PTR [rip+0x202f4c]        # 604178 <__TMC_END__>
  40122c:	8d 50 01             	lea    edx,[rax+0x1]
  40122f:	89 15 43 2f 20 00    	mov    DWORD PTR [rip+0x202f43],edx        # 604178 <__TMC_END__>
  401235:	48 98                	cdqe   
  401237:	49 8b 04 c4          	mov    rax,QWORD PTR [r12+rax*8]
  40123b:	48 89 03             	mov    QWORD PTR [rbx],rax
  40123e:	48 85 c0             	test   rax,rax
  401241:	75 13                	jne    401256 <procesar_opciones+0x183>
  401243:	49 8b 3c 24          	mov    rdi,QWORD PTR [r12]
  401247:	e8 8c fd ff ff       	call   400fd8 <imprimir_ayuda>
  40124c:	bf 00 00 00 00       	mov    edi,0x0
  401251:	e8 6a f9 ff ff       	call   400bc0 <exit@plt>
  401256:	4d 85 ed             	test   r13,r13
  401259:	74 2f                	je     40128a <procesar_opciones+0x1b7>
  40125b:	41 0f b6 45 00       	movzx  eax,BYTE PTR [r13+0x0]
  401260:	ba 63 00 00 00       	mov    edx,0x63
  401265:	29 c2                	sub    edx,eax
  401267:	75 07                	jne    401270 <procesar_opciones+0x19d>
  401269:	41 80 7d 01 00       	cmp    BYTE PTR [r13+0x1],0x0
  40126e:	74 31                	je     4012a1 <procesar_opciones+0x1ce>
  401270:	83 f8 61             	cmp    eax,0x61
  401273:	75 15                	jne    40128a <procesar_opciones+0x1b7>
  401275:	41 80 7d 01 73       	cmp    BYTE PTR [r13+0x1],0x73
  40127a:	75 0e                	jne    40128a <procesar_opciones+0x1b7>
  40127c:	41 80 7d 02 6d       	cmp    BYTE PTR [r13+0x2],0x6d
  401281:	75 07                	jne    40128a <procesar_opciones+0x1b7>
  401283:	41 80 7d 03 00       	cmp    BYTE PTR [r13+0x3],0x0
  401288:	74 13                	je     40129d <procesar_opciones+0x1ca>
  40128a:	49 8b 3c 24          	mov    rdi,QWORD PTR [r12]
  40128e:	e8 45 fd ff ff       	call   400fd8 <imprimir_ayuda>
  401293:	bf 00 00 00 00       	mov    edi,0x0
  401298:	e8 23 f9 ff ff       	call   400bc0 <exit@plt>
  40129d:	85 d2                	test   edx,edx
  40129f:	75 10                	jne    4012b1 <procesar_opciones+0x1de>
  4012a1:	41 80 7d 01 00       	cmp    BYTE PTR [r13+0x1],0x0
  4012a6:	75 09                	jne    4012b1 <procesar_opciones+0x1de>
  4012a8:	c7 43 08 00 00 00 00 	mov    DWORD PTR [rbx+0x8],0x0
  4012af:	eb 07                	jmp    4012b8 <procesar_opciones+0x1e5>
  4012b1:	c7 43 08 01 00 00 00 	mov    DWORD PTR [rbx+0x8],0x1
  4012b8:	8b 05 ba 2e 20 00    	mov    eax,DWORD PTR [rip+0x202eba]        # 604178 <__TMC_END__>
  4012be:	8d 50 01             	lea    edx,[rax+0x1]
  4012c1:	89 15 b1 2e 20 00    	mov    DWORD PTR [rip+0x202eb1],edx        # 604178 <__TMC_END__>
  4012c7:	48 98                	cdqe   
  4012c9:	49 8b 3c c4          	mov    rdi,QWORD PTR [r12+rax*8]
  4012cd:	48 89 7b 78          	mov    QWORD PTR [rbx+0x78],rdi
  4012d1:	48 85 ff             	test   rdi,rdi
  4012d4:	75 13                	jne    4012e9 <procesar_opciones+0x216>
  4012d6:	49 8b 3c 24          	mov    rdi,QWORD PTR [r12]
  4012da:	e8 f9 fc ff ff       	call   400fd8 <imprimir_ayuda>
  4012df:	bf 00 00 00 00       	mov    edi,0x0
  4012e4:	e8 d7 f8 ff ff       	call   400bc0 <exit@plt>
  4012e9:	be 00 00 00 00       	mov    esi,0x0
  4012ee:	e8 9d f8 ff ff       	call   400b90 <access@plt>
  4012f3:	83 f8 ff             	cmp    eax,0xffffffff
  4012f6:	75 1d                	jne    401315 <procesar_opciones+0x242>
  4012f8:	48 8b 73 78          	mov    rsi,QWORD PTR [rbx+0x78]
  4012fc:	bf 80 2a 40 00       	mov    edi,0x402a80
  401301:	b8 00 00 00 00       	mov    eax,0x0
  401306:	e8 05 f8 ff ff       	call   400b10 <printf@plt>
  40130b:	bf 00 00 00 00       	mov    edi,0x0
  401310:	e8 ab f8 ff ff       	call   400bc0 <exit@plt>
  401315:	48 89 df             	mov    rdi,rbx
  401318:	e8 b0 f9 ff ff       	call   400ccd <detectar_filtro>
  40131d:	48 85 c0             	test   rax,rax
  401320:	74 6e                	je     401390 <procesar_opciones+0x2bd>
  401322:	8b 15 50 2e 20 00    	mov    edx,DWORD PTR [rip+0x202e50]        # 604178 <__TMC_END__>
  401328:	39 d5                	cmp    ebp,edx
  40132a:	7e 64                	jle    401390 <procesar_opciones+0x2bd>
  40132c:	83 78 20 01          	cmp    DWORD PTR [rax+0x20],0x1
  401330:	7e 5e                	jle    401390 <procesar_opciones+0x2bd>
  401332:	8d 42 01             	lea    eax,[rdx+0x1]
  401335:	89 05 3d 2e 20 00    	mov    DWORD PTR [rip+0x202e3d],eax        # 604178 <__TMC_END__>
  40133b:	48 63 d2             	movsxd rdx,edx
  40133e:	49 8b 3c d4          	mov    rdi,QWORD PTR [r12+rdx*8]
  401342:	48 89 bb 80 00 00 00 	mov    QWORD PTR [rbx+0x80],rdi
  401349:	48 85 ff             	test   rdi,rdi
  40134c:	75 13                	jne    401361 <procesar_opciones+0x28e>
  40134e:	49 8b 3c 24          	mov    rdi,QWORD PTR [r12]
  401352:	e8 81 fc ff ff       	call   400fd8 <imprimir_ayuda>
  401357:	bf 00 00 00 00       	mov    edi,0x0
  40135c:	e8 5f f8 ff ff       	call   400bc0 <exit@plt>
  401361:	be 00 00 00 00       	mov    esi,0x0
  401366:	e8 25 f8 ff ff       	call   400b90 <access@plt>
  40136b:	83 f8 ff             	cmp    eax,0xffffffff
  40136e:	75 20                	jne    401390 <procesar_opciones+0x2bd>
  401370:	48 8b b3 80 00 00 00 	mov    rsi,QWORD PTR [rbx+0x80]
  401377:	bf 80 2a 40 00       	mov    edi,0x402a80
  40137c:	b8 00 00 00 00       	mov    eax,0x0
  401381:	e8 8a f7 ff ff       	call   400b10 <printf@plt>
  401386:	bf 00 00 00 00       	mov    edi,0x0
  40138b:	e8 30 f8 ff ff       	call   400bc0 <exit@plt>
  401390:	48 81 c4 28 01 00 00 	add    rsp,0x128
  401397:	5b                   	pop    rbx
  401398:	5d                   	pop    rbp
  401399:	41 5c                	pop    r12
  40139b:	41 5d                	pop    r13
  40139d:	c3                   	ret    

000000000040139e <get_BMPIH>:
  40139e:	55                   	push   rbp
  40139f:	53                   	push   rbx
  4013a0:	48 83 ec 08          	sub    rsp,0x8
  4013a4:	89 fb                	mov    ebx,edi
  4013a6:	b8 00 00 00 00       	mov    eax,0x0
  4013ab:	40 f6 c7 03          	test   dil,0x3
  4013af:	75 51                	jne    401402 <get_BMPIH+0x64>
  4013b1:	89 f5                	mov    ebp,esi
  4013b3:	bf 28 00 00 00       	mov    edi,0x28
  4013b8:	e8 c3 f7 ff ff       	call   400b80 <malloc@plt>
  4013bd:	c7 00 28 00 00 00    	mov    DWORD PTR [rax],0x28
  4013c3:	89 58 04             	mov    DWORD PTR [rax+0x4],ebx
  4013c6:	89 68 08             	mov    DWORD PTR [rax+0x8],ebp
  4013c9:	66 c7 40 0c 01 00    	mov    WORD PTR [rax+0xc],0x1
  4013cf:	66 c7 40 0e 18 00    	mov    WORD PTR [rax+0xe],0x18
  4013d5:	c7 40 10 00 00 00 00 	mov    DWORD PTR [rax+0x10],0x0
  4013dc:	8d 54 6d 00          	lea    edx,[rbp+rbp*2+0x0]
  4013e0:	0f af da             	imul   ebx,edx
  4013e3:	89 58 14             	mov    DWORD PTR [rax+0x14],ebx
  4013e6:	c7 40 18 88 0b 00 00 	mov    DWORD PTR [rax+0x18],0xb88
  4013ed:	c7 40 1c 88 0b 00 00 	mov    DWORD PTR [rax+0x1c],0xb88
  4013f4:	c7 40 20 00 00 00 00 	mov    DWORD PTR [rax+0x20],0x0
  4013fb:	c7 40 24 00 00 00 00 	mov    DWORD PTR [rax+0x24],0x0
  401402:	48 83 c4 08          	add    rsp,0x8
  401406:	5b                   	pop    rbx
  401407:	5d                   	pop    rbp
  401408:	c3                   	ret    

0000000000401409 <get_BMPV5H>:
  401409:	55                   	push   rbp
  40140a:	53                   	push   rbx
  40140b:	48 83 ec 08          	sub    rsp,0x8
  40140f:	89 fb                	mov    ebx,edi
  401411:	b8 00 00 00 00       	mov    eax,0x0
  401416:	40 f6 c7 03          	test   dil,0x3
  40141a:	0f 85 e3 00 00 00    	jne    401503 <get_BMPV5H+0xfa>
  401420:	89 f5                	mov    ebp,esi
  401422:	bf 7c 00 00 00       	mov    edi,0x7c
  401427:	e8 54 f7 ff ff       	call   400b80 <malloc@plt>
  40142c:	c7 00 7c 00 00 00    	mov    DWORD PTR [rax],0x7c
  401432:	89 58 04             	mov    DWORD PTR [rax+0x4],ebx
  401435:	89 68 08             	mov    DWORD PTR [rax+0x8],ebp
  401438:	66 c7 40 0c 01 00    	mov    WORD PTR [rax+0xc],0x1
  40143e:	66 c7 40 0e 20 00    	mov    WORD PTR [rax+0xe],0x20
  401444:	c7 40 10 03 00 00 00 	mov    DWORD PTR [rax+0x10],0x3
  40144b:	c1 e5 02             	shl    ebp,0x2
  40144e:	0f af dd             	imul   ebx,ebp
  401451:	89 58 14             	mov    DWORD PTR [rax+0x14],ebx
  401454:	c7 40 18 88 0b 00 00 	mov    DWORD PTR [rax+0x18],0xb88
  40145b:	c7 40 1c 88 0b 00 00 	mov    DWORD PTR [rax+0x1c],0xb88
  401462:	c7 40 20 00 00 00 00 	mov    DWORD PTR [rax+0x20],0x0
  401469:	c7 40 24 00 00 00 00 	mov    DWORD PTR [rax+0x24],0x0
  401470:	c7 40 28 00 00 00 ff 	mov    DWORD PTR [rax+0x28],0xff000000
  401477:	c7 40 2c 00 00 ff 00 	mov    DWORD PTR [rax+0x2c],0xff0000
  40147e:	c7 40 30 00 ff 00 00 	mov    DWORD PTR [rax+0x30],0xff00
  401485:	c7 40 34 ff 00 00 00 	mov    DWORD PTR [rax+0x34],0xff
  40148c:	c7 40 38 42 47 52 73 	mov    DWORD PTR [rax+0x38],0x73524742
  401493:	c7 40 3c 00 00 00 00 	mov    DWORD PTR [rax+0x3c],0x0
  40149a:	c7 40 40 00 00 00 00 	mov    DWORD PTR [rax+0x40],0x0
  4014a1:	c7 40 44 00 00 00 00 	mov    DWORD PTR [rax+0x44],0x0
  4014a8:	c7 40 48 00 00 00 00 	mov    DWORD PTR [rax+0x48],0x0
  4014af:	c7 40 4c 00 00 00 00 	mov    DWORD PTR [rax+0x4c],0x0
  4014b6:	c7 40 50 00 00 00 00 	mov    DWORD PTR [rax+0x50],0x0
  4014bd:	c7 40 54 00 00 00 00 	mov    DWORD PTR [rax+0x54],0x0
  4014c4:	c7 40 58 00 00 00 00 	mov    DWORD PTR [rax+0x58],0x0
  4014cb:	c7 40 5c 00 00 00 00 	mov    DWORD PTR [rax+0x5c],0x0
  4014d2:	c7 40 60 00 00 00 00 	mov    DWORD PTR [rax+0x60],0x0
  4014d9:	c7 40 64 00 00 00 00 	mov    DWORD PTR [rax+0x64],0x0
  4014e0:	c7 40 68 00 00 00 00 	mov    DWORD PTR [rax+0x68],0x0
  4014e7:	c7 40 6c 02 00 00 00 	mov    DWORD PTR [rax+0x6c],0x2
  4014ee:	c7 40 70 00 00 00 00 	mov    DWORD PTR [rax+0x70],0x0
  4014f5:	c7 40 74 00 00 00 00 	mov    DWORD PTR [rax+0x74],0x0
  4014fc:	c7 40 78 00 00 00 00 	mov    DWORD PTR [rax+0x78],0x0
  401503:	48 83 c4 08          	add    rsp,0x8
  401507:	5b                   	pop    rbx
  401508:	5d                   	pop    rbp
  401509:	c3                   	ret    

000000000040150a <bmp_create>:
  40150a:	41 55                	push   r13
  40150c:	41 54                	push   r12
  40150e:	55                   	push   rbp
  40150f:	53                   	push   rbx
  401510:	48 83 ec 08          	sub    rsp,0x8
  401514:	49 89 fd             	mov    r13,rdi
  401517:	41 89 f4             	mov    r12d,esi
  40151a:	8b 5f 14             	mov    ebx,DWORD PTR [rdi+0x14]
  40151d:	89 df                	mov    edi,ebx
  40151f:	e8 5c f6 ff ff       	call   400b80 <malloc@plt>
  401524:	48 89 c5             	mov    rbp,rax
  401527:	45 85 e4             	test   r12d,r12d
  40152a:	74 16                	je     401542 <bmp_create+0x38>
  40152c:	85 db                	test   ebx,ebx
  40152e:	74 12                	je     401542 <bmp_create+0x38>
  401530:	ba 00 00 00 00       	mov    edx,0x0
  401535:	c6 44 15 00 00       	mov    BYTE PTR [rbp+rdx*1+0x0],0x0
  40153a:	48 83 c2 01          	add    rdx,0x1
  40153e:	39 d3                	cmp    ebx,edx
  401540:	77 f3                	ja     401535 <bmp_create+0x2b>
  401542:	bf 0e 00 00 00       	mov    edi,0xe
  401547:	e8 34 f6 ff ff       	call   400b80 <malloc@plt>
  40154c:	49 89 c4             	mov    r12,rax
  40154f:	c6 00 42             	mov    BYTE PTR [rax],0x42
  401552:	c6 40 01 4d          	mov    BYTE PTR [rax+0x1],0x4d
  401556:	41 8b 45 00          	mov    eax,DWORD PTR [r13+0x0]
  40155a:	83 c0 0e             	add    eax,0xe
  40155d:	41 89 44 24 0a       	mov    DWORD PTR [r12+0xa],eax
  401562:	01 c3                	add    ebx,eax
  401564:	41 89 5c 24 02       	mov    DWORD PTR [r12+0x2],ebx
  401569:	66 41 c7 44 24 06 00 	mov    WORD PTR [r12+0x6],0x0
  401570:	00 
  401571:	66 41 c7 44 24 08 00 	mov    WORD PTR [r12+0x8],0x0
  401578:	00 
  401579:	bf 18 00 00 00       	mov    edi,0x18
  40157e:	e8 fd f5 ff ff       	call   400b80 <malloc@plt>
  401583:	4c 89 20             	mov    QWORD PTR [rax],r12
  401586:	4c 89 68 08          	mov    QWORD PTR [rax+0x8],r13
  40158a:	48 89 68 10          	mov    QWORD PTR [rax+0x10],rbp
  40158e:	48 83 c4 08          	add    rsp,0x8
  401592:	5b                   	pop    rbx
  401593:	5d                   	pop    rbp
  401594:	41 5c                	pop    r12
  401596:	41 5d                	pop    r13
  401598:	c3                   	ret    

0000000000401599 <bmp_copy>:
  401599:	41 57                	push   r15
  40159b:	41 56                	push   r14
  40159d:	41 55                	push   r13
  40159f:	41 54                	push   r12
  4015a1:	55                   	push   rbp
  4015a2:	53                   	push   rbx
  4015a3:	48 83 ec 08          	sub    rsp,0x8
  4015a7:	48 89 fd             	mov    rbp,rdi
  4015aa:	41 89 f7             	mov    r15d,esi
  4015ad:	bf 0e 00 00 00       	mov    edi,0xe
  4015b2:	e8 c9 f5 ff ff       	call   400b80 <malloc@plt>
  4015b7:	49 89 c5             	mov    r13,rax
  4015ba:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
  4015be:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  4015c1:	49 89 55 00          	mov    QWORD PTR [r13+0x0],rdx
  4015c5:	8b 50 08             	mov    edx,DWORD PTR [rax+0x8]
  4015c8:	41 89 55 08          	mov    DWORD PTR [r13+0x8],edx
  4015cc:	0f b7 40 0c          	movzx  eax,WORD PTR [rax+0xc]
  4015d0:	66 41 89 45 0c       	mov    WORD PTR [r13+0xc],ax
  4015d5:	41 8b 45 0a          	mov    eax,DWORD PTR [r13+0xa]
  4015d9:	83 e8 0e             	sub    eax,0xe
  4015dc:	83 f8 28             	cmp    eax,0x28
  4015df:	75 3c                	jne    40161d <bmp_copy+0x84>
  4015e1:	bf 28 00 00 00       	mov    edi,0x28
  4015e6:	e8 95 f5 ff ff       	call   400b80 <malloc@plt>
  4015eb:	49 89 c6             	mov    r14,rax
  4015ee:	48 8b 45 08          	mov    rax,QWORD PTR [rbp+0x8]
  4015f2:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  4015f5:	49 89 16             	mov    QWORD PTR [r14],rdx
  4015f8:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  4015fc:	49 89 56 08          	mov    QWORD PTR [r14+0x8],rdx
  401600:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
  401604:	49 89 56 10          	mov    QWORD PTR [r14+0x10],rdx
  401608:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
  40160c:	49 89 56 18          	mov    QWORD PTR [r14+0x18],rdx
  401610:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
  401614:	49 89 46 20          	mov    QWORD PTR [r14+0x20],rax
  401618:	e9 9d 00 00 00       	jmp    4016ba <bmp_copy+0x121>
  40161d:	41 be 00 00 00 00    	mov    r14d,0x0
  401623:	83 f8 7c             	cmp    eax,0x7c
  401626:	0f 85 8e 00 00 00    	jne    4016ba <bmp_copy+0x121>
  40162c:	bf 7c 00 00 00       	mov    edi,0x7c
  401631:	e8 4a f5 ff ff       	call   400b80 <malloc@plt>
  401636:	49 89 c6             	mov    r14,rax
  401639:	48 8b 45 08          	mov    rax,QWORD PTR [rbp+0x8]
  40163d:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  401640:	49 89 16             	mov    QWORD PTR [r14],rdx
  401643:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  401647:	49 89 56 08          	mov    QWORD PTR [r14+0x8],rdx
  40164b:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
  40164f:	49 89 56 10          	mov    QWORD PTR [r14+0x10],rdx
  401653:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
  401657:	49 89 56 18          	mov    QWORD PTR [r14+0x18],rdx
  40165b:	48 8b 50 20          	mov    rdx,QWORD PTR [rax+0x20]
  40165f:	49 89 56 20          	mov    QWORD PTR [r14+0x20],rdx
  401663:	48 8b 50 28          	mov    rdx,QWORD PTR [rax+0x28]
  401667:	49 89 56 28          	mov    QWORD PTR [r14+0x28],rdx
  40166b:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
  40166f:	49 89 56 30          	mov    QWORD PTR [r14+0x30],rdx
  401673:	48 8b 50 38          	mov    rdx,QWORD PTR [rax+0x38]
  401677:	49 89 56 38          	mov    QWORD PTR [r14+0x38],rdx
  40167b:	48 8b 50 40          	mov    rdx,QWORD PTR [rax+0x40]
  40167f:	49 89 56 40          	mov    QWORD PTR [r14+0x40],rdx
  401683:	48 8b 50 48          	mov    rdx,QWORD PTR [rax+0x48]
  401687:	49 89 56 48          	mov    QWORD PTR [r14+0x48],rdx
  40168b:	48 8b 50 50          	mov    rdx,QWORD PTR [rax+0x50]
  40168f:	49 89 56 50          	mov    QWORD PTR [r14+0x50],rdx
  401693:	48 8b 50 58          	mov    rdx,QWORD PTR [rax+0x58]
  401697:	49 89 56 58          	mov    QWORD PTR [r14+0x58],rdx
  40169b:	48 8b 50 60          	mov    rdx,QWORD PTR [rax+0x60]
  40169f:	49 89 56 60          	mov    QWORD PTR [r14+0x60],rdx
  4016a3:	48 8b 50 68          	mov    rdx,QWORD PTR [rax+0x68]
  4016a7:	49 89 56 68          	mov    QWORD PTR [r14+0x68],rdx
  4016ab:	48 8b 50 70          	mov    rdx,QWORD PTR [rax+0x70]
  4016af:	49 89 56 70          	mov    QWORD PTR [r14+0x70],rdx
  4016b3:	8b 40 78             	mov    eax,DWORD PTR [rax+0x78]
  4016b6:	41 89 46 78          	mov    DWORD PTR [r14+0x78],eax
  4016ba:	41 8b 5e 14          	mov    ebx,DWORD PTR [r14+0x14]
  4016be:	89 df                	mov    edi,ebx
  4016c0:	e8 bb f4 ff ff       	call   400b80 <malloc@plt>
  4016c5:	49 89 c4             	mov    r12,rax
  4016c8:	45 85 ff             	test   r15d,r15d
  4016cb:	74 1d                	je     4016ea <bmp_copy+0x151>
  4016cd:	85 db                	test   ebx,ebx
  4016cf:	74 19                	je     4016ea <bmp_copy+0x151>
  4016d1:	ba 00 00 00 00       	mov    edx,0x0
  4016d6:	48 8b 45 10          	mov    rax,QWORD PTR [rbp+0x10]
  4016da:	0f b6 04 10          	movzx  eax,BYTE PTR [rax+rdx*1]
  4016de:	41 88 04 14          	mov    BYTE PTR [r12+rdx*1],al
  4016e2:	48 83 c2 01          	add    rdx,0x1
  4016e6:	39 d3                	cmp    ebx,edx
  4016e8:	77 ec                	ja     4016d6 <bmp_copy+0x13d>
  4016ea:	bf 18 00 00 00       	mov    edi,0x18
  4016ef:	e8 8c f4 ff ff       	call   400b80 <malloc@plt>
  4016f4:	4c 89 28             	mov    QWORD PTR [rax],r13
  4016f7:	4c 89 70 08          	mov    QWORD PTR [rax+0x8],r14
  4016fb:	4c 89 60 10          	mov    QWORD PTR [rax+0x10],r12
  4016ff:	48 83 c4 08          	add    rsp,0x8
  401703:	5b                   	pop    rbx
  401704:	5d                   	pop    rbp
  401705:	41 5c                	pop    r12
  401707:	41 5d                	pop    r13
  401709:	41 5e                	pop    r14
  40170b:	41 5f                	pop    r15
  40170d:	c3                   	ret    

000000000040170e <bmp_read>:
  40170e:	41 56                	push   r14
  401710:	41 55                	push   r13
  401712:	41 54                	push   r12
  401714:	55                   	push   rbp
  401715:	53                   	push   rbx
  401716:	be 61 30 40 00       	mov    esi,0x403061
  40171b:	e8 80 f4 ff ff       	call   400ba0 <fopen@plt>
  401720:	48 89 c3             	mov    rbx,rax
  401723:	48 85 c0             	test   rax,rax
  401726:	75 25                	jne    40174d <bmp_read+0x3f>
  401728:	48 8b 0d 59 2a 20 00 	mov    rcx,QWORD PTR [rip+0x202a59]        # 604188 <stderr@@GLIBC_2.2.5>
  40172f:	ba 1b 00 00 00       	mov    edx,0x1b
  401734:	be 01 00 00 00       	mov    esi,0x1
  401739:	bf 28 2e 40 00       	mov    edi,0x402e28
  40173e:	e8 8d f4 ff ff       	call   400bd0 <fwrite@plt>
  401743:	ba 00 00 00 00       	mov    edx,0x0
  401748:	e9 2a 01 00 00       	jmp    401877 <bmp_read+0x169>
  40174d:	bf 0e 00 00 00       	mov    edi,0xe
  401752:	e8 29 f4 ff ff       	call   400b80 <malloc@plt>
  401757:	49 89 c4             	mov    r12,rax
  40175a:	48 89 d9             	mov    rcx,rbx
  40175d:	ba 01 00 00 00       	mov    edx,0x1
  401762:	be 0e 00 00 00       	mov    esi,0xe
  401767:	48 89 c7             	mov    rdi,rax
  40176a:	e8 51 f3 ff ff       	call   400ac0 <fread@plt>
  40176f:	48 85 c0             	test   rax,rax
  401772:	75 25                	jne    401799 <bmp_read+0x8b>
  401774:	48 8b 0d 0d 2a 20 00 	mov    rcx,QWORD PTR [rip+0x202a0d]        # 604188 <stderr@@GLIBC_2.2.5>
  40177b:	ba 1a 00 00 00       	mov    edx,0x1a
  401780:	be 01 00 00 00       	mov    esi,0x1
  401785:	bf 44 2e 40 00       	mov    edi,0x402e44
  40178a:	e8 41 f4 ff ff       	call   400bd0 <fwrite@plt>
  40178f:	ba 00 00 00 00       	mov    edx,0x0
  401794:	e9 de 00 00 00       	jmp    401877 <bmp_read+0x169>
  401799:	41 8b 44 24 0a       	mov    eax,DWORD PTR [r12+0xa]
  40179e:	8d 68 f2             	lea    ebp,[rax-0xe]
  4017a1:	83 fd 28             	cmp    ebp,0x28
  4017a4:	75 0f                	jne    4017b5 <bmp_read+0xa7>
  4017a6:	bf 28 00 00 00       	mov    edi,0x28
  4017ab:	e8 d0 f3 ff ff       	call   400b80 <malloc@plt>
  4017b0:	49 89 c5             	mov    r13,rax
  4017b3:	eb 26                	jmp    4017db <bmp_read+0xcd>
  4017b5:	83 fd 7c             	cmp    ebp,0x7c
  4017b8:	75 0f                	jne    4017c9 <bmp_read+0xbb>
  4017ba:	bf 7c 00 00 00       	mov    edi,0x7c
  4017bf:	e8 bc f3 ff ff       	call   400b80 <malloc@plt>
  4017c4:	49 89 c5             	mov    r13,rax
  4017c7:	eb 12                	jmp    4017db <bmp_read+0xcd>
  4017c9:	83 fd 38             	cmp    ebp,0x38
  4017cc:	75 12                	jne    4017e0 <bmp_read+0xd2>
  4017ce:	bf 38 00 00 00       	mov    edi,0x38
  4017d3:	e8 a8 f3 ff ff       	call   400b80 <malloc@plt>
  4017d8:	49 89 c5             	mov    r13,rax
  4017db:	4d 85 ed             	test   r13,r13
  4017de:	75 22                	jne    401802 <bmp_read+0xf4>
  4017e0:	48 8b 0d a1 29 20 00 	mov    rcx,QWORD PTR [rip+0x2029a1]        # 604188 <stderr@@GLIBC_2.2.5>
  4017e7:	ba 21 00 00 00       	mov    edx,0x21
  4017ec:	be 01 00 00 00       	mov    esi,0x1
  4017f1:	bf 68 2e 40 00       	mov    edi,0x402e68
  4017f6:	e8 d5 f3 ff ff       	call   400bd0 <fwrite@plt>
  4017fb:	ba 00 00 00 00       	mov    edx,0x0
  401800:	eb 75                	jmp    401877 <bmp_read+0x169>
  401802:	48 63 f5             	movsxd rsi,ebp
  401805:	48 89 d9             	mov    rcx,rbx
  401808:	ba 01 00 00 00       	mov    edx,0x1
  40180d:	4c 89 ef             	mov    rdi,r13
  401810:	e8 ab f2 ff ff       	call   400ac0 <fread@plt>
  401815:	ba 00 00 00 00       	mov    edx,0x0
  40181a:	48 85 c0             	test   rax,rax
  40181d:	74 58                	je     401877 <bmp_read+0x169>
  40181f:	41 8b 44 24 02       	mov    eax,DWORD PTR [r12+0x2]
  401824:	83 e8 0e             	sub    eax,0xe
  401827:	29 e8                	sub    eax,ebp
  401829:	48 63 e8             	movsxd rbp,eax
  40182c:	48 89 ef             	mov    rdi,rbp
  40182f:	e8 4c f3 ff ff       	call   400b80 <malloc@plt>
  401834:	49 89 c6             	mov    r14,rax
  401837:	48 89 d9             	mov    rcx,rbx
  40183a:	ba 01 00 00 00       	mov    edx,0x1
  40183f:	48 89 ee             	mov    rsi,rbp
  401842:	48 89 c7             	mov    rdi,rax
  401845:	e8 76 f2 ff ff       	call   400ac0 <fread@plt>
  40184a:	ba 00 00 00 00       	mov    edx,0x0
  40184f:	48 85 c0             	test   rax,rax
  401852:	74 23                	je     401877 <bmp_read+0x169>
  401854:	bf 18 00 00 00       	mov    edi,0x18
  401859:	e8 22 f3 ff ff       	call   400b80 <malloc@plt>
  40185e:	48 89 c5             	mov    rbp,rax
  401861:	4c 89 20             	mov    QWORD PTR [rax],r12
  401864:	4c 89 68 08          	mov    QWORD PTR [rax+0x8],r13
  401868:	4c 89 70 10          	mov    QWORD PTR [rax+0x10],r14
  40186c:	48 89 df             	mov    rdi,rbx
  40186f:	e8 7c f2 ff ff       	call   400af0 <fclose@plt>
  401874:	48 89 ea             	mov    rdx,rbp
  401877:	48 89 d0             	mov    rax,rdx
  40187a:	5b                   	pop    rbx
  40187b:	5d                   	pop    rbp
  40187c:	41 5c                	pop    r12
  40187e:	41 5d                	pop    r13
  401880:	41 5e                	pop    r14
  401882:	c3                   	ret    

0000000000401883 <bmp_save>:
  401883:	41 55                	push   r13
  401885:	41 54                	push   r12
  401887:	55                   	push   rbp
  401888:	53                   	push   rbx
  401889:	48 83 ec 08          	sub    rsp,0x8
  40188d:	48 89 f5             	mov    rbp,rsi
  401890:	be 5f 2e 40 00       	mov    esi,0x402e5f
  401895:	e8 06 f3 ff ff       	call   400ba0 <fopen@plt>
  40189a:	48 89 c3             	mov    rbx,rax
  40189d:	b8 00 00 00 00       	mov    eax,0x0
  4018a2:	48 85 db             	test   rbx,rbx
  4018a5:	0f 84 84 00 00 00    	je     40192f <bmp_save+0xac>
  4018ab:	48 89 d9             	mov    rcx,rbx
  4018ae:	ba 01 00 00 00       	mov    edx,0x1
  4018b3:	be 0e 00 00 00       	mov    esi,0xe
  4018b8:	48 8b 7d 00          	mov    rdi,QWORD PTR [rbp+0x0]
  4018bc:	e8 0f f3 ff ff       	call   400bd0 <fwrite@plt>
  4018c1:	49 89 c4             	mov    r12,rax
  4018c4:	b8 00 00 00 00       	mov    eax,0x0
  4018c9:	45 85 e4             	test   r12d,r12d
  4018cc:	74 61                	je     40192f <bmp_save+0xac>
  4018ce:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
  4018d2:	8b 70 0a             	mov    esi,DWORD PTR [rax+0xa]
  4018d5:	48 83 ee 0e          	sub    rsi,0xe
  4018d9:	48 8b 7d 08          	mov    rdi,QWORD PTR [rbp+0x8]
  4018dd:	48 89 d9             	mov    rcx,rbx
  4018e0:	ba 01 00 00 00       	mov    edx,0x1
  4018e5:	e8 e6 f2 ff ff       	call   400bd0 <fwrite@plt>
  4018ea:	49 89 c5             	mov    r13,rax
  4018ed:	b8 00 00 00 00       	mov    eax,0x0
  4018f2:	45 85 ed             	test   r13d,r13d
  4018f5:	74 38                	je     40192f <bmp_save+0xac>
  4018f7:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
  4018fb:	8b 70 02             	mov    esi,DWORD PTR [rax+0x2]
  4018fe:	2b 70 0a             	sub    esi,DWORD PTR [rax+0xa]
  401901:	48 8b 7d 10          	mov    rdi,QWORD PTR [rbp+0x10]
  401905:	48 89 d9             	mov    rcx,rbx
  401908:	ba 01 00 00 00       	mov    edx,0x1
  40190d:	e8 be f2 ff ff       	call   400bd0 <fwrite@plt>
  401912:	48 89 c2             	mov    rdx,rax
  401915:	b8 00 00 00 00       	mov    eax,0x0
  40191a:	85 d2                	test   edx,edx
  40191c:	74 11                	je     40192f <bmp_save+0xac>
  40191e:	45 01 ec             	add    r12d,r13d
  401921:	41 01 d4             	add    r12d,edx
  401924:	48 89 df             	mov    rdi,rbx
  401927:	e8 c4 f1 ff ff       	call   400af0 <fclose@plt>
  40192c:	44 89 e0             	mov    eax,r12d
  40192f:	48 83 c4 08          	add    rsp,0x8
  401933:	5b                   	pop    rbx
  401934:	5d                   	pop    rbp
  401935:	41 5c                	pop    r12
  401937:	41 5d                	pop    r13
  401939:	c3                   	ret    

000000000040193a <bmp_delete>:
  40193a:	53                   	push   rbx
  40193b:	48 89 fb             	mov    rbx,rdi
  40193e:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
  401941:	e8 3a f1 ff ff       	call   400a80 <free@plt>
  401946:	48 8b 7b 08          	mov    rdi,QWORD PTR [rbx+0x8]
  40194a:	e8 31 f1 ff ff       	call   400a80 <free@plt>
  40194f:	48 8b 7b 10          	mov    rdi,QWORD PTR [rbx+0x10]
  401953:	e8 28 f1 ff ff       	call   400a80 <free@plt>
  401958:	48 89 df             	mov    rdi,rbx
  40195b:	e8 20 f1 ff ff       	call   400a80 <free@plt>
  401960:	5b                   	pop    rbx
  401961:	c3                   	ret    

0000000000401962 <bmp_width>:
  401962:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  401966:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
  401969:	c3                   	ret    

000000000040196a <bmp_height>:
  40196a:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  40196e:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  401971:	c3                   	ret    

0000000000401972 <bmp_data>:
  401972:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
  401976:	c3                   	ret    

0000000000401977 <bmp_bit_count>:
  401977:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  40197b:	0f b7 40 0e          	movzx  eax,WORD PTR [rax+0xe]
  40197f:	c3                   	ret    

0000000000401980 <bmp_compression>:
  401980:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  401984:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  401987:	c3                   	ret    

0000000000401988 <bmp_set_bit_count>:
  401988:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  40198c:	66 89 70 0e          	mov    WORD PTR [rax+0xe],si
  401990:	c3                   	ret    

0000000000401991 <bmp_bytes_per_row>:
  401991:	48 8b 57 08          	mov    rdx,QWORD PTR [rdi+0x8]
  401995:	0f b7 42 0e          	movzx  eax,WORD PTR [rdx+0xe]
  401999:	0f af 42 04          	imul   eax,DWORD PTR [rdx+0x4]
  40199d:	83 c0 1f             	add    eax,0x1f
  4019a0:	c1 e8 05             	shr    eax,0x5
  4019a3:	c1 e0 02             	shl    eax,0x2
  4019a6:	c3                   	ret    

00000000004019a7 <bmp_convert_24_to_32_bpp>:
  4019a7:	55                   	push   rbp
  4019a8:	53                   	push   rbx
  4019a9:	48 83 ec 08          	sub    rsp,0x8
  4019ad:	48 89 fb             	mov    rbx,rdi
  4019b0:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  4019b4:	8b 78 08             	mov    edi,DWORD PTR [rax+0x8]
  4019b7:	0f af 78 04          	imul   edi,DWORD PTR [rax+0x4]
  4019bb:	c1 e7 05             	shl    edi,0x5
  4019be:	89 ff                	mov    edi,edi
  4019c0:	e8 bb f1 ff ff       	call   400b80 <malloc@plt>
  4019c5:	48 89 c5             	mov    rbp,rax
  4019c8:	48 8b 73 10          	mov    rsi,QWORD PTR [rbx+0x10]
  4019cc:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
  4019d0:	8b 50 04             	mov    edx,DWORD PTR [rax+0x4]
  4019d3:	0f af 50 08          	imul   edx,DWORD PTR [rax+0x8]
  4019d7:	85 d2                	test   edx,edx
  4019d9:	74 4e                	je     401a29 <bmp_convert_24_to_32_bpp+0x82>
  4019db:	ba 00 00 00 00       	mov    edx,0x0
  4019e0:	b9 00 00 00 00       	mov    ecx,0x0
  4019e5:	8d 42 02             	lea    eax,[rdx+0x2]
  4019e8:	0f b6 3c 06          	movzx  edi,BYTE PTR [rsi+rax*1]
  4019ec:	81 c7 00 ff 00 00    	add    edi,0xff00
  4019f2:	c1 e7 08             	shl    edi,0x8
  4019f5:	8d 42 01             	lea    eax,[rdx+0x1]
  4019f8:	0f b6 04 06          	movzx  eax,BYTE PTR [rsi+rax*1]
  4019fc:	01 c7                	add    edi,eax
  4019fe:	c1 e7 08             	shl    edi,0x8
  401a01:	89 c8                	mov    eax,ecx
  401a03:	41 89 d0             	mov    r8d,edx
  401a06:	46 0f b6 04 06       	movzx  r8d,BYTE PTR [rsi+r8*1]
  401a0b:	44 01 c7             	add    edi,r8d
  401a0e:	89 7c 85 00          	mov    DWORD PTR [rbp+rax*4+0x0],edi
  401a12:	83 c1 01             	add    ecx,0x1
  401a15:	4c 8b 43 08          	mov    r8,QWORD PTR [rbx+0x8]
  401a19:	83 c2 03             	add    edx,0x3
  401a1c:	41 8b 40 04          	mov    eax,DWORD PTR [r8+0x4]
  401a20:	41 0f af 40 08       	imul   eax,DWORD PTR [r8+0x8]
  401a25:	39 c8                	cmp    eax,ecx
  401a27:	77 bc                	ja     4019e5 <bmp_convert_24_to_32_bpp+0x3e>
  401a29:	48 89 f7             	mov    rdi,rsi
  401a2c:	e8 4f f0 ff ff       	call   400a80 <free@plt>
  401a31:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
  401a35:	66 c7 40 0e 20 00    	mov    WORD PTR [rax+0xe],0x20
  401a3b:	48 89 6b 10          	mov    QWORD PTR [rbx+0x10],rbp
  401a3f:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
  401a43:	8b 50 08             	mov    edx,DWORD PTR [rax+0x8]
  401a46:	0f af 50 04          	imul   edx,DWORD PTR [rax+0x4]
  401a4a:	c1 e2 02             	shl    edx,0x2
  401a4d:	89 50 14             	mov    DWORD PTR [rax+0x14],edx
  401a50:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
  401a54:	48 8b 13             	mov    rdx,QWORD PTR [rbx]
  401a57:	8b 48 14             	mov    ecx,DWORD PTR [rax+0x14]
  401a5a:	03 08                	add    ecx,DWORD PTR [rax]
  401a5c:	89 c8                	mov    eax,ecx
  401a5e:	83 c0 0e             	add    eax,0xe
  401a61:	89 42 02             	mov    DWORD PTR [rdx+0x2],eax
  401a64:	48 83 c4 08          	add    rsp,0x8
  401a68:	5b                   	pop    rbx
  401a69:	5d                   	pop    rbp
  401a6a:	c3                   	ret    

0000000000401a6b <setear_buffer>:
  401a6b:	55                   	push   rbp
  401a6c:	53                   	push   rbx
  401a6d:	48 83 ec 08          	sub    rsp,0x8
  401a71:	48 89 fb             	mov    rbx,rdi
  401a74:	48 89 f5             	mov    rbp,rsi
  401a77:	48 89 f7             	mov    rdi,rsi
  401a7a:	e8 f3 fe ff ff       	call   401972 <bmp_data>
  401a7f:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
  401a83:	48 89 ef             	mov    rdi,rbp
  401a86:	e8 d7 fe ff ff       	call   401962 <bmp_width>
  401a8b:	89 03                	mov    DWORD PTR [rbx],eax
  401a8d:	48 89 ef             	mov    rdi,rbp
  401a90:	e8 d5 fe ff ff       	call   40196a <bmp_height>
  401a95:	89 43 04             	mov    DWORD PTR [rbx+0x4],eax
  401a98:	48 89 ef             	mov    rdi,rbp
  401a9b:	e8 f1 fe ff ff       	call   401991 <bmp_bytes_per_row>
  401aa0:	89 43 08             	mov    DWORD PTR [rbx+0x8],eax
  401aa3:	48 83 c4 08          	add    rsp,0x8
  401aa7:	5b                   	pop    rbx
  401aa8:	5d                   	pop    rbp
  401aa9:	c3                   	ret    

0000000000401aaa <imagenes_abrir>:
  401aaa:	53                   	push   rbx
  401aab:	48 89 fb             	mov    rbx,rdi
  401aae:	48 8b 7f 78          	mov    rdi,QWORD PTR [rdi+0x78]
  401ab2:	e8 57 fc ff ff       	call   40170e <bmp_read>
  401ab7:	48 89 05 f2 26 20 00 	mov    QWORD PTR [rip+0x2026f2],rax        # 6041b0 <src_img>
  401abe:	48 85 c0             	test   rax,rax
  401ac1:	75 25                	jne    401ae8 <imagenes_abrir+0x3e>
  401ac3:	48 8b 0d be 26 20 00 	mov    rcx,QWORD PTR [rip+0x2026be]        # 604188 <stderr@@GLIBC_2.2.5>
  401aca:	ba 20 00 00 00       	mov    edx,0x20
  401acf:	be 01 00 00 00       	mov    esi,0x1
  401ad4:	bf 90 2e 40 00       	mov    edi,0x402e90
  401ad9:	e8 f2 f0 ff ff       	call   400bd0 <fwrite@plt>
  401ade:	bf 01 00 00 00       	mov    edi,0x1
  401ae3:	e8 d8 f0 ff ff       	call   400bc0 <exit@plt>
  401ae8:	48 89 c7             	mov    rdi,rax
  401aeb:	e8 90 fe ff ff       	call   401980 <bmp_compression>
  401af0:	85 c0                	test   eax,eax
  401af2:	74 25                	je     401b19 <imagenes_abrir+0x6f>
  401af4:	48 8b 0d 8d 26 20 00 	mov    rcx,QWORD PTR [rip+0x20268d]        # 604188 <stderr@@GLIBC_2.2.5>
  401afb:	ba 28 00 00 00       	mov    edx,0x28
  401b00:	be 01 00 00 00       	mov    esi,0x1
  401b05:	bf b8 2e 40 00       	mov    edi,0x402eb8
  401b0a:	e8 c1 f0 ff ff       	call   400bd0 <fwrite@plt>
  401b0f:	bf 01 00 00 00       	mov    edi,0x1
  401b14:	e8 a7 f0 ff ff       	call   400bc0 <exit@plt>
  401b19:	48 8b 3d 90 26 20 00 	mov    rdi,QWORD PTR [rip+0x202690]        # 6041b0 <src_img>
  401b20:	e8 52 fe ff ff       	call   401977 <bmp_bit_count>
  401b25:	66 83 f8 18          	cmp    ax,0x18
  401b29:	75 0c                	jne    401b37 <imagenes_abrir+0x8d>
  401b2b:	48 8b 3d 7e 26 20 00 	mov    rdi,QWORD PTR [rip+0x20267e]        # 6041b0 <src_img>
  401b32:	e8 70 fe ff ff       	call   4019a7 <bmp_convert_24_to_32_bpp>
  401b37:	be 01 00 00 00       	mov    esi,0x1
  401b3c:	48 8b 3d 6d 26 20 00 	mov    rdi,QWORD PTR [rip+0x20266d]        # 6041b0 <src_img>
  401b43:	e8 51 fa ff ff       	call   401599 <bmp_copy>
  401b48:	48 89 05 59 26 20 00 	mov    QWORD PTR [rip+0x202659],rax        # 6041a8 <dst_img>
  401b4f:	48 8b bb 80 00 00 00 	mov    rdi,QWORD PTR [rbx+0x80]
  401b56:	48 85 ff             	test   rdi,rdi
  401b59:	0f 84 97 00 00 00    	je     401bf6 <imagenes_abrir+0x14c>
  401b5f:	e8 aa fb ff ff       	call   40170e <bmp_read>
  401b64:	48 89 05 35 26 20 00 	mov    QWORD PTR [rip+0x202635],rax        # 6041a0 <src_img2>
  401b6b:	48 85 c0             	test   rax,rax
  401b6e:	75 25                	jne    401b95 <imagenes_abrir+0xeb>
  401b70:	48 8b 0d 11 26 20 00 	mov    rcx,QWORD PTR [rip+0x202611]        # 604188 <stderr@@GLIBC_2.2.5>
  401b77:	ba 22 00 00 00       	mov    edx,0x22
  401b7c:	be 01 00 00 00       	mov    esi,0x1
  401b81:	bf e8 2e 40 00       	mov    edi,0x402ee8
  401b86:	e8 45 f0 ff ff       	call   400bd0 <fwrite@plt>
  401b8b:	bf 01 00 00 00       	mov    edi,0x1
  401b90:	e8 2b f0 ff ff       	call   400bc0 <exit@plt>
  401b95:	48 89 c7             	mov    rdi,rax
  401b98:	e8 e3 fd ff ff       	call   401980 <bmp_compression>
  401b9d:	85 c0                	test   eax,eax
  401b9f:	74 25                	je     401bc6 <imagenes_abrir+0x11c>
  401ba1:	48 8b 0d e0 25 20 00 	mov    rcx,QWORD PTR [rip+0x2025e0]        # 604188 <stderr@@GLIBC_2.2.5>
  401ba8:	ba 2a 00 00 00       	mov    edx,0x2a
  401bad:	be 01 00 00 00       	mov    esi,0x1
  401bb2:	bf 10 2f 40 00       	mov    edi,0x402f10
  401bb7:	e8 14 f0 ff ff       	call   400bd0 <fwrite@plt>
  401bbc:	bf 01 00 00 00       	mov    edi,0x1
  401bc1:	e8 fa ef ff ff       	call   400bc0 <exit@plt>
  401bc6:	48 8b 3d d3 25 20 00 	mov    rdi,QWORD PTR [rip+0x2025d3]        # 6041a0 <src_img2>
  401bcd:	e8 a5 fd ff ff       	call   401977 <bmp_bit_count>
  401bd2:	66 83 f8 18          	cmp    ax,0x18
  401bd6:	75 0c                	jne    401be4 <imagenes_abrir+0x13a>
  401bd8:	48 8b 3d c1 25 20 00 	mov    rdi,QWORD PTR [rip+0x2025c1]        # 6041a0 <src_img2>
  401bdf:	e8 c3 fd ff ff       	call   4019a7 <bmp_convert_24_to_32_bpp>
  401be4:	48 8d 7b 30          	lea    rdi,[rbx+0x30]
  401be8:	48 8b 35 b1 25 20 00 	mov    rsi,QWORD PTR [rip+0x2025b1]        # 6041a0 <src_img2>
  401bef:	e8 77 fe ff ff       	call   401a6b <setear_buffer>
  401bf4:	eb 0b                	jmp    401c01 <imagenes_abrir+0x157>
  401bf6:	48 c7 05 9f 25 20 00 	mov    QWORD PTR [rip+0x20259f],0x0        # 6041a0 <src_img2>
  401bfd:	00 00 00 00 
  401c01:	48 8d 7b 10          	lea    rdi,[rbx+0x10]
  401c05:	48 8b 35 a4 25 20 00 	mov    rsi,QWORD PTR [rip+0x2025a4]        # 6041b0 <src_img>
  401c0c:	e8 5a fe ff ff       	call   401a6b <setear_buffer>
  401c11:	48 8d 7b 50          	lea    rdi,[rbx+0x50]
  401c15:	48 8b 35 8c 25 20 00 	mov    rsi,QWORD PTR [rip+0x20258c]        # 6041a8 <dst_img>
  401c1c:	e8 4a fe ff ff       	call   401a6b <setear_buffer>
  401c21:	5b                   	pop    rbx
  401c22:	c3                   	ret    

0000000000401c23 <imagenes_guardar>:
  401c23:	48 83 ec 08          	sub    rsp,0x8
  401c27:	48 81 c7 88 00 00 00 	add    rdi,0x88
  401c2e:	48 8b 35 73 25 20 00 	mov    rsi,QWORD PTR [rip+0x202573]        # 6041a8 <dst_img>
  401c35:	e8 49 fc ff ff       	call   401883 <bmp_save>
  401c3a:	48 83 c4 08          	add    rsp,0x8
  401c3e:	c3                   	ret    

0000000000401c3f <imagenes_liberar>:
  401c3f:	48 83 ec 08          	sub    rsp,0x8
  401c43:	48 8b 3d 66 25 20 00 	mov    rdi,QWORD PTR [rip+0x202566]        # 6041b0 <src_img>
  401c4a:	e8 eb fc ff ff       	call   40193a <bmp_delete>
  401c4f:	48 8b 3d 4a 25 20 00 	mov    rdi,QWORD PTR [rip+0x20254a]        # 6041a0 <src_img2>
  401c56:	48 85 ff             	test   rdi,rdi
  401c59:	74 05                	je     401c60 <imagenes_liberar+0x21>
  401c5b:	e8 da fc ff ff       	call   40193a <bmp_delete>
  401c60:	48 8b 3d 41 25 20 00 	mov    rdi,QWORD PTR [rip+0x202541]        # 6041a8 <dst_img>
  401c67:	e8 ce fc ff ff       	call   40193a <bmp_delete>
  401c6c:	48 83 c4 08          	add    rsp,0x8
  401c70:	c3                   	ret    

0000000000401c71 <ayuda_diff>:
  401c71:	48 83 ec 08          	sub    rsp,0x8
  401c75:	bf 3b 2f 40 00       	mov    edi,0x402f3b
  401c7a:	e8 31 ee ff ff       	call   400ab0 <puts@plt>
  401c7f:	bf 50 2f 40 00       	mov    edi,0x402f50
  401c84:	e8 27 ee ff ff       	call   400ab0 <puts@plt>
  401c89:	bf 90 2f 40 00       	mov    edi,0x402f90
  401c8e:	e8 1d ee ff ff       	call   400ab0 <puts@plt>
  401c93:	48 83 c4 08          	add    rsp,0x8
  401c97:	c3                   	ret    

0000000000401c98 <leer_params_diff>:
  401c98:	48 83 ec 08          	sub    rsp,0x8
  401c9c:	48 8b b7 80 00 00 00 	mov    rsi,QWORD PTR [rdi+0x80]
  401ca3:	48 85 f6             	test   rsi,rsi
  401ca6:	75 1e                	jne    401cc6 <leer_params_diff+0x2e>
  401ca8:	bf e8 2f 40 00       	mov    edi,0x402fe8
  401cad:	e8 fe ed ff ff       	call   400ab0 <puts@plt>
  401cb2:	b8 00 00 00 00       	mov    eax,0x0
  401cb7:	e8 b5 ff ff ff       	call   401c71 <ayuda_diff>
  401cbc:	bf 01 00 00 00       	mov    edi,0x1
  401cc1:	e8 fa ee ff ff       	call   400bc0 <exit@plt>
  401cc6:	bf cb 25 40 00       	mov    edi,0x4025cb
  401ccb:	b8 00 00 00 00       	mov    eax,0x0
  401cd0:	e8 3b ee ff ff       	call   400b10 <printf@plt>
  401cd5:	48 83 c4 08          	add    rsp,0x8
  401cd9:	c3                   	ret    

0000000000401cda <aplicar_diff>:
  401cda:	41 57                	push   r15
  401cdc:	41 56                	push   r14
  401cde:	41 55                	push   r13
  401ce0:	41 54                	push   r12
  401ce2:	55                   	push   rbp
  401ce3:	53                   	push   rbx
  401ce4:	48 83 ec 68          	sub    rsp,0x68
  401ce8:	48 89 fb             	mov    rbx,rdi
  401ceb:	83 7f 08 00          	cmp    DWORD PTR [rdi+0x8],0x0
  401cef:	b8 8b 20 40 00       	mov    eax,0x40208b
  401cf4:	41 bd 40 1e 40 00    	mov    r13d,0x401e40
  401cfa:	4c 0f 44 e8          	cmove  r13,rax
  401cfe:	48 8b 47 20          	mov    rax,QWORD PTR [rdi+0x20]
  401d02:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  401d07:	8b 6f 10             	mov    ebp,DWORD PTR [rdi+0x10]
  401d0a:	44 8b 67 14          	mov    r12d,DWORD PTR [rdi+0x14]
  401d0e:	44 8b 77 18          	mov    r14d,DWORD PTR [rdi+0x18]
  401d12:	48 8b 47 40          	mov    rax,QWORD PTR [rdi+0x40]
  401d16:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  401d1b:	8b 57 30             	mov    edx,DWORD PTR [rdi+0x30]
  401d1e:	8b 47 34             	mov    eax,DWORD PTR [rdi+0x34]
  401d21:	44 8b 7f 38          	mov    r15d,DWORD PTR [rdi+0x38]
  401d25:	89 6c 24 40          	mov    DWORD PTR [rsp+0x40],ebp
  401d29:	44 89 64 24 44       	mov    DWORD PTR [rsp+0x44],r12d
  401d2e:	89 54 24 20          	mov    DWORD PTR [rsp+0x20],edx
  401d32:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  401d36:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  401d3b:	48 39 44 24 40       	cmp    QWORD PTR [rsp+0x40],rax
  401d40:	74 0a                	je     401d4c <aplicar_diff+0x72>
  401d42:	bf 20 30 40 00       	mov    edi,0x403020
  401d47:	e8 64 ee ff ff       	call   400bb0 <perror@plt>
  401d4c:	48 8b 53 60          	mov    rdx,QWORD PTR [rbx+0x60]
  401d50:	8b 43 58             	mov    eax,DWORD PTR [rbx+0x58]
  401d53:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
  401d57:	44 89 3c 24          	mov    DWORD PTR [rsp],r15d
  401d5b:	45 89 f1             	mov    r9d,r14d
  401d5e:	45 89 e0             	mov    r8d,r12d
  401d61:	89 e9                	mov    ecx,ebp
  401d63:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
  401d68:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
  401d6d:	41 ff d5             	call   r13
  401d70:	48 83 c4 68          	add    rsp,0x68
  401d74:	5b                   	pop    rbx
  401d75:	5d                   	pop    rbp
  401d76:	41 5c                	pop    r12
  401d78:	41 5d                	pop    r13
  401d7a:	41 5e                	pop    r14
  401d7c:	41 5f                	pop    r15
  401d7e:	c3                   	ret    

0000000000401d7f <leer_params_blur>:
  401d7f:	55                   	push   rbp
  401d80:	53                   	push   rbx
  401d81:	48 83 ec 08          	sub    rsp,0x8
  401d85:	48 89 d5             	mov    rbp,rdx
  401d88:	48 c7 47 70 b8 41 60 	mov    QWORD PTR [rdi+0x70],0x6041b8
  401d8f:	00 
  401d90:	48 63 de             	movsxd rbx,esi
  401d93:	48 c1 e3 03          	shl    rbx,0x3
  401d97:	48 8b 7c 1a f0       	mov    rdi,QWORD PTR [rdx+rbx*1-0x10]
  401d9c:	be 00 00 00 00       	mov    esi,0x0
  401da1:	e8 2a ed ff ff       	call   400ad0 <strtod@plt>
  401da6:	66 0f 14 c0          	unpcklpd xmm0,xmm0
  401daa:	66 0f 5a c8          	cvtpd2ps xmm1,xmm0
  401dae:	f3 0f 11 0d 02 24 20 	movss  DWORD PTR [rip+0x202402],xmm1        # 6041b8 <extra>
  401db5:	00 
  401db6:	48 8b 7c 1d f8       	mov    rdi,QWORD PTR [rbp+rbx*1-0x8]
  401dbb:	ba 0a 00 00 00       	mov    edx,0xa
  401dc0:	be 00 00 00 00       	mov    esi,0x0
  401dc5:	e8 a6 ed ff ff       	call   400b70 <strtol@plt>
  401dca:	89 05 ec 23 20 00    	mov    DWORD PTR [rip+0x2023ec],eax        # 6041bc <extra+0x4>
  401dd0:	48 83 c4 08          	add    rsp,0x8
  401dd4:	5b                   	pop    rbx
  401dd5:	5d                   	pop    rbp
  401dd6:	c3                   	ret    

0000000000401dd7 <aplicar_blur>:
  401dd7:	48 83 ec 08          	sub    rsp,0x8
  401ddb:	83 7f 08 00          	cmp    DWORD PTR [rdi+0x8],0x0
  401ddf:	b8 cb 22 40 00       	mov    eax,0x4022cb
  401de4:	41 b9 d0 1e 40 00    	mov    r9d,0x401ed0
  401dea:	4c 0f 44 c8          	cmove  r9,rax
  401dee:	48 8b 47 70          	mov    rax,QWORD PTR [rdi+0x70]
  401df2:	8b 4f 14             	mov    ecx,DWORD PTR [rdi+0x14]
  401df5:	8b 57 10             	mov    edx,DWORD PTR [rdi+0x10]
  401df8:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  401dfc:	48 8b 7f 20          	mov    rdi,QWORD PTR [rdi+0x20]
  401e00:	44 8b 40 04          	mov    r8d,DWORD PTR [rax+0x4]
  401e04:	f3 0f 10 00          	movss  xmm0,DWORD PTR [rax]
  401e08:	41 ff d1             	call   r9
  401e0b:	48 83 c4 08          	add    rsp,0x8
  401e0f:	c3                   	ret    

0000000000401e10 <ayuda_blur>:
  401e10:	48 83 ec 08          	sub    rsp,0x8
  401e14:	bf 55 30 40 00       	mov    edi,0x403055
  401e19:	e8 92 ec ff ff       	call   400ab0 <puts@plt>
  401e1e:	bf 68 30 40 00       	mov    edi,0x403068
  401e23:	e8 88 ec ff ff       	call   400ab0 <puts@plt>
  401e28:	bf c8 30 40 00       	mov    edi,0x4030c8
  401e2d:	e8 7e ec ff ff       	call   400ab0 <puts@plt>
  401e32:	48 83 c4 08          	add    rsp,0x8
  401e36:	c3                   	ret    
  401e37:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  401e3e:	00 00 

0000000000401e40 <diff_asm>:
  401e40:	55                   	push   rbp
  401e41:	48 89 e5             	mov    rbp,rsp
  401e44:	41 57                	push   r15
  401e46:	41 54                	push   r12
  401e48:	41 55                	push   r13
  401e4a:	49 89 d4             	mov    r12,rdx
  401e4d:	44 89 c0             	mov    eax,r8d
  401e50:	89 c9                	mov    ecx,ecx
  401e52:	48 f7 e1             	mul    rcx
  401e55:	4d 31 ff             	xor    r15,r15

0000000000401e58 <diff_asm.ciclo>:
  401e58:	49 39 c7             	cmp    r15,rax
  401e5b:	74 5d                	je     401eba <diff_asm.fin>
  401e5d:	f3 42 0f 6f 1c bf    	movdqu xmm3,XMMWORD PTR [rdi+r15*4]
  401e63:	f3 46 0f 6f 3c be    	movdqu xmm15,XMMWORD PTR [rsi+r15*4]
  401e69:	f3 45 0f 6f f7       	movdqu xmm14,xmm15
  401e6e:	66 44 0f da fb       	pminub xmm15,xmm3
  401e73:	66 41 0f de de       	pmaxub xmm3,xmm14
  401e78:	66 41 0f f8 df       	psubb  xmm3,xmm15
  401e7d:	f3 0f 6f e3          	movdqu xmm4,xmm3
  401e81:	f3 0f 6f eb          	movdqu xmm5,xmm3
  401e85:	66 0f 73 fc 01       	pslldq xmm4,0x1
  401e8a:	66 0f 73 fd 02       	pslldq xmm5,0x2
  401e8f:	f3 0f 6f f5          	movdqu xmm6,xmm5
  401e93:	66 0f de f4          	pmaxub xmm6,xmm4
  401e97:	66 0f de f3          	pmaxub xmm6,xmm3
  401e9b:	66 0f 38 00 34 25 30 	pshufb xmm6,XMMWORD PTR ds:0x403130
  401ea2:	31 40 00 
  401ea5:	66 0f ec 34 25 40 31 	paddsb xmm6,XMMWORD PTR ds:0x403140
  401eac:	40 00 
  401eae:	f3 43 0f 7f 34 bc    	movdqu XMMWORD PTR [r12+r15*4],xmm6
  401eb4:	41 83 c7 04          	add    r15d,0x4
  401eb8:	eb 9e                	jmp    401e58 <diff_asm.ciclo>

0000000000401eba <diff_asm.fin>:
  401eba:	41 5d                	pop    r13
  401ebc:	41 5c                	pop    r12
  401ebe:	41 5f                	pop    r15
  401ec0:	5d                   	pop    rbp
  401ec1:	c3                   	ret    
  401ec2:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401ec9:	00 00 00 
  401ecc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401ed0 <_blur_asm>:
  401ed0:	55                   	push   rbp
  401ed1:	41 54                	push   r12
  401ed3:	41 55                	push   r13
  401ed5:	41 56                	push   r14
  401ed7:	41 57                	push   r15
  401ed9:	53                   	push   rbx
  401eda:	48 83 ec 08          	sub    rsp,0x8
  401ede:	49 89 fc             	mov    r12,rdi
  401ee1:	49 89 f5             	mov    r13,rsi
  401ee4:	41 89 d6             	mov    r14d,edx
  401ee7:	41 89 cf             	mov    r15d,ecx
  401eea:	44 89 c3             	mov    ebx,r8d
  401eed:	44 89 c7             	mov    edi,r8d
  401ef0:	e8 c3 02 00 00       	call   4021b8 <matrizDeConvolucion>
  401ef5:	49 89 c2             	mov    r10,rax
  401ef8:	49 89 db             	mov    r11,rbx
  401efb:	49 d1 e3             	shl    r11,1
  401efe:	4d 39 de             	cmp    r14,r11
  401f01:	0f 8c 1c 01 00 00    	jl     402023 <blur_asm.end>
  401f07:	4d 39 df             	cmp    r15,r11
  401f0a:	0f 8c 13 01 00 00    	jl     402023 <blur_asm.end>
  401f10:	49 ff c3             	inc    r11
  401f13:	4c 89 d8             	mov    rax,r11
  401f16:	49 f7 e3             	mul    r11
  401f19:	48 89 c5             	mov    rbp,rax
  401f1c:	48 89 d8             	mov    rax,rbx
  401f1f:	41 f7 e7             	mul    r15d
  401f22:	48 01 d8             	add    rax,rbx
  401f25:	48 89 c3             	mov    rbx,rax
  401f28:	4d 89 f1             	mov    r9,r14
  401f2b:	4d 89 f8             	mov    r8,r15
  401f2e:	49 ff cb             	dec    r11
  401f31:	4c 89 c8             	mov    rax,r9
  401f34:	4c 29 d8             	sub    rax,r11
  401f37:	49 f7 e0             	mul    r8
  401f3a:	4c 29 d8             	sub    rax,r11
  401f3d:	48 c1 e0 02          	shl    rax,0x2
  401f41:	48 31 ff             	xor    rdi,rdi
  401f44:	48 31 f6             	xor    rsi,rsi
  401f47:	48 31 d2             	xor    rdx,rdx
  401f4a:	48 31 c9             	xor    rcx,rcx
  401f4d:	66 0f ef ff          	pxor   xmm7,xmm7
  401f51:	4d 89 fe             	mov    r14,r15
  401f54:	4d 29 df             	sub    r15,r11
  401f57:	49 c1 e3 02          	shl    r11,0x2
  401f5b:	49 c1 e0 02          	shl    r8,0x2
  401f5f:	48 c1 e3 02          	shl    rbx,0x2
  401f63:	49 c1 e7 02          	shl    r15,0x2
  401f67:	49 c1 e6 02          	shl    r14,0x2

0000000000401f6b <blur_asm.ciclo_matriz>:
  401f6b:	48 39 c7             	cmp    rdi,rax
  401f6e:	0f 8f af 00 00 00    	jg     402023 <blur_asm.end>

0000000000401f74 <blur_asm.ciclo_kernel>:
  401f74:	48 39 e9             	cmp    rcx,rbp
  401f77:	74 60                	je     401fd9 <blur_asm.insert>
  401f79:	49 89 f1             	mov    r9,rsi
  401f7c:	49 01 f9             	add    r9,rdi
  401f7f:	66 43 0f 6e 04 0c    	movd   xmm0,DWORD PTR [r12+r9*1]
  401f85:	66 45 0f ef c0       	pxor   xmm8,xmm8
  401f8a:	66 41 0f 60 c0       	punpcklbw xmm0,xmm8
  401f8f:	66 41 0f 61 c0       	punpcklwd xmm0,xmm8
  401f94:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  401f97:	66 41 0f 6e 0c 8a    	movd   xmm1,DWORD PTR [r10+rcx*4]
  401f9d:	f3 0f 7e d9          	movq   xmm3,xmm1
  401fa1:	66 0f 73 fb 04       	pslldq xmm3,0x4
  401fa6:	66 0f fe d9          	paddd  xmm3,xmm1
  401faa:	66 0f 73 fb 04       	pslldq xmm3,0x4
  401faf:	66 0f fe d9          	paddd  xmm3,xmm1
  401fb3:	0f 59 c3             	mulps  xmm0,xmm3
  401fb6:	0f 58 d0             	addps  xmm2,xmm0
  401fb9:	4c 39 da             	cmp    rdx,r11
  401fbc:	74 0d                	je     401fcb <blur_asm.sumar_fila_kernel>
  401fbe:	48 83 c2 04          	add    rdx,0x4
  401fc2:	48 ff c1             	inc    rcx
  401fc5:	48 83 c6 04          	add    rsi,0x4
  401fc9:	eb a9                	jmp    401f74 <blur_asm.ciclo_kernel>

0000000000401fcb <blur_asm.sumar_fila_kernel>:
  401fcb:	48 31 d2             	xor    rdx,rdx
  401fce:	4c 29 de             	sub    rsi,r11
  401fd1:	4c 01 c6             	add    rsi,r8
  401fd4:	48 ff c1             	inc    rcx
  401fd7:	eb 9b                	jmp    401f74 <blur_asm.ciclo_kernel>

0000000000401fd9 <blur_asm.insert>:
  401fd9:	66 0f ef e4          	pxor   xmm4,xmm4
  401fdd:	66 0f 5b d2          	cvtps2dq xmm2,xmm2
  401fe1:	66 0f 38 2b d4       	packusdw xmm2,xmm4
  401fe6:	66 0f 67 d4          	packuswb xmm2,xmm4
  401fea:	66 0f 6e fb          	movd   xmm7,ebx
  401fee:	48 01 fb             	add    rbx,rdi
  401ff1:	66 41 0f 7e 54 1d 00 	movd   DWORD PTR [r13+rbx*1+0x0],xmm2
  401ff8:	66 0f 7e fb          	movd   ebx,xmm7
  401ffc:	66 0f ef ff          	pxor   xmm7,xmm7
  402000:	48 31 f6             	xor    rsi,rsi
  402003:	48 31 c9             	xor    rcx,rcx
  402006:	4c 39 ff             	cmp    rdi,r15
  402009:	74 09                	je     402014 <blur_asm.sumar_fila>
  40200b:	48 83 c7 04          	add    rdi,0x4
  40200f:	e9 57 ff ff ff       	jmp    401f6b <blur_asm.ciclo_matriz>

0000000000402014 <blur_asm.sumar_fila>:
  402014:	4c 01 df             	add    rdi,r11
  402017:	48 83 c7 04          	add    rdi,0x4
  40201b:	4d 01 c7             	add    r15,r8
  40201e:	e9 48 ff ff ff       	jmp    401f6b <blur_asm.ciclo_matriz>

0000000000402023 <blur_asm.end>:
  402023:	48 83 c4 08          	add    rsp,0x8
  402027:	5b                   	pop    rbx
  402028:	41 5f                	pop    r15
  40202a:	41 5e                	pop    r14
  40202c:	41 5d                	pop    r13
  40202e:	41 5c                	pop    r12
  402030:	48 89 e5             	mov    rbp,rsp
  402033:	4c 89 d7             	mov    rdi,r10
  402036:	e8 45 ea ff ff       	call   400a80 <free@plt>
  40203b:	5d                   	pop    rbp
  40203c:	c3                   	ret    

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

00000000004024c0 <__libc_csu_init>:
  4024c0:	41 57                	push   r15
  4024c2:	41 89 ff             	mov    r15d,edi
  4024c5:	41 56                	push   r14
  4024c7:	49 89 f6             	mov    r14,rsi
  4024ca:	41 55                	push   r13
  4024cc:	49 89 d5             	mov    r13,rdx
  4024cf:	41 54                	push   r12
  4024d1:	4c 8d 25 18 19 20 00 	lea    r12,[rip+0x201918]        # 603df0 <__frame_dummy_init_array_entry>
  4024d8:	55                   	push   rbp
  4024d9:	48 8d 2d 18 19 20 00 	lea    rbp,[rip+0x201918]        # 603df8 <__init_array_end>
  4024e0:	53                   	push   rbx
  4024e1:	4c 29 e5             	sub    rbp,r12
  4024e4:	31 db                	xor    ebx,ebx
  4024e6:	48 c1 fd 03          	sar    rbp,0x3
  4024ea:	48 83 ec 08          	sub    rsp,0x8
  4024ee:	e8 5d e5 ff ff       	call   400a50 <_init>
  4024f3:	48 85 ed             	test   rbp,rbp
  4024f6:	74 1e                	je     402516 <__libc_csu_init+0x56>
  4024f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4024ff:	00 
  402500:	4c 89 ea             	mov    rdx,r13
  402503:	4c 89 f6             	mov    rsi,r14
  402506:	44 89 ff             	mov    edi,r15d
  402509:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40250d:	48 83 c3 01          	add    rbx,0x1
  402511:	48 39 eb             	cmp    rbx,rbp
  402514:	75 ea                	jne    402500 <__libc_csu_init+0x40>
  402516:	48 83 c4 08          	add    rsp,0x8
  40251a:	5b                   	pop    rbx
  40251b:	5d                   	pop    rbp
  40251c:	41 5c                	pop    r12
  40251e:	41 5d                	pop    r13
  402520:	41 5e                	pop    r14
  402522:	41 5f                	pop    r15
  402524:	c3                   	ret    
  402525:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  40252c:	00 00 00 00 

0000000000402530 <__libc_csu_fini>:
  402530:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000402534 <_fini>:
  402534:	48 83 ec 08          	sub    rsp,0x8
  402538:	48 83 c4 08          	add    rsp,0x8
  40253c:	c3                   	ret    
