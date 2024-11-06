
verifi.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <validar_usuario>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 81 ec 10 01 00 00 	sub    $0x110,%rsp
   f:	48 89 bd f8 fe ff ff 	mov    %rdi,-0x108(%rbp)
  16:	48 89 b5 f0 fe ff ff 	mov    %rsi,-0x110(%rbp)
  1d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  24:	00 00 
  26:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  2a:	31 c0                	xor    %eax,%eax
  2c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 33 <validar_usuario+0x33>
  33:	48 89 c6             	mov    %rax,%rsi
  36:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 3d <validar_usuario+0x3d>
  3d:	48 89 c7             	mov    %rax,%rdi
  40:	e8 00 00 00 00       	call   45 <validar_usuario+0x45>
  45:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
  4c:	48 83 bd 08 ff ff ff 	cmpq   $0x0,-0xf8(%rbp)
  53:	00 
  54:	75 19                	jne    6f <validar_usuario+0x6f>
  56:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 5d <validar_usuario+0x5d>
  5d:	48 89 c7             	mov    %rax,%rdi
  60:	e8 00 00 00 00       	call   65 <validar_usuario+0x65>
  65:	b8 00 00 00 00       	mov    $0x0,%eax
  6a:	e9 ae 00 00 00       	jmp    11d <validar_usuario+0x11d>
  6f:	c7 85 04 ff ff ff 00 	movl   $0x0,-0xfc(%rbp)
  76:	00 00 00 
  79:	eb 6c                	jmp    e7 <validar_usuario+0xe7>
  7b:	48 8d 8d 50 ff ff ff 	lea    -0xb0(%rbp),%rcx
  82:	48 8d 95 10 ff ff ff 	lea    -0xf0(%rbp),%rdx
  89:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  8d:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 94 <validar_usuario+0x94>
  94:	48 89 c7             	mov    %rax,%rdi
  97:	b8 00 00 00 00       	mov    $0x0,%eax
  9c:	e8 00 00 00 00       	call   a1 <validar_usuario+0xa1>
  a1:	48 8d 95 10 ff ff ff 	lea    -0xf0(%rbp),%rdx
  a8:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
  af:	48 89 d6             	mov    %rdx,%rsi
  b2:	48 89 c7             	mov    %rax,%rdi
  b5:	e8 00 00 00 00       	call   ba <validar_usuario+0xba>
  ba:	85 c0                	test   %eax,%eax
  bc:	75 29                	jne    e7 <validar_usuario+0xe7>
  be:	48 8d 95 50 ff ff ff 	lea    -0xb0(%rbp),%rdx
  c5:	48 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%rax
  cc:	48 89 d6             	mov    %rdx,%rsi
  cf:	48 89 c7             	mov    %rax,%rdi
  d2:	e8 00 00 00 00       	call   d7 <validar_usuario+0xd7>
  d7:	85 c0                	test   %eax,%eax
  d9:	75 0c                	jne    e7 <validar_usuario+0xe7>
  db:	c7 85 04 ff ff ff 01 	movl   $0x1,-0xfc(%rbp)
  e2:	00 00 00 
  e5:	eb 21                	jmp    108 <validar_usuario+0x108>
  e7:	48 8b 95 08 ff ff ff 	mov    -0xf8(%rbp),%rdx
  ee:	48 8d 45 90          	lea    -0x70(%rbp),%rax
  f2:	be 64 00 00 00       	mov    $0x64,%esi
  f7:	48 89 c7             	mov    %rax,%rdi
  fa:	e8 00 00 00 00       	call   ff <validar_usuario+0xff>
  ff:	48 85 c0             	test   %rax,%rax
 102:	0f 85 73 ff ff ff    	jne    7b <validar_usuario+0x7b>
 108:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
 10f:	48 89 c7             	mov    %rax,%rdi
 112:	e8 00 00 00 00       	call   117 <validar_usuario+0x117>
 117:	8b 85 04 ff ff ff    	mov    -0xfc(%rbp),%eax
 11d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 121:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 128:	00 00 
 12a:	74 05                	je     131 <validar_usuario+0x131>
 12c:	e8 00 00 00 00       	call   131 <validar_usuario+0x131>
 131:	c9                   	leave
 132:	c3                   	ret

0000000000000133 <guardar_bitacora>:
 133:	f3 0f 1e fa          	endbr64
 137:	55                   	push   %rbp
 138:	48 89 e5             	mov    %rsp,%rbp
 13b:	48 83 ec 50          	sub    $0x50,%rsp
 13f:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
 143:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
 147:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 14e:	00 00 
 150:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
 154:	31 c0                	xor    %eax,%eax
 156:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 15d <guardar_bitacora+0x2a>
 15d:	48 89 c6             	mov    %rax,%rsi
 160:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 167 <guardar_bitacora+0x34>
 167:	48 89 c7             	mov    %rax,%rdi
 16a:	e8 00 00 00 00       	call   16f <guardar_bitacora+0x3c>
 16f:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
 173:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
 178:	75 11                	jne    18b <guardar_bitacora+0x58>
 17a:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 181 <guardar_bitacora+0x4e>
 181:	48 89 c7             	mov    %rax,%rdi
 184:	e8 00 00 00 00       	call   189 <guardar_bitacora+0x56>
 189:	eb 70                	jmp    1fb <guardar_bitacora+0xc8>
 18b:	bf 00 00 00 00       	mov    $0x0,%edi
 190:	e8 00 00 00 00       	call   195 <guardar_bitacora+0x62>
 195:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
 199:	48 8d 45 c8          	lea    -0x38(%rbp),%rax
 19d:	48 89 c7             	mov    %rax,%rdi
 1a0:	e8 00 00 00 00       	call   1a5 <guardar_bitacora+0x72>
 1a5:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
 1a9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
 1ad:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
 1b1:	48 89 d1             	mov    %rdx,%rcx
 1b4:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 1bb <guardar_bitacora+0x88>
 1bb:	be 14 00 00 00       	mov    $0x14,%esi
 1c0:	48 89 c7             	mov    %rax,%rdi
 1c3:	e8 00 00 00 00       	call   1c8 <guardar_bitacora+0x95>
 1c8:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
 1cc:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
 1d0:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
 1d4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 1d8:	49 89 f0             	mov    %rsi,%r8
 1db:	48 8d 35 00 00 00 00 	lea    0x0(%rip),%rsi        # 1e2 <guardar_bitacora+0xaf>
 1e2:	48 89 c7             	mov    %rax,%rdi
 1e5:	b8 00 00 00 00       	mov    $0x0,%eax
 1ea:	e8 00 00 00 00       	call   1ef <guardar_bitacora+0xbc>
 1ef:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
 1f3:	48 89 c7             	mov    %rax,%rdi
 1f6:	e8 00 00 00 00       	call   1fb <guardar_bitacora+0xc8>
 1fb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 1ff:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
 206:	00 00 
 208:	74 05                	je     20f <guardar_bitacora+0xdc>
 20a:	e8 00 00 00 00       	call   20f <guardar_bitacora+0xdc>
 20f:	c9                   	leave
 210:	c3                   	ret
