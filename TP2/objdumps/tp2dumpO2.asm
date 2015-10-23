0000000000402140 <infNorm>:
  402140: 40 0f b6 ff           movzx  edi,dil
  402144: 0f b6 c9              movzx  ecx,cl
  402147: 40 0f b6 f6           movzx  esi,sil
  40214b: 29 cf                 sub    edi,ecx
  40214d: 45 0f b6 c0           movzx  r8d,r8b
  402151: 0f b6 d2              movzx  edx,dl
  402154: 89 f8                 mov    eax,edi
  402156: 44 29 c6              sub    esi,r8d
  402159: 45 0f b6 c9           movzx  r9d,r9b
  40215d: c1 f8 1f              sar    eax,0x1f
  402160: 44 29 ca              sub    edx,r9d
  402163: 31 c7                 xor    edi,eax
  402165: 29 c7                 sub    edi,eax
  402167: 89 f0                 mov    eax,esi
  402169: c1 f8 1f              sar    eax,0x1f
  40216c: 31 c6                 xor    esi,eax
  40216e: 29 c6                 sub    esi,eax
  402170: 89 d0                 mov    eax,edx
  402172: c1 f8 1f              sar    eax,0x1f
  402175: 31 c2                 xor    edx,eax
  402177: 29 c2                 sub    edx,eax
  402179: 66 39 f7              cmp    di,si
  40217c: 7e 12                 jle    402190 <infNorm+0x50>
  40217e: 66 39 d7              cmp    di,dx
  402181: 89 d0                 mov    eax,edx
  402183: 0f 4d c7              cmovge eax,edi
  402186: c3                    ret    
  402187: 66 0f 1f 84 00 00 00  nop    WORD PTR [rax+rax*1+0x0]
  40218e: 00 00 
  402190: 66 39 d6              cmp    si,dx
  402193: 89 d0                 mov    eax,edx
  402195: 0f 4d c6              cmovge eax,esi
  402198: c3                    ret    
  402199: 0f 1f 80 00 00 00 00  nop    DWORD PTR [rax+0x0]

00000000004021a0 <diff_c>:
  4021a0: 45 85 c0              test   r8d,r8d
  4021a3: 0f 8e 0d 01 00 00     jle    4022b6 <diff_c+0x116>
  4021a9: 41 57                 push   r15
  4021ab: 45 31 ff              xor    r15d,r15d
  4021ae: 41 56                 push   r14
  4021b0: 44 8d 34 8d 00 00 00  lea    r14d,[rcx*4+0x0]
  4021b7: 00 
  4021b8: 41 55                 push   r13
  4021ba: 41 54                 push   r12
  4021bc: 49 89 f4              mov    r12,rsi
  4021bf: 55                    push   rbp
  4021c0: 48 89 fd              mov    rbp,rdi
  4021c3: 53                    push   rbx
  4021c4: 48 63 44 24 40        movsxd rax,DWORD PTR [rsp+0x40]
  4021c9: 48 89 44 24 f8        mov    QWORD PTR [rsp-0x8],rax
  4021ce: 48 63 44 24 38        movsxd rax,DWORD PTR [rsp+0x38]
  4021d3: 48 89 44 24 f0        mov    QWORD PTR [rsp-0x10],rax
  4021d8: 49 63 c1              movsxd rax,r9d
  4021db: 48 89 44 24 e8        mov    QWORD PTR [rsp-0x18],rax
  4021e0: 85 c9                 test   ecx,ecx
  4021e2: 0f 8e a8 00 00 00     jle    402290 <diff_c+0xf0>
  4021e8: 31 c0                 xor    eax,eax
  4021ea: eb 2a                 jmp    402216 <diff_c+0x76>
  4021ec: 0f 1f 40 00           nop    DWORD PTR [rax+0x0]
  4021f0: 66 44 39 cf           cmp    di,r9w
  4021f4: 41 0f 4c f9           cmovl  edi,r9d
  4021f8: 8d 70 03              lea    esi,[rax+0x3]
  4021fb: 83 c0 04              add    eax,0x4
  4021fe: 40 88 3c 1a           mov    BYTE PTR [rdx+rbx*1],dil
  402202: 44 39 f0              cmp    eax,r14d
  402205: 42 88 3c 1a           mov    BYTE PTR [rdx+r11*1],dil
  402209: 42 88 3c 12           mov    BYTE PTR [rdx+r10*1],dil
  40220d: 48 63 f6              movsxd rsi,esi
  402210: c6 04 32 ff           mov    BYTE PTR [rdx+rsi*1],0xff
  402214: 74 7a                 je     402290 <diff_c+0xf0>
  402216: 48 63 d8              movsxd rbx,eax
  402219: 44 8d 58 01           lea    r11d,[rax+0x1]
  40221d: 44 8d 50 02           lea    r10d,[rax+0x2]
  402221: 41 0f b6 3c 1c        movzx  edi,BYTE PTR [r12+rbx*1]
  402226: 0f b6 74 1d 00        movzx  esi,BYTE PTR [rbp+rbx*1+0x0]
  40222b: 4d 63 db              movsxd r11,r11d
  40222e: 4d 63 d2              movsxd r10,r10d
  402231: 46 0f b6 4c 1d 00     movzx  r9d,BYTE PTR [rbp+r11*1+0x0]
  402237: 47 0f b6 2c 14        movzx  r13d,BYTE PTR [r12+r10*1]
  40223c: 29 fe                 sub    esi,edi
  40223e: 89 f7                 mov    edi,esi
  402240: c1 ff 1f              sar    edi,0x1f
  402243: 31 fe                 xor    esi,edi
  402245: 29 fe                 sub    esi,edi
  402247: 43 0f b6 3c 1c        movzx  edi,BYTE PTR [r12+r11*1]
  40224c: 41 29 f9              sub    r9d,edi
  40224f: 44 89 cf              mov    edi,r9d
  402252: c1 ff 1f              sar    edi,0x1f
  402255: 41 31 f9              xor    r9d,edi
  402258: 41 29 f9              sub    r9d,edi
  40225b: 42 0f b6 7c 15 00     movzx  edi,BYTE PTR [rbp+r10*1+0x0]
  402261: 44 29 ef              sub    edi,r13d
  402264: 41 89 fd              mov    r13d,edi
  402267: 41 c1 fd 1f           sar    r13d,0x1f
  40226b: 44 31 ef              xor    edi,r13d
  40226e: 44 29 ef              sub    edi,r13d
  402271: 66 44 39 ce           cmp    si,r9w
  402275: 0f 8e 75 ff ff ff     jle    4021f0 <diff_c+0x50>
  40227b: 66 39 f7              cmp    di,si
  40227e: 0f 4c fe              cmovl  edi,esi
  402281: e9 72 ff ff ff        jmp    4021f8 <diff_c+0x58>
  402286: 66 2e 0f 1f 84 00 00  nop    WORD PTR cs:[rax+rax*1+0x0]
  40228d: 00 00 00 
  402290: 41 83 c7 01           add    r15d,0x1
  402294: 48 03 54 24 f8        add    rdx,QWORD PTR [rsp-0x8]
  402299: 4c 03 64 24 f0        add    r12,QWORD PTR [rsp-0x10]
  40229e: 48 03 6c 24 e8        add    rbp,QWORD PTR [rsp-0x18]
  4022a3: 45 39 c7              cmp    r15d,r8d
  4022a6: 0f 85 34 ff ff ff     jne    4021e0 <diff_c+0x40>
  4022ac: 5b                    pop    rbx
  4022ad: 5d                    pop    rbp
  4022ae: 41 5c                 pop    r12
  4022b0: 41 5d                 pop    r13
  4022b2: 41 5e                 pop    r14
  4022b4: 41 5f                 pop    r15
  4022b6: f3 c3                 repz ret 
  4022b8: 0f 1f 84 00 00 00 00  nop    DWORD PTR [rax+rax*1+0x0]
  4022bf: 00 

00000000004022c0 <matrizDeConvolucion>:
  4022c0: 41 57                 push   r15
  4022c2: 0f 14 c0              unpcklps xmm0,xmm0
  4022c5: 41 56                 push   r14
  4022c7: 0f 5a d0              cvtps2pd xmm2,xmm0
  4022ca: 41 55                 push   r13
  4022cc: 41 54                 push   r12
  4022ce: 41 89 fc              mov    r12d,edi
  4022d1: 55                    push   rbp
  4022d2: 8d 2c 3f              lea    ebp,[rdi+rdi*1]
  4022d5: 53                    push   rbx
  4022d6: 44 8d 6d 01           lea    r13d,[rbp+0x1]
  4022da: 48 83 ec 28           sub    rsp,0x28
  4022de: 49 63 dd              movsxd rbx,r13d
  4022e1: f2 0f 10 0d 4f 0f 00  movsd  xmm1,QWORD PTR [rip+0xf4f]        # 403238 <_IO_stdin_used+0xbd8>
  4022e8: 00 
  4022e9: 48 89 df              mov    rdi,rbx
  4022ec: f3 0f 10 25 4c 0f 00  movss  xmm4,DWORD PTR [rip+0xf4c]        # 403240 <_IO_stdin_used+0xbe0>
  4022f3: 00 
  4022f4: f2 0f 59 ca           mulsd  xmm1,xmm2
  4022f8: f3 0f 59 e0           mulss  xmm4,xmm0
  4022fc: 48 0f af fb           imul   rdi,rbx
  402300: f2 0f 59 ca           mulsd  xmm1,xmm2
  402304: f3 0f 59 c4           mulss  xmm0,xmm4
  402308: 48 c1 e7 02           shl    rdi,0x2
  40230c: 66 0f 14 c9           unpcklpd xmm1,xmm1
  402310: f3 0f 11 44 24 08     movss  DWORD PTR [rsp+0x8],xmm0
  402316: 66 0f 5a e9           cvtpd2ps xmm5,xmm1
  40231a: f3 0f 11 2c 24        movss  DWORD PTR [rsp],xmm5
  40231f: e8 5c e8 ff ff        call   400b80 <malloc@plt>
  402324: 45 85 ed              test   r13d,r13d
  402327: 48 89 44 24 18        mov    QWORD PTR [rsp+0x18],rax
  40232c: 0f 8e 8a 00 00 00     jle    4023bc <matrizDeConvolucion+0xfc>
  402332: f3 0f 10 34 24        movss  xmm6,DWORD PTR [rsp]
  402337: 48 8d 0c 9d 00 00 00  lea    rcx,[rbx*4+0x0]
  40233e: 00 
  40233f: 48 89 c3              mov    rbx,rax
  402342: 41 8d 44 24 ff        lea    eax,[r12-0x1]
  402347: 45 89 e6              mov    r14d,r12d
  40234a: 0f 5a f6              cvtps2pd xmm6,xmm6
  40234d: 48 89 4c 24 10        mov    QWORD PTR [rsp+0x10],rcx
  402352: 89 44 24 0c           mov    DWORD PTR [rsp+0xc],eax
  402356: 29 6c 24 0c           sub    DWORD PTR [rsp+0xc],ebp
  40235a: f2 0f 11 34 24        movsd  QWORD PTR [rsp],xmm6
  40235f: 90                    nop
  402360: 44 89 f5              mov    ebp,r14d
  402363: 45 31 ff              xor    r15d,r15d
  402366: 41 0f af ee           imul   ebp,r14d
  40236a: 66 0f 1f 44 00 00     nop    WORD PTR [rax+rax*1+0x0]
  402370: 44 89 e2              mov    edx,r12d
  402373: 44 29 fa              sub    edx,r15d
  402376: 0f af d2              imul   edx,edx
  402379: 01 ea                 add    edx,ebp
  40237b: f3 0f 2a c2           cvtsi2ss xmm0,edx
  40237f: f3 0f 5e 44 24 08     divss  xmm0,DWORD PTR [rsp+0x8]
  402385: 0f 14 c0              unpcklps xmm0,xmm0
  402388: 0f 5a c0              cvtps2pd xmm0,xmm0
  40238b: e8 50 e7 ff ff        call   400ae0 <exp@plt>
  402390: f2 0f 5e 04 24        divsd  xmm0,QWORD PTR [rsp]
  402395: 66 0f 14 c0           unpcklpd xmm0,xmm0
  402399: 66 0f 5a d8           cvtpd2ps xmm3,xmm0
  40239d: f3 42 0f 11 1c bb     movss  DWORD PTR [rbx+r15*4],xmm3
  4023a3: 49 83 c7 01           add    r15,0x1
  4023a7: 45 39 fd              cmp    r13d,r15d
  4023aa: 7f c4                 jg     402370 <matrizDeConvolucion+0xb0>
  4023ac: 41 83 ee 01           sub    r14d,0x1
  4023b0: 48 03 5c 24 10        add    rbx,QWORD PTR [rsp+0x10]
  4023b5: 44 3b 74 24 0c        cmp    r14d,DWORD PTR [rsp+0xc]
  4023ba: 75 a4                 jne    402360 <matrizDeConvolucion+0xa0>
  4023bc: 48 8b 44 24 18        mov    rax,QWORD PTR [rsp+0x18]
  4023c1: 48 83 c4 28           add    rsp,0x28
  4023c5: 5b                    pop    rbx
  4023c6: 5d                    pop    rbp
  4023c7: 41 5c                 pop    r12
  4023c9: 41 5d                 pop    r13
  4023cb: 41 5e                 pop    r14
  4023cd: 41 5f                 pop    r15
  4023cf: c3                    ret    

00000000004023d0 <blur_c>:
  4023d0: 41 57                 push   r15
  4023d2: 41 89 d7              mov    r15d,edx
  4023d5: 41 56                 push   r14
  4023d7: 41 89 ce              mov    r14d,ecx
  4023da: 41 55                 push   r13
  4023dc: 44 8d 2c 95 00 00 00  lea    r13d,[rdx*4+0x0]
  4023e3: 00 
  4023e4: 41 54                 push   r12
  4023e6: 49 89 f4              mov    r12,rsi
  4023e9: 55                    push   rbp
  4023ea: 48 89 fd              mov    rbp,rdi
  4023ed: 44 89 c7              mov    edi,r8d
  4023f0: 53                    push   rbx
  4023f1: 43 8d 5c 00 01        lea    ebx,[r8+r8*1+0x1]
  4023f6: 48 83 ec 58           sub    rsp,0x58
  4023fa: 44 89 44 24 04        mov    DWORD PTR [rsp+0x4],r8d
  4023ff: e8 bc fe ff ff        call   4022c0 <matrizDeConvolucion>
  402404: 48 89 c1              mov    rcx,rax
  402407: 48 89 44 24 28        mov    QWORD PTR [rsp+0x28],rax
  40240c: 8b 44 24 04           mov    eax,DWORD PTR [rsp+0x4]
  402410: 44 89 ff              mov    edi,r15d
  402413: 29 c7                 sub    edi,eax
  402415: 39 f8                 cmp    eax,edi
  402417: 89 7c 24 48           mov    DWORD PTR [rsp+0x48],edi
  40241b: 0f 8d 97 01 00 00     jge    4025b8 <blur_c+0x1e8>
  402421: 89 c7                 mov    edi,eax
  402423: 41 29 c6              sub    r14d,eax
  402426: 41 89 c7              mov    r15d,eax
  402429: 48 98                 cdqe   
  40242b: 4d 63 d5              movsxd r10,r13d
  40242e: 41 f7 df              neg    r15d
  402431: 48 89 c2              mov    rdx,rax
  402434: 4c 63 db              movsxd r11,ebx
  402437: 44 89 74 24 4c        mov    DWORD PTR [rsp+0x4c],r14d
  40243c: 49 0f af d2           imul   rdx,r10
  402440: 49 c1 e3 02           shl    r11,0x2
  402444: 89 7c 24 30           mov    DWORD PTR [rsp+0x30],edi
  402448: 0f 57 ed              xorps  xmm5,xmm5
  40244b: 48 c7 44 24 20 00 00  mov    QWORD PTR [rsp+0x20],0x0
  402452: 00 00 
  402454: 4c 01 e2              add    rdx,r12
  402457: 44 8d 67 01           lea    r12d,[rdi+0x1]
  40245b: 48 89 54 24 40        mov    QWORD PTR [rsp+0x40],rdx
  402460: 8d 14 bd 00 00 00 00  lea    edx,[rdi*4+0x0]
  402467: 89 54 24 34           mov    DWORD PTR [rsp+0x34],edx
  40246b: 42 8d 14 b5 00 00 00  lea    edx,[r14*4+0x0]
  402472: 00 
  402473: 89 54 24 1c           mov    DWORD PTR [rsp+0x1c],edx
  402477: 49 63 d7              movsxd rdx,r15d
  40247a: 48 01 d0              add    rax,rdx
  40247d: 4c 89 d2              mov    rdx,r10
  402480: 48 0f af d0           imul   rdx,rax
  402484: 49 0f af c3           imul   rax,r11
  402488: 48 01 ea              add    rdx,rbp
  40248b: 42 8d 2c 3f           lea    ebp,[rdi+r15*1]
  40248f: 48 01 c8              add    rax,rcx
  402492: 48 89 54 24 38        mov    QWORD PTR [rsp+0x38],rdx
  402497: 48 89 44 24 08        mov    QWORD PTR [rsp+0x8],rax
  40249c: 42 8d 04 bd 00 00 00  lea    eax,[r15*4+0x0]
  4024a3: 00 
  4024a4: 89 44 24 18           mov    DWORD PTR [rsp+0x18],eax
  4024a8: 8b 44 24 4c           mov    eax,DWORD PTR [rsp+0x4c]
  4024ac: 39 44 24 04           cmp    DWORD PTR [rsp+0x4],eax
  4024b0: 0f 8d ea 00 00 00     jge    4025a0 <blur_c+0x1d0>
  4024b6: 48 8b 44 24 20        mov    rax,QWORD PTR [rsp+0x20]
  4024bb: 44 8b 6c 24 34        mov    r13d,DWORD PTR [rsp+0x34]
  4024c0: 49 89 c6              mov    r14,rax
  4024c3: 48 03 44 24 38        add    rax,QWORD PTR [rsp+0x38]
  4024c8: 4c 03 74 24 40        add    r14,QWORD PTR [rsp+0x40]
  4024cd: 48 89 44 24 10        mov    QWORD PTR [rsp+0x10],rax
  4024d2: 44 39 7c 24 04        cmp    DWORD PTR [rsp+0x4],r15d
  4024d7: 0f 8c f3 00 00 00     jl     4025d0 <blur_c+0x200>
  4024dd: 8b 44 24 18           mov    eax,DWORD PTR [rsp+0x18]
  4024e1: 48 8b 7c 24 08        mov    rdi,QWORD PTR [rsp+0x8]
  4024e6: 45 89 f8              mov    r8d,r15d
  4024e9: 48 8b 4c 24 10        mov    rcx,QWORD PTR [rsp+0x10]
  4024ee: 0f 28 d5              movaps xmm2,xmm5
  4024f1: 0f 28 dd              movaps xmm3,xmm5
  4024f4: 45 8d 4c 05 00        lea    r9d,[r13+rax*1+0x0]
  4024f9: 0f 28 e5              movaps xmm4,xmm5
  4024fc: 0f 1f 40 00           nop    DWORD PTR [rax+0x0]
  402500: 89 ea                 mov    edx,ebp
  402502: 44 89 c8              mov    eax,r9d
  402505: 0f 1f 00              nop    DWORD PTR [rax]
  402508: 48 63 f2              movsxd rsi,edx
  40250b: 83 c2 01              add    edx,0x1
  40250e: f3 0f 10 0c b7        movss  xmm1,DWORD PTR [rdi+rsi*4]
  402513: 48 63 f0              movsxd rsi,eax
  402516: 0f b6 34 31           movzx  esi,BYTE PTR [rcx+rsi*1]
  40251a: f3 0f 2a c6           cvtsi2ss xmm0,esi
  40251e: 8d 70 01              lea    esi,[rax+0x1]
  402521: 48 63 f6              movsxd rsi,esi
  402524: 0f b6 34 31           movzx  esi,BYTE PTR [rcx+rsi*1]
  402528: f3 0f 59 c1           mulss  xmm0,xmm1
  40252c: f3 0f 58 e0           addss  xmm4,xmm0
  402530: f3 0f 2a c6           cvtsi2ss xmm0,esi
  402534: 8d 70 02              lea    esi,[rax+0x2]
  402537: 83 c0 04              add    eax,0x4
  40253a: 39 da                 cmp    edx,ebx
  40253c: 48 63 f6              movsxd rsi,esi
  40253f: 0f b6 34 31           movzx  esi,BYTE PTR [rcx+rsi*1]
  402543: f3 0f 59 c1           mulss  xmm0,xmm1
  402547: f3 0f 58 d8           addss  xmm3,xmm0
  40254b: f3 0f 2a c6           cvtsi2ss xmm0,esi
  40254f: f3 0f 59 c1           mulss  xmm0,xmm1
  402553: f3 0f 58 d0           addss  xmm2,xmm0
  402557: 75 af                 jne    402508 <blur_c+0x138>
  402559: 41 83 c0 01           add    r8d,0x1
  40255d: 4c 01 d1              add    rcx,r10
  402560: 4c 01 df              add    rdi,r11
  402563: 45 39 e0              cmp    r8d,r12d
  402566: 75 98                 jne    402500 <blur_c+0x130>
  402568: f3 0f 2c cc           cvttss2si ecx,xmm4
  40256c: f3 0f 2c d3           cvttss2si edx,xmm3
  402570: f3 0f 2c c2           cvttss2si eax,xmm2
  402574: 49 63 f5              movsxd rsi,r13d
  402577: 41 88 0c 36           mov    BYTE PTR [r14+rsi*1],cl
  40257b: 41 8d 4d 01           lea    ecx,[r13+0x1]
  40257f: 48 63 c9              movsxd rcx,ecx
  402582: 41 88 14 0e           mov    BYTE PTR [r14+rcx*1],dl
  402586: 41 8d 55 02           lea    edx,[r13+0x2]
  40258a: 41 83 c5 04           add    r13d,0x4
  40258e: 44 3b 6c 24 1c        cmp    r13d,DWORD PTR [rsp+0x1c]
  402593: 48 63 d2              movsxd rdx,edx
  402596: 41 88 04 16           mov    BYTE PTR [r14+rdx*1],al
  40259a: 0f 85 32 ff ff ff     jne    4024d2 <blur_c+0x102>
  4025a0: 83 44 24 30 01        add    DWORD PTR [rsp+0x30],0x1
  4025a5: 4c 01 54 24 20        add    QWORD PTR [rsp+0x20],r10
  4025aa: 8b 44 24 48           mov    eax,DWORD PTR [rsp+0x48]
  4025ae: 39 44 24 30           cmp    DWORD PTR [rsp+0x30],eax
  4025b2: 0f 85 f0 fe ff ff     jne    4024a8 <blur_c+0xd8>
  4025b8: 48 8b 7c 24 28        mov    rdi,QWORD PTR [rsp+0x28]
  4025bd: 48 83 c4 58           add    rsp,0x58
  4025c1: 5b                    pop    rbx
  4025c2: 5d                    pop    rbp
  4025c3: 41 5c                 pop    r12
  4025c5: 41 5d                 pop    r13
  4025c7: 41 5e                 pop    r14
  4025c9: 41 5f                 pop    r15
  4025cb: e9 b0 e4 ff ff        jmp    400a80 <free@plt>
  4025d0: 31 c0                 xor    eax,eax
  4025d2: 31 d2                 xor    edx,edx
  4025d4: 31 c9                 xor    ecx,ecx
  4025d6: eb 9c                 jmp    402574 <blur_c+0x1a4>
  4025d8: 0f 1f 84 00 00 00 00  nop    DWORD PTR [rax+rax*1+0x0]
  4025df: 00 