0000000000402280 <infNorm>:
  402280: 40 0f b6 ff           movzx  edi,dil
  402284: 0f b6 c9              movzx  ecx,cl
  402287: 40 0f b6 f6           movzx  esi,sil
  40228b: 29 cf                 sub    edi,ecx
  40228d: 45 0f b6 c0           movzx  r8d,r8b
  402291: 0f b6 d2              movzx  edx,dl
  402294: 89 f8                 mov    eax,edi
  402296: 44 29 c6              sub    esi,r8d
  402299: 45 0f b6 c9           movzx  r9d,r9b
  40229d: c1 f8 1f              sar    eax,0x1f
  4022a0: 44 29 ca              sub    edx,r9d
  4022a3: 31 c7                 xor    edi,eax
  4022a5: 29 c7                 sub    edi,eax
  4022a7: 89 f0                 mov    eax,esi
  4022a9: c1 f8 1f              sar    eax,0x1f
  4022ac: 31 c6                 xor    esi,eax
  4022ae: 29 c6                 sub    esi,eax
  4022b0: 89 d0                 mov    eax,edx
  4022b2: c1 f8 1f              sar    eax,0x1f
  4022b5: 31 c2                 xor    edx,eax
  4022b7: 29 c2                 sub    edx,eax
  4022b9: 66 39 f7              cmp    di,si
  4022bc: 7e 12                 jle    4022d0 <infNorm+0x50>
  4022be: 66 39 d7              cmp    di,dx
  4022c1: 89 d0                 mov    eax,edx
  4022c3: 0f 4d c7              cmovge eax,edi
  4022c6: c3                    ret    
  4022c7: 66 0f 1f 84 00 00 00  nop    WORD PTR [rax+rax*1+0x0]
  4022ce: 00 00 
  4022d0: 66 39 d6              cmp    si,dx
  4022d3: 89 d0                 mov    eax,edx
  4022d5: 0f 4d c6              cmovge eax,esi
  4022d8: c3                    ret    
  4022d9: 0f 1f 80 00 00 00 00  nop    DWORD PTR [rax+0x0]

00000000004022e0 <diff_c>:
  4022e0: 45 85 c0              test   r8d,r8d
  4022e3: 0f 8e 05 01 00 00     jle    4023ee <diff_c+0x10e>
  4022e9: 41 57                 push   r15
  4022eb: 45 31 ff              xor    r15d,r15d
  4022ee: 41 56                 push   r14
  4022f0: 44 8d 34 8d 00 00 00  lea    r14d,[rcx*4+0x0]
  4022f7: 00 
  4022f8: 41 55                 push   r13
  4022fa: 41 54                 push   r12
  4022fc: 49 89 f4              mov    r12,rsi
  4022ff: 55                    push   rbp
  402300: 48 89 fd              mov    rbp,rdi
  402303: 53                    push   rbx
  402304: 48 63 44 24 38        movsxd rax,DWORD PTR [rsp+0x38]
  402309: 48 89 44 24 e8        mov    QWORD PTR [rsp-0x18],rax
  40230e: 49 63 c1              movsxd rax,r9d
  402311: 48 89 44 24 f8        mov    QWORD PTR [rsp-0x8],rax
  402316: 48 63 44 24 40        movsxd rax,DWORD PTR [rsp+0x40]
  40231b: 48 89 44 24 f0        mov    QWORD PTR [rsp-0x10],rax
  402320: 85 c9                 test   ecx,ecx
  402322: 0f 8e a0 00 00 00     jle    4023c8 <diff_c+0xe8>
  402328: 31 c0                 xor    eax,eax
  40232a: 66 0f 1f 44 00 00     nop    WORD PTR [rax+rax*1+0x0]
  402330: 48 63 d8              movsxd rbx,eax
  402333: 44 8d 58 01           lea    r11d,[rax+0x1]
  402337: 44 8d 50 02           lea    r10d,[rax+0x2]
  40233b: 41 0f b6 34 1c        movzx  esi,BYTE PTR [r12+rbx*1]
  402340: 44 0f b6 4c 1d 00     movzx  r9d,BYTE PTR [rbp+rbx*1+0x0]
  402346: 4d 63 db              movsxd r11,r11d
  402349: 4d 63 d2              movsxd r10,r10d
  40234c: 42 0f b6 7c 1d 00     movzx  edi,BYTE PTR [rbp+r11*1+0x0]
  402352: 47 0f b6 2c 14        movzx  r13d,BYTE PTR [r12+r10*1]
  402357: 41 29 f1              sub    r9d,esi
  40235a: 44 89 ce              mov    esi,r9d
  40235d: c1 fe 1f              sar    esi,0x1f
  402360: 41 31 f1              xor    r9d,esi
  402363: 41 29 f1              sub    r9d,esi
  402366: 43 0f b6 34 1c        movzx  esi,BYTE PTR [r12+r11*1]
  40236b: 29 f7                 sub    edi,esi
  40236d: 89 fe                 mov    esi,edi
  40236f: c1 fe 1f              sar    esi,0x1f
  402372: 31 f7                 xor    edi,esi
  402374: 29 f7                 sub    edi,esi
  402376: 42 0f b6 74 15 00     movzx  esi,BYTE PTR [rbp+r10*1+0x0]
  40237c: 44 29 ee              sub    esi,r13d
  40237f: 41 89 f5              mov    r13d,esi
  402382: 41 c1 fd 1f           sar    r13d,0x1f
  402386: 44 31 ee              xor    esi,r13d
  402389: 44 29 ee              sub    esi,r13d
  40238c: 41 89 fd              mov    r13d,edi
  40238f: 66 39 fe              cmp    si,di
  402392: 44 0f 4d ee           cmovge r13d,esi
  402396: 66 44 39 ce           cmp    si,r9w
  40239a: 41 0f 4c f1           cmovl  esi,r9d
  40239e: 66 41 39 f9           cmp    r9w,di
  4023a2: 41 0f 4e f5           cmovle esi,r13d
  4023a6: 40 88 34 1a           mov    BYTE PTR [rdx+rbx*1],sil
  4023aa: 42 88 34 1a           mov    BYTE PTR [rdx+r11*1],sil
  4023ae: 42 88 34 12           mov    BYTE PTR [rdx+r10*1],sil
  4023b2: 8d 70 03              lea    esi,[rax+0x3]
  4023b5: 83 c0 04              add    eax,0x4
  4023b8: 44 39 f0              cmp    eax,r14d
  4023bb: 48 63 f6              movsxd rsi,esi
  4023be: c6 04 32 ff           mov    BYTE PTR [rdx+rsi*1],0xff
  4023c2: 0f 85 68 ff ff ff     jne    402330 <diff_c+0x50>
  4023c8: 41 83 c7 01           add    r15d,0x1
  4023cc: 4c 03 64 24 e8        add    r12,QWORD PTR [rsp-0x18]
  4023d1: 48 03 6c 24 f8        add    rbp,QWORD PTR [rsp-0x8]
  4023d6: 48 03 54 24 f0        add    rdx,QWORD PTR [rsp-0x10]
  4023db: 45 39 c7              cmp    r15d,r8d
  4023de: 0f 85 3c ff ff ff     jne    402320 <diff_c+0x40>
  4023e4: 5b                    pop    rbx
  4023e5: 5d                    pop    rbp
  4023e6: 41 5c                 pop    r12
  4023e8: 41 5d                 pop    r13
  4023ea: 41 5e                 pop    r14
  4023ec: 41 5f                 pop    r15
  4023ee: f3 c3                 repz ret 

00000000004023f0 <matrizDeConvolucion>:
  4023f0: 41 57                 push   r15
  4023f2: 0f 14 c0              unpcklps xmm0,xmm0
  4023f5: 41 56                 push   r14
  4023f7: 0f 5a d0              cvtps2pd xmm2,xmm0
  4023fa: 41 55                 push   r13
  4023fc: 41 54                 push   r12
  4023fe: 41 89 fc              mov    r12d,edi
  402401: 55                    push   rbp
  402402: 8d 2c 3f              lea    ebp,[rdi+rdi*1]
  402405: 53                    push   rbx
  402406: 44 8d 6d 01           lea    r13d,[rbp+0x1]
  40240a: 48 83 ec 28           sub    rsp,0x28
  40240e: 49 63 dd              movsxd rbx,r13d
  402411: f2 0f 10 0d 5f 10 00  movsd  xmm1,QWORD PTR [rip+0x105f]        # 403478 <_IO_stdin_used+0xbd8>
  402418: 00 
  402419: 48 89 df              mov    rdi,rbx
  40241c: f3 0f 10 25 5c 10 00  movss  xmm4,DWORD PTR [rip+0x105c]        # 403480 <_IO_stdin_used+0xbe0>
  402423: 00 
  402424: f2 0f 59 ca           mulsd  xmm1,xmm2
  402428: f3 0f 59 e0           mulss  xmm4,xmm0
  40242c: 48 0f af fb           imul   rdi,rbx
  402430: f2 0f 59 ca           mulsd  xmm1,xmm2
  402434: f3 0f 59 c4           mulss  xmm0,xmm4
  402438: 48 c1 e7 02           shl    rdi,0x2
  40243c: 66 0f 14 c9           unpcklpd xmm1,xmm1
  402440: f3 0f 11 44 24 08     movss  DWORD PTR [rsp+0x8],xmm0
  402446: 66 0f 5a e9           cvtpd2ps xmm5,xmm1
  40244a: f3 0f 11 2c 24        movss  DWORD PTR [rsp],xmm5
  40244f: e8 7c e7 ff ff        call   400bd0 <malloc@plt>
  402454: 45 85 ed              test   r13d,r13d
  402457: 48 89 44 24 18        mov    QWORD PTR [rsp+0x18],rax
  40245c: 0f 8e 8a 00 00 00     jle    4024ec <matrizDeConvolucion+0xfc>
  402462: f3 0f 10 34 24        movss  xmm6,DWORD PTR [rsp]
  402467: 48 8d 0c 9d 00 00 00  lea    rcx,[rbx*4+0x0]
  40246e: 00 
  40246f: 48 89 c3              mov    rbx,rax
  402472: 41 8d 44 24 ff        lea    eax,[r12-0x1]
  402477: 45 89 e6              mov    r14d,r12d
  40247a: 0f 5a f6              cvtps2pd xmm6,xmm6
  40247d: 48 89 4c 24 10        mov    QWORD PTR [rsp+0x10],rcx
  402482: 89 44 24 0c           mov    DWORD PTR [rsp+0xc],eax
  402486: 29 6c 24 0c           sub    DWORD PTR [rsp+0xc],ebp
  40248a: f2 0f 11 34 24        movsd  QWORD PTR [rsp],xmm6
  40248f: 90                    nop
  402490: 44 89 f5              mov    ebp,r14d
  402493: 45 31 ff              xor    r15d,r15d
  402496: 41 0f af ee           imul   ebp,r14d
  40249a: 66 0f 1f 44 00 00     nop    WORD PTR [rax+rax*1+0x0]
  4024a0: 44 89 e2              mov    edx,r12d
  4024a3: 44 29 fa              sub    edx,r15d
  4024a6: 0f af d2              imul   edx,edx
  4024a9: 01 ea                 add    edx,ebp
  4024ab: f3 0f 2a c2           cvtsi2ss xmm0,edx
  4024af: f3 0f 5e 44 24 08     divss  xmm0,DWORD PTR [rsp+0x8]
  4024b5: 0f 14 c0              unpcklps xmm0,xmm0
  4024b8: 0f 5a c0              cvtps2pd xmm0,xmm0
  4024bb: e8 60 e6 ff ff        call   400b20 <exp@plt>
  4024c0: f2 0f 5e 04 24        divsd  xmm0,QWORD PTR [rsp]
  4024c5: 66 0f 14 c0           unpcklpd xmm0,xmm0
  4024c9: 66 0f 5a d8           cvtpd2ps xmm3,xmm0
  4024cd: f3 42 0f 11 1c bb     movss  DWORD PTR [rbx+r15*4],xmm3
  4024d3: 49 83 c7 01           add    r15,0x1
  4024d7: 45 39 fd              cmp    r13d,r15d
  4024da: 7f c4                 jg     4024a0 <matrizDeConvolucion+0xb0>
  4024dc: 41 83 ee 01           sub    r14d,0x1
  4024e0: 48 03 5c 24 10        add    rbx,QWORD PTR [rsp+0x10]
  4024e5: 44 3b 74 24 0c        cmp    r14d,DWORD PTR [rsp+0xc]
  4024ea: 75 a4                 jne    402490 <matrizDeConvolucion+0xa0>
  4024ec: 48 8b 44 24 18        mov    rax,QWORD PTR [rsp+0x18]
  4024f1: 48 83 c4 28           add    rsp,0x28
  4024f5: 5b                    pop    rbx
  4024f6: 5d                    pop    rbp
  4024f7: 41 5c                 pop    r12
  4024f9: 41 5d                 pop    r13
  4024fb: 41 5e                 pop    r14
  4024fd: 41 5f                 pop    r15
  4024ff: c3                    ret    

0000000000402500 <blur_c>:
  402500: 41 57                 push   r15
  402502: 0f 14 c0              unpcklps xmm0,xmm0
  402505: 89 d0                 mov    eax,edx
  402507: 45 89 c7              mov    r15d,r8d
  40250a: 41 56                 push   r14
  40250c: c1 e0 02              shl    eax,0x2
  40250f: 0f 5a d0              cvtps2pd xmm2,xmm0
  402512: 41 55                 push   r13
  402514: 41 54                 push   r12
  402516: 47 8d 24 00           lea    r12d,[r8+r8*1]
  40251a: 55                    push   rbp
  40251b: 41 8d 6c 24 01        lea    ebp,[r12+0x1]
  402520: 53                    push   rbx
  402521: 48 83 ec 68           sub    rsp,0x68
  402525: f2 0f 10 0d 4b 0f 00  movsd  xmm1,QWORD PTR [rip+0xf4b]        # 403478 <_IO_stdin_used+0xbd8>
  40252c: 00 
  40252d: 89 44 24 24           mov    DWORD PTR [rsp+0x24],eax
  402531: 48 63 c5              movsxd rax,ebp
  402534: 48 89 7c 24 38        mov    QWORD PTR [rsp+0x38],rdi
  402539: 48 89 c7              mov    rdi,rax
  40253c: 48 89 74 24 40        mov    QWORD PTR [rsp+0x40],rsi
  402541: f2 0f 59 ca           mulsd  xmm1,xmm2
  402545: 89 54 24 48           mov    DWORD PTR [rsp+0x48],edx
  402549: 89 4c 24 4c           mov    DWORD PTR [rsp+0x4c],ecx
  40254d: 48 0f af f8           imul   rdi,rax
  402551: 48 89 44 24 18        mov    QWORD PTR [rsp+0x18],rax
  402556: f2 0f 59 ca           mulsd  xmm1,xmm2
  40255a: 48 c1 e7 02           shl    rdi,0x2
  40255e: 66 0f 14 c9           unpcklpd xmm1,xmm1
  402562: 66 0f 5a f9           cvtpd2ps xmm7,xmm1
  402566: f3 0f 11 7c 24 10     movss  DWORD PTR [rsp+0x10],xmm7
  40256c: f3 0f 10 3d 0c 0f 00  movss  xmm7,DWORD PTR [rip+0xf0c]        # 403480 <_IO_stdin_used+0xbe0>
  402573: 00 
  402574: f3 0f 59 f8           mulss  xmm7,xmm0
  402578: f3 0f 59 c7           mulss  xmm0,xmm7
  40257c: f3 0f 11 44 24 0c     movss  DWORD PTR [rsp+0xc],xmm0
  402582: e8 49 e6 ff ff        call   400bd0 <malloc@plt>
  402587: 85 ed                 test   ebp,ebp
  402589: 48 89 44 24 28        mov    QWORD PTR [rsp+0x28],rax
  40258e: 0f 8e 88 00 00 00     jle    40261c <blur_c+0x11c>
  402594: 48 89 c3              mov    rbx,rax
  402597: 48 8b 44 24 18        mov    rax,QWORD PTR [rsp+0x18]
  40259c: f3 0f 10 7c 24 10     movss  xmm7,DWORD PTR [rsp+0x10]
  4025a2: 45 89 fd              mov    r13d,r15d
  4025a5: 0f 5a ff              cvtps2pd xmm7,xmm7
  4025a8: 48 c1 e0 02           shl    rax,0x2
  4025ac: 48 89 44 24 30        mov    QWORD PTR [rsp+0x30],rax
  4025b1: 41 8d 47 ff           lea    eax,[r15-0x1]
  4025b5: f2 0f 11 7c 24 10     movsd  QWORD PTR [rsp+0x10],xmm7
  4025bb: 89 44 24 20           mov    DWORD PTR [rsp+0x20],eax
  4025bf: 44 29 64 24 20        sub    DWORD PTR [rsp+0x20],r12d
  4025c4: 45 89 ee              mov    r14d,r13d
  4025c7: 45 31 e4              xor    r12d,r12d
  4025ca: 45 0f af f5           imul   r14d,r13d
  4025ce: 44 89 f8              mov    eax,r15d
  4025d1: 44 29 e0              sub    eax,r12d
  4025d4: 0f af c0              imul   eax,eax
  4025d7: 44 01 f0              add    eax,r14d
  4025da: f3 0f 2a c0           cvtsi2ss xmm0,eax
  4025de: f3 0f 5e 44 24 0c     divss  xmm0,DWORD PTR [rsp+0xc]
  4025e4: 0f 14 c0              unpcklps xmm0,xmm0
  4025e7: 0f 5a c0              cvtps2pd xmm0,xmm0
  4025ea: e8 31 e5 ff ff        call   400b20 <exp@plt>
  4025ef: f2 0f 5e 44 24 10     divsd  xmm0,QWORD PTR [rsp+0x10]
  4025f5: 66 0f 14 c0           unpcklpd xmm0,xmm0
  4025f9: 66 0f 5a f0           cvtpd2ps xmm6,xmm0
  4025fd: f3 42 0f 11 34 a3     movss  DWORD PTR [rbx+r12*4],xmm6
  402603: 49 83 c4 01           add    r12,0x1
  402607: 44 39 e5              cmp    ebp,r12d
  40260a: 7f c2                 jg     4025ce <blur_c+0xce>
  40260c: 41 83 ed 01           sub    r13d,0x1
  402610: 48 03 5c 24 30        add    rbx,QWORD PTR [rsp+0x30]
  402615: 44 3b 6c 24 20        cmp    r13d,DWORD PTR [rsp+0x20]
  40261a: 75 a8                 jne    4025c4 <blur_c+0xc4>
  40261c: 8b 44 24 48           mov    eax,DWORD PTR [rsp+0x48]
  402620: 44 29 f8              sub    eax,r15d
  402623: 41 39 c7              cmp    r15d,eax
  402626: 89 44 24 48           mov    DWORD PTR [rsp+0x48],eax
  40262a: 0f 8d b6 01 00 00     jge    4027e6 <blur_c+0x2e6>
  402630: 8b 44 24 4c           mov    eax,DWORD PTR [rsp+0x4c]
  402634: 4c 63 5c 24 24        movsxd r11,DWORD PTR [rsp+0x24]
  402639: 47 8d 44 3f 01        lea    r8d,[r15+r15*1+0x1]
  40263e: 4c 8b 74 24 18        mov    r14,QWORD PTR [rsp+0x18]
  402643: 0f 57 ed              xorps  xmm5,xmm5
  402646: 41 8d 6f 01           lea    ebp,[r15+0x1]
  40264a: 44 89 7c 24 0c        mov    DWORD PTR [rsp+0xc],r15d
  40264f: 48 c7 44 24 30 00 00  mov    QWORD PTR [rsp+0x30],0x0
  402656: 00 00 
  402658: 44 29 f8              sub    eax,r15d
  40265b: 89 c7                 mov    edi,eax
  40265d: 89 44 24 4c           mov    DWORD PTR [rsp+0x4c],eax
  402661: 44 89 f8              mov    eax,r15d
  402664: f7 d8                 neg    eax
  402666: 49 c1 e6 02           shl    r14,0x2
  40266a: c1 e7 02              shl    edi,0x2
  40266d: 89 c3                 mov    ebx,eax
  40266f: 49 63 c7              movsxd rax,r15d
  402672: 89 7c 24 24           mov    DWORD PTR [rsp+0x24],edi
  402676: 48 89 c2              mov    rdx,rax
  402679: 49 0f af d3           imul   rdx,r11
  40267d: 48 03 54 24 40        add    rdx,QWORD PTR [rsp+0x40]
  402682: 48 89 54 24 58        mov    QWORD PTR [rsp+0x58],rdx
  402687: 42 8d 14 bd 00 00 00  lea    edx,[r15*4+0x0]
  40268e: 00 
  40268f: 89 54 24 40           mov    DWORD PTR [rsp+0x40],edx
  402693: 48 63 d3              movsxd rdx,ebx
  402696: 48 01 d0              add    rax,rdx
  402699: 4c 89 da              mov    rdx,r11
  40269c: 48 0f af d0           imul   rdx,rax
  4026a0: 49 0f af c6           imul   rax,r14
  4026a4: 48 03 54 24 38        add    rdx,QWORD PTR [rsp+0x38]
  4026a9: 44 89 7c 24 38        mov    DWORD PTR [rsp+0x38],r15d
  4026ae: 48 03 44 24 28        add    rax,QWORD PTR [rsp+0x28]
  4026b3: 48 89 54 24 50        mov    QWORD PTR [rsp+0x50],rdx
  4026b8: 48 89 44 24 10        mov    QWORD PTR [rsp+0x10],rax
  4026bd: 89 d8                 mov    eax,ebx
  4026bf: 8d 1c 9d 00 00 00 00  lea    ebx,[rbx*4+0x0]
  4026c6: 89 5c 24 20           mov    DWORD PTR [rsp+0x20],ebx
  4026ca: 41 8d 1c 07           lea    ebx,[r15+rax*1]
  4026ce: 41 89 c7              mov    r15d,eax
  4026d1: 8b 44 24 4c           mov    eax,DWORD PTR [rsp+0x4c]
  4026d5: 39 44 24 0c           cmp    DWORD PTR [rsp+0xc],eax
  4026d9: 0f 8d ef 00 00 00     jge    4027ce <blur_c+0x2ce>
  4026df: 48 8b 44 24 30        mov    rax,QWORD PTR [rsp+0x30]
  4026e4: 44 8b 64 24 40        mov    r12d,DWORD PTR [rsp+0x40]
  4026e9: 49 89 c5              mov    r13,rax
  4026ec: 48 03 44 24 50        add    rax,QWORD PTR [rsp+0x50]
  4026f1: 4c 03 6c 24 58        add    r13,QWORD PTR [rsp+0x58]
  4026f6: 48 89 44 24 18        mov    QWORD PTR [rsp+0x18],rax
  4026fb: 44 39 7c 24 0c        cmp    DWORD PTR [rsp+0xc],r15d
  402700: 0f 8c f8 00 00 00     jl     4027fe <blur_c+0x2fe>
  402706: 8b 44 24 20           mov    eax,DWORD PTR [rsp+0x20]
  40270a: 48 8b 7c 24 10        mov    rdi,QWORD PTR [rsp+0x10]
  40270f: 45 89 f9              mov    r9d,r15d
  402712: 48 8b 4c 24 18        mov    rcx,QWORD PTR [rsp+0x18]
  402717: 0f 28 d5              movaps xmm2,xmm5
  40271a: 0f 28 dd              movaps xmm3,xmm5
  40271d: 45 8d 14 04           lea    r10d,[r12+rax*1]
  402721: 0f 28 e5              movaps xmm4,xmm5
  402724: 0f 1f 40 00           nop    DWORD PTR [rax+0x0]
  402728: 89 da                 mov    edx,ebx
  40272a: 44 89 d0              mov    eax,r10d
  40272d: 0f 1f 00              nop    DWORD PTR [rax]
  402730: 48 63 f2              movsxd rsi,edx
  402733: 83 c2 01              add    edx,0x1
  402736: f3 0f 10 0c b7        movss  xmm1,DWORD PTR [rdi+rsi*4]
  40273b: 48 63 f0              movsxd rsi,eax
  40273e: 0f b6 34 31           movzx  esi,BYTE PTR [rcx+rsi*1]
  402742: f3 0f 2a c6           cvtsi2ss xmm0,esi
  402746: 8d 70 01              lea    esi,[rax+0x1]
  402749: 48 63 f6              movsxd rsi,esi
  40274c: 0f b6 34 31           movzx  esi,BYTE PTR [rcx+rsi*1]
  402750: f3 0f 59 c1           mulss  xmm0,xmm1
  402754: f3 0f 58 e0           addss  xmm4,xmm0
  402758: f3 0f 2a c6           cvtsi2ss xmm0,esi
  40275c: 8d 70 02              lea    esi,[rax+0x2]
  40275f: 83 c0 04              add    eax,0x4
  402762: 44 39 c2              cmp    edx,r8d
  402765: 48 63 f6              movsxd rsi,esi
  402768: 0f b6 34 31           movzx  esi,BYTE PTR [rcx+rsi*1]
  40276c: f3 0f 59 c1           mulss  xmm0,xmm1
  402770: f3 0f 58 d8           addss  xmm3,xmm0
  402774: f3 0f 2a c6           cvtsi2ss xmm0,esi
  402778: f3 0f 59 c1           mulss  xmm0,xmm1
  40277c: f3 0f 58 d0           addss  xmm2,xmm0
  402780: 75 ae                 jne    402730 <blur_c+0x230>
  402782: 41 83 c1 01           add    r9d,0x1
  402786: 4c 01 d9              add    rcx,r11
  402789: 4c 01 f7              add    rdi,r14
  40278c: 41 39 e9              cmp    r9d,ebp
  40278f: 75 97                 jne    402728 <blur_c+0x228>
  402791: f3 0f 2c cc           cvttss2si ecx,xmm4
  402795: f3 0f 2c d3           cvttss2si edx,xmm3
  402799: f3 0f 2c c2           cvttss2si eax,xmm2
  40279d: 49 63 f4              movsxd rsi,r12d
  4027a0: 41 88 4c 35 00        mov    BYTE PTR [r13+rsi*1+0x0],cl
  4027a5: 41 8d 4c 24 01        lea    ecx,[r12+0x1]
  4027aa: 48 63 c9              movsxd rcx,ecx
  4027ad: 41 88 54 0d 00        mov    BYTE PTR [r13+rcx*1+0x0],dl
  4027b2: 41 8d 54 24 02        lea    edx,[r12+0x2]
  4027b7: 41 83 c4 04           add    r12d,0x4
  4027bb: 44 3b 64 24 24        cmp    r12d,DWORD PTR [rsp+0x24]
  4027c0: 48 63 d2              movsxd rdx,edx
  4027c3: 41 88 44 15 00        mov    BYTE PTR [r13+rdx*1+0x0],al
  4027c8: 0f 85 2d ff ff ff     jne    4026fb <blur_c+0x1fb>
  4027ce: 83 44 24 38 01        add    DWORD PTR [rsp+0x38],0x1
  4027d3: 4c 01 5c 24 30        add    QWORD PTR [rsp+0x30],r11
  4027d8: 8b 44 24 48           mov    eax,DWORD PTR [rsp+0x48]
  4027dc: 39 44 24 38           cmp    DWORD PTR [rsp+0x38],eax
  4027e0: 0f 85 eb fe ff ff     jne    4026d1 <blur_c+0x1d1>
  4027e6: 48 8b 7c 24 28        mov    rdi,QWORD PTR [rsp+0x28]
  4027eb: 48 83 c4 68           add    rsp,0x68
  4027ef: 5b                    pop    rbx
  4027f0: 5d                    pop    rbp
  4027f1: 41 5c                 pop    r12
  4027f3: 41 5d                 pop    r13
  4027f5: 41 5e                 pop    r14
  4027f7: 41 5f                 pop    r15
  4027f9: e9 c2 e2 ff ff        jmp    400ac0 <free@plt>
  4027fe: 31 c0                 xor    eax,eax
  402800: 31 d2                 xor    edx,edx
  402802: 31 c9                 xor    ecx,ecx
  402804: eb 97                 jmp    40279d <blur_c+0x29d>
  402806: 66 2e 0f 1f 84 00 00  nop    WORD PTR cs:[rax+rax*1+0x0]
  40280d: 00 00 00 