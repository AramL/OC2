
tp2:     file format elf64-x86-64


Disassembly of section .init:

0000000000400a50 <_init>:
  400a50:	48 83 ec 08          	sub    rsp,0x8
  400a54:	48 8b 05 9d 45 20 00 	mov    rax,QWORD PTR [rip+0x20459d]        # 604ff8 <_DYNAMIC+0x1f0>
  400a5b:	48 85 c0             	test   rax,rax
  400a5e:	74 05                	je     400a65 <_init+0x15>
  400a60:	e8 fb 00 00 00       	call   400b60 <__gmon_start__@plt>
  400a65:	48 83 c4 08          	add    rsp,0x8
  400a69:	c3                   	ret    

Disassembly of section .plt:

0000000000400a70 <free@plt-0x10>:
  400a70:	ff 35 92 45 20 00    	push   QWORD PTR [rip+0x204592]        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400a76:	ff 25 94 45 20 00    	jmp    QWORD PTR [rip+0x204594]        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400a7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400a80 <free@plt>:
  400a80:	ff 25 92 45 20 00    	jmp    QWORD PTR [rip+0x204592]        # 605018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400a86:	68 00 00 00 00       	push   0x0
  400a8b:	e9 e0 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400a90 <putchar@plt>:
  400a90:	ff 25 8a 45 20 00    	jmp    QWORD PTR [rip+0x20458a]        # 605020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400a96:	68 01 00 00 00       	push   0x1
  400a9b:	e9 d0 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400aa0 <abort@plt>:
  400aa0:	ff 25 82 45 20 00    	jmp    QWORD PTR [rip+0x204582]        # 605028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400aa6:	68 02 00 00 00       	push   0x2
  400aab:	e9 c0 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400ab0 <puts@plt>:
  400ab0:	ff 25 7a 45 20 00    	jmp    QWORD PTR [rip+0x20457a]        # 605030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400ab6:	68 03 00 00 00       	push   0x3
  400abb:	e9 b0 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400ac0 <fread@plt>:
  400ac0:	ff 25 72 45 20 00    	jmp    QWORD PTR [rip+0x204572]        # 605038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400ac6:	68 04 00 00 00       	push   0x4
  400acb:	e9 a0 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400ad0 <exp@plt>:
  400ad0:	ff 25 6a 45 20 00    	jmp    QWORD PTR [rip+0x20456a]        # 605040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400ad6:	68 05 00 00 00       	push   0x5
  400adb:	e9 90 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400ae0 <atof@plt>:
  400ae0:	ff 25 62 45 20 00    	jmp    QWORD PTR [rip+0x204562]        # 605048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400ae6:	68 06 00 00 00       	push   0x6
  400aeb:	e9 80 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400af0 <fclose@plt>:
  400af0:	ff 25 5a 45 20 00    	jmp    QWORD PTR [rip+0x20455a]        # 605050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400af6:	68 07 00 00 00       	push   0x7
  400afb:	e9 70 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400b00 <getopt_long@plt>:
  400b00:	ff 25 52 45 20 00    	jmp    QWORD PTR [rip+0x204552]        # 605058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400b06:	68 08 00 00 00       	push   0x8
  400b0b:	e9 60 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400b10 <printf@plt>:
  400b10:	ff 25 4a 45 20 00    	jmp    QWORD PTR [rip+0x20454a]        # 605060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400b16:	68 09 00 00 00       	push   0x9
  400b1b:	e9 50 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400b20 <snprintf@plt>:
  400b20:	ff 25 42 45 20 00    	jmp    QWORD PTR [rip+0x204542]        # 605068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400b26:	68 0a 00 00 00       	push   0xa
  400b2b:	e9 40 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400b30 <__libc_start_main@plt>:
  400b30:	ff 25 3a 45 20 00    	jmp    QWORD PTR [rip+0x20453a]        # 605070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400b36:	68 0b 00 00 00       	push   0xb
  400b3b:	e9 30 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400b40 <strcmp@plt>:
  400b40:	ff 25 32 45 20 00    	jmp    QWORD PTR [rip+0x204532]        # 605078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400b46:	68 0c 00 00 00       	push   0xc
  400b4b:	e9 20 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400b50 <basename@plt>:
  400b50:	ff 25 2a 45 20 00    	jmp    QWORD PTR [rip+0x20452a]        # 605080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400b56:	68 0d 00 00 00       	push   0xd
  400b5b:	e9 10 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400b60 <__gmon_start__@plt>:
  400b60:	ff 25 22 45 20 00    	jmp    QWORD PTR [rip+0x204522]        # 605088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400b66:	68 0e 00 00 00       	push   0xe
  400b6b:	e9 00 ff ff ff       	jmp    400a70 <_init+0x20>

0000000000400b70 <malloc@plt>:
  400b70:	ff 25 1a 45 20 00    	jmp    QWORD PTR [rip+0x20451a]        # 605090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400b76:	68 0f 00 00 00       	push   0xf
  400b7b:	e9 f0 fe ff ff       	jmp    400a70 <_init+0x20>

0000000000400b80 <access@plt>:
  400b80:	ff 25 12 45 20 00    	jmp    QWORD PTR [rip+0x204512]        # 605098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400b86:	68 10 00 00 00       	push   0x10
  400b8b:	e9 e0 fe ff ff       	jmp    400a70 <_init+0x20>

0000000000400b90 <fopen@plt>:
  400b90:	ff 25 0a 45 20 00    	jmp    QWORD PTR [rip+0x20450a]        # 6050a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400b96:	68 11 00 00 00       	push   0x11
  400b9b:	e9 d0 fe ff ff       	jmp    400a70 <_init+0x20>

0000000000400ba0 <perror@plt>:
  400ba0:	ff 25 02 45 20 00    	jmp    QWORD PTR [rip+0x204502]        # 6050a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400ba6:	68 12 00 00 00       	push   0x12
  400bab:	e9 c0 fe ff ff       	jmp    400a70 <_init+0x20>

0000000000400bb0 <atoi@plt>:
  400bb0:	ff 25 fa 44 20 00    	jmp    QWORD PTR [rip+0x2044fa]        # 6050b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400bb6:	68 13 00 00 00       	push   0x13
  400bbb:	e9 b0 fe ff ff       	jmp    400a70 <_init+0x20>

0000000000400bc0 <exit@plt>:
  400bc0:	ff 25 f2 44 20 00    	jmp    QWORD PTR [rip+0x2044f2]        # 6050b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400bc6:	68 14 00 00 00       	push   0x14
  400bcb:	e9 a0 fe ff ff       	jmp    400a70 <_init+0x20>

0000000000400bd0 <fwrite@plt>:
  400bd0:	ff 25 ea 44 20 00    	jmp    QWORD PTR [rip+0x2044ea]        # 6050c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
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
  400bef:	49 c7 c0 30 31 40 00 	mov    r8,0x403130
  400bf6:	48 c7 c1 c0 30 40 00 	mov    rcx,0x4030c0
  400bfd:	48 c7 c7 cd 0c 40 00 	mov    rdi,0x400ccd
  400c04:	e8 27 ff ff ff       	call   400b30 <__libc_start_main@plt>
  400c09:	f4                   	hlt    
  400c0a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000400c10 <deregister_tm_clones>:
  400c10:	b8 7f 51 60 00       	mov    eax,0x60517f
  400c15:	55                   	push   rbp
  400c16:	48 2d 78 51 60 00    	sub    rax,0x605178
  400c1c:	48 83 f8 0e          	cmp    rax,0xe
  400c20:	48 89 e5             	mov    rbp,rsp
  400c23:	77 02                	ja     400c27 <deregister_tm_clones+0x17>
  400c25:	5d                   	pop    rbp
  400c26:	c3                   	ret    
  400c27:	b8 00 00 00 00       	mov    eax,0x0
  400c2c:	48 85 c0             	test   rax,rax
  400c2f:	74 f4                	je     400c25 <deregister_tm_clones+0x15>
  400c31:	5d                   	pop    rbp
  400c32:	bf 78 51 60 00       	mov    edi,0x605178
  400c37:	ff e0                	jmp    rax
  400c39:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400c40 <register_tm_clones>:
  400c40:	b8 78 51 60 00       	mov    eax,0x605178
  400c45:	55                   	push   rbp
  400c46:	48 2d 78 51 60 00    	sub    rax,0x605178
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
  400c72:	bf 78 51 60 00       	mov    edi,0x605178
  400c77:	ff e2                	jmp    rdx
  400c79:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000400c80 <__do_global_dtors_aux>:
  400c80:	80 3d 09 45 20 00 00 	cmp    BYTE PTR [rip+0x204509],0x0        # 605190 <completed.6335>
  400c87:	75 11                	jne    400c9a <__do_global_dtors_aux+0x1a>
  400c89:	55                   	push   rbp
  400c8a:	48 89 e5             	mov    rbp,rsp
  400c8d:	e8 7e ff ff ff       	call   400c10 <deregister_tm_clones>
  400c92:	5d                   	pop    rbp
  400c93:	c6 05 f6 44 20 00 01 	mov    BYTE PTR [rip+0x2044f6],0x1        # 605190 <completed.6335>
  400c9a:	f3 c3                	repz ret 
  400c9c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000400ca0 <frame_dummy>:
  400ca0:	48 83 3d 58 41 20 00 	cmp    QWORD PTR [rip+0x204158],0x0        # 604e00 <__JCR_END__>
  400ca7:	00 
  400ca8:	74 1e                	je     400cc8 <frame_dummy+0x28>
  400caa:	b8 00 00 00 00       	mov    eax,0x0
  400caf:	48 85 c0             	test   rax,rax
  400cb2:	74 14                	je     400cc8 <frame_dummy+0x28>
  400cb4:	55                   	push   rbp
  400cb5:	bf 00 4e 60 00       	mov    edi,0x604e00
  400cba:	48 89 e5             	mov    rbp,rsp
  400cbd:	ff d0                	call   rax
  400cbf:	5d                   	pop    rbp
  400cc0:	e9 7b ff ff ff       	jmp    400c40 <register_tm_clones>
  400cc5:	0f 1f 00             	nop    DWORD PTR [rax]
  400cc8:	e9 73 ff ff ff       	jmp    400c40 <register_tm_clones>

0000000000400ccd <main>:
  400ccd:	55                   	push   rbp
  400cce:	48 89 e5             	mov    rbp,rsp
  400cd1:	48 81 ec c0 01 00 00 	sub    rsp,0x1c0
  400cd8:	89 bd 4c fe ff ff    	mov    DWORD PTR [rbp-0x1b4],edi
  400cde:	48 89 b5 40 fe ff ff 	mov    QWORD PTR [rbp-0x1c0],rsi
  400ce5:	48 8d 95 50 fe ff ff 	lea    rdx,[rbp-0x1b0]
  400cec:	48 8b 8d 40 fe ff ff 	mov    rcx,QWORD PTR [rbp-0x1c0]
  400cf3:	8b 85 4c fe ff ff    	mov    eax,DWORD PTR [rbp-0x1b4]
  400cf9:	48 89 ce             	mov    rsi,rcx
  400cfc:	89 c7                	mov    edi,eax
  400cfe:	e8 dd 03 00 00       	call   4010e0 <procesar_opciones>
  400d03:	0f b6 45 eb          	movzx  eax,BYTE PTR [rbp-0x15]
  400d07:	83 f0 01             	xor    eax,0x1
  400d0a:	84 c0                	test   al,al
  400d0c:	74 64                	je     400d72 <main+0xa5>
  400d0e:	bf 52 31 40 00       	mov    edi,0x403152
  400d13:	e8 98 fd ff ff       	call   400ab0 <puts@plt>
  400d18:	48 8b 85 50 fe ff ff 	mov    rax,QWORD PTR [rbp-0x1b0]
  400d1f:	48 89 c6             	mov    rsi,rax
  400d22:	bf 60 31 40 00       	mov    edi,0x403160
  400d27:	b8 00 00 00 00       	mov    eax,0x0
  400d2c:	e8 df fd ff ff       	call   400b10 <printf@plt>
  400d31:	8b 85 58 fe ff ff    	mov    eax,DWORD PTR [rbp-0x1a8]
  400d37:	85 c0                	test   eax,eax
  400d39:	75 07                	jne    400d42 <main+0x75>
  400d3b:	b8 7b 31 40 00       	mov    eax,0x40317b
  400d40:	eb 05                	jmp    400d47 <main+0x7a>
  400d42:	b8 7d 31 40 00       	mov    eax,0x40317d
  400d47:	48 89 c6             	mov    rsi,rax
  400d4a:	bf 81 31 40 00       	mov    edi,0x403181
  400d4f:	b8 00 00 00 00       	mov    eax,0x0
  400d54:	e8 b7 fd ff ff       	call   400b10 <printf@plt>
  400d59:	48 8b 85 c8 fe ff ff 	mov    rax,QWORD PTR [rbp-0x138]
  400d60:	48 89 c6             	mov    rsi,rax
  400d63:	bf 9d 31 40 00       	mov    edi,0x40319d
  400d68:	b8 00 00 00 00       	mov    eax,0x0
  400d6d:	e8 9e fd ff ff       	call   400b10 <printf@plt>
  400d72:	48 8d 85 50 fe ff ff 	lea    rax,[rbp-0x1b0]
  400d79:	48 89 c7             	mov    rdi,rax
  400d7c:	e8 4d 00 00 00       	call   400dce <detectar_filtro>
  400d81:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400d85:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  400d8a:	74 3b                	je     400dc7 <main+0xfa>
  400d8c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400d90:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  400d94:	48 8b 95 40 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x1c0]
  400d9b:	8b b5 4c fe ff ff    	mov    esi,DWORD PTR [rbp-0x1b4]
  400da1:	48 8d 8d 50 fe ff ff 	lea    rcx,[rbp-0x1b0]
  400da8:	48 89 cf             	mov    rdi,rcx
  400dab:	ff d0                	call   rax
  400dad:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400db1:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
  400db5:	48 8d 85 50 fe ff ff 	lea    rax,[rbp-0x1b0]
  400dbc:	48 89 d6             	mov    rsi,rdx
  400dbf:	48 89 c7             	mov    rdi,rax
  400dc2:	e8 80 01 00 00       	call   400f47 <correr_filtro_imagen>
  400dc7:	b8 00 00 00 00       	mov    eax,0x0
  400dcc:	c9                   	leave  
  400dcd:	c3                   	ret    

0000000000400dce <detectar_filtro>:
  400dce:	55                   	push   rbp
  400dcf:	48 89 e5             	mov    rbp,rsp
  400dd2:	48 83 ec 20          	sub    rsp,0x20
  400dd6:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  400dda:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  400de1:	eb 53                	jmp    400e36 <detectar_filtro+0x68>
  400de3:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400de6:	48 63 d0             	movsxd rdx,eax
  400de9:	48 89 d0             	mov    rax,rdx
  400dec:	48 c1 e0 02          	shl    rax,0x2
  400df0:	48 01 d0             	add    rax,rdx
  400df3:	48 c1 e0 03          	shl    rax,0x3
  400df7:	48 05 00 51 60 00    	add    rax,0x605100
  400dfd:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  400e00:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400e04:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400e07:	48 89 d6             	mov    rsi,rdx
  400e0a:	48 89 c7             	mov    rdi,rax
  400e0d:	e8 2e fd ff ff       	call   400b40 <strcmp@plt>
  400e12:	85 c0                	test   eax,eax
  400e14:	75 1c                	jne    400e32 <detectar_filtro+0x64>
  400e16:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400e19:	48 63 d0             	movsxd rdx,eax
  400e1c:	48 89 d0             	mov    rax,rdx
  400e1f:	48 c1 e0 02          	shl    rax,0x2
  400e23:	48 01 d0             	add    rax,rdx
  400e26:	48 c1 e0 03          	shl    rax,0x3
  400e2a:	48 05 00 51 60 00    	add    rax,0x605100
  400e30:	eb 49                	jmp    400e7b <detectar_filtro+0xad>
  400e32:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  400e36:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  400e39:	48 63 d0             	movsxd rdx,eax
  400e3c:	48 89 d0             	mov    rax,rdx
  400e3f:	48 c1 e0 02          	shl    rax,0x2
  400e43:	48 01 d0             	add    rax,rdx
  400e46:	48 c1 e0 03          	shl    rax,0x3
  400e4a:	48 05 00 51 60 00    	add    rax,0x605100
  400e50:	48 8b 00             	mov    rax,QWORD PTR [rax]
  400e53:	48 85 c0             	test   rax,rax
  400e56:	75 8b                	jne    400de3 <detectar_filtro+0x15>
  400e58:	48 8b 05 29 43 20 00 	mov    rax,QWORD PTR [rip+0x204329]        # 605188 <stderr@@GLIBC_2.2.5>
  400e5f:	48 89 c1             	mov    rcx,rax
  400e62:	ba 13 00 00 00       	mov    edx,0x13
  400e67:	be 01 00 00 00       	mov    esi,0x1
  400e6c:	bf b8 31 40 00       	mov    edi,0x4031b8
  400e71:	e8 5a fd ff ff       	call   400bd0 <fwrite@plt>
  400e76:	b8 00 00 00 00       	mov    eax,0x0
  400e7b:	c9                   	leave  
  400e7c:	c3                   	ret    

0000000000400e7d <imprimir_tiempos_ejecucion>:
  400e7d:	55                   	push   rbp
  400e7e:	48 89 e5             	mov    rbp,rsp
  400e81:	48 83 ec 30          	sub    rsp,0x30
  400e85:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  400e89:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
  400e8d:	89 55 dc             	mov    DWORD PTR [rbp-0x24],edx
  400e90:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400e94:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  400e98:	48 29 c2             	sub    rdx,rax
  400e9b:	48 89 d0             	mov    rax,rdx
  400e9e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  400ea2:	bf cc 31 40 00       	mov    edi,0x4031cc
  400ea7:	e8 04 fc ff ff       	call   400ab0 <puts@plt>
  400eac:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  400eb0:	48 89 c6             	mov    rsi,rax
  400eb3:	bf e8 31 40 00       	mov    edi,0x4031e8
  400eb8:	b8 00 00 00 00       	mov    eax,0x0
  400ebd:	e8 4e fc ff ff       	call   400b10 <printf@plt>
  400ec2:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  400ec6:	48 89 c6             	mov    rsi,rax
  400ec9:	bf 18 32 40 00       	mov    edi,0x403218
  400ece:	b8 00 00 00 00       	mov    eax,0x0
  400ed3:	e8 38 fc ff ff       	call   400b10 <printf@plt>
  400ed8:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
  400edb:	89 c6                	mov    esi,eax
  400edd:	bf 48 32 40 00       	mov    edi,0x403248
  400ee2:	b8 00 00 00 00       	mov    eax,0x0
  400ee7:	e8 24 fc ff ff       	call   400b10 <printf@plt>
  400eec:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400ef0:	48 89 c6             	mov    rsi,rax
  400ef3:	bf 78 32 40 00       	mov    edi,0x403278
  400ef8:	b8 00 00 00 00       	mov    eax,0x0
  400efd:	e8 0e fc ff ff       	call   400b10 <printf@plt>
  400f02:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  400f06:	48 85 c0             	test   rax,rax
  400f09:	78 07                	js     400f12 <imprimir_tiempos_ejecucion+0x95>
  400f0b:	f3 48 0f 2a c0       	cvtsi2ss xmm0,rax
  400f10:	eb 15                	jmp    400f27 <imprimir_tiempos_ejecucion+0xaa>
  400f12:	48 89 c2             	mov    rdx,rax
  400f15:	48 d1 ea             	shr    rdx,1
  400f18:	83 e0 01             	and    eax,0x1
  400f1b:	48 09 c2             	or     rdx,rax
  400f1e:	f3 48 0f 2a c2       	cvtsi2ss xmm0,rdx
  400f23:	f3 0f 58 c0          	addss  xmm0,xmm0
  400f27:	f3 0f 2a 4d dc       	cvtsi2ss xmm1,DWORD PTR [rbp-0x24]
  400f2c:	f3 0f 5e c1          	divss  xmm0,xmm1
  400f30:	0f 14 c0             	unpcklps xmm0,xmm0
  400f33:	0f 5a c0             	cvtps2pd xmm0,xmm0
  400f36:	bf a8 32 40 00       	mov    edi,0x4032a8
  400f3b:	b8 01 00 00 00       	mov    eax,0x1
  400f40:	e8 cb fb ff ff       	call   400b10 <printf@plt>
  400f45:	c9                   	leave  
  400f46:	c3                   	ret    

0000000000400f47 <correr_filtro_imagen>:
  400f47:	55                   	push   rbp
  400f48:	48 89 e5             	mov    rbp,rsp
  400f4b:	41 55                	push   r13
  400f4d:	41 54                	push   r12
  400f4f:	53                   	push   rbx
  400f50:	48 83 ec 48          	sub    rsp,0x48
  400f54:	48 89 7d b8          	mov    QWORD PTR [rbp-0x48],rdi
  400f58:	48 89 75 b0          	mov    QWORD PTR [rbp-0x50],rsi
  400f5c:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  400f60:	4c 8b a0 90 01 00 00 	mov    r12,QWORD PTR [rax+0x190]
  400f67:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  400f6b:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  400f6e:	85 c0                	test   eax,eax
  400f70:	75 07                	jne    400f79 <correr_filtro_imagen+0x32>
  400f72:	bb 7b 31 40 00       	mov    ebx,0x40317b
  400f77:	eb 05                	jmp    400f7e <correr_filtro_imagen+0x37>
  400f79:	bb 7d 31 40 00       	mov    ebx,0x40317d
  400f7e:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  400f82:	4c 8b 28             	mov    r13,QWORD PTR [rax]
  400f85:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  400f89:	48 8b 40 78          	mov    rax,QWORD PTR [rax+0x78]
  400f8d:	48 89 c7             	mov    rdi,rax
  400f90:	e8 bb fb ff ff       	call   400b50 <basename@plt>
  400f95:	48 89 c2             	mov    rdx,rax
  400f98:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  400f9c:	48 8b 80 88 01 00 00 	mov    rax,QWORD PTR [rax+0x188]
  400fa3:	48 8b 4d b8          	mov    rcx,QWORD PTR [rbp-0x48]
  400fa7:	48 8d b9 88 00 00 00 	lea    rdi,[rcx+0x88]
  400fae:	4c 89 64 24 08       	mov    QWORD PTR [rsp+0x8],r12
  400fb3:	48 89 1c 24          	mov    QWORD PTR [rsp],rbx
  400fb7:	4d 89 e9             	mov    r9,r13
  400fba:	49 89 d0             	mov    r8,rdx
  400fbd:	48 89 c1             	mov    rcx,rax
  400fc0:	ba d4 32 40 00       	mov    edx,0x4032d4
  400fc5:	be ff 00 00 00       	mov    esi,0xff
  400fca:	b8 00 00 00 00       	mov    eax,0x0
  400fcf:	e8 4c fb ff ff       	call   400b20 <snprintf@plt>
  400fd4:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  400fd8:	0f b6 80 9b 01 00 00 	movzx  eax,BYTE PTR [rax+0x19b]
  400fdf:	84 c0                	test   al,al
  400fe1:	74 1f                	je     401002 <correr_filtro_imagen+0xbb>
  400fe3:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  400fe7:	48 05 88 00 00 00    	add    rax,0x88
  400fed:	48 89 c7             	mov    rdi,rax
  400ff0:	e8 5b fb ff ff       	call   400b50 <basename@plt>
  400ff5:	48 89 c7             	mov    rdi,rax
  400ff8:	e8 b3 fa ff ff       	call   400ab0 <puts@plt>
  400ffd:	e9 d3 00 00 00       	jmp    4010d5 <correr_filtro_imagen+0x18e>
  401002:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401006:	48 89 c7             	mov    rdi,rax
  401009:	e8 a0 11 00 00       	call   4021ae <imagenes_abrir>
  40100e:	48 31 d2             	xor    rdx,rdx
  401011:	48 31 c0             	xor    rax,rax
  401014:	0f ae e8             	lfence 
  401017:	0f 31                	rdtsc  
  401019:	48 c1 e2 20          	shl    rdx,0x20
  40101d:	48 09 d0             	or     rax,rdx
  401020:	48 89 c1             	mov    rcx,rax
  401023:	48 89 4d d0          	mov    QWORD PTR [rbp-0x30],rcx
  401027:	48 31 d2             	xor    rdx,rdx
  40102a:	48 31 c0             	xor    rax,rax
  40102d:	0f ae e8             	lfence 
  401030:	0f 31                	rdtsc  
  401032:	48 c1 e2 20          	shl    rdx,0x20
  401036:	48 09 d0             	or     rax,rdx
  401039:	48 89 c1             	mov    rcx,rax
  40103c:	48 89 4d d0          	mov    QWORD PTR [rbp-0x30],rcx
  401040:	48 31 d2             	xor    rdx,rdx
  401043:	48 31 c0             	xor    rax,rax
  401046:	0f ae e8             	lfence 
  401049:	0f 31                	rdtsc  
  40104b:	48 c1 e2 20          	shl    rdx,0x20
  40104f:	48 09 d0             	or     rax,rdx
  401052:	48 89 c1             	mov    rcx,rax
  401055:	48 89 4d d0          	mov    QWORD PTR [rbp-0x30],rcx
  401059:	c7 45 dc 00 00 00 00 	mov    DWORD PTR [rbp-0x24],0x0
  401060:	eb 11                	jmp    401073 <correr_filtro_imagen+0x12c>
  401062:	48 8b 55 b8          	mov    rdx,QWORD PTR [rbp-0x48]
  401066:	48 8b 45 b0          	mov    rax,QWORD PTR [rbp-0x50]
  40106a:	48 89 d7             	mov    rdi,rdx
  40106d:	ff d0                	call   rax
  40106f:	83 45 dc 01          	add    DWORD PTR [rbp-0x24],0x1
  401073:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401077:	8b 80 9c 01 00 00    	mov    eax,DWORD PTR [rax+0x19c]
  40107d:	3b 45 dc             	cmp    eax,DWORD PTR [rbp-0x24]
  401080:	7f e0                	jg     401062 <correr_filtro_imagen+0x11b>
  401082:	48 31 d2             	xor    rdx,rdx
  401085:	48 31 c0             	xor    rax,rax
  401088:	0f ae e8             	lfence 
  40108b:	0f 31                	rdtsc  
  40108d:	48 c1 e2 20          	shl    rdx,0x20
  401091:	48 09 d0             	or     rax,rdx
  401094:	48 89 c1             	mov    rcx,rax
  401097:	48 89 4d c8          	mov    QWORD PTR [rbp-0x38],rcx
  40109b:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  40109f:	48 89 c7             	mov    rdi,rax
  4010a2:	e8 f6 12 00 00       	call   40239d <imagenes_guardar>
  4010a7:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  4010ab:	48 89 c7             	mov    rdi,rax
  4010ae:	b8 00 00 00 00       	mov    eax,0x0
  4010b3:	e8 10 13 00 00       	call   4023c8 <imagenes_liberar>
  4010b8:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  4010bc:	8b 90 9c 01 00 00    	mov    edx,DWORD PTR [rax+0x19c]
  4010c2:	48 8b 4d c8          	mov    rcx,QWORD PTR [rbp-0x38]
  4010c6:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  4010ca:	48 89 ce             	mov    rsi,rcx
  4010cd:	48 89 c7             	mov    rdi,rax
  4010d0:	e8 a8 fd ff ff       	call   400e7d <imprimir_tiempos_ejecucion>
  4010d5:	48 83 c4 48          	add    rsp,0x48
  4010d9:	5b                   	pop    rbx
  4010da:	41 5c                	pop    r12
  4010dc:	41 5d                	pop    r13
  4010de:	5d                   	pop    rbp
  4010df:	c3                   	ret    

00000000004010e0 <procesar_opciones>:
  4010e0:	55                   	push   rbp
  4010e1:	48 89 e5             	mov    rbp,rsp
  4010e4:	48 81 ec 70 01 00 00 	sub    rsp,0x170
  4010eb:	89 bd ac fe ff ff    	mov    DWORD PTR [rbp-0x154],edi
  4010f1:	48 89 b5 a0 fe ff ff 	mov    QWORD PTR [rbp-0x160],rsi
  4010f8:	48 89 95 98 fe ff ff 	mov    QWORD PTR [rbp-0x168],rdx
  4010ff:	83 bd ac fe ff ff 01 	cmp    DWORD PTR [rbp-0x154],0x1
  401106:	75 1c                	jne    401124 <procesar_opciones+0x44>
  401108:	48 8b 85 a0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x160]
  40110f:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401112:	48 89 c7             	mov    rdi,rax
  401115:	e8 4d 04 00 00       	call   401567 <imprimir_ayuda>
  40111a:	bf 00 00 00 00       	mov    edi,0x0
  40111f:	e8 9c fa ff ff       	call   400bc0 <exit@plt>
  401124:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
  40112b:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  401132:	c6 80 98 01 00 00 00 	mov    BYTE PTR [rax+0x198],0x0
  401139:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  401140:	c6 80 99 01 00 00 00 	mov    BYTE PTR [rax+0x199],0x0
  401147:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  40114e:	c6 80 9a 01 00 00 00 	mov    BYTE PTR [rax+0x19a],0x0
  401155:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  40115c:	c6 80 9b 01 00 00 00 	mov    BYTE PTR [rax+0x19b],0x0
  401163:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  40116a:	c7 80 9c 01 00 00 01 	mov    DWORD PTR [rax+0x19c],0x1
  401171:	00 00 00 
  401174:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  40117b:	48 c7 40 78 00 00 00 	mov    QWORD PTR [rax+0x78],0x0
  401182:	00 
  401183:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  40118a:	48 c7 80 80 00 00 00 	mov    QWORD PTR [rax+0x80],0x0
  401191:	00 00 00 00 
  401195:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  40119c:	48 c7 80 88 01 00 00 	mov    QWORD PTR [rax+0x188],0x403300
  4011a3:	00 33 40 00 
  4011a7:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  4011ae:	48 c7 80 90 01 00 00 	mov    QWORD PTR [rax+0x190],0x403302
  4011b5:	02 33 40 00 
  4011b9:	48 c7 45 e8 03 33 40 	mov    QWORD PTR [rbp-0x18],0x403303
  4011c0:	00 
  4011c1:	48 8d 95 b0 fe ff ff 	lea    rdx,[rbp-0x150]
  4011c8:	be 80 33 40 00       	mov    esi,0x403380
  4011cd:	b8 24 00 00 00       	mov    eax,0x24
  4011d2:	48 89 d7             	mov    rdi,rdx
  4011d5:	48 89 c1             	mov    rcx,rax
  4011d8:	f3 48 a5             	rep movs QWORD PTR es:[rdi],QWORD PTR ds:[rsi]
  4011db:	48 8d 8d b0 fe ff ff 	lea    rcx,[rbp-0x150]
  4011e2:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  4011e6:	48 8b b5 a0 fe ff ff 	mov    rsi,QWORD PTR [rbp-0x160]
  4011ed:	8b 85 ac fe ff ff    	mov    eax,DWORD PTR [rbp-0x154]
  4011f3:	41 b8 00 00 00 00    	mov    r8d,0x0
  4011f9:	89 c7                	mov    edi,eax
  4011fb:	e8 00 f9 ff ff       	call   400b00 <getopt_long@plt>
  401200:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  401203:	83 7d e4 ff          	cmp    DWORD PTR [rbp-0x1c],0xffffffff
  401207:	75 49                	jne    401252 <procesar_opciones+0x172>
  401209:	90                   	nop
  40120a:	8b 05 68 3f 20 00    	mov    eax,DWORD PTR [rip+0x203f68]        # 605178 <__TMC_END__>
  401210:	8d 50 01             	lea    edx,[rax+0x1]
  401213:	89 15 5f 3f 20 00    	mov    DWORD PTR [rip+0x203f5f],edx        # 605178 <__TMC_END__>
  401219:	48 98                	cdqe   
  40121b:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  401222:	00 
  401223:	48 8b 85 a0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x160]
  40122a:	48 01 d0             	add    rax,rdx
  40122d:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  401230:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  401237:	48 89 10             	mov    QWORD PTR [rax],rdx
  40123a:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  401241:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401244:	48 85 c0             	test   rax,rax
  401247:	0f 85 0a 01 00 00    	jne    401357 <procesar_opciones+0x277>
  40124d:	e9 e9 00 00 00       	jmp    40133b <procesar_opciones+0x25b>
  401252:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  401255:	83 e8 3f             	sub    eax,0x3f
  401258:	83 f8 38             	cmp    eax,0x38
  40125b:	0f 87 d0 00 00 00    	ja     401331 <procesar_opciones+0x251>
  401261:	89 c0                	mov    eax,eax
  401263:	48 8b 04 c5 a0 34 40 	mov    rax,QWORD PTR [rax*8+0x4034a0]
  40126a:	00 
  40126b:	ff e0                	jmp    rax
  40126d:	48 8b 85 a0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x160]
  401274:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401277:	48 89 c7             	mov    rdi,rax
  40127a:	e8 e8 02 00 00       	call   401567 <imprimir_ayuda>
  40127f:	bf 00 00 00 00       	mov    edi,0x0
  401284:	e8 37 f9 ff ff       	call   400bc0 <exit@plt>
  401289:	48 8b 05 f0 3e 20 00 	mov    rax,QWORD PTR [rip+0x203ef0]        # 605180 <optarg@@GLIBC_2.2.5>
  401290:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  401294:	e9 9d 00 00 00       	jmp    401336 <procesar_opciones+0x256>
  401299:	c7 45 f4 01 00 00 00 	mov    DWORD PTR [rbp-0xc],0x1
  4012a0:	48 8b 05 d9 3e 20 00 	mov    rax,QWORD PTR [rip+0x203ed9]        # 605180 <optarg@@GLIBC_2.2.5>
  4012a7:	48 89 c7             	mov    rdi,rax
  4012aa:	e8 01 f9 ff ff       	call   400bb0 <atoi@plt>
  4012af:	48 8b 95 98 fe ff ff 	mov    rdx,QWORD PTR [rbp-0x168]
  4012b6:	89 82 9c 01 00 00    	mov    DWORD PTR [rdx+0x19c],eax
  4012bc:	eb 78                	jmp    401336 <procesar_opciones+0x256>
  4012be:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  4012c5:	c6 80 99 01 00 00 01 	mov    BYTE PTR [rax+0x199],0x1
  4012cc:	eb 68                	jmp    401336 <procesar_opciones+0x256>
  4012ce:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  4012d5:	c6 80 9a 01 00 00 01 	mov    BYTE PTR [rax+0x19a],0x1
  4012dc:	eb 58                	jmp    401336 <procesar_opciones+0x256>
  4012de:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  4012e5:	c6 80 9b 01 00 00 01 	mov    BYTE PTR [rax+0x19b],0x1
  4012ec:	eb 48                	jmp    401336 <procesar_opciones+0x256>
  4012ee:	48 8b 15 8b 3e 20 00 	mov    rdx,QWORD PTR [rip+0x203e8b]        # 605180 <optarg@@GLIBC_2.2.5>
  4012f5:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  4012fc:	48 89 90 88 01 00 00 	mov    QWORD PTR [rax+0x188],rdx
  401303:	eb 31                	jmp    401336 <procesar_opciones+0x256>
  401305:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  40130c:	c6 80 98 01 00 00 01 	mov    BYTE PTR [rax+0x198],0x1
  401313:	eb 21                	jmp    401336 <procesar_opciones+0x256>
  401315:	48 8b 85 a0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x160]
  40131c:	48 8b 00             	mov    rax,QWORD PTR [rax]
  40131f:	48 89 c7             	mov    rdi,rax
  401322:	e8 40 02 00 00       	call   401567 <imprimir_ayuda>
  401327:	bf 00 00 00 00       	mov    edi,0x0
  40132c:	e8 8f f8 ff ff       	call   400bc0 <exit@plt>
  401331:	e8 6a f7 ff ff       	call   400aa0 <abort@plt>
  401336:	e9 a0 fe ff ff       	jmp    4011db <procesar_opciones+0xfb>
  40133b:	48 8b 85 a0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x160]
  401342:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401345:	48 89 c7             	mov    rdi,rax
  401348:	e8 1a 02 00 00       	call   401567 <imprimir_ayuda>
  40134d:	bf 00 00 00 00       	mov    edi,0x0
  401352:	e8 69 f8 ff ff       	call   400bc0 <exit@plt>
  401357:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  40135c:	74 2a                	je     401388 <procesar_opciones+0x2a8>
  40135e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401362:	be 0f 33 40 00       	mov    esi,0x40330f
  401367:	48 89 c7             	mov    rdi,rax
  40136a:	e8 d1 f7 ff ff       	call   400b40 <strcmp@plt>
  40136f:	85 c0                	test   eax,eax
  401371:	74 31                	je     4013a4 <procesar_opciones+0x2c4>
  401373:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401377:	be 11 33 40 00       	mov    esi,0x403311
  40137c:	48 89 c7             	mov    rdi,rax
  40137f:	e8 bc f7 ff ff       	call   400b40 <strcmp@plt>
  401384:	85 c0                	test   eax,eax
  401386:	74 1c                	je     4013a4 <procesar_opciones+0x2c4>
  401388:	48 8b 85 a0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x160]
  40138f:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401392:	48 89 c7             	mov    rdi,rax
  401395:	e8 cd 01 00 00       	call   401567 <imprimir_ayuda>
  40139a:	bf 00 00 00 00       	mov    edi,0x0
  40139f:	e8 1c f8 ff ff       	call   400bc0 <exit@plt>
  4013a4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4013a8:	be 0f 33 40 00       	mov    esi,0x40330f
  4013ad:	48 89 c7             	mov    rdi,rax
  4013b0:	e8 8b f7 ff ff       	call   400b40 <strcmp@plt>
  4013b5:	85 c0                	test   eax,eax
  4013b7:	75 10                	jne    4013c9 <procesar_opciones+0x2e9>
  4013b9:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  4013c0:	c7 40 08 00 00 00 00 	mov    DWORD PTR [rax+0x8],0x0
  4013c7:	eb 0e                	jmp    4013d7 <procesar_opciones+0x2f7>
  4013c9:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  4013d0:	c7 40 08 01 00 00 00 	mov    DWORD PTR [rax+0x8],0x1
  4013d7:	8b 05 9b 3d 20 00    	mov    eax,DWORD PTR [rip+0x203d9b]        # 605178 <__TMC_END__>
  4013dd:	8d 50 01             	lea    edx,[rax+0x1]
  4013e0:	89 15 92 3d 20 00    	mov    DWORD PTR [rip+0x203d92],edx        # 605178 <__TMC_END__>
  4013e6:	48 98                	cdqe   
  4013e8:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  4013ef:	00 
  4013f0:	48 8b 85 a0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x160]
  4013f7:	48 01 d0             	add    rax,rdx
  4013fa:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  4013fd:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  401404:	48 89 50 78          	mov    QWORD PTR [rax+0x78],rdx
  401408:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  40140f:	48 8b 40 78          	mov    rax,QWORD PTR [rax+0x78]
  401413:	48 85 c0             	test   rax,rax
  401416:	75 1c                	jne    401434 <procesar_opciones+0x354>
  401418:	48 8b 85 a0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x160]
  40141f:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401422:	48 89 c7             	mov    rdi,rax
  401425:	e8 3d 01 00 00       	call   401567 <imprimir_ayuda>
  40142a:	bf 00 00 00 00       	mov    edi,0x0
  40142f:	e8 8c f7 ff ff       	call   400bc0 <exit@plt>
  401434:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  40143b:	48 8b 40 78          	mov    rax,QWORD PTR [rax+0x78]
  40143f:	be 00 00 00 00       	mov    esi,0x0
  401444:	48 89 c7             	mov    rdi,rax
  401447:	e8 34 f7 ff ff       	call   400b80 <access@plt>
  40144c:	83 f8 ff             	cmp    eax,0xffffffff
  40144f:	75 27                	jne    401478 <procesar_opciones+0x398>
  401451:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  401458:	48 8b 40 78          	mov    rax,QWORD PTR [rax+0x78]
  40145c:	48 89 c6             	mov    rsi,rax
  40145f:	bf 18 33 40 00       	mov    edi,0x403318
  401464:	b8 00 00 00 00       	mov    eax,0x0
  401469:	e8 a2 f6 ff ff       	call   400b10 <printf@plt>
  40146e:	bf 00 00 00 00       	mov    edi,0x0
  401473:	e8 48 f7 ff ff       	call   400bc0 <exit@plt>
  401478:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  40147f:	48 89 c7             	mov    rdi,rax
  401482:	e8 47 f9 ff ff       	call   400dce <detectar_filtro>
  401487:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  40148b:	48 83 7d d8 00       	cmp    QWORD PTR [rbp-0x28],0x0
  401490:	0f 84 cf 00 00 00    	je     401565 <procesar_opciones+0x485>
  401496:	8b 05 dc 3c 20 00    	mov    eax,DWORD PTR [rip+0x203cdc]        # 605178 <__TMC_END__>
  40149c:	3b 85 ac fe ff ff    	cmp    eax,DWORD PTR [rbp-0x154]
  4014a2:	0f 8d bd 00 00 00    	jge    401565 <procesar_opciones+0x485>
  4014a8:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  4014ac:	8b 40 20             	mov    eax,DWORD PTR [rax+0x20]
  4014af:	83 f8 01             	cmp    eax,0x1
  4014b2:	0f 8e ad 00 00 00    	jle    401565 <procesar_opciones+0x485>
  4014b8:	8b 05 ba 3c 20 00    	mov    eax,DWORD PTR [rip+0x203cba]        # 605178 <__TMC_END__>
  4014be:	8d 50 01             	lea    edx,[rax+0x1]
  4014c1:	89 15 b1 3c 20 00    	mov    DWORD PTR [rip+0x203cb1],edx        # 605178 <__TMC_END__>
  4014c7:	48 98                	cdqe   
  4014c9:	48 8d 14 c5 00 00 00 	lea    rdx,[rax*8+0x0]
  4014d0:	00 
  4014d1:	48 8b 85 a0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x160]
  4014d8:	48 01 d0             	add    rax,rdx
  4014db:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  4014de:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  4014e5:	48 89 90 80 00 00 00 	mov    QWORD PTR [rax+0x80],rdx
  4014ec:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  4014f3:	48 8b 80 80 00 00 00 	mov    rax,QWORD PTR [rax+0x80]
  4014fa:	48 85 c0             	test   rax,rax
  4014fd:	75 1c                	jne    40151b <procesar_opciones+0x43b>
  4014ff:	48 8b 85 a0 fe ff ff 	mov    rax,QWORD PTR [rbp-0x160]
  401506:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401509:	48 89 c7             	mov    rdi,rax
  40150c:	e8 56 00 00 00       	call   401567 <imprimir_ayuda>
  401511:	bf 00 00 00 00       	mov    edi,0x0
  401516:	e8 a5 f6 ff ff       	call   400bc0 <exit@plt>
  40151b:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  401522:	48 8b 80 80 00 00 00 	mov    rax,QWORD PTR [rax+0x80]
  401529:	be 00 00 00 00       	mov    esi,0x0
  40152e:	48 89 c7             	mov    rdi,rax
  401531:	e8 4a f6 ff ff       	call   400b80 <access@plt>
  401536:	83 f8 ff             	cmp    eax,0xffffffff
  401539:	75 2a                	jne    401565 <procesar_opciones+0x485>
  40153b:	48 8b 85 98 fe ff ff 	mov    rax,QWORD PTR [rbp-0x168]
  401542:	48 8b 80 80 00 00 00 	mov    rax,QWORD PTR [rax+0x80]
  401549:	48 89 c6             	mov    rsi,rax
  40154c:	bf 18 33 40 00       	mov    edi,0x403318
  401551:	b8 00 00 00 00       	mov    eax,0x0
  401556:	e8 b5 f5 ff ff       	call   400b10 <printf@plt>
  40155b:	bf 00 00 00 00       	mov    edi,0x0
  401560:	e8 5b f6 ff ff       	call   400bc0 <exit@plt>
  401565:	c9                   	leave  
  401566:	c3                   	ret    

0000000000401567 <imprimir_ayuda>:
  401567:	55                   	push   rbp
  401568:	48 89 e5             	mov    rbp,rsp
  40156b:	48 83 ec 20          	sub    rsp,0x20
  40156f:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
  401573:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401577:	48 89 c6             	mov    rsi,rax
  40157a:	bf 68 36 40 00       	mov    edi,0x403668
  40157f:	b8 00 00 00 00       	mov    eax,0x0
  401584:	e8 87 f5 ff ff       	call   400b10 <printf@plt>
  401589:	bf b0 36 40 00       	mov    edi,0x4036b0
  40158e:	e8 1d f5 ff ff       	call   400ab0 <puts@plt>
  401593:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  40159a:	eb 23                	jmp    4015bf <imprimir_ayuda+0x58>
  40159c:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  40159f:	48 63 d0             	movsxd rdx,eax
  4015a2:	48 89 d0             	mov    rax,rdx
  4015a5:	48 c1 e0 02          	shl    rax,0x2
  4015a9:	48 01 d0             	add    rax,rdx
  4015ac:	48 c1 e0 03          	shl    rax,0x3
  4015b0:	48 05 10 51 60 00    	add    rax,0x605110
  4015b6:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4015b9:	ff d0                	call   rax
  4015bb:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  4015bf:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  4015c2:	48 63 d0             	movsxd rdx,eax
  4015c5:	48 89 d0             	mov    rax,rdx
  4015c8:	48 c1 e0 02          	shl    rax,0x2
  4015cc:	48 01 d0             	add    rax,rdx
  4015cf:	48 c1 e0 03          	shl    rax,0x3
  4015d3:	48 05 00 51 60 00    	add    rax,0x605100
  4015d9:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4015dc:	48 85 c0             	test   rax,rax
  4015df:	75 bb                	jne    40159c <imprimir_ayuda+0x35>
  4015e1:	bf 0a 00 00 00       	mov    edi,0xa
  4015e6:	e8 a5 f4 ff ff       	call   400a90 <putchar@plt>
  4015eb:	bf db 36 40 00       	mov    edi,0x4036db
  4015f0:	e8 bb f4 ff ff       	call   400ab0 <puts@plt>
  4015f5:	bf f0 36 40 00       	mov    edi,0x4036f0
  4015fa:	e8 b1 f4 ff ff       	call   400ab0 <puts@plt>
  4015ff:	bf 0a 00 00 00       	mov    edi,0xa
  401604:	e8 87 f4 ff ff       	call   400a90 <putchar@plt>
  401609:	bf 18 37 40 00       	mov    edi,0x403718
  40160e:	e8 9d f4 ff ff       	call   400ab0 <puts@plt>
  401613:	bf 40 37 40 00       	mov    edi,0x403740
  401618:	e8 93 f4 ff ff       	call   400ab0 <puts@plt>
  40161d:	bf 0a 00 00 00       	mov    edi,0xa
  401622:	e8 69 f4 ff ff       	call   400a90 <putchar@plt>
  401627:	bf 20 38 40 00       	mov    edi,0x403820
  40162c:	e8 7f f4 ff ff       	call   400ab0 <puts@plt>
  401631:	bf 48 38 40 00       	mov    edi,0x403848
  401636:	e8 75 f4 ff ff       	call   400ab0 <puts@plt>
  40163b:	bf 0a 00 00 00       	mov    edi,0xa
  401640:	e8 4b f4 ff ff       	call   400a90 <putchar@plt>
  401645:	bf 2a 39 40 00       	mov    edi,0x40392a
  40164a:	e8 61 f4 ff ff       	call   400ab0 <puts@plt>
  40164f:	bf 48 39 40 00       	mov    edi,0x403948
  401654:	e8 57 f4 ff ff       	call   400ab0 <puts@plt>
  401659:	bf 9f 39 40 00       	mov    edi,0x40399f
  40165e:	e8 4d f4 ff ff       	call   400ab0 <puts@plt>
  401663:	bf b0 39 40 00       	mov    edi,0x4039b0
  401668:	e8 43 f4 ff ff       	call   400ab0 <puts@plt>
  40166d:	bf 0c 3a 40 00       	mov    edi,0x403a0c
  401672:	e8 39 f4 ff ff       	call   400ab0 <puts@plt>
  401677:	bf 20 3a 40 00       	mov    edi,0x403a20
  40167c:	e8 2f f4 ff ff       	call   400ab0 <puts@plt>
  401681:	bf 0a 00 00 00       	mov    edi,0xa
  401686:	e8 05 f4 ff ff       	call   400a90 <putchar@plt>
  40168b:	c9                   	leave  
  40168c:	c3                   	ret    

000000000040168d <get_BMPIH>:
  40168d:	55                   	push   rbp
  40168e:	48 89 e5             	mov    rbp,rsp
  401691:	48 83 ec 20          	sub    rsp,0x20
  401695:	89 7d ec             	mov    DWORD PTR [rbp-0x14],edi
  401698:	89 75 e8             	mov    DWORD PTR [rbp-0x18],esi
  40169b:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  40169e:	83 e0 03             	and    eax,0x3
  4016a1:	85 c0                	test   eax,eax
  4016a3:	74 0a                	je     4016af <get_BMPIH+0x22>
  4016a5:	b8 00 00 00 00       	mov    eax,0x0
  4016aa:	e9 9d 00 00 00       	jmp    40174c <get_BMPIH+0xbf>
  4016af:	bf 28 00 00 00       	mov    edi,0x28
  4016b4:	e8 b7 f4 ff ff       	call   400b70 <malloc@plt>
  4016b9:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4016bd:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4016c1:	c7 00 28 00 00 00    	mov    DWORD PTR [rax],0x28
  4016c7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4016cb:	8b 55 ec             	mov    edx,DWORD PTR [rbp-0x14]
  4016ce:	89 50 04             	mov    DWORD PTR [rax+0x4],edx
  4016d1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4016d5:	8b 55 e8             	mov    edx,DWORD PTR [rbp-0x18]
  4016d8:	89 50 08             	mov    DWORD PTR [rax+0x8],edx
  4016db:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4016df:	66 c7 40 0c 01 00    	mov    WORD PTR [rax+0xc],0x1
  4016e5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4016e9:	66 c7 40 0e 18 00    	mov    WORD PTR [rax+0xe],0x18
  4016ef:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4016f3:	c7 40 10 00 00 00 00 	mov    DWORD PTR [rax+0x10],0x0
  4016fa:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  4016fd:	0f af 45 e8          	imul   eax,DWORD PTR [rbp-0x18]
  401701:	89 c2                	mov    edx,eax
  401703:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401707:	0f b7 40 0e          	movzx  eax,WORD PTR [rax+0xe]
  40170b:	66 c1 e8 03          	shr    ax,0x3
  40170f:	0f b7 c0             	movzx  eax,ax
  401712:	0f af d0             	imul   edx,eax
  401715:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401719:	89 50 14             	mov    DWORD PTR [rax+0x14],edx
  40171c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401720:	c7 40 18 88 0b 00 00 	mov    DWORD PTR [rax+0x18],0xb88
  401727:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40172b:	c7 40 1c 88 0b 00 00 	mov    DWORD PTR [rax+0x1c],0xb88
  401732:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401736:	c7 40 20 00 00 00 00 	mov    DWORD PTR [rax+0x20],0x0
  40173d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401741:	c7 40 24 00 00 00 00 	mov    DWORD PTR [rax+0x24],0x0
  401748:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40174c:	c9                   	leave  
  40174d:	c3                   	ret    

000000000040174e <get_BMPV5H>:
  40174e:	55                   	push   rbp
  40174f:	48 89 e5             	mov    rbp,rsp
  401752:	48 83 ec 40          	sub    rsp,0x40
  401756:	89 7d cc             	mov    DWORD PTR [rbp-0x34],edi
  401759:	89 75 c8             	mov    DWORD PTR [rbp-0x38],esi
  40175c:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  40175f:	83 e0 03             	and    eax,0x3
  401762:	85 c0                	test   eax,eax
  401764:	74 0a                	je     401770 <get_BMPV5H+0x22>
  401766:	b8 00 00 00 00       	mov    eax,0x0
  40176b:	e9 72 01 00 00       	jmp    4018e2 <get_BMPV5H+0x194>
  401770:	bf 7c 00 00 00       	mov    edi,0x7c
  401775:	e8 f6 f3 ff ff       	call   400b70 <malloc@plt>
  40177a:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  40177e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401782:	c7 00 7c 00 00 00    	mov    DWORD PTR [rax],0x7c
  401788:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40178c:	8b 55 cc             	mov    edx,DWORD PTR [rbp-0x34]
  40178f:	89 50 04             	mov    DWORD PTR [rax+0x4],edx
  401792:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401796:	8b 55 c8             	mov    edx,DWORD PTR [rbp-0x38]
  401799:	89 50 08             	mov    DWORD PTR [rax+0x8],edx
  40179c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4017a0:	66 c7 40 0c 01 00    	mov    WORD PTR [rax+0xc],0x1
  4017a6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4017aa:	66 c7 40 0e 20 00    	mov    WORD PTR [rax+0xe],0x20
  4017b0:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4017b4:	c7 40 10 03 00 00 00 	mov    DWORD PTR [rax+0x10],0x3
  4017bb:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  4017be:	0f af 45 c8          	imul   eax,DWORD PTR [rbp-0x38]
  4017c2:	89 c2                	mov    edx,eax
  4017c4:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4017c8:	0f b7 40 0e          	movzx  eax,WORD PTR [rax+0xe]
  4017cc:	66 c1 e8 03          	shr    ax,0x3
  4017d0:	0f b7 c0             	movzx  eax,ax
  4017d3:	0f af d0             	imul   edx,eax
  4017d6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4017da:	89 50 14             	mov    DWORD PTR [rax+0x14],edx
  4017dd:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4017e1:	c7 40 18 88 0b 00 00 	mov    DWORD PTR [rax+0x18],0xb88
  4017e8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4017ec:	c7 40 1c 88 0b 00 00 	mov    DWORD PTR [rax+0x1c],0xb88
  4017f3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4017f7:	c7 40 20 00 00 00 00 	mov    DWORD PTR [rax+0x20],0x0
  4017fe:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401802:	c7 40 24 00 00 00 00 	mov    DWORD PTR [rax+0x24],0x0
  401809:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40180d:	c7 40 28 00 00 00 ff 	mov    DWORD PTR [rax+0x28],0xff000000
  401814:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401818:	c7 40 2c 00 00 ff 00 	mov    DWORD PTR [rax+0x2c],0xff0000
  40181f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401823:	c7 40 30 00 ff 00 00 	mov    DWORD PTR [rax+0x30],0xff00
  40182a:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40182e:	c7 40 34 ff 00 00 00 	mov    DWORD PTR [rax+0x34],0xff
  401835:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401839:	c7 40 38 42 47 52 73 	mov    DWORD PTR [rax+0x38],0x73524742
  401840:	48 c7 45 d0 00 00 00 	mov    QWORD PTR [rbp-0x30],0x0
  401847:	00 
  401848:	48 c7 45 d8 00 00 00 	mov    QWORD PTR [rbp-0x28],0x0
  40184f:	00 
  401850:	48 c7 45 e0 00 00 00 	mov    QWORD PTR [rbp-0x20],0x0
  401857:	00 
  401858:	48 c7 45 e8 00 00 00 	mov    QWORD PTR [rbp-0x18],0x0
  40185f:	00 
  401860:	c7 45 f0 00 00 00 00 	mov    DWORD PTR [rbp-0x10],0x0
  401867:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40186b:	48 8b 55 d0          	mov    rdx,QWORD PTR [rbp-0x30]
  40186f:	48 89 50 3c          	mov    QWORD PTR [rax+0x3c],rdx
  401873:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  401877:	48 89 50 44          	mov    QWORD PTR [rax+0x44],rdx
  40187b:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  40187f:	48 89 50 4c          	mov    QWORD PTR [rax+0x4c],rdx
  401883:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  401887:	48 89 50 54          	mov    QWORD PTR [rax+0x54],rdx
  40188b:	8b 55 f0             	mov    edx,DWORD PTR [rbp-0x10]
  40188e:	89 50 5c             	mov    DWORD PTR [rax+0x5c],edx
  401891:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401895:	c7 40 60 00 00 00 00 	mov    DWORD PTR [rax+0x60],0x0
  40189c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4018a0:	c7 40 64 00 00 00 00 	mov    DWORD PTR [rax+0x64],0x0
  4018a7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4018ab:	c7 40 68 00 00 00 00 	mov    DWORD PTR [rax+0x68],0x0
  4018b2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4018b6:	c7 40 6c 02 00 00 00 	mov    DWORD PTR [rax+0x6c],0x2
  4018bd:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4018c1:	c7 40 70 00 00 00 00 	mov    DWORD PTR [rax+0x70],0x0
  4018c8:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4018cc:	c7 40 74 00 00 00 00 	mov    DWORD PTR [rax+0x74],0x0
  4018d3:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4018d7:	c7 40 78 00 00 00 00 	mov    DWORD PTR [rax+0x78],0x0
  4018de:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4018e2:	c9                   	leave  
  4018e3:	c3                   	ret    

00000000004018e4 <bmp_create>:
  4018e4:	55                   	push   rbp
  4018e5:	48 89 e5             	mov    rbp,rsp
  4018e8:	48 83 ec 40          	sub    rsp,0x40
  4018ec:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
  4018f0:	89 75 c4             	mov    DWORD PTR [rbp-0x3c],esi
  4018f3:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  4018f7:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  4018fb:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  4018ff:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
  401902:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  401905:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  401908:	48 89 c7             	mov    rdi,rax
  40190b:	e8 60 f2 ff ff       	call   400b70 <malloc@plt>
  401910:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  401914:	83 7d c4 00          	cmp    DWORD PTR [rbp-0x3c],0x0
  401918:	74 22                	je     40193c <bmp_create+0x58>
  40191a:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  401921:	eb 11                	jmp    401934 <bmp_create+0x50>
  401923:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  401926:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  40192a:	48 01 d0             	add    rax,rdx
  40192d:	c6 00 00             	mov    BYTE PTR [rax],0x0
  401930:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  401934:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  401937:	3b 45 ec             	cmp    eax,DWORD PTR [rbp-0x14]
  40193a:	72 e7                	jb     401923 <bmp_create+0x3f>
  40193c:	bf 0e 00 00 00       	mov    edi,0xe
  401941:	e8 2a f2 ff ff       	call   400b70 <malloc@plt>
  401946:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  40194a:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  40194e:	c6 00 42             	mov    BYTE PTR [rax],0x42
  401951:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  401955:	c6 40 01 4d          	mov    BYTE PTR [rax+0x1],0x4d
  401959:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40195d:	8b 00                	mov    eax,DWORD PTR [rax]
  40195f:	8d 50 0e             	lea    edx,[rax+0xe]
  401962:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  401966:	89 50 0a             	mov    DWORD PTR [rax+0xa],edx
  401969:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  40196d:	8b 50 0a             	mov    edx,DWORD PTR [rax+0xa]
  401970:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  401973:	01 c2                	add    edx,eax
  401975:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  401979:	89 50 02             	mov    DWORD PTR [rax+0x2],edx
  40197c:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  401980:	66 c7 40 06 00 00    	mov    WORD PTR [rax+0x6],0x0
  401986:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  40198a:	66 c7 40 08 00 00    	mov    WORD PTR [rax+0x8],0x0
  401990:	bf 18 00 00 00       	mov    edi,0x18
  401995:	e8 d6 f1 ff ff       	call   400b70 <malloc@plt>
  40199a:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  40199e:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  4019a2:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  4019a6:	48 89 10             	mov    QWORD PTR [rax],rdx
  4019a9:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  4019ad:	48 8b 55 c8          	mov    rdx,QWORD PTR [rbp-0x38]
  4019b1:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
  4019b5:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  4019b9:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  4019bd:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  4019c1:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  4019c5:	c9                   	leave  
  4019c6:	c3                   	ret    

00000000004019c7 <bmp_copy>:
  4019c7:	55                   	push   rbp
  4019c8:	48 89 e5             	mov    rbp,rsp
  4019cb:	48 83 ec 60          	sub    rsp,0x60
  4019cf:	48 89 7d a8          	mov    QWORD PTR [rbp-0x58],rdi
  4019d3:	89 75 a4             	mov    DWORD PTR [rbp-0x5c],esi
  4019d6:	bf 0e 00 00 00       	mov    edi,0xe
  4019db:	e8 90 f1 ff ff       	call   400b70 <malloc@plt>
  4019e0:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  4019e4:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  4019e8:	48 8b 10             	mov    rdx,QWORD PTR [rax]
  4019eb:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4019ef:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  4019f2:	48 89 08             	mov    QWORD PTR [rax],rcx
  4019f5:	8b 4a 08             	mov    ecx,DWORD PTR [rdx+0x8]
  4019f8:	89 48 08             	mov    DWORD PTR [rax+0x8],ecx
  4019fb:	0f b7 52 0c          	movzx  edx,WORD PTR [rdx+0xc]
  4019ff:	66 89 50 0c          	mov    WORD PTR [rax+0xc],dx
  401a03:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401a07:	8b 40 0a             	mov    eax,DWORD PTR [rax+0xa]
  401a0a:	83 e8 0e             	sub    eax,0xe
  401a0d:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  401a10:	48 c7 45 f0 00 00 00 	mov    QWORD PTR [rbp-0x10],0x0
  401a17:	00 
  401a18:	83 7d e4 28          	cmp    DWORD PTR [rbp-0x1c],0x28
  401a1c:	75 4d                	jne    401a6b <bmp_copy+0xa4>
  401a1e:	bf 28 00 00 00       	mov    edi,0x28
  401a23:	e8 48 f1 ff ff       	call   400b70 <malloc@plt>
  401a28:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  401a2c:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  401a30:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  401a34:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  401a38:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  401a3b:	48 89 08             	mov    QWORD PTR [rax],rcx
  401a3e:	48 8b 4a 08          	mov    rcx,QWORD PTR [rdx+0x8]
  401a42:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  401a46:	48 8b 4a 10          	mov    rcx,QWORD PTR [rdx+0x10]
  401a4a:	48 89 48 10          	mov    QWORD PTR [rax+0x10],rcx
  401a4e:	48 8b 4a 18          	mov    rcx,QWORD PTR [rdx+0x18]
  401a52:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  401a56:	48 8b 52 20          	mov    rdx,QWORD PTR [rdx+0x20]
  401a5a:	48 89 50 20          	mov    QWORD PTR [rax+0x20],rdx
  401a5e:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  401a62:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  401a66:	e9 a8 00 00 00       	jmp    401b13 <bmp_copy+0x14c>
  401a6b:	83 7d e4 7c          	cmp    DWORD PTR [rbp-0x1c],0x7c
  401a6f:	0f 85 9e 00 00 00    	jne    401b13 <bmp_copy+0x14c>
  401a75:	bf 7c 00 00 00       	mov    edi,0x7c
  401a7a:	e8 f1 f0 ff ff       	call   400b70 <malloc@plt>
  401a7f:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  401a83:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  401a87:	48 8b 50 08          	mov    rdx,QWORD PTR [rax+0x8]
  401a8b:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  401a8f:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
  401a92:	48 89 08             	mov    QWORD PTR [rax],rcx
  401a95:	48 8b 4a 08          	mov    rcx,QWORD PTR [rdx+0x8]
  401a99:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
  401a9d:	48 8b 4a 10          	mov    rcx,QWORD PTR [rdx+0x10]
  401aa1:	48 89 48 10          	mov    QWORD PTR [rax+0x10],rcx
  401aa5:	48 8b 4a 18          	mov    rcx,QWORD PTR [rdx+0x18]
  401aa9:	48 89 48 18          	mov    QWORD PTR [rax+0x18],rcx
  401aad:	48 8b 4a 20          	mov    rcx,QWORD PTR [rdx+0x20]
  401ab1:	48 89 48 20          	mov    QWORD PTR [rax+0x20],rcx
  401ab5:	48 8b 4a 28          	mov    rcx,QWORD PTR [rdx+0x28]
  401ab9:	48 89 48 28          	mov    QWORD PTR [rax+0x28],rcx
  401abd:	48 8b 4a 30          	mov    rcx,QWORD PTR [rdx+0x30]
  401ac1:	48 89 48 30          	mov    QWORD PTR [rax+0x30],rcx
  401ac5:	48 8b 4a 38          	mov    rcx,QWORD PTR [rdx+0x38]
  401ac9:	48 89 48 38          	mov    QWORD PTR [rax+0x38],rcx
  401acd:	48 8b 4a 40          	mov    rcx,QWORD PTR [rdx+0x40]
  401ad1:	48 89 48 40          	mov    QWORD PTR [rax+0x40],rcx
  401ad5:	48 8b 4a 48          	mov    rcx,QWORD PTR [rdx+0x48]
  401ad9:	48 89 48 48          	mov    QWORD PTR [rax+0x48],rcx
  401add:	48 8b 4a 50          	mov    rcx,QWORD PTR [rdx+0x50]
  401ae1:	48 89 48 50          	mov    QWORD PTR [rax+0x50],rcx
  401ae5:	48 8b 4a 58          	mov    rcx,QWORD PTR [rdx+0x58]
  401ae9:	48 89 48 58          	mov    QWORD PTR [rax+0x58],rcx
  401aed:	48 8b 4a 60          	mov    rcx,QWORD PTR [rdx+0x60]
  401af1:	48 89 48 60          	mov    QWORD PTR [rax+0x60],rcx
  401af5:	48 8b 4a 68          	mov    rcx,QWORD PTR [rdx+0x68]
  401af9:	48 89 48 68          	mov    QWORD PTR [rax+0x68],rcx
  401afd:	48 8b 4a 70          	mov    rcx,QWORD PTR [rdx+0x70]
  401b01:	48 89 48 70          	mov    QWORD PTR [rax+0x70],rcx
  401b05:	8b 52 78             	mov    edx,DWORD PTR [rdx+0x78]
  401b08:	89 50 78             	mov    DWORD PTR [rax+0x78],edx
  401b0b:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  401b0f:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  401b13:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401b17:	8b 40 14             	mov    eax,DWORD PTR [rax+0x14]
  401b1a:	89 45 cc             	mov    DWORD PTR [rbp-0x34],eax
  401b1d:	8b 45 cc             	mov    eax,DWORD PTR [rbp-0x34]
  401b20:	48 89 c7             	mov    rdi,rax
  401b23:	e8 48 f0 ff ff       	call   400b70 <malloc@plt>
  401b28:	48 89 45 c0          	mov    QWORD PTR [rbp-0x40],rax
  401b2c:	83 7d a4 00          	cmp    DWORD PTR [rbp-0x5c],0x0
  401b30:	74 32                	je     401b64 <bmp_copy+0x19d>
  401b32:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  401b39:	eb 21                	jmp    401b5c <bmp_copy+0x195>
  401b3b:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
  401b3e:	48 8b 45 c0          	mov    rax,QWORD PTR [rbp-0x40]
  401b42:	48 01 c2             	add    rdx,rax
  401b45:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  401b49:	48 8b 48 10          	mov    rcx,QWORD PTR [rax+0x10]
  401b4d:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  401b50:	48 01 c8             	add    rax,rcx
  401b53:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  401b56:	88 02                	mov    BYTE PTR [rdx],al
  401b58:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
  401b5c:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  401b5f:	3b 45 cc             	cmp    eax,DWORD PTR [rbp-0x34]
  401b62:	72 d7                	jb     401b3b <bmp_copy+0x174>
  401b64:	bf 18 00 00 00       	mov    edi,0x18
  401b69:	e8 02 f0 ff ff       	call   400b70 <malloc@plt>
  401b6e:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
  401b72:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401b76:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  401b7a:	48 89 10             	mov    QWORD PTR [rax],rdx
  401b7d:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401b81:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  401b85:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
  401b89:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401b8d:	48 8b 55 c0          	mov    rdx,QWORD PTR [rbp-0x40]
  401b91:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  401b95:	48 8b 45 b8          	mov    rax,QWORD PTR [rbp-0x48]
  401b99:	c9                   	leave  
  401b9a:	c3                   	ret    

0000000000401b9b <bmp_read>:
  401b9b:	55                   	push   rbp
  401b9c:	48 89 e5             	mov    rbp,rsp
  401b9f:	48 83 ec 40          	sub    rsp,0x40
  401ba3:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
  401ba7:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  401bab:	be 58 3a 40 00       	mov    esi,0x403a58
  401bb0:	48 89 c7             	mov    rdi,rax
  401bb3:	e8 d8 ef ff ff       	call   400b90 <fopen@plt>
  401bb8:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  401bbc:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
  401bc1:	75 28                	jne    401beb <bmp_read+0x50>
  401bc3:	48 8b 05 be 35 20 00 	mov    rax,QWORD PTR [rip+0x2035be]        # 605188 <stderr@@GLIBC_2.2.5>
  401bca:	48 89 c1             	mov    rcx,rax
  401bcd:	ba 1b 00 00 00       	mov    edx,0x1b
  401bd2:	be 01 00 00 00       	mov    esi,0x1
  401bd7:	bf 5a 3a 40 00       	mov    edi,0x403a5a
  401bdc:	e8 ef ef ff ff       	call   400bd0 <fwrite@plt>
  401be1:	b8 00 00 00 00       	mov    eax,0x0
  401be6:	e9 99 01 00 00       	jmp    401d84 <bmp_read+0x1e9>
  401beb:	bf 0e 00 00 00       	mov    edi,0xe
  401bf0:	e8 7b ef ff ff       	call   400b70 <malloc@plt>
  401bf5:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  401bf9:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  401bfd:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401c01:	48 89 d1             	mov    rcx,rdx
  401c04:	ba 01 00 00 00       	mov    edx,0x1
  401c09:	be 0e 00 00 00       	mov    esi,0xe
  401c0e:	48 89 c7             	mov    rdi,rax
  401c11:	e8 aa ee ff ff       	call   400ac0 <fread@plt>
  401c16:	48 85 c0             	test   rax,rax
  401c19:	75 28                	jne    401c43 <bmp_read+0xa8>
  401c1b:	48 8b 05 66 35 20 00 	mov    rax,QWORD PTR [rip+0x203566]        # 605188 <stderr@@GLIBC_2.2.5>
  401c22:	48 89 c1             	mov    rcx,rax
  401c25:	ba 1a 00 00 00       	mov    edx,0x1a
  401c2a:	be 01 00 00 00       	mov    esi,0x1
  401c2f:	bf 76 3a 40 00       	mov    edi,0x403a76
  401c34:	e8 97 ef ff ff       	call   400bd0 <fwrite@plt>
  401c39:	b8 00 00 00 00       	mov    eax,0x0
  401c3e:	e9 41 01 00 00       	jmp    401d84 <bmp_read+0x1e9>
  401c43:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401c47:	8b 40 0a             	mov    eax,DWORD PTR [rax+0xa]
  401c4a:	83 e8 0e             	sub    eax,0xe
  401c4d:	89 45 e4             	mov    DWORD PTR [rbp-0x1c],eax
  401c50:	48 c7 45 f8 00 00 00 	mov    QWORD PTR [rbp-0x8],0x0
  401c57:	00 
  401c58:	83 7d e4 28          	cmp    DWORD PTR [rbp-0x1c],0x28
  401c5c:	75 10                	jne    401c6e <bmp_read+0xd3>
  401c5e:	bf 28 00 00 00       	mov    edi,0x28
  401c63:	e8 08 ef ff ff       	call   400b70 <malloc@plt>
  401c68:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  401c6c:	eb 2a                	jmp    401c98 <bmp_read+0xfd>
  401c6e:	83 7d e4 7c          	cmp    DWORD PTR [rbp-0x1c],0x7c
  401c72:	75 10                	jne    401c84 <bmp_read+0xe9>
  401c74:	bf 7c 00 00 00       	mov    edi,0x7c
  401c79:	e8 f2 ee ff ff       	call   400b70 <malloc@plt>
  401c7e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  401c82:	eb 14                	jmp    401c98 <bmp_read+0xfd>
  401c84:	83 7d e4 38          	cmp    DWORD PTR [rbp-0x1c],0x38
  401c88:	75 0e                	jne    401c98 <bmp_read+0xfd>
  401c8a:	bf 38 00 00 00       	mov    edi,0x38
  401c8f:	e8 dc ee ff ff       	call   400b70 <malloc@plt>
  401c94:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  401c98:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
  401c9d:	75 28                	jne    401cc7 <bmp_read+0x12c>
  401c9f:	48 8b 05 e2 34 20 00 	mov    rax,QWORD PTR [rip+0x2034e2]        # 605188 <stderr@@GLIBC_2.2.5>
  401ca6:	48 89 c1             	mov    rcx,rax
  401ca9:	ba 21 00 00 00       	mov    edx,0x21
  401cae:	be 01 00 00 00       	mov    esi,0x1
  401cb3:	bf 98 3a 40 00       	mov    edi,0x403a98
  401cb8:	e8 13 ef ff ff       	call   400bd0 <fwrite@plt>
  401cbd:	b8 00 00 00 00       	mov    eax,0x0
  401cc2:	e9 bd 00 00 00       	jmp    401d84 <bmp_read+0x1e9>
  401cc7:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  401cca:	48 63 f0             	movsxd rsi,eax
  401ccd:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  401cd1:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401cd5:	48 89 d1             	mov    rcx,rdx
  401cd8:	ba 01 00 00 00       	mov    edx,0x1
  401cdd:	48 89 c7             	mov    rdi,rax
  401ce0:	e8 db ed ff ff       	call   400ac0 <fread@plt>
  401ce5:	48 85 c0             	test   rax,rax
  401ce8:	75 0a                	jne    401cf4 <bmp_read+0x159>
  401cea:	b8 00 00 00 00       	mov    eax,0x0
  401cef:	e9 90 00 00 00       	jmp    401d84 <bmp_read+0x1e9>
  401cf4:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  401cf8:	8b 50 02             	mov    edx,DWORD PTR [rax+0x2]
  401cfb:	8b 45 e4             	mov    eax,DWORD PTR [rbp-0x1c]
  401cfe:	29 c2                	sub    edx,eax
  401d00:	89 d0                	mov    eax,edx
  401d02:	83 e8 0e             	sub    eax,0xe
  401d05:	89 45 e0             	mov    DWORD PTR [rbp-0x20],eax
  401d08:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  401d0b:	48 98                	cdqe   
  401d0d:	48 89 c7             	mov    rdi,rax
  401d10:	e8 5b ee ff ff       	call   400b70 <malloc@plt>
  401d15:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  401d19:	8b 45 e0             	mov    eax,DWORD PTR [rbp-0x20]
  401d1c:	48 63 f0             	movsxd rsi,eax
  401d1f:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  401d23:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  401d27:	48 89 d1             	mov    rcx,rdx
  401d2a:	ba 01 00 00 00       	mov    edx,0x1
  401d2f:	48 89 c7             	mov    rdi,rax
  401d32:	e8 89 ed ff ff       	call   400ac0 <fread@plt>
  401d37:	48 85 c0             	test   rax,rax
  401d3a:	75 07                	jne    401d43 <bmp_read+0x1a8>
  401d3c:	b8 00 00 00 00       	mov    eax,0x0
  401d41:	eb 41                	jmp    401d84 <bmp_read+0x1e9>
  401d43:	bf 18 00 00 00       	mov    edi,0x18
  401d48:	e8 23 ee ff ff       	call   400b70 <malloc@plt>
  401d4d:	48 89 45 d0          	mov    QWORD PTR [rbp-0x30],rax
  401d51:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  401d55:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
  401d59:	48 89 10             	mov    QWORD PTR [rax],rdx
  401d5c:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  401d60:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  401d64:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
  401d68:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  401d6c:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
  401d70:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  401d74:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401d78:	48 89 c7             	mov    rdi,rax
  401d7b:	e8 70 ed ff ff       	call   400af0 <fclose@plt>
  401d80:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  401d84:	c9                   	leave  
  401d85:	c3                   	ret    

0000000000401d86 <bmp_save>:
  401d86:	55                   	push   rbp
  401d87:	48 89 e5             	mov    rbp,rsp
  401d8a:	48 83 ec 30          	sub    rsp,0x30
  401d8e:	48 89 7d d8          	mov    QWORD PTR [rbp-0x28],rdi
  401d92:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
  401d96:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
  401d9d:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  401da1:	be ba 3a 40 00       	mov    esi,0x403aba
  401da6:	48 89 c7             	mov    rdi,rax
  401da9:	e8 e2 ed ff ff       	call   400b90 <fopen@plt>
  401dae:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  401db2:	48 83 7d f0 00       	cmp    QWORD PTR [rbp-0x10],0x0
  401db7:	75 0a                	jne    401dc3 <bmp_save+0x3d>
  401db9:	b8 00 00 00 00       	mov    eax,0x0
  401dbe:	e9 d6 00 00 00       	jmp    401e99 <bmp_save+0x113>
  401dc3:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  401dc7:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401dca:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  401dce:	48 89 d1             	mov    rcx,rdx
  401dd1:	ba 01 00 00 00       	mov    edx,0x1
  401dd6:	be 0e 00 00 00       	mov    esi,0xe
  401ddb:	48 89 c7             	mov    rdi,rax
  401dde:	e8 ed ed ff ff       	call   400bd0 <fwrite@plt>
  401de3:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  401de6:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  401de9:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
  401dec:	83 7d ec 00          	cmp    DWORD PTR [rbp-0x14],0x0
  401df0:	75 0a                	jne    401dfc <bmp_save+0x76>
  401df2:	b8 00 00 00 00       	mov    eax,0x0
  401df7:	e9 9d 00 00 00       	jmp    401e99 <bmp_save+0x113>
  401dfc:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  401e00:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401e03:	8b 40 0a             	mov    eax,DWORD PTR [rax+0xa]
  401e06:	89 c0                	mov    eax,eax
  401e08:	48 8d 70 f2          	lea    rsi,[rax-0xe]
  401e0c:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  401e10:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  401e14:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  401e18:	48 89 d1             	mov    rcx,rdx
  401e1b:	ba 01 00 00 00       	mov    edx,0x1
  401e20:	48 89 c7             	mov    rdi,rax
  401e23:	e8 a8 ed ff ff       	call   400bd0 <fwrite@plt>
  401e28:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  401e2b:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  401e2e:	01 45 fc             	add    DWORD PTR [rbp-0x4],eax
  401e31:	83 7d ec 00          	cmp    DWORD PTR [rbp-0x14],0x0
  401e35:	75 07                	jne    401e3e <bmp_save+0xb8>
  401e37:	b8 00 00 00 00       	mov    eax,0x0
  401e3c:	eb 5b                	jmp    401e99 <bmp_save+0x113>
  401e3e:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  401e42:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401e45:	8b 50 02             	mov    edx,DWORD PTR [rax+0x2]
  401e48:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  401e4c:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401e4f:	8b 40 0a             	mov    eax,DWORD PTR [rax+0xa]
  401e52:	29 c2                	sub    edx,eax
  401e54:	89 d0                	mov    eax,edx
  401e56:	89 c6                	mov    esi,eax
  401e58:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
  401e5c:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  401e60:	48 8b 55 f0          	mov    rdx,QWORD PTR [rbp-0x10]
  401e64:	48 89 d1             	mov    rcx,rdx
  401e67:	ba 01 00 00 00       	mov    edx,0x1
  401e6c:	48 89 c7             	mov    rdi,rax
  401e6f:	e8 5c ed ff ff       	call   400bd0 <fwrite@plt>
  401e74:	89 45 ec             	mov    DWORD PTR [rbp-0x14],eax
  401e77:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  401e7a:	01 45 fc             	add    DWORD PTR [rbp-0x4],eax
  401e7d:	83 7d ec 00          	cmp    DWORD PTR [rbp-0x14],0x0
  401e81:	75 07                	jne    401e8a <bmp_save+0x104>
  401e83:	b8 00 00 00 00       	mov    eax,0x0
  401e88:	eb 0f                	jmp    401e99 <bmp_save+0x113>
  401e8a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401e8e:	48 89 c7             	mov    rdi,rax
  401e91:	e8 5a ec ff ff       	call   400af0 <fclose@plt>
  401e96:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
  401e99:	c9                   	leave  
  401e9a:	c3                   	ret    

0000000000401e9b <bmp_delete>:
  401e9b:	55                   	push   rbp
  401e9c:	48 89 e5             	mov    rbp,rsp
  401e9f:	48 83 ec 10          	sub    rsp,0x10
  401ea3:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  401ea7:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401eab:	48 8b 00             	mov    rax,QWORD PTR [rax]
  401eae:	48 89 c7             	mov    rdi,rax
  401eb1:	e8 ca eb ff ff       	call   400a80 <free@plt>
  401eb6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401eba:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  401ebe:	48 89 c7             	mov    rdi,rax
  401ec1:	e8 ba eb ff ff       	call   400a80 <free@plt>
  401ec6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401eca:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  401ece:	48 89 c7             	mov    rdi,rax
  401ed1:	e8 aa eb ff ff       	call   400a80 <free@plt>
  401ed6:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401eda:	48 89 c7             	mov    rdi,rax
  401edd:	e8 9e eb ff ff       	call   400a80 <free@plt>
  401ee2:	c9                   	leave  
  401ee3:	c3                   	ret    

0000000000401ee4 <bmp_width>:
  401ee4:	55                   	push   rbp
  401ee5:	48 89 e5             	mov    rbp,rsp
  401ee8:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  401eec:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401ef0:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  401ef4:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
  401ef7:	5d                   	pop    rbp
  401ef8:	c3                   	ret    

0000000000401ef9 <bmp_height>:
  401ef9:	55                   	push   rbp
  401efa:	48 89 e5             	mov    rbp,rsp
  401efd:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  401f01:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401f05:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  401f09:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  401f0c:	5d                   	pop    rbp
  401f0d:	c3                   	ret    

0000000000401f0e <bmp_data>:
  401f0e:	55                   	push   rbp
  401f0f:	48 89 e5             	mov    rbp,rsp
  401f12:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  401f16:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401f1a:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  401f1e:	5d                   	pop    rbp
  401f1f:	c3                   	ret    

0000000000401f20 <bmp_bit_count>:
  401f20:	55                   	push   rbp
  401f21:	48 89 e5             	mov    rbp,rsp
  401f24:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  401f28:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401f2c:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  401f30:	0f b7 40 0e          	movzx  eax,WORD PTR [rax+0xe]
  401f34:	5d                   	pop    rbp
  401f35:	c3                   	ret    

0000000000401f36 <bmp_compression>:
  401f36:	55                   	push   rbp
  401f37:	48 89 e5             	mov    rbp,rsp
  401f3a:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  401f3e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401f42:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  401f46:	8b 40 10             	mov    eax,DWORD PTR [rax+0x10]
  401f49:	5d                   	pop    rbp
  401f4a:	c3                   	ret    

0000000000401f4b <bmp_set_bit_count>:
  401f4b:	55                   	push   rbp
  401f4c:	48 89 e5             	mov    rbp,rsp
  401f4f:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  401f53:	89 f0                	mov    eax,esi
  401f55:	66 89 45 f4          	mov    WORD PTR [rbp-0xc],ax
  401f59:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  401f5d:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  401f61:	0f b7 55 f4          	movzx  edx,WORD PTR [rbp-0xc]
  401f65:	66 89 50 0e          	mov    WORD PTR [rax+0xe],dx
  401f69:	5d                   	pop    rbp
  401f6a:	c3                   	ret    

0000000000401f6b <bmp_bytes_per_row>:
  401f6b:	55                   	push   rbp
  401f6c:	48 89 e5             	mov    rbp,rsp
  401f6f:	53                   	push   rbx
  401f70:	48 83 ec 08          	sub    rsp,0x8
  401f74:	48 89 7d f0          	mov    QWORD PTR [rbp-0x10],rdi
  401f78:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401f7c:	48 89 c7             	mov    rdi,rax
  401f7f:	e8 60 ff ff ff       	call   401ee4 <bmp_width>
  401f84:	89 c3                	mov    ebx,eax
  401f86:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  401f8a:	48 89 c7             	mov    rdi,rax
  401f8d:	e8 8e ff ff ff       	call   401f20 <bmp_bit_count>
  401f92:	0f b7 c0             	movzx  eax,ax
  401f95:	0f af c3             	imul   eax,ebx
  401f98:	83 c0 1f             	add    eax,0x1f
  401f9b:	c1 e8 05             	shr    eax,0x5
  401f9e:	c1 e0 02             	shl    eax,0x2
  401fa1:	48 83 c4 08          	add    rsp,0x8
  401fa5:	5b                   	pop    rbx
  401fa6:	5d                   	pop    rbp
  401fa7:	c3                   	ret    

0000000000401fa8 <bmp_convert_24_to_32_bpp>:
  401fa8:	55                   	push   rbp
  401fa9:	48 89 e5             	mov    rbp,rsp
  401fac:	41 54                	push   r12
  401fae:	53                   	push   rbx
  401faf:	48 83 ec 30          	sub    rsp,0x30
  401fb3:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
  401fb7:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  401fbb:	48 89 c7             	mov    rdi,rax
  401fbe:	e8 36 ff ff ff       	call   401ef9 <bmp_height>
  401fc3:	89 c3                	mov    ebx,eax
  401fc5:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  401fc9:	48 89 c7             	mov    rdi,rax
  401fcc:	e8 13 ff ff ff       	call   401ee4 <bmp_width>
  401fd1:	0f af c3             	imul   eax,ebx
  401fd4:	c1 e0 05             	shl    eax,0x5
  401fd7:	89 c0                	mov    eax,eax
  401fd9:	48 89 c7             	mov    rdi,rax
  401fdc:	e8 8f eb ff ff       	call   400b70 <malloc@plt>
  401fe1:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
  401fe5:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  401fe9:	48 8b 40 10          	mov    rax,QWORD PTR [rax+0x10]
  401fed:	48 89 45 d8          	mov    QWORD PTR [rbp-0x28],rax
  401ff1:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
  401ff8:	c7 45 ec 00 00 00 00 	mov    DWORD PTR [rbp-0x14],0x0
  401fff:	e9 97 00 00 00       	jmp    40209b <bmp_convert_24_to_32_bpp+0xf3>
  402004:	c7 45 d4 ff 00 00 00 	mov    DWORD PTR [rbp-0x2c],0xff
  40200b:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
  40200e:	c1 e0 08             	shl    eax,0x8
  402011:	89 c1                	mov    ecx,eax
  402013:	8b 55 ec             	mov    edx,DWORD PTR [rbp-0x14]
  402016:	89 d0                	mov    eax,edx
  402018:	01 c0                	add    eax,eax
  40201a:	01 d0                	add    eax,edx
  40201c:	83 c0 02             	add    eax,0x2
  40201f:	89 c2                	mov    edx,eax
  402021:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  402025:	48 01 d0             	add    rax,rdx
  402028:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  40202b:	0f b6 c0             	movzx  eax,al
  40202e:	01 c8                	add    eax,ecx
  402030:	89 45 d4             	mov    DWORD PTR [rbp-0x2c],eax
  402033:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
  402036:	c1 e0 08             	shl    eax,0x8
  402039:	89 c1                	mov    ecx,eax
  40203b:	8b 55 ec             	mov    edx,DWORD PTR [rbp-0x14]
  40203e:	89 d0                	mov    eax,edx
  402040:	01 c0                	add    eax,eax
  402042:	01 d0                	add    eax,edx
  402044:	83 c0 01             	add    eax,0x1
  402047:	89 c2                	mov    edx,eax
  402049:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  40204d:	48 01 d0             	add    rax,rdx
  402050:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  402053:	0f b6 c0             	movzx  eax,al
  402056:	01 c8                	add    eax,ecx
  402058:	89 45 d4             	mov    DWORD PTR [rbp-0x2c],eax
  40205b:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
  40205e:	c1 e0 08             	shl    eax,0x8
  402061:	89 c1                	mov    ecx,eax
  402063:	8b 55 ec             	mov    edx,DWORD PTR [rbp-0x14]
  402066:	89 d0                	mov    eax,edx
  402068:	01 c0                	add    eax,eax
  40206a:	01 d0                	add    eax,edx
  40206c:	89 c2                	mov    edx,eax
  40206e:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  402072:	48 01 d0             	add    rax,rdx
  402075:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  402078:	0f b6 c0             	movzx  eax,al
  40207b:	01 c8                	add    eax,ecx
  40207d:	89 45 d4             	mov    DWORD PTR [rbp-0x2c],eax
  402080:	8b 45 ec             	mov    eax,DWORD PTR [rbp-0x14]
  402083:	48 8d 14 85 00 00 00 	lea    rdx,[rax*4+0x0]
  40208a:	00 
  40208b:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
  40208f:	48 01 c2             	add    rdx,rax
  402092:	8b 45 d4             	mov    eax,DWORD PTR [rbp-0x2c]
  402095:	89 02                	mov    DWORD PTR [rdx],eax
  402097:	83 45 ec 01          	add    DWORD PTR [rbp-0x14],0x1
  40209b:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  40209f:	48 89 c7             	mov    rdi,rax
  4020a2:	e8 52 fe ff ff       	call   401ef9 <bmp_height>
  4020a7:	89 c3                	mov    ebx,eax
  4020a9:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  4020ad:	48 89 c7             	mov    rdi,rax
  4020b0:	e8 2f fe ff ff       	call   401ee4 <bmp_width>
  4020b5:	0f af c3             	imul   eax,ebx
  4020b8:	3b 45 ec             	cmp    eax,DWORD PTR [rbp-0x14]
  4020bb:	0f 87 43 ff ff ff    	ja     402004 <bmp_convert_24_to_32_bpp+0x5c>
  4020c1:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
  4020c5:	48 89 c7             	mov    rdi,rax
  4020c8:	e8 b3 e9 ff ff       	call   400a80 <free@plt>
  4020cd:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  4020d1:	be 20 00 00 00       	mov    esi,0x20
  4020d6:	48 89 c7             	mov    rdi,rax
  4020d9:	e8 6d fe ff ff       	call   401f4b <bmp_set_bit_count>
  4020de:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  4020e2:	48 8b 55 e0          	mov    rdx,QWORD PTR [rbp-0x20]
  4020e6:	48 89 50 10          	mov    QWORD PTR [rax+0x10],rdx
  4020ea:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  4020ee:	48 8b 58 08          	mov    rbx,QWORD PTR [rax+0x8]
  4020f2:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  4020f6:	48 89 c7             	mov    rdi,rax
  4020f9:	e8 fb fd ff ff       	call   401ef9 <bmp_height>
  4020fe:	41 89 c4             	mov    r12d,eax
  402101:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  402105:	48 89 c7             	mov    rdi,rax
  402108:	e8 d7 fd ff ff       	call   401ee4 <bmp_width>
  40210d:	41 0f af c4          	imul   eax,r12d
  402111:	c1 e0 02             	shl    eax,0x2
  402114:	89 43 14             	mov    DWORD PTR [rbx+0x14],eax
  402117:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  40211b:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  40211f:	8b 50 14             	mov    edx,DWORD PTR [rax+0x14]
  402122:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  402126:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
  40212a:	8b 00                	mov    eax,DWORD PTR [rax]
  40212c:	01 d0                	add    eax,edx
  40212e:	83 c0 0e             	add    eax,0xe
  402131:	89 45 d0             	mov    DWORD PTR [rbp-0x30],eax
  402134:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  402138:	48 8b 00             	mov    rax,QWORD PTR [rax]
  40213b:	8b 55 d0             	mov    edx,DWORD PTR [rbp-0x30]
  40213e:	89 50 02             	mov    DWORD PTR [rax+0x2],edx
  402141:	48 83 c4 30          	add    rsp,0x30
  402145:	5b                   	pop    rbx
  402146:	41 5c                	pop    r12
  402148:	5d                   	pop    rbp
  402149:	c3                   	ret    

000000000040214a <setear_buffer>:
  40214a:	55                   	push   rbp
  40214b:	48 89 e5             	mov    rbp,rsp
  40214e:	48 83 ec 10          	sub    rsp,0x10
  402152:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402156:	48 89 75 f0          	mov    QWORD PTR [rbp-0x10],rsi
  40215a:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40215e:	48 89 c7             	mov    rdi,rax
  402161:	e8 a8 fd ff ff       	call   401f0e <bmp_data>
  402166:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  40216a:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
  40216e:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402172:	48 89 c7             	mov    rdi,rax
  402175:	e8 6a fd ff ff       	call   401ee4 <bmp_width>
  40217a:	89 c2                	mov    edx,eax
  40217c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402180:	89 10                	mov    DWORD PTR [rax],edx
  402182:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402186:	48 89 c7             	mov    rdi,rax
  402189:	e8 6b fd ff ff       	call   401ef9 <bmp_height>
  40218e:	89 c2                	mov    edx,eax
  402190:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402194:	89 50 04             	mov    DWORD PTR [rax+0x4],edx
  402197:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  40219b:	48 89 c7             	mov    rdi,rax
  40219e:	e8 c8 fd ff ff       	call   401f6b <bmp_bytes_per_row>
  4021a3:	89 c2                	mov    edx,eax
  4021a5:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4021a9:	89 50 08             	mov    DWORD PTR [rax+0x8],edx
  4021ac:	c9                   	leave  
  4021ad:	c3                   	ret    

00000000004021ae <imagenes_abrir>:
  4021ae:	55                   	push   rbp
  4021af:	48 89 e5             	mov    rbp,rsp
  4021b2:	48 83 ec 10          	sub    rsp,0x10
  4021b6:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4021ba:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  4021be:	48 8b 40 78          	mov    rax,QWORD PTR [rax+0x78]
  4021c2:	48 89 c7             	mov    rdi,rax
  4021c5:	e8 d1 f9 ff ff       	call   401b9b <bmp_read>
  4021ca:	48 89 05 df 2f 20 00 	mov    QWORD PTR [rip+0x202fdf],rax        # 6051b0 <src_img>
  4021d1:	48 8b 05 d8 2f 20 00 	mov    rax,QWORD PTR [rip+0x202fd8]        # 6051b0 <src_img>
  4021d8:	48 85 c0             	test   rax,rax
  4021db:	75 28                	jne    402205 <imagenes_abrir+0x57>
  4021dd:	48 8b 05 a4 2f 20 00 	mov    rax,QWORD PTR [rip+0x202fa4]        # 605188 <stderr@@GLIBC_2.2.5>
  4021e4:	48 89 c1             	mov    rcx,rax
  4021e7:	ba 20 00 00 00       	mov    edx,0x20
  4021ec:	be 01 00 00 00       	mov    esi,0x1
  4021f1:	bf c0 3a 40 00       	mov    edi,0x403ac0
  4021f6:	e8 d5 e9 ff ff       	call   400bd0 <fwrite@plt>
  4021fb:	bf 01 00 00 00       	mov    edi,0x1
  402200:	e8 bb e9 ff ff       	call   400bc0 <exit@plt>
  402205:	48 8b 05 a4 2f 20 00 	mov    rax,QWORD PTR [rip+0x202fa4]        # 6051b0 <src_img>
  40220c:	48 89 c7             	mov    rdi,rax
  40220f:	e8 22 fd ff ff       	call   401f36 <bmp_compression>
  402214:	85 c0                	test   eax,eax
  402216:	74 28                	je     402240 <imagenes_abrir+0x92>
  402218:	48 8b 05 69 2f 20 00 	mov    rax,QWORD PTR [rip+0x202f69]        # 605188 <stderr@@GLIBC_2.2.5>
  40221f:	48 89 c1             	mov    rcx,rax
  402222:	ba 28 00 00 00       	mov    edx,0x28
  402227:	be 01 00 00 00       	mov    esi,0x1
  40222c:	bf e8 3a 40 00       	mov    edi,0x403ae8
  402231:	e8 9a e9 ff ff       	call   400bd0 <fwrite@plt>
  402236:	bf 01 00 00 00       	mov    edi,0x1
  40223b:	e8 80 e9 ff ff       	call   400bc0 <exit@plt>
  402240:	48 8b 05 69 2f 20 00 	mov    rax,QWORD PTR [rip+0x202f69]        # 6051b0 <src_img>
  402247:	48 89 c7             	mov    rdi,rax
  40224a:	e8 d1 fc ff ff       	call   401f20 <bmp_bit_count>
  40224f:	66 83 f8 18          	cmp    ax,0x18
  402253:	75 0f                	jne    402264 <imagenes_abrir+0xb6>
  402255:	48 8b 05 54 2f 20 00 	mov    rax,QWORD PTR [rip+0x202f54]        # 6051b0 <src_img>
  40225c:	48 89 c7             	mov    rdi,rax
  40225f:	e8 44 fd ff ff       	call   401fa8 <bmp_convert_24_to_32_bpp>
  402264:	48 8b 05 45 2f 20 00 	mov    rax,QWORD PTR [rip+0x202f45]        # 6051b0 <src_img>
  40226b:	be 01 00 00 00       	mov    esi,0x1
  402270:	48 89 c7             	mov    rdi,rax
  402273:	e8 4f f7 ff ff       	call   4019c7 <bmp_copy>
  402278:	48 89 05 29 2f 20 00 	mov    QWORD PTR [rip+0x202f29],rax        # 6051a8 <dst_img>
  40227f:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402283:	48 8b 80 80 00 00 00 	mov    rax,QWORD PTR [rax+0x80]
  40228a:	48 85 c0             	test   rax,rax
  40228d:	0f 84 c9 00 00 00    	je     40235c <imagenes_abrir+0x1ae>
  402293:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402297:	48 8b 80 80 00 00 00 	mov    rax,QWORD PTR [rax+0x80]
  40229e:	48 89 c7             	mov    rdi,rax
  4022a1:	e8 f5 f8 ff ff       	call   401b9b <bmp_read>
  4022a6:	48 89 05 f3 2e 20 00 	mov    QWORD PTR [rip+0x202ef3],rax        # 6051a0 <src_img2>
  4022ad:	48 8b 05 ec 2e 20 00 	mov    rax,QWORD PTR [rip+0x202eec]        # 6051a0 <src_img2>
  4022b4:	48 85 c0             	test   rax,rax
  4022b7:	75 28                	jne    4022e1 <imagenes_abrir+0x133>
  4022b9:	48 8b 05 c8 2e 20 00 	mov    rax,QWORD PTR [rip+0x202ec8]        # 605188 <stderr@@GLIBC_2.2.5>
  4022c0:	48 89 c1             	mov    rcx,rax
  4022c3:	ba 22 00 00 00       	mov    edx,0x22
  4022c8:	be 01 00 00 00       	mov    esi,0x1
  4022cd:	bf 18 3b 40 00       	mov    edi,0x403b18
  4022d2:	e8 f9 e8 ff ff       	call   400bd0 <fwrite@plt>
  4022d7:	bf 01 00 00 00       	mov    edi,0x1
  4022dc:	e8 df e8 ff ff       	call   400bc0 <exit@plt>
  4022e1:	48 8b 05 b8 2e 20 00 	mov    rax,QWORD PTR [rip+0x202eb8]        # 6051a0 <src_img2>
  4022e8:	48 89 c7             	mov    rdi,rax
  4022eb:	e8 46 fc ff ff       	call   401f36 <bmp_compression>
  4022f0:	85 c0                	test   eax,eax
  4022f2:	74 28                	je     40231c <imagenes_abrir+0x16e>
  4022f4:	48 8b 05 8d 2e 20 00 	mov    rax,QWORD PTR [rip+0x202e8d]        # 605188 <stderr@@GLIBC_2.2.5>
  4022fb:	48 89 c1             	mov    rcx,rax
  4022fe:	ba 2a 00 00 00       	mov    edx,0x2a
  402303:	be 01 00 00 00       	mov    esi,0x1
  402308:	bf 40 3b 40 00       	mov    edi,0x403b40
  40230d:	e8 be e8 ff ff       	call   400bd0 <fwrite@plt>
  402312:	bf 01 00 00 00       	mov    edi,0x1
  402317:	e8 a4 e8 ff ff       	call   400bc0 <exit@plt>
  40231c:	48 8b 05 7d 2e 20 00 	mov    rax,QWORD PTR [rip+0x202e7d]        # 6051a0 <src_img2>
  402323:	48 89 c7             	mov    rdi,rax
  402326:	e8 f5 fb ff ff       	call   401f20 <bmp_bit_count>
  40232b:	66 83 f8 18          	cmp    ax,0x18
  40232f:	75 0f                	jne    402340 <imagenes_abrir+0x192>
  402331:	48 8b 05 68 2e 20 00 	mov    rax,QWORD PTR [rip+0x202e68]        # 6051a0 <src_img2>
  402338:	48 89 c7             	mov    rdi,rax
  40233b:	e8 68 fc ff ff       	call   401fa8 <bmp_convert_24_to_32_bpp>
  402340:	48 8b 05 59 2e 20 00 	mov    rax,QWORD PTR [rip+0x202e59]        # 6051a0 <src_img2>
  402347:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  40234b:	48 83 c2 30          	add    rdx,0x30
  40234f:	48 89 c6             	mov    rsi,rax
  402352:	48 89 d7             	mov    rdi,rdx
  402355:	e8 f0 fd ff ff       	call   40214a <setear_buffer>
  40235a:	eb 0b                	jmp    402367 <imagenes_abrir+0x1b9>
  40235c:	48 c7 05 39 2e 20 00 	mov    QWORD PTR [rip+0x202e39],0x0        # 6051a0 <src_img2>
  402363:	00 00 00 00 
  402367:	48 8b 05 42 2e 20 00 	mov    rax,QWORD PTR [rip+0x202e42]        # 6051b0 <src_img>
  40236e:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  402372:	48 83 c2 10          	add    rdx,0x10
  402376:	48 89 c6             	mov    rsi,rax
  402379:	48 89 d7             	mov    rdi,rdx
  40237c:	e8 c9 fd ff ff       	call   40214a <setear_buffer>
  402381:	48 8b 05 20 2e 20 00 	mov    rax,QWORD PTR [rip+0x202e20]        # 6051a8 <dst_img>
  402388:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  40238c:	48 83 c2 50          	add    rdx,0x50
  402390:	48 89 c6             	mov    rsi,rax
  402393:	48 89 d7             	mov    rdi,rdx
  402396:	e8 af fd ff ff       	call   40214a <setear_buffer>
  40239b:	c9                   	leave  
  40239c:	c3                   	ret    

000000000040239d <imagenes_guardar>:
  40239d:	55                   	push   rbp
  40239e:	48 89 e5             	mov    rbp,rsp
  4023a1:	48 83 ec 10          	sub    rsp,0x10
  4023a5:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  4023a9:	48 8b 05 f8 2d 20 00 	mov    rax,QWORD PTR [rip+0x202df8]        # 6051a8 <dst_img>
  4023b0:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
  4023b4:	48 81 c2 88 00 00 00 	add    rdx,0x88
  4023bb:	48 89 c6             	mov    rsi,rax
  4023be:	48 89 d7             	mov    rdi,rdx
  4023c1:	e8 c0 f9 ff ff       	call   401d86 <bmp_save>
  4023c6:	c9                   	leave  
  4023c7:	c3                   	ret    

00000000004023c8 <imagenes_liberar>:
  4023c8:	55                   	push   rbp
  4023c9:	48 89 e5             	mov    rbp,rsp
  4023cc:	48 8b 05 dd 2d 20 00 	mov    rax,QWORD PTR [rip+0x202ddd]        # 6051b0 <src_img>
  4023d3:	48 89 c7             	mov    rdi,rax
  4023d6:	e8 c0 fa ff ff       	call   401e9b <bmp_delete>
  4023db:	48 8b 05 be 2d 20 00 	mov    rax,QWORD PTR [rip+0x202dbe]        # 6051a0 <src_img2>
  4023e2:	48 85 c0             	test   rax,rax
  4023e5:	74 0f                	je     4023f6 <imagenes_liberar+0x2e>
  4023e7:	48 8b 05 b2 2d 20 00 	mov    rax,QWORD PTR [rip+0x202db2]        # 6051a0 <src_img2>
  4023ee:	48 89 c7             	mov    rdi,rax
  4023f1:	e8 a5 fa ff ff       	call   401e9b <bmp_delete>
  4023f6:	48 8b 05 ab 2d 20 00 	mov    rax,QWORD PTR [rip+0x202dab]        # 6051a8 <dst_img>
  4023fd:	48 89 c7             	mov    rdi,rax
  402400:	e8 96 fa ff ff       	call   401e9b <bmp_delete>
  402405:	5d                   	pop    rbp
  402406:	c3                   	ret    

0000000000402407 <ayuda_diff>:
  402407:	55                   	push   rbp
  402408:	48 89 e5             	mov    rbp,rsp
  40240b:	bf 70 3b 40 00       	mov    edi,0x403b70
  402410:	e8 9b e6 ff ff       	call   400ab0 <puts@plt>
  402415:	bf 80 3b 40 00       	mov    edi,0x403b80
  40241a:	e8 91 e6 ff ff       	call   400ab0 <puts@plt>
  40241f:	bf c0 3b 40 00       	mov    edi,0x403bc0
  402424:	e8 87 e6 ff ff       	call   400ab0 <puts@plt>
  402429:	5d                   	pop    rbp
  40242a:	c3                   	ret    

000000000040242b <leer_params_diff>:
  40242b:	55                   	push   rbp
  40242c:	48 89 e5             	mov    rbp,rsp
  40242f:	48 83 ec 20          	sub    rsp,0x20
  402433:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  402437:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  40243a:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  40243e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402442:	48 8b 80 80 00 00 00 	mov    rax,QWORD PTR [rax+0x80]
  402449:	48 85 c0             	test   rax,rax
  40244c:	75 1e                	jne    40246c <leer_params_diff+0x41>
  40244e:	bf 18 3c 40 00       	mov    edi,0x403c18
  402453:	e8 58 e6 ff ff       	call   400ab0 <puts@plt>
  402458:	b8 00 00 00 00       	mov    eax,0x0
  40245d:	e8 a5 ff ff ff       	call   402407 <ayuda_diff>
  402462:	bf 01 00 00 00       	mov    edi,0x1
  402467:	e8 54 e7 ff ff       	call   400bc0 <exit@plt>
  40246c:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402470:	48 8b 80 80 00 00 00 	mov    rax,QWORD PTR [rax+0x80]
  402477:	48 89 c6             	mov    rsi,rax
  40247a:	bf 4c 3c 40 00       	mov    edi,0x403c4c
  40247f:	b8 00 00 00 00       	mov    eax,0x0
  402484:	e8 87 e6 ff ff       	call   400b10 <printf@plt>
  402489:	c9                   	leave  
  40248a:	c3                   	ret    

000000000040248b <aplicar_diff>:
  40248b:	55                   	push   rbp
  40248c:	48 89 e5             	mov    rbp,rsp
  40248f:	48 83 ec 70          	sub    rsp,0x70
  402493:	48 89 7d a8          	mov    QWORD PTR [rbp-0x58],rdi
  402497:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  40249b:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  40249e:	85 c0                	test   eax,eax
  4024a0:	75 07                	jne    4024a9 <aplicar_diff+0x1e>
  4024a2:	b8 02 29 40 00       	mov    eax,0x402902
  4024a7:	eb 05                	jmp    4024ae <aplicar_diff+0x23>
  4024a9:	b8 80 26 40 00       	mov    eax,0x402680
  4024ae:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4024b2:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  4024b6:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
  4024ba:	48 89 55 d0          	mov    QWORD PTR [rbp-0x30],rdx
  4024be:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
  4024c2:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  4024c6:	48 8b 50 20          	mov    rdx,QWORD PTR [rax+0x20]
  4024ca:	48 89 55 e0          	mov    QWORD PTR [rbp-0x20],rdx
  4024ce:	48 8b 40 28          	mov    rax,QWORD PTR [rax+0x28]
  4024d2:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  4024d6:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  4024da:	48 8b 50 30          	mov    rdx,QWORD PTR [rax+0x30]
  4024de:	48 89 55 b0          	mov    QWORD PTR [rbp-0x50],rdx
  4024e2:	48 8b 50 38          	mov    rdx,QWORD PTR [rax+0x38]
  4024e6:	48 89 55 b8          	mov    QWORD PTR [rbp-0x48],rdx
  4024ea:	48 8b 50 40          	mov    rdx,QWORD PTR [rax+0x40]
  4024ee:	48 89 55 c0          	mov    QWORD PTR [rbp-0x40],rdx
  4024f2:	48 8b 40 48          	mov    rax,QWORD PTR [rax+0x48]
  4024f6:	48 89 45 c8          	mov    QWORD PTR [rbp-0x38],rax
  4024fa:	8b 55 d0             	mov    edx,DWORD PTR [rbp-0x30]
  4024fd:	8b 45 b0             	mov    eax,DWORD PTR [rbp-0x50]
  402500:	39 c2                	cmp    edx,eax
  402502:	75 0a                	jne    40250e <aplicar_diff+0x83>
  402504:	8b 55 d4             	mov    edx,DWORD PTR [rbp-0x2c]
  402507:	8b 45 b4             	mov    eax,DWORD PTR [rbp-0x4c]
  40250a:	39 c2                	cmp    edx,eax
  40250c:	74 0a                	je     402518 <aplicar_diff+0x8d>
  40250e:	bf 68 3c 40 00       	mov    edi,0x403c68
  402513:	e8 88 e6 ff ff       	call   400ba0 <perror@plt>
  402518:	48 8b 45 a8          	mov    rax,QWORD PTR [rbp-0x58]
  40251c:	44 8b 40 58          	mov    r8d,DWORD PTR [rax+0x58]
  402520:	8b 45 b8             	mov    eax,DWORD PTR [rbp-0x48]
  402523:	44 8b 4d d8          	mov    r9d,DWORD PTR [rbp-0x28]
  402527:	44 8b 55 d4          	mov    r10d,DWORD PTR [rbp-0x2c]
  40252b:	8b 4d d0             	mov    ecx,DWORD PTR [rbp-0x30]
  40252e:	48 8b 55 a8          	mov    rdx,QWORD PTR [rbp-0x58]
  402532:	48 8b 52 60          	mov    rdx,QWORD PTR [rdx+0x60]
  402536:	48 8b 75 c0          	mov    rsi,QWORD PTR [rbp-0x40]
  40253a:	48 8b 7d e0          	mov    rdi,QWORD PTR [rbp-0x20]
  40253e:	44 89 44 24 08       	mov    DWORD PTR [rsp+0x8],r8d
  402543:	89 04 24             	mov    DWORD PTR [rsp],eax
  402546:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  40254a:	45 89 d0             	mov    r8d,r10d
  40254d:	ff d0                	call   rax
  40254f:	c9                   	leave  
  402550:	c3                   	ret    

0000000000402551 <leer_params_blur>:
  402551:	55                   	push   rbp
  402552:	48 89 e5             	mov    rbp,rsp
  402555:	48 83 ec 20          	sub    rsp,0x20
  402559:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
  40255d:	89 75 f4             	mov    DWORD PTR [rbp-0xc],esi
  402560:	48 89 55 e8          	mov    QWORD PTR [rbp-0x18],rdx
  402564:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
  402568:	48 c7 40 70 b8 51 60 	mov    QWORD PTR [rax+0x70],0x6051b8
  40256f:	00 
  402570:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  402573:	48 98                	cdqe   
  402575:	48 c1 e0 03          	shl    rax,0x3
  402579:	48 8d 50 f0          	lea    rdx,[rax-0x10]
  40257d:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  402581:	48 01 d0             	add    rax,rdx
  402584:	48 8b 00             	mov    rax,QWORD PTR [rax]
  402587:	48 89 c7             	mov    rdi,rax
  40258a:	e8 51 e5 ff ff       	call   400ae0 <atof@plt>
  40258f:	66 0f 14 c0          	unpcklpd xmm0,xmm0
  402593:	66 0f 5a c0          	cvtpd2ps xmm0,xmm0
  402597:	f3 0f 11 05 19 2c 20 	movss  DWORD PTR [rip+0x202c19],xmm0        # 6051b8 <extra>
  40259e:	00 
  40259f:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
  4025a2:	48 98                	cdqe   
  4025a4:	48 c1 e0 03          	shl    rax,0x3
  4025a8:	48 8d 50 f8          	lea    rdx,[rax-0x8]
  4025ac:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
  4025b0:	48 01 d0             	add    rax,rdx
  4025b3:	48 8b 00             	mov    rax,QWORD PTR [rax]
  4025b6:	48 89 c7             	mov    rdi,rax
  4025b9:	e8 f2 e5 ff ff       	call   400bb0 <atoi@plt>
  4025be:	89 05 f8 2b 20 00    	mov    DWORD PTR [rip+0x202bf8],eax        # 6051bc <extra+0x4>
  4025c4:	c9                   	leave  
  4025c5:	c3                   	ret    

00000000004025c6 <aplicar_blur>:
  4025c6:	55                   	push   rbp
  4025c7:	48 89 e5             	mov    rbp,rsp
  4025ca:	48 83 ec 40          	sub    rsp,0x40
  4025ce:	48 89 7d c8          	mov    QWORD PTR [rbp-0x38],rdi
  4025d2:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  4025d6:	8b 40 08             	mov    eax,DWORD PTR [rax+0x8]
  4025d9:	85 c0                	test   eax,eax
  4025db:	75 07                	jne    4025e4 <aplicar_blur+0x1e>
  4025dd:	b8 f4 2c 40 00       	mov    eax,0x402cf4
  4025e2:	eb 05                	jmp    4025e9 <aplicar_blur+0x23>
  4025e4:	b8 10 27 40 00       	mov    eax,0x402710
  4025e9:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  4025ed:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  4025f1:	48 8b 50 10          	mov    rdx,QWORD PTR [rax+0x10]
  4025f5:	48 89 55 d0          	mov    QWORD PTR [rbp-0x30],rdx
  4025f9:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
  4025fd:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
  402601:	48 8b 50 20          	mov    rdx,QWORD PTR [rax+0x20]
  402605:	48 89 55 e0          	mov    QWORD PTR [rbp-0x20],rdx
  402609:	48 8b 40 28          	mov    rax,QWORD PTR [rax+0x28]
  40260d:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
  402611:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
  402615:	48 8b 40 70          	mov    rax,QWORD PTR [rax+0x70]
  402619:	48 89 45 f0          	mov    QWORD PTR [rbp-0x10],rax
  40261d:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402621:	44 8b 40 04          	mov    r8d,DWORD PTR [rax+0x4]
  402625:	48 8b 45 f0          	mov    rax,QWORD PTR [rbp-0x10]
  402629:	8b 00                	mov    eax,DWORD PTR [rax]
  40262b:	8b 4d d4             	mov    ecx,DWORD PTR [rbp-0x2c]
  40262e:	8b 55 d0             	mov    edx,DWORD PTR [rbp-0x30]
  402631:	48 8b 75 c8          	mov    rsi,QWORD PTR [rbp-0x38]
  402635:	48 8b 76 60          	mov    rsi,QWORD PTR [rsi+0x60]
  402639:	48 8b 7d e0          	mov    rdi,QWORD PTR [rbp-0x20]
  40263d:	4c 8b 4d f8          	mov    r9,QWORD PTR [rbp-0x8]
  402641:	89 45 c4             	mov    DWORD PTR [rbp-0x3c],eax
  402644:	f3 0f 10 45 c4       	movss  xmm0,DWORD PTR [rbp-0x3c]
  402649:	41 ff d1             	call   r9
  40264c:	c9                   	leave  
  40264d:	c3                   	ret    

000000000040264e <ayuda_blur>:
  40264e:	55                   	push   rbp
  40264f:	48 89 e5             	mov    rbp,rsp
  402652:	bf a0 3c 40 00       	mov    edi,0x403ca0
  402657:	e8 54 e4 ff ff       	call   400ab0 <puts@plt>
  40265c:	bf b0 3c 40 00       	mov    edi,0x403cb0
  402661:	e8 4a e4 ff ff       	call   400ab0 <puts@plt>
  402666:	bf 10 3d 40 00       	mov    edi,0x403d10
  40266b:	e8 40 e4 ff ff       	call   400ab0 <puts@plt>
  402670:	5d                   	pop    rbp
  402671:	c3                   	ret    
  402672:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  402679:	00 00 00 
  40267c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000402680 <diff_asm>:
  402680:	55                   	push   rbp
  402681:	48 89 e5             	mov    rbp,rsp
  402684:	41 57                	push   r15
  402686:	41 54                	push   r12
  402688:	41 55                	push   r13
  40268a:	49 89 d4             	mov    r12,rdx
  40268d:	44 89 c0             	mov    eax,r8d
  402690:	89 c9                	mov    ecx,ecx
  402692:	48 f7 e1             	mul    rcx
  402695:	4d 31 ff             	xor    r15,r15

0000000000402698 <diff_asm.ciclo>:
  402698:	49 39 c7             	cmp    r15,rax
  40269b:	74 5d                	je     4026fa <diff_asm.fin>
  40269d:	f3 42 0f 6f 1c bf    	movdqu xmm3,XMMWORD PTR [rdi+r15*4]
  4026a3:	f3 46 0f 6f 3c be    	movdqu xmm15,XMMWORD PTR [rsi+r15*4]
  4026a9:	f3 45 0f 6f f7       	movdqu xmm14,xmm15
  4026ae:	66 44 0f da fb       	pminub xmm15,xmm3
  4026b3:	66 41 0f de de       	pmaxub xmm3,xmm14
  4026b8:	66 41 0f f8 df       	psubb  xmm3,xmm15
  4026bd:	f3 0f 6f e3          	movdqu xmm4,xmm3
  4026c1:	f3 0f 6f eb          	movdqu xmm5,xmm3
  4026c5:	66 0f 73 fc 01       	pslldq xmm4,0x1
  4026ca:	66 0f 73 fd 02       	pslldq xmm5,0x2
  4026cf:	f3 0f 6f f5          	movdqu xmm6,xmm5
  4026d3:	66 0f de f4          	pmaxub xmm6,xmm4
  4026d7:	66 0f de f3          	pmaxub xmm6,xmm3
  4026db:	66 0f 38 00 34 25 70 	pshufb xmm6,XMMWORD PTR ds:0x403d70
  4026e2:	3d 40 00 
  4026e5:	66 0f ec 34 25 80 3d 	paddsb xmm6,XMMWORD PTR ds:0x403d80
  4026ec:	40 00 
  4026ee:	f3 43 0f 7f 34 bc    	movdqu XMMWORD PTR [r12+r15*4],xmm6
  4026f4:	41 83 c7 04          	add    r15d,0x4
  4026f8:	eb 9e                	jmp    402698 <diff_asm.ciclo>

00000000004026fa <diff_asm.fin>:
  4026fa:	41 5d                	pop    r13
  4026fc:	41 5c                	pop    r12
  4026fe:	41 5f                	pop    r15
  402700:	5d                   	pop    rbp
  402701:	c3                   	ret    
  402702:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
  402709:	00 00 00 
  40270c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000402710 <_blur_asm>:
  402710:	55                   	push   rbp
  402711:	41 54                	push   r12
  402713:	41 55                	push   r13
  402715:	41 56                	push   r14
  402717:	41 57                	push   r15
  402719:	53                   	push   rbx
  40271a:	48 83 ec 08          	sub    rsp,0x8
  40271e:	49 89 fc             	mov    r12,rdi
  402721:	49 89 f5             	mov    r13,rsi
  402724:	41 89 d6             	mov    r14d,edx
  402727:	41 89 cf             	mov    r15d,ecx
  40272a:	44 89 c3             	mov    ebx,r8d
  40272d:	44 89 c7             	mov    edi,r8d
  402730:	e8 50 04 00 00       	call   402b85 <matrizDeConvolucion>
  402735:	49 89 c2             	mov    r10,rax
  402738:	49 89 db             	mov    r11,rbx
  40273b:	49 d1 e3             	shl    r11,1
  40273e:	4d 39 de             	cmp    r14,r11
  402741:	0f 8c 1c 01 00 00    	jl     402863 <blur_asm.end>
  402747:	4d 39 df             	cmp    r15,r11
  40274a:	0f 8c 13 01 00 00    	jl     402863 <blur_asm.end>
  402750:	49 ff c3             	inc    r11
  402753:	4c 89 d8             	mov    rax,r11
  402756:	49 f7 e3             	mul    r11
  402759:	48 89 c5             	mov    rbp,rax
  40275c:	48 89 d8             	mov    rax,rbx
  40275f:	41 f7 e7             	mul    r15d
  402762:	48 01 d8             	add    rax,rbx
  402765:	48 89 c3             	mov    rbx,rax
  402768:	4d 89 f1             	mov    r9,r14
  40276b:	4d 89 f8             	mov    r8,r15
  40276e:	49 ff cb             	dec    r11
  402771:	4c 89 c8             	mov    rax,r9
  402774:	4c 29 d8             	sub    rax,r11
  402777:	49 f7 e0             	mul    r8
  40277a:	4c 29 d8             	sub    rax,r11
  40277d:	48 c1 e0 02          	shl    rax,0x2
  402781:	48 31 ff             	xor    rdi,rdi
  402784:	48 31 f6             	xor    rsi,rsi
  402787:	48 31 d2             	xor    rdx,rdx
  40278a:	48 31 c9             	xor    rcx,rcx
  40278d:	66 0f ef ff          	pxor   xmm7,xmm7
  402791:	4d 89 fe             	mov    r14,r15
  402794:	4d 29 df             	sub    r15,r11
  402797:	49 c1 e3 02          	shl    r11,0x2
  40279b:	49 c1 e0 02          	shl    r8,0x2
  40279f:	48 c1 e3 02          	shl    rbx,0x2
  4027a3:	49 c1 e7 02          	shl    r15,0x2
  4027a7:	49 c1 e6 02          	shl    r14,0x2

00000000004027ab <blur_asm.ciclo_matriz>:
  4027ab:	48 39 c7             	cmp    rdi,rax
  4027ae:	0f 8f af 00 00 00    	jg     402863 <blur_asm.end>

00000000004027b4 <blur_asm.ciclo_kernel>:
  4027b4:	48 39 e9             	cmp    rcx,rbp
  4027b7:	74 60                	je     402819 <blur_asm.insert>
  4027b9:	49 89 f1             	mov    r9,rsi
  4027bc:	49 01 f9             	add    r9,rdi
  4027bf:	66 43 0f 6e 04 0c    	movd   xmm0,DWORD PTR [r12+r9*1]
  4027c5:	66 45 0f ef c0       	pxor   xmm8,xmm8
  4027ca:	66 41 0f 60 c0       	punpcklbw xmm0,xmm8
  4027cf:	66 41 0f 61 c0       	punpcklwd xmm0,xmm8
  4027d4:	0f 5b c0             	cvtdq2ps xmm0,xmm0
  4027d7:	66 41 0f 6e 0c 8a    	movd   xmm1,DWORD PTR [r10+rcx*4]
  4027dd:	f3 0f 7e d9          	movq   xmm3,xmm1
  4027e1:	66 0f 73 fb 04       	pslldq xmm3,0x4
  4027e6:	66 0f fe d9          	paddd  xmm3,xmm1
  4027ea:	66 0f 73 fb 04       	pslldq xmm3,0x4
  4027ef:	66 0f fe d9          	paddd  xmm3,xmm1
  4027f3:	0f 59 c3             	mulps  xmm0,xmm3
  4027f6:	0f 58 d0             	addps  xmm2,xmm0
  4027f9:	4c 39 da             	cmp    rdx,r11
  4027fc:	74 0d                	je     40280b <blur_asm.sumar_fila_kernel>
  4027fe:	48 83 c2 04          	add    rdx,0x4
  402802:	48 ff c1             	inc    rcx
  402805:	48 83 c6 04          	add    rsi,0x4
  402809:	eb a9                	jmp    4027b4 <blur_asm.ciclo_kernel>

000000000040280b <blur_asm.sumar_fila_kernel>:
  40280b:	48 31 d2             	xor    rdx,rdx
  40280e:	4c 29 de             	sub    rsi,r11
  402811:	4c 01 c6             	add    rsi,r8
  402814:	48 ff c1             	inc    rcx
  402817:	eb 9b                	jmp    4027b4 <blur_asm.ciclo_kernel>

0000000000402819 <blur_asm.insert>:
  402819:	66 0f ef e4          	pxor   xmm4,xmm4
  40281d:	66 0f 5b d2          	cvtps2dq xmm2,xmm2
  402821:	66 0f 38 2b d4       	packusdw xmm2,xmm4
  402826:	66 0f 67 d4          	packuswb xmm2,xmm4
  40282a:	66 0f 6e fb          	movd   xmm7,ebx
  40282e:	48 01 fb             	add    rbx,rdi
  402831:	66 41 0f 7e 54 1d 00 	movd   DWORD PTR [r13+rbx*1+0x0],xmm2
  402838:	66 0f 7e fb          	movd   ebx,xmm7
  40283c:	66 0f ef ff          	pxor   xmm7,xmm7
  402840:	48 31 f6             	xor    rsi,rsi
  402843:	48 31 c9             	xor    rcx,rcx
  402846:	4c 39 ff             	cmp    rdi,r15
  402849:	74 09                	je     402854 <blur_asm.sumar_fila>
  40284b:	48 83 c7 04          	add    rdi,0x4
  40284f:	e9 57 ff ff ff       	jmp    4027ab <blur_asm.ciclo_matriz>

0000000000402854 <blur_asm.sumar_fila>:
  402854:	4c 01 df             	add    rdi,r11
  402857:	48 83 c7 04          	add    rdi,0x4
  40285b:	4d 01 c7             	add    r15,r8
  40285e:	e9 48 ff ff ff       	jmp    4027ab <blur_asm.ciclo_matriz>

0000000000402863 <blur_asm.end>:
  402863:	48 83 c4 08          	add    rsp,0x8
  402867:	5b                   	pop    rbx
  402868:	41 5f                	pop    r15
  40286a:	41 5e                	pop    r14
  40286c:	41 5d                	pop    r13
  40286e:	41 5c                	pop    r12
  402870:	48 89 e5             	mov    rbp,rsp
  402873:	4c 89 d7             	mov    rdi,r10
  402876:	e8 05 e2 ff ff       	call   400a80 <free@plt>
  40287b:	5d                   	pop    rbp
  40287c:	c3                   	ret    

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

00000000004030c0 <__libc_csu_init>:
  4030c0:	41 57                	push   r15
  4030c2:	41 89 ff             	mov    r15d,edi
  4030c5:	41 56                	push   r14
  4030c7:	49 89 f6             	mov    r14,rsi
  4030ca:	41 55                	push   r13
  4030cc:	49 89 d5             	mov    r13,rdx
  4030cf:	41 54                	push   r12
  4030d1:	4c 8d 25 18 1d 20 00 	lea    r12,[rip+0x201d18]        # 604df0 <__frame_dummy_init_array_entry>
  4030d8:	55                   	push   rbp
  4030d9:	48 8d 2d 18 1d 20 00 	lea    rbp,[rip+0x201d18]        # 604df8 <__init_array_end>
  4030e0:	53                   	push   rbx
  4030e1:	4c 29 e5             	sub    rbp,r12
  4030e4:	31 db                	xor    ebx,ebx
  4030e6:	48 c1 fd 03          	sar    rbp,0x3
  4030ea:	48 83 ec 08          	sub    rsp,0x8
  4030ee:	e8 5d d9 ff ff       	call   400a50 <_init>
  4030f3:	48 85 ed             	test   rbp,rbp
  4030f6:	74 1e                	je     403116 <__libc_csu_init+0x56>
  4030f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
  4030ff:	00 
  403100:	4c 89 ea             	mov    rdx,r13
  403103:	4c 89 f6             	mov    rsi,r14
  403106:	44 89 ff             	mov    edi,r15d
  403109:	41 ff 14 dc          	call   QWORD PTR [r12+rbx*8]
  40310d:	48 83 c3 01          	add    rbx,0x1
  403111:	48 39 eb             	cmp    rbx,rbp
  403114:	75 ea                	jne    403100 <__libc_csu_init+0x40>
  403116:	48 83 c4 08          	add    rsp,0x8
  40311a:	5b                   	pop    rbx
  40311b:	5d                   	pop    rbp
  40311c:	41 5c                	pop    r12
  40311e:	41 5d                	pop    r13
  403120:	41 5e                	pop    r14
  403122:	41 5f                	pop    r15
  403124:	c3                   	ret    
  403125:	66 66 2e 0f 1f 84 00 	data32 nop WORD PTR cs:[rax+rax*1+0x0]
  40312c:	00 00 00 00 

0000000000403130 <__libc_csu_fini>:
  403130:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000403134 <_fini>:
  403134:	48 83 ec 08          	sub    rsp,0x8
  403138:	48 83 c4 08          	add    rsp,0x8
  40313c:	c3                   	ret    
