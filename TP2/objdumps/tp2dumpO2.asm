
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

0000000000400be0 <main>:
  400be0:	41 54                	push   r12
  400be2:	49 89 f4             	mov    r12,rsi
  400be5:	55                   	push   rbp
  400be6:	89 fd                	mov    ebp,edi
  400be8:	53                   	push   rbx
  400be9:	48 81 ec a0 01 00 00 	sub    rsp,0x1a0
  400bf0:	48 89 e2             	mov    rdx,rsp
  400bf3:	e8 f8 04 00 00       	call   4010f0 <procesar_opciones>
  400bf8:	80 bc 24 9b 01 00 00 	cmp    BYTE PTR [rsp+0x19b],0x0
  400bff:	00 
  400c00:	74 35                	je     400c37 <main+0x57>
  400c02:	48 89 e7             	mov    rdi,rsp
  400c05:	e8 66 01 00 00       	call   400d70 <detectar_filtro>
  400c0a:	48 85 c0             	test   rax,rax
  400c0d:	48 89 c3             	mov    rbx,rax
  400c10:	74 17                	je     400c29 <main+0x49>
  400c12:	89 ee                	mov    esi,ebp
  400c14:	48 89 e7             	mov    rdi,rsp
  400c17:	4c 89 e2             	mov    rdx,r12
  400c1a:	ff 50 08             	call   QWORD PTR [rax+0x8]
  400c1d:	48 8b 73 18          	mov    rsi,QWORD PTR [rbx+0x18]
  400c21:	48 89 e7             	mov    rdi,rsp
  400c24:	e8 77 02 00 00       	call   400ea0 <correr_filtro_imagen>
  400c29:	48 81 c4 a0 01 00 00 	add    rsp,0x1a0
  400c30:	31 c0                	xor    eax,eax
  400c32:	5b                   	pop    rbx
  400c33:	5d                   	pop    rbp
  400c34:	41 5c                	pop    r12
  400c36:	c3                   	ret    
  400c37:	bf a6 26 40 00       	mov    edi,0x4026a6
  400c3c:	e8 6f fe ff ff       	call   400ab0 <puts@plt>
  400c41:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  400c45:	bf b4 26 40 00       	mov    edi,0x4026b4
  400c4a:	31 c0                	xor    eax,eax
  400c4c:	e8 bf fe ff ff       	call   400b10 <printf@plt>
  400c51:	83 7c 24 08 00       	cmp    DWORD PTR [rsp+0x8],0x0
  400c56:	b8 90 26 40 00       	mov    eax,0x402690
  400c5b:	be 8e 26 40 00       	mov    esi,0x40268e
  400c60:	bf cf 26 40 00       	mov    edi,0x4026cf
  400c65:	48 0f 45 f0          	cmovne rsi,rax
  400c69:	31 c0                	xor    eax,eax
  400c6b:	e8 a0 fe ff ff       	call   400b10 <printf@plt>
  400c70:	48 8b 74 24 78       	mov    rsi,QWORD PTR [rsp+0x78]
  400c75:	bf eb 26 40 00       	mov    edi,0x4026eb
  400c7a:	31 c0                	xor    eax,eax
  400c7c:	e8 8f fe ff ff       	call   400b10 <printf@plt>
  400c81:	e9 7c ff ff ff       	jmp    400c02 <main+0x22>

0000000000400c86 <_start>:
  400c86:	31 ed                	xor    ebp,ebp
  400c88:	49 89 d1             	mov    r9,rdx
  400c8b:	5e                   	pop    rsi
  400c8c:	48 89 e2             	mov    rdx,rsp
  400c8f:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  400c93:	50                   	push   rax
  400c94:	54                   	push   rsp
  400c95:	49 c7 c0 50 26 40 00 	mov    r8,0x402650
  400c9c:	48 c7 c1 e0 25 40 00 	mov    rcx,0x4025e0
  400ca3:	48 c7 c7 e0 0b 40 00 	mov    rdi,0x400be0
  400caa:	e8 81 fe ff ff       	call   400b30 <__libc_start_main@plt>
  400caf:	f4                   	hlt    

0000000000400cb0 <deregister_tm_clones>:
  400cb0:	b8 7f 41 60 00       	mov    eax,0x60417f
  400cb5:	55                   	push   rbp
  400cb6:	48 2d 78 41 60 00    	sub    rax,0x604178
  400cbc:	48 83 f8 0e          	cmp    rax,0xe
  400cc0:	48 89 e5             	mov    rbp,rsp
  400cc3:	77 02                	ja     400cc7 <deregister_tm_clones+0x17>
  400cc5:	5d                   	pop    rbp
  400cc6:	c3                   	ret    
  400cc7:	b8 00 00 00 00       	mov    eax,0x0
  400ccc:	48 85 c0             	test   rax,rax
  400ccf:	74 f4                	je     400cc5 <deregister_tm_clones+0x15>
  400cd1:	5d                   	pop    rbp
  400cd2:	bf 78 41 60 00       	mov    edi,0x604178
  400cd7:	ff e0                	jmp    rax
  400cd9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400ce0 <register_tm_clones>:
  400ce0:	b8 78 41 60 00       	mov    eax,0x604178
  400ce5:	55                   	push   rbp
  400ce6:	48 2d 78 41 60 00    	sub    rax,0x604178
  400cec:	48 c1 f8 03          	sar    rax,0x3
  400cf0:	48 89 e5             	mov    rbp,rsp
  400cf3:	48 89 c2             	mov    rdx,rax
  400cf6:	48 c1 ea 3f          	shr    rdx,0x3f
  400cfa:	48 01 d0             	add    rax,rdx
  400cfd:	48 d1 f8             	sar    rax,1
  400d00:	75 02                	jne    400d04 <register_tm_clones+0x24>
  400d02:	5d                   	pop    rbp
  400d03:	c3                   	ret    
  400d04:	ba 00 00 00 00       	mov    edx,0x0
  400d09:	48 85 d2             	test   rdx,rdx
  400d0c:	74 f4                	je     400d02 <register_tm_clones+0x22>
  400d0e:	5d                   	pop    rbp
  400d0f:	48 89 c6             	mov    rsi,rax
  400d12:	bf 78 41 60 00       	mov    edi,0x604178
  400d17:	ff e2                	jmp    rdx
  400d19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400d20 <__do_global_dtors_aux>:
  400d20:	80 3d 69 34 20 00 00 	cmp    BYTE PTR [rip+0x203469],0x0        # 604190 <completed.6335>
  400d27:	75 11                	jne    400d3a <__do_global_dtors_aux+0x1a>
  400d29:	55                   	push   rbp
  400d2a:	48 89 e5             	mov    rbp,rsp
  400d2d:	e8 7e ff ff ff       	call   400cb0 <deregister_tm_clones>
  400d32:	5d                   	pop    rbp
  400d33:	c6 05 56 34 20 00 01 	mov    BYTE PTR [rip+0x203456],0x1        # 604190 <completed.6335>
  400d3a:	f3 c3                	repz ret 
  400d3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400d40 <frame_dummy>:
  400d40:	48 83 3d b8 30 20 00 	cmp    QWORD PTR [rip+0x2030b8],0x0        # 603e00 <__JCR_END__>
  400d47:	00 
  400d48:	74 1e                	je     400d68 <frame_dummy+0x28>
  400d4a:	b8 00 00 00 00       	mov    eax,0x0
  400d4f:	48 85 c0             	test   rax,rax
  400d52:	74 14                	je     400d68 <frame_dummy+0x28>
  400d54:	55                   	push   rbp
  400d55:	bf 00 3e 60 00       	mov    edi,0x603e00
  400d5a:	48 89 e5             	mov    rbp,rsp
  400d5d:	ff d0                	call   rax
  400d5f:	5d                   	pop    rbp
  400d60:	e9 7b ff ff ff       	jmp    400ce0 <register_tm_clones>
  400d65:	0f 1f 00             	nop    DWORD PTR [rax]
  400d68:	e9 73 ff ff ff       	jmp    400ce0 <register_tm_clones>
  400d6d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000400d70 <detectar_filtro>:
  400d70:	41 54                	push   r12
  400d72:	48 8b 35 87 33 20 00 	mov    rsi,QWORD PTR [rip+0x203387]        # 604100 <filtros>
  400d79:	55                   	push   rbp
  400d7a:	48 85 f6             	test   rsi,rsi
  400d7d:	53                   	push   rbx
  400d7e:	74 48                	je     400dc8 <detectar_filtro+0x58>
  400d80:	4c 8b 27             	mov    r12,QWORD PTR [rdi]
  400d83:	bb 28 41 60 00       	mov    ebx,0x604128
  400d88:	31 ed                	xor    ebp,ebp
  400d8a:	eb 14                	jmp    400da0 <detectar_filtro+0x30>
  400d8c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400d90:	48 83 c3 28          	add    rbx,0x28
  400d94:	48 8b 73 d8          	mov    rsi,QWORD PTR [rbx-0x28]
  400d98:	83 c5 01             	add    ebp,0x1
  400d9b:	48 85 f6             	test   rsi,rsi
  400d9e:	74 28                	je     400dc8 <detectar_filtro+0x58>
  400da0:	4c 89 e7             	mov    rdi,r12
  400da3:	e8 98 fd ff ff       	call   400b40 <strcmp@plt>
  400da8:	85 c0                	test   eax,eax
  400daa:	75 e4                	jne    400d90 <detectar_filtro+0x20>
  400dac:	48 63 ed             	movsxd rbp,ebp
  400daf:	48 8d 44 ad 00       	lea    rax,[rbp+rbp*4+0x0]
  400db4:	5b                   	pop    rbx
  400db5:	5d                   	pop    rbp
  400db6:	48 8d 04 c5 00 41 60 	lea    rax,[rax*8+0x604100]
  400dbd:	00 
  400dbe:	41 5c                	pop    r12
  400dc0:	c3                   	ret    
  400dc1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  400dc8:	48 8b 0d b9 33 20 00 	mov    rcx,QWORD PTR [rip+0x2033b9]        # 604188 <stderr@@GLIBC_2.2.5>
  400dcf:	ba 13 00 00 00       	mov    edx,0x13
  400dd4:	be 01 00 00 00       	mov    esi,0x1
  400dd9:	bf 64 26 40 00       	mov    edi,0x402664
  400dde:	e8 ed fd ff ff       	call   400bd0 <fwrite@plt>
  400de3:	5b                   	pop    rbx
  400de4:	5d                   	pop    rbp
  400de5:	31 c0                	xor    eax,eax
  400de7:	41 5c                	pop    r12
  400de9:	c3                   	ret    
  400dea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400df0 <imprimir_tiempos_ejecucion>:
  400df0:	41 55                	push   r13
  400df2:	49 89 fd             	mov    r13,rdi
  400df5:	41 54                	push   r12
  400df7:	49 89 f4             	mov    r12,rsi
  400dfa:	55                   	push   rbp
  400dfb:	89 d5                	mov    ebp,edx
  400dfd:	53                   	push   rbx
  400dfe:	48 89 f3             	mov    rbx,rsi
  400e01:	48 29 fb             	sub    rbx,rdi
  400e04:	bf 78 26 40 00       	mov    edi,0x402678
  400e09:	48 83 ec 08          	sub    rsp,0x8
  400e0d:	e8 9e fc ff ff       	call   400ab0 <puts@plt>
  400e12:	4c 89 ee             	mov    rsi,r13
  400e15:	bf 08 27 40 00       	mov    edi,0x402708
  400e1a:	31 c0                	xor    eax,eax
  400e1c:	e8 ef fc ff ff       	call   400b10 <printf@plt>
  400e21:	4c 89 e6             	mov    rsi,r12
  400e24:	bf 38 27 40 00       	mov    edi,0x402738
  400e29:	31 c0                	xor    eax,eax
  400e2b:	e8 e0 fc ff ff       	call   400b10 <printf@plt>
  400e30:	89 ee                	mov    esi,ebp
  400e32:	bf 68 27 40 00       	mov    edi,0x402768
  400e37:	31 c0                	xor    eax,eax
  400e39:	e8 d2 fc ff ff       	call   400b10 <printf@plt>
  400e3e:	31 c0                	xor    eax,eax
  400e40:	48 89 de             	mov    rsi,rbx
  400e43:	bf 98 27 40 00       	mov    edi,0x402798
  400e48:	e8 c3 fc ff ff       	call   400b10 <printf@plt>
  400e4d:	48 85 db             	test   rbx,rbx
  400e50:	78 2e                	js     400e80 <imprimir_tiempos_ejecucion+0x90>
  400e52:	f3 48 0f 2a c3       	cvtsi2ss xmm0,rbx
  400e57:	f3 0f 2a cd          	cvtsi2ss xmm1,ebp
  400e5b:	48 83 c4 08          	add    rsp,0x8
  400e5f:	5b                   	pop    rbx
  400e60:	5d                   	pop    rbp
  400e61:	41 5c                	pop    r12
  400e63:	41 5d                	pop    r13
  400e65:	bf c8 27 40 00       	mov    edi,0x4027c8
  400e6a:	b8 01 00 00 00       	mov    eax,0x1
  400e6f:	f3 0f 5e c1          	divss  xmm0,xmm1
  400e73:	0f 14 c0             	unpcklps xmm0,xmm0
  400e76:	0f 5a c0             	cvtps2pd xmm0,xmm0
  400e79:	e9 92 fc ff ff       	jmp    400b10 <printf@plt>
  400e7e:	66 90                	xchg   ax,ax
  400e80:	48 89 d8             	mov    rax,rbx
  400e83:	83 e3 01             	and    ebx,0x1
  400e86:	48 d1 e8             	shr    rax,1
  400e89:	48 09 d8             	or     rax,rbx
  400e8c:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
  400e91:	f3 0f 58 c0          	addss  xmm0,xmm0
  400e95:	eb c0                	jmp    400e57 <imprimir_tiempos_ejecucion+0x67>
  400e97:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  400e9e:	00 00 

0000000000400ea0 <correr_filtro_imagen>:
  400ea0:	41 57                	push   r15
  400ea2:	b8 90 26 40 00       	mov    eax,0x402690
  400ea7:	41 56                	push   r14
  400ea9:	41 55                	push   r13
  400eab:	41 54                	push   r12
  400ead:	49 89 f4             	mov    r12,rsi
  400eb0:	55                   	push   rbp
  400eb1:	bd 8e 26 40 00       	mov    ebp,0x40268e
  400eb6:	53                   	push   rbx
  400eb7:	48 89 fb             	mov    rbx,rdi
  400eba:	4c 8d ab 88 00 00 00 	lea    r13,[rbx+0x88]
  400ec1:	48 83 ec 18          	sub    rsp,0x18
  400ec5:	8b 57 08             	mov    edx,DWORD PTR [rdi+0x8]
  400ec8:	4c 8b bf 90 01 00 00 	mov    r15,QWORD PTR [rdi+0x190]
  400ecf:	4c 8b 37             	mov    r14,QWORD PTR [rdi]
  400ed2:	48 8b 7f 78          	mov    rdi,QWORD PTR [rdi+0x78]
  400ed6:	85 d2                	test   edx,edx
  400ed8:	48 0f 45 e8          	cmovne rbp,rax
  400edc:	e8 6f fc ff ff       	call   400b50 <basename@plt>
  400ee1:	48 8b 8b 88 01 00 00 	mov    rcx,QWORD PTR [rbx+0x188]
  400ee8:	49 89 c0             	mov    r8,rax
  400eeb:	4c 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],r15
  400ef0:	31 c0                	xor    eax,eax
  400ef2:	48 89 2c 24          	mov    QWORD PTR [rsp],rbp
  400ef6:	4d 89 f1             	mov    r9,r14
  400ef9:	ba 94 26 40 00       	mov    edx,0x402694
  400efe:	be ff 00 00 00       	mov    esi,0xff
  400f03:	4c 89 ef             	mov    rdi,r13
  400f06:	e8 15 fc ff ff       	call   400b20 <snprintf@plt>
  400f0b:	80 bb 9b 01 00 00 00 	cmp    BYTE PTR [rbx+0x19b],0x0
  400f12:	0f 85 b8 00 00 00    	jne    400fd0 <correr_filtro_imagen+0x130>
  400f18:	48 89 df             	mov    rdi,rbx
  400f1b:	e8 40 0c 00 00       	call   401b60 <imagenes_abrir>
  400f20:	48 31 d2             	xor    rdx,rdx
  400f23:	48 31 c0             	xor    rax,rax
  400f26:	0f ae e8             	lfence 
  400f29:	0f 31                	rdtsc  
  400f2b:	48 c1 e2 20          	shl    rdx,0x20
  400f2f:	48 09 d0             	or     rax,rdx
  400f32:	48 89 c1             	mov    rcx,rax
  400f35:	48 31 d2             	xor    rdx,rdx
  400f38:	48 31 c0             	xor    rax,rax
  400f3b:	0f ae e8             	lfence 
  400f3e:	0f 31                	rdtsc  
  400f40:	48 c1 e2 20          	shl    rdx,0x20
  400f44:	48 09 d0             	or     rax,rdx
  400f47:	48 89 c1             	mov    rcx,rax
  400f4a:	48 31 d2             	xor    rdx,rdx
  400f4d:	48 31 c0             	xor    rax,rax
  400f50:	0f ae e8             	lfence 
  400f53:	0f 31                	rdtsc  
  400f55:	48 c1 e2 20          	shl    rdx,0x20
  400f59:	48 09 d0             	or     rax,rdx
  400f5c:	49 89 c5             	mov    r13,rax
  400f5f:	8b 83 9c 01 00 00    	mov    eax,DWORD PTR [rbx+0x19c]
  400f65:	31 ed                	xor    ebp,ebp
  400f67:	85 c0                	test   eax,eax
  400f69:	7e 16                	jle    400f81 <correr_filtro_imagen+0xe1>
  400f6b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400f70:	48 89 df             	mov    rdi,rbx
  400f73:	83 c5 01             	add    ebp,0x1
  400f76:	41 ff d4             	call   r12
  400f79:	39 ab 9c 01 00 00    	cmp    DWORD PTR [rbx+0x19c],ebp
  400f7f:	7f ef                	jg     400f70 <correr_filtro_imagen+0xd0>
  400f81:	48 31 d2             	xor    rdx,rdx
  400f84:	48 31 c0             	xor    rax,rax
  400f87:	0f ae e8             	lfence 
  400f8a:	0f 31                	rdtsc  
  400f8c:	48 c1 e2 20          	shl    rdx,0x20
  400f90:	48 09 d0             	or     rax,rdx
  400f93:	48 89 c5             	mov    rbp,rax
  400f96:	48 89 df             	mov    rdi,rbx
  400f99:	e8 62 0d 00 00       	call   401d00 <imagenes_guardar>
  400f9e:	48 89 df             	mov    rdi,rbx
  400fa1:	31 c0                	xor    eax,eax
  400fa3:	e8 78 0d 00 00       	call   401d20 <imagenes_liberar>
  400fa8:	8b 93 9c 01 00 00    	mov    edx,DWORD PTR [rbx+0x19c]
  400fae:	48 83 c4 18          	add    rsp,0x18
  400fb2:	48 89 ee             	mov    rsi,rbp
  400fb5:	5b                   	pop    rbx
  400fb6:	5d                   	pop    rbp
  400fb7:	41 5c                	pop    r12
  400fb9:	4c 89 ef             	mov    rdi,r13
  400fbc:	41 5d                	pop    r13
  400fbe:	41 5e                	pop    r14
  400fc0:	41 5f                	pop    r15
  400fc2:	e9 29 fe ff ff       	jmp    400df0 <imprimir_tiempos_ejecucion>
  400fc7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  400fce:	00 00 
  400fd0:	4c 89 ef             	mov    rdi,r13
  400fd3:	e8 78 fb ff ff       	call   400b50 <basename@plt>
  400fd8:	48 83 c4 18          	add    rsp,0x18
  400fdc:	48 89 c7             	mov    rdi,rax
  400fdf:	5b                   	pop    rbx
  400fe0:	5d                   	pop    rbp
  400fe1:	41 5c                	pop    r12
  400fe3:	41 5d                	pop    r13
  400fe5:	41 5e                	pop    r14
  400fe7:	41 5f                	pop    r15
  400fe9:	e9 c2 fa ff ff       	jmp    400ab0 <puts@plt>
  400fee:	66 90                	xchg   ax,ax

0000000000400ff0 <imprimir_ayuda>:
  400ff0:	53                   	push   rbx
  400ff1:	48 89 fe             	mov    rsi,rdi
  400ff4:	31 c0                	xor    eax,eax
  400ff6:	bf f8 27 40 00       	mov    edi,0x4027f8
  400ffb:	31 db                	xor    ebx,ebx
  400ffd:	e8 0e fb ff ff       	call   400b10 <printf@plt>
  401002:	bf 40 28 40 00       	mov    edi,0x402840
  401007:	e8 a4 fa ff ff       	call   400ab0 <puts@plt>
  40100c:	31 c0                	xor    eax,eax
  40100e:	48 83 3d ea 30 20 00 	cmp    QWORD PTR [rip+0x2030ea],0x0        # 604100 <filtros>
  401015:	00 
  401016:	74 28                	je     401040 <imprimir_ayuda+0x50>
  401018:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40101f:	00 
  401020:	48 8d 04 80          	lea    rax,[rax+rax*4]
  401024:	83 c3 01             	add    ebx,0x1
  401027:	ff 14 c5 10 41 60 00 	call   QWORD PTR [rax*8+0x604110]
  40102e:	48 63 c3             	movsxd rax,ebx
  401031:	48 8d 14 80          	lea    rdx,[rax+rax*4]
  401035:	48 83 3c d5 00 41 60 	cmp    QWORD PTR [rdx*8+0x604100],0x0
  40103c:	00 00 
  40103e:	75 e0                	jne    401020 <imprimir_ayuda+0x30>
  401040:	bf 0a 00 00 00       	mov    edi,0xa
  401045:	e8 46 fa ff ff       	call   400a90 <putchar@plt>
  40104a:	bf c9 2b 40 00       	mov    edi,0x402bc9
  40104f:	e8 5c fa ff ff       	call   400ab0 <puts@plt>
  401054:	bf 70 28 40 00       	mov    edi,0x402870
  401059:	e8 52 fa ff ff       	call   400ab0 <puts@plt>
  40105e:	bf 0a 00 00 00       	mov    edi,0xa
  401063:	e8 28 fa ff ff       	call   400a90 <putchar@plt>
  401068:	bf 98 28 40 00       	mov    edi,0x402898
  40106d:	e8 3e fa ff ff       	call   400ab0 <puts@plt>
  401072:	bf c0 28 40 00       	mov    edi,0x4028c0
  401077:	e8 34 fa ff ff       	call   400ab0 <puts@plt>
  40107c:	bf 0a 00 00 00       	mov    edi,0xa
  401081:	e8 0a fa ff ff       	call   400a90 <putchar@plt>
  401086:	bf a0 29 40 00       	mov    edi,0x4029a0
  40108b:	e8 20 fa ff ff       	call   400ab0 <puts@plt>
  401090:	bf c8 29 40 00       	mov    edi,0x4029c8
  401095:	e8 16 fa ff ff       	call   400ab0 <puts@plt>
  40109a:	bf 0a 00 00 00       	mov    edi,0xa
  40109f:	e8 ec f9 ff ff       	call   400a90 <putchar@plt>
  4010a4:	bf da 2b 40 00       	mov    edi,0x402bda
  4010a9:	e8 02 fa ff ff       	call   400ab0 <puts@plt>
  4010ae:	bf b0 2a 40 00       	mov    edi,0x402ab0
  4010b3:	e8 f8 f9 ff ff       	call   400ab0 <puts@plt>
  4010b8:	bf f3 2b 40 00       	mov    edi,0x402bf3
  4010bd:	e8 ee f9 ff ff       	call   400ab0 <puts@plt>
  4010c2:	bf 08 2b 40 00       	mov    edi,0x402b08
  4010c7:	e8 e4 f9 ff ff       	call   400ab0 <puts@plt>
  4010cc:	bf 04 2c 40 00       	mov    edi,0x402c04
  4010d1:	e8 da f9 ff ff       	call   400ab0 <puts@plt>
  4010d6:	bf 68 2b 40 00       	mov    edi,0x402b68
  4010db:	e8 d0 f9 ff ff       	call   400ab0 <puts@plt>
  4010e0:	5b                   	pop    rbx
  4010e1:	bf 0a 00 00 00       	mov    edi,0xa
  4010e6:	e9 a5 f9 ff ff       	jmp    400a90 <putchar@plt>
  4010eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004010f0 <procesar_opciones>:
  4010f0:	41 56                	push   r14
  4010f2:	41 55                	push   r13
  4010f4:	49 89 f5             	mov    r13,rsi
  4010f7:	41 54                	push   r12
  4010f9:	41 89 fc             	mov    r12d,edi
  4010fc:	55                   	push   rbp
  4010fd:	53                   	push   rbx
  4010fe:	48 81 ec 20 01 00 00 	sub    rsp,0x120
  401105:	83 ff 01             	cmp    edi,0x1
  401108:	0f 84 a2 00 00 00    	je     4011b0 <procesar_opciones+0xc0>
  40110e:	be 60 2c 40 00       	mov    esi,0x402c60
  401113:	b9 24 00 00 00       	mov    ecx,0x24
  401118:	48 89 e7             	mov    rdi,rsp
  40111b:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
  40111e:	48 89 d3             	mov    rbx,rdx
  401121:	c6 82 98 01 00 00 00 	mov    BYTE PTR [rdx+0x198],0x0
  401128:	c6 82 99 01 00 00 00 	mov    BYTE PTR [rdx+0x199],0x0
  40112f:	c6 82 9a 01 00 00 00 	mov    BYTE PTR [rdx+0x19a],0x0
  401136:	c6 82 9b 01 00 00 00 	mov    BYTE PTR [rdx+0x19b],0x0
  40113d:	48 89 e5             	mov    rbp,rsp
  401140:	c7 82 9c 01 00 00 01 	mov    DWORD PTR [rdx+0x19c],0x1
  401147:	00 00 00 
  40114a:	48 c7 42 78 00 00 00 	mov    QWORD PTR [rdx+0x78],0x0
  401151:	00 
  401152:	48 c7 82 80 00 00 00 	mov    QWORD PTR [rdx+0x80],0x0
  401159:	00 00 00 00 
  40115d:	48 c7 82 88 01 00 00 	mov    QWORD PTR [rdx+0x188],0x4026b2
  401164:	b2 26 40 00 
  401168:	48 c7 82 90 01 00 00 	mov    QWORD PTR [rdx+0x190],0x402f7e
  40116f:	7e 2f 40 00 
  401173:	45 31 c0             	xor    r8d,r8d
  401176:	48 89 e9             	mov    rcx,rbp
  401179:	ba 16 2c 40 00       	mov    edx,0x402c16
  40117e:	4c 89 ee             	mov    rsi,r13
  401181:	44 89 e7             	mov    edi,r12d
  401184:	e8 77 f9 ff ff       	call   400b00 <getopt_long@plt>
  401189:	83 f8 ff             	cmp    eax,0xffffffff
  40118c:	0f 84 be 00 00 00    	je     401250 <procesar_opciones+0x160>
  401192:	83 e8 3f             	sub    eax,0x3f
  401195:	83 f8 38             	cmp    eax,0x38
  401198:	0f 87 aa 00 00 00    	ja     401248 <procesar_opciones+0x158>
  40119e:	66 90                	xchg   ax,ax
  4011a0:	ff 24 c5 80 2d 40 00 	jmp    QWORD PTR [rax*8+0x402d80]
  4011a7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  4011ae:	00 00 
  4011b0:	49 8b 7d 00          	mov    rdi,QWORD PTR [r13+0x0]
  4011b4:	e8 37 fe ff ff       	call   400ff0 <imprimir_ayuda>
  4011b9:	31 ff                	xor    edi,edi
  4011bb:	e8 00 fa ff ff       	call   400bc0 <exit@plt>
  4011c0:	c6 83 99 01 00 00 01 	mov    BYTE PTR [rbx+0x199],0x1
  4011c7:	eb aa                	jmp    401173 <procesar_opciones+0x83>
  4011c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4011d0:	48 8b 3d a9 2f 20 00 	mov    rdi,QWORD PTR [rip+0x202fa9]        # 604180 <optarg@@GLIBC_2.2.5>
  4011d7:	ba 0a 00 00 00       	mov    edx,0xa
  4011dc:	31 f6                	xor    esi,esi
  4011de:	e8 8d f9 ff ff       	call   400b70 <strtol@plt>
  4011e3:	89 83 9c 01 00 00    	mov    DWORD PTR [rbx+0x19c],eax
  4011e9:	eb 88                	jmp    401173 <procesar_opciones+0x83>
  4011eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4011f0:	48 8b 05 89 2f 20 00 	mov    rax,QWORD PTR [rip+0x202f89]        # 604180 <optarg@@GLIBC_2.2.5>
  4011f7:	48 89 83 88 01 00 00 	mov    QWORD PTR [rbx+0x188],rax
  4011fe:	e9 70 ff ff ff       	jmp    401173 <procesar_opciones+0x83>
  401203:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  401208:	c6 83 9b 01 00 00 01 	mov    BYTE PTR [rbx+0x19b],0x1
  40120f:	e9 5f ff ff ff       	jmp    401173 <procesar_opciones+0x83>
  401214:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  401218:	4c 8b 35 61 2f 20 00 	mov    r14,QWORD PTR [rip+0x202f61]        # 604180 <optarg@@GLIBC_2.2.5>
  40121f:	e9 4f ff ff ff       	jmp    401173 <procesar_opciones+0x83>
  401224:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  401228:	c6 83 98 01 00 00 01 	mov    BYTE PTR [rbx+0x198],0x1
  40122f:	e9 3f ff ff ff       	jmp    401173 <procesar_opciones+0x83>
  401234:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  401238:	c6 83 9a 01 00 00 01 	mov    BYTE PTR [rbx+0x19a],0x1
  40123f:	e9 2f ff ff ff       	jmp    401173 <procesar_opciones+0x83>
  401244:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  401248:	e8 53 f8 ff ff       	call   400aa0 <abort@plt>
  40124d:	0f 1f 00             	nop    DWORD PTR [rax]
  401250:	8b 05 22 2f 20 00    	mov    eax,DWORD PTR [rip+0x202f22]        # 604178 <__TMC_END__>
  401256:	8d 50 01             	lea    edx,[rax+0x1]
  401259:	89 15 19 2f 20 00    	mov    DWORD PTR [rip+0x202f19],edx        # 604178 <__TMC_END__>
  40125f:	48 63 d0             	movsxd rdx,eax
  401262:	48 8d 34 d5 00 00 00 	lea    rsi,[rdx*8+0x0]
  401269:	00 
  40126a:	49 8b 54 d5 00       	mov    rdx,QWORD PTR [r13+rdx*8+0x0]
  40126f:	48 85 d2             	test   rdx,rdx
  401272:	48 89 13             	mov    QWORD PTR [rbx],rdx
  401275:	0f 84 35 ff ff ff    	je     4011b0 <procesar_opciones+0xc0>
  40127b:	4d 85 f6             	test   r14,r14
  40127e:	0f 84 2c ff ff ff    	je     4011b0 <procesar_opciones+0xc0>
  401284:	41 0f b6 16          	movzx  edx,BYTE PTR [r14]
  401288:	b9 63 00 00 00       	mov    ecx,0x63
  40128d:	29 d1                	sub    ecx,edx
  40128f:	0f 84 c3 00 00 00    	je     401358 <procesar_opciones+0x268>
  401295:	83 fa 61             	cmp    edx,0x61
  401298:	0f 85 12 ff ff ff    	jne    4011b0 <procesar_opciones+0xc0>
  40129e:	41 80 7e 01 73       	cmp    BYTE PTR [r14+0x1],0x73
  4012a3:	0f 85 07 ff ff ff    	jne    4011b0 <procesar_opciones+0xc0>
  4012a9:	41 80 7e 02 6d       	cmp    BYTE PTR [r14+0x2],0x6d
  4012ae:	0f 85 fc fe ff ff    	jne    4011b0 <procesar_opciones+0xc0>
  4012b4:	41 80 7e 03 00       	cmp    BYTE PTR [r14+0x3],0x0
  4012b9:	0f 85 f1 fe ff ff    	jne    4011b0 <procesar_opciones+0xc0>
  4012bf:	85 c9                	test   ecx,ecx
  4012c1:	0f 84 9c 00 00 00    	je     401363 <procesar_opciones+0x273>
  4012c7:	c7 43 08 01 00 00 00 	mov    DWORD PTR [rbx+0x8],0x1
  4012ce:	49 8b 7c 35 08       	mov    rdi,QWORD PTR [r13+rsi*1+0x8]
  4012d3:	83 c0 02             	add    eax,0x2
  4012d6:	89 05 9c 2e 20 00    	mov    DWORD PTR [rip+0x202e9c],eax        # 604178 <__TMC_END__>
  4012dc:	48 85 ff             	test   rdi,rdi
  4012df:	48 89 7b 78          	mov    QWORD PTR [rbx+0x78],rdi
  4012e3:	0f 84 c7 fe ff ff    	je     4011b0 <procesar_opciones+0xc0>
  4012e9:	31 f6                	xor    esi,esi
  4012eb:	e8 a0 f8 ff ff       	call   400b90 <access@plt>
  4012f0:	83 f8 ff             	cmp    eax,0xffffffff
  4012f3:	0f 84 9b 00 00 00    	je     401394 <procesar_opciones+0x2a4>
  4012f9:	48 89 df             	mov    rdi,rbx
  4012fc:	e8 6f fa ff ff       	call   400d70 <detectar_filtro>
  401301:	48 85 c0             	test   rax,rax
  401304:	74 3c                	je     401342 <procesar_opciones+0x252>
  401306:	48 63 15 6b 2e 20 00 	movsxd rdx,DWORD PTR [rip+0x202e6b]        # 604178 <__TMC_END__>
  40130d:	41 39 d4             	cmp    r12d,edx
  401310:	7e 30                	jle    401342 <procesar_opciones+0x252>
  401312:	83 78 20 01          	cmp    DWORD PTR [rax+0x20],0x1
  401316:	7e 2a                	jle    401342 <procesar_opciones+0x252>
  401318:	49 8b 7c d5 00       	mov    rdi,QWORD PTR [r13+rdx*8+0x0]
  40131d:	8d 42 01             	lea    eax,[rdx+0x1]
  401320:	89 05 52 2e 20 00    	mov    DWORD PTR [rip+0x202e52],eax        # 604178 <__TMC_END__>
  401326:	48 85 ff             	test   rdi,rdi
  401329:	48 89 bb 80 00 00 00 	mov    QWORD PTR [rbx+0x80],rdi
  401330:	0f 84 7a fe ff ff    	je     4011b0 <procesar_opciones+0xc0>
  401336:	31 f6                	xor    esi,esi
  401338:	e8 53 f8 ff ff       	call   400b90 <access@plt>
  40133d:	83 f8 ff             	cmp    eax,0xffffffff
  401340:	74 38                	je     40137a <procesar_opciones+0x28a>
  401342:	48 81 c4 20 01 00 00 	add    rsp,0x120
  401349:	5b                   	pop    rbx
  40134a:	5d                   	pop    rbp
  40134b:	41 5c                	pop    r12
  40134d:	41 5d                	pop    r13
  40134f:	41 5e                	pop    r14
  401351:	c3                   	ret    
  401352:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  401358:	41 80 7e 01 00       	cmp    BYTE PTR [r14+0x1],0x0
  40135d:	0f 85 32 ff ff ff    	jne    401295 <procesar_opciones+0x1a5>
  401363:	41 80 7e 01 00       	cmp    BYTE PTR [r14+0x1],0x0
  401368:	0f 85 59 ff ff ff    	jne    4012c7 <procesar_opciones+0x1d7>
  40136e:	c7 43 08 00 00 00 00 	mov    DWORD PTR [rbx+0x8],0x0
  401375:	e9 54 ff ff ff       	jmp    4012ce <procesar_opciones+0x1de>
  40137a:	48 8b b3 80 00 00 00 	mov    rsi,QWORD PTR [rbx+0x80]
  401381:	bf a0 2b 40 00       	mov    edi,0x402ba0
  401386:	31 c0                	xor    eax,eax
  401388:	e8 83 f7 ff ff       	call   400b10 <printf@plt>
  40138d:	31 ff                	xor    edi,edi
  40138f:	e8 2c f8 ff ff       	call   400bc0 <exit@plt>
  401394:	48 8b 73 78          	mov    rsi,QWORD PTR [rbx+0x78]
  401398:	eb e7                	jmp    401381 <procesar_opciones+0x291>
  40139a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004013a0 <get_BMPIH>:
  4013a0:	55                   	push   rbp
  4013a1:	31 c0                	xor    eax,eax
  4013a3:	53                   	push   rbx
  4013a4:	89 fb                	mov    ebx,edi
  4013a6:	48 83 ec 08          	sub    rsp,0x8
  4013aa:	40 f6 c7 03          	test   dil,0x3
  4013ae:	75 57                	jne    401407 <get_BMPIH+0x67>
  4013b0:	bf 28 00 00 00       	mov    edi,0x28
  4013b5:	89 f5                	mov    ebp,esi
  4013b7:	e8 c4 f7 ff ff       	call   400b80 <malloc@plt>
  4013bc:	ba 01 00 00 00       	mov    edx,0x1
  4013c1:	b9 18 00 00 00       	mov    ecx,0x18
  4013c6:	c7 00 28 00 00 00    	mov    DWORD PTR [rax],0x28
  4013cc:	66 89 50 0c          	mov    WORD PTR [rax+0xc],dx
  4013d0:	8d 54 6d 00          	lea    edx,[rbp+rbp*2+0x0]
  4013d4:	89 58 04             	mov    DWORD PTR [rax+0x4],ebx
  4013d7:	89 68 08             	mov    DWORD PTR [rax+0x8],ebp
  4013da:	66 89 48 0e          	mov    WORD PTR [rax+0xe],cx
  4013de:	0f af d3             	imul   edx,ebx
  4013e1:	c7 40 10 00 00 00 00 	mov    DWORD PTR [rax+0x10],0x0
  4013e8:	c7 40 18 88 0b 00 00 	mov    DWORD PTR [rax+0x18],0xb88
  4013ef:	c7 40 1c 88 0b 00 00 	mov    DWORD PTR [rax+0x1c],0xb88
  4013f6:	c7 40 20 00 00 00 00 	mov    DWORD PTR [rax+0x20],0x0
  4013fd:	c7 40 24 00 00 00 00 	mov    DWORD PTR [rax+0x24],0x0
  401404:	89 50 14             	mov    DWORD PTR [rax+0x14],edx
  401407:	48 83 c4 08          	add    rsp,0x8
  40140b:	5b                   	pop    rbx
  40140c:	5d                   	pop    rbp
  40140d:	c3                   	ret    
  40140e:	66 90                	xchg   ax,ax

0000000000401410 <get_BMPV5H>:
  401410:	55                   	push   rbp
  401411:	31 c0                	xor    eax,eax
  401413:	53                   	push   rbx
  401414:	89 fb                	mov    ebx,edi
  401416:	48 83 ec 08          	sub    rsp,0x8
  40141a:	40 f6 c7 03          	test   dil,0x3
  40141e:	0f 85 ed 00 00 00    	jne    401511 <get_BMPV5H+0x101>
  401424:	89 f5                	mov    ebp,esi
  401426:	bf 7c 00 00 00       	mov    edi,0x7c
  40142b:	e8 50 f7 ff ff       	call   400b80 <malloc@plt>
  401430:	8d 34 ad 00 00 00 00 	lea    esi,[rbp*4+0x0]
  401437:	ba 01 00 00 00       	mov    edx,0x1
  40143c:	b9 20 00 00 00       	mov    ecx,0x20
  401441:	c7 00 7c 00 00 00    	mov    DWORD PTR [rax],0x7c
  401447:	89 58 04             	mov    DWORD PTR [rax+0x4],ebx
  40144a:	0f af f3             	imul   esi,ebx
  40144d:	89 68 08             	mov    DWORD PTR [rax+0x8],ebp
  401450:	66 89 50 0c          	mov    WORD PTR [rax+0xc],dx
  401454:	66 89 48 0e          	mov    WORD PTR [rax+0xe],cx
  401458:	c7 40 10 03 00 00 00 	mov    DWORD PTR [rax+0x10],0x3
  40145f:	c7 40 18 88 0b 00 00 	mov    DWORD PTR [rax+0x18],0xb88
  401466:	c7 40 1c 88 0b 00 00 	mov    DWORD PTR [rax+0x1c],0xb88
  40146d:	89 70 14             	mov    DWORD PTR [rax+0x14],esi
  401470:	c7 40 20 00 00 00 00 	mov    DWORD PTR [rax+0x20],0x0
  401477:	c7 40 24 00 00 00 00 	mov    DWORD PTR [rax+0x24],0x0
  40147e:	c7 40 28 00 00 00 ff 	mov    DWORD PTR [rax+0x28],0xff000000
  401485:	c7 40 2c 00 00 ff 00 	mov    DWORD PTR [rax+0x2c],0xff0000
  40148c:	c7 40 30 00 ff 00 00 	mov    DWORD PTR [rax+0x30],0xff00
  401493:	c7 40 34 ff 00 00 00 	mov    DWORD PTR [rax+0x34],0xff
  40149a:	c7 40 38 42 47 52 73 	mov    DWORD PTR [rax+0x38],0x73524742
  4014a1:	c7 40 3c 00 00 00 00 	mov    DWORD PTR [rax+0x3c],0x0
  4014a8:	c7 40 40 00 00 00 00 	mov    DWORD PTR [rax+0x40],0x0
  4014af:	c7 40 44 00 00 00 00 	mov    DWORD PTR [rax+0x44],0x0
  4014b6:	c7 40 48 00 00 00 00 	mov    DWORD PTR [rax+0x48],0x0
  4014bd:	c7 40 4c 00 00 00 00 	mov    DWORD PTR [rax+0x4c],0x0
  4014c4:	c7 40 50 00 00 00 00 	mov    DWORD PTR [rax+0x50],0x0
  4014cb:	c7 40 54 00 00 00 00 	mov    DWORD PTR [rax+0x54],0x0
  4014d2:	c7 40 58 00 00 00 00 	mov    DWORD PTR [rax+0x58],0x0
  4014d9:	c7 40 5c 00 00 00 00 	mov    DWORD PTR [rax+0x5c],0x0
  4014e0:	c7 40 60 00 00 00 00 	mov    DWORD PTR [rax+0x60],0x0
  4014e7:	c7 40 64 00 00 00 00 	mov    DWORD PTR [rax+0x64],0x0
  4014ee:	c7 40 68 00 00 00 00 	mov    DWORD PTR [rax+0x68],0x0
  4014f5:	c7 40 6c 02 00 00 00 	mov    DWORD PTR [rax+0x6c],0x2
  4014fc:	c7 40 70 00 00 00 00 	mov    DWORD PTR [rax+0x70],0x0
  401503:	c7 40 74 00 00 00 00 	mov    DWORD PTR [rax+0x74],0x0
  40150a:	c7 40 78 00 00 00 00 	mov    DWORD PTR [rax+0x78],0x0
  401511:	48 83 c4 08          	add    rsp,0x8
  401515:	5b                   	pop    rbx
  401516:	5d                   	pop    rbp
  401517:	c3                   	ret    
  401518:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40151f:	00 

0000000000401520 <bmp_create>:
  401520:	41 55                	push   r13
  401522:	49 89 fd             	mov    r13,rdi
  401525:	41 54                	push   r12
  401527:	41 89 f4             	mov    r12d,esi
  40152a:	55                   	push   rbp
  40152b:	53                   	push   rbx
  40152c:	48 83 ec 08          	sub    rsp,0x8
  401530:	8b 5f 14             	mov    ebx,DWORD PTR [rdi+0x14]
  401533:	89 df                	mov    edi,ebx
  401535:	e8 46 f6 ff ff       	call   400b80 <malloc@plt>
  40153a:	45 85 e4             	test   r12d,r12d
  40153d:	48 89 c5             	mov    rbp,rax
  401540:	74 1b                	je     40155d <bmp_create+0x3d>
  401542:	85 db                	test   ebx,ebx
  401544:	74 17                	je     40155d <bmp_create+0x3d>
  401546:	31 d2                	xor    edx,edx
  401548:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40154f:	00 
  401550:	c6 44 15 00 00       	mov    BYTE PTR [rbp+rdx*1+0x0],0x0
  401555:	48 83 c2 01          	add    rdx,0x1
  401559:	39 d3                	cmp    ebx,edx
  40155b:	77 f3                	ja     401550 <bmp_create+0x30>
  40155d:	bf 0e 00 00 00       	mov    edi,0xe
  401562:	e8 19 f6 ff ff       	call   400b80 <malloc@plt>
  401567:	49 89 c4             	mov    r12,rax
  40156a:	c6 00 42             	mov    BYTE PTR [rax],0x42
  40156d:	c6 40 01 4d          	mov    BYTE PTR [rax+0x1],0x4d
  401571:	41 8b 45 00          	mov    eax,DWORD PTR [r13+0x0]
  401575:	31 d2                	xor    edx,edx
  401577:	bf 18 00 00 00       	mov    edi,0x18
  40157c:	66 41 89 54 24 08    	mov    WORD PTR [r12+0x8],dx
  401582:	83 c0 0e             	add    eax,0xe
  401585:	41 89 44 24 0a       	mov    DWORD PTR [r12+0xa],eax
  40158a:	01 c3                	add    ebx,eax
  40158c:	31 c0                	xor    eax,eax
  40158e:	41 89 5c 24 02       	mov    DWORD PTR [r12+0x2],ebx
  401593:	66 41 89 44 24 06    	mov    WORD PTR [r12+0x6],ax
  401599:	e8 e2 f5 ff ff       	call   400b80 <malloc@plt>
  40159e:	4c 89 20             	mov    QWORD PTR [rax],r12
  4015a1:	4c 89 68 08          	mov    QWORD PTR [rax+0x8],r13
  4015a5:	48 89 68 10          	mov    QWORD PTR [rax+0x10],rbp
  4015a9:	48 83 c4 08          	add    rsp,0x8
  4015ad:	5b                   	pop    rbx
  4015ae:	5d                   	pop    rbp
  4015af:	41 5c                	pop    r12
  4015b1:	41 5d                	pop    r13
  4015b3:	c3                   	ret    
  4015b4:	66 66 66 2e 0f 1f 84 	data32 data32 nop WORD PTR cs:[rax+rax*1+0x0]
  4015bb:	00 00 00 00 00 

00000000004015c0 <bmp_copy>:
  4015c0:	41 57                	push   r15
  4015c2:	41 89 f7             	mov    r15d,esi
  4015c5:	41 56                	push   r14
  4015c7:	49 89 fe             	mov    r14,rdi
  4015ca:	bf 0e 00 00 00       	mov    edi,0xe
  4015cf:	41 55                	push   r13
  4015d1:	41 54                	push   r12
  4015d3:	55                   	push   rbp
  4015d4:	53                   	push   rbx
  4015d5:	48 83 ec 08          	sub    rsp,0x8
  4015d9:	e8 a2 f5 ff ff       	call   400b80 <malloc@plt>
  4015de:	49 89 c4             	mov    r12,rax
  4015e1:	49 8b 06             	mov    rax,QWORD PTR [r14]
  4015e4:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  4015e7:	49 89 14 24          	mov    QWORD PTR [r12],rdx
  4015eb:	8b 50 08             	mov    edx,DWORD PTR [rax+0x8]
  4015ee:	41 89 54 24 08       	mov    DWORD PTR [r12+0x8],edx
  4015f3:	0f b7 40 0c          	movzx  eax,WORD PTR [rax+0xc]
  4015f7:	66 41 89 44 24 0c    	mov    WORD PTR [r12+0xc],ax
  4015fd:	41 8b 44 24 0a       	mov    eax,DWORD PTR [r12+0xa]
  401602:	83 e8 0e             	sub    eax,0xe
  401605:	83 f8 28             	cmp    eax,0x28
  401608:	74 66                	je     401670 <bmp_copy+0xb0>
  40160a:	45 31 ed             	xor    r13d,r13d
  40160d:	83 f8 7c             	cmp    eax,0x7c
  401610:	0f 84 9a 00 00 00    	je     4016b0 <bmp_copy+0xf0>
  401616:	41 8b 5d 14          	mov    ebx,DWORD PTR [r13+0x14]
  40161a:	89 df                	mov    edi,ebx
  40161c:	e8 5f f5 ff ff       	call   400b80 <malloc@plt>
  401621:	45 85 ff             	test   r15d,r15d
  401624:	48 89 c5             	mov    rbp,rax
  401627:	74 1f                	je     401648 <bmp_copy+0x88>
  401629:	85 db                	test   ebx,ebx
  40162b:	74 1b                	je     401648 <bmp_copy+0x88>
  40162d:	49 8b 76 10          	mov    rsi,QWORD PTR [r14+0x10]
  401631:	31 d2                	xor    edx,edx
  401633:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  401638:	0f b6 0c 16          	movzx  ecx,BYTE PTR [rsi+rdx*1]
  40163c:	88 4c 15 00          	mov    BYTE PTR [rbp+rdx*1+0x0],cl
  401640:	48 83 c2 01          	add    rdx,0x1
  401644:	39 d3                	cmp    ebx,edx
  401646:	77 f0                	ja     401638 <bmp_copy+0x78>
  401648:	bf 18 00 00 00       	mov    edi,0x18
  40164d:	e8 2e f5 ff ff       	call   400b80 <malloc@plt>
  401652:	4c 89 20             	mov    QWORD PTR [rax],r12
  401655:	4c 89 68 08          	mov    QWORD PTR [rax+0x8],r13
  401659:	48 89 68 10          	mov    QWORD PTR [rax+0x10],rbp
  40165d:	48 83 c4 08          	add    rsp,0x8
  401661:	5b                   	pop    rbx
  401662:	5d                   	pop    rbp
  401663:	41 5c                	pop    r12
  401665:	41 5d                	pop    r13
  401667:	41 5e                	pop    r14
  401669:	41 5f                	pop    r15
  40166b:	c3                   	ret    
  40166c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  401670:	bf 28 00 00 00       	mov    edi,0x28
  401675:	e8 06 f5 ff ff       	call   400b80 <malloc@plt>
  40167a:	49 89 c5             	mov    r13,rax
  40167d:	49 8b 46 08          	mov    rax,QWORD PTR [r14+0x8]
  401681:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  401684:	49 89 55 00          	mov    QWORD PTR [r13+0x0],rdx
  401688:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  40168c:	49 89 55 08          	mov    QWORD PTR [r13+0x8],rdx
  401690:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
  401694:	49 89 55 10          	mov    QWORD PTR [r13+0x10],rdx
  401698:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
  40169c:	49 89 55 18          	mov    QWORD PTR [r13+0x18],rdx
  4016a0:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
  4016a4:	49 89 45 20          	mov    QWORD PTR [r13+0x20],rax
  4016a8:	e9 69 ff ff ff       	jmp    401616 <bmp_copy+0x56>
  4016ad:	0f 1f 00             	nop    DWORD PTR [rax]
  4016b0:	bf 7c 00 00 00       	mov    edi,0x7c
  4016b5:	e8 c6 f4 ff ff       	call   400b80 <malloc@plt>
  4016ba:	49 89 c5             	mov    r13,rax
  4016bd:	49 8b 46 08          	mov    rax,QWORD PTR [r14+0x8]
  4016c1:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  4016c4:	49 89 55 00          	mov    QWORD PTR [r13+0x0],rdx
  4016c8:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  4016cc:	49 89 55 08          	mov    QWORD PTR [r13+0x8],rdx
  4016d0:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
  4016d4:	49 89 55 10          	mov    QWORD PTR [r13+0x10],rdx
  4016d8:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
  4016dc:	49 89 55 18          	mov    QWORD PTR [r13+0x18],rdx
  4016e0:	48 8b 50 20          	mov    rdx,QWORD PTR [rax+0x20]
  4016e4:	49 89 55 20          	mov    QWORD PTR [r13+0x20],rdx
  4016e8:	48 8b 50 28          	mov    rdx,QWORD PTR [rax+0x28]
  4016ec:	49 89 55 28          	mov    QWORD PTR [r13+0x28],rdx
  4016f0:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
  4016f4:	49 89 55 30          	mov    QWORD PTR [r13+0x30],rdx
  4016f8:	48 8b 50 38          	mov    rdx,QWORD PTR [rax+0x38]
  4016fc:	49 89 55 38          	mov    QWORD PTR [r13+0x38],rdx
  401700:	48 8b 50 40          	mov    rdx,QWORD PTR [rax+0x40]
  401704:	49 89 55 40          	mov    QWORD PTR [r13+0x40],rdx
  401708:	48 8b 50 48          	mov    rdx,QWORD PTR [rax+0x48]
  40170c:	49 89 55 48          	mov    QWORD PTR [r13+0x48],rdx
  401710:	48 8b 50 50          	mov    rdx,QWORD PTR [rax+0x50]
  401714:	49 89 55 50          	mov    QWORD PTR [r13+0x50],rdx
  401718:	48 8b 50 58          	mov    rdx,QWORD PTR [rax+0x58]
  40171c:	49 89 55 58          	mov    QWORD PTR [r13+0x58],rdx
  401720:	48 8b 50 60          	mov    rdx,QWORD PTR [rax+0x60]
  401724:	49 89 55 60          	mov    QWORD PTR [r13+0x60],rdx
  401728:	48 8b 50 68          	mov    rdx,QWORD PTR [rax+0x68]
  40172c:	49 89 55 68          	mov    QWORD PTR [r13+0x68],rdx
  401730:	48 8b 50 70          	mov    rdx,QWORD PTR [rax+0x70]
  401734:	49 89 55 70          	mov    QWORD PTR [r13+0x70],rdx
  401738:	8b 40 78             	mov    eax,DWORD PTR [rax+0x78]
  40173b:	41 89 45 78          	mov    DWORD PTR [r13+0x78],eax
  40173f:	e9 d2 fe ff ff       	jmp    401616 <bmp_copy+0x56>
  401744:	66 66 66 2e 0f 1f 84 	data32 data32 nop WORD PTR cs:[rax+rax*1+0x0]
  40174b:	00 00 00 00 00 

0000000000401750 <bmp_read>:
  401750:	41 56                	push   r14
  401752:	be 81 31 40 00       	mov    esi,0x403181
  401757:	41 55                	push   r13
  401759:	41 54                	push   r12
  40175b:	55                   	push   rbp
  40175c:	53                   	push   rbx
  40175d:	e8 3e f4 ff ff       	call   400ba0 <fopen@plt>
  401762:	48 85 c0             	test   rax,rax
  401765:	48 89 c3             	mov    rbx,rax
  401768:	0f 84 6a 01 00 00    	je     4018d8 <bmp_read+0x188>
  40176e:	bf 0e 00 00 00       	mov    edi,0xe
  401773:	e8 08 f4 ff ff       	call   400b80 <malloc@plt>
  401778:	48 89 d9             	mov    rcx,rbx
  40177b:	ba 01 00 00 00       	mov    edx,0x1
  401780:	be 0e 00 00 00       	mov    esi,0xe
  401785:	48 89 c7             	mov    rdi,rax
  401788:	49 89 c4             	mov    r12,rax
  40178b:	e8 30 f3 ff ff       	call   400ac0 <fread@plt>
  401790:	48 85 c0             	test   rax,rax
  401793:	0f 84 17 01 00 00    	je     4018b0 <bmp_read+0x160>
  401799:	41 8b 44 24 0a       	mov    eax,DWORD PTR [r12+0xa]
  40179e:	8d 68 f2             	lea    ebp,[rax-0xe]
  4017a1:	83 fd 28             	cmp    ebp,0x28
  4017a4:	74 3a                	je     4017e0 <bmp_read+0x90>
  4017a6:	83 fd 7c             	cmp    ebp,0x7c
  4017a9:	0f 84 d1 00 00 00    	je     401880 <bmp_read+0x130>
  4017af:	83 fd 38             	cmp    ebp,0x38
  4017b2:	0f 84 e0 00 00 00    	je     401898 <bmp_read+0x148>
  4017b8:	48 8b 0d c9 29 20 00 	mov    rcx,QWORD PTR [rip+0x2029c9]        # 604188 <stderr@@GLIBC_2.2.5>
  4017bf:	ba 21 00 00 00       	mov    edx,0x21
  4017c4:	be 01 00 00 00       	mov    esi,0x1
  4017c9:	bf 88 2f 40 00       	mov    edi,0x402f88
  4017ce:	e8 fd f3 ff ff       	call   400bd0 <fwrite@plt>
  4017d3:	31 c0                	xor    eax,eax
  4017d5:	5b                   	pop    rbx
  4017d6:	5d                   	pop    rbp
  4017d7:	41 5c                	pop    r12
  4017d9:	41 5d                	pop    r13
  4017db:	41 5e                	pop    r14
  4017dd:	c3                   	ret    
  4017de:	66 90                	xchg   ax,ax
  4017e0:	bf 28 00 00 00       	mov    edi,0x28
  4017e5:	e8 96 f3 ff ff       	call   400b80 <malloc@plt>
  4017ea:	49 89 c5             	mov    r13,rax
  4017ed:	4d 85 ed             	test   r13,r13
  4017f0:	74 c6                	je     4017b8 <bmp_read+0x68>
  4017f2:	48 63 f5             	movsxd rsi,ebp
  4017f5:	48 89 d9             	mov    rcx,rbx
  4017f8:	ba 01 00 00 00       	mov    edx,0x1
  4017fd:	4c 89 ef             	mov    rdi,r13
  401800:	e8 bb f2 ff ff       	call   400ac0 <fread@plt>
  401805:	48 85 c0             	test   rax,rax
  401808:	74 66                	je     401870 <bmp_read+0x120>
  40180a:	41 8b 44 24 02       	mov    eax,DWORD PTR [r12+0x2]
  40180f:	8d 70 f2             	lea    esi,[rax-0xe]
  401812:	29 ee                	sub    esi,ebp
  401814:	48 63 ee             	movsxd rbp,esi
  401817:	48 89 ef             	mov    rdi,rbp
  40181a:	e8 61 f3 ff ff       	call   400b80 <malloc@plt>
  40181f:	48 89 d9             	mov    rcx,rbx
  401822:	ba 01 00 00 00       	mov    edx,0x1
  401827:	48 89 ee             	mov    rsi,rbp
  40182a:	48 89 c7             	mov    rdi,rax
  40182d:	49 89 c6             	mov    r14,rax
  401830:	e8 8b f2 ff ff       	call   400ac0 <fread@plt>
  401835:	48 85 c0             	test   rax,rax
  401838:	74 36                	je     401870 <bmp_read+0x120>
  40183a:	bf 18 00 00 00       	mov    edi,0x18
  40183f:	e8 3c f3 ff ff       	call   400b80 <malloc@plt>
  401844:	48 89 df             	mov    rdi,rbx
  401847:	4c 89 20             	mov    QWORD PTR [rax],r12
  40184a:	4c 89 68 08          	mov    QWORD PTR [rax+0x8],r13
  40184e:	4c 89 70 10          	mov    QWORD PTR [rax+0x10],r14
  401852:	48 89 c5             	mov    rbp,rax
  401855:	e8 96 f2 ff ff       	call   400af0 <fclose@plt>
  40185a:	5b                   	pop    rbx
  40185b:	48 89 e8             	mov    rax,rbp
  40185e:	5d                   	pop    rbp
  40185f:	41 5c                	pop    r12
  401861:	41 5d                	pop    r13
  401863:	41 5e                	pop    r14
  401865:	c3                   	ret    
  401866:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40186d:	00 00 00 
  401870:	5b                   	pop    rbx
  401871:	5d                   	pop    rbp
  401872:	41 5c                	pop    r12
  401874:	41 5d                	pop    r13
  401876:	31 c0                	xor    eax,eax
  401878:	41 5e                	pop    r14
  40187a:	c3                   	ret    
  40187b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  401880:	bf 7c 00 00 00       	mov    edi,0x7c
  401885:	e8 f6 f2 ff ff       	call   400b80 <malloc@plt>
  40188a:	49 89 c5             	mov    r13,rax
  40188d:	e9 5b ff ff ff       	jmp    4017ed <bmp_read+0x9d>
  401892:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  401898:	bf 38 00 00 00       	mov    edi,0x38
  40189d:	e8 de f2 ff ff       	call   400b80 <malloc@plt>
  4018a2:	49 89 c5             	mov    r13,rax
  4018a5:	e9 43 ff ff ff       	jmp    4017ed <bmp_read+0x9d>
  4018aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4018b0:	48 8b 0d d1 28 20 00 	mov    rcx,QWORD PTR [rip+0x2028d1]        # 604188 <stderr@@GLIBC_2.2.5>
  4018b7:	ba 1a 00 00 00       	mov    edx,0x1a
  4018bc:	be 01 00 00 00       	mov    esi,0x1
  4018c1:	bf 64 2f 40 00       	mov    edi,0x402f64
  4018c6:	e8 05 f3 ff ff       	call   400bd0 <fwrite@plt>
  4018cb:	31 c0                	xor    eax,eax
  4018cd:	e9 03 ff ff ff       	jmp    4017d5 <bmp_read+0x85>
  4018d2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4018d8:	48 8b 0d a9 28 20 00 	mov    rcx,QWORD PTR [rip+0x2028a9]        # 604188 <stderr@@GLIBC_2.2.5>
  4018df:	ba 1b 00 00 00       	mov    edx,0x1b
  4018e4:	be 01 00 00 00       	mov    esi,0x1
  4018e9:	bf 48 2f 40 00       	mov    edi,0x402f48
  4018ee:	e8 dd f2 ff ff       	call   400bd0 <fwrite@plt>
  4018f3:	31 c0                	xor    eax,eax
  4018f5:	e9 db fe ff ff       	jmp    4017d5 <bmp_read+0x85>
  4018fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000401900 <bmp_save>:
  401900:	41 55                	push   r13
  401902:	41 54                	push   r12
  401904:	55                   	push   rbp
  401905:	48 89 f5             	mov    rbp,rsi
  401908:	be 7f 2f 40 00       	mov    esi,0x402f7f
  40190d:	53                   	push   rbx
  40190e:	48 83 ec 08          	sub    rsp,0x8
  401912:	e8 89 f2 ff ff       	call   400ba0 <fopen@plt>
  401917:	48 85 c0             	test   rax,rax
  40191a:	48 89 c3             	mov    rbx,rax
  40191d:	74 1d                	je     40193c <bmp_save+0x3c>
  40191f:	48 8b 7d 00          	mov    rdi,QWORD PTR [rbp+0x0]
  401923:	48 89 c1             	mov    rcx,rax
  401926:	ba 01 00 00 00       	mov    edx,0x1
  40192b:	be 0e 00 00 00       	mov    esi,0xe
  401930:	e8 9b f2 ff ff       	call   400bd0 <fwrite@plt>
  401935:	85 c0                	test   eax,eax
  401937:	49 89 c4             	mov    r12,rax
  40193a:	75 14                	jne    401950 <bmp_save+0x50>
  40193c:	31 c0                	xor    eax,eax
  40193e:	48 83 c4 08          	add    rsp,0x8
  401942:	5b                   	pop    rbx
  401943:	5d                   	pop    rbp
  401944:	41 5c                	pop    r12
  401946:	41 5d                	pop    r13
  401948:	c3                   	ret    
  401949:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  401950:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
  401954:	48 8b 7d 08          	mov    rdi,QWORD PTR [rbp+0x8]
  401958:	48 89 d9             	mov    rcx,rbx
  40195b:	ba 01 00 00 00       	mov    edx,0x1
  401960:	8b 70 0a             	mov    esi,DWORD PTR [rax+0xa]
  401963:	48 83 ee 0e          	sub    rsi,0xe
  401967:	e8 64 f2 ff ff       	call   400bd0 <fwrite@plt>
  40196c:	85 c0                	test   eax,eax
  40196e:	49 89 c5             	mov    r13,rax
  401971:	74 c9                	je     40193c <bmp_save+0x3c>
  401973:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
  401977:	48 8b 7d 10          	mov    rdi,QWORD PTR [rbp+0x10]
  40197b:	48 89 d9             	mov    rcx,rbx
  40197e:	ba 01 00 00 00       	mov    edx,0x1
  401983:	8b 70 02             	mov    esi,DWORD PTR [rax+0x2]
  401986:	2b 70 0a             	sub    esi,DWORD PTR [rax+0xa]
  401989:	e8 42 f2 ff ff       	call   400bd0 <fwrite@plt>
  40198e:	85 c0                	test   eax,eax
  401990:	74 aa                	je     40193c <bmp_save+0x3c>
  401992:	45 01 ec             	add    r12d,r13d
  401995:	48 89 df             	mov    rdi,rbx
  401998:	41 01 c4             	add    r12d,eax
  40199b:	e8 50 f1 ff ff       	call   400af0 <fclose@plt>
  4019a0:	44 89 e0             	mov    eax,r12d
  4019a3:	eb 99                	jmp    40193e <bmp_save+0x3e>
  4019a5:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  4019ac:	00 00 00 00 

00000000004019b0 <bmp_delete>:
  4019b0:	53                   	push   rbx
  4019b1:	48 89 fb             	mov    rbx,rdi
  4019b4:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
  4019b7:	e8 c4 f0 ff ff       	call   400a80 <free@plt>
  4019bc:	48 8b 7b 08          	mov    rdi,QWORD PTR [rbx+0x8]
  4019c0:	e8 bb f0 ff ff       	call   400a80 <free@plt>
  4019c5:	48 8b 7b 10          	mov    rdi,QWORD PTR [rbx+0x10]
  4019c9:	e8 b2 f0 ff ff       	call   400a80 <free@plt>
  4019ce:	48 89 df             	mov    rdi,rbx
  4019d1:	5b                   	pop    rbx
  4019d2:	e9 a9 f0 ff ff       	jmp    400a80 <free@plt>
  4019d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  4019de:	00 00 

00000000004019e0 <bmp_width>:
  4019e0:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  4019e4:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
  4019e7:	c3                   	ret    
  4019e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4019ef:	00 

00000000004019f0 <bmp_height>:
  4019f0:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  4019f4:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  4019f7:	c3                   	ret    
  4019f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4019ff:	00 

0000000000401a00 <bmp_data>:
  401a00:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
  401a04:	c3                   	ret    
  401a05:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  401a0c:	00 00 00 00 

0000000000401a10 <bmp_bit_count>:
  401a10:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  401a14:	0f b7 40 0e          	movzx  eax,WORD PTR [rax+0xe]
  401a18:	c3                   	ret    
  401a19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000401a20 <bmp_compression>:
  401a20:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  401a24:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  401a27:	c3                   	ret    
  401a28:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  401a2f:	00 

0000000000401a30 <bmp_set_bit_count>:
  401a30:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  401a34:	66 89 70 0e          	mov    WORD PTR [rax+0xe],si
  401a38:	c3                   	ret    
  401a39:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000401a40 <bmp_bytes_per_row>:
  401a40:	48 8b 57 08          	mov    rdx,QWORD PTR [rdi+0x8]
  401a44:	0f b7 42 0e          	movzx  eax,WORD PTR [rdx+0xe]
  401a48:	0f af 42 04          	imul   eax,DWORD PTR [rdx+0x4]
  401a4c:	83 c0 1f             	add    eax,0x1f
  401a4f:	c1 e8 05             	shr    eax,0x5
  401a52:	c1 e0 02             	shl    eax,0x2
  401a55:	c3                   	ret    
  401a56:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401a5d:	00 00 00 

0000000000401a60 <bmp_convert_24_to_32_bpp>:
  401a60:	41 55                	push   r13
  401a62:	41 54                	push   r12
  401a64:	55                   	push   rbp
  401a65:	48 89 fd             	mov    rbp,rdi
  401a68:	53                   	push   rbx
  401a69:	48 83 ec 08          	sub    rsp,0x8
  401a6d:	48 8b 5f 08          	mov    rbx,QWORD PTR [rdi+0x8]
  401a71:	44 8b 6b 04          	mov    r13d,DWORD PTR [rbx+0x4]
  401a75:	44 0f af 6b 08       	imul   r13d,DWORD PTR [rbx+0x8]
  401a7a:	44 89 ef             	mov    edi,r13d
  401a7d:	c1 e7 05             	shl    edi,0x5
  401a80:	e8 fb f0 ff ff       	call   400b80 <malloc@plt>
  401a85:	31 d2                	xor    edx,edx
  401a87:	31 c9                	xor    ecx,ecx
  401a89:	45 85 ed             	test   r13d,r13d
  401a8c:	49 89 c4             	mov    r12,rax
  401a8f:	48 8b 7d 10          	mov    rdi,QWORD PTR [rbp+0x10]
  401a93:	74 44                	je     401ad9 <bmp_convert_24_to_32_bpp+0x79>
  401a95:	0f 1f 00             	nop    DWORD PTR [rax]
  401a98:	8d 42 02             	lea    eax,[rdx+0x2]
  401a9b:	41 89 d2             	mov    r10d,edx
  401a9e:	46 0f b6 14 17       	movzx  r10d,BYTE PTR [rdi+r10*1]
  401aa3:	0f b6 34 07          	movzx  esi,BYTE PTR [rdi+rax*1]
  401aa7:	8d 42 01             	lea    eax,[rdx+0x1]
  401aaa:	83 c2 03             	add    edx,0x3
  401aad:	44 0f b6 0c 07       	movzx  r9d,BYTE PTR [rdi+rax*1]
  401ab2:	81 c6 00 ff 00 00    	add    esi,0xff00
  401ab8:	c1 e6 08             	shl    esi,0x8
  401abb:	44 01 ce             	add    esi,r9d
  401abe:	41 89 c9             	mov    r9d,ecx
  401ac1:	83 c1 01             	add    ecx,0x1
  401ac4:	c1 e6 08             	shl    esi,0x8
  401ac7:	44 01 d6             	add    esi,r10d
  401aca:	43 89 34 8c          	mov    DWORD PTR [r12+r9*4],esi
  401ace:	8b 73 04             	mov    esi,DWORD PTR [rbx+0x4]
  401ad1:	0f af 73 08          	imul   esi,DWORD PTR [rbx+0x8]
  401ad5:	39 ce                	cmp    esi,ecx
  401ad7:	77 bf                	ja     401a98 <bmp_convert_24_to_32_bpp+0x38>
  401ad9:	e8 a2 ef ff ff       	call   400a80 <free@plt>
  401ade:	48 8b 45 08          	mov    rax,QWORD PTR [rbp+0x8]
  401ae2:	ba 20 00 00 00       	mov    edx,0x20
  401ae7:	48 8b 4d 00          	mov    rcx,QWORD PTR [rbp+0x0]
  401aeb:	66 89 50 0e          	mov    WORD PTR [rax+0xe],dx
  401aef:	8b 50 08             	mov    edx,DWORD PTR [rax+0x8]
  401af2:	0f af 50 04          	imul   edx,DWORD PTR [rax+0x4]
  401af6:	4c 89 65 10          	mov    QWORD PTR [rbp+0x10],r12
  401afa:	c1 e2 02             	shl    edx,0x2
  401afd:	89 50 14             	mov    DWORD PTR [rax+0x14],edx
  401b00:	8b 00                	mov    eax,DWORD PTR [rax]
  401b02:	8d 44 02 0e          	lea    eax,[rdx+rax*1+0xe]
  401b06:	89 41 02             	mov    DWORD PTR [rcx+0x2],eax
  401b09:	48 83 c4 08          	add    rsp,0x8
  401b0d:	5b                   	pop    rbx
  401b0e:	5d                   	pop    rbp
  401b0f:	41 5c                	pop    r12
  401b11:	41 5d                	pop    r13
  401b13:	c3                   	ret    
  401b14:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401b1b:	00 00 00 
  401b1e:	66 90                	xchg   ax,ax

0000000000401b20 <setear_buffer>:
  401b20:	55                   	push   rbp
  401b21:	48 89 f5             	mov    rbp,rsi
  401b24:	53                   	push   rbx
  401b25:	48 89 fb             	mov    rbx,rdi
  401b28:	48 89 f7             	mov    rdi,rsi
  401b2b:	48 83 ec 08          	sub    rsp,0x8
  401b2f:	e8 cc fe ff ff       	call   401a00 <bmp_data>
  401b34:	48 89 ef             	mov    rdi,rbp
  401b37:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
  401b3b:	e8 a0 fe ff ff       	call   4019e0 <bmp_width>
  401b40:	48 89 ef             	mov    rdi,rbp
  401b43:	89 03                	mov    DWORD PTR [rbx],eax
  401b45:	e8 a6 fe ff ff       	call   4019f0 <bmp_height>
  401b4a:	48 89 ef             	mov    rdi,rbp
  401b4d:	89 43 04             	mov    DWORD PTR [rbx+0x4],eax
  401b50:	e8 eb fe ff ff       	call   401a40 <bmp_bytes_per_row>
  401b55:	89 43 08             	mov    DWORD PTR [rbx+0x8],eax
  401b58:	48 83 c4 08          	add    rsp,0x8
  401b5c:	5b                   	pop    rbx
  401b5d:	5d                   	pop    rbp
  401b5e:	c3                   	ret    
  401b5f:	90                   	nop

0000000000401b60 <imagenes_abrir>:
  401b60:	53                   	push   rbx
  401b61:	48 89 fb             	mov    rbx,rdi
  401b64:	48 8b 7f 78          	mov    rdi,QWORD PTR [rdi+0x78]
  401b68:	e8 e3 fb ff ff       	call   401750 <bmp_read>
  401b6d:	48 85 c0             	test   rax,rax
  401b70:	48 89 05 39 26 20 00 	mov    QWORD PTR [rip+0x202639],rax        # 6041b0 <src_img>
  401b77:	0f 84 e4 00 00 00    	je     401c61 <imagenes_abrir+0x101>
  401b7d:	48 89 c7             	mov    rdi,rax
  401b80:	e8 9b fe ff ff       	call   401a20 <bmp_compression>
  401b85:	85 c0                	test   eax,eax
  401b87:	0f 85 f9 00 00 00    	jne    401c86 <imagenes_abrir+0x126>
  401b8d:	48 8b 3d 1c 26 20 00 	mov    rdi,QWORD PTR [rip+0x20261c]        # 6041b0 <src_img>
  401b94:	e8 77 fe ff ff       	call   401a10 <bmp_bit_count>
  401b99:	66 83 f8 18          	cmp    ax,0x18
  401b9d:	0f 84 ad 00 00 00    	je     401c50 <imagenes_abrir+0xf0>
  401ba3:	48 8b 3d 06 26 20 00 	mov    rdi,QWORD PTR [rip+0x202606]        # 6041b0 <src_img>
  401baa:	be 01 00 00 00       	mov    esi,0x1
  401baf:	e8 0c fa ff ff       	call   4015c0 <bmp_copy>
  401bb4:	48 8b bb 80 00 00 00 	mov    rdi,QWORD PTR [rbx+0x80]
  401bbb:	48 89 05 e6 25 20 00 	mov    QWORD PTR [rip+0x2025e6],rax        # 6041a8 <dst_img>
  401bc2:	48 85 ff             	test   rdi,rdi
  401bc5:	74 69                	je     401c30 <imagenes_abrir+0xd0>
  401bc7:	e8 84 fb ff ff       	call   401750 <bmp_read>
  401bcc:	48 85 c0             	test   rax,rax
  401bcf:	48 89 05 ca 25 20 00 	mov    QWORD PTR [rip+0x2025ca],rax        # 6041a0 <src_img2>
  401bd6:	0f 84 f4 00 00 00    	je     401cd0 <imagenes_abrir+0x170>
  401bdc:	48 89 c7             	mov    rdi,rax
  401bdf:	e8 3c fe ff ff       	call   401a20 <bmp_compression>
  401be4:	85 c0                	test   eax,eax
  401be6:	0f 85 bf 00 00 00    	jne    401cab <imagenes_abrir+0x14b>
  401bec:	48 8b 3d ad 25 20 00 	mov    rdi,QWORD PTR [rip+0x2025ad]        # 6041a0 <src_img2>
  401bf3:	e8 18 fe ff ff       	call   401a10 <bmp_bit_count>
  401bf8:	66 83 f8 18          	cmp    ax,0x18
  401bfc:	74 42                	je     401c40 <imagenes_abrir+0xe0>
  401bfe:	48 8b 35 9b 25 20 00 	mov    rsi,QWORD PTR [rip+0x20259b]        # 6041a0 <src_img2>
  401c05:	48 8d 7b 30          	lea    rdi,[rbx+0x30]
  401c09:	e8 12 ff ff ff       	call   401b20 <setear_buffer>
  401c0e:	48 8b 35 9b 25 20 00 	mov    rsi,QWORD PTR [rip+0x20259b]        # 6041b0 <src_img>
  401c15:	48 8d 7b 10          	lea    rdi,[rbx+0x10]
  401c19:	e8 02 ff ff ff       	call   401b20 <setear_buffer>
  401c1e:	48 8d 7b 50          	lea    rdi,[rbx+0x50]
  401c22:	48 8b 35 7f 25 20 00 	mov    rsi,QWORD PTR [rip+0x20257f]        # 6041a8 <dst_img>
  401c29:	5b                   	pop    rbx
  401c2a:	e9 f1 fe ff ff       	jmp    401b20 <setear_buffer>
  401c2f:	90                   	nop
  401c30:	48 c7 05 65 25 20 00 	mov    QWORD PTR [rip+0x202565],0x0        # 6041a0 <src_img2>
  401c37:	00 00 00 00 
  401c3b:	eb d1                	jmp    401c0e <imagenes_abrir+0xae>
  401c3d:	0f 1f 00             	nop    DWORD PTR [rax]
  401c40:	48 8b 3d 59 25 20 00 	mov    rdi,QWORD PTR [rip+0x202559]        # 6041a0 <src_img2>
  401c47:	e8 14 fe ff ff       	call   401a60 <bmp_convert_24_to_32_bpp>
  401c4c:	eb b0                	jmp    401bfe <imagenes_abrir+0x9e>
  401c4e:	66 90                	xchg   ax,ax
  401c50:	48 8b 3d 59 25 20 00 	mov    rdi,QWORD PTR [rip+0x202559]        # 6041b0 <src_img>
  401c57:	e8 04 fe ff ff       	call   401a60 <bmp_convert_24_to_32_bpp>
  401c5c:	e9 42 ff ff ff       	jmp    401ba3 <imagenes_abrir+0x43>
  401c61:	48 8b 0d 20 25 20 00 	mov    rcx,QWORD PTR [rip+0x202520]        # 604188 <stderr@@GLIBC_2.2.5>
  401c68:	bf b0 2f 40 00       	mov    edi,0x402fb0
  401c6d:	ba 20 00 00 00       	mov    edx,0x20
  401c72:	be 01 00 00 00       	mov    esi,0x1
  401c77:	e8 54 ef ff ff       	call   400bd0 <fwrite@plt>
  401c7c:	bf 01 00 00 00       	mov    edi,0x1
  401c81:	e8 3a ef ff ff       	call   400bc0 <exit@plt>
  401c86:	48 8b 0d fb 24 20 00 	mov    rcx,QWORD PTR [rip+0x2024fb]        # 604188 <stderr@@GLIBC_2.2.5>
  401c8d:	bf d8 2f 40 00       	mov    edi,0x402fd8
  401c92:	ba 28 00 00 00       	mov    edx,0x28
  401c97:	be 01 00 00 00       	mov    esi,0x1
  401c9c:	e8 2f ef ff ff       	call   400bd0 <fwrite@plt>
  401ca1:	bf 01 00 00 00       	mov    edi,0x1
  401ca6:	e8 15 ef ff ff       	call   400bc0 <exit@plt>
  401cab:	48 8b 0d d6 24 20 00 	mov    rcx,QWORD PTR [rip+0x2024d6]        # 604188 <stderr@@GLIBC_2.2.5>
  401cb2:	bf 30 30 40 00       	mov    edi,0x403030
  401cb7:	ba 2a 00 00 00       	mov    edx,0x2a
  401cbc:	be 01 00 00 00       	mov    esi,0x1
  401cc1:	e8 0a ef ff ff       	call   400bd0 <fwrite@plt>
  401cc6:	bf 01 00 00 00       	mov    edi,0x1
  401ccb:	e8 f0 ee ff ff       	call   400bc0 <exit@plt>
  401cd0:	48 8b 0d b1 24 20 00 	mov    rcx,QWORD PTR [rip+0x2024b1]        # 604188 <stderr@@GLIBC_2.2.5>
  401cd7:	bf 08 30 40 00       	mov    edi,0x403008
  401cdc:	ba 22 00 00 00       	mov    edx,0x22
  401ce1:	be 01 00 00 00       	mov    esi,0x1
  401ce6:	e8 e5 ee ff ff       	call   400bd0 <fwrite@plt>
  401ceb:	bf 01 00 00 00       	mov    edi,0x1
  401cf0:	e8 cb ee ff ff       	call   400bc0 <exit@plt>
  401cf5:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  401cfc:	00 00 00 00 

0000000000401d00 <imagenes_guardar>:
  401d00:	48 8b 35 a1 24 20 00 	mov    rsi,QWORD PTR [rip+0x2024a1]        # 6041a8 <dst_img>
  401d07:	48 81 c7 88 00 00 00 	add    rdi,0x88
  401d0e:	e9 ed fb ff ff       	jmp    401900 <bmp_save>
  401d13:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nop WORD PTR cs:[rax+rax*1+0x0]
  401d1a:	84 00 00 00 00 00 

0000000000401d20 <imagenes_liberar>:
  401d20:	48 83 ec 08          	sub    rsp,0x8
  401d24:	48 8b 3d 85 24 20 00 	mov    rdi,QWORD PTR [rip+0x202485]        # 6041b0 <src_img>
  401d2b:	e8 80 fc ff ff       	call   4019b0 <bmp_delete>
  401d30:	48 8b 3d 69 24 20 00 	mov    rdi,QWORD PTR [rip+0x202469]        # 6041a0 <src_img2>
  401d37:	48 85 ff             	test   rdi,rdi
  401d3a:	74 05                	je     401d41 <imagenes_liberar+0x21>
  401d3c:	e8 6f fc ff ff       	call   4019b0 <bmp_delete>
  401d41:	48 8b 3d 60 24 20 00 	mov    rdi,QWORD PTR [rip+0x202460]        # 6041a8 <dst_img>
  401d48:	48 83 c4 08          	add    rsp,0x8
  401d4c:	e9 5f fc ff ff       	jmp    4019b0 <bmp_delete>
  401d51:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401d58:	00 00 00 
  401d5b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401d60 <ayuda_diff>:
  401d60:	48 83 ec 08          	sub    rsp,0x8
  401d64:	bf 5b 30 40 00       	mov    edi,0x40305b
  401d69:	e8 42 ed ff ff       	call   400ab0 <puts@plt>
  401d6e:	bf 70 30 40 00       	mov    edi,0x403070
  401d73:	e8 38 ed ff ff       	call   400ab0 <puts@plt>
  401d78:	bf b0 30 40 00       	mov    edi,0x4030b0
  401d7d:	48 83 c4 08          	add    rsp,0x8
  401d81:	e9 2a ed ff ff       	jmp    400ab0 <puts@plt>
  401d86:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401d8d:	00 00 00 

0000000000401d90 <leer_params_diff>:
  401d90:	48 8b b7 80 00 00 00 	mov    rsi,QWORD PTR [rdi+0x80]
  401d97:	48 85 f6             	test   rsi,rsi
  401d9a:	74 0c                	je     401da8 <leer_params_diff+0x18>
  401d9c:	bf eb 26 40 00       	mov    edi,0x4026eb
  401da1:	31 c0                	xor    eax,eax
  401da3:	e9 68 ed ff ff       	jmp    400b10 <printf@plt>
  401da8:	50                   	push   rax
  401da9:	bf 08 31 40 00       	mov    edi,0x403108
  401dae:	e8 fd ec ff ff       	call   400ab0 <puts@plt>
  401db3:	31 c0                	xor    eax,eax
  401db5:	e8 a6 ff ff ff       	call   401d60 <ayuda_diff>
  401dba:	bf 01 00 00 00       	mov    edi,0x1
  401dbf:	e8 fc ed ff ff       	call   400bc0 <exit@plt>
  401dc4:	66 66 66 2e 0f 1f 84 	data32 data32 nop WORD PTR cs:[rax+rax*1+0x0]
  401dcb:	00 00 00 00 00 

0000000000401dd0 <aplicar_diff>:
  401dd0:	41 57                	push   r15
  401dd2:	41 56                	push   r14
  401dd4:	41 55                	push   r13
  401dd6:	41 54                	push   r12
  401dd8:	55                   	push   rbp
  401dd9:	bd a0 21 40 00       	mov    ebp,0x4021a0
  401dde:	53                   	push   rbx
  401ddf:	48 89 fb             	mov    rbx,rdi
  401de2:	48 83 ec 68          	sub    rsp,0x68
  401de6:	8b 47 08             	mov    eax,DWORD PTR [rdi+0x8]
  401de9:	44 8b 67 10          	mov    r12d,DWORD PTR [rdi+0x10]
  401ded:	44 8b 6f 14          	mov    r13d,DWORD PTR [rdi+0x14]
  401df1:	8b 4f 30             	mov    ecx,DWORD PTR [rdi+0x30]
  401df4:	8b 57 34             	mov    edx,DWORD PTR [rdi+0x34]
  401df7:	4c 8b 77 20          	mov    r14,QWORD PTR [rdi+0x20]
  401dfb:	85 c0                	test   eax,eax
  401dfd:	b8 40 1f 40 00       	mov    eax,0x401f40
  401e02:	44 89 64 24 20       	mov    DWORD PTR [rsp+0x20],r12d
  401e07:	48 0f 45 e8          	cmovne rbp,rax
  401e0b:	44 89 6c 24 24       	mov    DWORD PTR [rsp+0x24],r13d
  401e10:	89 4c 24 40          	mov    DWORD PTR [rsp+0x40],ecx
  401e14:	89 54 24 44          	mov    DWORD PTR [rsp+0x44],edx
  401e18:	48 8b 74 24 40       	mov    rsi,QWORD PTR [rsp+0x40]
  401e1d:	48 39 74 24 20       	cmp    QWORD PTR [rsp+0x20],rsi
  401e22:	44 8b 4f 18          	mov    r9d,DWORD PTR [rdi+0x18]
  401e26:	4c 8b 7f 40          	mov    r15,QWORD PTR [rdi+0x40]
  401e2a:	8b 47 38             	mov    eax,DWORD PTR [rdi+0x38]
  401e2d:	74 1c                	je     401e4b <aplicar_diff+0x7b>
  401e2f:	bf 40 31 40 00       	mov    edi,0x403140
  401e34:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
  401e38:	44 89 4c 24 18       	mov    DWORD PTR [rsp+0x18],r9d
  401e3d:	e8 6e ed ff ff       	call   400bb0 <perror@plt>
  401e42:	8b 44 24 1c          	mov    eax,DWORD PTR [rsp+0x1c]
  401e46:	44 8b 4c 24 18       	mov    r9d,DWORD PTR [rsp+0x18]
  401e4b:	8b 4b 58             	mov    ecx,DWORD PTR [rbx+0x58]
  401e4e:	48 8b 53 60          	mov    rdx,QWORD PTR [rbx+0x60]
  401e52:	45 89 e8             	mov    r8d,r13d
  401e55:	89 04 24             	mov    DWORD PTR [rsp],eax
  401e58:	4c 89 fe             	mov    rsi,r15
  401e5b:	4c 89 f7             	mov    rdi,r14
  401e5e:	89 4c 24 08          	mov    DWORD PTR [rsp+0x8],ecx
  401e62:	44 89 e1             	mov    ecx,r12d
  401e65:	ff d5                	call   rbp
  401e67:	48 83 c4 68          	add    rsp,0x68
  401e6b:	5b                   	pop    rbx
  401e6c:	5d                   	pop    rbp
  401e6d:	41 5c                	pop    r12
  401e6f:	41 5d                	pop    r13
  401e71:	41 5e                	pop    r14
  401e73:	41 5f                	pop    r15
  401e75:	c3                   	ret    
  401e76:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401e7d:	00 00 00 

0000000000401e80 <leer_params_blur>:
  401e80:	55                   	push   rbp
  401e81:	48 89 d5             	mov    rbp,rdx
  401e84:	53                   	push   rbx
  401e85:	48 63 de             	movsxd rbx,esi
  401e88:	31 f6                	xor    esi,esi
  401e8a:	48 c1 e3 03          	shl    rbx,0x3
  401e8e:	48 83 ec 08          	sub    rsp,0x8
  401e92:	48 c7 47 70 b8 41 60 	mov    QWORD PTR [rdi+0x70],0x6041b8
  401e99:	00 
  401e9a:	48 8b 7c 1a f0       	mov    rdi,QWORD PTR [rdx+rbx*1-0x10]
  401e9f:	e8 2c ec ff ff       	call   400ad0 <strtod@plt>
  401ea4:	66 0f 14 c0          	unpcklpd xmm0,xmm0
  401ea8:	48 8b 7c 1d f8       	mov    rdi,QWORD PTR [rbp+rbx*1-0x8]
  401ead:	ba 0a 00 00 00       	mov    edx,0xa
  401eb2:	31 f6                	xor    esi,esi
  401eb4:	66 0f 5a c8          	cvtpd2ps xmm1,xmm0
  401eb8:	f3 0f 11 0d f8 22 20 	movss  DWORD PTR [rip+0x2022f8],xmm1        # 6041b8 <extra>
  401ebf:	00 
  401ec0:	e8 ab ec ff ff       	call   400b70 <strtol@plt>
  401ec5:	89 05 f1 22 20 00    	mov    DWORD PTR [rip+0x2022f1],eax        # 6041bc <extra+0x4>
  401ecb:	48 83 c4 08          	add    rsp,0x8
  401ecf:	5b                   	pop    rbx
  401ed0:	5d                   	pop    rbp
  401ed1:	c3                   	ret    
  401ed2:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nop WORD PTR cs:[rax+rax*1+0x0]
  401ed9:	1f 84 00 00 00 00 00 

0000000000401ee0 <aplicar_blur>:
  401ee0:	8b 57 08             	mov    edx,DWORD PTR [rdi+0x8]
  401ee3:	4c 8b 4f 70          	mov    r9,QWORD PTR [rdi+0x70]
  401ee7:	b8 d0 23 40 00       	mov    eax,0x4023d0
  401eec:	8b 4f 14             	mov    ecx,DWORD PTR [rdi+0x14]
  401eef:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  401ef3:	85 d2                	test   edx,edx
  401ef5:	ba d0 1f 40 00       	mov    edx,0x401fd0
  401efa:	45 8b 41 04          	mov    r8d,DWORD PTR [r9+0x4]
  401efe:	48 0f 45 c2          	cmovne rax,rdx
  401f02:	f3 41 0f 10 01       	movss  xmm0,DWORD PTR [r9]
  401f07:	8b 57 10             	mov    edx,DWORD PTR [rdi+0x10]
  401f0a:	48 8b 7f 20          	mov    rdi,QWORD PTR [rdi+0x20]
  401f0e:	ff e0                	jmp    rax

0000000000401f10 <ayuda_blur>:
  401f10:	48 83 ec 08          	sub    rsp,0x8
  401f14:	bf 75 31 40 00       	mov    edi,0x403175
  401f19:	e8 92 eb ff ff       	call   400ab0 <puts@plt>
  401f1e:	bf 88 31 40 00       	mov    edi,0x403188
  401f23:	e8 88 eb ff ff       	call   400ab0 <puts@plt>
  401f28:	bf e8 31 40 00       	mov    edi,0x4031e8
  401f2d:	48 83 c4 08          	add    rsp,0x8
  401f31:	e9 7a eb ff ff       	jmp    400ab0 <puts@plt>
  401f36:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401f3d:	00 00 00 

0000000000401f40 <diff_asm>:
  401f40:	55                   	push   rbp
  401f41:	48 89 e5             	mov    rbp,rsp
  401f44:	41 57                	push   r15
  401f46:	41 54                	push   r12
  401f48:	41 55                	push   r13
  401f4a:	49 89 d4             	mov    r12,rdx
  401f4d:	44 89 c0             	mov    eax,r8d
  401f50:	89 c9                	mov    ecx,ecx
  401f52:	48 f7 e1             	mul    rcx
  401f55:	4d 31 ff             	xor    r15,r15

0000000000401f58 <diff_asm.ciclo>:
  401f58:	49 39 c7             	cmp    r15,rax
  401f5b:	74 5d                	je     401fba <diff_asm.fin>
  401f5d:	f3 42 0f 6f 1c bf    	movdqu xmm3,XMMWORD PTR [rdi+r15*4]
  401f63:	f3 46 0f 6f 3c be    	movdqu xmm15,XMMWORD PTR [rsi+r15*4]
  401f69:	f3 45 0f 6f f7       	movdqu xmm14,xmm15
  401f6e:	66 44 0f da fb       	pminub xmm15,xmm3
  401f73:	66 41 0f de de       	pmaxub xmm3,xmm14
  401f78:	66 41 0f f8 df       	psubb  xmm3,xmm15
  401f7d:	f3 0f 6f e3          	movdqu xmm4,xmm3
  401f81:	f3 0f 6f eb          	movdqu xmm5,xmm3
  401f85:	66 0f 73 fc 01       	pslldq xmm4,0x1
  401f8a:	66 0f 73 fd 02       	pslldq xmm5,0x2
  401f8f:	f3 0f 6f f5          	movdqu xmm6,xmm5
  401f93:	66 0f de f4          	pmaxub xmm6,xmm4
  401f97:	66 0f de f3          	pmaxub xmm6,xmm3
  401f9b:	66 0f 38 00 34 25 50 	pshufb xmm6,XMMWORD PTR ds:0x403250
  401fa2:	32 40 00 
  401fa5:	66 0f ec 34 25 60 32 	paddsb xmm6,XMMWORD PTR ds:0x403260
  401fac:	40 00 
  401fae:	f3 43 0f 7f 34 bc    	movdqu XMMWORD PTR [r12+r15*4],xmm6
  401fb4:	41 83 c7 04          	add    r15d,0x4
  401fb8:	eb 9e                	jmp    401f58 <diff_asm.ciclo>

0000000000401fba <diff_asm.fin>:
  401fba:	41 5d                	pop    r13
  401fbc:	41 5c                	pop    r12
  401fbe:	41 5f                	pop    r15
  401fc0:	5d                   	pop    rbp
  401fc1:	c3                   	ret    
  401fc2:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401fc9:	00 00 00 
  401fcc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000401fd0 <_blur_asm>:
  401fd0:	55                   	push   rbp
  401fd1:	41 54                	push   r12
  401fd3:	41 55                	push   r13
  401fd5:	41 56                	push   r14
  401fd7:	41 57                	push   r15
  401fd9:	53                   	push   rbx
  401fda:	48 83 ec 08          	sub    rsp,0x8
  401fde:	49 89 fc             	mov    r12,rdi
  401fe1:	49 89 f5             	mov    r13,rsi
  401fe4:	41 89 d6             	mov    r14d,edx
  401fe7:	41 89 cf             	mov    r15d,ecx
  401fea:	44 89 c3             	mov    ebx,r8d
  401fed:	44 89 c7             	mov    edi,r8d
  401ff0:	e8 cb 02 00 00       	call   4022c0 <matrizDeConvolucion>
  401ff5:	49 89 c2             	mov    r10,rax
  401ff8:	49 89 db             	mov    r11,rbx
  401ffb:	49 d1 e3             	shl    r11,1
  401ffe:	4d 39 de             	cmp    r14,r11
  402001:	0f 8c 1c 01 00 00    	jl     402123 <blur_asm.end>
  402007:	4d 39 df             	cmp    r15,r11
  40200a:	0f 8c 13 01 00 00    	jl     402123 <blur_asm.end>
  402010:	49 ff c3             	inc    r11
  402013:	4c 89 d8             	mov    rax,r11
  402016:	49 f7 e3             	mul    r11
  402019:	48 89 c5             	mov    rbp,rax
  40201c:	48 89 d8             	mov    rax,rbx
  40201f:	41 f7 e7             	mul    r15d
  402022:	48 01 d8             	add    rax,rbx
  402025:	48 89 c3             	mov    rbx,rax
  402028:	4d 89 f1             	mov    r9,r14
  40202b:	4d 89 f8             	mov    r8,r15
  40202e:	49 ff cb             	dec    r11
  402031:	4c 89 c8             	mov    rax,r9
  402034:	4c 29 d8             	sub    rax,r11
  402037:	49 f7 e0             	mul    r8
  40203a:	4c 29 d8             	sub    rax,r11
  40203d:	48 c1 e0 02          	shl    rax,0x2
  402041:	48 31 ff             	xor    rdi,rdi
  402044:	48 31 f6             	xor    rsi,rsi
  402047:	48 31 d2             	xor    rdx,rdx
  40204a:	48 31 c9             	xor    rcx,rcx
  40204d:	66 0f ef ff          	pxor   xmm7,xmm7
  402051:	4d 89 fe             	mov    r14,r15
  402054:	4d 29 df             	sub    r15,r11
  402057:	49 c1 e3 02          	shl    r11,0x2
  40205b:	49 c1 e0 02          	shl    r8,0x2
  40205f:	48 c1 e3 02          	shl    rbx,0x2
  402063:	49 c1 e7 02          	shl    r15,0x2
  402067:	49 c1 e6 02          	shl    r14,0x2

000000000040206b <blur_asm.ciclo_matriz>:
  40206b:	48 39 c7             	cmp    rdi,rax
  40206e:	0f 8f af 00 00 00    	jg     402123 <blur_asm.end>

0000000000402074 <blur_asm.ciclo_kernel>:
  402074:	48 39 e9             	cmp    rcx,rbp
  402077:	74 60                	je     4020d9 <blur_asm.insert>
  402079:	49 89 f1             	mov    r9,rsi
  40207c:	49 01 f9             	add    r9,rdi
  40207f:	66 43 0f 6e 04 0c    	movd   xmm0,DWORD PTR [r12+r9*1]
  402085:	66 45 0f ef c0       	pxor   xmm8,xmm8
  40208a:	66 41 0f 60 c0       	punpcklbw xmm0,xmm8
  40208f:	66 41 0f 61 c0       	punpcklwd xmm0,xmm8
  402094:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  402097:	66 41 0f 6e 0c 8a    	movd   xmm1,DWORD PTR [r10+rcx*4]
  40209d:	f3 0f 7e d9          	movq   xmm3,xmm1
  4020a1:	66 0f 73 fb 04       	pslldq xmm3,0x4
  4020a6:	66 0f fe d9          	paddd  xmm3,xmm1
  4020aa:	66 0f 73 fb 04       	pslldq xmm3,0x4
  4020af:	66 0f fe d9          	paddd  xmm3,xmm1
  4020b3:	0f 59 c3             	mulps  xmm0,xmm3
  4020b6:	0f 58 d0             	addps  xmm2,xmm0
  4020b9:	4c 39 da             	cmp    rdx,r11
  4020bc:	74 0d                	je     4020cb <blur_asm.sumar_fila_kernel>
  4020be:	48 83 c2 04          	add    rdx,0x4
  4020c2:	48 ff c1             	inc    rcx
  4020c5:	48 83 c6 04          	add    rsi,0x4
  4020c9:	eb a9                	jmp    402074 <blur_asm.ciclo_kernel>

00000000004020cb <blur_asm.sumar_fila_kernel>:
  4020cb:	48 31 d2             	xor    rdx,rdx
  4020ce:	4c 29 de             	sub    rsi,r11
  4020d1:	4c 01 c6             	add    rsi,r8
  4020d4:	48 ff c1             	inc    rcx
  4020d7:	eb 9b                	jmp    402074 <blur_asm.ciclo_kernel>

00000000004020d9 <blur_asm.insert>:
  4020d9:	66 0f ef e4          	pxor   xmm4,xmm4
  4020dd:	66 0f 5b d2          	cvtps2dq xmm2,xmm2
  4020e1:	66 0f 38 2b d4       	packusdw xmm2,xmm4
  4020e6:	66 0f 67 d4          	packuswb xmm2,xmm4
  4020ea:	66 0f 6e fb          	movd   xmm7,ebx
  4020ee:	48 01 fb             	add    rbx,rdi
  4020f1:	66 41 0f 7e 54 1d 00 	movd   DWORD PTR [r13+rbx*1+0x0],xmm2
  4020f8:	66 0f 7e fb          	movd   ebx,xmm7
  4020fc:	66 0f ef ff          	pxor   xmm7,xmm7
  402100:	48 31 f6             	xor    rsi,rsi
  402103:	48 31 c9             	xor    rcx,rcx
  402106:	4c 39 ff             	cmp    rdi,r15
  402109:	74 09                	je     402114 <blur_asm.sumar_fila>
  40210b:	48 83 c7 04          	add    rdi,0x4
  40210f:	e9 57 ff ff ff       	jmp    40206b <blur_asm.ciclo_matriz>

0000000000402114 <blur_asm.sumar_fila>:
  402114:	4c 01 df             	add    rdi,r11
  402117:	48 83 c7 04          	add    rdi,0x4
  40211b:	4d 01 c7             	add    r15,r8
  40211e:	e9 48 ff ff ff       	jmp    40206b <blur_asm.ciclo_matriz>

0000000000402123 <blur_asm.end>:
  402123:	48 83 c4 08          	add    rsp,0x8
  402127:	5b                   	pop    rbx
  402128:	41 5f                	pop    r15
  40212a:	41 5e                	pop    r14
  40212c:	41 5d                	pop    r13
  40212e:	41 5c                	pop    r12
  402130:	48 89 e5             	mov    rbp,rsp
  402133:	4c 89 d7             	mov    rdi,r10
  402136:	e8 45 e9 ff ff       	call   400a80 <free@plt>
  40213b:	5d                   	pop    rbp
  40213c:	c3                   	ret    
  40213d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000402140 <infNorm>:
  402140:	40 0f b6 ff          	movzx  edi,dil
  402144:	0f b6 c9             	movzx  ecx,cl
  402147:	40 0f b6 f6          	movzx  esi,sil
  40214b:	29 cf                	sub    edi,ecx
  40214d:	45 0f b6 c0          	movzx  r8d,r8b
  402151:	0f b6 d2             	movzx  edx,dl
  402154:	89 f8                	mov    eax,edi
  402156:	44 29 c6             	sub    esi,r8d
  402159:	45 0f b6 c9          	movzx  r9d,r9b
  40215d:	c1 f8 1f             	sar    eax,0x1f
  402160:	44 29 ca             	sub    edx,r9d
  402163:	31 c7                	xor    edi,eax
  402165:	29 c7                	sub    edi,eax
  402167:	89 f0                	mov    eax,esi
  402169:	c1 f8 1f             	sar    eax,0x1f
  40216c:	31 c6                	xor    esi,eax
  40216e:	29 c6                	sub    esi,eax
  402170:	89 d0                	mov    eax,edx
  402172:	c1 f8 1f             	sar    eax,0x1f
  402175:	31 c2                	xor    edx,eax
  402177:	29 c2                	sub    edx,eax
  402179:	66 39 f7             	cmp    di,si
  40217c:	7e 12                	jle    402190 <infNorm+0x50>
  40217e:	66 39 d7             	cmp    di,dx
  402181:	89 d0                	mov    eax,edx
  402183:	0f 4d c7             	cmovge eax,edi
  402186:	c3                   	ret    
  402187:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40218e:	00 00 
  402190:	66 39 d6             	cmp    si,dx
  402193:	89 d0                	mov    eax,edx
  402195:	0f 4d c6             	cmovge eax,esi
  402198:	c3                   	ret    
  402199:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000004021a0 <diff_c>:
  4021a0:	45 85 c0             	test   r8d,r8d
  4021a3:	0f 8e 0d 01 00 00    	jle    4022b6 <diff_c+0x116>
  4021a9:	41 57                	push   r15
  4021ab:	45 31 ff             	xor    r15d,r15d
  4021ae:	41 56                	push   r14
  4021b0:	44 8d 34 8d 00 00 00 	lea    r14d,[rcx*4+0x0]
  4021b7:	00 
  4021b8:	41 55                	push   r13
  4021ba:	41 54                	push   r12
  4021bc:	49 89 f4             	mov    r12,rsi
  4021bf:	55                   	push   rbp
  4021c0:	48 89 fd             	mov    rbp,rdi
  4021c3:	53                   	push   rbx
  4021c4:	48 63 44 24 40       	movsxd rax,DWORD PTR [rsp+0x40]
  4021c9:	48 89 44 24 f8       	mov    QWORD PTR [rsp-0x8],rax
  4021ce:	48 63 44 24 38       	movsxd rax,DWORD PTR [rsp+0x38]
  4021d3:	48 89 44 24 f0       	mov    QWORD PTR [rsp-0x10],rax
  4021d8:	49 63 c1             	movsxd rax,r9d
  4021db:	48 89 44 24 e8       	mov    QWORD PTR [rsp-0x18],rax
  4021e0:	85 c9                	test   ecx,ecx
  4021e2:	0f 8e a8 00 00 00    	jle    402290 <diff_c+0xf0>
  4021e8:	31 c0                	xor    eax,eax
  4021ea:	eb 2a                	jmp    402216 <diff_c+0x76>
  4021ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4021f0:	66 44 39 cf          	cmp    di,r9w
  4021f4:	41 0f 4c f9          	cmovl  edi,r9d
  4021f8:	8d 70 03             	lea    esi,[rax+0x3]
  4021fb:	83 c0 04             	add    eax,0x4
  4021fe:	40 88 3c 1a          	mov    BYTE PTR [rdx+rbx*1],dil
  402202:	44 39 f0             	cmp    eax,r14d
  402205:	42 88 3c 1a          	mov    BYTE PTR [rdx+r11*1],dil
  402209:	42 88 3c 12          	mov    BYTE PTR [rdx+r10*1],dil
  40220d:	48 63 f6             	movsxd rsi,esi
  402210:	c6 04 32 ff          	mov    BYTE PTR [rdx+rsi*1],0xff
  402214:	74 7a                	je     402290 <diff_c+0xf0>
  402216:	48 63 d8             	movsxd rbx,eax
  402219:	44 8d 58 01          	lea    r11d,[rax+0x1]
  40221d:	44 8d 50 02          	lea    r10d,[rax+0x2]
  402221:	41 0f b6 3c 1c       	movzx  edi,BYTE PTR [r12+rbx*1]
  402226:	0f b6 74 1d 00       	movzx  esi,BYTE PTR [rbp+rbx*1+0x0]
  40222b:	4d 63 db             	movsxd r11,r11d
  40222e:	4d 63 d2             	movsxd r10,r10d
  402231:	46 0f b6 4c 1d 00    	movzx  r9d,BYTE PTR [rbp+r11*1+0x0]
  402237:	47 0f b6 2c 14       	movzx  r13d,BYTE PTR [r12+r10*1]
  40223c:	29 fe                	sub    esi,edi
  40223e:	89 f7                	mov    edi,esi
  402240:	c1 ff 1f             	sar    edi,0x1f
  402243:	31 fe                	xor    esi,edi
  402245:	29 fe                	sub    esi,edi
  402247:	43 0f b6 3c 1c       	movzx  edi,BYTE PTR [r12+r11*1]
  40224c:	41 29 f9             	sub    r9d,edi
  40224f:	44 89 cf             	mov    edi,r9d
  402252:	c1 ff 1f             	sar    edi,0x1f
  402255:	41 31 f9             	xor    r9d,edi
  402258:	41 29 f9             	sub    r9d,edi
  40225b:	42 0f b6 7c 15 00    	movzx  edi,BYTE PTR [rbp+r10*1+0x0]
  402261:	44 29 ef             	sub    edi,r13d
  402264:	41 89 fd             	mov    r13d,edi
  402267:	41 c1 fd 1f          	sar    r13d,0x1f
  40226b:	44 31 ef             	xor    edi,r13d
  40226e:	44 29 ef             	sub    edi,r13d
  402271:	66 44 39 ce          	cmp    si,r9w
  402275:	0f 8e 75 ff ff ff    	jle    4021f0 <diff_c+0x50>
  40227b:	66 39 f7             	cmp    di,si
  40227e:	0f 4c fe             	cmovl  edi,esi
  402281:	e9 72 ff ff ff       	jmp    4021f8 <diff_c+0x58>
  402286:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40228d:	00 00 00 
  402290:	41 83 c7 01          	add    r15d,0x1
  402294:	48 03 54 24 f8       	add    rdx,QWORD PTR [rsp-0x8]
  402299:	4c 03 64 24 f0       	add    r12,QWORD PTR [rsp-0x10]
  40229e:	48 03 6c 24 e8       	add    rbp,QWORD PTR [rsp-0x18]
  4022a3:	45 39 c7             	cmp    r15d,r8d
  4022a6:	0f 85 34 ff ff ff    	jne    4021e0 <diff_c+0x40>
  4022ac:	5b                   	pop    rbx
  4022ad:	5d                   	pop    rbp
  4022ae:	41 5c                	pop    r12
  4022b0:	41 5d                	pop    r13
  4022b2:	41 5e                	pop    r14
  4022b4:	41 5f                	pop    r15
  4022b6:	f3 c3                	repz ret 
  4022b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4022bf:	00 

00000000004022c0 <matrizDeConvolucion>:
  4022c0:	41 57                	push   r15
  4022c2:	0f 14 c0             	unpcklps xmm0,xmm0
  4022c5:	41 56                	push   r14
  4022c7:	0f 5a d0             	cvtps2pd xmm2,xmm0
  4022ca:	41 55                	push   r13
  4022cc:	41 54                	push   r12
  4022ce:	41 89 fc             	mov    r12d,edi
  4022d1:	55                   	push   rbp
  4022d2:	8d 2c 3f             	lea    ebp,[rdi+rdi*1]
  4022d5:	53                   	push   rbx
  4022d6:	44 8d 6d 01          	lea    r13d,[rbp+0x1]
  4022da:	48 83 ec 28          	sub    rsp,0x28
  4022de:	49 63 dd             	movsxd rbx,r13d
  4022e1:	f2 0f 10 0d 4f 0f 00 	movsd  xmm1,QWORD PTR [rip+0xf4f]        # 403238 <_IO_stdin_used+0xbd8>
  4022e8:	00 
  4022e9:	48 89 df             	mov    rdi,rbx
  4022ec:	f3 0f 10 25 4c 0f 00 	movss  xmm4,DWORD PTR [rip+0xf4c]        # 403240 <_IO_stdin_used+0xbe0>
  4022f3:	00 
  4022f4:	f2 0f 59 ca          	mulsd  xmm1,xmm2
  4022f8:	f3 0f 59 e0          	mulss  xmm4,xmm0
  4022fc:	48 0f af fb          	imul   rdi,rbx
  402300:	f2 0f 59 ca          	mulsd  xmm1,xmm2
  402304:	f3 0f 59 c4          	mulss  xmm0,xmm4
  402308:	48 c1 e7 02          	shl    rdi,0x2
  40230c:	66 0f 14 c9          	unpcklpd xmm1,xmm1
  402310:	f3 0f 11 44 24 08    	movss  DWORD PTR [rsp+0x8],xmm0
  402316:	66 0f 5a e9          	cvtpd2ps xmm5,xmm1
  40231a:	f3 0f 11 2c 24       	movss  DWORD PTR [rsp],xmm5
  40231f:	e8 5c e8 ff ff       	call   400b80 <malloc@plt>
  402324:	45 85 ed             	test   r13d,r13d
  402327:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  40232c:	0f 8e 8a 00 00 00    	jle    4023bc <matrizDeConvolucion+0xfc>
  402332:	f3 0f 10 34 24       	movss  xmm6,DWORD PTR [rsp]
  402337:	48 8d 0c 9d 00 00 00 	lea    rcx,[rbx*4+0x0]
  40233e:	00 
  40233f:	48 89 c3             	mov    rbx,rax
  402342:	41 8d 44 24 ff       	lea    eax,[r12-0x1]
  402347:	45 89 e6             	mov    r14d,r12d
  40234a:	0f 5a f6             	cvtps2pd xmm6,xmm6
  40234d:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
  402352:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  402356:	29 6c 24 0c          	sub    DWORD PTR [rsp+0xc],ebp
  40235a:	f2 0f 11 34 24       	movsd  QWORD PTR [rsp],xmm6
  40235f:	90                   	nop
  402360:	44 89 f5             	mov    ebp,r14d
  402363:	45 31 ff             	xor    r15d,r15d
  402366:	41 0f af ee          	imul   ebp,r14d
  40236a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  402370:	44 89 e2             	mov    edx,r12d
  402373:	44 29 fa             	sub    edx,r15d
  402376:	0f af d2             	imul   edx,edx
  402379:	01 ea                	add    edx,ebp
  40237b:	f3 0f 2a c2          	cvtsi2ss xmm0,edx
  40237f:	f3 0f 5e 44 24 08    	divss  xmm0,DWORD PTR [rsp+0x8]
  402385:	0f 14 c0             	unpcklps xmm0,xmm0
  402388:	0f 5a c0             	cvtps2pd xmm0,xmm0
  40238b:	e8 50 e7 ff ff       	call   400ae0 <exp@plt>
  402390:	f2 0f 5e 04 24       	divsd  xmm0,QWORD PTR [rsp]
  402395:	66 0f 14 c0          	unpcklpd xmm0,xmm0
  402399:	66 0f 5a d8          	cvtpd2ps xmm3,xmm0
  40239d:	f3 42 0f 11 1c bb    	movss  DWORD PTR [rbx+r15*4],xmm3
  4023a3:	49 83 c7 01          	add    r15,0x1
  4023a7:	45 39 fd             	cmp    r13d,r15d
  4023aa:	7f c4                	jg     402370 <matrizDeConvolucion+0xb0>
  4023ac:	41 83 ee 01          	sub    r14d,0x1
  4023b0:	48 03 5c 24 10       	add    rbx,QWORD PTR [rsp+0x10]
  4023b5:	44 3b 74 24 0c       	cmp    r14d,DWORD PTR [rsp+0xc]
  4023ba:	75 a4                	jne    402360 <matrizDeConvolucion+0xa0>
  4023bc:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
  4023c1:	48 83 c4 28          	add    rsp,0x28
  4023c5:	5b                   	pop    rbx
  4023c6:	5d                   	pop    rbp
  4023c7:	41 5c                	pop    r12
  4023c9:	41 5d                	pop    r13
  4023cb:	41 5e                	pop    r14
  4023cd:	41 5f                	pop    r15
  4023cf:	c3                   	ret    

00000000004023d0 <blur_c>:
  4023d0:	41 57                	push   r15
  4023d2:	41 89 d7             	mov    r15d,edx
  4023d5:	41 56                	push   r14
  4023d7:	41 89 ce             	mov    r14d,ecx
  4023da:	41 55                	push   r13
  4023dc:	44 8d 2c 95 00 00 00 	lea    r13d,[rdx*4+0x0]
  4023e3:	00 
  4023e4:	41 54                	push   r12
  4023e6:	49 89 f4             	mov    r12,rsi
  4023e9:	55                   	push   rbp
  4023ea:	48 89 fd             	mov    rbp,rdi
  4023ed:	44 89 c7             	mov    edi,r8d
  4023f0:	53                   	push   rbx
  4023f1:	43 8d 5c 00 01       	lea    ebx,[r8+r8*1+0x1]
  4023f6:	48 83 ec 58          	sub    rsp,0x58
  4023fa:	44 89 44 24 04       	mov    DWORD PTR [rsp+0x4],r8d
  4023ff:	e8 bc fe ff ff       	call   4022c0 <matrizDeConvolucion>
  402404:	48 89 c1             	mov    rcx,rax
  402407:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  40240c:	8b 44 24 04          	mov    eax,DWORD PTR [rsp+0x4]
  402410:	44 89 ff             	mov    edi,r15d
  402413:	29 c7                	sub    edi,eax
  402415:	39 f8                	cmp    eax,edi
  402417:	89 7c 24 48          	mov    DWORD PTR [rsp+0x48],edi
  40241b:	0f 8d 97 01 00 00    	jge    4025b8 <blur_c+0x1e8>
  402421:	89 c7                	mov    edi,eax
  402423:	41 29 c6             	sub    r14d,eax
  402426:	41 89 c7             	mov    r15d,eax
  402429:	48 98                	cdqe   
  40242b:	4d 63 d5             	movsxd r10,r13d
  40242e:	41 f7 df             	neg    r15d
  402431:	48 89 c2             	mov    rdx,rax
  402434:	4c 63 db             	movsxd r11,ebx
  402437:	44 89 74 24 4c       	mov    DWORD PTR [rsp+0x4c],r14d
  40243c:	49 0f af d2          	imul   rdx,r10
  402440:	49 c1 e3 02          	shl    r11,0x2
  402444:	89 7c 24 30          	mov    DWORD PTR [rsp+0x30],edi
  402448:	0f 57 ed             	xorps  xmm5,xmm5
  40244b:	48 c7 44 24 20 00 00 	mov    QWORD PTR [rsp+0x20],0x0
  402452:	00 00 
  402454:	4c 01 e2             	add    rdx,r12
  402457:	44 8d 67 01          	lea    r12d,[rdi+0x1]
  40245b:	48 89 54 24 40       	mov    QWORD PTR [rsp+0x40],rdx
  402460:	8d 14 bd 00 00 00 00 	lea    edx,[rdi*4+0x0]
  402467:	89 54 24 34          	mov    DWORD PTR [rsp+0x34],edx
  40246b:	42 8d 14 b5 00 00 00 	lea    edx,[r14*4+0x0]
  402472:	00 
  402473:	89 54 24 1c          	mov    DWORD PTR [rsp+0x1c],edx
  402477:	49 63 d7             	movsxd rdx,r15d
  40247a:	48 01 d0             	add    rax,rdx
  40247d:	4c 89 d2             	mov    rdx,r10
  402480:	48 0f af d0          	imul   rdx,rax
  402484:	49 0f af c3          	imul   rax,r11
  402488:	48 01 ea             	add    rdx,rbp
  40248b:	42 8d 2c 3f          	lea    ebp,[rdi+r15*1]
  40248f:	48 01 c8             	add    rax,rcx
  402492:	48 89 54 24 38       	mov    QWORD PTR [rsp+0x38],rdx
  402497:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  40249c:	42 8d 04 bd 00 00 00 	lea    eax,[r15*4+0x0]
  4024a3:	00 
  4024a4:	89 44 24 18          	mov    DWORD PTR [rsp+0x18],eax
  4024a8:	8b 44 24 4c          	mov    eax,DWORD PTR [rsp+0x4c]
  4024ac:	39 44 24 04          	cmp    DWORD PTR [rsp+0x4],eax
  4024b0:	0f 8d ea 00 00 00    	jge    4025a0 <blur_c+0x1d0>
  4024b6:	48 8b 44 24 20       	mov    rax,QWORD PTR [rsp+0x20]
  4024bb:	44 8b 6c 24 34       	mov    r13d,DWORD PTR [rsp+0x34]
  4024c0:	49 89 c6             	mov    r14,rax
  4024c3:	48 03 44 24 38       	add    rax,QWORD PTR [rsp+0x38]
  4024c8:	4c 03 74 24 40       	add    r14,QWORD PTR [rsp+0x40]
  4024cd:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  4024d2:	44 39 7c 24 04       	cmp    DWORD PTR [rsp+0x4],r15d
  4024d7:	0f 8c f3 00 00 00    	jl     4025d0 <blur_c+0x200>
  4024dd:	8b 44 24 18          	mov    eax,DWORD PTR [rsp+0x18]
  4024e1:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
  4024e6:	45 89 f8             	mov    r8d,r15d
  4024e9:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
  4024ee:	0f 28 d5             	movaps xmm2,xmm5
  4024f1:	0f 28 dd             	movaps xmm3,xmm5
  4024f4:	45 8d 4c 05 00       	lea    r9d,[r13+rax*1+0x0]
  4024f9:	0f 28 e5             	movaps xmm4,xmm5
  4024fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402500:	89 ea                	mov    edx,ebp
  402502:	44 89 c8             	mov    eax,r9d
  402505:	0f 1f 00             	nop    DWORD PTR [rax]
  402508:	48 63 f2             	movsxd rsi,edx
  40250b:	83 c2 01             	add    edx,0x1
  40250e:	f3 0f 10 0c b7       	movss  xmm1,DWORD PTR [rdi+rsi*4]
  402513:	48 63 f0             	movsxd rsi,eax
  402516:	0f b6 34 31          	movzx  esi,BYTE PTR [rcx+rsi*1]
  40251a:	f3 0f 2a c6          	cvtsi2ss xmm0,esi
  40251e:	8d 70 01             	lea    esi,[rax+0x1]
  402521:	48 63 f6             	movsxd rsi,esi
  402524:	0f b6 34 31          	movzx  esi,BYTE PTR [rcx+rsi*1]
  402528:	f3 0f 59 c1          	mulss  xmm0,xmm1
  40252c:	f3 0f 58 e0          	addss  xmm4,xmm0
  402530:	f3 0f 2a c6          	cvtsi2ss xmm0,esi
  402534:	8d 70 02             	lea    esi,[rax+0x2]
  402537:	83 c0 04             	add    eax,0x4
  40253a:	39 da                	cmp    edx,ebx
  40253c:	48 63 f6             	movsxd rsi,esi
  40253f:	0f b6 34 31          	movzx  esi,BYTE PTR [rcx+rsi*1]
  402543:	f3 0f 59 c1          	mulss  xmm0,xmm1
  402547:	f3 0f 58 d8          	addss  xmm3,xmm0
  40254b:	f3 0f 2a c6          	cvtsi2ss xmm0,esi
  40254f:	f3 0f 59 c1          	mulss  xmm0,xmm1
  402553:	f3 0f 58 d0          	addss  xmm2,xmm0
  402557:	75 af                	jne    402508 <blur_c+0x138>
  402559:	41 83 c0 01          	add    r8d,0x1
  40255d:	4c 01 d1             	add    rcx,r10
  402560:	4c 01 df             	add    rdi,r11
  402563:	45 39 e0             	cmp    r8d,r12d
  402566:	75 98                	jne    402500 <blur_c+0x130>
  402568:	f3 0f 2c cc          	cvttss2si ecx,xmm4
  40256c:	f3 0f 2c d3          	cvttss2si edx,xmm3
  402570:	f3 0f 2c c2          	cvttss2si eax,xmm2
  402574:	49 63 f5             	movsxd rsi,r13d
  402577:	41 88 0c 36          	mov    BYTE PTR [r14+rsi*1],cl
  40257b:	41 8d 4d 01          	lea    ecx,[r13+0x1]
  40257f:	48 63 c9             	movsxd rcx,ecx
  402582:	41 88 14 0e          	mov    BYTE PTR [r14+rcx*1],dl
  402586:	41 8d 55 02          	lea    edx,[r13+0x2]
  40258a:	41 83 c5 04          	add    r13d,0x4
  40258e:	44 3b 6c 24 1c       	cmp    r13d,DWORD PTR [rsp+0x1c]
  402593:	48 63 d2             	movsxd rdx,edx
  402596:	41 88 04 16          	mov    BYTE PTR [r14+rdx*1],al
  40259a:	0f 85 32 ff ff ff    	jne    4024d2 <blur_c+0x102>
  4025a0:	83 44 24 30 01       	add    DWORD PTR [rsp+0x30],0x1
  4025a5:	4c 01 54 24 20       	add    QWORD PTR [rsp+0x20],r10
  4025aa:	8b 44 24 48          	mov    eax,DWORD PTR [rsp+0x48]
  4025ae:	39 44 24 30          	cmp    DWORD PTR [rsp+0x30],eax
  4025b2:	0f 85 f0 fe ff ff    	jne    4024a8 <blur_c+0xd8>
  4025b8:	48 8b 7c 24 28       	mov    rdi,QWORD PTR [rsp+0x28]
  4025bd:	48 83 c4 58          	add    rsp,0x58
  4025c1:	5b                   	pop    rbx
  4025c2:	5d                   	pop    rbp
  4025c3:	41 5c                	pop    r12
  4025c5:	41 5d                	pop    r13
  4025c7:	41 5e                	pop    r14
  4025c9:	41 5f                	pop    r15
  4025cb:	e9 b0 e4 ff ff       	jmp    400a80 <free@plt>
  4025d0:	31 c0                	xor    eax,eax
  4025d2:	31 d2                	xor    edx,edx
  4025d4:	31 c9                	xor    ecx,ecx
  4025d6:	eb 9c                	jmp    402574 <blur_c+0x1a4>
  4025d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4025df:	00 

00000000004025e0 <__libc_csu_init>:
  4025e0:	41 57                	push   r15
  4025e2:	41 89 ff             	mov    r15d,edi
  4025e5:	41 56                	push   r14
  4025e7:	49 89 f6             	mov    r14,rsi
  4025ea:	41 55                	push   r13
  4025ec:	49 89 d5             	mov    r13,rdx
  4025ef:	41 54                	push   r12
  4025f1:	4c 8d 25 f8 17 20 00 	lea    r12,[rip+0x2017f8]        # 603df0 <__frame_dummy_init_array_entry>
  4025f8:	55                   	push   rbp
  4025f9:	48 8d 2d f8 17 20 00 	lea    rbp,[rip+0x2017f8]        # 603df8 <__init_array_end>
  402600:	53                   	push   rbx
  402601:	4c 29 e5             	sub    rbp,r12
  402604:	31 db                	xor    ebx,ebx
  402606:	48 c1 fd 03          	sar    rbp,0x3
  40260a:	48 83 ec 08          	sub    rsp,0x8
  40260e:	e8 3d e4 ff ff       	call   400a50 <_init>
  402613:	48 85 ed             	test   rbp,rbp
  402616:	74 1e                	je     402636 <__libc_csu_init+0x56>
  402618:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40261f:	00 
  402620:	4c 89 ea             	mov    rdx,r13
  402623:	4c 89 f6             	mov    rsi,r14
  402626:	44 89 ff             	mov    edi,r15d
  402629:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40262d:	48 83 c3 01          	add    rbx,0x1
  402631:	48 39 eb             	cmp    rbx,rbp
  402634:	75 ea                	jne    402620 <__libc_csu_init+0x40>
  402636:	48 83 c4 08          	add    rsp,0x8
  40263a:	5b                   	pop    rbx
  40263b:	5d                   	pop    rbp
  40263c:	41 5c                	pop    r12
  40263e:	41 5d                	pop    r13
  402640:	41 5e                	pop    r14
  402642:	41 5f                	pop    r15
  402644:	c3                   	ret    
  402645:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  40264c:	00 00 00 00 

0000000000402650 <__libc_csu_fini>:
  402650:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000402654 <_fini>:
  402654:	48 83 ec 08          	sub    rsp,0x8
  402658:	48 83 c4 08          	add    rsp,0x8
  40265c:	c3                   	ret    
