
main.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <main>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 81 ec 90 00 00 00 	sub    $0x90,%rsp
   f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  16:	00 00 
  18:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  1c:	31 c0                	xor    %eax,%eax
  1e:	c7 85 7c ff ff ff 03 	movl   $0x3,-0x84(%rbp)
  25:	00 00 00 
  28:	e9 c8 00 00 00       	jmp    f5 <main+0xf5>
  2d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 34 <main+0x34>
  34:	48 89 c7             	mov    %rax,%rdi
  37:	b8 00 00 00 00       	mov    $0x0,%eax
  3c:	e8 00 00 00 00       	call   41 <main+0x41>
  41:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  45:	48 89 c6             	mov    %rax,%rsi
  48:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 4f <main+0x4f>
  4f:	48 89 c7             	mov    %rax,%rdi
  52:	b8 00 00 00 00       	mov    $0x0,%eax
  57:	e8 00 00 00 00       	call   5c <main+0x5c>
  5c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 63 <main+0x63>
  63:	48 89 c7             	mov    %rax,%rdi
  66:	b8 00 00 00 00       	mov    $0x0,%eax
  6b:	e8 00 00 00 00       	call   70 <main+0x70>
  70:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  74:	48 89 c6             	mov    %rax,%rsi
  77:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 7e <main+0x7e>
  7e:	48 89 c7             	mov    %rax,%rdi
  81:	b8 00 00 00 00       	mov    $0x0,%eax
  86:	e8 00 00 00 00       	call   8b <main+0x8b>
  8b:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  8f:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  93:	48 89 d6             	mov    %rdx,%rsi
  96:	48 89 c7             	mov    %rax,%rdi
  99:	e8 00 00 00 00       	call   9e <main+0x9e>
  9e:	85 c0                	test   %eax,%eax
  a0:	74 27                	je     c9 <main+0xc9>
  a2:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a9 <main+0xa9>
  a9:	48 89 c7             	mov    %rax,%rdi
  ac:	e8 00 00 00 00       	call   b1 <main+0xb1>
  b1:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  b5:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # bc <main+0xbc>
  bc:	48 89 d6             	mov    %rdx,%rsi
  bf:	48 89 c7             	mov    %rax,%rdi
  c2:	e8 00 00 00 00       	call   c7 <main+0xc7>
  c7:	eb 39                	jmp    102 <main+0x102>
  c9:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # d0 <main+0xd0>
  d0:	48 89 c7             	mov    %rax,%rdi
  d3:	e8 00 00 00 00       	call   d8 <main+0xd8>
  d8:	48 8d 45 80          	lea    -0x80(%rbp),%rax
  dc:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # e3 <main+0xe3>
  e3:	48 89 d6             	mov    %rdx,%rsi
  e6:	48 89 c7             	mov    %rax,%rdi
  e9:	e8 00 00 00 00       	call   ee <main+0xee>
  ee:	83 ad 7c ff ff ff 01 	subl   $0x1,-0x84(%rbp)
  f5:	83 bd 7c ff ff ff 00 	cmpl   $0x0,-0x84(%rbp)
  fc:	0f 8f 2b ff ff ff    	jg     2d <main+0x2d>
 102:	83 bd 7c ff ff ff 00 	cmpl   $0x0,-0x84(%rbp)
 109:	75 19                	jne    124 <main+0x124>
 10b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 112 <main+0x112>
 112:	48 89 c7             	mov    %rax,%rdi
 115:	e8 00 00 00 00       	call   11a <main+0x11a>
 11a:	b8 01 00 00 00       	mov    $0x1,%eax
 11f:	e9 7c 01 00 00       	jmp    2a0 <main+0x2a0>
 124:	b8 00 00 00 00       	mov    $0x0,%eax
 129:	e8 00 00 00 00       	call   12e <main+0x12e>
 12e:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 135 <main+0x135>
 135:	48 89 c7             	mov    %rax,%rdi
 138:	b8 00 00 00 00       	mov    $0x0,%eax
 13d:	e8 00 00 00 00       	call   142 <main+0x142>
 142:	48 8d 85 78 ff ff ff 	lea    -0x88(%rbp),%rax
 149:	48 89 c6             	mov    %rax,%rsi
 14c:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 153 <main+0x153>
 153:	48 89 c7             	mov    %rax,%rdi
 156:	b8 00 00 00 00       	mov    $0x0,%eax
 15b:	e8 00 00 00 00       	call   160 <main+0x160>
 160:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
 166:	85 c0                	test   %eax,%eax
 168:	74 31                	je     19b <main+0x19b>
 16a:	85 c0                	test   %eax,%eax
 16c:	78 54                	js     1c2 <main+0x1c2>
 16e:	83 e8 01             	sub    $0x1,%eax
 171:	83 f8 0c             	cmp    $0xc,%eax
 174:	77 4c                	ja     1c2 <main+0x1c2>
 176:	48 8d 45 80          	lea    -0x80(%rbp),%rax
 17a:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 181 <main+0x181>
 181:	48 89 d6             	mov    %rdx,%rsi
 184:	48 89 c7             	mov    %rax,%rdi
 187:	e8 00 00 00 00       	call   18c <main+0x18c>
 18c:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
 192:	89 c7                	mov    %eax,%edi
 194:	e8 00 00 00 00       	call   199 <main+0x199>
 199:	eb 37                	jmp    1d2 <main+0x1d2>
 19b:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1a2 <main+0x1a2>
 1a2:	48 89 c7             	mov    %rax,%rdi
 1a5:	e8 00 00 00 00       	call   1aa <main+0x1aa>
 1aa:	48 8d 45 80          	lea    -0x80(%rbp),%rax
 1ae:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 1b5 <main+0x1b5>
 1b5:	48 89 d6             	mov    %rdx,%rsi
 1b8:	48 89 c7             	mov    %rax,%rdi
 1bb:	e8 00 00 00 00       	call   1c0 <main+0x1c0>
 1c0:	eb 10                	jmp    1d2 <main+0x1d2>
 1c2:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1c9 <main+0x1c9>
 1c9:	48 89 c7             	mov    %rax,%rdi
 1cc:	e8 00 00 00 00       	call   1d1 <main+0x1d1>
 1d1:	90                   	nop
 1d2:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
 1d8:	85 c0                	test   %eax,%eax
 1da:	0f 84 ad 00 00 00    	je     28d <main+0x28d>
 1e0:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 1e7 <main+0x1e7>
 1e7:	48 89 c7             	mov    %rax,%rdi
 1ea:	b8 00 00 00 00       	mov    $0x0,%eax
 1ef:	e8 00 00 00 00       	call   1f4 <main+0x1f4>
 1f4:	48 8d 85 77 ff ff ff 	lea    -0x89(%rbp),%rax
 1fb:	48 89 c6             	mov    %rax,%rsi
 1fe:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 205 <main+0x205>
 205:	48 89 c7             	mov    %rax,%rdi
 208:	b8 00 00 00 00       	mov    $0x0,%eax
 20d:	e8 00 00 00 00       	call   212 <main+0x212>
 212:	0f b6 85 77 ff ff ff 	movzbl -0x89(%rbp),%eax
 219:	0f be c0             	movsbl %al,%eax
 21c:	89 c7                	mov    %eax,%edi
 21e:	e8 00 00 00 00       	call   223 <main+0x223>
 223:	88 85 77 ff ff ff    	mov    %al,-0x89(%rbp)
 229:	0f b6 85 77 ff ff ff 	movzbl -0x89(%rbp),%eax
 230:	3c 6e                	cmp    $0x6e,%al
 232:	75 22                	jne    256 <main+0x256>
 234:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%rbp)
 23b:	00 00 00 
 23e:	48 8d 45 80          	lea    -0x80(%rbp),%rax
 242:	48 8d 15 00 00 00 00 	lea    0x0(%rip),%rdx        # 249 <main+0x249>
 249:	48 89 d6             	mov    %rdx,%rsi
 24c:	48 89 c7             	mov    %rax,%rdi
 24f:	e8 00 00 00 00       	call   254 <main+0x254>
 254:	eb 1a                	jmp    270 <main+0x270>
 256:	0f b6 85 77 ff ff ff 	movzbl -0x89(%rbp),%eax
 25d:	3c 73                	cmp    $0x73,%al
 25f:	74 2b                	je     28c <main+0x28c>
 261:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 268 <main+0x268>
 268:	48 89 c7             	mov    %rax,%rdi
 26b:	e8 00 00 00 00       	call   270 <main+0x270>
 270:	0f b6 85 77 ff ff ff 	movzbl -0x89(%rbp),%eax
 277:	3c 73                	cmp    $0x73,%al
 279:	74 12                	je     28d <main+0x28d>
 27b:	0f b6 85 77 ff ff ff 	movzbl -0x89(%rbp),%eax
 282:	3c 6e                	cmp    $0x6e,%al
 284:	0f 85 56 ff ff ff    	jne    1e0 <main+0x1e0>
 28a:	eb 01                	jmp    28d <main+0x28d>
 28c:	90                   	nop
 28d:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
 293:	85 c0                	test   %eax,%eax
 295:	0f 85 89 fe ff ff    	jne    124 <main+0x124>
 29b:	b8 00 00 00 00       	mov    $0x0,%eax
 2a0:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 2a4:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 2ab:	00 00 
 2ad:	74 05                	je     2b4 <main+0x2b4>
 2af:	e8 00 00 00 00       	call   2b4 <main+0x2b4>
 2b4:	c9                   	leave
 2b5:	c3                   	ret
