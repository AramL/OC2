
tp2:     file format elf64-x86-64


Disassembly of section .init:

0000000000400a90 <_init>:
  400a90:	48 83 ec 08          	sub    rsp,0x8
  400a94:	48 8b 05 5d 35 20 00 	mov    rax,QWORD PTR [rip+0x20355d]        # 603ff8 <_DYNAMIC+0x1f0>
  400a9b:	48 85 c0             	test   rax,rax
  400a9e:	74 05                	je     400aa5 <_init+0x15>
  400aa0:	e8 0b 01 00 00       	call   400bb0 <__gmon_start__@plt>
  400aa5:	48 83 c4 08          	add    rsp,0x8
  400aa9:	c3                   	ret    

Disassembly of section .plt:

0000000000400ab0 <free@plt-0x10>:
  400ab0:	ff 35 52 35 20 00    	push   QWORD PTR [rip+0x203552]        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400ab6:	ff 25 54 35 20 00    	jmp    QWORD PTR [rip+0x203554]        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400abc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400ac0 <free@plt>:
  400ac0:	ff 25 52 35 20 00    	jmp    QWORD PTR [rip+0x203552]        # 604018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400ac6:	68 00 00 00 00       	push   0x0
  400acb:	e9 e0 ff ff ff       	jmp    400ab0 <_init+0x20>

0000000000400ad0 <putchar@plt>:
  400ad0:	ff 25 4a 35 20 00    	jmp    QWORD PTR [rip+0x20354a]        # 604020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400ad6:	68 01 00 00 00       	push   0x1
  400adb:	e9 d0 ff ff ff       	jmp    400ab0 <_init+0x20>

0000000000400ae0 <abort@plt>:
  400ae0:	ff 25 42 35 20 00    	jmp    QWORD PTR [rip+0x203542]        # 604028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400ae6:	68 02 00 00 00       	push   0x2
  400aeb:	e9 c0 ff ff ff       	jmp    400ab0 <_init+0x20>

0000000000400af0 <puts@plt>:
  400af0:	ff 25 3a 35 20 00    	jmp    QWORD PTR [rip+0x20353a]        # 604030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400af6:	68 03 00 00 00       	push   0x3
  400afb:	e9 b0 ff ff ff       	jmp    400ab0 <_init+0x20>

0000000000400b00 <fread@plt>:
  400b00:	ff 25 32 35 20 00    	jmp    QWORD PTR [rip+0x203532]        # 604038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400b06:	68 04 00 00 00       	push   0x4
  400b0b:	e9 a0 ff ff ff       	jmp    400ab0 <_init+0x20>

0000000000400b10 <strtod@plt>:
  400b10:	ff 25 2a 35 20 00    	jmp    QWORD PTR [rip+0x20352a]        # 604040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400b16:	68 05 00 00 00       	push   0x5
  400b1b:	e9 90 ff ff ff       	jmp    400ab0 <_init+0x20>

0000000000400b20 <exp@plt>:
  400b20:	ff 25 22 35 20 00    	jmp    QWORD PTR [rip+0x203522]        # 604048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400b26:	68 06 00 00 00       	push   0x6
  400b2b:	e9 80 ff ff ff       	jmp    400ab0 <_init+0x20>

0000000000400b30 <fclose@plt>:
  400b30:	ff 25 1a 35 20 00    	jmp    QWORD PTR [rip+0x20351a]        # 604050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400b36:	68 07 00 00 00       	push   0x7
  400b3b:	e9 70 ff ff ff       	jmp    400ab0 <_init+0x20>

0000000000400b40 <getopt_long@plt>:
  400b40:	ff 25 12 35 20 00    	jmp    QWORD PTR [rip+0x203512]        # 604058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400b46:	68 08 00 00 00       	push   0x8
  400b4b:	e9 60 ff ff ff       	jmp    400ab0 <_init+0x20>

0000000000400b50 <printf@plt>:
  400b50:	ff 25 0a 35 20 00    	jmp    QWORD PTR [rip+0x20350a]        # 604060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400b56:	68 09 00 00 00       	push   0x9
  400b5b:	e9 50 ff ff ff       	jmp    400ab0 <_init+0x20>

0000000000400b60 <snprintf@plt>:
  400b60:	ff 25 02 35 20 00    	jmp    QWORD PTR [rip+0x203502]        # 604068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400b66:	68 0a 00 00 00       	push   0xa
  400b6b:	e9 40 ff ff ff       	jmp    400ab0 <_init+0x20>

0000000000400b70 <memset@plt>:
  400b70:	ff 25 fa 34 20 00    	jmp    QWORD PTR [rip+0x2034fa]        # 604070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400b76:	68 0b 00 00 00       	push   0xb
  400b7b:	e9 30 ff ff ff       	jmp    400ab0 <_init+0x20>

0000000000400b80 <__libc_start_main@plt>:
  400b80:	ff 25 f2 34 20 00    	jmp    QWORD PTR [rip+0x2034f2]        # 604078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400b86:	68 0c 00 00 00       	push   0xc
  400b8b:	e9 20 ff ff ff       	jmp    400ab0 <_init+0x20>

0000000000400b90 <strcmp@plt>:
  400b90:	ff 25 ea 34 20 00    	jmp    QWORD PTR [rip+0x2034ea]        # 604080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400b96:	68 0d 00 00 00       	push   0xd
  400b9b:	e9 10 ff ff ff       	jmp    400ab0 <_init+0x20>

0000000000400ba0 <basename@plt>:
  400ba0:	ff 25 e2 34 20 00    	jmp    QWORD PTR [rip+0x2034e2]        # 604088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400ba6:	68 0e 00 00 00       	push   0xe
  400bab:	e9 00 ff ff ff       	jmp    400ab0 <_init+0x20>

0000000000400bb0 <__gmon_start__@plt>:
  400bb0:	ff 25 da 34 20 00    	jmp    QWORD PTR [rip+0x2034da]        # 604090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400bb6:	68 0f 00 00 00       	push   0xf
  400bbb:	e9 f0 fe ff ff       	jmp    400ab0 <_init+0x20>

0000000000400bc0 <strtol@plt>:
  400bc0:	ff 25 d2 34 20 00    	jmp    QWORD PTR [rip+0x2034d2]        # 604098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400bc6:	68 10 00 00 00       	push   0x10
  400bcb:	e9 e0 fe ff ff       	jmp    400ab0 <_init+0x20>

0000000000400bd0 <malloc@plt>:
  400bd0:	ff 25 ca 34 20 00    	jmp    QWORD PTR [rip+0x2034ca]        # 6040a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400bd6:	68 11 00 00 00       	push   0x11
  400bdb:	e9 d0 fe ff ff       	jmp    400ab0 <_init+0x20>

0000000000400be0 <access@plt>:
  400be0:	ff 25 c2 34 20 00    	jmp    QWORD PTR [rip+0x2034c2]        # 6040a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400be6:	68 12 00 00 00       	push   0x12
  400beb:	e9 c0 fe ff ff       	jmp    400ab0 <_init+0x20>

0000000000400bf0 <fopen@plt>:
  400bf0:	ff 25 ba 34 20 00    	jmp    QWORD PTR [rip+0x2034ba]        # 6040b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400bf6:	68 13 00 00 00       	push   0x13
  400bfb:	e9 b0 fe ff ff       	jmp    400ab0 <_init+0x20>

0000000000400c00 <perror@plt>:
  400c00:	ff 25 b2 34 20 00    	jmp    QWORD PTR [rip+0x2034b2]        # 6040b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400c06:	68 14 00 00 00       	push   0x14
  400c0b:	e9 a0 fe ff ff       	jmp    400ab0 <_init+0x20>

0000000000400c10 <exit@plt>:
  400c10:	ff 25 aa 34 20 00    	jmp    QWORD PTR [rip+0x2034aa]        # 6040c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400c16:	68 15 00 00 00       	push   0x15
  400c1b:	e9 90 fe ff ff       	jmp    400ab0 <_init+0x20>

0000000000400c20 <fwrite@plt>:
  400c20:	ff 25 a2 34 20 00    	jmp    QWORD PTR [rip+0x2034a2]        # 6040c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400c26:	68 16 00 00 00       	push   0x16
  400c2b:	e9 80 fe ff ff       	jmp    400ab0 <_init+0x20>

Disassembly of section .text:

0000000000400c30 <main>:
  400c30:	41 54                	push   r12
  400c32:	49 89 f4             	mov    r12,rsi
  400c35:	55                   	push   rbp
  400c36:	89 fd                	mov    ebp,edi
  400c38:	53                   	push   rbx
  400c39:	48 81 ec a0 01 00 00 	sub    rsp,0x1a0
  400c40:	48 89 e2             	mov    rdx,rsp
  400c43:	e8 78 05 00 00       	call   4011c0 <procesar_opciones>
  400c48:	80 bc 24 9b 01 00 00 	cmp    BYTE PTR [rsp+0x19b],0x0
  400c4f:	00 
  400c50:	74 35                	je     400c87 <main+0x57>
  400c52:	48 89 e7             	mov    rdi,rsp
  400c55:	e8 66 01 00 00       	call   400dc0 <detectar_filtro>
  400c5a:	48 85 c0             	test   rax,rax
  400c5d:	48 89 c3             	mov    rbx,rax
  400c60:	74 17                	je     400c79 <main+0x49>
  400c62:	89 ee                	mov    esi,ebp
  400c64:	48 89 e7             	mov    rdi,rsp
  400c67:	4c 89 e2             	mov    rdx,r12
  400c6a:	ff 50 08             	call   QWORD PTR [rax+0x8]
  400c6d:	48 8b 73 18          	mov    rsi,QWORD PTR [rbx+0x18]
  400c71:	48 89 e7             	mov    rdi,rsp
  400c74:	e8 77 02 00 00       	call   400ef0 <correr_filtro_imagen>
  400c79:	48 81 c4 a0 01 00 00 	add    rsp,0x1a0
  400c80:	31 c0                	xor    eax,eax
  400c82:	5b                   	pop    rbx
  400c83:	5d                   	pop    rbp
  400c84:	41 5c                	pop    r12
  400c86:	c3                   	ret    
  400c87:	bf e6 28 40 00       	mov    edi,0x4028e6
  400c8c:	e8 5f fe ff ff       	call   400af0 <puts@plt>
  400c91:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
  400c95:	bf f4 28 40 00       	mov    edi,0x4028f4
  400c9a:	31 c0                	xor    eax,eax
  400c9c:	e8 af fe ff ff       	call   400b50 <printf@plt>
  400ca1:	83 7c 24 08 00       	cmp    DWORD PTR [rsp+0x8],0x0
  400ca6:	b8 d0 28 40 00       	mov    eax,0x4028d0
  400cab:	be ce 28 40 00       	mov    esi,0x4028ce
  400cb0:	bf 0f 29 40 00       	mov    edi,0x40290f
  400cb5:	48 0f 45 f0          	cmovne rsi,rax
  400cb9:	31 c0                	xor    eax,eax
  400cbb:	e8 90 fe ff ff       	call   400b50 <printf@plt>
  400cc0:	48 8b 74 24 78       	mov    rsi,QWORD PTR [rsp+0x78]
  400cc5:	bf 2b 29 40 00       	mov    edi,0x40292b
  400cca:	31 c0                	xor    eax,eax
  400ccc:	e8 7f fe ff ff       	call   400b50 <printf@plt>
  400cd1:	e9 7c ff ff ff       	jmp    400c52 <main+0x22>

0000000000400cd6 <_start>:
  400cd6:	31 ed                	xor    ebp,ebp
  400cd8:	49 89 d1             	mov    r9,rdx
  400cdb:	5e                   	pop    rsi
  400cdc:	48 89 e2             	mov    rdx,rsp
  400cdf:	48 83 e4 f0          	and    rsp,0xfffffffffffffff0
  400ce3:	50                   	push   rax
  400ce4:	54                   	push   rsp
  400ce5:	49 c7 c0 80 28 40 00 	mov    r8,0x402880
  400cec:	48 c7 c1 10 28 40 00 	mov    rcx,0x402810
  400cf3:	48 c7 c7 30 0c 40 00 	mov    rdi,0x400c30
  400cfa:	e8 81 fe ff ff       	call   400b80 <__libc_start_main@plt>
  400cff:	f4                   	hlt    

0000000000400d00 <deregister_tm_clones>:
  400d00:	b8 7f 41 60 00       	mov    eax,0x60417f
  400d05:	55                   	push   rbp
  400d06:	48 2d 78 41 60 00    	sub    rax,0x604178
  400d0c:	48 83 f8 0e          	cmp    rax,0xe
  400d10:	48 89 e5             	mov    rbp,rsp
  400d13:	77 02                	ja     400d17 <deregister_tm_clones+0x17>
  400d15:	5d                   	pop    rbp
  400d16:	c3                   	ret    
  400d17:	b8 00 00 00 00       	mov    eax,0x0
  400d1c:	48 85 c0             	test   rax,rax
  400d1f:	74 f4                	je     400d15 <deregister_tm_clones+0x15>
  400d21:	5d                   	pop    rbp
  400d22:	bf 78 41 60 00       	mov    edi,0x604178
  400d27:	ff e0                	jmp    rax
  400d29:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400d30 <register_tm_clones>:
  400d30:	b8 78 41 60 00       	mov    eax,0x604178
  400d35:	55                   	push   rbp
  400d36:	48 2d 78 41 60 00    	sub    rax,0x604178
  400d3c:	48 c1 f8 03          	sar    rax,0x3
  400d40:	48 89 e5             	mov    rbp,rsp
  400d43:	48 89 c2             	mov    rdx,rax
  400d46:	48 c1 ea 3f          	shr    rdx,0x3f
  400d4a:	48 01 d0             	add    rax,rdx
  400d4d:	48 d1 f8             	sar    rax,1
  400d50:	75 02                	jne    400d54 <register_tm_clones+0x24>
  400d52:	5d                   	pop    rbp
  400d53:	c3                   	ret    
  400d54:	ba 00 00 00 00       	mov    edx,0x0
  400d59:	48 85 d2             	test   rdx,rdx
  400d5c:	74 f4                	je     400d52 <register_tm_clones+0x22>
  400d5e:	5d                   	pop    rbp
  400d5f:	48 89 c6             	mov    rsi,rax
  400d62:	bf 78 41 60 00       	mov    edi,0x604178
  400d67:	ff e2                	jmp    rdx
  400d69:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400d70 <__do_global_dtors_aux>:
  400d70:	80 3d 19 34 20 00 00 	cmp    BYTE PTR [rip+0x203419],0x0        # 604190 <completed.6335>
  400d77:	75 11                	jne    400d8a <__do_global_dtors_aux+0x1a>
  400d79:	55                   	push   rbp
  400d7a:	48 89 e5             	mov    rbp,rsp
  400d7d:	e8 7e ff ff ff       	call   400d00 <deregister_tm_clones>
  400d82:	5d                   	pop    rbp
  400d83:	c6 05 06 34 20 00 01 	mov    BYTE PTR [rip+0x203406],0x1        # 604190 <completed.6335>
  400d8a:	f3 c3                	repz ret 
  400d8c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400d90 <frame_dummy>:
  400d90:	48 83 3d 68 30 20 00 	cmp    QWORD PTR [rip+0x203068],0x0        # 603e00 <__JCR_END__>
  400d97:	00 
  400d98:	74 1e                	je     400db8 <frame_dummy+0x28>
  400d9a:	b8 00 00 00 00       	mov    eax,0x0
  400d9f:	48 85 c0             	test   rax,rax
  400da2:	74 14                	je     400db8 <frame_dummy+0x28>
  400da4:	55                   	push   rbp
  400da5:	bf 00 3e 60 00       	mov    edi,0x603e00
  400daa:	48 89 e5             	mov    rbp,rsp
  400dad:	ff d0                	call   rax
  400daf:	5d                   	pop    rbp
  400db0:	e9 7b ff ff ff       	jmp    400d30 <register_tm_clones>
  400db5:	0f 1f 00             	nop    DWORD PTR [rax]
  400db8:	e9 73 ff ff ff       	jmp    400d30 <register_tm_clones>
  400dbd:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000400dc0 <detectar_filtro>:
  400dc0:	41 54                	push   r12
  400dc2:	48 8b 35 37 33 20 00 	mov    rsi,QWORD PTR [rip+0x203337]        # 604100 <filtros>
  400dc9:	55                   	push   rbp
  400dca:	48 85 f6             	test   rsi,rsi
  400dcd:	53                   	push   rbx
  400dce:	74 48                	je     400e18 <detectar_filtro+0x58>
  400dd0:	4c 8b 27             	mov    r12,QWORD PTR [rdi]
  400dd3:	bb 28 41 60 00       	mov    ebx,0x604128
  400dd8:	31 ed                	xor    ebp,ebp
  400dda:	eb 14                	jmp    400df0 <detectar_filtro+0x30>
  400ddc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  400de0:	48 83 c3 28          	add    rbx,0x28
  400de4:	48 8b 73 d8          	mov    rsi,QWORD PTR [rbx-0x28]
  400de8:	83 c5 01             	add    ebp,0x1
  400deb:	48 85 f6             	test   rsi,rsi
  400dee:	74 28                	je     400e18 <detectar_filtro+0x58>
  400df0:	4c 89 e7             	mov    rdi,r12
  400df3:	e8 98 fd ff ff       	call   400b90 <strcmp@plt>
  400df8:	85 c0                	test   eax,eax
  400dfa:	75 e4                	jne    400de0 <detectar_filtro+0x20>
  400dfc:	48 63 ed             	movsxd rbp,ebp
  400dff:	48 8d 44 ad 00       	lea    rax,[rbp+rbp*4+0x0]
  400e04:	5b                   	pop    rbx
  400e05:	5d                   	pop    rbp
  400e06:	48 8d 04 c5 00 41 60 	lea    rax,[rax*8+0x604100]
  400e0d:	00 
  400e0e:	41 5c                	pop    r12
  400e10:	c3                   	ret    
  400e11:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  400e18:	48 8b 0d 69 33 20 00 	mov    rcx,QWORD PTR [rip+0x203369]        # 604188 <stderr@@GLIBC_2.2.5>
  400e1f:	ba 13 00 00 00       	mov    edx,0x13
  400e24:	be 01 00 00 00       	mov    esi,0x1
  400e29:	bf a4 28 40 00       	mov    edi,0x4028a4
  400e2e:	e8 ed fd ff ff       	call   400c20 <fwrite@plt>
  400e33:	5b                   	pop    rbx
  400e34:	5d                   	pop    rbp
  400e35:	31 c0                	xor    eax,eax
  400e37:	41 5c                	pop    r12
  400e39:	c3                   	ret    
  400e3a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400e40 <imprimir_tiempos_ejecucion>:
  400e40:	41 55                	push   r13
  400e42:	49 89 fd             	mov    r13,rdi
  400e45:	41 54                	push   r12
  400e47:	49 89 f4             	mov    r12,rsi
  400e4a:	55                   	push   rbp
  400e4b:	89 d5                	mov    ebp,edx
  400e4d:	53                   	push   rbx
  400e4e:	48 89 f3             	mov    rbx,rsi
  400e51:	48 29 fb             	sub    rbx,rdi
  400e54:	bf b8 28 40 00       	mov    edi,0x4028b8
  400e59:	48 83 ec 08          	sub    rsp,0x8
  400e5d:	e8 8e fc ff ff       	call   400af0 <puts@plt>
  400e62:	4c 89 ee             	mov    rsi,r13
  400e65:	bf 48 29 40 00       	mov    edi,0x402948
  400e6a:	31 c0                	xor    eax,eax
  400e6c:	e8 df fc ff ff       	call   400b50 <printf@plt>
  400e71:	4c 89 e6             	mov    rsi,r12
  400e74:	bf 78 29 40 00       	mov    edi,0x402978
  400e79:	31 c0                	xor    eax,eax
  400e7b:	e8 d0 fc ff ff       	call   400b50 <printf@plt>
  400e80:	89 ee                	mov    esi,ebp
  400e82:	bf a8 29 40 00       	mov    edi,0x4029a8
  400e87:	31 c0                	xor    eax,eax
  400e89:	e8 c2 fc ff ff       	call   400b50 <printf@plt>
  400e8e:	31 c0                	xor    eax,eax
  400e90:	48 89 de             	mov    rsi,rbx
  400e93:	bf d8 29 40 00       	mov    edi,0x4029d8
  400e98:	e8 b3 fc ff ff       	call   400b50 <printf@plt>
  400e9d:	48 85 db             	test   rbx,rbx
  400ea0:	78 2e                	js     400ed0 <imprimir_tiempos_ejecucion+0x90>
  400ea2:	f3 48 0f 2a c3       	cvtsi2ss xmm0,rbx
  400ea7:	f3 0f 2a cd          	cvtsi2ss xmm1,ebp
  400eab:	48 83 c4 08          	add    rsp,0x8
  400eaf:	5b                   	pop    rbx
  400eb0:	5d                   	pop    rbp
  400eb1:	41 5c                	pop    r12
  400eb3:	41 5d                	pop    r13
  400eb5:	bf 08 2a 40 00       	mov    edi,0x402a08
  400eba:	b8 01 00 00 00       	mov    eax,0x1
  400ebf:	f3 0f 5e c1          	divss  xmm0,xmm1
  400ec3:	0f 14 c0             	unpcklps xmm0,xmm0
  400ec6:	0f 5a c0             	cvtps2pd xmm0,xmm0
  400ec9:	e9 82 fc ff ff       	jmp    400b50 <printf@plt>
  400ece:	66 90                	xchg   ax,ax
  400ed0:	48 89 d8             	mov    rax,rbx
  400ed3:	83 e3 01             	and    ebx,0x1
  400ed6:	48 d1 e8             	shr    rax,1
  400ed9:	48 09 d8             	or     rax,rbx
  400edc:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
  400ee1:	f3 0f 58 c0          	addss  xmm0,xmm0
  400ee5:	eb c0                	jmp    400ea7 <imprimir_tiempos_ejecucion+0x67>
  400ee7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  400eee:	00 00 

0000000000400ef0 <correr_filtro_imagen>:
  400ef0:	41 57                	push   r15
  400ef2:	b8 d0 28 40 00       	mov    eax,0x4028d0
  400ef7:	41 56                	push   r14
  400ef9:	41 55                	push   r13
  400efb:	41 54                	push   r12
  400efd:	49 89 f4             	mov    r12,rsi
  400f00:	55                   	push   rbp
  400f01:	bd ce 28 40 00       	mov    ebp,0x4028ce
  400f06:	53                   	push   rbx
  400f07:	48 89 fb             	mov    rbx,rdi
  400f0a:	4c 8d ab 88 00 00 00 	lea    r13,[rbx+0x88]
  400f11:	48 83 ec 18          	sub    rsp,0x18
  400f15:	8b 57 08             	mov    edx,DWORD PTR [rdi+0x8]
  400f18:	4c 8b bf 90 01 00 00 	mov    r15,QWORD PTR [rdi+0x190]
  400f1f:	4c 8b 37             	mov    r14,QWORD PTR [rdi]
  400f22:	48 8b 7f 78          	mov    rdi,QWORD PTR [rdi+0x78]
  400f26:	85 d2                	test   edx,edx
  400f28:	48 0f 45 e8          	cmovne rbp,rax
  400f2c:	e8 6f fc ff ff       	call   400ba0 <basename@plt>
  400f31:	48 8b 8b 88 01 00 00 	mov    rcx,QWORD PTR [rbx+0x188]
  400f38:	49 89 c0             	mov    r8,rax
  400f3b:	4c 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],r15
  400f40:	31 c0                	xor    eax,eax
  400f42:	48 89 2c 24          	mov    QWORD PTR [rsp],rbp
  400f46:	4d 89 f1             	mov    r9,r14
  400f49:	ba d4 28 40 00       	mov    edx,0x4028d4
  400f4e:	be ff 00 00 00       	mov    esi,0xff
  400f53:	4c 89 ef             	mov    rdi,r13
  400f56:	e8 05 fc ff ff       	call   400b60 <snprintf@plt>
  400f5b:	80 bb 9b 01 00 00 00 	cmp    BYTE PTR [rbx+0x19b],0x0
  400f62:	0f 85 18 01 00 00    	jne    401080 <correr_filtro_imagen+0x190>
  400f68:	48 89 df             	mov    rdi,rbx
  400f6b:	e8 b0 0c 00 00       	call   401c20 <imagenes_abrir>
  400f70:	48 31 d2             	xor    rdx,rdx
  400f73:	48 31 c0             	xor    rax,rax
  400f76:	0f ae e8             	lfence 
  400f79:	0f 31                	rdtsc  
  400f7b:	48 c1 e2 20          	shl    rdx,0x20
  400f7f:	48 09 d0             	or     rax,rdx
  400f82:	48 89 c1             	mov    rcx,rax
  400f85:	48 31 d2             	xor    rdx,rdx
  400f88:	48 31 c0             	xor    rax,rax
  400f8b:	0f ae e8             	lfence 
  400f8e:	0f 31                	rdtsc  
  400f90:	48 c1 e2 20          	shl    rdx,0x20
  400f94:	48 09 d0             	or     rax,rdx
  400f97:	48 89 c1             	mov    rcx,rax
  400f9a:	48 31 d2             	xor    rdx,rdx
  400f9d:	48 31 c0             	xor    rax,rax
  400fa0:	0f ae e8             	lfence 
  400fa3:	0f 31                	rdtsc  
  400fa5:	48 c1 e2 20          	shl    rdx,0x20
  400fa9:	48 09 d0             	or     rax,rdx
  400fac:	49 89 c5             	mov    r13,rax
  400faf:	8b 83 9c 01 00 00    	mov    eax,DWORD PTR [rbx+0x19c]
  400fb5:	31 ed                	xor    ebp,ebp
  400fb7:	85 c0                	test   eax,eax
  400fb9:	7e 16                	jle    400fd1 <correr_filtro_imagen+0xe1>
  400fbb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  400fc0:	48 89 df             	mov    rdi,rbx
  400fc3:	83 c5 01             	add    ebp,0x1
  400fc6:	41 ff d4             	call   r12
  400fc9:	39 ab 9c 01 00 00    	cmp    DWORD PTR [rbx+0x19c],ebp
  400fcf:	7f ef                	jg     400fc0 <correr_filtro_imagen+0xd0>
  400fd1:	48 31 d2             	xor    rdx,rdx
  400fd4:	48 31 c0             	xor    rax,rax
  400fd7:	0f ae e8             	lfence 
  400fda:	0f 31                	rdtsc  
  400fdc:	48 c1 e2 20          	shl    rdx,0x20
  400fe0:	48 09 d0             	or     rax,rdx
  400fe3:	49 89 c4             	mov    r12,rax
  400fe6:	48 89 df             	mov    rdi,rbx
  400fe9:	e8 52 0e 00 00       	call   401e40 <imagenes_guardar>
  400fee:	48 89 df             	mov    rdi,rbx
  400ff1:	31 c0                	xor    eax,eax
  400ff3:	e8 68 0e 00 00       	call   401e60 <imagenes_liberar>
  400ff8:	8b ab 9c 01 00 00    	mov    ebp,DWORD PTR [rbx+0x19c]
  400ffe:	bf b8 28 40 00       	mov    edi,0x4028b8
  401003:	4c 89 e3             	mov    rbx,r12
  401006:	e8 e5 fa ff ff       	call   400af0 <puts@plt>
  40100b:	4c 89 ee             	mov    rsi,r13
  40100e:	bf 48 29 40 00       	mov    edi,0x402948
  401013:	31 c0                	xor    eax,eax
  401015:	e8 36 fb ff ff       	call   400b50 <printf@plt>
  40101a:	4c 89 e6             	mov    rsi,r12
  40101d:	bf 78 29 40 00       	mov    edi,0x402978
  401022:	31 c0                	xor    eax,eax
  401024:	e8 27 fb ff ff       	call   400b50 <printf@plt>
  401029:	4c 29 eb             	sub    rbx,r13
  40102c:	89 ee                	mov    esi,ebp
  40102e:	bf a8 29 40 00       	mov    edi,0x4029a8
  401033:	31 c0                	xor    eax,eax
  401035:	e8 16 fb ff ff       	call   400b50 <printf@plt>
  40103a:	31 c0                	xor    eax,eax
  40103c:	48 89 de             	mov    rsi,rbx
  40103f:	bf d8 29 40 00       	mov    edi,0x4029d8
  401044:	e8 07 fb ff ff       	call   400b50 <printf@plt>
  401049:	48 85 db             	test   rbx,rbx
  40104c:	78 52                	js     4010a0 <correr_filtro_imagen+0x1b0>
  40104e:	f3 48 0f 2a c3       	cvtsi2ss xmm0,rbx
  401053:	f3 0f 2a cd          	cvtsi2ss xmm1,ebp
  401057:	48 83 c4 18          	add    rsp,0x18
  40105b:	5b                   	pop    rbx
  40105c:	5d                   	pop    rbp
  40105d:	41 5c                	pop    r12
  40105f:	41 5d                	pop    r13
  401061:	41 5e                	pop    r14
  401063:	41 5f                	pop    r15
  401065:	bf 08 2a 40 00       	mov    edi,0x402a08
  40106a:	b8 01 00 00 00       	mov    eax,0x1
  40106f:	f3 0f 5e c1          	divss  xmm0,xmm1
  401073:	0f 14 c0             	unpcklps xmm0,xmm0
  401076:	0f 5a c0             	cvtps2pd xmm0,xmm0
  401079:	e9 d2 fa ff ff       	jmp    400b50 <printf@plt>
  40107e:	66 90                	xchg   ax,ax
  401080:	4c 89 ef             	mov    rdi,r13
  401083:	e8 18 fb ff ff       	call   400ba0 <basename@plt>
  401088:	48 83 c4 18          	add    rsp,0x18
  40108c:	48 89 c7             	mov    rdi,rax
  40108f:	5b                   	pop    rbx
  401090:	5d                   	pop    rbp
  401091:	41 5c                	pop    r12
  401093:	41 5d                	pop    r13
  401095:	41 5e                	pop    r14
  401097:	41 5f                	pop    r15
  401099:	e9 52 fa ff ff       	jmp    400af0 <puts@plt>
  40109e:	66 90                	xchg   ax,ax
  4010a0:	48 89 d8             	mov    rax,rbx
  4010a3:	83 e3 01             	and    ebx,0x1
  4010a6:	48 d1 e8             	shr    rax,1
  4010a9:	48 09 d8             	or     rax,rbx
  4010ac:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
  4010b1:	f3 0f 58 c0          	addss  xmm0,xmm0
  4010b5:	eb 9c                	jmp    401053 <correr_filtro_imagen+0x163>
  4010b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  4010be:	00 00 

00000000004010c0 <imprimir_ayuda>:
  4010c0:	53                   	push   rbx
  4010c1:	48 89 fe             	mov    rsi,rdi
  4010c4:	31 c0                	xor    eax,eax
  4010c6:	bf 38 2a 40 00       	mov    edi,0x402a38
  4010cb:	31 db                	xor    ebx,ebx
  4010cd:	e8 7e fa ff ff       	call   400b50 <printf@plt>
  4010d2:	bf 80 2a 40 00       	mov    edi,0x402a80
  4010d7:	e8 14 fa ff ff       	call   400af0 <puts@plt>
  4010dc:	31 c0                	xor    eax,eax
  4010de:	48 83 3d 1a 30 20 00 	cmp    QWORD PTR [rip+0x20301a],0x0        # 604100 <filtros>
  4010e5:	00 
  4010e6:	74 28                	je     401110 <imprimir_ayuda+0x50>
  4010e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4010ef:	00 
  4010f0:	48 8d 04 80          	lea    rax,[rax+rax*4]
  4010f4:	83 c3 01             	add    ebx,0x1
  4010f7:	ff 14 c5 10 41 60 00 	call   QWORD PTR [rax*8+0x604110]
  4010fe:	48 63 c3             	movsxd rax,ebx
  401101:	48 8d 14 80          	lea    rdx,[rax+rax*4]
  401105:	48 83 3c d5 00 41 60 	cmp    QWORD PTR [rdx*8+0x604100],0x0
  40110c:	00 00 
  40110e:	75 e0                	jne    4010f0 <imprimir_ayuda+0x30>
  401110:	bf 0a 00 00 00       	mov    edi,0xa
  401115:	e8 b6 f9 ff ff       	call   400ad0 <putchar@plt>
  40111a:	bf 09 2e 40 00       	mov    edi,0x402e09
  40111f:	e8 cc f9 ff ff       	call   400af0 <puts@plt>
  401124:	bf b0 2a 40 00       	mov    edi,0x402ab0
  401129:	e8 c2 f9 ff ff       	call   400af0 <puts@plt>
  40112e:	bf 0a 00 00 00       	mov    edi,0xa
  401133:	e8 98 f9 ff ff       	call   400ad0 <putchar@plt>
  401138:	bf d8 2a 40 00       	mov    edi,0x402ad8
  40113d:	e8 ae f9 ff ff       	call   400af0 <puts@plt>
  401142:	bf 00 2b 40 00       	mov    edi,0x402b00
  401147:	e8 a4 f9 ff ff       	call   400af0 <puts@plt>
  40114c:	bf 0a 00 00 00       	mov    edi,0xa
  401151:	e8 7a f9 ff ff       	call   400ad0 <putchar@plt>
  401156:	bf e0 2b 40 00       	mov    edi,0x402be0
  40115b:	e8 90 f9 ff ff       	call   400af0 <puts@plt>
  401160:	bf 08 2c 40 00       	mov    edi,0x402c08
  401165:	e8 86 f9 ff ff       	call   400af0 <puts@plt>
  40116a:	bf 0a 00 00 00       	mov    edi,0xa
  40116f:	e8 5c f9 ff ff       	call   400ad0 <putchar@plt>
  401174:	bf 1a 2e 40 00       	mov    edi,0x402e1a
  401179:	e8 72 f9 ff ff       	call   400af0 <puts@plt>
  40117e:	bf f0 2c 40 00       	mov    edi,0x402cf0
  401183:	e8 68 f9 ff ff       	call   400af0 <puts@plt>
  401188:	bf 33 2e 40 00       	mov    edi,0x402e33
  40118d:	e8 5e f9 ff ff       	call   400af0 <puts@plt>
  401192:	bf 48 2d 40 00       	mov    edi,0x402d48
  401197:	e8 54 f9 ff ff       	call   400af0 <puts@plt>
  40119c:	bf 44 2e 40 00       	mov    edi,0x402e44
  4011a1:	e8 4a f9 ff ff       	call   400af0 <puts@plt>
  4011a6:	bf a8 2d 40 00       	mov    edi,0x402da8
  4011ab:	e8 40 f9 ff ff       	call   400af0 <puts@plt>
  4011b0:	5b                   	pop    rbx
  4011b1:	bf 0a 00 00 00       	mov    edi,0xa
  4011b6:	e9 15 f9 ff ff       	jmp    400ad0 <putchar@plt>
  4011bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000004011c0 <procesar_opciones>:
  4011c0:	41 56                	push   r14
  4011c2:	41 55                	push   r13
  4011c4:	49 89 f5             	mov    r13,rsi
  4011c7:	41 54                	push   r12
  4011c9:	41 89 fc             	mov    r12d,edi
  4011cc:	55                   	push   rbp
  4011cd:	53                   	push   rbx
  4011ce:	48 81 ec 20 01 00 00 	sub    rsp,0x120
  4011d5:	83 ff 01             	cmp    edi,0x1
  4011d8:	0f 84 a2 00 00 00    	je     401280 <procesar_opciones+0xc0>
  4011de:	be a0 2e 40 00       	mov    esi,0x402ea0
  4011e3:	b9 24 00 00 00       	mov    ecx,0x24
  4011e8:	48 89 e7             	mov    rdi,rsp
  4011eb:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
  4011ee:	48 89 d3             	mov    rbx,rdx
  4011f1:	c6 82 98 01 00 00 00 	mov    BYTE PTR [rdx+0x198],0x0
  4011f8:	c6 82 99 01 00 00 00 	mov    BYTE PTR [rdx+0x199],0x0
  4011ff:	c6 82 9a 01 00 00 00 	mov    BYTE PTR [rdx+0x19a],0x0
  401206:	c6 82 9b 01 00 00 00 	mov    BYTE PTR [rdx+0x19b],0x0
  40120d:	48 89 e5             	mov    rbp,rsp
  401210:	c7 82 9c 01 00 00 01 	mov    DWORD PTR [rdx+0x19c],0x1
  401217:	00 00 00 
  40121a:	48 c7 42 78 00 00 00 	mov    QWORD PTR [rdx+0x78],0x0
  401221:	00 
  401222:	48 c7 82 80 00 00 00 	mov    QWORD PTR [rdx+0x80],0x0
  401229:	00 00 00 00 
  40122d:	48 c7 82 88 01 00 00 	mov    QWORD PTR [rdx+0x188],0x4028f2
  401234:	f2 28 40 00 
  401238:	48 c7 82 90 01 00 00 	mov    QWORD PTR [rdx+0x190],0x4031be
  40123f:	be 31 40 00 
  401243:	45 31 c0             	xor    r8d,r8d
  401246:	48 89 e9             	mov    rcx,rbp
  401249:	ba 56 2e 40 00       	mov    edx,0x402e56
  40124e:	4c 89 ee             	mov    rsi,r13
  401251:	44 89 e7             	mov    edi,r12d
  401254:	e8 e7 f8 ff ff       	call   400b40 <getopt_long@plt>
  401259:	83 f8 ff             	cmp    eax,0xffffffff
  40125c:	0f 84 be 00 00 00    	je     401320 <procesar_opciones+0x160>
  401262:	83 e8 3f             	sub    eax,0x3f
  401265:	83 f8 38             	cmp    eax,0x38
  401268:	0f 87 aa 00 00 00    	ja     401318 <procesar_opciones+0x158>
  40126e:	66 90                	xchg   ax,ax
  401270:	ff 24 c5 c0 2f 40 00 	jmp    QWORD PTR [rax*8+0x402fc0]
  401277:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  40127e:	00 00 
  401280:	49 8b 7d 00          	mov    rdi,QWORD PTR [r13+0x0]
  401284:	e8 37 fe ff ff       	call   4010c0 <imprimir_ayuda>
  401289:	31 ff                	xor    edi,edi
  40128b:	e8 80 f9 ff ff       	call   400c10 <exit@plt>
  401290:	c6 83 99 01 00 00 01 	mov    BYTE PTR [rbx+0x199],0x1
  401297:	eb aa                	jmp    401243 <procesar_opciones+0x83>
  401299:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  4012a0:	48 8b 3d d9 2e 20 00 	mov    rdi,QWORD PTR [rip+0x202ed9]        # 604180 <optarg@@GLIBC_2.2.5>
  4012a7:	ba 0a 00 00 00       	mov    edx,0xa
  4012ac:	31 f6                	xor    esi,esi
  4012ae:	e8 0d f9 ff ff       	call   400bc0 <strtol@plt>
  4012b3:	89 83 9c 01 00 00    	mov    DWORD PTR [rbx+0x19c],eax
  4012b9:	eb 88                	jmp    401243 <procesar_opciones+0x83>
  4012bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4012c0:	48 8b 05 b9 2e 20 00 	mov    rax,QWORD PTR [rip+0x202eb9]        # 604180 <optarg@@GLIBC_2.2.5>
  4012c7:	48 89 83 88 01 00 00 	mov    QWORD PTR [rbx+0x188],rax
  4012ce:	e9 70 ff ff ff       	jmp    401243 <procesar_opciones+0x83>
  4012d3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4012d8:	c6 83 9b 01 00 00 01 	mov    BYTE PTR [rbx+0x19b],0x1
  4012df:	e9 5f ff ff ff       	jmp    401243 <procesar_opciones+0x83>
  4012e4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4012e8:	4c 8b 35 91 2e 20 00 	mov    r14,QWORD PTR [rip+0x202e91]        # 604180 <optarg@@GLIBC_2.2.5>
  4012ef:	e9 4f ff ff ff       	jmp    401243 <procesar_opciones+0x83>
  4012f4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  4012f8:	c6 83 98 01 00 00 01 	mov    BYTE PTR [rbx+0x198],0x1
  4012ff:	e9 3f ff ff ff       	jmp    401243 <procesar_opciones+0x83>
  401304:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  401308:	c6 83 9a 01 00 00 01 	mov    BYTE PTR [rbx+0x19a],0x1
  40130f:	e9 2f ff ff ff       	jmp    401243 <procesar_opciones+0x83>
  401314:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  401318:	e8 c3 f7 ff ff       	call   400ae0 <abort@plt>
  40131d:	0f 1f 00             	nop    DWORD PTR [rax]
  401320:	8b 05 52 2e 20 00    	mov    eax,DWORD PTR [rip+0x202e52]        # 604178 <__TMC_END__>
  401326:	8d 50 01             	lea    edx,[rax+0x1]
  401329:	89 15 49 2e 20 00    	mov    DWORD PTR [rip+0x202e49],edx        # 604178 <__TMC_END__>
  40132f:	48 63 d0             	movsxd rdx,eax
  401332:	48 8d 34 d5 00 00 00 	lea    rsi,[rdx*8+0x0]
  401339:	00 
  40133a:	49 8b 54 d5 00       	mov    rdx,QWORD PTR [r13+rdx*8+0x0]
  40133f:	48 85 d2             	test   rdx,rdx
  401342:	48 89 13             	mov    QWORD PTR [rbx],rdx
  401345:	0f 84 35 ff ff ff    	je     401280 <procesar_opciones+0xc0>
  40134b:	4d 85 f6             	test   r14,r14
  40134e:	0f 84 2c ff ff ff    	je     401280 <procesar_opciones+0xc0>
  401354:	41 0f b6 0e          	movzx  ecx,BYTE PTR [r14]
  401358:	ba 63 00 00 00       	mov    edx,0x63
  40135d:	29 ca                	sub    edx,ecx
  40135f:	0f 84 cb 00 00 00    	je     401430 <procesar_opciones+0x270>
  401365:	83 f9 61             	cmp    ecx,0x61
  401368:	0f 85 12 ff ff ff    	jne    401280 <procesar_opciones+0xc0>
  40136e:	41 80 7e 01 73       	cmp    BYTE PTR [r14+0x1],0x73
  401373:	0f 85 07 ff ff ff    	jne    401280 <procesar_opciones+0xc0>
  401379:	41 80 7e 02 6d       	cmp    BYTE PTR [r14+0x2],0x6d
  40137e:	0f 85 fc fe ff ff    	jne    401280 <procesar_opciones+0xc0>
  401384:	41 80 7e 03 00       	cmp    BYTE PTR [r14+0x3],0x0
  401389:	0f 85 f1 fe ff ff    	jne    401280 <procesar_opciones+0xc0>
  40138f:	85 d2                	test   edx,edx
  401391:	0f 84 ad 00 00 00    	je     401444 <procesar_opciones+0x284>
  401397:	49 8b 7c 35 08       	mov    rdi,QWORD PTR [r13+rsi*1+0x8]
  40139c:	85 d2                	test   edx,edx
  40139e:	0f 95 c2             	setne  dl
  4013a1:	83 c0 02             	add    eax,0x2
  4013a4:	0f b6 d2             	movzx  edx,dl
  4013a7:	89 05 cb 2d 20 00    	mov    DWORD PTR [rip+0x202dcb],eax        # 604178 <__TMC_END__>
  4013ad:	48 85 ff             	test   rdi,rdi
  4013b0:	89 53 08             	mov    DWORD PTR [rbx+0x8],edx
  4013b3:	48 89 7b 78          	mov    QWORD PTR [rbx+0x78],rdi
  4013b7:	0f 84 c3 fe ff ff    	je     401280 <procesar_opciones+0xc0>
  4013bd:	31 f6                	xor    esi,esi
  4013bf:	e8 1c f8 ff ff       	call   400be0 <access@plt>
  4013c4:	83 f8 ff             	cmp    eax,0xffffffff
  4013c7:	0f 84 9d 00 00 00    	je     40146a <procesar_opciones+0x2aa>
  4013cd:	48 89 df             	mov    rdi,rbx
  4013d0:	e8 eb f9 ff ff       	call   400dc0 <detectar_filtro>
  4013d5:	48 85 c0             	test   rax,rax
  4013d8:	74 3c                	je     401416 <procesar_opciones+0x256>
  4013da:	48 63 15 97 2d 20 00 	movsxd rdx,DWORD PTR [rip+0x202d97]        # 604178 <__TMC_END__>
  4013e1:	41 39 d4             	cmp    r12d,edx
  4013e4:	7e 30                	jle    401416 <procesar_opciones+0x256>
  4013e6:	83 78 20 01          	cmp    DWORD PTR [rax+0x20],0x1
  4013ea:	7e 2a                	jle    401416 <procesar_opciones+0x256>
  4013ec:	49 8b 7c d5 00       	mov    rdi,QWORD PTR [r13+rdx*8+0x0]
  4013f1:	8d 42 01             	lea    eax,[rdx+0x1]
  4013f4:	89 05 7e 2d 20 00    	mov    DWORD PTR [rip+0x202d7e],eax        # 604178 <__TMC_END__>
  4013fa:	48 85 ff             	test   rdi,rdi
  4013fd:	48 89 bb 80 00 00 00 	mov    QWORD PTR [rbx+0x80],rdi
  401404:	0f 84 76 fe ff ff    	je     401280 <procesar_opciones+0xc0>
  40140a:	31 f6                	xor    esi,esi
  40140c:	e8 cf f7 ff ff       	call   400be0 <access@plt>
  401411:	83 f8 ff             	cmp    eax,0xffffffff
  401414:	74 3a                	je     401450 <procesar_opciones+0x290>
  401416:	48 81 c4 20 01 00 00 	add    rsp,0x120
  40141d:	5b                   	pop    rbx
  40141e:	5d                   	pop    rbp
  40141f:	41 5c                	pop    r12
  401421:	41 5d                	pop    r13
  401423:	41 5e                	pop    r14
  401425:	c3                   	ret    
  401426:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40142d:	00 00 00 
  401430:	41 80 7e 01 00       	cmp    BYTE PTR [r14+0x1],0x0
  401435:	0f 85 2a ff ff ff    	jne    401365 <procesar_opciones+0x1a5>
  40143b:	31 d2                	xor    edx,edx
  40143d:	f7 da                	neg    edx
  40143f:	e9 53 ff ff ff       	jmp    401397 <procesar_opciones+0x1d7>
  401444:	ba 73 00 00 00       	mov    edx,0x73
  401449:	f7 da                	neg    edx
  40144b:	e9 47 ff ff ff       	jmp    401397 <procesar_opciones+0x1d7>
  401450:	48 8b b3 80 00 00 00 	mov    rsi,QWORD PTR [rbx+0x80]
  401457:	bf e0 2d 40 00       	mov    edi,0x402de0
  40145c:	31 c0                	xor    eax,eax
  40145e:	e8 ed f6 ff ff       	call   400b50 <printf@plt>
  401463:	31 ff                	xor    edi,edi
  401465:	e8 a6 f7 ff ff       	call   400c10 <exit@plt>
  40146a:	48 8b 73 78          	mov    rsi,QWORD PTR [rbx+0x78]
  40146e:	eb e7                	jmp    401457 <procesar_opciones+0x297>

0000000000401470 <get_BMPIH>:
  401470:	55                   	push   rbp
  401471:	31 c0                	xor    eax,eax
  401473:	53                   	push   rbx
  401474:	89 fb                	mov    ebx,edi
  401476:	48 83 ec 08          	sub    rsp,0x8
  40147a:	40 f6 c7 03          	test   dil,0x3
  40147e:	75 57                	jne    4014d7 <get_BMPIH+0x67>
  401480:	bf 28 00 00 00       	mov    edi,0x28
  401485:	89 f5                	mov    ebp,esi
  401487:	e8 44 f7 ff ff       	call   400bd0 <malloc@plt>
  40148c:	ba 01 00 00 00       	mov    edx,0x1
  401491:	b9 18 00 00 00       	mov    ecx,0x18
  401496:	c7 00 28 00 00 00    	mov    DWORD PTR [rax],0x28
  40149c:	66 89 50 0c          	mov    WORD PTR [rax+0xc],dx
  4014a0:	8d 54 6d 00          	lea    edx,[rbp+rbp*2+0x0]
  4014a4:	89 58 04             	mov    DWORD PTR [rax+0x4],ebx
  4014a7:	89 68 08             	mov    DWORD PTR [rax+0x8],ebp
  4014aa:	66 89 48 0e          	mov    WORD PTR [rax+0xe],cx
  4014ae:	0f af d3             	imul   edx,ebx
  4014b1:	c7 40 10 00 00 00 00 	mov    DWORD PTR [rax+0x10],0x0
  4014b8:	c7 40 18 88 0b 00 00 	mov    DWORD PTR [rax+0x18],0xb88
  4014bf:	c7 40 1c 88 0b 00 00 	mov    DWORD PTR [rax+0x1c],0xb88
  4014c6:	c7 40 20 00 00 00 00 	mov    DWORD PTR [rax+0x20],0x0
  4014cd:	c7 40 24 00 00 00 00 	mov    DWORD PTR [rax+0x24],0x0
  4014d4:	89 50 14             	mov    DWORD PTR [rax+0x14],edx
  4014d7:	48 83 c4 08          	add    rsp,0x8
  4014db:	5b                   	pop    rbx
  4014dc:	5d                   	pop    rbp
  4014dd:	c3                   	ret    
  4014de:	66 90                	xchg   ax,ax

00000000004014e0 <get_BMPV5H>:
  4014e0:	55                   	push   rbp
  4014e1:	31 c0                	xor    eax,eax
  4014e3:	53                   	push   rbx
  4014e4:	89 fb                	mov    ebx,edi
  4014e6:	48 83 ec 08          	sub    rsp,0x8
  4014ea:	40 f6 c7 03          	test   dil,0x3
  4014ee:	0f 85 ed 00 00 00    	jne    4015e1 <get_BMPV5H+0x101>
  4014f4:	89 f5                	mov    ebp,esi
  4014f6:	bf 7c 00 00 00       	mov    edi,0x7c
  4014fb:	e8 d0 f6 ff ff       	call   400bd0 <malloc@plt>
  401500:	8d 34 ad 00 00 00 00 	lea    esi,[rbp*4+0x0]
  401507:	ba 01 00 00 00       	mov    edx,0x1
  40150c:	b9 20 00 00 00       	mov    ecx,0x20
  401511:	c7 00 7c 00 00 00    	mov    DWORD PTR [rax],0x7c
  401517:	89 58 04             	mov    DWORD PTR [rax+0x4],ebx
  40151a:	0f af f3             	imul   esi,ebx
  40151d:	89 68 08             	mov    DWORD PTR [rax+0x8],ebp
  401520:	66 89 50 0c          	mov    WORD PTR [rax+0xc],dx
  401524:	66 89 48 0e          	mov    WORD PTR [rax+0xe],cx
  401528:	c7 40 10 03 00 00 00 	mov    DWORD PTR [rax+0x10],0x3
  40152f:	c7 40 18 88 0b 00 00 	mov    DWORD PTR [rax+0x18],0xb88
  401536:	c7 40 1c 88 0b 00 00 	mov    DWORD PTR [rax+0x1c],0xb88
  40153d:	89 70 14             	mov    DWORD PTR [rax+0x14],esi
  401540:	c7 40 20 00 00 00 00 	mov    DWORD PTR [rax+0x20],0x0
  401547:	c7 40 24 00 00 00 00 	mov    DWORD PTR [rax+0x24],0x0
  40154e:	c7 40 28 00 00 00 ff 	mov    DWORD PTR [rax+0x28],0xff000000
  401555:	c7 40 2c 00 00 ff 00 	mov    DWORD PTR [rax+0x2c],0xff0000
  40155c:	c7 40 30 00 ff 00 00 	mov    DWORD PTR [rax+0x30],0xff00
  401563:	c7 40 34 ff 00 00 00 	mov    DWORD PTR [rax+0x34],0xff
  40156a:	c7 40 38 42 47 52 73 	mov    DWORD PTR [rax+0x38],0x73524742
  401571:	c7 40 3c 00 00 00 00 	mov    DWORD PTR [rax+0x3c],0x0
  401578:	c7 40 40 00 00 00 00 	mov    DWORD PTR [rax+0x40],0x0
  40157f:	c7 40 44 00 00 00 00 	mov    DWORD PTR [rax+0x44],0x0
  401586:	c7 40 48 00 00 00 00 	mov    DWORD PTR [rax+0x48],0x0
  40158d:	c7 40 4c 00 00 00 00 	mov    DWORD PTR [rax+0x4c],0x0
  401594:	c7 40 50 00 00 00 00 	mov    DWORD PTR [rax+0x50],0x0
  40159b:	c7 40 54 00 00 00 00 	mov    DWORD PTR [rax+0x54],0x0
  4015a2:	c7 40 58 00 00 00 00 	mov    DWORD PTR [rax+0x58],0x0
  4015a9:	c7 40 5c 00 00 00 00 	mov    DWORD PTR [rax+0x5c],0x0
  4015b0:	c7 40 60 00 00 00 00 	mov    DWORD PTR [rax+0x60],0x0
  4015b7:	c7 40 64 00 00 00 00 	mov    DWORD PTR [rax+0x64],0x0
  4015be:	c7 40 68 00 00 00 00 	mov    DWORD PTR [rax+0x68],0x0
  4015c5:	c7 40 6c 02 00 00 00 	mov    DWORD PTR [rax+0x6c],0x2
  4015cc:	c7 40 70 00 00 00 00 	mov    DWORD PTR [rax+0x70],0x0
  4015d3:	c7 40 74 00 00 00 00 	mov    DWORD PTR [rax+0x74],0x0
  4015da:	c7 40 78 00 00 00 00 	mov    DWORD PTR [rax+0x78],0x0
  4015e1:	48 83 c4 08          	add    rsp,0x8
  4015e5:	5b                   	pop    rbx
  4015e6:	5d                   	pop    rbp
  4015e7:	c3                   	ret    
  4015e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4015ef:	00 

00000000004015f0 <bmp_create>:
  4015f0:	41 56                	push   r14
  4015f2:	41 89 f6             	mov    r14d,esi
  4015f5:	41 55                	push   r13
  4015f7:	41 54                	push   r12
  4015f9:	55                   	push   rbp
  4015fa:	48 89 fd             	mov    rbp,rdi
  4015fd:	53                   	push   rbx
  4015fe:	44 8b 67 14          	mov    r12d,DWORD PTR [rdi+0x14]
  401602:	44 89 e3             	mov    ebx,r12d
  401605:	48 89 df             	mov    rdi,rbx
  401608:	e8 c3 f5 ff ff       	call   400bd0 <malloc@plt>
  40160d:	45 85 f6             	test   r14d,r14d
  401610:	49 89 c5             	mov    r13,rax
  401613:	74 12                	je     401627 <bmp_create+0x37>
  401615:	45 85 e4             	test   r12d,r12d
  401618:	74 0d                	je     401627 <bmp_create+0x37>
  40161a:	48 89 da             	mov    rdx,rbx
  40161d:	31 f6                	xor    esi,esi
  40161f:	48 89 c7             	mov    rdi,rax
  401622:	e8 49 f5 ff ff       	call   400b70 <memset@plt>
  401627:	bf 0e 00 00 00       	mov    edi,0xe
  40162c:	e8 9f f5 ff ff       	call   400bd0 <malloc@plt>
  401631:	48 89 c3             	mov    rbx,rax
  401634:	c6 00 42             	mov    BYTE PTR [rax],0x42
  401637:	c6 40 01 4d          	mov    BYTE PTR [rax+0x1],0x4d
  40163b:	8b 45 00             	mov    eax,DWORD PTR [rbp+0x0]
  40163e:	bf 18 00 00 00       	mov    edi,0x18
  401643:	8d 50 0e             	lea    edx,[rax+0xe]
  401646:	31 c0                	xor    eax,eax
  401648:	66 89 43 06          	mov    WORD PTR [rbx+0x6],ax
  40164c:	89 53 0a             	mov    DWORD PTR [rbx+0xa],edx
  40164f:	41 01 d4             	add    r12d,edx
  401652:	31 d2                	xor    edx,edx
  401654:	44 89 63 02          	mov    DWORD PTR [rbx+0x2],r12d
  401658:	66 89 53 08          	mov    WORD PTR [rbx+0x8],dx
  40165c:	e8 6f f5 ff ff       	call   400bd0 <malloc@plt>
  401661:	48 89 18             	mov    QWORD PTR [rax],rbx
  401664:	48 89 68 08          	mov    QWORD PTR [rax+0x8],rbp
  401668:	4c 89 68 10          	mov    QWORD PTR [rax+0x10],r13
  40166c:	5b                   	pop    rbx
  40166d:	5d                   	pop    rbp
  40166e:	41 5c                	pop    r12
  401670:	41 5d                	pop    r13
  401672:	41 5e                	pop    r14
  401674:	c3                   	ret    
  401675:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  40167c:	00 00 00 00 

0000000000401680 <bmp_copy>:
  401680:	41 57                	push   r15
  401682:	41 89 f7             	mov    r15d,esi
  401685:	41 56                	push   r14
  401687:	49 89 fe             	mov    r14,rdi
  40168a:	bf 0e 00 00 00       	mov    edi,0xe
  40168f:	41 55                	push   r13
  401691:	41 54                	push   r12
  401693:	55                   	push   rbp
  401694:	53                   	push   rbx
  401695:	48 83 ec 08          	sub    rsp,0x8
  401699:	e8 32 f5 ff ff       	call   400bd0 <malloc@plt>
  40169e:	49 89 c4             	mov    r12,rax
  4016a1:	49 8b 06             	mov    rax,QWORD PTR [r14]
  4016a4:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  4016a7:	49 89 14 24          	mov    QWORD PTR [r12],rdx
  4016ab:	8b 50 08             	mov    edx,DWORD PTR [rax+0x8]
  4016ae:	41 89 54 24 08       	mov    DWORD PTR [r12+0x8],edx
  4016b3:	0f b7 40 0c          	movzx  eax,WORD PTR [rax+0xc]
  4016b7:	66 41 89 44 24 0c    	mov    WORD PTR [r12+0xc],ax
  4016bd:	41 8b 44 24 0a       	mov    eax,DWORD PTR [r12+0xa]
  4016c2:	83 e8 0e             	sub    eax,0xe
  4016c5:	83 f8 28             	cmp    eax,0x28
  4016c8:	74 66                	je     401730 <bmp_copy+0xb0>
  4016ca:	45 31 ed             	xor    r13d,r13d
  4016cd:	83 f8 7c             	cmp    eax,0x7c
  4016d0:	0f 84 9a 00 00 00    	je     401770 <bmp_copy+0xf0>
  4016d6:	41 8b 5d 14          	mov    ebx,DWORD PTR [r13+0x14]
  4016da:	89 df                	mov    edi,ebx
  4016dc:	e8 ef f4 ff ff       	call   400bd0 <malloc@plt>
  4016e1:	45 85 ff             	test   r15d,r15d
  4016e4:	48 89 c5             	mov    rbp,rax
  4016e7:	74 1f                	je     401708 <bmp_copy+0x88>
  4016e9:	85 db                	test   ebx,ebx
  4016eb:	74 1b                	je     401708 <bmp_copy+0x88>
  4016ed:	49 8b 76 10          	mov    rsi,QWORD PTR [r14+0x10]
  4016f1:	31 d2                	xor    edx,edx
  4016f3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  4016f8:	0f b6 0c 16          	movzx  ecx,BYTE PTR [rsi+rdx*1]
  4016fc:	88 4c 15 00          	mov    BYTE PTR [rbp+rdx*1+0x0],cl
  401700:	48 83 c2 01          	add    rdx,0x1
  401704:	39 d3                	cmp    ebx,edx
  401706:	77 f0                	ja     4016f8 <bmp_copy+0x78>
  401708:	bf 18 00 00 00       	mov    edi,0x18
  40170d:	e8 be f4 ff ff       	call   400bd0 <malloc@plt>
  401712:	4c 89 20             	mov    QWORD PTR [rax],r12
  401715:	4c 89 68 08          	mov    QWORD PTR [rax+0x8],r13
  401719:	48 89 68 10          	mov    QWORD PTR [rax+0x10],rbp
  40171d:	48 83 c4 08          	add    rsp,0x8
  401721:	5b                   	pop    rbx
  401722:	5d                   	pop    rbp
  401723:	41 5c                	pop    r12
  401725:	41 5d                	pop    r13
  401727:	41 5e                	pop    r14
  401729:	41 5f                	pop    r15
  40172b:	c3                   	ret    
  40172c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  401730:	bf 28 00 00 00       	mov    edi,0x28
  401735:	e8 96 f4 ff ff       	call   400bd0 <malloc@plt>
  40173a:	49 89 c5             	mov    r13,rax
  40173d:	49 8b 46 08          	mov    rax,QWORD PTR [r14+0x8]
  401741:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  401744:	49 89 55 00          	mov    QWORD PTR [r13+0x0],rdx
  401748:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  40174c:	49 89 55 08          	mov    QWORD PTR [r13+0x8],rdx
  401750:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
  401754:	49 89 55 10          	mov    QWORD PTR [r13+0x10],rdx
  401758:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
  40175c:	49 89 55 18          	mov    QWORD PTR [r13+0x18],rdx
  401760:	48 8b 40 20          	mov    rax,QWORD PTR [rax+0x20]
  401764:	49 89 45 20          	mov    QWORD PTR [r13+0x20],rax
  401768:	e9 69 ff ff ff       	jmp    4016d6 <bmp_copy+0x56>
  40176d:	0f 1f 00             	nop    DWORD PTR [rax]
  401770:	bf 7c 00 00 00       	mov    edi,0x7c
  401775:	e8 56 f4 ff ff       	call   400bd0 <malloc@plt>
  40177a:	49 89 c5             	mov    r13,rax
  40177d:	49 8b 46 08          	mov    rax,QWORD PTR [r14+0x8]
  401781:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  401784:	49 89 55 00          	mov    QWORD PTR [r13+0x0],rdx
  401788:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  40178c:	49 89 55 08          	mov    QWORD PTR [r13+0x8],rdx
  401790:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
  401794:	49 89 55 10          	mov    QWORD PTR [r13+0x10],rdx
  401798:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
  40179c:	49 89 55 18          	mov    QWORD PTR [r13+0x18],rdx
  4017a0:	48 8b 50 20          	mov    rdx,QWORD PTR [rax+0x20]
  4017a4:	49 89 55 20          	mov    QWORD PTR [r13+0x20],rdx
  4017a8:	48 8b 50 28          	mov    rdx,QWORD PTR [rax+0x28]
  4017ac:	49 89 55 28          	mov    QWORD PTR [r13+0x28],rdx
  4017b0:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
  4017b4:	49 89 55 30          	mov    QWORD PTR [r13+0x30],rdx
  4017b8:	48 8b 50 38          	mov    rdx,QWORD PTR [rax+0x38]
  4017bc:	49 89 55 38          	mov    QWORD PTR [r13+0x38],rdx
  4017c0:	48 8b 50 40          	mov    rdx,QWORD PTR [rax+0x40]
  4017c4:	49 89 55 40          	mov    QWORD PTR [r13+0x40],rdx
  4017c8:	48 8b 50 48          	mov    rdx,QWORD PTR [rax+0x48]
  4017cc:	49 89 55 48          	mov    QWORD PTR [r13+0x48],rdx
  4017d0:	48 8b 50 50          	mov    rdx,QWORD PTR [rax+0x50]
  4017d4:	49 89 55 50          	mov    QWORD PTR [r13+0x50],rdx
  4017d8:	48 8b 50 58          	mov    rdx,QWORD PTR [rax+0x58]
  4017dc:	49 89 55 58          	mov    QWORD PTR [r13+0x58],rdx
  4017e0:	48 8b 50 60          	mov    rdx,QWORD PTR [rax+0x60]
  4017e4:	49 89 55 60          	mov    QWORD PTR [r13+0x60],rdx
  4017e8:	48 8b 50 68          	mov    rdx,QWORD PTR [rax+0x68]
  4017ec:	49 89 55 68          	mov    QWORD PTR [r13+0x68],rdx
  4017f0:	48 8b 50 70          	mov    rdx,QWORD PTR [rax+0x70]
  4017f4:	49 89 55 70          	mov    QWORD PTR [r13+0x70],rdx
  4017f8:	8b 40 78             	mov    eax,DWORD PTR [rax+0x78]
  4017fb:	41 89 45 78          	mov    DWORD PTR [r13+0x78],eax
  4017ff:	e9 d2 fe ff ff       	jmp    4016d6 <bmp_copy+0x56>
  401804:	66 66 66 2e 0f 1f 84 	data32 data32 nop WORD PTR cs:[rax+rax*1+0x0]
  40180b:	00 00 00 00 00 

0000000000401810 <bmp_read>:
  401810:	41 56                	push   r14
  401812:	be c1 33 40 00       	mov    esi,0x4033c1
  401817:	41 55                	push   r13
  401819:	41 54                	push   r12
  40181b:	55                   	push   rbp
  40181c:	53                   	push   rbx
  40181d:	e8 ce f3 ff ff       	call   400bf0 <fopen@plt>
  401822:	48 85 c0             	test   rax,rax
  401825:	48 89 c3             	mov    rbx,rax
  401828:	0f 84 6a 01 00 00    	je     401998 <bmp_read+0x188>
  40182e:	bf 0e 00 00 00       	mov    edi,0xe
  401833:	e8 98 f3 ff ff       	call   400bd0 <malloc@plt>
  401838:	48 89 d9             	mov    rcx,rbx
  40183b:	ba 01 00 00 00       	mov    edx,0x1
  401840:	be 0e 00 00 00       	mov    esi,0xe
  401845:	48 89 c7             	mov    rdi,rax
  401848:	49 89 c4             	mov    r12,rax
  40184b:	e8 b0 f2 ff ff       	call   400b00 <fread@plt>
  401850:	48 85 c0             	test   rax,rax
  401853:	0f 84 17 01 00 00    	je     401970 <bmp_read+0x160>
  401859:	41 8b 44 24 0a       	mov    eax,DWORD PTR [r12+0xa]
  40185e:	8d 68 f2             	lea    ebp,[rax-0xe]
  401861:	83 fd 28             	cmp    ebp,0x28
  401864:	74 3a                	je     4018a0 <bmp_read+0x90>
  401866:	83 fd 7c             	cmp    ebp,0x7c
  401869:	0f 84 d1 00 00 00    	je     401940 <bmp_read+0x130>
  40186f:	83 fd 38             	cmp    ebp,0x38
  401872:	0f 84 e0 00 00 00    	je     401958 <bmp_read+0x148>
  401878:	48 8b 0d 09 29 20 00 	mov    rcx,QWORD PTR [rip+0x202909]        # 604188 <stderr@@GLIBC_2.2.5>
  40187f:	ba 21 00 00 00       	mov    edx,0x21
  401884:	be 01 00 00 00       	mov    esi,0x1
  401889:	bf c8 31 40 00       	mov    edi,0x4031c8
  40188e:	e8 8d f3 ff ff       	call   400c20 <fwrite@plt>
  401893:	31 c0                	xor    eax,eax
  401895:	5b                   	pop    rbx
  401896:	5d                   	pop    rbp
  401897:	41 5c                	pop    r12
  401899:	41 5d                	pop    r13
  40189b:	41 5e                	pop    r14
  40189d:	c3                   	ret    
  40189e:	66 90                	xchg   ax,ax
  4018a0:	bf 28 00 00 00       	mov    edi,0x28
  4018a5:	e8 26 f3 ff ff       	call   400bd0 <malloc@plt>
  4018aa:	49 89 c5             	mov    r13,rax
  4018ad:	4d 85 ed             	test   r13,r13
  4018b0:	74 c6                	je     401878 <bmp_read+0x68>
  4018b2:	48 63 f5             	movsxd rsi,ebp
  4018b5:	48 89 d9             	mov    rcx,rbx
  4018b8:	ba 01 00 00 00       	mov    edx,0x1
  4018bd:	4c 89 ef             	mov    rdi,r13
  4018c0:	e8 3b f2 ff ff       	call   400b00 <fread@plt>
  4018c5:	48 85 c0             	test   rax,rax
  4018c8:	74 66                	je     401930 <bmp_read+0x120>
  4018ca:	41 8b 44 24 02       	mov    eax,DWORD PTR [r12+0x2]
  4018cf:	8d 70 f2             	lea    esi,[rax-0xe]
  4018d2:	29 ee                	sub    esi,ebp
  4018d4:	48 63 ee             	movsxd rbp,esi
  4018d7:	48 89 ef             	mov    rdi,rbp
  4018da:	e8 f1 f2 ff ff       	call   400bd0 <malloc@plt>
  4018df:	48 89 d9             	mov    rcx,rbx
  4018e2:	ba 01 00 00 00       	mov    edx,0x1
  4018e7:	48 89 ee             	mov    rsi,rbp
  4018ea:	48 89 c7             	mov    rdi,rax
  4018ed:	49 89 c6             	mov    r14,rax
  4018f0:	e8 0b f2 ff ff       	call   400b00 <fread@plt>
  4018f5:	48 85 c0             	test   rax,rax
  4018f8:	74 36                	je     401930 <bmp_read+0x120>
  4018fa:	bf 18 00 00 00       	mov    edi,0x18
  4018ff:	e8 cc f2 ff ff       	call   400bd0 <malloc@plt>
  401904:	48 89 df             	mov    rdi,rbx
  401907:	4c 89 20             	mov    QWORD PTR [rax],r12
  40190a:	4c 89 68 08          	mov    QWORD PTR [rax+0x8],r13
  40190e:	4c 89 70 10          	mov    QWORD PTR [rax+0x10],r14
  401912:	48 89 c5             	mov    rbp,rax
  401915:	e8 16 f2 ff ff       	call   400b30 <fclose@plt>
  40191a:	5b                   	pop    rbx
  40191b:	48 89 e8             	mov    rax,rbp
  40191e:	5d                   	pop    rbp
  40191f:	41 5c                	pop    r12
  401921:	41 5d                	pop    r13
  401923:	41 5e                	pop    r14
  401925:	c3                   	ret    
  401926:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40192d:	00 00 00 
  401930:	5b                   	pop    rbx
  401931:	5d                   	pop    rbp
  401932:	41 5c                	pop    r12
  401934:	41 5d                	pop    r13
  401936:	31 c0                	xor    eax,eax
  401938:	41 5e                	pop    r14
  40193a:	c3                   	ret    
  40193b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
  401940:	bf 7c 00 00 00       	mov    edi,0x7c
  401945:	e8 86 f2 ff ff       	call   400bd0 <malloc@plt>
  40194a:	49 89 c5             	mov    r13,rax
  40194d:	e9 5b ff ff ff       	jmp    4018ad <bmp_read+0x9d>
  401952:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  401958:	bf 38 00 00 00       	mov    edi,0x38
  40195d:	e8 6e f2 ff ff       	call   400bd0 <malloc@plt>
  401962:	49 89 c5             	mov    r13,rax
  401965:	e9 43 ff ff ff       	jmp    4018ad <bmp_read+0x9d>
  40196a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  401970:	48 8b 0d 11 28 20 00 	mov    rcx,QWORD PTR [rip+0x202811]        # 604188 <stderr@@GLIBC_2.2.5>
  401977:	ba 1a 00 00 00       	mov    edx,0x1a
  40197c:	be 01 00 00 00       	mov    esi,0x1
  401981:	bf a4 31 40 00       	mov    edi,0x4031a4
  401986:	e8 95 f2 ff ff       	call   400c20 <fwrite@plt>
  40198b:	31 c0                	xor    eax,eax
  40198d:	e9 03 ff ff ff       	jmp    401895 <bmp_read+0x85>
  401992:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  401998:	48 8b 0d e9 27 20 00 	mov    rcx,QWORD PTR [rip+0x2027e9]        # 604188 <stderr@@GLIBC_2.2.5>
  40199f:	ba 1b 00 00 00       	mov    edx,0x1b
  4019a4:	be 01 00 00 00       	mov    esi,0x1
  4019a9:	bf 88 31 40 00       	mov    edi,0x403188
  4019ae:	e8 6d f2 ff ff       	call   400c20 <fwrite@plt>
  4019b3:	31 c0                	xor    eax,eax
  4019b5:	e9 db fe ff ff       	jmp    401895 <bmp_read+0x85>
  4019ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000004019c0 <bmp_save>:
  4019c0:	41 55                	push   r13
  4019c2:	41 54                	push   r12
  4019c4:	55                   	push   rbp
  4019c5:	48 89 f5             	mov    rbp,rsi
  4019c8:	be bf 31 40 00       	mov    esi,0x4031bf
  4019cd:	53                   	push   rbx
  4019ce:	48 83 ec 08          	sub    rsp,0x8
  4019d2:	e8 19 f2 ff ff       	call   400bf0 <fopen@plt>
  4019d7:	48 85 c0             	test   rax,rax
  4019da:	48 89 c3             	mov    rbx,rax
  4019dd:	74 1d                	je     4019fc <bmp_save+0x3c>
  4019df:	48 8b 7d 00          	mov    rdi,QWORD PTR [rbp+0x0]
  4019e3:	48 89 c1             	mov    rcx,rax
  4019e6:	ba 01 00 00 00       	mov    edx,0x1
  4019eb:	be 0e 00 00 00       	mov    esi,0xe
  4019f0:	e8 2b f2 ff ff       	call   400c20 <fwrite@plt>
  4019f5:	85 c0                	test   eax,eax
  4019f7:	49 89 c4             	mov    r12,rax
  4019fa:	75 14                	jne    401a10 <bmp_save+0x50>
  4019fc:	31 c0                	xor    eax,eax
  4019fe:	48 83 c4 08          	add    rsp,0x8
  401a02:	5b                   	pop    rbx
  401a03:	5d                   	pop    rbp
  401a04:	41 5c                	pop    r12
  401a06:	41 5d                	pop    r13
  401a08:	c3                   	ret    
  401a09:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  401a10:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
  401a14:	48 8b 7d 08          	mov    rdi,QWORD PTR [rbp+0x8]
  401a18:	48 89 d9             	mov    rcx,rbx
  401a1b:	ba 01 00 00 00       	mov    edx,0x1
  401a20:	8b 70 0a             	mov    esi,DWORD PTR [rax+0xa]
  401a23:	48 83 ee 0e          	sub    rsi,0xe
  401a27:	e8 f4 f1 ff ff       	call   400c20 <fwrite@plt>
  401a2c:	85 c0                	test   eax,eax
  401a2e:	49 89 c5             	mov    r13,rax
  401a31:	74 c9                	je     4019fc <bmp_save+0x3c>
  401a33:	48 8b 45 00          	mov    rax,QWORD PTR [rbp+0x0]
  401a37:	48 8b 7d 10          	mov    rdi,QWORD PTR [rbp+0x10]
  401a3b:	48 89 d9             	mov    rcx,rbx
  401a3e:	ba 01 00 00 00       	mov    edx,0x1
  401a43:	8b 70 02             	mov    esi,DWORD PTR [rax+0x2]
  401a46:	2b 70 0a             	sub    esi,DWORD PTR [rax+0xa]
  401a49:	e8 d2 f1 ff ff       	call   400c20 <fwrite@plt>
  401a4e:	85 c0                	test   eax,eax
  401a50:	74 aa                	je     4019fc <bmp_save+0x3c>
  401a52:	45 01 ec             	add    r12d,r13d
  401a55:	48 89 df             	mov    rdi,rbx
  401a58:	41 01 c4             	add    r12d,eax
  401a5b:	e8 d0 f0 ff ff       	call   400b30 <fclose@plt>
  401a60:	44 89 e0             	mov    eax,r12d
  401a63:	eb 99                	jmp    4019fe <bmp_save+0x3e>
  401a65:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  401a6c:	00 00 00 00 

0000000000401a70 <bmp_delete>:
  401a70:	53                   	push   rbx
  401a71:	48 89 fb             	mov    rbx,rdi
  401a74:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
  401a77:	e8 44 f0 ff ff       	call   400ac0 <free@plt>
  401a7c:	48 8b 7b 08          	mov    rdi,QWORD PTR [rbx+0x8]
  401a80:	e8 3b f0 ff ff       	call   400ac0 <free@plt>
  401a85:	48 8b 7b 10          	mov    rdi,QWORD PTR [rbx+0x10]
  401a89:	e8 32 f0 ff ff       	call   400ac0 <free@plt>
  401a8e:	48 89 df             	mov    rdi,rbx
  401a91:	5b                   	pop    rbx
  401a92:	e9 29 f0 ff ff       	jmp    400ac0 <free@plt>
  401a97:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  401a9e:	00 00 

0000000000401aa0 <bmp_width>:
  401aa0:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  401aa4:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
  401aa7:	c3                   	ret    
  401aa8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  401aaf:	00 

0000000000401ab0 <bmp_height>:
  401ab0:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  401ab4:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  401ab7:	c3                   	ret    
  401ab8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  401abf:	00 

0000000000401ac0 <bmp_data>:
  401ac0:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
  401ac4:	c3                   	ret    
  401ac5:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  401acc:	00 00 00 00 

0000000000401ad0 <bmp_bit_count>:
  401ad0:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  401ad4:	0f b7 40 0e          	movzx  eax,WORD PTR [rax+0xe]
  401ad8:	c3                   	ret    
  401ad9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000401ae0 <bmp_compression>:
  401ae0:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  401ae4:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  401ae7:	c3                   	ret    
  401ae8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  401aef:	00 

0000000000401af0 <bmp_set_bit_count>:
  401af0:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
  401af4:	66 89 70 0e          	mov    WORD PTR [rax+0xe],si
  401af8:	c3                   	ret    
  401af9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000401b00 <bmp_bytes_per_row>:
  401b00:	48 8b 57 08          	mov    rdx,QWORD PTR [rdi+0x8]
  401b04:	0f b7 42 0e          	movzx  eax,WORD PTR [rdx+0xe]
  401b08:	0f af 42 04          	imul   eax,DWORD PTR [rdx+0x4]
  401b0c:	83 c0 1f             	add    eax,0x1f
  401b0f:	c1 e8 05             	shr    eax,0x5
  401b12:	c1 e0 02             	shl    eax,0x2
  401b15:	c3                   	ret    
  401b16:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401b1d:	00 00 00 

0000000000401b20 <bmp_convert_24_to_32_bpp>:
  401b20:	41 55                	push   r13
  401b22:	41 54                	push   r12
  401b24:	55                   	push   rbp
  401b25:	48 89 fd             	mov    rbp,rdi
  401b28:	53                   	push   rbx
  401b29:	48 83 ec 08          	sub    rsp,0x8
  401b2d:	48 8b 5f 08          	mov    rbx,QWORD PTR [rdi+0x8]
  401b31:	44 8b 6b 04          	mov    r13d,DWORD PTR [rbx+0x4]
  401b35:	44 0f af 6b 08       	imul   r13d,DWORD PTR [rbx+0x8]
  401b3a:	44 89 ef             	mov    edi,r13d
  401b3d:	c1 e7 05             	shl    edi,0x5
  401b40:	e8 8b f0 ff ff       	call   400bd0 <malloc@plt>
  401b45:	31 d2                	xor    edx,edx
  401b47:	31 c9                	xor    ecx,ecx
  401b49:	45 85 ed             	test   r13d,r13d
  401b4c:	49 89 c4             	mov    r12,rax
  401b4f:	48 8b 7d 10          	mov    rdi,QWORD PTR [rbp+0x10]
  401b53:	74 44                	je     401b99 <bmp_convert_24_to_32_bpp+0x79>
  401b55:	0f 1f 00             	nop    DWORD PTR [rax]
  401b58:	8d 42 02             	lea    eax,[rdx+0x2]
  401b5b:	41 89 d2             	mov    r10d,edx
  401b5e:	46 0f b6 14 17       	movzx  r10d,BYTE PTR [rdi+r10*1]
  401b63:	0f b6 34 07          	movzx  esi,BYTE PTR [rdi+rax*1]
  401b67:	8d 42 01             	lea    eax,[rdx+0x1]
  401b6a:	83 c2 03             	add    edx,0x3
  401b6d:	44 0f b6 0c 07       	movzx  r9d,BYTE PTR [rdi+rax*1]
  401b72:	81 c6 00 ff 00 00    	add    esi,0xff00
  401b78:	c1 e6 08             	shl    esi,0x8
  401b7b:	44 01 ce             	add    esi,r9d
  401b7e:	41 89 c9             	mov    r9d,ecx
  401b81:	83 c1 01             	add    ecx,0x1
  401b84:	c1 e6 08             	shl    esi,0x8
  401b87:	44 01 d6             	add    esi,r10d
  401b8a:	43 89 34 8c          	mov    DWORD PTR [r12+r9*4],esi
  401b8e:	8b 73 04             	mov    esi,DWORD PTR [rbx+0x4]
  401b91:	0f af 73 08          	imul   esi,DWORD PTR [rbx+0x8]
  401b95:	39 ce                	cmp    esi,ecx
  401b97:	77 bf                	ja     401b58 <bmp_convert_24_to_32_bpp+0x38>
  401b99:	e8 22 ef ff ff       	call   400ac0 <free@plt>
  401b9e:	48 8b 45 08          	mov    rax,QWORD PTR [rbp+0x8]
  401ba2:	ba 20 00 00 00       	mov    edx,0x20
  401ba7:	48 8b 4d 00          	mov    rcx,QWORD PTR [rbp+0x0]
  401bab:	66 89 50 0e          	mov    WORD PTR [rax+0xe],dx
  401baf:	8b 50 08             	mov    edx,DWORD PTR [rax+0x8]
  401bb2:	0f af 50 04          	imul   edx,DWORD PTR [rax+0x4]
  401bb6:	4c 89 65 10          	mov    QWORD PTR [rbp+0x10],r12
  401bba:	c1 e2 02             	shl    edx,0x2
  401bbd:	89 50 14             	mov    DWORD PTR [rax+0x14],edx
  401bc0:	8b 00                	mov    eax,DWORD PTR [rax]
  401bc2:	8d 44 02 0e          	lea    eax,[rdx+rax*1+0xe]
  401bc6:	89 41 02             	mov    DWORD PTR [rcx+0x2],eax
  401bc9:	48 83 c4 08          	add    rsp,0x8
  401bcd:	5b                   	pop    rbx
  401bce:	5d                   	pop    rbp
  401bcf:	41 5c                	pop    r12
  401bd1:	41 5d                	pop    r13
  401bd3:	c3                   	ret    
  401bd4:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401bdb:	00 00 00 
  401bde:	66 90                	xchg   ax,ax

0000000000401be0 <setear_buffer>:
  401be0:	55                   	push   rbp
  401be1:	48 89 f5             	mov    rbp,rsi
  401be4:	53                   	push   rbx
  401be5:	48 89 fb             	mov    rbx,rdi
  401be8:	48 89 f7             	mov    rdi,rsi
  401beb:	48 83 ec 08          	sub    rsp,0x8
  401bef:	e8 cc fe ff ff       	call   401ac0 <bmp_data>
  401bf4:	48 89 ef             	mov    rdi,rbp
  401bf7:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
  401bfb:	e8 a0 fe ff ff       	call   401aa0 <bmp_width>
  401c00:	48 89 ef             	mov    rdi,rbp
  401c03:	89 03                	mov    DWORD PTR [rbx],eax
  401c05:	e8 a6 fe ff ff       	call   401ab0 <bmp_height>
  401c0a:	48 89 ef             	mov    rdi,rbp
  401c0d:	89 43 04             	mov    DWORD PTR [rbx+0x4],eax
  401c10:	e8 eb fe ff ff       	call   401b00 <bmp_bytes_per_row>
  401c15:	89 43 08             	mov    DWORD PTR [rbx+0x8],eax
  401c18:	48 83 c4 08          	add    rsp,0x8
  401c1c:	5b                   	pop    rbx
  401c1d:	5d                   	pop    rbp
  401c1e:	c3                   	ret    
  401c1f:	90                   	nop

0000000000401c20 <imagenes_abrir>:
  401c20:	55                   	push   rbp
  401c21:	53                   	push   rbx
  401c22:	48 89 fb             	mov    rbx,rdi
  401c25:	48 83 ec 08          	sub    rsp,0x8
  401c29:	48 8b 7f 78          	mov    rdi,QWORD PTR [rdi+0x78]
  401c2d:	e8 de fb ff ff       	call   401810 <bmp_read>
  401c32:	48 85 c0             	test   rax,rax
  401c35:	48 89 05 74 25 20 00 	mov    QWORD PTR [rip+0x202574],rax        # 6041b0 <src_img>
  401c3c:	0f 84 67 01 00 00    	je     401da9 <imagenes_abrir+0x189>
  401c42:	48 89 c7             	mov    rdi,rax
  401c45:	e8 96 fe ff ff       	call   401ae0 <bmp_compression>
  401c4a:	85 c0                	test   eax,eax
  401c4c:	0f 85 7c 01 00 00    	jne    401dce <imagenes_abrir+0x1ae>
  401c52:	48 8b 3d 57 25 20 00 	mov    rdi,QWORD PTR [rip+0x202557]        # 6041b0 <src_img>
  401c59:	e8 72 fe ff ff       	call   401ad0 <bmp_bit_count>
  401c5e:	66 83 f8 18          	cmp    ax,0x18
  401c62:	0f 84 30 01 00 00    	je     401d98 <imagenes_abrir+0x178>
  401c68:	48 8b 3d 41 25 20 00 	mov    rdi,QWORD PTR [rip+0x202541]        # 6041b0 <src_img>
  401c6f:	be 01 00 00 00       	mov    esi,0x1
  401c74:	e8 07 fa ff ff       	call   401680 <bmp_copy>
  401c79:	48 8b bb 80 00 00 00 	mov    rdi,QWORD PTR [rbx+0x80]
  401c80:	48 89 05 21 25 20 00 	mov    QWORD PTR [rip+0x202521],rax        # 6041a8 <dst_img>
  401c87:	48 85 ff             	test   rdi,rdi
  401c8a:	0f 84 e0 00 00 00    	je     401d70 <imagenes_abrir+0x150>
  401c90:	e8 7b fb ff ff       	call   401810 <bmp_read>
  401c95:	48 85 c0             	test   rax,rax
  401c98:	48 89 05 01 25 20 00 	mov    QWORD PTR [rip+0x202501],rax        # 6041a0 <src_img2>
  401c9f:	0f 84 73 01 00 00    	je     401e18 <imagenes_abrir+0x1f8>
  401ca5:	48 89 c7             	mov    rdi,rax
  401ca8:	e8 33 fe ff ff       	call   401ae0 <bmp_compression>
  401cad:	85 c0                	test   eax,eax
  401caf:	0f 85 3e 01 00 00    	jne    401df3 <imagenes_abrir+0x1d3>
  401cb5:	48 8b 3d e4 24 20 00 	mov    rdi,QWORD PTR [rip+0x2024e4]        # 6041a0 <src_img2>
  401cbc:	e8 0f fe ff ff       	call   401ad0 <bmp_bit_count>
  401cc1:	66 83 f8 18          	cmp    ax,0x18
  401cc5:	0f 84 b5 00 00 00    	je     401d80 <imagenes_abrir+0x160>
  401ccb:	48 8b 2d ce 24 20 00 	mov    rbp,QWORD PTR [rip+0x2024ce]        # 6041a0 <src_img2>
  401cd2:	48 89 ef             	mov    rdi,rbp
  401cd5:	e8 e6 fd ff ff       	call   401ac0 <bmp_data>
  401cda:	48 89 ef             	mov    rdi,rbp
  401cdd:	48 89 43 40          	mov    QWORD PTR [rbx+0x40],rax
  401ce1:	e8 ba fd ff ff       	call   401aa0 <bmp_width>
  401ce6:	48 89 ef             	mov    rdi,rbp
  401ce9:	89 43 30             	mov    DWORD PTR [rbx+0x30],eax
  401cec:	e8 bf fd ff ff       	call   401ab0 <bmp_height>
  401cf1:	48 89 ef             	mov    rdi,rbp
  401cf4:	89 43 34             	mov    DWORD PTR [rbx+0x34],eax
  401cf7:	e8 04 fe ff ff       	call   401b00 <bmp_bytes_per_row>
  401cfc:	89 43 38             	mov    DWORD PTR [rbx+0x38],eax
  401cff:	48 8b 2d aa 24 20 00 	mov    rbp,QWORD PTR [rip+0x2024aa]        # 6041b0 <src_img>
  401d06:	48 89 ef             	mov    rdi,rbp
  401d09:	e8 b2 fd ff ff       	call   401ac0 <bmp_data>
  401d0e:	48 89 ef             	mov    rdi,rbp
  401d11:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
  401d15:	e8 86 fd ff ff       	call   401aa0 <bmp_width>
  401d1a:	48 89 ef             	mov    rdi,rbp
  401d1d:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
  401d20:	e8 8b fd ff ff       	call   401ab0 <bmp_height>
  401d25:	48 89 ef             	mov    rdi,rbp
  401d28:	89 43 14             	mov    DWORD PTR [rbx+0x14],eax
  401d2b:	e8 d0 fd ff ff       	call   401b00 <bmp_bytes_per_row>
  401d30:	48 8b 2d 71 24 20 00 	mov    rbp,QWORD PTR [rip+0x202471]        # 6041a8 <dst_img>
  401d37:	89 43 18             	mov    DWORD PTR [rbx+0x18],eax
  401d3a:	48 89 ef             	mov    rdi,rbp
  401d3d:	e8 7e fd ff ff       	call   401ac0 <bmp_data>
  401d42:	48 89 ef             	mov    rdi,rbp
  401d45:	48 89 43 60          	mov    QWORD PTR [rbx+0x60],rax
  401d49:	e8 52 fd ff ff       	call   401aa0 <bmp_width>
  401d4e:	48 89 ef             	mov    rdi,rbp
  401d51:	89 43 50             	mov    DWORD PTR [rbx+0x50],eax
  401d54:	e8 57 fd ff ff       	call   401ab0 <bmp_height>
  401d59:	48 89 ef             	mov    rdi,rbp
  401d5c:	89 43 54             	mov    DWORD PTR [rbx+0x54],eax
  401d5f:	e8 9c fd ff ff       	call   401b00 <bmp_bytes_per_row>
  401d64:	89 43 58             	mov    DWORD PTR [rbx+0x58],eax
  401d67:	48 83 c4 08          	add    rsp,0x8
  401d6b:	5b                   	pop    rbx
  401d6c:	5d                   	pop    rbp
  401d6d:	c3                   	ret    
  401d6e:	66 90                	xchg   ax,ax
  401d70:	48 c7 05 25 24 20 00 	mov    QWORD PTR [rip+0x202425],0x0        # 6041a0 <src_img2>
  401d77:	00 00 00 00 
  401d7b:	eb 82                	jmp    401cff <imagenes_abrir+0xdf>
  401d7d:	0f 1f 00             	nop    DWORD PTR [rax]
  401d80:	48 8b 3d 19 24 20 00 	mov    rdi,QWORD PTR [rip+0x202419]        # 6041a0 <src_img2>
  401d87:	e8 94 fd ff ff       	call   401b20 <bmp_convert_24_to_32_bpp>
  401d8c:	e9 3a ff ff ff       	jmp    401ccb <imagenes_abrir+0xab>
  401d91:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
  401d98:	48 8b 3d 11 24 20 00 	mov    rdi,QWORD PTR [rip+0x202411]        # 6041b0 <src_img>
  401d9f:	e8 7c fd ff ff       	call   401b20 <bmp_convert_24_to_32_bpp>
  401da4:	e9 bf fe ff ff       	jmp    401c68 <imagenes_abrir+0x48>
  401da9:	48 8b 0d d8 23 20 00 	mov    rcx,QWORD PTR [rip+0x2023d8]        # 604188 <stderr@@GLIBC_2.2.5>
  401db0:	bf f0 31 40 00       	mov    edi,0x4031f0
  401db5:	ba 20 00 00 00       	mov    edx,0x20
  401dba:	be 01 00 00 00       	mov    esi,0x1
  401dbf:	e8 5c ee ff ff       	call   400c20 <fwrite@plt>
  401dc4:	bf 01 00 00 00       	mov    edi,0x1
  401dc9:	e8 42 ee ff ff       	call   400c10 <exit@plt>
  401dce:	48 8b 0d b3 23 20 00 	mov    rcx,QWORD PTR [rip+0x2023b3]        # 604188 <stderr@@GLIBC_2.2.5>
  401dd5:	bf 18 32 40 00       	mov    edi,0x403218
  401dda:	ba 28 00 00 00       	mov    edx,0x28
  401ddf:	be 01 00 00 00       	mov    esi,0x1
  401de4:	e8 37 ee ff ff       	call   400c20 <fwrite@plt>
  401de9:	bf 01 00 00 00       	mov    edi,0x1
  401dee:	e8 1d ee ff ff       	call   400c10 <exit@plt>
  401df3:	48 8b 0d 8e 23 20 00 	mov    rcx,QWORD PTR [rip+0x20238e]        # 604188 <stderr@@GLIBC_2.2.5>
  401dfa:	bf 70 32 40 00       	mov    edi,0x403270
  401dff:	ba 2a 00 00 00       	mov    edx,0x2a
  401e04:	be 01 00 00 00       	mov    esi,0x1
  401e09:	e8 12 ee ff ff       	call   400c20 <fwrite@plt>
  401e0e:	bf 01 00 00 00       	mov    edi,0x1
  401e13:	e8 f8 ed ff ff       	call   400c10 <exit@plt>
  401e18:	48 8b 0d 69 23 20 00 	mov    rcx,QWORD PTR [rip+0x202369]        # 604188 <stderr@@GLIBC_2.2.5>
  401e1f:	bf 48 32 40 00       	mov    edi,0x403248
  401e24:	ba 22 00 00 00       	mov    edx,0x22
  401e29:	be 01 00 00 00       	mov    esi,0x1
  401e2e:	e8 ed ed ff ff       	call   400c20 <fwrite@plt>
  401e33:	bf 01 00 00 00       	mov    edi,0x1
  401e38:	e8 d3 ed ff ff       	call   400c10 <exit@plt>
  401e3d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000401e40 <imagenes_guardar>:
  401e40:	48 8b 35 61 23 20 00 	mov    rsi,QWORD PTR [rip+0x202361]        # 6041a8 <dst_img>
  401e47:	48 81 c7 88 00 00 00 	add    rdi,0x88
  401e4e:	e9 6d fb ff ff       	jmp    4019c0 <bmp_save>
  401e53:	66 66 66 66 2e 0f 1f 	data32 data32 data32 nop WORD PTR cs:[rax+rax*1+0x0]
  401e5a:	84 00 00 00 00 00 

0000000000401e60 <imagenes_liberar>:
  401e60:	48 83 ec 08          	sub    rsp,0x8
  401e64:	48 8b 3d 45 23 20 00 	mov    rdi,QWORD PTR [rip+0x202345]        # 6041b0 <src_img>
  401e6b:	e8 00 fc ff ff       	call   401a70 <bmp_delete>
  401e70:	48 8b 3d 29 23 20 00 	mov    rdi,QWORD PTR [rip+0x202329]        # 6041a0 <src_img2>
  401e77:	48 85 ff             	test   rdi,rdi
  401e7a:	74 05                	je     401e81 <imagenes_liberar+0x21>
  401e7c:	e8 ef fb ff ff       	call   401a70 <bmp_delete>
  401e81:	48 8b 3d 20 23 20 00 	mov    rdi,QWORD PTR [rip+0x202320]        # 6041a8 <dst_img>
  401e88:	48 83 c4 08          	add    rsp,0x8
  401e8c:	e9 df fb ff ff       	jmp    401a70 <bmp_delete>
  401e91:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401e98:	00 00 00 
  401e9b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000401ea0 <ayuda_diff>:
  401ea0:	48 83 ec 08          	sub    rsp,0x8
  401ea4:	bf 9b 32 40 00       	mov    edi,0x40329b
  401ea9:	e8 42 ec ff ff       	call   400af0 <puts@plt>
  401eae:	bf b0 32 40 00       	mov    edi,0x4032b0
  401eb3:	e8 38 ec ff ff       	call   400af0 <puts@plt>
  401eb8:	bf f0 32 40 00       	mov    edi,0x4032f0
  401ebd:	48 83 c4 08          	add    rsp,0x8
  401ec1:	e9 2a ec ff ff       	jmp    400af0 <puts@plt>
  401ec6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401ecd:	00 00 00 

0000000000401ed0 <leer_params_diff>:
  401ed0:	48 8b b7 80 00 00 00 	mov    rsi,QWORD PTR [rdi+0x80]
  401ed7:	48 85 f6             	test   rsi,rsi
  401eda:	74 0c                	je     401ee8 <leer_params_diff+0x18>
  401edc:	bf 2b 29 40 00       	mov    edi,0x40292b
  401ee1:	31 c0                	xor    eax,eax
  401ee3:	e9 68 ec ff ff       	jmp    400b50 <printf@plt>
  401ee8:	50                   	push   rax
  401ee9:	bf 48 33 40 00       	mov    edi,0x403348
  401eee:	e8 fd eb ff ff       	call   400af0 <puts@plt>
  401ef3:	31 c0                	xor    eax,eax
  401ef5:	e8 a6 ff ff ff       	call   401ea0 <ayuda_diff>
  401efa:	bf 01 00 00 00       	mov    edi,0x1
  401eff:	e8 0c ed ff ff       	call   400c10 <exit@plt>
  401f04:	66 66 66 2e 0f 1f 84 	data32 data32 nop WORD PTR cs:[rax+rax*1+0x0]
  401f0b:	00 00 00 00 00 

0000000000401f10 <aplicar_diff>:
  401f10:	41 57                	push   r15
  401f12:	41 56                	push   r14
  401f14:	41 55                	push   r13
  401f16:	41 54                	push   r12
  401f18:	55                   	push   rbp
  401f19:	bd e0 22 40 00       	mov    ebp,0x4022e0
  401f1e:	53                   	push   rbx
  401f1f:	48 89 fb             	mov    rbx,rdi
  401f22:	48 83 ec 68          	sub    rsp,0x68
  401f26:	8b 47 08             	mov    eax,DWORD PTR [rdi+0x8]
  401f29:	44 8b 67 10          	mov    r12d,DWORD PTR [rdi+0x10]
  401f2d:	44 8b 6f 14          	mov    r13d,DWORD PTR [rdi+0x14]
  401f31:	8b 4f 30             	mov    ecx,DWORD PTR [rdi+0x30]
  401f34:	8b 57 34             	mov    edx,DWORD PTR [rdi+0x34]
  401f37:	4c 8b 77 20          	mov    r14,QWORD PTR [rdi+0x20]
  401f3b:	85 c0                	test   eax,eax
  401f3d:	b8 80 20 40 00       	mov    eax,0x402080
  401f42:	44 89 64 24 20       	mov    DWORD PTR [rsp+0x20],r12d
  401f47:	48 0f 45 e8          	cmovne rbp,rax
  401f4b:	44 89 6c 24 24       	mov    DWORD PTR [rsp+0x24],r13d
  401f50:	89 4c 24 40          	mov    DWORD PTR [rsp+0x40],ecx
  401f54:	89 54 24 44          	mov    DWORD PTR [rsp+0x44],edx
  401f58:	48 8b 74 24 40       	mov    rsi,QWORD PTR [rsp+0x40]
  401f5d:	48 39 74 24 20       	cmp    QWORD PTR [rsp+0x20],rsi
  401f62:	44 8b 4f 18          	mov    r9d,DWORD PTR [rdi+0x18]
  401f66:	4c 8b 7f 40          	mov    r15,QWORD PTR [rdi+0x40]
  401f6a:	8b 47 38             	mov    eax,DWORD PTR [rdi+0x38]
  401f6d:	74 1c                	je     401f8b <aplicar_diff+0x7b>
  401f6f:	bf 80 33 40 00       	mov    edi,0x403380
  401f74:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
  401f78:	44 89 4c 24 18       	mov    DWORD PTR [rsp+0x18],r9d
  401f7d:	e8 7e ec ff ff       	call   400c00 <perror@plt>
  401f82:	8b 44 24 1c          	mov    eax,DWORD PTR [rsp+0x1c]
  401f86:	44 8b 4c 24 18       	mov    r9d,DWORD PTR [rsp+0x18]
  401f8b:	8b 4b 58             	mov    ecx,DWORD PTR [rbx+0x58]
  401f8e:	48 8b 53 60          	mov    rdx,QWORD PTR [rbx+0x60]
  401f92:	45 89 e8             	mov    r8d,r13d
  401f95:	89 04 24             	mov    DWORD PTR [rsp],eax
  401f98:	4c 89 fe             	mov    rsi,r15
  401f9b:	4c 89 f7             	mov    rdi,r14
  401f9e:	89 4c 24 08          	mov    DWORD PTR [rsp+0x8],ecx
  401fa2:	44 89 e1             	mov    ecx,r12d
  401fa5:	ff d5                	call   rbp
  401fa7:	48 83 c4 68          	add    rsp,0x68
  401fab:	5b                   	pop    rbx
  401fac:	5d                   	pop    rbp
  401fad:	41 5c                	pop    r12
  401faf:	41 5d                	pop    r13
  401fb1:	41 5e                	pop    r14
  401fb3:	41 5f                	pop    r15
  401fb5:	c3                   	ret    
  401fb6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  401fbd:	00 00 00 

0000000000401fc0 <leer_params_blur>:
  401fc0:	55                   	push   rbp
  401fc1:	48 89 d5             	mov    rbp,rdx
  401fc4:	53                   	push   rbx
  401fc5:	48 63 de             	movsxd rbx,esi
  401fc8:	31 f6                	xor    esi,esi
  401fca:	48 c1 e3 03          	shl    rbx,0x3
  401fce:	48 83 ec 08          	sub    rsp,0x8
  401fd2:	48 c7 47 70 b8 41 60 	mov    QWORD PTR [rdi+0x70],0x6041b8
  401fd9:	00 
  401fda:	48 8b 7c 1a f0       	mov    rdi,QWORD PTR [rdx+rbx*1-0x10]
  401fdf:	e8 2c eb ff ff       	call   400b10 <strtod@plt>
  401fe4:	66 0f 14 c0          	unpcklpd xmm0,xmm0
  401fe8:	48 8b 7c 1d f8       	mov    rdi,QWORD PTR [rbp+rbx*1-0x8]
  401fed:	ba 0a 00 00 00       	mov    edx,0xa
  401ff2:	31 f6                	xor    esi,esi
  401ff4:	66 0f 5a c8          	cvtpd2ps xmm1,xmm0
  401ff8:	f3 0f 11 0d b8 21 20 	movss  DWORD PTR [rip+0x2021b8],xmm1        # 6041b8 <extra>
  401fff:	00 
  402000:	e8 bb eb ff ff       	call   400bc0 <strtol@plt>
  402005:	89 05 b1 21 20 00    	mov    DWORD PTR [rip+0x2021b1],eax        # 6041bc <extra+0x4>
  40200b:	48 83 c4 08          	add    rsp,0x8
  40200f:	5b                   	pop    rbx
  402010:	5d                   	pop    rbp
  402011:	c3                   	ret    
  402012:	66 66 66 66 66 2e 0f 	data32 data32 data32 data32 nop WORD PTR cs:[rax+rax*1+0x0]
  402019:	1f 84 00 00 00 00 00 

0000000000402020 <aplicar_blur>:
  402020:	8b 57 08             	mov    edx,DWORD PTR [rdi+0x8]
  402023:	4c 8b 4f 70          	mov    r9,QWORD PTR [rdi+0x70]
  402027:	b8 00 25 40 00       	mov    eax,0x402500
  40202c:	8b 4f 14             	mov    ecx,DWORD PTR [rdi+0x14]
  40202f:	48 8b 77 60          	mov    rsi,QWORD PTR [rdi+0x60]
  402033:	85 d2                	test   edx,edx
  402035:	ba 10 21 40 00       	mov    edx,0x402110
  40203a:	45 8b 41 04          	mov    r8d,DWORD PTR [r9+0x4]
  40203e:	48 0f 45 c2          	cmovne rax,rdx
  402042:	f3 41 0f 10 01       	movss  xmm0,DWORD PTR [r9]
  402047:	8b 57 10             	mov    edx,DWORD PTR [rdi+0x10]
  40204a:	48 8b 7f 20          	mov    rdi,QWORD PTR [rdi+0x20]
  40204e:	ff e0                	jmp    rax

0000000000402050 <ayuda_blur>:
  402050:	48 83 ec 08          	sub    rsp,0x8
  402054:	bf b5 33 40 00       	mov    edi,0x4033b5
  402059:	e8 92 ea ff ff       	call   400af0 <puts@plt>
  40205e:	bf c8 33 40 00       	mov    edi,0x4033c8
  402063:	e8 88 ea ff ff       	call   400af0 <puts@plt>
  402068:	bf 28 34 40 00       	mov    edi,0x403428
  40206d:	48 83 c4 08          	add    rsp,0x8
  402071:	e9 7a ea ff ff       	jmp    400af0 <puts@plt>
  402076:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40207d:	00 00 00 

0000000000402080 <diff_asm>:
  402080:	55                   	push   rbp
  402081:	48 89 e5             	mov    rbp,rsp
  402084:	41 57                	push   r15
  402086:	41 54                	push   r12
  402088:	41 55                	push   r13
  40208a:	49 89 d4             	mov    r12,rdx
  40208d:	44 89 c0             	mov    eax,r8d
  402090:	89 c9                	mov    ecx,ecx
  402092:	48 f7 e1             	mul    rcx
  402095:	4d 31 ff             	xor    r15,r15

0000000000402098 <diff_asm.ciclo>:
  402098:	49 39 c7             	cmp    r15,rax
  40209b:	74 5d                	je     4020fa <diff_asm.fin>
  40209d:	f3 42 0f 6f 1c bf    	movdqu xmm3,XMMWORD PTR [rdi+r15*4]
  4020a3:	f3 46 0f 6f 3c be    	movdqu xmm15,XMMWORD PTR [rsi+r15*4]
  4020a9:	f3 45 0f 6f f7       	movdqu xmm14,xmm15
  4020ae:	66 44 0f da fb       	pminub xmm15,xmm3
  4020b3:	66 41 0f de de       	pmaxub xmm3,xmm14
  4020b8:	66 41 0f f8 df       	psubb  xmm3,xmm15
  4020bd:	f3 0f 6f e3          	movdqu xmm4,xmm3
  4020c1:	f3 0f 6f eb          	movdqu xmm5,xmm3
  4020c5:	66 0f 73 fc 01       	pslldq xmm4,0x1
  4020ca:	66 0f 73 fd 02       	pslldq xmm5,0x2
  4020cf:	f3 0f 6f f5          	movdqu xmm6,xmm5
  4020d3:	66 0f de f4          	pmaxub xmm6,xmm4
  4020d7:	66 0f de f3          	pmaxub xmm6,xmm3
  4020db:	66 0f 38 00 34 25 90 	pshufb xmm6,XMMWORD PTR ds:0x403490
  4020e2:	34 40 00 
  4020e5:	66 0f ec 34 25 a0 34 	paddsb xmm6,XMMWORD PTR ds:0x4034a0
  4020ec:	40 00 
  4020ee:	f3 43 0f 7f 34 bc    	movdqu XMMWORD PTR [r12+r15*4],xmm6
  4020f4:	41 83 c7 04          	add    r15d,0x4
  4020f8:	eb 9e                	jmp    402098 <diff_asm.ciclo>

00000000004020fa <diff_asm.fin>:
  4020fa:	41 5d                	pop    r13
  4020fc:	41 5c                	pop    r12
  4020fe:	41 5f                	pop    r15
  402100:	5d                   	pop    rbp
  402101:	c3                   	ret    
  402102:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  402109:	00 00 00 
  40210c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000402110 <_blur_asm>:
  402110:	55                   	push   rbp
  402111:	41 54                	push   r12
  402113:	41 55                	push   r13
  402115:	41 56                	push   r14
  402117:	41 57                	push   r15
  402119:	53                   	push   rbx
  40211a:	48 83 ec 08          	sub    rsp,0x8
  40211e:	49 89 fc             	mov    r12,rdi
  402121:	49 89 f5             	mov    r13,rsi
  402124:	41 89 d6             	mov    r14d,edx
  402127:	41 89 cf             	mov    r15d,ecx
  40212a:	44 89 c3             	mov    ebx,r8d
  40212d:	44 89 c7             	mov    edi,r8d
  402130:	e8 bb 02 00 00       	call   4023f0 <matrizDeConvolucion>
  402135:	49 89 c2             	mov    r10,rax
  402138:	49 89 db             	mov    r11,rbx
  40213b:	49 d1 e3             	shl    r11,1
  40213e:	4d 39 de             	cmp    r14,r11
  402141:	0f 8c 1c 01 00 00    	jl     402263 <blur_asm.end>
  402147:	4d 39 df             	cmp    r15,r11
  40214a:	0f 8c 13 01 00 00    	jl     402263 <blur_asm.end>
  402150:	49 ff c3             	inc    r11
  402153:	4c 89 d8             	mov    rax,r11
  402156:	49 f7 e3             	mul    r11
  402159:	48 89 c5             	mov    rbp,rax
  40215c:	48 89 d8             	mov    rax,rbx
  40215f:	41 f7 e7             	mul    r15d
  402162:	48 01 d8             	add    rax,rbx
  402165:	48 89 c3             	mov    rbx,rax
  402168:	4d 89 f1             	mov    r9,r14
  40216b:	4d 89 f8             	mov    r8,r15
  40216e:	49 ff cb             	dec    r11
  402171:	4c 89 c8             	mov    rax,r9
  402174:	4c 29 d8             	sub    rax,r11
  402177:	49 f7 e0             	mul    r8
  40217a:	4c 29 d8             	sub    rax,r11
  40217d:	48 c1 e0 02          	shl    rax,0x2
  402181:	48 31 ff             	xor    rdi,rdi
  402184:	48 31 f6             	xor    rsi,rsi
  402187:	48 31 d2             	xor    rdx,rdx
  40218a:	48 31 c9             	xor    rcx,rcx
  40218d:	66 0f ef ff          	pxor   xmm7,xmm7
  402191:	4d 89 fe             	mov    r14,r15
  402194:	4d 29 df             	sub    r15,r11
  402197:	49 c1 e3 02          	shl    r11,0x2
  40219b:	49 c1 e0 02          	shl    r8,0x2
  40219f:	48 c1 e3 02          	shl    rbx,0x2
  4021a3:	49 c1 e7 02          	shl    r15,0x2
  4021a7:	49 c1 e6 02          	shl    r14,0x2

00000000004021ab <blur_asm.ciclo_matriz>:
  4021ab:	48 39 c7             	cmp    rdi,rax
  4021ae:	0f 8f af 00 00 00    	jg     402263 <blur_asm.end>

00000000004021b4 <blur_asm.ciclo_kernel>:
  4021b4:	48 39 e9             	cmp    rcx,rbp
  4021b7:	74 60                	je     402219 <blur_asm.insert>
  4021b9:	49 89 f1             	mov    r9,rsi
  4021bc:	49 01 f9             	add    r9,rdi
  4021bf:	66 43 0f 6e 04 0c    	movd   xmm0,DWORD PTR [r12+r9*1]
  4021c5:	66 45 0f ef c0       	pxor   xmm8,xmm8
  4021ca:	66 41 0f 60 c0       	punpcklbw xmm0,xmm8
  4021cf:	66 41 0f 61 c0       	punpcklwd xmm0,xmm8
  4021d4:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  4021d7:	66 41 0f 6e 0c 8a    	movd   xmm1,DWORD PTR [r10+rcx*4]
  4021dd:	f3 0f 7e d9          	movq   xmm3,xmm1
  4021e1:	66 0f 73 fb 04       	pslldq xmm3,0x4
  4021e6:	66 0f fe d9          	paddd  xmm3,xmm1
  4021ea:	66 0f 73 fb 04       	pslldq xmm3,0x4
  4021ef:	66 0f fe d9          	paddd  xmm3,xmm1
  4021f3:	0f 59 c3             	mulps  xmm0,xmm3
  4021f6:	0f 58 d0             	addps  xmm2,xmm0
  4021f9:	4c 39 da             	cmp    rdx,r11
  4021fc:	74 0d                	je     40220b <blur_asm.sumar_fila_kernel>
  4021fe:	48 83 c2 04          	add    rdx,0x4
  402202:	48 ff c1             	inc    rcx
  402205:	48 83 c6 04          	add    rsi,0x4
  402209:	eb a9                	jmp    4021b4 <blur_asm.ciclo_kernel>

000000000040220b <blur_asm.sumar_fila_kernel>:
  40220b:	48 31 d2             	xor    rdx,rdx
  40220e:	4c 29 de             	sub    rsi,r11
  402211:	4c 01 c6             	add    rsi,r8
  402214:	48 ff c1             	inc    rcx
  402217:	eb 9b                	jmp    4021b4 <blur_asm.ciclo_kernel>

0000000000402219 <blur_asm.insert>:
  402219:	66 0f ef e4          	pxor   xmm4,xmm4
  40221d:	66 0f 5b d2          	cvtps2dq xmm2,xmm2
  402221:	66 0f 38 2b d4       	packusdw xmm2,xmm4
  402226:	66 0f 67 d4          	packuswb xmm2,xmm4
  40222a:	66 0f 6e fb          	movd   xmm7,ebx
  40222e:	48 01 fb             	add    rbx,rdi
  402231:	66 41 0f 7e 54 1d 00 	movd   DWORD PTR [r13+rbx*1+0x0],xmm2
  402238:	66 0f 7e fb          	movd   ebx,xmm7
  40223c:	66 0f ef ff          	pxor   xmm7,xmm7
  402240:	48 31 f6             	xor    rsi,rsi
  402243:	48 31 c9             	xor    rcx,rcx
  402246:	4c 39 ff             	cmp    rdi,r15
  402249:	74 09                	je     402254 <blur_asm.sumar_fila>
  40224b:	48 83 c7 04          	add    rdi,0x4
  40224f:	e9 57 ff ff ff       	jmp    4021ab <blur_asm.ciclo_matriz>

0000000000402254 <blur_asm.sumar_fila>:
  402254:	4c 01 df             	add    rdi,r11
  402257:	48 83 c7 04          	add    rdi,0x4
  40225b:	4d 01 c7             	add    r15,r8
  40225e:	e9 48 ff ff ff       	jmp    4021ab <blur_asm.ciclo_matriz>

0000000000402263 <blur_asm.end>:
  402263:	48 83 c4 08          	add    rsp,0x8
  402267:	5b                   	pop    rbx
  402268:	41 5f                	pop    r15
  40226a:	41 5e                	pop    r14
  40226c:	41 5d                	pop    r13
  40226e:	41 5c                	pop    r12
  402270:	48 89 e5             	mov    rbp,rsp
  402273:	4c 89 d7             	mov    rdi,r10
  402276:	e8 45 e8 ff ff       	call   400ac0 <free@plt>
  40227b:	5d                   	pop    rbp
  40227c:	c3                   	ret    
  40227d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000402280 <infNorm>:
  402280:	40 0f b6 ff          	movzx  edi,dil
  402284:	0f b6 c9             	movzx  ecx,cl
  402287:	40 0f b6 f6          	movzx  esi,sil
  40228b:	29 cf                	sub    edi,ecx
  40228d:	45 0f b6 c0          	movzx  r8d,r8b
  402291:	0f b6 d2             	movzx  edx,dl
  402294:	89 f8                	mov    eax,edi
  402296:	44 29 c6             	sub    esi,r8d
  402299:	45 0f b6 c9          	movzx  r9d,r9b
  40229d:	c1 f8 1f             	sar    eax,0x1f
  4022a0:	44 29 ca             	sub    edx,r9d
  4022a3:	31 c7                	xor    edi,eax
  4022a5:	29 c7                	sub    edi,eax
  4022a7:	89 f0                	mov    eax,esi
  4022a9:	c1 f8 1f             	sar    eax,0x1f
  4022ac:	31 c6                	xor    esi,eax
  4022ae:	29 c6                	sub    esi,eax
  4022b0:	89 d0                	mov    eax,edx
  4022b2:	c1 f8 1f             	sar    eax,0x1f
  4022b5:	31 c2                	xor    edx,eax
  4022b7:	29 c2                	sub    edx,eax
  4022b9:	66 39 f7             	cmp    di,si
  4022bc:	7e 12                	jle    4022d0 <infNorm+0x50>
  4022be:	66 39 d7             	cmp    di,dx
  4022c1:	89 d0                	mov    eax,edx
  4022c3:	0f 4d c7             	cmovge eax,edi
  4022c6:	c3                   	ret    
  4022c7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
  4022ce:	00 00 
  4022d0:	66 39 d6             	cmp    si,dx
  4022d3:	89 d0                	mov    eax,edx
  4022d5:	0f 4d c6             	cmovge eax,esi
  4022d8:	c3                   	ret    
  4022d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000004022e0 <diff_c>:
  4022e0:	45 85 c0             	test   r8d,r8d
  4022e3:	0f 8e 05 01 00 00    	jle    4023ee <diff_c+0x10e>
  4022e9:	41 57                	push   r15
  4022eb:	45 31 ff             	xor    r15d,r15d
  4022ee:	41 56                	push   r14
  4022f0:	44 8d 34 8d 00 00 00 	lea    r14d,[rcx*4+0x0]
  4022f7:	00 
  4022f8:	41 55                	push   r13
  4022fa:	41 54                	push   r12
  4022fc:	49 89 f4             	mov    r12,rsi
  4022ff:	55                   	push   rbp
  402300:	48 89 fd             	mov    rbp,rdi
  402303:	53                   	push   rbx
  402304:	48 63 44 24 38       	movsxd rax,DWORD PTR [rsp+0x38]
  402309:	48 89 44 24 e8       	mov    QWORD PTR [rsp-0x18],rax
  40230e:	49 63 c1             	movsxd rax,r9d
  402311:	48 89 44 24 f8       	mov    QWORD PTR [rsp-0x8],rax
  402316:	48 63 44 24 40       	movsxd rax,DWORD PTR [rsp+0x40]
  40231b:	48 89 44 24 f0       	mov    QWORD PTR [rsp-0x10],rax
  402320:	85 c9                	test   ecx,ecx
  402322:	0f 8e a0 00 00 00    	jle    4023c8 <diff_c+0xe8>
  402328:	31 c0                	xor    eax,eax
  40232a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  402330:	48 63 d8             	movsxd rbx,eax
  402333:	44 8d 58 01          	lea    r11d,[rax+0x1]
  402337:	44 8d 50 02          	lea    r10d,[rax+0x2]
  40233b:	41 0f b6 34 1c       	movzx  esi,BYTE PTR [r12+rbx*1]
  402340:	44 0f b6 4c 1d 00    	movzx  r9d,BYTE PTR [rbp+rbx*1+0x0]
  402346:	4d 63 db             	movsxd r11,r11d
  402349:	4d 63 d2             	movsxd r10,r10d
  40234c:	42 0f b6 7c 1d 00    	movzx  edi,BYTE PTR [rbp+r11*1+0x0]
  402352:	47 0f b6 2c 14       	movzx  r13d,BYTE PTR [r12+r10*1]
  402357:	41 29 f1             	sub    r9d,esi
  40235a:	44 89 ce             	mov    esi,r9d
  40235d:	c1 fe 1f             	sar    esi,0x1f
  402360:	41 31 f1             	xor    r9d,esi
  402363:	41 29 f1             	sub    r9d,esi
  402366:	43 0f b6 34 1c       	movzx  esi,BYTE PTR [r12+r11*1]
  40236b:	29 f7                	sub    edi,esi
  40236d:	89 fe                	mov    esi,edi
  40236f:	c1 fe 1f             	sar    esi,0x1f
  402372:	31 f7                	xor    edi,esi
  402374:	29 f7                	sub    edi,esi
  402376:	42 0f b6 74 15 00    	movzx  esi,BYTE PTR [rbp+r10*1+0x0]
  40237c:	44 29 ee             	sub    esi,r13d
  40237f:	41 89 f5             	mov    r13d,esi
  402382:	41 c1 fd 1f          	sar    r13d,0x1f
  402386:	44 31 ee             	xor    esi,r13d
  402389:	44 29 ee             	sub    esi,r13d
  40238c:	41 89 fd             	mov    r13d,edi
  40238f:	66 39 fe             	cmp    si,di
  402392:	44 0f 4d ee          	cmovge r13d,esi
  402396:	66 44 39 ce          	cmp    si,r9w
  40239a:	41 0f 4c f1          	cmovl  esi,r9d
  40239e:	66 41 39 f9          	cmp    r9w,di
  4023a2:	41 0f 4e f5          	cmovle esi,r13d
  4023a6:	40 88 34 1a          	mov    BYTE PTR [rdx+rbx*1],sil
  4023aa:	42 88 34 1a          	mov    BYTE PTR [rdx+r11*1],sil
  4023ae:	42 88 34 12          	mov    BYTE PTR [rdx+r10*1],sil
  4023b2:	8d 70 03             	lea    esi,[rax+0x3]
  4023b5:	83 c0 04             	add    eax,0x4
  4023b8:	44 39 f0             	cmp    eax,r14d
  4023bb:	48 63 f6             	movsxd rsi,esi
  4023be:	c6 04 32 ff          	mov    BYTE PTR [rdx+rsi*1],0xff
  4023c2:	0f 85 68 ff ff ff    	jne    402330 <diff_c+0x50>
  4023c8:	41 83 c7 01          	add    r15d,0x1
  4023cc:	4c 03 64 24 e8       	add    r12,QWORD PTR [rsp-0x18]
  4023d1:	48 03 6c 24 f8       	add    rbp,QWORD PTR [rsp-0x8]
  4023d6:	48 03 54 24 f0       	add    rdx,QWORD PTR [rsp-0x10]
  4023db:	45 39 c7             	cmp    r15d,r8d
  4023de:	0f 85 3c ff ff ff    	jne    402320 <diff_c+0x40>
  4023e4:	5b                   	pop    rbx
  4023e5:	5d                   	pop    rbp
  4023e6:	41 5c                	pop    r12
  4023e8:	41 5d                	pop    r13
  4023ea:	41 5e                	pop    r14
  4023ec:	41 5f                	pop    r15
  4023ee:	f3 c3                	repz ret 

00000000004023f0 <matrizDeConvolucion>:
  4023f0:	41 57                	push   r15
  4023f2:	0f 14 c0             	unpcklps xmm0,xmm0
  4023f5:	41 56                	push   r14
  4023f7:	0f 5a d0             	cvtps2pd xmm2,xmm0
  4023fa:	41 55                	push   r13
  4023fc:	41 54                	push   r12
  4023fe:	41 89 fc             	mov    r12d,edi
  402401:	55                   	push   rbp
  402402:	8d 2c 3f             	lea    ebp,[rdi+rdi*1]
  402405:	53                   	push   rbx
  402406:	44 8d 6d 01          	lea    r13d,[rbp+0x1]
  40240a:	48 83 ec 28          	sub    rsp,0x28
  40240e:	49 63 dd             	movsxd rbx,r13d
  402411:	f2 0f 10 0d 5f 10 00 	movsd  xmm1,QWORD PTR [rip+0x105f]        # 403478 <_IO_stdin_used+0xbd8>
  402418:	00 
  402419:	48 89 df             	mov    rdi,rbx
  40241c:	f3 0f 10 25 5c 10 00 	movss  xmm4,DWORD PTR [rip+0x105c]        # 403480 <_IO_stdin_used+0xbe0>
  402423:	00 
  402424:	f2 0f 59 ca          	mulsd  xmm1,xmm2
  402428:	f3 0f 59 e0          	mulss  xmm4,xmm0
  40242c:	48 0f af fb          	imul   rdi,rbx
  402430:	f2 0f 59 ca          	mulsd  xmm1,xmm2
  402434:	f3 0f 59 c4          	mulss  xmm0,xmm4
  402438:	48 c1 e7 02          	shl    rdi,0x2
  40243c:	66 0f 14 c9          	unpcklpd xmm1,xmm1
  402440:	f3 0f 11 44 24 08    	movss  DWORD PTR [rsp+0x8],xmm0
  402446:	66 0f 5a e9          	cvtpd2ps xmm5,xmm1
  40244a:	f3 0f 11 2c 24       	movss  DWORD PTR [rsp],xmm5
  40244f:	e8 7c e7 ff ff       	call   400bd0 <malloc@plt>
  402454:	45 85 ed             	test   r13d,r13d
  402457:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  40245c:	0f 8e 8a 00 00 00    	jle    4024ec <matrizDeConvolucion+0xfc>
  402462:	f3 0f 10 34 24       	movss  xmm6,DWORD PTR [rsp]
  402467:	48 8d 0c 9d 00 00 00 	lea    rcx,[rbx*4+0x0]
  40246e:	00 
  40246f:	48 89 c3             	mov    rbx,rax
  402472:	41 8d 44 24 ff       	lea    eax,[r12-0x1]
  402477:	45 89 e6             	mov    r14d,r12d
  40247a:	0f 5a f6             	cvtps2pd xmm6,xmm6
  40247d:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
  402482:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  402486:	29 6c 24 0c          	sub    DWORD PTR [rsp+0xc],ebp
  40248a:	f2 0f 11 34 24       	movsd  QWORD PTR [rsp],xmm6
  40248f:	90                   	nop
  402490:	44 89 f5             	mov    ebp,r14d
  402493:	45 31 ff             	xor    r15d,r15d
  402496:	41 0f af ee          	imul   ebp,r14d
  40249a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
  4024a0:	44 89 e2             	mov    edx,r12d
  4024a3:	44 29 fa             	sub    edx,r15d
  4024a6:	0f af d2             	imul   edx,edx
  4024a9:	01 ea                	add    edx,ebp
  4024ab:	f3 0f 2a c2          	cvtsi2ss xmm0,edx
  4024af:	f3 0f 5e 44 24 08    	divss  xmm0,DWORD PTR [rsp+0x8]
  4024b5:	0f 14 c0             	unpcklps xmm0,xmm0
  4024b8:	0f 5a c0             	cvtps2pd xmm0,xmm0
  4024bb:	e8 60 e6 ff ff       	call   400b20 <exp@plt>
  4024c0:	f2 0f 5e 04 24       	divsd  xmm0,QWORD PTR [rsp]
  4024c5:	66 0f 14 c0          	unpcklpd xmm0,xmm0
  4024c9:	66 0f 5a d8          	cvtpd2ps xmm3,xmm0
  4024cd:	f3 42 0f 11 1c bb    	movss  DWORD PTR [rbx+r15*4],xmm3
  4024d3:	49 83 c7 01          	add    r15,0x1
  4024d7:	45 39 fd             	cmp    r13d,r15d
  4024da:	7f c4                	jg     4024a0 <matrizDeConvolucion+0xb0>
  4024dc:	41 83 ee 01          	sub    r14d,0x1
  4024e0:	48 03 5c 24 10       	add    rbx,QWORD PTR [rsp+0x10]
  4024e5:	44 3b 74 24 0c       	cmp    r14d,DWORD PTR [rsp+0xc]
  4024ea:	75 a4                	jne    402490 <matrizDeConvolucion+0xa0>
  4024ec:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
  4024f1:	48 83 c4 28          	add    rsp,0x28
  4024f5:	5b                   	pop    rbx
  4024f6:	5d                   	pop    rbp
  4024f7:	41 5c                	pop    r12
  4024f9:	41 5d                	pop    r13
  4024fb:	41 5e                	pop    r14
  4024fd:	41 5f                	pop    r15
  4024ff:	c3                   	ret    

0000000000402500 <blur_c>:
  402500:	41 57                	push   r15
  402502:	0f 14 c0             	unpcklps xmm0,xmm0
  402505:	89 d0                	mov    eax,edx
  402507:	45 89 c7             	mov    r15d,r8d
  40250a:	41 56                	push   r14
  40250c:	c1 e0 02             	shl    eax,0x2
  40250f:	0f 5a d0             	cvtps2pd xmm2,xmm0
  402512:	41 55                	push   r13
  402514:	41 54                	push   r12
  402516:	47 8d 24 00          	lea    r12d,[r8+r8*1]
  40251a:	55                   	push   rbp
  40251b:	41 8d 6c 24 01       	lea    ebp,[r12+0x1]
  402520:	53                   	push   rbx
  402521:	48 83 ec 68          	sub    rsp,0x68
  402525:	f2 0f 10 0d 4b 0f 00 	movsd  xmm1,QWORD PTR [rip+0xf4b]        # 403478 <_IO_stdin_used+0xbd8>
  40252c:	00 
  40252d:	89 44 24 24          	mov    DWORD PTR [rsp+0x24],eax
  402531:	48 63 c5             	movsxd rax,ebp
  402534:	48 89 7c 24 38       	mov    QWORD PTR [rsp+0x38],rdi
  402539:	48 89 c7             	mov    rdi,rax
  40253c:	48 89 74 24 40       	mov    QWORD PTR [rsp+0x40],rsi
  402541:	f2 0f 59 ca          	mulsd  xmm1,xmm2
  402545:	89 54 24 48          	mov    DWORD PTR [rsp+0x48],edx
  402549:	89 4c 24 4c          	mov    DWORD PTR [rsp+0x4c],ecx
  40254d:	48 0f af f8          	imul   rdi,rax
  402551:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  402556:	f2 0f 59 ca          	mulsd  xmm1,xmm2
  40255a:	48 c1 e7 02          	shl    rdi,0x2
  40255e:	66 0f 14 c9          	unpcklpd xmm1,xmm1
  402562:	66 0f 5a f9          	cvtpd2ps xmm7,xmm1
  402566:	f3 0f 11 7c 24 10    	movss  DWORD PTR [rsp+0x10],xmm7
  40256c:	f3 0f 10 3d 0c 0f 00 	movss  xmm7,DWORD PTR [rip+0xf0c]        # 403480 <_IO_stdin_used+0xbe0>
  402573:	00 
  402574:	f3 0f 59 f8          	mulss  xmm7,xmm0
  402578:	f3 0f 59 c7          	mulss  xmm0,xmm7
  40257c:	f3 0f 11 44 24 0c    	movss  DWORD PTR [rsp+0xc],xmm0
  402582:	e8 49 e6 ff ff       	call   400bd0 <malloc@plt>
  402587:	85 ed                	test   ebp,ebp
  402589:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
  40258e:	0f 8e 88 00 00 00    	jle    40261c <blur_c+0x11c>
  402594:	48 89 c3             	mov    rbx,rax
  402597:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
  40259c:	f3 0f 10 7c 24 10    	movss  xmm7,DWORD PTR [rsp+0x10]
  4025a2:	45 89 fd             	mov    r13d,r15d
  4025a5:	0f 5a ff             	cvtps2pd xmm7,xmm7
  4025a8:	48 c1 e0 02          	shl    rax,0x2
  4025ac:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
  4025b1:	41 8d 47 ff          	lea    eax,[r15-0x1]
  4025b5:	f2 0f 11 7c 24 10    	movsd  QWORD PTR [rsp+0x10],xmm7
  4025bb:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
  4025bf:	44 29 64 24 20       	sub    DWORD PTR [rsp+0x20],r12d
  4025c4:	45 89 ee             	mov    r14d,r13d
  4025c7:	45 31 e4             	xor    r12d,r12d
  4025ca:	45 0f af f5          	imul   r14d,r13d
  4025ce:	44 89 f8             	mov    eax,r15d
  4025d1:	44 29 e0             	sub    eax,r12d
  4025d4:	0f af c0             	imul   eax,eax
  4025d7:	44 01 f0             	add    eax,r14d
  4025da:	f3 0f 2a c0          	cvtsi2ss xmm0,eax
  4025de:	f3 0f 5e 44 24 0c    	divss  xmm0,DWORD PTR [rsp+0xc]
  4025e4:	0f 14 c0             	unpcklps xmm0,xmm0
  4025e7:	0f 5a c0             	cvtps2pd xmm0,xmm0
  4025ea:	e8 31 e5 ff ff       	call   400b20 <exp@plt>
  4025ef:	f2 0f 5e 44 24 10    	divsd  xmm0,QWORD PTR [rsp+0x10]
  4025f5:	66 0f 14 c0          	unpcklpd xmm0,xmm0
  4025f9:	66 0f 5a f0          	cvtpd2ps xmm6,xmm0
  4025fd:	f3 42 0f 11 34 a3    	movss  DWORD PTR [rbx+r12*4],xmm6
  402603:	49 83 c4 01          	add    r12,0x1
  402607:	44 39 e5             	cmp    ebp,r12d
  40260a:	7f c2                	jg     4025ce <blur_c+0xce>
  40260c:	41 83 ed 01          	sub    r13d,0x1
  402610:	48 03 5c 24 30       	add    rbx,QWORD PTR [rsp+0x30]
  402615:	44 3b 6c 24 20       	cmp    r13d,DWORD PTR [rsp+0x20]
  40261a:	75 a8                	jne    4025c4 <blur_c+0xc4>
  40261c:	8b 44 24 48          	mov    eax,DWORD PTR [rsp+0x48]
  402620:	44 29 f8             	sub    eax,r15d
  402623:	41 39 c7             	cmp    r15d,eax
  402626:	89 44 24 48          	mov    DWORD PTR [rsp+0x48],eax
  40262a:	0f 8d b6 01 00 00    	jge    4027e6 <blur_c+0x2e6>
  402630:	8b 44 24 4c          	mov    eax,DWORD PTR [rsp+0x4c]
  402634:	4c 63 5c 24 24       	movsxd r11,DWORD PTR [rsp+0x24]
  402639:	47 8d 44 3f 01       	lea    r8d,[r15+r15*1+0x1]
  40263e:	4c 8b 74 24 18       	mov    r14,QWORD PTR [rsp+0x18]
  402643:	0f 57 ed             	xorps  xmm5,xmm5
  402646:	41 8d 6f 01          	lea    ebp,[r15+0x1]
  40264a:	44 89 7c 24 0c       	mov    DWORD PTR [rsp+0xc],r15d
  40264f:	48 c7 44 24 30 00 00 	mov    QWORD PTR [rsp+0x30],0x0
  402656:	00 00 
  402658:	44 29 f8             	sub    eax,r15d
  40265b:	89 c7                	mov    edi,eax
  40265d:	89 44 24 4c          	mov    DWORD PTR [rsp+0x4c],eax
  402661:	44 89 f8             	mov    eax,r15d
  402664:	f7 d8                	neg    eax
  402666:	49 c1 e6 02          	shl    r14,0x2
  40266a:	c1 e7 02             	shl    edi,0x2
  40266d:	89 c3                	mov    ebx,eax
  40266f:	49 63 c7             	movsxd rax,r15d
  402672:	89 7c 24 24          	mov    DWORD PTR [rsp+0x24],edi
  402676:	48 89 c2             	mov    rdx,rax
  402679:	49 0f af d3          	imul   rdx,r11
  40267d:	48 03 54 24 40       	add    rdx,QWORD PTR [rsp+0x40]
  402682:	48 89 54 24 58       	mov    QWORD PTR [rsp+0x58],rdx
  402687:	42 8d 14 bd 00 00 00 	lea    edx,[r15*4+0x0]
  40268e:	00 
  40268f:	89 54 24 40          	mov    DWORD PTR [rsp+0x40],edx
  402693:	48 63 d3             	movsxd rdx,ebx
  402696:	48 01 d0             	add    rax,rdx
  402699:	4c 89 da             	mov    rdx,r11
  40269c:	48 0f af d0          	imul   rdx,rax
  4026a0:	49 0f af c6          	imul   rax,r14
  4026a4:	48 03 54 24 38       	add    rdx,QWORD PTR [rsp+0x38]
  4026a9:	44 89 7c 24 38       	mov    DWORD PTR [rsp+0x38],r15d
  4026ae:	48 03 44 24 28       	add    rax,QWORD PTR [rsp+0x28]
  4026b3:	48 89 54 24 50       	mov    QWORD PTR [rsp+0x50],rdx
  4026b8:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
  4026bd:	89 d8                	mov    eax,ebx
  4026bf:	8d 1c 9d 00 00 00 00 	lea    ebx,[rbx*4+0x0]
  4026c6:	89 5c 24 20          	mov    DWORD PTR [rsp+0x20],ebx
  4026ca:	41 8d 1c 07          	lea    ebx,[r15+rax*1]
  4026ce:	41 89 c7             	mov    r15d,eax
  4026d1:	8b 44 24 4c          	mov    eax,DWORD PTR [rsp+0x4c]
  4026d5:	39 44 24 0c          	cmp    DWORD PTR [rsp+0xc],eax
  4026d9:	0f 8d ef 00 00 00    	jge    4027ce <blur_c+0x2ce>
  4026df:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
  4026e4:	44 8b 64 24 40       	mov    r12d,DWORD PTR [rsp+0x40]
  4026e9:	49 89 c5             	mov    r13,rax
  4026ec:	48 03 44 24 50       	add    rax,QWORD PTR [rsp+0x50]
  4026f1:	4c 03 6c 24 58       	add    r13,QWORD PTR [rsp+0x58]
  4026f6:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  4026fb:	44 39 7c 24 0c       	cmp    DWORD PTR [rsp+0xc],r15d
  402700:	0f 8c f8 00 00 00    	jl     4027fe <blur_c+0x2fe>
  402706:	8b 44 24 20          	mov    eax,DWORD PTR [rsp+0x20]
  40270a:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
  40270f:	45 89 f9             	mov    r9d,r15d
  402712:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
  402717:	0f 28 d5             	movaps xmm2,xmm5
  40271a:	0f 28 dd             	movaps xmm3,xmm5
  40271d:	45 8d 14 04          	lea    r10d,[r12+rax*1]
  402721:	0f 28 e5             	movaps xmm4,xmm5
  402724:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
  402728:	89 da                	mov    edx,ebx
  40272a:	44 89 d0             	mov    eax,r10d
  40272d:	0f 1f 00             	nop    DWORD PTR [rax]
  402730:	48 63 f2             	movsxd rsi,edx
  402733:	83 c2 01             	add    edx,0x1
  402736:	f3 0f 10 0c b7       	movss  xmm1,DWORD PTR [rdi+rsi*4]
  40273b:	48 63 f0             	movsxd rsi,eax
  40273e:	0f b6 34 31          	movzx  esi,BYTE PTR [rcx+rsi*1]
  402742:	f3 0f 2a c6          	cvtsi2ss xmm0,esi
  402746:	8d 70 01             	lea    esi,[rax+0x1]
  402749:	48 63 f6             	movsxd rsi,esi
  40274c:	0f b6 34 31          	movzx  esi,BYTE PTR [rcx+rsi*1]
  402750:	f3 0f 59 c1          	mulss  xmm0,xmm1
  402754:	f3 0f 58 e0          	addss  xmm4,xmm0
  402758:	f3 0f 2a c6          	cvtsi2ss xmm0,esi
  40275c:	8d 70 02             	lea    esi,[rax+0x2]
  40275f:	83 c0 04             	add    eax,0x4
  402762:	44 39 c2             	cmp    edx,r8d
  402765:	48 63 f6             	movsxd rsi,esi
  402768:	0f b6 34 31          	movzx  esi,BYTE PTR [rcx+rsi*1]
  40276c:	f3 0f 59 c1          	mulss  xmm0,xmm1
  402770:	f3 0f 58 d8          	addss  xmm3,xmm0
  402774:	f3 0f 2a c6          	cvtsi2ss xmm0,esi
  402778:	f3 0f 59 c1          	mulss  xmm0,xmm1
  40277c:	f3 0f 58 d0          	addss  xmm2,xmm0
  402780:	75 ae                	jne    402730 <blur_c+0x230>
  402782:	41 83 c1 01          	add    r9d,0x1
  402786:	4c 01 d9             	add    rcx,r11
  402789:	4c 01 f7             	add    rdi,r14
  40278c:	41 39 e9             	cmp    r9d,ebp
  40278f:	75 97                	jne    402728 <blur_c+0x228>
  402791:	f3 0f 2c cc          	cvttss2si ecx,xmm4
  402795:	f3 0f 2c d3          	cvttss2si edx,xmm3
  402799:	f3 0f 2c c2          	cvttss2si eax,xmm2
  40279d:	49 63 f4             	movsxd rsi,r12d
  4027a0:	41 88 4c 35 00       	mov    BYTE PTR [r13+rsi*1+0x0],cl
  4027a5:	41 8d 4c 24 01       	lea    ecx,[r12+0x1]
  4027aa:	48 63 c9             	movsxd rcx,ecx
  4027ad:	41 88 54 0d 00       	mov    BYTE PTR [r13+rcx*1+0x0],dl
  4027b2:	41 8d 54 24 02       	lea    edx,[r12+0x2]
  4027b7:	41 83 c4 04          	add    r12d,0x4
  4027bb:	44 3b 64 24 24       	cmp    r12d,DWORD PTR [rsp+0x24]
  4027c0:	48 63 d2             	movsxd rdx,edx
  4027c3:	41 88 44 15 00       	mov    BYTE PTR [r13+rdx*1+0x0],al
  4027c8:	0f 85 2d ff ff ff    	jne    4026fb <blur_c+0x1fb>
  4027ce:	83 44 24 38 01       	add    DWORD PTR [rsp+0x38],0x1
  4027d3:	4c 01 5c 24 30       	add    QWORD PTR [rsp+0x30],r11
  4027d8:	8b 44 24 48          	mov    eax,DWORD PTR [rsp+0x48]
  4027dc:	39 44 24 38          	cmp    DWORD PTR [rsp+0x38],eax
  4027e0:	0f 85 eb fe ff ff    	jne    4026d1 <blur_c+0x1d1>
  4027e6:	48 8b 7c 24 28       	mov    rdi,QWORD PTR [rsp+0x28]
  4027eb:	48 83 c4 68          	add    rsp,0x68
  4027ef:	5b                   	pop    rbx
  4027f0:	5d                   	pop    rbp
  4027f1:	41 5c                	pop    r12
  4027f3:	41 5d                	pop    r13
  4027f5:	41 5e                	pop    r14
  4027f7:	41 5f                	pop    r15
  4027f9:	e9 c2 e2 ff ff       	jmp    400ac0 <free@plt>
  4027fe:	31 c0                	xor    eax,eax
  402800:	31 d2                	xor    edx,edx
  402802:	31 c9                	xor    ecx,ecx
  402804:	eb 97                	jmp    40279d <blur_c+0x29d>
  402806:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  40280d:	00 00 00 

0000000000402810 <__libc_csu_init>:
  402810:	41 57                	push   r15
  402812:	41 89 ff             	mov    r15d,edi
  402815:	41 56                	push   r14
  402817:	49 89 f6             	mov    r14,rsi
  40281a:	41 55                	push   r13
  40281c:	49 89 d5             	mov    r13,rdx
  40281f:	41 54                	push   r12
  402821:	4c 8d 25 c8 15 20 00 	lea    r12,[rip+0x2015c8]        # 603df0 <__frame_dummy_init_array_entry>
  402828:	55                   	push   rbp
  402829:	48 8d 2d c8 15 20 00 	lea    rbp,[rip+0x2015c8]        # 603df8 <__init_array_end>
  402830:	53                   	push   rbx
  402831:	4c 29 e5             	sub    rbp,r12
  402834:	31 db                	xor    ebx,ebx
  402836:	48 c1 fd 03          	sar    rbp,0x3
  40283a:	48 83 ec 08          	sub    rsp,0x8
  40283e:	e8 4d e2 ff ff       	call   400a90 <_init>
  402843:	48 85 ed             	test   rbp,rbp
  402846:	74 1e                	je     402866 <__libc_csu_init+0x56>
  402848:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  40284f:	00 
  402850:	4c 89 ea             	mov    rdx,r13
  402853:	4c 89 f6             	mov    rsi,r14
  402856:	44 89 ff             	mov    edi,r15d
  402859:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40285d:	48 83 c3 01          	add    rbx,0x1
  402861:	48 39 eb             	cmp    rbx,rbp
  402864:	75 ea                	jne    402850 <__libc_csu_init+0x40>
  402866:	48 83 c4 08          	add    rsp,0x8
  40286a:	5b                   	pop    rbx
  40286b:	5d                   	pop    rbp
  40286c:	41 5c                	pop    r12
  40286e:	41 5d                	pop    r13
  402870:	41 5e                	pop    r14
  402872:	41 5f                	pop    r15
  402874:	c3                   	ret    
  402875:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  40287c:	00 00 00 00 

0000000000402880 <__libc_csu_fini>:
  402880:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000402884 <_fini>:
  402884:	48 83 ec 08          	sub    rsp,0x8
  402888:	48 83 c4 08          	add    rsp,0x8
  40288c:	c3                   	ret    
