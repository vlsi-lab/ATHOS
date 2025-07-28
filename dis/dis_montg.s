
sw/applications/isatest/montg.elf:     file format elf32-littleriscv


Disassembly of section .vectors:

00000000 <__vector_start>:
   0:	5fc0006f          	j	5fc <handler_exception>
   4:	3360006f          	j	33a <__no_irq_handler>
   8:	3320006f          	j	33a <__no_irq_handler>
   c:	7800006f          	j	78c <handler_irq_software>
  10:	32a0006f          	j	33a <__no_irq_handler>
  14:	3260006f          	j	33a <__no_irq_handler>
  18:	3220006f          	j	33a <__no_irq_handler>
  1c:	7a00006f          	j	7bc <handler_irq_timer>
  20:	31a0006f          	j	33a <__no_irq_handler>
  24:	3160006f          	j	33a <__no_irq_handler>
  28:	3120006f          	j	33a <__no_irq_handler>
  2c:	7c00006f          	j	7ec <handler_irq_external>
  30:	30a0006f          	j	33a <__no_irq_handler>
  34:	3060006f          	j	33a <__no_irq_handler>
  38:	3020006f          	j	33a <__no_irq_handler>
  3c:	2fe0006f          	j	33a <__no_irq_handler>
  40:	02d0006f          	j	86c <handler_irq_fast_timer_1>
  44:	07d0006f          	j	8c0 <handler_irq_fast_timer_2>
  48:	0cd0006f          	j	914 <handler_irq_fast_timer_3>
  4c:	0050006f          	j	850 <handler_irq_fast_dma>
  50:	1190006f          	j	968 <handler_irq_fast_spi>
  54:	1690006f          	j	9bc <handler_irq_fast_spi_flash>
  58:	1b90006f          	j	a10 <handler_irq_fast_gpio_0>
  5c:	2090006f          	j	a64 <handler_irq_fast_gpio_1>
  60:	2590006f          	j	ab8 <handler_irq_fast_gpio_2>
  64:	2a90006f          	j	b0c <handler_irq_fast_gpio_3>
  68:	2fd0006f          	j	b64 <handler_irq_fast_gpio_4>
  6c:	3510006f          	j	bbc <handler_irq_fast_gpio_5>
  70:	3a90006f          	j	c18 <handler_irq_fast_gpio_6>
  74:	3fd0006f          	j	c70 <handler_irq_fast_gpio_7>
  78:	2c20006f          	j	33a <__no_irq_handler>
  7c:	2be0006f          	j	33a <__no_irq_handler>
  80:	3420006f          	j	3c2 <verification_irq_handler>
  84:	2b60006f          	j	33a <__no_irq_handler>
  88:	2b20006f          	j	33a <__no_irq_handler>
  8c:	2ae0006f          	j	33a <__no_irq_handler>
  90:	2aa0006f          	j	33a <__no_irq_handler>
  94:	2a60006f          	j	33a <__no_irq_handler>
  98:	2a20006f          	j	33a <__no_irq_handler>
  9c:	29e0006f          	j	33a <__no_irq_handler>
  a0:	29a0006f          	j	33a <__no_irq_handler>
  a4:	2960006f          	j	33a <__no_irq_handler>
  a8:	2920006f          	j	33a <__no_irq_handler>
  ac:	28e0006f          	j	33a <__no_irq_handler>
  b0:	28a0006f          	j	33a <__no_irq_handler>
  b4:	2860006f          	j	33a <__no_irq_handler>
  b8:	2820006f          	j	33a <__no_irq_handler>
  bc:	27e0006f          	j	33a <__no_irq_handler>
  c0:	27a0006f          	j	33a <__no_irq_handler>
  c4:	2760006f          	j	33a <__no_irq_handler>
  c8:	2720006f          	j	33a <__no_irq_handler>
  cc:	26e0006f          	j	33a <__no_irq_handler>
  d0:	26a0006f          	j	33a <__no_irq_handler>
  d4:	2660006f          	j	33a <__no_irq_handler>
  d8:	2620006f          	j	33a <__no_irq_handler>
  dc:	25e0006f          	j	33a <__no_irq_handler>
  e0:	25a0006f          	j	33a <__no_irq_handler>
  e4:	2560006f          	j	33a <__no_irq_handler>
  e8:	2520006f          	j	33a <__no_irq_handler>
  ec:	24e0006f          	j	33a <__no_irq_handler>
  f0:	24a0006f          	j	33a <__no_irq_handler>
  f4:	2460006f          	j	33a <__no_irq_handler>
  f8:	2420006f          	j	33a <__no_irq_handler>
  fc:	23e0006f          	j	33a <__no_irq_handler>
 100:	23a0006f          	j	33a <__no_irq_handler>

Disassembly of section .init:

00000180 <_start>:
 180:	00081197          	auipc	gp,0x81
 184:	af818193          	addi	gp,gp,-1288 # 80c78 <__global_pointer$>
 188:	000e0117          	auipc	sp,0xe0
 18c:	40810113          	addi	sp,sp,1032 # e0590 <_sp>
 190:	20000537          	lui	a0,0x20000
 194:	05f5e637          	lui	a2,0x5f5e
 198:	10060613          	addi	a2,a2,256 # 5f5e100 <_sp+0x5e7db70>
 19c:	cd50                	sw	a2,28(a0)
 19e:	00080517          	auipc	a0,0x80
 1a2:	34a50513          	addi	a0,a0,842 # 804e8 <errno>
 1a6:	00080617          	auipc	a2,0x80
 1aa:	3de60613          	addi	a2,a2,990 # 80584 <__BSS_END__>
 1ae:	8e09                	sub	a2,a2,a0
 1b0:	4581                	li	a1,0
 1b2:	3bf000ef          	jal	ra,d70 <memset>
 1b6:	00000517          	auipc	a0,0x0
 1ba:	e4a50513          	addi	a0,a0,-438 # 0 <__vector_start>
 1be:	00156513          	ori	a0,a0,1
 1c2:	30551073          	csrw	mtvec,a0
 1c6:	00001517          	auipc	a0,0x1
 1ca:	b0a50513          	addi	a0,a0,-1270 # cd0 <__libc_fini_array>
 1ce:	2f9000ef          	jal	ra,cc6 <atexit>
 1d2:	339000ef          	jal	ra,d0a <__libc_init_array>
 1d6:	4502                	lw	a0,0(sp)
 1d8:	004c                	addi	a1,sp,4
 1da:	4601                	li	a2,0
 1dc:	038000ef          	jal	ra,214 <main>
 1e0:	00c0006f          	j	1ec <exit>

000001e4 <_init>:
 1e4:	304000ef          	jal	ra,4e8 <init>

000001e8 <_fini>:
 1e8:	8082                	ret

Disassembly of section .text:

000001ec <exit>:
     1ec:	1141                	addi	sp,sp,-16
     1ee:	6785                	lui	a5,0x1
     1f0:	c422                	sw	s0,8(sp)
     1f2:	c606                	sw	ra,12(sp)
     1f4:	1c278793          	addi	a5,a5,450 # 11c2 <__call_exitprocs>
     1f8:	842a                	mv	s0,a0
     1fa:	c781                	beqz	a5,202 <exit+0x16>
     1fc:	4581                	li	a1,0
     1fe:	7c5000ef          	jal	ra,11c2 <__call_exitprocs>
     202:	000807b7          	lui	a5,0x80
     206:	4d87a503          	lw	a0,1240(a5) # 804d8 <_global_impure_ptr>
     20a:	551c                	lw	a5,40(a0)
     20c:	c391                	beqz	a5,210 <exit+0x24>
     20e:	9782                	jalr	a5
     210:	8522                	mv	a0,s0
     212:	2cf9                	jal	4f0 <_exit>

00000214 <main>:
     214:	00080537          	lui	a0,0x80
     218:	7161                	addi	sp,sp,-432
     21a:	0d450513          	addi	a0,a0,212 # 800d4 <no_exception_handler_msg+0x3f>
     21e:	1a112623          	sw	ra,428(sp)
     222:	1a912423          	sw	s1,424(sp)
     226:	1b212223          	sw	s2,420(sp)
     22a:	1b312023          	sw	s3,416(sp)
     22e:	19412e23          	sw	s4,412(sp)
     232:	19512c23          	sw	s5,408(sp)
     236:	19612a23          	sw	s6,404(sp)
     23a:	19712823          	sw	s7,400(sp)
     23e:	421000ef          	jal	ra,e5e <puts>
     242:	4785                	li	a5,1
     244:	3207b073          	csrc	mcountinhibit,a5
     248:	4781                	li	a5,0
     24a:	b0079073          	csrw	mcycle,a5
     24e:	75fd                	lui	a1,0xfffff
     250:	01a4                	addi	s1,sp,200
     252:	2ff58813          	addi	a6,a1,767 # fffff2ff <_sp+0xfff1ed6f>
     256:	8626                	mv	a2,s1
     258:	4701                	li	a4,0
     25a:	4681                	li	a3,0
     25c:	30158593          	addi	a1,a1,769
     260:	06400513          	li	a0,100
     264:	01071793          	slli	a5,a4,0x10
     268:	87c1                	srai	a5,a5,0x10
     26a:	030787b3          	mul	a5,a5,a6
     26e:	972e                	add	a4,a4,a1
     270:	0609                	addi	a2,a2,2
     272:	0742                	slli	a4,a4,0x10
     274:	8341                	srli	a4,a4,0x10
     276:	97b6                	add	a5,a5,a3
     278:	87c1                	srai	a5,a5,0x10
     27a:	fef61f23          	sh	a5,-2(a2)
     27e:	0685                	addi	a3,a3,1
     280:	fea692e3          	bne	a3,a0,264 <main+0x50>
     284:	b00025f3          	csrr	a1,mcycle
     288:	00080937          	lui	s2,0x80
     28c:	0e490513          	addi	a0,s2,228 # 800e4 <no_exception_handler_msg+0x4f>
     290:	14b010ef          	jal	ra,1bda <iprintf>
     294:	4781                	li	a5,0
     296:	b0079073          	csrw	mcycle,a5
     29a:	06400613          	li	a2,100
     29e:	0407b68b          	0x407b68b
     2a2:	00179713          	slli	a4,a5,0x1
     2a6:	19070713          	addi	a4,a4,400
     2aa:	970a                	add	a4,a4,sp
     2ac:	e6d71823          	sh	a3,-400(a4)
     2b0:	0785                	addi	a5,a5,1
     2b2:	fec796e3          	bne	a5,a2,29e <main+0x8a>
     2b6:	b00025f3          	csrr	a1,mcycle
     2ba:	0e490513          	addi	a0,s2,228
     2be:	11d010ef          	jal	ra,1bda <iprintf>
     2c2:	8a0a                	mv	s4,sp
     2c4:	0c848b93          	addi	s7,s1,200
     2c8:	4b01                	li	s6,0
     2ca:	00080ab7          	lui	s5,0x80
     2ce:	a039                	j	2dc <main+0xc8>
     2d0:	0489                	addi	s1,s1,2
     2d2:	109010ef          	jal	ra,1bda <iprintf>
     2d6:	0a09                	addi	s4,s4,2
     2d8:	03748763          	beq	s1,s7,306 <main+0xf2>
     2dc:	00049983          	lh	s3,0(s1)
     2e0:	000a1903          	lh	s2,0(s4)
     2e4:	0f4a8513          	addi	a0,s5,244 # 800f4 <no_exception_handler_msg+0x5f>
     2e8:	85ce                	mv	a1,s3
     2ea:	864a                	mv	a2,s2
     2ec:	0ef010ef          	jal	ra,1bda <iprintf>
     2f0:	864a                	mv	a2,s2
     2f2:	85ce                	mv	a1,s3
     2f4:	0f4a8513          	addi	a0,s5,244
     2f8:	fd299ce3          	bne	s3,s2,2d0 <main+0xbc>
     2fc:	0489                	addi	s1,s1,2
     2fe:	0b05                	addi	s6,s6,1
     300:	0a09                	addi	s4,s4,2
     302:	fd749de3          	bne	s1,s7,2dc <main+0xc8>
     306:	00080537          	lui	a0,0x80
     30a:	85da                	mv	a1,s6
     30c:	11050513          	addi	a0,a0,272 # 80110 <no_exception_handler_msg+0x7b>
     310:	0cb010ef          	jal	ra,1bda <iprintf>
     314:	1ac12083          	lw	ra,428(sp)
     318:	1a812483          	lw	s1,424(sp)
     31c:	1a412903          	lw	s2,420(sp)
     320:	1a012983          	lw	s3,416(sp)
     324:	19c12a03          	lw	s4,412(sp)
     328:	19812a83          	lw	s5,408(sp)
     32c:	19412b03          	lw	s6,404(sp)
     330:	19012b83          	lw	s7,400(sp)
     334:	4501                	li	a0,0
     336:	615d                	addi	sp,sp,432
     338:	8082                	ret

0000033a <__no_irq_handler>:
     33a:	00080517          	auipc	a0,0x80
     33e:	d5b50513          	addi	a0,a0,-677 # 80095 <no_exception_handler_msg>
     342:	31d000ef          	jal	ra,e5e <puts>
     346:	ff5ff06f          	j	33a <__no_irq_handler>

0000034a <sw_irq_handler>:
     34a:	342022f3          	csrr	t0,mcause
     34e:	00129293          	slli	t0,t0,0x1
     352:	0012d293          	srli	t0,t0,0x1
     356:	00200313          	li	t1,2
     35a:	02628c63          	beq	t0,t1,392 <handle_illegal_insn>
     35e:	00b00313          	li	t1,11
     362:	00628863          	beq	t0,t1,372 <handle_ecall>
     366:	00300313          	li	t1,3
     36a:	00628c63          	beq	t0,t1,382 <handle_ebreak>
     36e:	0340006f          	j	3a2 <handle_unknown>

00000372 <handle_ecall>:
     372:	00080517          	auipc	a0,0x80
     376:	cbd50513          	addi	a0,a0,-835 # 8002f <ecall_msg>
     37a:	2e5000ef          	jal	ra,e5e <puts>
     37e:	0340006f          	j	3b2 <end_handler>

00000382 <handle_ebreak>:
     382:	00080517          	auipc	a0,0x80
     386:	cce50513          	addi	a0,a0,-818 # 80050 <ebreak_msg>
     38a:	2d5000ef          	jal	ra,e5e <puts>
     38e:	0240006f          	j	3b2 <end_handler>

00000392 <handle_illegal_insn>:
     392:	00080517          	auipc	a0,0x80
     396:	c6e50513          	addi	a0,a0,-914 # 80000 <illegal_insn_msg>
     39a:	2c5000ef          	jal	ra,e5e <puts>
     39e:	0140006f          	j	3b2 <end_handler>

000003a2 <handle_unknown>:
     3a2:	00080517          	auipc	a0,0x80
     3a6:	cd050513          	addi	a0,a0,-816 # 80072 <unknown_msg>
     3aa:	2b5000ef          	jal	ra,e5e <puts>
     3ae:	0040006f          	j	3b2 <end_handler>

000003b2 <end_handler>:
     3b2:	34102573          	csrr	a0,mepc
     3b6:	00450513          	addi	a0,a0,4
     3ba:	34151073          	csrw	mepc,a0
     3be:	30200073          	mret

000003c2 <verification_irq_handler>:
     3c2:	30200073          	mret

000003c6 <handler_irq_uart>:
     3c6:	1101                	addi	sp,sp,-32
     3c8:	ce22                	sw	s0,28(sp)
     3ca:	1000                	addi	s0,sp,32
     3cc:	fea42623          	sw	a0,-20(s0)
     3d0:	0001                	nop
     3d2:	4472                	lw	s0,28(sp)
     3d4:	6105                	addi	sp,sp,32
     3d6:	8082                	ret

000003d8 <handler_irq_dummy>:
     3d8:	1101                	addi	sp,sp,-32
     3da:	ce22                	sw	s0,28(sp)
     3dc:	1000                	addi	s0,sp,32
     3de:	fea42623          	sw	a0,-20(s0)
     3e2:	0001                	nop
     3e4:	4472                	lw	s0,28(sp)
     3e6:	6105                	addi	sp,sp,32
     3e8:	8082                	ret

000003ea <gpio_handler_irq_dummy>:
     3ea:	1101                	addi	sp,sp,-32
     3ec:	ce22                	sw	s0,28(sp)
     3ee:	1000                	addi	s0,sp,32
     3f0:	fea42623          	sw	a0,-20(s0)
     3f4:	0001                	nop
     3f6:	4472                	lw	s0,28(sp)
     3f8:	6105                	addi	sp,sp,32
     3fa:	8082                	ret

000003fc <handler_irq_i2c>:
     3fc:	1101                	addi	sp,sp,-32
     3fe:	ce22                	sw	s0,28(sp)
     400:	1000                	addi	s0,sp,32
     402:	fea42623          	sw	a0,-20(s0)
     406:	fec42503          	lw	a0,-20(s0)
     40a:	4472                	lw	s0,28(sp)
     40c:	6105                	addi	sp,sp,32
     40e:	bf65                	j	3c6 <handler_irq_uart>

00000410 <fic_irq_timer_1>:
     410:	1141                	addi	sp,sp,-16
     412:	c622                	sw	s0,12(sp)
     414:	0800                	addi	s0,sp,16
     416:	0001                	nop
     418:	4432                	lw	s0,12(sp)
     41a:	0141                	addi	sp,sp,16
     41c:	8082                	ret

0000041e <fic_irq_timer_2>:
     41e:	1141                	addi	sp,sp,-16
     420:	c622                	sw	s0,12(sp)
     422:	0800                	addi	s0,sp,16
     424:	4432                	lw	s0,12(sp)
     426:	0141                	addi	sp,sp,16
     428:	b7e5                	j	410 <fic_irq_timer_1>

0000042a <fic_irq_timer_3>:
     42a:	1141                	addi	sp,sp,-16
     42c:	c622                	sw	s0,12(sp)
     42e:	0800                	addi	s0,sp,16
     430:	4432                	lw	s0,12(sp)
     432:	0141                	addi	sp,sp,16
     434:	bff1                	j	410 <fic_irq_timer_1>

00000436 <fic_irq_spi>:
     436:	1141                	addi	sp,sp,-16
     438:	c622                	sw	s0,12(sp)
     43a:	0800                	addi	s0,sp,16
     43c:	4432                	lw	s0,12(sp)
     43e:	0141                	addi	sp,sp,16
     440:	bfc1                	j	410 <fic_irq_timer_1>

00000442 <fic_irq_spi_flash>:
     442:	1141                	addi	sp,sp,-16
     444:	c622                	sw	s0,12(sp)
     446:	0800                	addi	s0,sp,16
     448:	4432                	lw	s0,12(sp)
     44a:	0141                	addi	sp,sp,16
     44c:	b7d1                	j	410 <fic_irq_timer_1>

0000044e <fic_irq_gpio_0>:
     44e:	1141                	addi	sp,sp,-16
     450:	c622                	sw	s0,12(sp)
     452:	0800                	addi	s0,sp,16
     454:	4432                	lw	s0,12(sp)
     456:	0141                	addi	sp,sp,16
     458:	bf65                	j	410 <fic_irq_timer_1>

0000045a <fic_irq_gpio_1>:
     45a:	1141                	addi	sp,sp,-16
     45c:	c622                	sw	s0,12(sp)
     45e:	0800                	addi	s0,sp,16
     460:	4432                	lw	s0,12(sp)
     462:	0141                	addi	sp,sp,16
     464:	b775                	j	410 <fic_irq_timer_1>

00000466 <fic_irq_gpio_2>:
     466:	1141                	addi	sp,sp,-16
     468:	c622                	sw	s0,12(sp)
     46a:	0800                	addi	s0,sp,16
     46c:	4432                	lw	s0,12(sp)
     46e:	0141                	addi	sp,sp,16
     470:	b745                	j	410 <fic_irq_timer_1>

00000472 <fic_irq_gpio_3>:
     472:	1141                	addi	sp,sp,-16
     474:	c622                	sw	s0,12(sp)
     476:	0800                	addi	s0,sp,16
     478:	4432                	lw	s0,12(sp)
     47a:	0141                	addi	sp,sp,16
     47c:	bf51                	j	410 <fic_irq_timer_1>

0000047e <fic_irq_gpio_4>:
     47e:	1141                	addi	sp,sp,-16
     480:	c622                	sw	s0,12(sp)
     482:	0800                	addi	s0,sp,16
     484:	4432                	lw	s0,12(sp)
     486:	0141                	addi	sp,sp,16
     488:	b761                	j	410 <fic_irq_timer_1>

0000048a <fic_irq_gpio_5>:
     48a:	1141                	addi	sp,sp,-16
     48c:	c622                	sw	s0,12(sp)
     48e:	0800                	addi	s0,sp,16
     490:	4432                	lw	s0,12(sp)
     492:	0141                	addi	sp,sp,16
     494:	bfb5                	j	410 <fic_irq_timer_1>

00000496 <fic_irq_gpio_6>:
     496:	1141                	addi	sp,sp,-16
     498:	c622                	sw	s0,12(sp)
     49a:	0800                	addi	s0,sp,16
     49c:	4432                	lw	s0,12(sp)
     49e:	0141                	addi	sp,sp,16
     4a0:	bf85                	j	410 <fic_irq_timer_1>

000004a2 <fic_irq_gpio_7>:
     4a2:	1141                	addi	sp,sp,-16
     4a4:	c622                	sw	s0,12(sp)
     4a6:	0800                	addi	s0,sp,16
     4a8:	4432                	lw	s0,12(sp)
     4aa:	0141                	addi	sp,sp,16
     4ac:	b795                	j	410 <fic_irq_timer_1>

000004ae <handler_irq_spi>:
     4ae:	1101                	addi	sp,sp,-32
     4b0:	ce22                	sw	s0,28(sp)
     4b2:	1000                	addi	s0,sp,32
     4b4:	fea42623          	sw	a0,-20(s0)
     4b8:	fec42503          	lw	a0,-20(s0)
     4bc:	4472                	lw	s0,28(sp)
     4be:	6105                	addi	sp,sp,32
     4c0:	b719                	j	3c6 <handler_irq_uart>

000004c2 <dma_intr_handler_trans_done>:
     4c2:	8082                	ret

000004c4 <print_exc_msg>:
     4c4:	85aa                	mv	a1,a0
     4c6:	00080537          	lui	a0,0x80
     4ca:	1141                	addi	sp,sp,-16
     4cc:	0b850513          	addi	a0,a0,184 # 800b8 <no_exception_handler_msg+0x23>
     4d0:	c606                	sw	ra,12(sp)
     4d2:	708010ef          	jal	ra,1bda <iprintf>
     4d6:	343025f3          	csrr	a1,mtval
     4da:	00080537          	lui	a0,0x80
     4de:	0bc50513          	addi	a0,a0,188 # 800bc <no_exception_handler_msg+0x27>
     4e2:	6f8010ef          	jal	ra,1bda <iprintf>
     4e6:	a001                	j	4e6 <print_exc_msg+0x22>

000004e8 <init>:
     4e8:	4501                	li	a0,0
     4ea:	8082                	ret

000004ec <_close>:
     4ec:	557d                	li	a0,-1
     4ee:	8082                	ret

000004f0 <_exit>:
     4f0:	200007b7          	lui	a5,0x20000
     4f4:	c3c8                	sw	a0,4(a5)
     4f6:	4705                	li	a4,1
     4f8:	00e78023          	sb	a4,0(a5) # 20000000 <_sp+0x1ff1fa70>
     4fc:	10500073          	wfi

00000500 <_fstat>:
     500:	6789                	lui	a5,0x2
     502:	c1dc                	sw	a5,4(a1)
     504:	4501                	li	a0,0
     506:	8082                	ret

00000508 <_isatty>:
     508:	157d                	addi	a0,a0,-1
     50a:	00153513          	seqz	a0,a0
     50e:	8082                	ret

00000510 <_lseek>:
     510:	4501                	li	a0,0
     512:	8082                	ret

00000514 <_read>:
     514:	4501                	li	a0,0
     516:	8082                	ret

00000518 <_write>:
     518:	4785                	li	a5,1
     51a:	08f51d63          	bne	a0,a5,5b4 <_write+0x9c>
     51e:	1141                	addi	sp,sp,-16
     520:	200007b7          	lui	a5,0x20000
     524:	c24a                	sw	s2,4(sp)
     526:	8932                	mv	s2,a2
     528:	4fd0                	lw	a2,28(a5)
     52a:	c606                	sw	ra,12(sp)
     52c:	c426                	sw	s1,8(sp)
     52e:	ce11                	beqz	a2,54a <_write+0x32>
     530:	84ae                	mv	s1,a1
     532:	4681                	li	a3,0
     534:	80000537          	lui	a0,0x80000
     538:	03e00593          	li	a1,62
     53c:	4d6020ef          	jal	ra,2a12 <__udivdi3>
     540:	01051793          	slli	a5,a0,0x10
     544:	83c1                	srli	a5,a5,0x10
     546:	00a78a63          	beq	a5,a0,55a <_write+0x42>
     54a:	000807b7          	lui	a5,0x80
     54e:	05800713          	li	a4,88
     552:	4ee7a423          	sw	a4,1256(a5) # 804e8 <errno>
     556:	557d                	li	a0,-1
     558:	a889                	j	5aa <_write+0x92>
     55a:	f9e5                	bnez	a1,54a <_write+0x32>
     55c:	200b0737          	lui	a4,0x200b0
     560:	00072623          	sw	zero,12(a4) # 200b000c <_sp+0x1ffcfa7c>
     564:	478d                	li	a5,3
     566:	cf5c                	sw	a5,28(a4)
     568:	02072223          	sw	zero,36(a4)
     56c:	02072623          	sw	zero,44(a4)
     570:	00072223          	sw	zero,4(a4)
     574:	01051793          	slli	a5,a0,0x10
     578:	56fd                	li	a3,-1
     57a:	c314                	sw	a3,0(a4)
     57c:	0037e793          	ori	a5,a5,3
     580:	c75c                	sw	a5,12(a4)
     582:	00072223          	sw	zero,4(a4)
     586:	02090163          	beqz	s2,5a8 <_write+0x90>
     58a:	012485b3          	add	a1,s1,s2
     58e:	0004c683          	lbu	a3,0(s1)
     592:	4b1c                	lw	a5,16(a4)
     594:	8b85                	andi	a5,a5,1
     596:	fff5                	bnez	a5,592 <_write+0x7a>
     598:	cf14                	sw	a3,24(a4)
     59a:	4b1c                	lw	a5,16(a4)
     59c:	838d                	srli	a5,a5,0x3
     59e:	8b85                	andi	a5,a5,1
     5a0:	dfed                	beqz	a5,59a <_write+0x82>
     5a2:	0485                	addi	s1,s1,1
     5a4:	fe9595e3          	bne	a1,s1,58e <_write+0x76>
     5a8:	854a                	mv	a0,s2
     5aa:	40b2                	lw	ra,12(sp)
     5ac:	44a2                	lw	s1,8(sp)
     5ae:	4912                	lw	s2,4(sp)
     5b0:	0141                	addi	sp,sp,16
     5b2:	8082                	ret
     5b4:	000807b7          	lui	a5,0x80
     5b8:	05800713          	li	a4,88
     5bc:	4ee7a423          	sw	a4,1256(a5) # 804e8 <errno>
     5c0:	557d                	li	a0,-1
     5c2:	8082                	ret

000005c4 <_sbrk>:
     5c4:	00080737          	lui	a4,0x80
     5c8:	00080637          	lui	a2,0x80
     5cc:	000b07b7          	lui	a5,0xb0
     5d0:	4dc70713          	addi	a4,a4,1244 # 804dc <brk>
     5d4:	58460613          	addi	a2,a2,1412 # 80584 <__BSS_END__>
     5d8:	58478793          	addi	a5,a5,1412 # b0584 <__heap_end>
     5dc:	86aa                	mv	a3,a0
     5de:	4308                	lw	a0,0(a4)
     5e0:	00f60b63          	beq	a2,a5,5f6 <_sbrk+0x32>
     5e4:	00d50633          	add	a2,a0,a3
     5e8:	00f67563          	bgeu	a2,a5,5f2 <_sbrk+0x2e>
     5ec:	9636                	add	a2,a2,a3
     5ee:	c310                	sw	a2,0(a4)
     5f0:	8082                	ret
     5f2:	c31c                	sw	a5,0(a4)
     5f4:	8082                	ret
     5f6:	4501                	li	a0,0
     5f8:	8082                	ret
	...

000005fc <handler_exception>:
     5fc:	7119                	addi	sp,sp,-128
     5fe:	de86                	sw	ra,124(sp)
     600:	dc96                	sw	t0,120(sp)
     602:	da9a                	sw	t1,116(sp)
     604:	d89e                	sw	t2,112(sp)
     606:	d6aa                	sw	a0,108(sp)
     608:	d4ae                	sw	a1,104(sp)
     60a:	d2b2                	sw	a2,100(sp)
     60c:	d0b6                	sw	a3,96(sp)
     60e:	ceba                	sw	a4,92(sp)
     610:	ccbe                	sw	a5,88(sp)
     612:	cac2                	sw	a6,84(sp)
     614:	c8c6                	sw	a7,80(sp)
     616:	c6f2                	sw	t3,76(sp)
     618:	c4f6                	sw	t4,72(sp)
     61a:	c2fa                	sw	t5,68(sp)
     61c:	c0fe                	sw	t6,64(sp)
     61e:	342027f3          	csrr	a5,mcause
     622:	472d                	li	a4,11
     624:	8bfd                	andi	a5,a5,31
     626:	00f76a63          	bltu	a4,a5,63a <handler_exception+0x3e>
     62a:	00080737          	lui	a4,0x80
     62e:	078a                	slli	a5,a5,0x2
     630:	22470713          	addi	a4,a4,548 # 80224 <no_exception_handler_msg+0x18f>
     634:	97ba                	add	a5,a5,a4
     636:	439c                	lw	a5,0(a5)
     638:	8782                	jr	a5
     63a:	a001                	j	63a <handler_exception+0x3e>
     63c:	00080537          	lui	a0,0x80
     640:	12050513          	addi	a0,a0,288 # 80120 <no_exception_handler_msg+0x8b>
     644:	01b000ef          	jal	ra,e5e <puts>
     648:	a001                	j	648 <handler_exception+0x4c>
     64a:	000807b7          	lui	a5,0x80
     64e:	14078793          	addi	a5,a5,320 # 80140 <no_exception_handler_msg+0xab>
     652:	0048                	addi	a0,sp,4
     654:	872a                	mv	a4,a0
     656:	03078893          	addi	a7,a5,48
     65a:	0007a803          	lw	a6,0(a5)
     65e:	43cc                	lw	a1,4(a5)
     660:	4790                	lw	a2,8(a5)
     662:	47d4                	lw	a3,12(a5)
     664:	01072023          	sw	a6,0(a4)
     668:	c34c                	sw	a1,4(a4)
     66a:	c710                	sw	a2,8(a4)
     66c:	c754                	sw	a3,12(a4)
     66e:	07c1                	addi	a5,a5,16
     670:	0741                	addi	a4,a4,16
     672:	ff1794e3          	bne	a5,a7,65a <handler_exception+0x5e>
     676:	4394                	lw	a3,0(a5)
     678:	0047c783          	lbu	a5,4(a5)
     67c:	c314                	sw	a3,0(a4)
     67e:	00f70223          	sb	a5,4(a4)
     682:	3589                	jal	4c4 <print_exc_msg>
     684:	000807b7          	lui	a5,0x80
     688:	14078793          	addi	a5,a5,320 # 80140 <no_exception_handler_msg+0xab>
     68c:	0048                	addi	a0,sp,4
     68e:	872a                	mv	a4,a0
     690:	03078893          	addi	a7,a5,48
     694:	0007a803          	lw	a6,0(a5)
     698:	43cc                	lw	a1,4(a5)
     69a:	4790                	lw	a2,8(a5)
     69c:	47d4                	lw	a3,12(a5)
     69e:	01072023          	sw	a6,0(a4)
     6a2:	c34c                	sw	a1,4(a4)
     6a4:	c710                	sw	a2,8(a4)
     6a6:	c754                	sw	a3,12(a4)
     6a8:	07c1                	addi	a5,a5,16
     6aa:	0741                	addi	a4,a4,16
     6ac:	ff1794e3          	bne	a5,a7,694 <handler_exception+0x98>
     6b0:	b7d9                	j	676 <handler_exception+0x7a>
     6b2:	000807b7          	lui	a5,0x80
     6b6:	17878793          	addi	a5,a5,376 # 80178 <no_exception_handler_msg+0xe3>
     6ba:	0048                	addi	a0,sp,4
     6bc:	872a                	mv	a4,a0
     6be:	03c78313          	addi	t1,a5,60
     6c2:	0007a883          	lw	a7,0(a5)
     6c6:	0047a803          	lw	a6,4(a5)
     6ca:	478c                	lw	a1,8(a5)
     6cc:	47d0                	lw	a2,12(a5)
     6ce:	4b94                	lw	a3,16(a5)
     6d0:	01172023          	sw	a7,0(a4)
     6d4:	01072223          	sw	a6,4(a4)
     6d8:	c70c                	sw	a1,8(a4)
     6da:	c750                	sw	a2,12(a4)
     6dc:	cb14                	sw	a3,16(a4)
     6de:	07d1                	addi	a5,a5,20
     6e0:	0751                	addi	a4,a4,20
     6e2:	fe6790e3          	bne	a5,t1,6c2 <handler_exception+0xc6>
     6e6:	3bf9                	jal	4c4 <print_exc_msg>
     6e8:	000807b7          	lui	a5,0x80
     6ec:	1b478793          	addi	a5,a5,436 # 801b4 <no_exception_handler_msg+0x11f>
     6f0:	0048                	addi	a0,sp,4
     6f2:	872a                	mv	a4,a0
     6f4:	03078893          	addi	a7,a5,48
     6f8:	0007a803          	lw	a6,0(a5)
     6fc:	43cc                	lw	a1,4(a5)
     6fe:	4790                	lw	a2,8(a5)
     700:	47d4                	lw	a3,12(a5)
     702:	01072023          	sw	a6,0(a4)
     706:	c34c                	sw	a1,4(a4)
     708:	c710                	sw	a2,8(a4)
     70a:	c754                	sw	a3,12(a4)
     70c:	07c1                	addi	a5,a5,16
     70e:	0741                	addi	a4,a4,16
     710:	ff1794e3          	bne	a5,a7,6f8 <handler_exception+0xfc>
     714:	4390                	lw	a2,0(a5)
     716:	43d4                	lw	a3,4(a5)
     718:	0087c783          	lbu	a5,8(a5)
     71c:	c310                	sw	a2,0(a4)
     71e:	c354                	sw	a3,4(a4)
     720:	00f70423          	sb	a5,8(a4)
     724:	3345                	jal	4c4 <print_exc_msg>
     726:	000807b7          	lui	a5,0x80
     72a:	1f078793          	addi	a5,a5,496 # 801f0 <no_exception_handler_msg+0x15b>
     72e:	0048                	addi	a0,sp,4
     730:	872a                	mv	a4,a0
     732:	03078893          	addi	a7,a5,48
     736:	0007a803          	lw	a6,0(a5)
     73a:	43cc                	lw	a1,4(a5)
     73c:	4790                	lw	a2,8(a5)
     73e:	47d4                	lw	a3,12(a5)
     740:	01072023          	sw	a6,0(a4)
     744:	c34c                	sw	a1,4(a4)
     746:	c710                	sw	a2,8(a4)
     748:	c754                	sw	a3,12(a4)
     74a:	07c1                	addi	a5,a5,16
     74c:	0741                	addi	a4,a4,16
     74e:	ff1794e3          	bne	a5,a7,736 <handler_exception+0x13a>
     752:	0007c783          	lbu	a5,0(a5)
     756:	00f70023          	sb	a5,0(a4)
     75a:	b771                	j	6e6 <handler_exception+0xea>
     75c:	000807b7          	lui	a5,0x80
     760:	1f078793          	addi	a5,a5,496 # 801f0 <no_exception_handler_msg+0x15b>
     764:	0048                	addi	a0,sp,4
     766:	872a                	mv	a4,a0
     768:	03078893          	addi	a7,a5,48
     76c:	0007a803          	lw	a6,0(a5)
     770:	43cc                	lw	a1,4(a5)
     772:	4790                	lw	a2,8(a5)
     774:	47d4                	lw	a3,12(a5)
     776:	01072023          	sw	a6,0(a4)
     77a:	c34c                	sw	a1,4(a4)
     77c:	c710                	sw	a2,8(a4)
     77e:	c754                	sw	a3,12(a4)
     780:	07c1                	addi	a5,a5,16
     782:	0741                	addi	a4,a4,16
     784:	ff1794e3          	bne	a5,a7,76c <handler_exception+0x170>
     788:	b7e9                	j	752 <handler_exception+0x156>
	...

0000078c <handler_irq_software>:
     78c:	7139                	addi	sp,sp,-64
     78e:	d62a                	sw	a0,44(sp)
     790:	00080537          	lui	a0,0x80
     794:	25450513          	addi	a0,a0,596 # 80254 <no_exception_handler_msg+0x1bf>
     798:	de06                	sw	ra,60(sp)
     79a:	dc16                	sw	t0,56(sp)
     79c:	da1a                	sw	t1,52(sp)
     79e:	d81e                	sw	t2,48(sp)
     7a0:	d42e                	sw	a1,40(sp)
     7a2:	d232                	sw	a2,36(sp)
     7a4:	d036                	sw	a3,32(sp)
     7a6:	ce3a                	sw	a4,28(sp)
     7a8:	cc3e                	sw	a5,24(sp)
     7aa:	ca42                	sw	a6,20(sp)
     7ac:	c846                	sw	a7,16(sp)
     7ae:	c672                	sw	t3,12(sp)
     7b0:	c476                	sw	t4,8(sp)
     7b2:	c27a                	sw	t5,4(sp)
     7b4:	c07e                	sw	t6,0(sp)
     7b6:	2565                	jal	e5e <puts>
     7b8:	a001                	j	7b8 <handler_irq_software+0x2c>
	...

000007bc <handler_irq_timer>:
     7bc:	7139                	addi	sp,sp,-64
     7be:	d62a                	sw	a0,44(sp)
     7c0:	00080537          	lui	a0,0x80
     7c4:	26c50513          	addi	a0,a0,620 # 8026c <no_exception_handler_msg+0x1d7>
     7c8:	de06                	sw	ra,60(sp)
     7ca:	dc16                	sw	t0,56(sp)
     7cc:	da1a                	sw	t1,52(sp)
     7ce:	d81e                	sw	t2,48(sp)
     7d0:	d42e                	sw	a1,40(sp)
     7d2:	d232                	sw	a2,36(sp)
     7d4:	d036                	sw	a3,32(sp)
     7d6:	ce3a                	sw	a4,28(sp)
     7d8:	cc3e                	sw	a5,24(sp)
     7da:	ca42                	sw	a6,20(sp)
     7dc:	c846                	sw	a7,16(sp)
     7de:	c672                	sw	t3,12(sp)
     7e0:	c476                	sw	t4,8(sp)
     7e2:	c27a                	sw	t5,4(sp)
     7e4:	c07e                	sw	t6,0(sp)
     7e6:	2da5                	jal	e5e <puts>
     7e8:	a001                	j	7e8 <handler_irq_timer+0x2c>
	...

000007ec <handler_irq_external>:
     7ec:	715d                	addi	sp,sp,-80
     7ee:	de26                	sw	s1,60(sp)
     7f0:	300004b7          	lui	s1,0x30000
     7f4:	cc4a                	sw	s2,24(sp)
     7f6:	20c4a903          	lw	s2,524(s1) # 3000020c <_sp+0x2ff1fc7c>
     7fa:	dc2a                	sw	a0,56(sp)
     7fc:	d23e                	sw	a5,36(sp)
     7fe:	c686                	sw	ra,76(sp)
     800:	c496                	sw	t0,72(sp)
     802:	c29a                	sw	t1,68(sp)
     804:	c09e                	sw	t2,64(sp)
     806:	da2e                	sw	a1,52(sp)
     808:	d832                	sw	a2,48(sp)
     80a:	d636                	sw	a3,44(sp)
     80c:	d43a                	sw	a4,40(sp)
     80e:	d042                	sw	a6,32(sp)
     810:	ce46                	sw	a7,28(sp)
     812:	ca72                	sw	t3,20(sp)
     814:	c876                	sw	t4,16(sp)
     816:	c67a                	sw	t5,12(sp)
     818:	c47e                	sw	t6,8(sp)
     81a:	854a                	mv	a0,s2
     81c:	4781                	li	a5,0
     81e:	9782                	jalr	a5
     820:	2124a623          	sw	s2,524(s1)
     824:	40b6                	lw	ra,76(sp)
     826:	42a6                	lw	t0,72(sp)
     828:	4316                	lw	t1,68(sp)
     82a:	4386                	lw	t2,64(sp)
     82c:	54f2                	lw	s1,60(sp)
     82e:	5562                	lw	a0,56(sp)
     830:	55d2                	lw	a1,52(sp)
     832:	5642                	lw	a2,48(sp)
     834:	56b2                	lw	a3,44(sp)
     836:	5722                	lw	a4,40(sp)
     838:	5792                	lw	a5,36(sp)
     83a:	5802                	lw	a6,32(sp)
     83c:	48f2                	lw	a7,28(sp)
     83e:	4962                	lw	s2,24(sp)
     840:	4e52                	lw	t3,20(sp)
     842:	4ec2                	lw	t4,16(sp)
     844:	4f32                	lw	t5,12(sp)
     846:	4fa2                	lw	t6,8(sp)
     848:	6161                	addi	sp,sp,80
     84a:	30200073          	mret

0000084e <fic_irq_dma>:
     84e:	8082                	ret

00000850 <handler_irq_fast_dma>:
     850:	1141                	addi	sp,sp,-16
     852:	c63a                	sw	a4,12(sp)
     854:	c43e                	sw	a5,8(sp)
     856:	4721                	li	a4,8
     858:	200707b7          	lui	a5,0x20070
     85c:	c3d8                	sw	a4,4(a5)
     85e:	4732                	lw	a4,12(sp)
     860:	47a2                	lw	a5,8(sp)
     862:	0141                	addi	sp,sp,16
     864:	30200073          	mret
     868:	0000                	unimp
	...

0000086c <handler_irq_fast_timer_1>:
     86c:	7139                	addi	sp,sp,-64
     86e:	ce3a                	sw	a4,28(sp)
     870:	cc3e                	sw	a5,24(sp)
     872:	de06                	sw	ra,60(sp)
     874:	dc16                	sw	t0,56(sp)
     876:	da1a                	sw	t1,52(sp)
     878:	d81e                	sw	t2,48(sp)
     87a:	d62a                	sw	a0,44(sp)
     87c:	d42e                	sw	a1,40(sp)
     87e:	d232                	sw	a2,36(sp)
     880:	d036                	sw	a3,32(sp)
     882:	ca42                	sw	a6,20(sp)
     884:	c846                	sw	a7,16(sp)
     886:	c672                	sw	t3,12(sp)
     888:	c476                	sw	t4,8(sp)
     88a:	c27a                	sw	t5,4(sp)
     88c:	c07e                	sw	t6,0(sp)
     88e:	200707b7          	lui	a5,0x20070
     892:	4705                	li	a4,1
     894:	c3d8                	sw	a4,4(a5)
     896:	3ead                	jal	410 <fic_irq_timer_1>
     898:	50f2                	lw	ra,60(sp)
     89a:	52e2                	lw	t0,56(sp)
     89c:	5352                	lw	t1,52(sp)
     89e:	53c2                	lw	t2,48(sp)
     8a0:	5532                	lw	a0,44(sp)
     8a2:	55a2                	lw	a1,40(sp)
     8a4:	5612                	lw	a2,36(sp)
     8a6:	5682                	lw	a3,32(sp)
     8a8:	4772                	lw	a4,28(sp)
     8aa:	47e2                	lw	a5,24(sp)
     8ac:	4852                	lw	a6,20(sp)
     8ae:	48c2                	lw	a7,16(sp)
     8b0:	4e32                	lw	t3,12(sp)
     8b2:	4ea2                	lw	t4,8(sp)
     8b4:	4f12                	lw	t5,4(sp)
     8b6:	4f82                	lw	t6,0(sp)
     8b8:	6121                	addi	sp,sp,64
     8ba:	30200073          	mret
	...

000008c0 <handler_irq_fast_timer_2>:
     8c0:	7139                	addi	sp,sp,-64
     8c2:	ce3a                	sw	a4,28(sp)
     8c4:	cc3e                	sw	a5,24(sp)
     8c6:	de06                	sw	ra,60(sp)
     8c8:	dc16                	sw	t0,56(sp)
     8ca:	da1a                	sw	t1,52(sp)
     8cc:	d81e                	sw	t2,48(sp)
     8ce:	d62a                	sw	a0,44(sp)
     8d0:	d42e                	sw	a1,40(sp)
     8d2:	d232                	sw	a2,36(sp)
     8d4:	d036                	sw	a3,32(sp)
     8d6:	ca42                	sw	a6,20(sp)
     8d8:	c846                	sw	a7,16(sp)
     8da:	c672                	sw	t3,12(sp)
     8dc:	c476                	sw	t4,8(sp)
     8de:	c27a                	sw	t5,4(sp)
     8e0:	c07e                	sw	t6,0(sp)
     8e2:	200707b7          	lui	a5,0x20070
     8e6:	4709                	li	a4,2
     8e8:	c3d8                	sw	a4,4(a5)
     8ea:	361d                	jal	410 <fic_irq_timer_1>
     8ec:	50f2                	lw	ra,60(sp)
     8ee:	52e2                	lw	t0,56(sp)
     8f0:	5352                	lw	t1,52(sp)
     8f2:	53c2                	lw	t2,48(sp)
     8f4:	5532                	lw	a0,44(sp)
     8f6:	55a2                	lw	a1,40(sp)
     8f8:	5612                	lw	a2,36(sp)
     8fa:	5682                	lw	a3,32(sp)
     8fc:	4772                	lw	a4,28(sp)
     8fe:	47e2                	lw	a5,24(sp)
     900:	4852                	lw	a6,20(sp)
     902:	48c2                	lw	a7,16(sp)
     904:	4e32                	lw	t3,12(sp)
     906:	4ea2                	lw	t4,8(sp)
     908:	4f12                	lw	t5,4(sp)
     90a:	4f82                	lw	t6,0(sp)
     90c:	6121                	addi	sp,sp,64
     90e:	30200073          	mret
	...

00000914 <handler_irq_fast_timer_3>:
     914:	7139                	addi	sp,sp,-64
     916:	ce3a                	sw	a4,28(sp)
     918:	cc3e                	sw	a5,24(sp)
     91a:	de06                	sw	ra,60(sp)
     91c:	dc16                	sw	t0,56(sp)
     91e:	da1a                	sw	t1,52(sp)
     920:	d81e                	sw	t2,48(sp)
     922:	d62a                	sw	a0,44(sp)
     924:	d42e                	sw	a1,40(sp)
     926:	d232                	sw	a2,36(sp)
     928:	d036                	sw	a3,32(sp)
     92a:	ca42                	sw	a6,20(sp)
     92c:	c846                	sw	a7,16(sp)
     92e:	c672                	sw	t3,12(sp)
     930:	c476                	sw	t4,8(sp)
     932:	c27a                	sw	t5,4(sp)
     934:	c07e                	sw	t6,0(sp)
     936:	200707b7          	lui	a5,0x20070
     93a:	4711                	li	a4,4
     93c:	c3d8                	sw	a4,4(a5)
     93e:	3cc9                	jal	410 <fic_irq_timer_1>
     940:	50f2                	lw	ra,60(sp)
     942:	52e2                	lw	t0,56(sp)
     944:	5352                	lw	t1,52(sp)
     946:	53c2                	lw	t2,48(sp)
     948:	5532                	lw	a0,44(sp)
     94a:	55a2                	lw	a1,40(sp)
     94c:	5612                	lw	a2,36(sp)
     94e:	5682                	lw	a3,32(sp)
     950:	4772                	lw	a4,28(sp)
     952:	47e2                	lw	a5,24(sp)
     954:	4852                	lw	a6,20(sp)
     956:	48c2                	lw	a7,16(sp)
     958:	4e32                	lw	t3,12(sp)
     95a:	4ea2                	lw	t4,8(sp)
     95c:	4f12                	lw	t5,4(sp)
     95e:	4f82                	lw	t6,0(sp)
     960:	6121                	addi	sp,sp,64
     962:	30200073          	mret
	...

00000968 <handler_irq_fast_spi>:
     968:	7139                	addi	sp,sp,-64
     96a:	ce3a                	sw	a4,28(sp)
     96c:	cc3e                	sw	a5,24(sp)
     96e:	de06                	sw	ra,60(sp)
     970:	dc16                	sw	t0,56(sp)
     972:	da1a                	sw	t1,52(sp)
     974:	d81e                	sw	t2,48(sp)
     976:	d62a                	sw	a0,44(sp)
     978:	d42e                	sw	a1,40(sp)
     97a:	d232                	sw	a2,36(sp)
     97c:	d036                	sw	a3,32(sp)
     97e:	ca42                	sw	a6,20(sp)
     980:	c846                	sw	a7,16(sp)
     982:	c672                	sw	t3,12(sp)
     984:	c476                	sw	t4,8(sp)
     986:	c27a                	sw	t5,4(sp)
     988:	c07e                	sw	t6,0(sp)
     98a:	200707b7          	lui	a5,0x20070
     98e:	4741                	li	a4,16
     990:	c3d8                	sw	a4,4(a5)
     992:	3cbd                	jal	410 <fic_irq_timer_1>
     994:	50f2                	lw	ra,60(sp)
     996:	52e2                	lw	t0,56(sp)
     998:	5352                	lw	t1,52(sp)
     99a:	53c2                	lw	t2,48(sp)
     99c:	5532                	lw	a0,44(sp)
     99e:	55a2                	lw	a1,40(sp)
     9a0:	5612                	lw	a2,36(sp)
     9a2:	5682                	lw	a3,32(sp)
     9a4:	4772                	lw	a4,28(sp)
     9a6:	47e2                	lw	a5,24(sp)
     9a8:	4852                	lw	a6,20(sp)
     9aa:	48c2                	lw	a7,16(sp)
     9ac:	4e32                	lw	t3,12(sp)
     9ae:	4ea2                	lw	t4,8(sp)
     9b0:	4f12                	lw	t5,4(sp)
     9b2:	4f82                	lw	t6,0(sp)
     9b4:	6121                	addi	sp,sp,64
     9b6:	30200073          	mret
	...

000009bc <handler_irq_fast_spi_flash>:
     9bc:	7139                	addi	sp,sp,-64
     9be:	ce3a                	sw	a4,28(sp)
     9c0:	cc3e                	sw	a5,24(sp)
     9c2:	de06                	sw	ra,60(sp)
     9c4:	dc16                	sw	t0,56(sp)
     9c6:	da1a                	sw	t1,52(sp)
     9c8:	d81e                	sw	t2,48(sp)
     9ca:	d62a                	sw	a0,44(sp)
     9cc:	d42e                	sw	a1,40(sp)
     9ce:	d232                	sw	a2,36(sp)
     9d0:	d036                	sw	a3,32(sp)
     9d2:	ca42                	sw	a6,20(sp)
     9d4:	c846                	sw	a7,16(sp)
     9d6:	c672                	sw	t3,12(sp)
     9d8:	c476                	sw	t4,8(sp)
     9da:	c27a                	sw	t5,4(sp)
     9dc:	c07e                	sw	t6,0(sp)
     9de:	200707b7          	lui	a5,0x20070
     9e2:	02000713          	li	a4,32
     9e6:	c3d8                	sw	a4,4(a5)
     9e8:	3425                	jal	410 <fic_irq_timer_1>
     9ea:	50f2                	lw	ra,60(sp)
     9ec:	52e2                	lw	t0,56(sp)
     9ee:	5352                	lw	t1,52(sp)
     9f0:	53c2                	lw	t2,48(sp)
     9f2:	5532                	lw	a0,44(sp)
     9f4:	55a2                	lw	a1,40(sp)
     9f6:	5612                	lw	a2,36(sp)
     9f8:	5682                	lw	a3,32(sp)
     9fa:	4772                	lw	a4,28(sp)
     9fc:	47e2                	lw	a5,24(sp)
     9fe:	4852                	lw	a6,20(sp)
     a00:	48c2                	lw	a7,16(sp)
     a02:	4e32                	lw	t3,12(sp)
     a04:	4ea2                	lw	t4,8(sp)
     a06:	4f12                	lw	t5,4(sp)
     a08:	4f82                	lw	t6,0(sp)
     a0a:	6121                	addi	sp,sp,64
     a0c:	30200073          	mret

00000a10 <handler_irq_fast_gpio_0>:
     a10:	7139                	addi	sp,sp,-64
     a12:	ce3a                	sw	a4,28(sp)
     a14:	cc3e                	sw	a5,24(sp)
     a16:	de06                	sw	ra,60(sp)
     a18:	dc16                	sw	t0,56(sp)
     a1a:	da1a                	sw	t1,52(sp)
     a1c:	d81e                	sw	t2,48(sp)
     a1e:	d62a                	sw	a0,44(sp)
     a20:	d42e                	sw	a1,40(sp)
     a22:	d232                	sw	a2,36(sp)
     a24:	d036                	sw	a3,32(sp)
     a26:	ca42                	sw	a6,20(sp)
     a28:	c846                	sw	a7,16(sp)
     a2a:	c672                	sw	t3,12(sp)
     a2c:	c476                	sw	t4,8(sp)
     a2e:	c27a                	sw	t5,4(sp)
     a30:	c07e                	sw	t6,0(sp)
     a32:	200707b7          	lui	a5,0x20070
     a36:	04000713          	li	a4,64
     a3a:	c3d8                	sw	a4,4(a5)
     a3c:	3ad1                	jal	410 <fic_irq_timer_1>
     a3e:	50f2                	lw	ra,60(sp)
     a40:	52e2                	lw	t0,56(sp)
     a42:	5352                	lw	t1,52(sp)
     a44:	53c2                	lw	t2,48(sp)
     a46:	5532                	lw	a0,44(sp)
     a48:	55a2                	lw	a1,40(sp)
     a4a:	5612                	lw	a2,36(sp)
     a4c:	5682                	lw	a3,32(sp)
     a4e:	4772                	lw	a4,28(sp)
     a50:	47e2                	lw	a5,24(sp)
     a52:	4852                	lw	a6,20(sp)
     a54:	48c2                	lw	a7,16(sp)
     a56:	4e32                	lw	t3,12(sp)
     a58:	4ea2                	lw	t4,8(sp)
     a5a:	4f12                	lw	t5,4(sp)
     a5c:	4f82                	lw	t6,0(sp)
     a5e:	6121                	addi	sp,sp,64
     a60:	30200073          	mret

00000a64 <handler_irq_fast_gpio_1>:
     a64:	7139                	addi	sp,sp,-64
     a66:	ce3a                	sw	a4,28(sp)
     a68:	cc3e                	sw	a5,24(sp)
     a6a:	de06                	sw	ra,60(sp)
     a6c:	dc16                	sw	t0,56(sp)
     a6e:	da1a                	sw	t1,52(sp)
     a70:	d81e                	sw	t2,48(sp)
     a72:	d62a                	sw	a0,44(sp)
     a74:	d42e                	sw	a1,40(sp)
     a76:	d232                	sw	a2,36(sp)
     a78:	d036                	sw	a3,32(sp)
     a7a:	ca42                	sw	a6,20(sp)
     a7c:	c846                	sw	a7,16(sp)
     a7e:	c672                	sw	t3,12(sp)
     a80:	c476                	sw	t4,8(sp)
     a82:	c27a                	sw	t5,4(sp)
     a84:	c07e                	sw	t6,0(sp)
     a86:	200707b7          	lui	a5,0x20070
     a8a:	08000713          	li	a4,128
     a8e:	c3d8                	sw	a4,4(a5)
     a90:	3241                	jal	410 <fic_irq_timer_1>
     a92:	50f2                	lw	ra,60(sp)
     a94:	52e2                	lw	t0,56(sp)
     a96:	5352                	lw	t1,52(sp)
     a98:	53c2                	lw	t2,48(sp)
     a9a:	5532                	lw	a0,44(sp)
     a9c:	55a2                	lw	a1,40(sp)
     a9e:	5612                	lw	a2,36(sp)
     aa0:	5682                	lw	a3,32(sp)
     aa2:	4772                	lw	a4,28(sp)
     aa4:	47e2                	lw	a5,24(sp)
     aa6:	4852                	lw	a6,20(sp)
     aa8:	48c2                	lw	a7,16(sp)
     aaa:	4e32                	lw	t3,12(sp)
     aac:	4ea2                	lw	t4,8(sp)
     aae:	4f12                	lw	t5,4(sp)
     ab0:	4f82                	lw	t6,0(sp)
     ab2:	6121                	addi	sp,sp,64
     ab4:	30200073          	mret

00000ab8 <handler_irq_fast_gpio_2>:
     ab8:	7139                	addi	sp,sp,-64
     aba:	ce3a                	sw	a4,28(sp)
     abc:	cc3e                	sw	a5,24(sp)
     abe:	de06                	sw	ra,60(sp)
     ac0:	dc16                	sw	t0,56(sp)
     ac2:	da1a                	sw	t1,52(sp)
     ac4:	d81e                	sw	t2,48(sp)
     ac6:	d62a                	sw	a0,44(sp)
     ac8:	d42e                	sw	a1,40(sp)
     aca:	d232                	sw	a2,36(sp)
     acc:	d036                	sw	a3,32(sp)
     ace:	ca42                	sw	a6,20(sp)
     ad0:	c846                	sw	a7,16(sp)
     ad2:	c672                	sw	t3,12(sp)
     ad4:	c476                	sw	t4,8(sp)
     ad6:	c27a                	sw	t5,4(sp)
     ad8:	c07e                	sw	t6,0(sp)
     ada:	200707b7          	lui	a5,0x20070
     ade:	10000713          	li	a4,256
     ae2:	c3d8                	sw	a4,4(a5)
     ae4:	3235                	jal	410 <fic_irq_timer_1>
     ae6:	50f2                	lw	ra,60(sp)
     ae8:	52e2                	lw	t0,56(sp)
     aea:	5352                	lw	t1,52(sp)
     aec:	53c2                	lw	t2,48(sp)
     aee:	5532                	lw	a0,44(sp)
     af0:	55a2                	lw	a1,40(sp)
     af2:	5612                	lw	a2,36(sp)
     af4:	5682                	lw	a3,32(sp)
     af6:	4772                	lw	a4,28(sp)
     af8:	47e2                	lw	a5,24(sp)
     afa:	4852                	lw	a6,20(sp)
     afc:	48c2                	lw	a7,16(sp)
     afe:	4e32                	lw	t3,12(sp)
     b00:	4ea2                	lw	t4,8(sp)
     b02:	4f12                	lw	t5,4(sp)
     b04:	4f82                	lw	t6,0(sp)
     b06:	6121                	addi	sp,sp,64
     b08:	30200073          	mret

00000b0c <handler_irq_fast_gpio_3>:
     b0c:	7139                	addi	sp,sp,-64
     b0e:	ce3a                	sw	a4,28(sp)
     b10:	cc3e                	sw	a5,24(sp)
     b12:	de06                	sw	ra,60(sp)
     b14:	dc16                	sw	t0,56(sp)
     b16:	da1a                	sw	t1,52(sp)
     b18:	d81e                	sw	t2,48(sp)
     b1a:	d62a                	sw	a0,44(sp)
     b1c:	d42e                	sw	a1,40(sp)
     b1e:	d232                	sw	a2,36(sp)
     b20:	d036                	sw	a3,32(sp)
     b22:	ca42                	sw	a6,20(sp)
     b24:	c846                	sw	a7,16(sp)
     b26:	c672                	sw	t3,12(sp)
     b28:	c476                	sw	t4,8(sp)
     b2a:	c27a                	sw	t5,4(sp)
     b2c:	c07e                	sw	t6,0(sp)
     b2e:	200707b7          	lui	a5,0x20070
     b32:	20000713          	li	a4,512
     b36:	c3d8                	sw	a4,4(a5)
     b38:	8d9ff0ef          	jal	ra,410 <fic_irq_timer_1>
     b3c:	50f2                	lw	ra,60(sp)
     b3e:	52e2                	lw	t0,56(sp)
     b40:	5352                	lw	t1,52(sp)
     b42:	53c2                	lw	t2,48(sp)
     b44:	5532                	lw	a0,44(sp)
     b46:	55a2                	lw	a1,40(sp)
     b48:	5612                	lw	a2,36(sp)
     b4a:	5682                	lw	a3,32(sp)
     b4c:	4772                	lw	a4,28(sp)
     b4e:	47e2                	lw	a5,24(sp)
     b50:	4852                	lw	a6,20(sp)
     b52:	48c2                	lw	a7,16(sp)
     b54:	4e32                	lw	t3,12(sp)
     b56:	4ea2                	lw	t4,8(sp)
     b58:	4f12                	lw	t5,4(sp)
     b5a:	4f82                	lw	t6,0(sp)
     b5c:	6121                	addi	sp,sp,64
     b5e:	30200073          	mret
	...

00000b64 <handler_irq_fast_gpio_4>:
     b64:	7139                	addi	sp,sp,-64
     b66:	ce3a                	sw	a4,28(sp)
     b68:	cc3e                	sw	a5,24(sp)
     b6a:	de06                	sw	ra,60(sp)
     b6c:	dc16                	sw	t0,56(sp)
     b6e:	da1a                	sw	t1,52(sp)
     b70:	d81e                	sw	t2,48(sp)
     b72:	d62a                	sw	a0,44(sp)
     b74:	d42e                	sw	a1,40(sp)
     b76:	d232                	sw	a2,36(sp)
     b78:	d036                	sw	a3,32(sp)
     b7a:	ca42                	sw	a6,20(sp)
     b7c:	c846                	sw	a7,16(sp)
     b7e:	c672                	sw	t3,12(sp)
     b80:	c476                	sw	t4,8(sp)
     b82:	c27a                	sw	t5,4(sp)
     b84:	c07e                	sw	t6,0(sp)
     b86:	200707b7          	lui	a5,0x20070
     b8a:	40000713          	li	a4,1024
     b8e:	c3d8                	sw	a4,4(a5)
     b90:	881ff0ef          	jal	ra,410 <fic_irq_timer_1>
     b94:	50f2                	lw	ra,60(sp)
     b96:	52e2                	lw	t0,56(sp)
     b98:	5352                	lw	t1,52(sp)
     b9a:	53c2                	lw	t2,48(sp)
     b9c:	5532                	lw	a0,44(sp)
     b9e:	55a2                	lw	a1,40(sp)
     ba0:	5612                	lw	a2,36(sp)
     ba2:	5682                	lw	a3,32(sp)
     ba4:	4772                	lw	a4,28(sp)
     ba6:	47e2                	lw	a5,24(sp)
     ba8:	4852                	lw	a6,20(sp)
     baa:	48c2                	lw	a7,16(sp)
     bac:	4e32                	lw	t3,12(sp)
     bae:	4ea2                	lw	t4,8(sp)
     bb0:	4f12                	lw	t5,4(sp)
     bb2:	4f82                	lw	t6,0(sp)
     bb4:	6121                	addi	sp,sp,64
     bb6:	30200073          	mret
	...

00000bbc <handler_irq_fast_gpio_5>:
     bbc:	7139                	addi	sp,sp,-64
     bbe:	cc3e                	sw	a5,24(sp)
     bc0:	6785                	lui	a5,0x1
     bc2:	ce3a                	sw	a4,28(sp)
     bc4:	de06                	sw	ra,60(sp)
     bc6:	dc16                	sw	t0,56(sp)
     bc8:	da1a                	sw	t1,52(sp)
     bca:	d81e                	sw	t2,48(sp)
     bcc:	d62a                	sw	a0,44(sp)
     bce:	d42e                	sw	a1,40(sp)
     bd0:	d232                	sw	a2,36(sp)
     bd2:	d036                	sw	a3,32(sp)
     bd4:	ca42                	sw	a6,20(sp)
     bd6:	c846                	sw	a7,16(sp)
     bd8:	c672                	sw	t3,12(sp)
     bda:	c476                	sw	t4,8(sp)
     bdc:	c27a                	sw	t5,4(sp)
     bde:	c07e                	sw	t6,0(sp)
     be0:	20070737          	lui	a4,0x20070
     be4:	80078793          	addi	a5,a5,-2048 # 800 <handler_irq_external+0x14>
     be8:	c35c                	sw	a5,4(a4)
     bea:	827ff0ef          	jal	ra,410 <fic_irq_timer_1>
     bee:	50f2                	lw	ra,60(sp)
     bf0:	52e2                	lw	t0,56(sp)
     bf2:	5352                	lw	t1,52(sp)
     bf4:	53c2                	lw	t2,48(sp)
     bf6:	5532                	lw	a0,44(sp)
     bf8:	55a2                	lw	a1,40(sp)
     bfa:	5612                	lw	a2,36(sp)
     bfc:	5682                	lw	a3,32(sp)
     bfe:	4772                	lw	a4,28(sp)
     c00:	47e2                	lw	a5,24(sp)
     c02:	4852                	lw	a6,20(sp)
     c04:	48c2                	lw	a7,16(sp)
     c06:	4e32                	lw	t3,12(sp)
     c08:	4ea2                	lw	t4,8(sp)
     c0a:	4f12                	lw	t5,4(sp)
     c0c:	4f82                	lw	t6,0(sp)
     c0e:	6121                	addi	sp,sp,64
     c10:	30200073          	mret
     c14:	0000                	unimp
	...

00000c18 <handler_irq_fast_gpio_6>:
     c18:	7139                	addi	sp,sp,-64
     c1a:	ce3a                	sw	a4,28(sp)
     c1c:	cc3e                	sw	a5,24(sp)
     c1e:	de06                	sw	ra,60(sp)
     c20:	dc16                	sw	t0,56(sp)
     c22:	da1a                	sw	t1,52(sp)
     c24:	d81e                	sw	t2,48(sp)
     c26:	d62a                	sw	a0,44(sp)
     c28:	d42e                	sw	a1,40(sp)
     c2a:	d232                	sw	a2,36(sp)
     c2c:	d036                	sw	a3,32(sp)
     c2e:	ca42                	sw	a6,20(sp)
     c30:	c846                	sw	a7,16(sp)
     c32:	c672                	sw	t3,12(sp)
     c34:	c476                	sw	t4,8(sp)
     c36:	c27a                	sw	t5,4(sp)
     c38:	c07e                	sw	t6,0(sp)
     c3a:	200707b7          	lui	a5,0x20070
     c3e:	6705                	lui	a4,0x1
     c40:	c3d8                	sw	a4,4(a5)
     c42:	fceff0ef          	jal	ra,410 <fic_irq_timer_1>
     c46:	50f2                	lw	ra,60(sp)
     c48:	52e2                	lw	t0,56(sp)
     c4a:	5352                	lw	t1,52(sp)
     c4c:	53c2                	lw	t2,48(sp)
     c4e:	5532                	lw	a0,44(sp)
     c50:	55a2                	lw	a1,40(sp)
     c52:	5612                	lw	a2,36(sp)
     c54:	5682                	lw	a3,32(sp)
     c56:	4772                	lw	a4,28(sp)
     c58:	47e2                	lw	a5,24(sp)
     c5a:	4852                	lw	a6,20(sp)
     c5c:	48c2                	lw	a7,16(sp)
     c5e:	4e32                	lw	t3,12(sp)
     c60:	4ea2                	lw	t4,8(sp)
     c62:	4f12                	lw	t5,4(sp)
     c64:	4f82                	lw	t6,0(sp)
     c66:	6121                	addi	sp,sp,64
     c68:	30200073          	mret
     c6c:	0000                	unimp
	...

00000c70 <handler_irq_fast_gpio_7>:
     c70:	7139                	addi	sp,sp,-64
     c72:	ce3a                	sw	a4,28(sp)
     c74:	cc3e                	sw	a5,24(sp)
     c76:	de06                	sw	ra,60(sp)
     c78:	dc16                	sw	t0,56(sp)
     c7a:	da1a                	sw	t1,52(sp)
     c7c:	d81e                	sw	t2,48(sp)
     c7e:	d62a                	sw	a0,44(sp)
     c80:	d42e                	sw	a1,40(sp)
     c82:	d232                	sw	a2,36(sp)
     c84:	d036                	sw	a3,32(sp)
     c86:	ca42                	sw	a6,20(sp)
     c88:	c846                	sw	a7,16(sp)
     c8a:	c672                	sw	t3,12(sp)
     c8c:	c476                	sw	t4,8(sp)
     c8e:	c27a                	sw	t5,4(sp)
     c90:	c07e                	sw	t6,0(sp)
     c92:	200707b7          	lui	a5,0x20070
     c96:	6709                	lui	a4,0x2
     c98:	c3d8                	sw	a4,4(a5)
     c9a:	f76ff0ef          	jal	ra,410 <fic_irq_timer_1>
     c9e:	50f2                	lw	ra,60(sp)
     ca0:	52e2                	lw	t0,56(sp)
     ca2:	5352                	lw	t1,52(sp)
     ca4:	53c2                	lw	t2,48(sp)
     ca6:	5532                	lw	a0,44(sp)
     ca8:	55a2                	lw	a1,40(sp)
     caa:	5612                	lw	a2,36(sp)
     cac:	5682                	lw	a3,32(sp)
     cae:	4772                	lw	a4,28(sp)
     cb0:	47e2                	lw	a5,24(sp)
     cb2:	4852                	lw	a6,20(sp)
     cb4:	48c2                	lw	a7,16(sp)
     cb6:	4e32                	lw	t3,12(sp)
     cb8:	4ea2                	lw	t4,8(sp)
     cba:	4f12                	lw	t5,4(sp)
     cbc:	4f82                	lw	t6,0(sp)
     cbe:	6121                	addi	sp,sp,64
     cc0:	30200073          	mret
	...

00000cc6 <atexit>:
     cc6:	85aa                	mv	a1,a0
     cc8:	4681                	li	a3,0
     cca:	4601                	li	a2,0
     ccc:	4501                	li	a0,0
     cce:	a985                	j	113e <__register_exitproc>

00000cd0 <__libc_fini_array>:
     cd0:	1141                	addi	sp,sp,-16
     cd2:	000807b7          	lui	a5,0x80
     cd6:	c422                	sw	s0,8(sp)
     cd8:	00080437          	lui	s0,0x80
     cdc:	47878713          	addi	a4,a5,1144 # 80478 <impure_data>
     ce0:	47840413          	addi	s0,s0,1144 # 80478 <impure_data>
     ce4:	8c19                	sub	s0,s0,a4
     ce6:	c226                	sw	s1,4(sp)
     ce8:	c606                	sw	ra,12(sp)
     cea:	8409                	srai	s0,s0,0x2
     cec:	47878493          	addi	s1,a5,1144
     cf0:	e411                	bnez	s0,cfc <__libc_fini_array+0x2c>
     cf2:	40b2                	lw	ra,12(sp)
     cf4:	4422                	lw	s0,8(sp)
     cf6:	4492                	lw	s1,4(sp)
     cf8:	0141                	addi	sp,sp,16
     cfa:	8082                	ret
     cfc:	147d                	addi	s0,s0,-1
     cfe:	00241793          	slli	a5,s0,0x2
     d02:	97a6                	add	a5,a5,s1
     d04:	439c                	lw	a5,0(a5)
     d06:	9782                	jalr	a5
     d08:	b7e5                	j	cf0 <__libc_fini_array+0x20>

00000d0a <__libc_init_array>:
     d0a:	1141                	addi	sp,sp,-16
     d0c:	c422                	sw	s0,8(sp)
     d0e:	c226                	sw	s1,4(sp)
     d10:	00080437          	lui	s0,0x80
     d14:	000804b7          	lui	s1,0x80
     d18:	47848793          	addi	a5,s1,1144 # 80478 <impure_data>
     d1c:	47840413          	addi	s0,s0,1144 # 80478 <impure_data>
     d20:	8c1d                	sub	s0,s0,a5
     d22:	c04a                	sw	s2,0(sp)
     d24:	c606                	sw	ra,12(sp)
     d26:	8409                	srai	s0,s0,0x2
     d28:	47848493          	addi	s1,s1,1144
     d2c:	4901                	li	s2,0
     d2e:	02891763          	bne	s2,s0,d5c <__libc_init_array+0x52>
     d32:	000804b7          	lui	s1,0x80
     d36:	00080437          	lui	s0,0x80
     d3a:	47848793          	addi	a5,s1,1144 # 80478 <impure_data>
     d3e:	47840413          	addi	s0,s0,1144 # 80478 <impure_data>
     d42:	8c1d                	sub	s0,s0,a5
     d44:	8409                	srai	s0,s0,0x2
     d46:	47848493          	addi	s1,s1,1144
     d4a:	4901                	li	s2,0
     d4c:	00891d63          	bne	s2,s0,d66 <__libc_init_array+0x5c>
     d50:	40b2                	lw	ra,12(sp)
     d52:	4422                	lw	s0,8(sp)
     d54:	4492                	lw	s1,4(sp)
     d56:	4902                	lw	s2,0(sp)
     d58:	0141                	addi	sp,sp,16
     d5a:	8082                	ret
     d5c:	409c                	lw	a5,0(s1)
     d5e:	0905                	addi	s2,s2,1
     d60:	0491                	addi	s1,s1,4
     d62:	9782                	jalr	a5
     d64:	b7e9                	j	d2e <__libc_init_array+0x24>
     d66:	409c                	lw	a5,0(s1)
     d68:	0905                	addi	s2,s2,1
     d6a:	0491                	addi	s1,s1,4
     d6c:	9782                	jalr	a5
     d6e:	bff9                	j	d4c <__libc_init_array+0x42>

00000d70 <memset>:
     d70:	832a                	mv	t1,a0
     d72:	c611                	beqz	a2,d7e <memset+0xe>
     d74:	00b30023          	sb	a1,0(t1)
     d78:	167d                	addi	a2,a2,-1
     d7a:	0305                	addi	t1,t1,1
     d7c:	fe65                	bnez	a2,d74 <memset+0x4>
     d7e:	8082                	ret

00000d80 <_puts_r>:
     d80:	1101                	addi	sp,sp,-32
     d82:	ca26                	sw	s1,20(sp)
     d84:	c84a                	sw	s2,16(sp)
     d86:	ce06                	sw	ra,28(sp)
     d88:	cc22                	sw	s0,24(sp)
     d8a:	c64e                	sw	s3,12(sp)
     d8c:	c452                	sw	s4,8(sp)
     d8e:	84aa                	mv	s1,a0
     d90:	892e                	mv	s2,a1
     d92:	c509                	beqz	a0,d9c <_puts_r+0x1c>
     d94:	4d1c                	lw	a5,24(a0)
     d96:	e399                	bnez	a5,d9c <_puts_r+0x1c>
     d98:	77c000ef          	jal	ra,1514 <__sinit>
     d9c:	4c9c                	lw	a5,24(s1)
     d9e:	4480                	lw	s0,8(s1)
     da0:	e781                	bnez	a5,da8 <_puts_r+0x28>
     da2:	8526                	mv	a0,s1
     da4:	770000ef          	jal	ra,1514 <__sinit>
     da8:	000807b7          	lui	a5,0x80
     dac:	2a478793          	addi	a5,a5,676 # 802a4 <__sf_fake_stdin>
     db0:	02f41c63          	bne	s0,a5,de8 <_puts_r+0x68>
     db4:	40c0                	lw	s0,4(s1)
     db6:	00c45783          	lhu	a5,12(s0)
     dba:	8ba1                	andi	a5,a5,8
     dbc:	c7b1                	beqz	a5,e08 <_puts_r+0x88>
     dbe:	481c                	lw	a5,16(s0)
     dc0:	c7a1                	beqz	a5,e08 <_puts_r+0x88>
     dc2:	59fd                	li	s3,-1
     dc4:	4a29                	li	s4,10
     dc6:	441c                	lw	a5,8(s0)
     dc8:	00094583          	lbu	a1,0(s2)
     dcc:	17fd                	addi	a5,a5,-1
     dce:	e9b1                	bnez	a1,e22 <_puts_r+0xa2>
     dd0:	c41c                	sw	a5,8(s0)
     dd2:	0607de63          	bgez	a5,e4e <_puts_r+0xce>
     dd6:	8622                	mv	a2,s0
     dd8:	45a9                	li	a1,10
     dda:	8526                	mv	a0,s1
     ddc:	2261                	jal	f64 <__swbuf_r>
     dde:	57fd                	li	a5,-1
     de0:	02f50863          	beq	a0,a5,e10 <_puts_r+0x90>
     de4:	4529                	li	a0,10
     de6:	a035                	j	e12 <_puts_r+0x92>
     de8:	000807b7          	lui	a5,0x80
     dec:	2c478793          	addi	a5,a5,708 # 802c4 <__sf_fake_stdout>
     df0:	00f41463          	bne	s0,a5,df8 <_puts_r+0x78>
     df4:	4480                	lw	s0,8(s1)
     df6:	b7c1                	j	db6 <_puts_r+0x36>
     df8:	000807b7          	lui	a5,0x80
     dfc:	28478793          	addi	a5,a5,644 # 80284 <__sf_fake_stderr>
     e00:	faf41be3          	bne	s0,a5,db6 <_puts_r+0x36>
     e04:	44c0                	lw	s0,12(s1)
     e06:	bf45                	j	db6 <_puts_r+0x36>
     e08:	85a2                	mv	a1,s0
     e0a:	8526                	mv	a0,s1
     e0c:	241d                	jal	1032 <__swsetup_r>
     e0e:	d955                	beqz	a0,dc2 <_puts_r+0x42>
     e10:	557d                	li	a0,-1
     e12:	40f2                	lw	ra,28(sp)
     e14:	4462                	lw	s0,24(sp)
     e16:	44d2                	lw	s1,20(sp)
     e18:	4942                	lw	s2,16(sp)
     e1a:	49b2                	lw	s3,12(sp)
     e1c:	4a22                	lw	s4,8(sp)
     e1e:	6105                	addi	sp,sp,32
     e20:	8082                	ret
     e22:	c41c                	sw	a5,8(s0)
     e24:	0905                	addi	s2,s2,1
     e26:	0007d763          	bgez	a5,e34 <_puts_r+0xb4>
     e2a:	4c18                	lw	a4,24(s0)
     e2c:	00e7cb63          	blt	a5,a4,e42 <_puts_r+0xc2>
     e30:	01458963          	beq	a1,s4,e42 <_puts_r+0xc2>
     e34:	401c                	lw	a5,0(s0)
     e36:	00178713          	addi	a4,a5,1
     e3a:	c018                	sw	a4,0(s0)
     e3c:	00b78023          	sb	a1,0(a5)
     e40:	b759                	j	dc6 <_puts_r+0x46>
     e42:	8622                	mv	a2,s0
     e44:	8526                	mv	a0,s1
     e46:	2a39                	jal	f64 <__swbuf_r>
     e48:	f7351fe3          	bne	a0,s3,dc6 <_puts_r+0x46>
     e4c:	b7d1                	j	e10 <_puts_r+0x90>
     e4e:	401c                	lw	a5,0(s0)
     e50:	00178713          	addi	a4,a5,1
     e54:	c018                	sw	a4,0(s0)
     e56:	4729                	li	a4,10
     e58:	00e78023          	sb	a4,0(a5)
     e5c:	b761                	j	de4 <_puts_r+0x64>

00000e5e <puts>:
     e5e:	000807b7          	lui	a5,0x80
     e62:	85aa                	mv	a1,a0
     e64:	4e07a503          	lw	a0,1248(a5) # 804e0 <_impure_ptr>
     e68:	bf21                	j	d80 <_puts_r>

00000e6a <cleanup_glue>:
     e6a:	1141                	addi	sp,sp,-16
     e6c:	c422                	sw	s0,8(sp)
     e6e:	842e                	mv	s0,a1
     e70:	418c                	lw	a1,0(a1)
     e72:	c226                	sw	s1,4(sp)
     e74:	c606                	sw	ra,12(sp)
     e76:	84aa                	mv	s1,a0
     e78:	c191                	beqz	a1,e7c <cleanup_glue+0x12>
     e7a:	3fc5                	jal	e6a <cleanup_glue>
     e7c:	85a2                	mv	a1,s0
     e7e:	4422                	lw	s0,8(sp)
     e80:	40b2                	lw	ra,12(sp)
     e82:	8526                	mv	a0,s1
     e84:	4492                	lw	s1,4(sp)
     e86:	0141                	addi	sp,sp,16
     e88:	17d0006f          	j	1804 <_free_r>

00000e8c <_reclaim_reent>:
     e8c:	000807b7          	lui	a5,0x80
     e90:	4e07a783          	lw	a5,1248(a5) # 804e0 <_impure_ptr>
     e94:	0ca78763          	beq	a5,a0,f62 <_reclaim_reent+0xd6>
     e98:	515c                	lw	a5,36(a0)
     e9a:	1101                	addi	sp,sp,-32
     e9c:	cc22                	sw	s0,24(sp)
     e9e:	ce06                	sw	ra,28(sp)
     ea0:	ca26                	sw	s1,20(sp)
     ea2:	c84a                	sw	s2,16(sp)
     ea4:	c64e                	sw	s3,12(sp)
     ea6:	842a                	mv	s0,a0
     ea8:	cf81                	beqz	a5,ec0 <_reclaim_reent+0x34>
     eaa:	47dc                	lw	a5,12(a5)
     eac:	4481                	li	s1,0
     eae:	08000913          	li	s2,128
     eb2:	e3d1                	bnez	a5,f36 <_reclaim_reent+0xaa>
     eb4:	505c                	lw	a5,36(s0)
     eb6:	438c                	lw	a1,0(a5)
     eb8:	c581                	beqz	a1,ec0 <_reclaim_reent+0x34>
     eba:	8522                	mv	a0,s0
     ebc:	149000ef          	jal	ra,1804 <_free_r>
     ec0:	484c                	lw	a1,20(s0)
     ec2:	c581                	beqz	a1,eca <_reclaim_reent+0x3e>
     ec4:	8522                	mv	a0,s0
     ec6:	13f000ef          	jal	ra,1804 <_free_r>
     eca:	504c                	lw	a1,36(s0)
     ecc:	c581                	beqz	a1,ed4 <_reclaim_reent+0x48>
     ece:	8522                	mv	a0,s0
     ed0:	135000ef          	jal	ra,1804 <_free_r>
     ed4:	5c0c                	lw	a1,56(s0)
     ed6:	c581                	beqz	a1,ede <_reclaim_reent+0x52>
     ed8:	8522                	mv	a0,s0
     eda:	12b000ef          	jal	ra,1804 <_free_r>
     ede:	5c4c                	lw	a1,60(s0)
     ee0:	c581                	beqz	a1,ee8 <_reclaim_reent+0x5c>
     ee2:	8522                	mv	a0,s0
     ee4:	121000ef          	jal	ra,1804 <_free_r>
     ee8:	402c                	lw	a1,64(s0)
     eea:	c581                	beqz	a1,ef2 <_reclaim_reent+0x66>
     eec:	8522                	mv	a0,s0
     eee:	117000ef          	jal	ra,1804 <_free_r>
     ef2:	4c6c                	lw	a1,92(s0)
     ef4:	c581                	beqz	a1,efc <_reclaim_reent+0x70>
     ef6:	8522                	mv	a0,s0
     ef8:	10d000ef          	jal	ra,1804 <_free_r>
     efc:	4c2c                	lw	a1,88(s0)
     efe:	c581                	beqz	a1,f06 <_reclaim_reent+0x7a>
     f00:	8522                	mv	a0,s0
     f02:	103000ef          	jal	ra,1804 <_free_r>
     f06:	584c                	lw	a1,52(s0)
     f08:	c581                	beqz	a1,f10 <_reclaim_reent+0x84>
     f0a:	8522                	mv	a0,s0
     f0c:	0f9000ef          	jal	ra,1804 <_free_r>
     f10:	4c1c                	lw	a5,24(s0)
     f12:	c3a9                	beqz	a5,f54 <_reclaim_reent+0xc8>
     f14:	541c                	lw	a5,40(s0)
     f16:	8522                	mv	a0,s0
     f18:	9782                	jalr	a5
     f1a:	442c                	lw	a1,72(s0)
     f1c:	cd85                	beqz	a1,f54 <_reclaim_reent+0xc8>
     f1e:	8522                	mv	a0,s0
     f20:	4462                	lw	s0,24(sp)
     f22:	40f2                	lw	ra,28(sp)
     f24:	44d2                	lw	s1,20(sp)
     f26:	4942                	lw	s2,16(sp)
     f28:	49b2                	lw	s3,12(sp)
     f2a:	6105                	addi	sp,sp,32
     f2c:	bf3d                	j	e6a <cleanup_glue>
     f2e:	95a6                	add	a1,a1,s1
     f30:	418c                	lw	a1,0(a1)
     f32:	e991                	bnez	a1,f46 <_reclaim_reent+0xba>
     f34:	0491                	addi	s1,s1,4
     f36:	505c                	lw	a5,36(s0)
     f38:	47cc                	lw	a1,12(a5)
     f3a:	ff249ae3          	bne	s1,s2,f2e <_reclaim_reent+0xa2>
     f3e:	8522                	mv	a0,s0
     f40:	0c5000ef          	jal	ra,1804 <_free_r>
     f44:	bf85                	j	eb4 <_reclaim_reent+0x28>
     f46:	0005a983          	lw	s3,0(a1)
     f4a:	8522                	mv	a0,s0
     f4c:	0b9000ef          	jal	ra,1804 <_free_r>
     f50:	85ce                	mv	a1,s3
     f52:	b7c5                	j	f32 <_reclaim_reent+0xa6>
     f54:	40f2                	lw	ra,28(sp)
     f56:	4462                	lw	s0,24(sp)
     f58:	44d2                	lw	s1,20(sp)
     f5a:	4942                	lw	s2,16(sp)
     f5c:	49b2                	lw	s3,12(sp)
     f5e:	6105                	addi	sp,sp,32
     f60:	8082                	ret
     f62:	8082                	ret

00000f64 <__swbuf_r>:
     f64:	1101                	addi	sp,sp,-32
     f66:	cc22                	sw	s0,24(sp)
     f68:	ca26                	sw	s1,20(sp)
     f6a:	c84a                	sw	s2,16(sp)
     f6c:	ce06                	sw	ra,28(sp)
     f6e:	c64e                	sw	s3,12(sp)
     f70:	84aa                	mv	s1,a0
     f72:	892e                	mv	s2,a1
     f74:	8432                	mv	s0,a2
     f76:	c501                	beqz	a0,f7e <__swbuf_r+0x1a>
     f78:	4d1c                	lw	a5,24(a0)
     f7a:	e391                	bnez	a5,f7e <__swbuf_r+0x1a>
     f7c:	2b61                	jal	1514 <__sinit>
     f7e:	000807b7          	lui	a5,0x80
     f82:	2a478793          	addi	a5,a5,676 # 802a4 <__sf_fake_stdin>
     f86:	06f41963          	bne	s0,a5,ff8 <init.c.97f15b39+0x21>
     f8a:	40c0                	lw	s0,4(s1)
     f8c:	4c1c                	lw	a5,24(s0)
     f8e:	c41c                	sw	a5,8(s0)
     f90:	00c45783          	lhu	a5,12(s0)
     f94:	8ba1                	andi	a5,a5,8
     f96:	c3c9                	beqz	a5,1018 <syscalls.c.c388568e+0xf>
     f98:	481c                	lw	a5,16(s0)
     f9a:	cfbd                	beqz	a5,1018 <syscalls.c.c388568e+0xf>
     f9c:	481c                	lw	a5,16(s0)
     f9e:	4008                	lw	a0,0(s0)
     fa0:	0ff97993          	zext.b	s3,s2
     fa4:	0ff97913          	zext.b	s2,s2
     fa8:	8d1d                	sub	a0,a0,a5
     faa:	485c                	lw	a5,20(s0)
     fac:	00f54663          	blt	a0,a5,fb8 <__swbuf_r+0x54>
     fb0:	85a2                	mv	a1,s0
     fb2:	8526                	mv	a0,s1
     fb4:	2931                	jal	13d0 <_fflush_r>
     fb6:	e52d                	bnez	a0,1020 <syscalls.c.c388568e+0x17>
     fb8:	441c                	lw	a5,8(s0)
     fba:	0505                	addi	a0,a0,1
     fbc:	17fd                	addi	a5,a5,-1
     fbe:	c41c                	sw	a5,8(s0)
     fc0:	401c                	lw	a5,0(s0)
     fc2:	00178713          	addi	a4,a5,1
     fc6:	c018                	sw	a4,0(s0)
     fc8:	01378023          	sb	s3,0(a5)
     fcc:	485c                	lw	a5,20(s0)
     fce:	00a78963          	beq	a5,a0,fe0 <init.c.97f15b39+0x9>
     fd2:	00c45783          	lhu	a5,12(s0)
     fd6:	8b85                	andi	a5,a5,1
     fd8:	cb81                	beqz	a5,fe8 <init.c.97f15b39+0x11>
     fda:	47a9                	li	a5,10
     fdc:	00f91663          	bne	s2,a5,fe8 <init.c.97f15b39+0x11>
     fe0:	85a2                	mv	a1,s0
     fe2:	8526                	mv	a0,s1
     fe4:	26f5                	jal	13d0 <_fflush_r>
     fe6:	ed0d                	bnez	a0,1020 <syscalls.c.c388568e+0x17>
     fe8:	40f2                	lw	ra,28(sp)
     fea:	4462                	lw	s0,24(sp)
     fec:	44d2                	lw	s1,20(sp)
     fee:	49b2                	lw	s3,12(sp)
     ff0:	854a                	mv	a0,s2
     ff2:	4942                	lw	s2,16(sp)
     ff4:	6105                	addi	sp,sp,32
     ff6:	8082                	ret
     ff8:	000807b7          	lui	a5,0x80
     ffc:	2c478793          	addi	a5,a5,708 # 802c4 <__sf_fake_stdout>
    1000:	00f41463          	bne	s0,a5,1008 <init.c.97f15b39+0x31>
    1004:	4480                	lw	s0,8(s1)
    1006:	b759                	j	f8c <__swbuf_r+0x28>
    1008:	000807b7          	lui	a5,0x80
    100c:	28478793          	addi	a5,a5,644 # 80284 <__sf_fake_stderr>
    1010:	f6f41ee3          	bne	s0,a5,f8c <__swbuf_r+0x28>
    1014:	44c0                	lw	s0,12(s1)
    1016:	bf9d                	j	f8c <__swbuf_r+0x28>
    1018:	85a2                	mv	a1,s0
    101a:	8526                	mv	a0,s1
    101c:	2819                	jal	1032 <__swsetup_r>
    101e:	dd3d                	beqz	a0,f9c <__swbuf_r+0x38>
    1020:	597d                	li	s2,-1
    1022:	b7d9                	j	fe8 <init.c.97f15b39+0x11>

00001024 <__swbuf>:
    1024:	000807b7          	lui	a5,0x80
    1028:	862e                	mv	a2,a1
    102a:	85aa                	mv	a1,a0
    102c:	4e07a503          	lw	a0,1248(a5) # 804e0 <_impure_ptr>
    1030:	bf15                	j	f64 <__swbuf_r>

00001032 <__swsetup_r>:
    1032:	1141                	addi	sp,sp,-16
    1034:	000807b7          	lui	a5,0x80
    1038:	c226                	sw	s1,4(sp)
    103a:	4e07a483          	lw	s1,1248(a5) # 804e0 <_impure_ptr>
    103e:	c422                	sw	s0,8(sp)
    1040:	c04a                	sw	s2,0(sp)
    1042:	c606                	sw	ra,12(sp)
    1044:	892a                	mv	s2,a0
    1046:	842e                	mv	s0,a1
    1048:	c489                	beqz	s1,1052 <__swsetup_r+0x20>
    104a:	4c9c                	lw	a5,24(s1)
    104c:	e399                	bnez	a5,1052 <__swsetup_r+0x20>
    104e:	8526                	mv	a0,s1
    1050:	21d1                	jal	1514 <__sinit>
    1052:	000807b7          	lui	a5,0x80
    1056:	2a478793          	addi	a5,a5,676 # 802a4 <__sf_fake_stdin>
    105a:	02f41763          	bne	s0,a5,1088 <__swsetup_r+0x56>
    105e:	40c0                	lw	s0,4(s1)
    1060:	00c41783          	lh	a5,12(s0)
    1064:	01079713          	slli	a4,a5,0x10
    1068:	0087f693          	andi	a3,a5,8
    106c:	8341                	srli	a4,a4,0x10
    106e:	eab5                	bnez	a3,10e2 <__swsetup_r+0xb0>
    1070:	01077693          	andi	a3,a4,16
    1074:	ea95                	bnez	a3,10a8 <__swsetup_r+0x76>
    1076:	4725                	li	a4,9
    1078:	00e92023          	sw	a4,0(s2)
    107c:	0407e793          	ori	a5,a5,64
    1080:	00f41623          	sh	a5,12(s0)
    1084:	557d                	li	a0,-1
    1086:	a879                	j	1124 <__swsetup_r+0xf2>
    1088:	000807b7          	lui	a5,0x80
    108c:	2c478793          	addi	a5,a5,708 # 802c4 <__sf_fake_stdout>
    1090:	00f41463          	bne	s0,a5,1098 <__swsetup_r+0x66>
    1094:	4480                	lw	s0,8(s1)
    1096:	b7e9                	j	1060 <__swsetup_r+0x2e>
    1098:	000807b7          	lui	a5,0x80
    109c:	28478793          	addi	a5,a5,644 # 80284 <__sf_fake_stderr>
    10a0:	fcf410e3          	bne	s0,a5,1060 <__swsetup_r+0x2e>
    10a4:	44c0                	lw	s0,12(s1)
    10a6:	bf6d                	j	1060 <__swsetup_r+0x2e>
    10a8:	8b11                	andi	a4,a4,4
    10aa:	c715                	beqz	a4,10d6 <__swsetup_r+0xa4>
    10ac:	584c                	lw	a1,52(s0)
    10ae:	c991                	beqz	a1,10c2 <__swsetup_r+0x90>
    10b0:	04440793          	addi	a5,s0,68
    10b4:	00f58563          	beq	a1,a5,10be <__swsetup_r+0x8c>
    10b8:	854a                	mv	a0,s2
    10ba:	74a000ef          	jal	ra,1804 <_free_r>
    10be:	02042a23          	sw	zero,52(s0)
    10c2:	00c45783          	lhu	a5,12(s0)
    10c6:	00042223          	sw	zero,4(s0)
    10ca:	fdb7f793          	andi	a5,a5,-37
    10ce:	00f41623          	sh	a5,12(s0)
    10d2:	481c                	lw	a5,16(s0)
    10d4:	c01c                	sw	a5,0(s0)
    10d6:	00c45783          	lhu	a5,12(s0)
    10da:	0087e793          	ori	a5,a5,8
    10de:	00f41623          	sh	a5,12(s0)
    10e2:	481c                	lw	a5,16(s0)
    10e4:	ef81                	bnez	a5,10fc <__swsetup_r+0xca>
    10e6:	00c45783          	lhu	a5,12(s0)
    10ea:	20000713          	li	a4,512
    10ee:	2807f793          	andi	a5,a5,640
    10f2:	00e78563          	beq	a5,a4,10fc <__swsetup_r+0xca>
    10f6:	85a2                	mv	a1,s0
    10f8:	854a                	mv	a0,s2
    10fa:	2d85                	jal	176a <__smakebuf_r>
    10fc:	00c41783          	lh	a5,12(s0)
    1100:	01079713          	slli	a4,a5,0x10
    1104:	0017f693          	andi	a3,a5,1
    1108:	8341                	srli	a4,a4,0x10
    110a:	c29d                	beqz	a3,1130 <__swsetup_r+0xfe>
    110c:	4854                	lw	a3,20(s0)
    110e:	00042423          	sw	zero,8(s0)
    1112:	40d006b3          	neg	a3,a3
    1116:	cc14                	sw	a3,24(s0)
    1118:	4814                	lw	a3,16(s0)
    111a:	4501                	li	a0,0
    111c:	e681                	bnez	a3,1124 <__swsetup_r+0xf2>
    111e:	08077713          	andi	a4,a4,128
    1122:	ff29                	bnez	a4,107c <__swsetup_r+0x4a>
    1124:	40b2                	lw	ra,12(sp)
    1126:	4422                	lw	s0,8(sp)
    1128:	4492                	lw	s1,4(sp)
    112a:	4902                	lw	s2,0(sp)
    112c:	0141                	addi	sp,sp,16
    112e:	8082                	ret
    1130:	00277693          	andi	a3,a4,2
    1134:	4601                	li	a2,0
    1136:	e291                	bnez	a3,113a <__swsetup_r+0x108>
    1138:	4850                	lw	a2,20(s0)
    113a:	c410                	sw	a2,8(s0)
    113c:	bff1                	j	1118 <__swsetup_r+0xe6>

0000113e <__register_exitproc>:
    113e:	00080837          	lui	a6,0x80
    1142:	4ec82783          	lw	a5,1260(a6) # 804ec <_global_atexit>
    1146:	88aa                	mv	a7,a0
    1148:	e39d                	bnez	a5,116e <__register_exitproc+0x30>
    114a:	00080737          	lui	a4,0x80
    114e:	4f870513          	addi	a0,a4,1272 # 804f8 <_global_atexit0>
    1152:	4ea82623          	sw	a0,1260(a6)
    1156:	00000313          	li	t1,0
    115a:	4f870793          	addi	a5,a4,1272
    115e:	00030863          	beqz	t1,116e <__register_exitproc+0x30>
    1162:	00002783          	lw	a5,0(zero) # 0 <__vector_start>
    1166:	08f52423          	sw	a5,136(a0)
    116a:	4f870793          	addi	a5,a4,1272
    116e:	43d8                	lw	a4,4(a5)
    1170:	487d                	li	a6,31
    1172:	557d                	li	a0,-1
    1174:	04e84663          	blt	a6,a4,11c0 <__register_exitproc+0x82>
    1178:	02088d63          	beqz	a7,11b2 <__register_exitproc+0x74>
    117c:	0887a803          	lw	a6,136(a5)
    1180:	04080063          	beqz	a6,11c0 <__register_exitproc+0x82>
    1184:	00271513          	slli	a0,a4,0x2
    1188:	9542                	add	a0,a0,a6
    118a:	c110                	sw	a2,0(a0)
    118c:	10082303          	lw	t1,256(a6)
    1190:	4605                	li	a2,1
    1192:	00e61633          	sll	a2,a2,a4
    1196:	00c36333          	or	t1,t1,a2
    119a:	10682023          	sw	t1,256(a6)
    119e:	08d52023          	sw	a3,128(a0)
    11a2:	4689                	li	a3,2
    11a4:	00d89763          	bne	a7,a3,11b2 <__register_exitproc+0x74>
    11a8:	10482683          	lw	a3,260(a6)
    11ac:	8ed1                	or	a3,a3,a2
    11ae:	10d82223          	sw	a3,260(a6)
    11b2:	00170693          	addi	a3,a4,1
    11b6:	070a                	slli	a4,a4,0x2
    11b8:	c3d4                	sw	a3,4(a5)
    11ba:	97ba                	add	a5,a5,a4
    11bc:	c78c                	sw	a1,8(a5)
    11be:	4501                	li	a0,0
    11c0:	8082                	ret

000011c2 <__call_exitprocs>:
    11c2:	7179                	addi	sp,sp,-48
    11c4:	c85a                	sw	s6,16(sp)
    11c6:	00080b37          	lui	s6,0x80
    11ca:	ca56                	sw	s5,20(sp)
    11cc:	c65e                	sw	s7,12(sp)
    11ce:	c462                	sw	s8,8(sp)
    11d0:	d606                	sw	ra,44(sp)
    11d2:	d422                	sw	s0,40(sp)
    11d4:	d226                	sw	s1,36(sp)
    11d6:	d04a                	sw	s2,32(sp)
    11d8:	ce4e                	sw	s3,28(sp)
    11da:	cc52                	sw	s4,24(sp)
    11dc:	c266                	sw	s9,4(sp)
    11de:	8baa                	mv	s7,a0
    11e0:	8aae                	mv	s5,a1
    11e2:	4ecb0b13          	addi	s6,s6,1260 # 804ec <_global_atexit>
    11e6:	4c05                	li	s8,1
    11e8:	000b2483          	lw	s1,0(s6)
    11ec:	cc81                	beqz	s1,1204 <__call_exitprocs+0x42>
    11ee:	40c0                	lw	s0,4(s1)
    11f0:	0884a983          	lw	s3,136(s1)
    11f4:	fff40913          	addi	s2,s0,-1
    11f8:	040a                	slli	s0,s0,0x2
    11fa:	00898a33          	add	s4,s3,s0
    11fe:	9426                	add	s0,s0,s1
    1200:	00095f63          	bgez	s2,121e <__call_exitprocs+0x5c>
    1204:	50b2                	lw	ra,44(sp)
    1206:	5422                	lw	s0,40(sp)
    1208:	5492                	lw	s1,36(sp)
    120a:	5902                	lw	s2,32(sp)
    120c:	49f2                	lw	s3,28(sp)
    120e:	4a62                	lw	s4,24(sp)
    1210:	4ad2                	lw	s5,20(sp)
    1212:	4b42                	lw	s6,16(sp)
    1214:	4bb2                	lw	s7,12(sp)
    1216:	4c22                	lw	s8,8(sp)
    1218:	4c92                	lw	s9,4(sp)
    121a:	6145                	addi	sp,sp,48
    121c:	8082                	ret
    121e:	000a8c63          	beqz	s5,1236 <__call_exitprocs+0x74>
    1222:	00099663          	bnez	s3,122e <__call_exitprocs+0x6c>
    1226:	197d                	addi	s2,s2,-1
    1228:	1a71                	addi	s4,s4,-4
    122a:	1471                	addi	s0,s0,-4
    122c:	bfd1                	j	1200 <__call_exitprocs+0x3e>
    122e:	07ca2783          	lw	a5,124(s4)
    1232:	ff579ae3          	bne	a5,s5,1226 <__call_exitprocs+0x64>
    1236:	40d8                	lw	a4,4(s1)
    1238:	405c                	lw	a5,4(s0)
    123a:	177d                	addi	a4,a4,-1
    123c:	03271863          	bne	a4,s2,126c <__call_exitprocs+0xaa>
    1240:	0124a223          	sw	s2,4(s1)
    1244:	d3ed                	beqz	a5,1226 <__call_exitprocs+0x64>
    1246:	0044ac83          	lw	s9,4(s1)
    124a:	00098863          	beqz	s3,125a <__call_exitprocs+0x98>
    124e:	1009a683          	lw	a3,256(s3)
    1252:	012c1733          	sll	a4,s8,s2
    1256:	8ef9                	and	a3,a3,a4
    1258:	ee89                	bnez	a3,1272 <__call_exitprocs+0xb0>
    125a:	9782                	jalr	a5
    125c:	40d8                	lw	a4,4(s1)
    125e:	000b2783          	lw	a5,0(s6)
    1262:	f99713e3          	bne	a4,s9,11e8 <__call_exitprocs+0x26>
    1266:	fcf480e3          	beq	s1,a5,1226 <__call_exitprocs+0x64>
    126a:	bfbd                	j	11e8 <__call_exitprocs+0x26>
    126c:	00042223          	sw	zero,4(s0)
    1270:	bfd1                	j	1244 <__call_exitprocs+0x82>
    1272:	1049a683          	lw	a3,260(s3)
    1276:	ffca2583          	lw	a1,-4(s4)
    127a:	8f75                	and	a4,a4,a3
    127c:	e701                	bnez	a4,1284 <__call_exitprocs+0xc2>
    127e:	855e                	mv	a0,s7
    1280:	9782                	jalr	a5
    1282:	bfe9                	j	125c <__call_exitprocs+0x9a>
    1284:	852e                	mv	a0,a1
    1286:	9782                	jalr	a5
    1288:	bfd1                	j	125c <__call_exitprocs+0x9a>

0000128a <__sflush_r>:
    128a:	00c5d783          	lhu	a5,12(a1)
    128e:	1101                	addi	sp,sp,-32
    1290:	cc22                	sw	s0,24(sp)
    1292:	ca26                	sw	s1,20(sp)
    1294:	ce06                	sw	ra,28(sp)
    1296:	c84a                	sw	s2,16(sp)
    1298:	c64e                	sw	s3,12(sp)
    129a:	0087f713          	andi	a4,a5,8
    129e:	84aa                	mv	s1,a0
    12a0:	842e                	mv	s0,a1
    12a2:	e375                	bnez	a4,1386 <__sflush_r+0xfc>
    12a4:	41d8                	lw	a4,4(a1)
    12a6:	00e04763          	bgtz	a4,12b4 <__sflush_r+0x2a>
    12aa:	41b8                	lw	a4,64(a1)
    12ac:	00e04463          	bgtz	a4,12b4 <__sflush_r+0x2a>
    12b0:	4501                	li	a0,0
    12b2:	a875                	j	136e <__sflush_r+0xe4>
    12b4:	5458                	lw	a4,44(s0)
    12b6:	df6d                	beqz	a4,12b0 <__sflush_r+0x26>
    12b8:	6685                	lui	a3,0x1
    12ba:	0004a903          	lw	s2,0(s1)
    12be:	8ff5                	and	a5,a5,a3
    12c0:	0004a023          	sw	zero,0(s1)
    12c4:	500c                	lw	a1,32(s0)
    12c6:	cfa5                	beqz	a5,133e <__sflush_r+0xb4>
    12c8:	4868                	lw	a0,84(s0)
    12ca:	00c45783          	lhu	a5,12(s0)
    12ce:	8b91                	andi	a5,a5,4
    12d0:	c799                	beqz	a5,12de <__sflush_r+0x54>
    12d2:	405c                	lw	a5,4(s0)
    12d4:	8d1d                	sub	a0,a0,a5
    12d6:	585c                	lw	a5,52(s0)
    12d8:	c399                	beqz	a5,12de <__sflush_r+0x54>
    12da:	403c                	lw	a5,64(s0)
    12dc:	8d1d                	sub	a0,a0,a5
    12de:	545c                	lw	a5,44(s0)
    12e0:	500c                	lw	a1,32(s0)
    12e2:	862a                	mv	a2,a0
    12e4:	4681                	li	a3,0
    12e6:	8526                	mv	a0,s1
    12e8:	9782                	jalr	a5
    12ea:	57fd                	li	a5,-1
    12ec:	00c45703          	lhu	a4,12(s0)
    12f0:	00f51d63          	bne	a0,a5,130a <__sflush_r+0x80>
    12f4:	4094                	lw	a3,0(s1)
    12f6:	47f5                	li	a5,29
    12f8:	08d7e263          	bltu	a5,a3,137c <__sflush_r+0xf2>
    12fc:	dfc007b7          	lui	a5,0xdfc00
    1300:	17f9                	addi	a5,a5,-2
    1302:	40d7d7b3          	sra	a5,a5,a3
    1306:	8b85                	andi	a5,a5,1
    1308:	ebb5                	bnez	a5,137c <__sflush_r+0xf2>
    130a:	481c                	lw	a5,16(s0)
    130c:	00042223          	sw	zero,4(s0)
    1310:	c01c                	sw	a5,0(s0)
    1312:	6785                	lui	a5,0x1
    1314:	8f7d                	and	a4,a4,a5
    1316:	c719                	beqz	a4,1324 <__sflush_r+0x9a>
    1318:	57fd                	li	a5,-1
    131a:	00f51463          	bne	a0,a5,1322 <__sflush_r+0x98>
    131e:	409c                	lw	a5,0(s1)
    1320:	e391                	bnez	a5,1324 <__sflush_r+0x9a>
    1322:	c868                	sw	a0,84(s0)
    1324:	584c                	lw	a1,52(s0)
    1326:	0124a023          	sw	s2,0(s1)
    132a:	d1d9                	beqz	a1,12b0 <__sflush_r+0x26>
    132c:	04440793          	addi	a5,s0,68
    1330:	00f58463          	beq	a1,a5,1338 <__sflush_r+0xae>
    1334:	8526                	mv	a0,s1
    1336:	21f9                	jal	1804 <_free_r>
    1338:	02042a23          	sw	zero,52(s0)
    133c:	bf95                	j	12b0 <__sflush_r+0x26>
    133e:	4685                	li	a3,1
    1340:	4601                	li	a2,0
    1342:	8526                	mv	a0,s1
    1344:	9702                	jalr	a4
    1346:	57fd                	li	a5,-1
    1348:	f8f511e3          	bne	a0,a5,12ca <__sflush_r+0x40>
    134c:	409c                	lw	a5,0(s1)
    134e:	dfb5                	beqz	a5,12ca <__sflush_r+0x40>
    1350:	4775                	li	a4,29
    1352:	00e78563          	beq	a5,a4,135c <__sflush_r+0xd2>
    1356:	4759                	li	a4,22
    1358:	00e79563          	bne	a5,a4,1362 <__sflush_r+0xd8>
    135c:	0124a023          	sw	s2,0(s1)
    1360:	bf81                	j	12b0 <__sflush_r+0x26>
    1362:	00c45783          	lhu	a5,12(s0)
    1366:	0407e793          	ori	a5,a5,64
    136a:	00f41623          	sh	a5,12(s0)
    136e:	40f2                	lw	ra,28(sp)
    1370:	4462                	lw	s0,24(sp)
    1372:	44d2                	lw	s1,20(sp)
    1374:	4942                	lw	s2,16(sp)
    1376:	49b2                	lw	s3,12(sp)
    1378:	6105                	addi	sp,sp,32
    137a:	8082                	ret
    137c:	04076713          	ori	a4,a4,64
    1380:	00e41623          	sh	a4,12(s0)
    1384:	b7ed                	j	136e <__sflush_r+0xe4>
    1386:	0105a983          	lw	s3,16(a1)
    138a:	f20983e3          	beqz	s3,12b0 <__sflush_r+0x26>
    138e:	0005a903          	lw	s2,0(a1)
    1392:	8b8d                	andi	a5,a5,3
    1394:	0135a023          	sw	s3,0(a1)
    1398:	41390933          	sub	s2,s2,s3
    139c:	4701                	li	a4,0
    139e:	e391                	bnez	a5,13a2 <__sflush_r+0x118>
    13a0:	49d8                	lw	a4,20(a1)
    13a2:	c418                	sw	a4,8(s0)
    13a4:	f12056e3          	blez	s2,12b0 <__sflush_r+0x26>
    13a8:	541c                	lw	a5,40(s0)
    13aa:	500c                	lw	a1,32(s0)
    13ac:	86ca                	mv	a3,s2
    13ae:	864e                	mv	a2,s3
    13b0:	8526                	mv	a0,s1
    13b2:	9782                	jalr	a5
    13b4:	00a04a63          	bgtz	a0,13c8 <__sflush_r+0x13e>
    13b8:	00c45783          	lhu	a5,12(s0)
    13bc:	557d                	li	a0,-1
    13be:	0407e793          	ori	a5,a5,64
    13c2:	00f41623          	sh	a5,12(s0)
    13c6:	b765                	j	136e <__sflush_r+0xe4>
    13c8:	99aa                	add	s3,s3,a0
    13ca:	40a90933          	sub	s2,s2,a0
    13ce:	bfd9                	j	13a4 <__sflush_r+0x11a>

000013d0 <_fflush_r>:
    13d0:	499c                	lw	a5,16(a1)
    13d2:	cfb9                	beqz	a5,1430 <_fflush_r+0x60>
    13d4:	1101                	addi	sp,sp,-32
    13d6:	cc22                	sw	s0,24(sp)
    13d8:	ce06                	sw	ra,28(sp)
    13da:	842a                	mv	s0,a0
    13dc:	c511                	beqz	a0,13e8 <_fflush_r+0x18>
    13de:	4d1c                	lw	a5,24(a0)
    13e0:	e781                	bnez	a5,13e8 <_fflush_r+0x18>
    13e2:	c62e                	sw	a1,12(sp)
    13e4:	2a05                	jal	1514 <__sinit>
    13e6:	45b2                	lw	a1,12(sp)
    13e8:	000807b7          	lui	a5,0x80
    13ec:	2a478793          	addi	a5,a5,676 # 802a4 <__sf_fake_stdin>
    13f0:	00f59b63          	bne	a1,a5,1406 <_fflush_r+0x36>
    13f4:	404c                	lw	a1,4(s0)
    13f6:	00c59783          	lh	a5,12(a1)
    13fa:	c795                	beqz	a5,1426 <_fflush_r+0x56>
    13fc:	8522                	mv	a0,s0
    13fe:	4462                	lw	s0,24(sp)
    1400:	40f2                	lw	ra,28(sp)
    1402:	6105                	addi	sp,sp,32
    1404:	b559                	j	128a <__sflush_r>
    1406:	000807b7          	lui	a5,0x80
    140a:	2c478793          	addi	a5,a5,708 # 802c4 <__sf_fake_stdout>
    140e:	00f59463          	bne	a1,a5,1416 <_fflush_r+0x46>
    1412:	440c                	lw	a1,8(s0)
    1414:	b7cd                	j	13f6 <_fflush_r+0x26>
    1416:	000807b7          	lui	a5,0x80
    141a:	28478793          	addi	a5,a5,644 # 80284 <__sf_fake_stderr>
    141e:	fcf59ce3          	bne	a1,a5,13f6 <_fflush_r+0x26>
    1422:	444c                	lw	a1,12(s0)
    1424:	bfc9                	j	13f6 <_fflush_r+0x26>
    1426:	40f2                	lw	ra,28(sp)
    1428:	4462                	lw	s0,24(sp)
    142a:	4501                	li	a0,0
    142c:	6105                	addi	sp,sp,32
    142e:	8082                	ret
    1430:	4501                	li	a0,0
    1432:	8082                	ret

00001434 <fflush>:
    1434:	85aa                	mv	a1,a0
    1436:	e909                	bnez	a0,1448 <fflush+0x14>
    1438:	000807b7          	lui	a5,0x80
    143c:	4d87a503          	lw	a0,1240(a5) # 804d8 <_global_impure_ptr>
    1440:	6585                	lui	a1,0x1
    1442:	3d058593          	addi	a1,a1,976 # 13d0 <_fflush_r>
    1446:	acb9                	j	16a4 <_fwalk_reent>
    1448:	000807b7          	lui	a5,0x80
    144c:	4e07a503          	lw	a0,1248(a5) # 804e0 <_impure_ptr>
    1450:	b741                	j	13d0 <_fflush_r>

00001452 <__fp_lock>:
    1452:	4501                	li	a0,0
    1454:	8082                	ret

00001456 <std>:
    1456:	1141                	addi	sp,sp,-16
    1458:	c422                	sw	s0,8(sp)
    145a:	c606                	sw	ra,12(sp)
    145c:	842a                	mv	s0,a0
    145e:	00b51623          	sh	a1,12(a0)
    1462:	00c51723          	sh	a2,14(a0)
    1466:	00052023          	sw	zero,0(a0)
    146a:	00052223          	sw	zero,4(a0)
    146e:	00052423          	sw	zero,8(a0)
    1472:	06052223          	sw	zero,100(a0)
    1476:	00052823          	sw	zero,16(a0)
    147a:	00052a23          	sw	zero,20(a0)
    147e:	00052c23          	sw	zero,24(a0)
    1482:	4621                	li	a2,8
    1484:	4581                	li	a1,0
    1486:	05c50513          	addi	a0,a0,92
    148a:	8e7ff0ef          	jal	ra,d70 <memset>
    148e:	6789                	lui	a5,0x2
    1490:	9b278793          	addi	a5,a5,-1614 # 19b2 <__sread>
    1494:	d05c                	sw	a5,36(s0)
    1496:	6789                	lui	a5,0x2
    1498:	9e678793          	addi	a5,a5,-1562 # 19e6 <__swrite>
    149c:	d41c                	sw	a5,40(s0)
    149e:	6789                	lui	a5,0x2
    14a0:	a3478793          	addi	a5,a5,-1484 # 1a34 <__sseek>
    14a4:	d45c                	sw	a5,44(s0)
    14a6:	6789                	lui	a5,0x2
    14a8:	a6a78793          	addi	a5,a5,-1430 # 1a6a <__sclose>
    14ac:	40b2                	lw	ra,12(sp)
    14ae:	d000                	sw	s0,32(s0)
    14b0:	d81c                	sw	a5,48(s0)
    14b2:	4422                	lw	s0,8(sp)
    14b4:	0141                	addi	sp,sp,16
    14b6:	8082                	ret

000014b8 <_cleanup_r>:
    14b8:	6585                	lui	a1,0x1
    14ba:	3d058593          	addi	a1,a1,976 # 13d0 <_fflush_r>
    14be:	a2dd                	j	16a4 <_fwalk_reent>

000014c0 <__fp_unlock>:
    14c0:	4501                	li	a0,0
    14c2:	8082                	ret

000014c4 <__sfmoreglue>:
    14c4:	1141                	addi	sp,sp,-16
    14c6:	c226                	sw	s1,4(sp)
    14c8:	06800793          	li	a5,104
    14cc:	fff58493          	addi	s1,a1,-1
    14d0:	02f484b3          	mul	s1,s1,a5
    14d4:	c04a                	sw	s2,0(sp)
    14d6:	892e                	mv	s2,a1
    14d8:	c422                	sw	s0,8(sp)
    14da:	c606                	sw	ra,12(sp)
    14dc:	07448593          	addi	a1,s1,116
    14e0:	26d9                	jal	18a6 <_malloc_r>
    14e2:	842a                	mv	s0,a0
    14e4:	cd01                	beqz	a0,14fc <__sfmoreglue+0x38>
    14e6:	00052023          	sw	zero,0(a0)
    14ea:	01252223          	sw	s2,4(a0)
    14ee:	0531                	addi	a0,a0,12
    14f0:	c408                	sw	a0,8(s0)
    14f2:	06848613          	addi	a2,s1,104
    14f6:	4581                	li	a1,0
    14f8:	879ff0ef          	jal	ra,d70 <memset>
    14fc:	40b2                	lw	ra,12(sp)
    14fe:	8522                	mv	a0,s0
    1500:	4422                	lw	s0,8(sp)
    1502:	4492                	lw	s1,4(sp)
    1504:	4902                	lw	s2,0(sp)
    1506:	0141                	addi	sp,sp,16
    1508:	8082                	ret

0000150a <_cleanup>:
    150a:	000807b7          	lui	a5,0x80
    150e:	4d87a503          	lw	a0,1240(a5) # 804d8 <_global_impure_ptr>
    1512:	b75d                	j	14b8 <_cleanup_r>

00001514 <__sinit>:
    1514:	4d1c                	lw	a5,24(a0)
    1516:	e3b5                	bnez	a5,157a <__sinit+0x66>
    1518:	1141                	addi	sp,sp,-16
    151a:	6785                	lui	a5,0x1
    151c:	c422                	sw	s0,8(sp)
    151e:	c606                	sw	ra,12(sp)
    1520:	4b878793          	addi	a5,a5,1208 # 14b8 <_cleanup_r>
    1524:	d51c                	sw	a5,40(a0)
    1526:	000807b7          	lui	a5,0x80
    152a:	4d87a783          	lw	a5,1240(a5) # 804d8 <_global_impure_ptr>
    152e:	04052423          	sw	zero,72(a0)
    1532:	04052623          	sw	zero,76(a0)
    1536:	04052823          	sw	zero,80(a0)
    153a:	842a                	mv	s0,a0
    153c:	00f51463          	bne	a0,a5,1544 <__sinit+0x30>
    1540:	4785                	li	a5,1
    1542:	cd1c                	sw	a5,24(a0)
    1544:	8522                	mv	a0,s0
    1546:	281d                	jal	157c <__sfp>
    1548:	c048                	sw	a0,4(s0)
    154a:	8522                	mv	a0,s0
    154c:	2805                	jal	157c <__sfp>
    154e:	c408                	sw	a0,8(s0)
    1550:	8522                	mv	a0,s0
    1552:	202d                	jal	157c <__sfp>
    1554:	c448                	sw	a0,12(s0)
    1556:	4048                	lw	a0,4(s0)
    1558:	4601                	li	a2,0
    155a:	4591                	li	a1,4
    155c:	3ded                	jal	1456 <std>
    155e:	4408                	lw	a0,8(s0)
    1560:	4605                	li	a2,1
    1562:	45a5                	li	a1,9
    1564:	3dcd                	jal	1456 <std>
    1566:	4448                	lw	a0,12(s0)
    1568:	4609                	li	a2,2
    156a:	45c9                	li	a1,18
    156c:	35ed                	jal	1456 <std>
    156e:	4785                	li	a5,1
    1570:	40b2                	lw	ra,12(sp)
    1572:	cc1c                	sw	a5,24(s0)
    1574:	4422                	lw	s0,8(sp)
    1576:	0141                	addi	sp,sp,16
    1578:	8082                	ret
    157a:	8082                	ret

0000157c <__sfp>:
    157c:	1141                	addi	sp,sp,-16
    157e:	000807b7          	lui	a5,0x80
    1582:	c226                	sw	s1,4(sp)
    1584:	4d87a483          	lw	s1,1240(a5) # 804d8 <_global_impure_ptr>
    1588:	c04a                	sw	s2,0(sp)
    158a:	c606                	sw	ra,12(sp)
    158c:	4c9c                	lw	a5,24(s1)
    158e:	c422                	sw	s0,8(sp)
    1590:	892a                	mv	s2,a0
    1592:	e399                	bnez	a5,1598 <__sfp+0x1c>
    1594:	8526                	mv	a0,s1
    1596:	3fbd                	jal	1514 <__sinit>
    1598:	04848493          	addi	s1,s1,72
    159c:	4480                	lw	s0,8(s1)
    159e:	40dc                	lw	a5,4(s1)
    15a0:	17fd                	addi	a5,a5,-1
    15a2:	0007d663          	bgez	a5,15ae <__sfp+0x32>
    15a6:	409c                	lw	a5,0(s1)
    15a8:	cfb9                	beqz	a5,1606 <__sfp+0x8a>
    15aa:	4084                	lw	s1,0(s1)
    15ac:	bfc5                	j	159c <__sfp+0x20>
    15ae:	00c41703          	lh	a4,12(s0)
    15b2:	e739                	bnez	a4,1600 <__sfp+0x84>
    15b4:	77c1                	lui	a5,0xffff0
    15b6:	0785                	addi	a5,a5,1
    15b8:	06042223          	sw	zero,100(s0)
    15bc:	00042023          	sw	zero,0(s0)
    15c0:	00042223          	sw	zero,4(s0)
    15c4:	00042423          	sw	zero,8(s0)
    15c8:	c45c                	sw	a5,12(s0)
    15ca:	00042823          	sw	zero,16(s0)
    15ce:	00042a23          	sw	zero,20(s0)
    15d2:	00042c23          	sw	zero,24(s0)
    15d6:	4621                	li	a2,8
    15d8:	4581                	li	a1,0
    15da:	05c40513          	addi	a0,s0,92
    15de:	f92ff0ef          	jal	ra,d70 <memset>
    15e2:	02042a23          	sw	zero,52(s0)
    15e6:	02042c23          	sw	zero,56(s0)
    15ea:	04042423          	sw	zero,72(s0)
    15ee:	04042623          	sw	zero,76(s0)
    15f2:	40b2                	lw	ra,12(sp)
    15f4:	8522                	mv	a0,s0
    15f6:	4422                	lw	s0,8(sp)
    15f8:	4492                	lw	s1,4(sp)
    15fa:	4902                	lw	s2,0(sp)
    15fc:	0141                	addi	sp,sp,16
    15fe:	8082                	ret
    1600:	06840413          	addi	s0,s0,104
    1604:	bf71                	j	15a0 <__sfp+0x24>
    1606:	4591                	li	a1,4
    1608:	854a                	mv	a0,s2
    160a:	3d6d                	jal	14c4 <__sfmoreglue>
    160c:	c088                	sw	a0,0(s1)
    160e:	842a                	mv	s0,a0
    1610:	fd49                	bnez	a0,15aa <__sfp+0x2e>
    1612:	47b1                	li	a5,12
    1614:	00f92023          	sw	a5,0(s2)
    1618:	bfe9                	j	15f2 <__sfp+0x76>

0000161a <__sfp_lock_acquire>:
    161a:	8082                	ret

0000161c <__sfp_lock_release>:
    161c:	8082                	ret

0000161e <__sinit_lock_acquire>:
    161e:	8082                	ret

00001620 <__sinit_lock_release>:
    1620:	8082                	ret

00001622 <__fp_lock_all>:
    1622:	000807b7          	lui	a5,0x80
    1626:	4e07a503          	lw	a0,1248(a5) # 804e0 <_impure_ptr>
    162a:	6585                	lui	a1,0x1
    162c:	45258593          	addi	a1,a1,1106 # 1452 <__fp_lock>
    1630:	a809                	j	1642 <_fwalk>

00001632 <__fp_unlock_all>:
    1632:	000807b7          	lui	a5,0x80
    1636:	4e07a503          	lw	a0,1248(a5) # 804e0 <_impure_ptr>
    163a:	6585                	lui	a1,0x1
    163c:	4c058593          	addi	a1,a1,1216 # 14c0 <__fp_unlock>
    1640:	a009                	j	1642 <_fwalk>

00001642 <_fwalk>:
    1642:	1101                	addi	sp,sp,-32
    1644:	cc22                	sw	s0,24(sp)
    1646:	c84a                	sw	s2,16(sp)
    1648:	c64e                	sw	s3,12(sp)
    164a:	c256                	sw	s5,4(sp)
    164c:	c05a                	sw	s6,0(sp)
    164e:	ce06                	sw	ra,28(sp)
    1650:	ca26                	sw	s1,20(sp)
    1652:	c452                	sw	s4,8(sp)
    1654:	89ae                	mv	s3,a1
    1656:	04850413          	addi	s0,a0,72
    165a:	4901                	li	s2,0
    165c:	4a85                	li	s5,1
    165e:	5b7d                	li	s6,-1
    1660:	4404                	lw	s1,8(s0)
    1662:	00442a03          	lw	s4,4(s0)
    1666:	1a7d                	addi	s4,s4,-1
    1668:	000a5f63          	bgez	s4,1686 <_fwalk+0x44>
    166c:	4000                	lw	s0,0(s0)
    166e:	f86d                	bnez	s0,1660 <_fwalk+0x1e>
    1670:	40f2                	lw	ra,28(sp)
    1672:	4462                	lw	s0,24(sp)
    1674:	44d2                	lw	s1,20(sp)
    1676:	49b2                	lw	s3,12(sp)
    1678:	4a22                	lw	s4,8(sp)
    167a:	4a92                	lw	s5,4(sp)
    167c:	4b02                	lw	s6,0(sp)
    167e:	854a                	mv	a0,s2
    1680:	4942                	lw	s2,16(sp)
    1682:	6105                	addi	sp,sp,32
    1684:	8082                	ret
    1686:	00c4d783          	lhu	a5,12(s1)
    168a:	00fafa63          	bgeu	s5,a5,169e <_fwalk+0x5c>
    168e:	00e49783          	lh	a5,14(s1)
    1692:	01678663          	beq	a5,s6,169e <_fwalk+0x5c>
    1696:	8526                	mv	a0,s1
    1698:	9982                	jalr	s3
    169a:	00a96933          	or	s2,s2,a0
    169e:	06848493          	addi	s1,s1,104
    16a2:	b7d1                	j	1666 <_fwalk+0x24>

000016a4 <_fwalk_reent>:
    16a4:	7179                	addi	sp,sp,-48
    16a6:	d422                	sw	s0,40(sp)
    16a8:	d04a                	sw	s2,32(sp)
    16aa:	ce4e                	sw	s3,28(sp)
    16ac:	cc52                	sw	s4,24(sp)
    16ae:	c85a                	sw	s6,16(sp)
    16b0:	c65e                	sw	s7,12(sp)
    16b2:	d606                	sw	ra,44(sp)
    16b4:	d226                	sw	s1,36(sp)
    16b6:	ca56                	sw	s5,20(sp)
    16b8:	892a                	mv	s2,a0
    16ba:	8a2e                	mv	s4,a1
    16bc:	04850413          	addi	s0,a0,72
    16c0:	4981                	li	s3,0
    16c2:	4b05                	li	s6,1
    16c4:	5bfd                	li	s7,-1
    16c6:	4404                	lw	s1,8(s0)
    16c8:	00442a83          	lw	s5,4(s0)
    16cc:	1afd                	addi	s5,s5,-1
    16ce:	020ad063          	bgez	s5,16ee <_fwalk_reent+0x4a>
    16d2:	4000                	lw	s0,0(s0)
    16d4:	f86d                	bnez	s0,16c6 <_fwalk_reent+0x22>
    16d6:	50b2                	lw	ra,44(sp)
    16d8:	5422                	lw	s0,40(sp)
    16da:	5492                	lw	s1,36(sp)
    16dc:	5902                	lw	s2,32(sp)
    16de:	4a62                	lw	s4,24(sp)
    16e0:	4ad2                	lw	s5,20(sp)
    16e2:	4b42                	lw	s6,16(sp)
    16e4:	4bb2                	lw	s7,12(sp)
    16e6:	854e                	mv	a0,s3
    16e8:	49f2                	lw	s3,28(sp)
    16ea:	6145                	addi	sp,sp,48
    16ec:	8082                	ret
    16ee:	00c4d783          	lhu	a5,12(s1)
    16f2:	00fb7b63          	bgeu	s6,a5,1708 <_fwalk_reent+0x64>
    16f6:	00e49783          	lh	a5,14(s1)
    16fa:	01778763          	beq	a5,s7,1708 <_fwalk_reent+0x64>
    16fe:	85a6                	mv	a1,s1
    1700:	854a                	mv	a0,s2
    1702:	9a02                	jalr	s4
    1704:	00a9e9b3          	or	s3,s3,a0
    1708:	06848493          	addi	s1,s1,104
    170c:	b7c1                	j	16cc <_fwalk_reent+0x28>

0000170e <__swhatbuf_r>:
    170e:	7159                	addi	sp,sp,-112
    1710:	d4a2                	sw	s0,104(sp)
    1712:	842e                	mv	s0,a1
    1714:	00e59583          	lh	a1,14(a1)
    1718:	d2a6                	sw	s1,100(sp)
    171a:	d0ca                	sw	s2,96(sp)
    171c:	d686                	sw	ra,108(sp)
    171e:	84b2                	mv	s1,a2
    1720:	8936                	mv	s2,a3
    1722:	0205d463          	bgez	a1,174a <__swhatbuf_r+0x3c>
    1726:	00c45783          	lhu	a5,12(s0)
    172a:	0807f793          	andi	a5,a5,128
    172e:	cf85                	beqz	a5,1766 <__swhatbuf_r+0x58>
    1730:	4781                	li	a5,0
    1732:	04000713          	li	a4,64
    1736:	50b6                	lw	ra,108(sp)
    1738:	5426                	lw	s0,104(sp)
    173a:	00f92023          	sw	a5,0(s2)
    173e:	c098                	sw	a4,0(s1)
    1740:	5906                	lw	s2,96(sp)
    1742:	5496                	lw	s1,100(sp)
    1744:	4501                	li	a0,0
    1746:	6165                	addi	sp,sp,112
    1748:	8082                	ret
    174a:	0030                	addi	a2,sp,8
    174c:	2661                	jal	1ad4 <_fstat_r>
    174e:	fc054ce3          	bltz	a0,1726 <__swhatbuf_r+0x18>
    1752:	4732                	lw	a4,12(sp)
    1754:	67bd                	lui	a5,0xf
    1756:	8ff9                	and	a5,a5,a4
    1758:	7779                	lui	a4,0xffffe
    175a:	97ba                	add	a5,a5,a4
    175c:	0017b793          	seqz	a5,a5
    1760:	40000713          	li	a4,1024
    1764:	bfc9                	j	1736 <__swhatbuf_r+0x28>
    1766:	4781                	li	a5,0
    1768:	bfe5                	j	1760 <__swhatbuf_r+0x52>

0000176a <__smakebuf_r>:
    176a:	00c5d783          	lhu	a5,12(a1)
    176e:	1101                	addi	sp,sp,-32
    1770:	cc22                	sw	s0,24(sp)
    1772:	ce06                	sw	ra,28(sp)
    1774:	ca26                	sw	s1,20(sp)
    1776:	c84a                	sw	s2,16(sp)
    1778:	8b89                	andi	a5,a5,2
    177a:	842e                	mv	s0,a1
    177c:	cf89                	beqz	a5,1796 <__smakebuf_r+0x2c>
    177e:	04740793          	addi	a5,s0,71
    1782:	c01c                	sw	a5,0(s0)
    1784:	c81c                	sw	a5,16(s0)
    1786:	4785                	li	a5,1
    1788:	c85c                	sw	a5,20(s0)
    178a:	40f2                	lw	ra,28(sp)
    178c:	4462                	lw	s0,24(sp)
    178e:	44d2                	lw	s1,20(sp)
    1790:	4942                	lw	s2,16(sp)
    1792:	6105                	addi	sp,sp,32
    1794:	8082                	ret
    1796:	0074                	addi	a3,sp,12
    1798:	0030                	addi	a2,sp,8
    179a:	84aa                	mv	s1,a0
    179c:	3f8d                	jal	170e <__swhatbuf_r>
    179e:	45a2                	lw	a1,8(sp)
    17a0:	892a                	mv	s2,a0
    17a2:	8526                	mv	a0,s1
    17a4:	2209                	jal	18a6 <_malloc_r>
    17a6:	ed01                	bnez	a0,17be <__smakebuf_r+0x54>
    17a8:	00c41783          	lh	a5,12(s0)
    17ac:	2007f713          	andi	a4,a5,512
    17b0:	ff69                	bnez	a4,178a <__smakebuf_r+0x20>
    17b2:	9bf1                	andi	a5,a5,-4
    17b4:	0027e793          	ori	a5,a5,2
    17b8:	00f41623          	sh	a5,12(s0)
    17bc:	b7c9                	j	177e <__smakebuf_r+0x14>
    17be:	6785                	lui	a5,0x1
    17c0:	4b878793          	addi	a5,a5,1208 # 14b8 <_cleanup_r>
    17c4:	d49c                	sw	a5,40(s1)
    17c6:	00c45783          	lhu	a5,12(s0)
    17ca:	c008                	sw	a0,0(s0)
    17cc:	c808                	sw	a0,16(s0)
    17ce:	0807e793          	ori	a5,a5,128
    17d2:	00f41623          	sh	a5,12(s0)
    17d6:	47a2                	lw	a5,8(sp)
    17d8:	c85c                	sw	a5,20(s0)
    17da:	47b2                	lw	a5,12(sp)
    17dc:	cf89                	beqz	a5,17f6 <__smakebuf_r+0x8c>
    17de:	00e41583          	lh	a1,14(s0)
    17e2:	8526                	mv	a0,s1
    17e4:	260d                	jal	1b06 <_isatty_r>
    17e6:	c901                	beqz	a0,17f6 <__smakebuf_r+0x8c>
    17e8:	00c45783          	lhu	a5,12(s0)
    17ec:	9bf1                	andi	a5,a5,-4
    17ee:	0017e793          	ori	a5,a5,1
    17f2:	00f41623          	sh	a5,12(s0)
    17f6:	00c45783          	lhu	a5,12(s0)
    17fa:	0127e533          	or	a0,a5,s2
    17fe:	00a41623          	sh	a0,12(s0)
    1802:	b761                	j	178a <__smakebuf_r+0x20>

00001804 <_free_r>:
    1804:	c1c5                	beqz	a1,18a4 <_free_r+0xa0>
    1806:	ffc5a783          	lw	a5,-4(a1)
    180a:	1101                	addi	sp,sp,-32
    180c:	cc22                	sw	s0,24(sp)
    180e:	ce06                	sw	ra,28(sp)
    1810:	ffc58413          	addi	s0,a1,-4
    1814:	0007d363          	bgez	a5,181a <_free_r+0x16>
    1818:	943e                	add	s0,s0,a5
    181a:	c62a                	sw	a0,12(sp)
    181c:	26b9                	jal	1b6a <__malloc_lock>
    181e:	00080737          	lui	a4,0x80
    1822:	4f072783          	lw	a5,1264(a4) # 804f0 <__malloc_free_list>
    1826:	4532                	lw	a0,12(sp)
    1828:	eb89                	bnez	a5,183a <_free_r+0x36>
    182a:	00042223          	sw	zero,4(s0)
    182e:	4e872823          	sw	s0,1264(a4)
    1832:	4462                	lw	s0,24(sp)
    1834:	40f2                	lw	ra,28(sp)
    1836:	6105                	addi	sp,sp,32
    1838:	ae15                	j	1b6c <__malloc_unlock>
    183a:	00f47d63          	bgeu	s0,a5,1854 <_free_r+0x50>
    183e:	4010                	lw	a2,0(s0)
    1840:	00c406b3          	add	a3,s0,a2
    1844:	00d79663          	bne	a5,a3,1850 <_free_r+0x4c>
    1848:	4394                	lw	a3,0(a5)
    184a:	43dc                	lw	a5,4(a5)
    184c:	96b2                	add	a3,a3,a2
    184e:	c014                	sw	a3,0(s0)
    1850:	c05c                	sw	a5,4(s0)
    1852:	bff1                	j	182e <_free_r+0x2a>
    1854:	873e                	mv	a4,a5
    1856:	43dc                	lw	a5,4(a5)
    1858:	c399                	beqz	a5,185e <_free_r+0x5a>
    185a:	fef47de3          	bgeu	s0,a5,1854 <_free_r+0x50>
    185e:	4314                	lw	a3,0(a4)
    1860:	00d70633          	add	a2,a4,a3
    1864:	00861f63          	bne	a2,s0,1882 <_free_r+0x7e>
    1868:	4010                	lw	a2,0(s0)
    186a:	96b2                	add	a3,a3,a2
    186c:	c314                	sw	a3,0(a4)
    186e:	00d70633          	add	a2,a4,a3
    1872:	fcc790e3          	bne	a5,a2,1832 <_free_r+0x2e>
    1876:	4390                	lw	a2,0(a5)
    1878:	43dc                	lw	a5,4(a5)
    187a:	96b2                	add	a3,a3,a2
    187c:	c314                	sw	a3,0(a4)
    187e:	c35c                	sw	a5,4(a4)
    1880:	bf4d                	j	1832 <_free_r+0x2e>
    1882:	00c47563          	bgeu	s0,a2,188c <_free_r+0x88>
    1886:	47b1                	li	a5,12
    1888:	c11c                	sw	a5,0(a0)
    188a:	b765                	j	1832 <_free_r+0x2e>
    188c:	4010                	lw	a2,0(s0)
    188e:	00c406b3          	add	a3,s0,a2
    1892:	00d79663          	bne	a5,a3,189e <_free_r+0x9a>
    1896:	4394                	lw	a3,0(a5)
    1898:	43dc                	lw	a5,4(a5)
    189a:	96b2                	add	a3,a3,a2
    189c:	c014                	sw	a3,0(s0)
    189e:	c05c                	sw	a5,4(s0)
    18a0:	c340                	sw	s0,4(a4)
    18a2:	bf41                	j	1832 <_free_r+0x2e>
    18a4:	8082                	ret

000018a6 <_malloc_r>:
    18a6:	1101                	addi	sp,sp,-32
    18a8:	ca26                	sw	s1,20(sp)
    18aa:	00358493          	addi	s1,a1,3
    18ae:	98f1                	andi	s1,s1,-4
    18b0:	c84a                	sw	s2,16(sp)
    18b2:	ce06                	sw	ra,28(sp)
    18b4:	cc22                	sw	s0,24(sp)
    18b6:	c64e                	sw	s3,12(sp)
    18b8:	04a1                	addi	s1,s1,8
    18ba:	47b1                	li	a5,12
    18bc:	892a                	mv	s2,a0
    18be:	04f4f663          	bgeu	s1,a5,190a <_malloc_r+0x64>
    18c2:	44b1                	li	s1,12
    18c4:	04b4e563          	bltu	s1,a1,190e <_malloc_r+0x68>
    18c8:	854a                	mv	a0,s2
    18ca:	2445                	jal	1b6a <__malloc_lock>
    18cc:	000807b7          	lui	a5,0x80
    18d0:	4f078713          	addi	a4,a5,1264 # 804f0 <__malloc_free_list>
    18d4:	4318                	lw	a4,0(a4)
    18d6:	4f078693          	addi	a3,a5,1264
    18da:	843a                	mv	s0,a4
    18dc:	e421                	bnez	s0,1924 <_malloc_r+0x7e>
    18de:	00080437          	lui	s0,0x80
    18e2:	4f440413          	addi	s0,s0,1268 # 804f4 <__malloc_sbrk_start>
    18e6:	401c                	lw	a5,0(s0)
    18e8:	e789                	bnez	a5,18f2 <_malloc_r+0x4c>
    18ea:	4581                	li	a1,0
    18ec:	854a                	mv	a0,s2
    18ee:	2851                	jal	1982 <_sbrk_r>
    18f0:	c008                	sw	a0,0(s0)
    18f2:	85a6                	mv	a1,s1
    18f4:	854a                	mv	a0,s2
    18f6:	2071                	jal	1982 <_sbrk_r>
    18f8:	59fd                	li	s3,-1
    18fa:	07351863          	bne	a0,s3,196a <_malloc_r+0xc4>
    18fe:	47b1                	li	a5,12
    1900:	00f92023          	sw	a5,0(s2)
    1904:	854a                	mv	a0,s2
    1906:	249d                	jal	1b6c <__malloc_unlock>
    1908:	a031                	j	1914 <_malloc_r+0x6e>
    190a:	fa04dde3          	bgez	s1,18c4 <_malloc_r+0x1e>
    190e:	47b1                	li	a5,12
    1910:	00f92023          	sw	a5,0(s2)
    1914:	4501                	li	a0,0
    1916:	40f2                	lw	ra,28(sp)
    1918:	4462                	lw	s0,24(sp)
    191a:	44d2                	lw	s1,20(sp)
    191c:	4942                	lw	s2,16(sp)
    191e:	49b2                	lw	s3,12(sp)
    1920:	6105                	addi	sp,sp,32
    1922:	8082                	ret
    1924:	401c                	lw	a5,0(s0)
    1926:	8f85                	sub	a5,a5,s1
    1928:	0207ce63          	bltz	a5,1964 <_malloc_r+0xbe>
    192c:	462d                	li	a2,11
    192e:	00f67663          	bgeu	a2,a5,193a <_malloc_r+0x94>
    1932:	c01c                	sw	a5,0(s0)
    1934:	943e                	add	s0,s0,a5
    1936:	c004                	sw	s1,0(s0)
    1938:	a029                	j	1942 <_malloc_r+0x9c>
    193a:	405c                	lw	a5,4(s0)
    193c:	02871263          	bne	a4,s0,1960 <_malloc_r+0xba>
    1940:	c29c                	sw	a5,0(a3)
    1942:	854a                	mv	a0,s2
    1944:	2425                	jal	1b6c <__malloc_unlock>
    1946:	00b40513          	addi	a0,s0,11
    194a:	00440793          	addi	a5,s0,4
    194e:	9961                	andi	a0,a0,-8
    1950:	40f50733          	sub	a4,a0,a5
    1954:	fcf501e3          	beq	a0,a5,1916 <_malloc_r+0x70>
    1958:	943a                	add	s0,s0,a4
    195a:	8f89                	sub	a5,a5,a0
    195c:	c01c                	sw	a5,0(s0)
    195e:	bf65                	j	1916 <_malloc_r+0x70>
    1960:	c35c                	sw	a5,4(a4)
    1962:	b7c5                	j	1942 <_malloc_r+0x9c>
    1964:	8722                	mv	a4,s0
    1966:	4040                	lw	s0,4(s0)
    1968:	bf95                	j	18dc <_malloc_r+0x36>
    196a:	00350413          	addi	s0,a0,3
    196e:	9871                	andi	s0,s0,-4
    1970:	fc8503e3          	beq	a0,s0,1936 <_malloc_r+0x90>
    1974:	40a405b3          	sub	a1,s0,a0
    1978:	854a                	mv	a0,s2
    197a:	2021                	jal	1982 <_sbrk_r>
    197c:	fb351de3          	bne	a0,s3,1936 <_malloc_r+0x90>
    1980:	bfbd                	j	18fe <_malloc_r+0x58>

00001982 <_sbrk_r>:
    1982:	1141                	addi	sp,sp,-16
    1984:	c422                	sw	s0,8(sp)
    1986:	c226                	sw	s1,4(sp)
    1988:	842a                	mv	s0,a0
    198a:	000804b7          	lui	s1,0x80
    198e:	852e                	mv	a0,a1
    1990:	c606                	sw	ra,12(sp)
    1992:	4e04a423          	sw	zero,1256(s1) # 804e8 <errno>
    1996:	c2ffe0ef          	jal	ra,5c4 <_sbrk>
    199a:	57fd                	li	a5,-1
    199c:	00f51663          	bne	a0,a5,19a8 <_sbrk_r+0x26>
    19a0:	4e84a783          	lw	a5,1256(s1)
    19a4:	c391                	beqz	a5,19a8 <_sbrk_r+0x26>
    19a6:	c01c                	sw	a5,0(s0)
    19a8:	40b2                	lw	ra,12(sp)
    19aa:	4422                	lw	s0,8(sp)
    19ac:	4492                	lw	s1,4(sp)
    19ae:	0141                	addi	sp,sp,16
    19b0:	8082                	ret

000019b2 <__sread>:
    19b2:	1141                	addi	sp,sp,-16
    19b4:	c422                	sw	s0,8(sp)
    19b6:	842e                	mv	s0,a1
    19b8:	00e59583          	lh	a1,14(a1)
    19bc:	c606                	sw	ra,12(sp)
    19be:	2a45                	jal	1b6e <_read_r>
    19c0:	00054963          	bltz	a0,19d2 <__sread+0x20>
    19c4:	487c                	lw	a5,84(s0)
    19c6:	97aa                	add	a5,a5,a0
    19c8:	c87c                	sw	a5,84(s0)
    19ca:	40b2                	lw	ra,12(sp)
    19cc:	4422                	lw	s0,8(sp)
    19ce:	0141                	addi	sp,sp,16
    19d0:	8082                	ret
    19d2:	00c45783          	lhu	a5,12(s0)
    19d6:	777d                	lui	a4,0xfffff
    19d8:	177d                	addi	a4,a4,-1
    19da:	8ff9                	and	a5,a5,a4
    19dc:	00f41623          	sh	a5,12(s0)
    19e0:	b7ed                	j	19ca <__sread+0x18>

000019e2 <__seofread>:
    19e2:	4501                	li	a0,0
    19e4:	8082                	ret

000019e6 <__swrite>:
    19e6:	00c5d783          	lhu	a5,12(a1)
    19ea:	1101                	addi	sp,sp,-32
    19ec:	cc22                	sw	s0,24(sp)
    19ee:	ca26                	sw	s1,20(sp)
    19f0:	c84a                	sw	s2,16(sp)
    19f2:	c64e                	sw	s3,12(sp)
    19f4:	ce06                	sw	ra,28(sp)
    19f6:	1007f793          	andi	a5,a5,256
    19fa:	84aa                	mv	s1,a0
    19fc:	842e                	mv	s0,a1
    19fe:	8932                	mv	s2,a2
    1a00:	89b6                	mv	s3,a3
    1a02:	c791                	beqz	a5,1a0e <__swrite+0x28>
    1a04:	00e59583          	lh	a1,14(a1)
    1a08:	4689                	li	a3,2
    1a0a:	4601                	li	a2,0
    1a0c:	222d                	jal	1b36 <_lseek_r>
    1a0e:	00c45783          	lhu	a5,12(s0)
    1a12:	777d                	lui	a4,0xfffff
    1a14:	177d                	addi	a4,a4,-1
    1a16:	8ff9                	and	a5,a5,a4
    1a18:	00e41583          	lh	a1,14(s0)
    1a1c:	00f41623          	sh	a5,12(s0)
    1a20:	4462                	lw	s0,24(sp)
    1a22:	40f2                	lw	ra,28(sp)
    1a24:	86ce                	mv	a3,s3
    1a26:	864a                	mv	a2,s2
    1a28:	49b2                	lw	s3,12(sp)
    1a2a:	4942                	lw	s2,16(sp)
    1a2c:	8526                	mv	a0,s1
    1a2e:	44d2                	lw	s1,20(sp)
    1a30:	6105                	addi	sp,sp,32
    1a32:	a83d                	j	1a70 <_write_r>

00001a34 <__sseek>:
    1a34:	1141                	addi	sp,sp,-16
    1a36:	c422                	sw	s0,8(sp)
    1a38:	842e                	mv	s0,a1
    1a3a:	00e59583          	lh	a1,14(a1)
    1a3e:	c606                	sw	ra,12(sp)
    1a40:	28dd                	jal	1b36 <_lseek_r>
    1a42:	577d                	li	a4,-1
    1a44:	00c45783          	lhu	a5,12(s0)
    1a48:	00e51b63          	bne	a0,a4,1a5e <__sseek+0x2a>
    1a4c:	777d                	lui	a4,0xfffff
    1a4e:	177d                	addi	a4,a4,-1
    1a50:	8ff9                	and	a5,a5,a4
    1a52:	00f41623          	sh	a5,12(s0)
    1a56:	40b2                	lw	ra,12(sp)
    1a58:	4422                	lw	s0,8(sp)
    1a5a:	0141                	addi	sp,sp,16
    1a5c:	8082                	ret
    1a5e:	6705                	lui	a4,0x1
    1a60:	8fd9                	or	a5,a5,a4
    1a62:	00f41623          	sh	a5,12(s0)
    1a66:	c868                	sw	a0,84(s0)
    1a68:	b7fd                	j	1a56 <__sseek+0x22>

00001a6a <__sclose>:
    1a6a:	00e59583          	lh	a1,14(a1)
    1a6e:	a81d                	j	1aa4 <_close_r>

00001a70 <_write_r>:
    1a70:	1141                	addi	sp,sp,-16
    1a72:	c422                	sw	s0,8(sp)
    1a74:	c226                	sw	s1,4(sp)
    1a76:	842a                	mv	s0,a0
    1a78:	000804b7          	lui	s1,0x80
    1a7c:	852e                	mv	a0,a1
    1a7e:	85b2                	mv	a1,a2
    1a80:	8636                	mv	a2,a3
    1a82:	c606                	sw	ra,12(sp)
    1a84:	4e04a423          	sw	zero,1256(s1) # 804e8 <errno>
    1a88:	a91fe0ef          	jal	ra,518 <_write>
    1a8c:	57fd                	li	a5,-1
    1a8e:	00f51663          	bne	a0,a5,1a9a <_write_r+0x2a>
    1a92:	4e84a783          	lw	a5,1256(s1)
    1a96:	c391                	beqz	a5,1a9a <_write_r+0x2a>
    1a98:	c01c                	sw	a5,0(s0)
    1a9a:	40b2                	lw	ra,12(sp)
    1a9c:	4422                	lw	s0,8(sp)
    1a9e:	4492                	lw	s1,4(sp)
    1aa0:	0141                	addi	sp,sp,16
    1aa2:	8082                	ret

00001aa4 <_close_r>:
    1aa4:	1141                	addi	sp,sp,-16
    1aa6:	c422                	sw	s0,8(sp)
    1aa8:	c226                	sw	s1,4(sp)
    1aaa:	842a                	mv	s0,a0
    1aac:	000804b7          	lui	s1,0x80
    1ab0:	852e                	mv	a0,a1
    1ab2:	c606                	sw	ra,12(sp)
    1ab4:	4e04a423          	sw	zero,1256(s1) # 804e8 <errno>
    1ab8:	a35fe0ef          	jal	ra,4ec <_close>
    1abc:	57fd                	li	a5,-1
    1abe:	00f51663          	bne	a0,a5,1aca <_close_r+0x26>
    1ac2:	4e84a783          	lw	a5,1256(s1)
    1ac6:	c391                	beqz	a5,1aca <_close_r+0x26>
    1ac8:	c01c                	sw	a5,0(s0)
    1aca:	40b2                	lw	ra,12(sp)
    1acc:	4422                	lw	s0,8(sp)
    1ace:	4492                	lw	s1,4(sp)
    1ad0:	0141                	addi	sp,sp,16
    1ad2:	8082                	ret

00001ad4 <_fstat_r>:
    1ad4:	1141                	addi	sp,sp,-16
    1ad6:	c422                	sw	s0,8(sp)
    1ad8:	c226                	sw	s1,4(sp)
    1ada:	842a                	mv	s0,a0
    1adc:	000804b7          	lui	s1,0x80
    1ae0:	852e                	mv	a0,a1
    1ae2:	85b2                	mv	a1,a2
    1ae4:	c606                	sw	ra,12(sp)
    1ae6:	4e04a423          	sw	zero,1256(s1) # 804e8 <errno>
    1aea:	a17fe0ef          	jal	ra,500 <_fstat>
    1aee:	57fd                	li	a5,-1
    1af0:	00f51663          	bne	a0,a5,1afc <_fstat_r+0x28>
    1af4:	4e84a783          	lw	a5,1256(s1)
    1af8:	c391                	beqz	a5,1afc <_fstat_r+0x28>
    1afa:	c01c                	sw	a5,0(s0)
    1afc:	40b2                	lw	ra,12(sp)
    1afe:	4422                	lw	s0,8(sp)
    1b00:	4492                	lw	s1,4(sp)
    1b02:	0141                	addi	sp,sp,16
    1b04:	8082                	ret

00001b06 <_isatty_r>:
    1b06:	1141                	addi	sp,sp,-16
    1b08:	c422                	sw	s0,8(sp)
    1b0a:	c226                	sw	s1,4(sp)
    1b0c:	842a                	mv	s0,a0
    1b0e:	000804b7          	lui	s1,0x80
    1b12:	852e                	mv	a0,a1
    1b14:	c606                	sw	ra,12(sp)
    1b16:	4e04a423          	sw	zero,1256(s1) # 804e8 <errno>
    1b1a:	9effe0ef          	jal	ra,508 <_isatty>
    1b1e:	57fd                	li	a5,-1
    1b20:	00f51663          	bne	a0,a5,1b2c <_isatty_r+0x26>
    1b24:	4e84a783          	lw	a5,1256(s1)
    1b28:	c391                	beqz	a5,1b2c <_isatty_r+0x26>
    1b2a:	c01c                	sw	a5,0(s0)
    1b2c:	40b2                	lw	ra,12(sp)
    1b2e:	4422                	lw	s0,8(sp)
    1b30:	4492                	lw	s1,4(sp)
    1b32:	0141                	addi	sp,sp,16
    1b34:	8082                	ret

00001b36 <_lseek_r>:
    1b36:	1141                	addi	sp,sp,-16
    1b38:	c422                	sw	s0,8(sp)
    1b3a:	c226                	sw	s1,4(sp)
    1b3c:	842a                	mv	s0,a0
    1b3e:	000804b7          	lui	s1,0x80
    1b42:	852e                	mv	a0,a1
    1b44:	85b2                	mv	a1,a2
    1b46:	8636                	mv	a2,a3
    1b48:	c606                	sw	ra,12(sp)
    1b4a:	4e04a423          	sw	zero,1256(s1) # 804e8 <errno>
    1b4e:	9c3fe0ef          	jal	ra,510 <_lseek>
    1b52:	57fd                	li	a5,-1
    1b54:	00f51663          	bne	a0,a5,1b60 <handler.c.0b49bfed+0x5>
    1b58:	4e84a783          	lw	a5,1256(s1)
    1b5c:	c391                	beqz	a5,1b60 <handler.c.0b49bfed+0x5>
    1b5e:	c01c                	sw	a5,0(s0)
    1b60:	40b2                	lw	ra,12(sp)
    1b62:	4422                	lw	s0,8(sp)
    1b64:	4492                	lw	s1,4(sp)
    1b66:	0141                	addi	sp,sp,16
    1b68:	8082                	ret

00001b6a <__malloc_lock>:
    1b6a:	8082                	ret

00001b6c <__malloc_unlock>:
    1b6c:	8082                	ret

00001b6e <_read_r>:
    1b6e:	1141                	addi	sp,sp,-16
    1b70:	c422                	sw	s0,8(sp)
    1b72:	c226                	sw	s1,4(sp)
    1b74:	842a                	mv	s0,a0
    1b76:	000804b7          	lui	s1,0x80
    1b7a:	852e                	mv	a0,a1
    1b7c:	85b2                	mv	a1,a2
    1b7e:	8636                	mv	a2,a3
    1b80:	c606                	sw	ra,12(sp)
    1b82:	4e04a423          	sw	zero,1256(s1) # 804e8 <errno>
    1b86:	98ffe0ef          	jal	ra,514 <_read>
    1b8a:	57fd                	li	a5,-1
    1b8c:	00f51663          	bne	a0,a5,1b98 <_read_r+0x2a>
    1b90:	4e84a783          	lw	a5,1256(s1)
    1b94:	c391                	beqz	a5,1b98 <_read_r+0x2a>
    1b96:	c01c                	sw	a5,0(s0)
    1b98:	40b2                	lw	ra,12(sp)
    1b9a:	4422                	lw	s0,8(sp)
    1b9c:	4492                	lw	s1,4(sp)
    1b9e:	0141                	addi	sp,sp,16
    1ba0:	8082                	ret

00001ba2 <_iprintf_r>:
    1ba2:	7139                	addi	sp,sp,-64
    1ba4:	cc22                	sw	s0,24(sp)
    1ba6:	ca26                	sw	s1,20(sp)
    1ba8:	ce06                	sw	ra,28(sp)
    1baa:	d432                	sw	a2,40(sp)
    1bac:	d636                	sw	a3,44(sp)
    1bae:	d83a                	sw	a4,48(sp)
    1bb0:	da3e                	sw	a5,52(sp)
    1bb2:	dc42                	sw	a6,56(sp)
    1bb4:	de46                	sw	a7,60(sp)
    1bb6:	842a                	mv	s0,a0
    1bb8:	84ae                	mv	s1,a1
    1bba:	c509                	beqz	a0,1bc4 <_iprintf_r+0x22>
    1bbc:	4d1c                	lw	a5,24(a0)
    1bbe:	e399                	bnez	a5,1bc4 <_iprintf_r+0x22>
    1bc0:	955ff0ef          	jal	ra,1514 <__sinit>
    1bc4:	440c                	lw	a1,8(s0)
    1bc6:	1034                	addi	a3,sp,40
    1bc8:	8626                	mv	a2,s1
    1bca:	8522                	mv	a0,s0
    1bcc:	c636                	sw	a3,12(sp)
    1bce:	28e1                	jal	1ca6 <_vfiprintf_r>
    1bd0:	40f2                	lw	ra,28(sp)
    1bd2:	4462                	lw	s0,24(sp)
    1bd4:	44d2                	lw	s1,20(sp)
    1bd6:	6121                	addi	sp,sp,64
    1bd8:	8082                	ret

00001bda <iprintf>:
    1bda:	715d                	addi	sp,sp,-80
    1bdc:	c2be                	sw	a5,68(sp)
    1bde:	000807b7          	lui	a5,0x80
    1be2:	d422                	sw	s0,40(sp)
    1be4:	842a                	mv	s0,a0
    1be6:	4e07a503          	lw	a0,1248(a5) # 804e0 <_impure_ptr>
    1bea:	d606                	sw	ra,44(sp)
    1bec:	da2e                	sw	a1,52(sp)
    1bee:	dc32                	sw	a2,56(sp)
    1bf0:	de36                	sw	a3,60(sp)
    1bf2:	c0ba                	sw	a4,64(sp)
    1bf4:	c4c2                	sw	a6,72(sp)
    1bf6:	c6c6                	sw	a7,76(sp)
    1bf8:	c519                	beqz	a0,1c06 <iprintf+0x2c>
    1bfa:	4d1c                	lw	a5,24(a0)
    1bfc:	e789                	bnez	a5,1c06 <iprintf+0x2c>
    1bfe:	c62a                	sw	a0,12(sp)
    1c00:	915ff0ef          	jal	ra,1514 <__sinit>
    1c04:	4532                	lw	a0,12(sp)
    1c06:	450c                	lw	a1,8(a0)
    1c08:	1854                	addi	a3,sp,52
    1c0a:	8622                	mv	a2,s0
    1c0c:	ce36                	sw	a3,28(sp)
    1c0e:	2861                	jal	1ca6 <_vfiprintf_r>
    1c10:	50b2                	lw	ra,44(sp)
    1c12:	5422                	lw	s0,40(sp)
    1c14:	6161                	addi	sp,sp,80
    1c16:	8082                	ret

00001c18 <__sfputc_r>:
    1c18:	461c                	lw	a5,8(a2)
    1c1a:	17fd                	addi	a5,a5,-1
    1c1c:	c61c                	sw	a5,8(a2)
    1c1e:	0007da63          	bgez	a5,1c32 <__sfputc_r+0x1a>
    1c22:	4e18                	lw	a4,24(a2)
    1c24:	00e7c563          	blt	a5,a4,1c2e <__sfputc_r+0x16>
    1c28:	47a9                	li	a5,10
    1c2a:	00f59463          	bne	a1,a5,1c32 <__sfputc_r+0x1a>
    1c2e:	b36ff06f          	j	f64 <__swbuf_r>
    1c32:	421c                	lw	a5,0(a2)
    1c34:	852e                	mv	a0,a1
    1c36:	00178713          	addi	a4,a5,1
    1c3a:	c218                	sw	a4,0(a2)
    1c3c:	00b78023          	sb	a1,0(a5)
    1c40:	8082                	ret

00001c42 <__sfputs_r>:
    1c42:	1101                	addi	sp,sp,-32
    1c44:	cc22                	sw	s0,24(sp)
    1c46:	ca26                	sw	s1,20(sp)
    1c48:	c84a                	sw	s2,16(sp)
    1c4a:	c64e                	sw	s3,12(sp)
    1c4c:	c452                	sw	s4,8(sp)
    1c4e:	ce06                	sw	ra,28(sp)
    1c50:	892a                	mv	s2,a0
    1c52:	89ae                	mv	s3,a1
    1c54:	8432                	mv	s0,a2
    1c56:	00d604b3          	add	s1,a2,a3
    1c5a:	5a7d                	li	s4,-1
    1c5c:	00941463          	bne	s0,s1,1c64 <__sfputs_r+0x22>
    1c60:	4501                	li	a0,0
    1c62:	a809                	j	1c74 <__sfputs_r+0x32>
    1c64:	00044583          	lbu	a1,0(s0)
    1c68:	864e                	mv	a2,s3
    1c6a:	854a                	mv	a0,s2
    1c6c:	3775                	jal	1c18 <__sfputc_r>
    1c6e:	0405                	addi	s0,s0,1
    1c70:	ff4516e3          	bne	a0,s4,1c5c <__sfputs_r+0x1a>
    1c74:	40f2                	lw	ra,28(sp)
    1c76:	4462                	lw	s0,24(sp)
    1c78:	44d2                	lw	s1,20(sp)
    1c7a:	4942                	lw	s2,16(sp)
    1c7c:	49b2                	lw	s3,12(sp)
    1c7e:	4a22                	lw	s4,8(sp)
    1c80:	6105                	addi	sp,sp,32
    1c82:	8082                	ret

00001c84 <__sprint_r>:
    1c84:	461c                	lw	a5,8(a2)
    1c86:	1141                	addi	sp,sp,-16
    1c88:	c422                	sw	s0,8(sp)
    1c8a:	c606                	sw	ra,12(sp)
    1c8c:	8432                	mv	s0,a2
    1c8e:	cb91                	beqz	a5,1ca2 <__sprint_r+0x1e>
    1c90:	24d1                	jal	1f54 <__sfvwrite_r>
    1c92:	00042423          	sw	zero,8(s0)
    1c96:	40b2                	lw	ra,12(sp)
    1c98:	00042223          	sw	zero,4(s0)
    1c9c:	4422                	lw	s0,8(sp)
    1c9e:	0141                	addi	sp,sp,16
    1ca0:	8082                	ret
    1ca2:	4501                	li	a0,0
    1ca4:	bfcd                	j	1c96 <__sprint_r+0x12>

00001ca6 <_vfiprintf_r>:
    1ca6:	7171                	addi	sp,sp,-176
    1ca8:	d522                	sw	s0,168(sp)
    1caa:	d326                	sw	s1,164(sp)
    1cac:	d14a                	sw	s2,160(sp)
    1cae:	cf4e                	sw	s3,156(sp)
    1cb0:	d706                	sw	ra,172(sp)
    1cb2:	cd52                	sw	s4,152(sp)
    1cb4:	cb56                	sw	s5,148(sp)
    1cb6:	c95a                	sw	s6,144(sp)
    1cb8:	c75e                	sw	s7,140(sp)
    1cba:	c562                	sw	s8,136(sp)
    1cbc:	c366                	sw	s9,132(sp)
    1cbe:	c16a                	sw	s10,128(sp)
    1cc0:	deee                	sw	s11,124(sp)
    1cc2:	89aa                	mv	s3,a0
    1cc4:	84ae                	mv	s1,a1
    1cc6:	8932                	mv	s2,a2
    1cc8:	8436                	mv	s0,a3
    1cca:	c509                	beqz	a0,1cd4 <_vfiprintf_r+0x2e>
    1ccc:	4d1c                	lw	a5,24(a0)
    1cce:	e399                	bnez	a5,1cd4 <_vfiprintf_r+0x2e>
    1cd0:	845ff0ef          	jal	ra,1514 <__sinit>
    1cd4:	000807b7          	lui	a5,0x80
    1cd8:	2a478793          	addi	a5,a5,676 # 802a4 <__sf_fake_stdin>
    1cdc:	0ef49363          	bne	s1,a5,1dc2 <mmio.c.1d292ae4+0xf>
    1ce0:	0049a483          	lw	s1,4(s3)
    1ce4:	00c4d783          	lhu	a5,12(s1)
    1ce8:	8ba1                	andi	a5,a5,8
    1cea:	0e078e63          	beqz	a5,1de6 <mmio.c.1d292ae4+0x33>
    1cee:	489c                	lw	a5,16(s1)
    1cf0:	0e078b63          	beqz	a5,1de6 <mmio.c.1d292ae4+0x33>
    1cf4:	02000793          	li	a5,32
    1cf8:	02f104a3          	sb	a5,41(sp)
    1cfc:	03000793          	li	a5,48
    1d00:	d202                	sw	zero,36(sp)
    1d02:	02f10523          	sb	a5,42(sp)
    1d06:	c622                	sw	s0,12(sp)
    1d08:	02500c93          	li	s9,37
    1d0c:	00080b37          	lui	s6,0x80
    1d10:	00080bb7          	lui	s7,0x80
    1d14:	00080d37          	lui	s10,0x80
    1d18:	6c09                	lui	s8,0x2
    1d1a:	00000a93          	li	s5,0
    1d1e:	844a                	mv	s0,s2
    1d20:	00044783          	lbu	a5,0(s0)
    1d24:	c399                	beqz	a5,1d2a <_vfiprintf_r+0x84>
    1d26:	0f979663          	bne	a5,s9,1e12 <mmio.c.1d292ae4+0x5f>
    1d2a:	41240db3          	sub	s11,s0,s2
    1d2e:	01240d63          	beq	s0,s2,1d48 <_vfiprintf_r+0xa2>
    1d32:	86ee                	mv	a3,s11
    1d34:	864a                	mv	a2,s2
    1d36:	85a6                	mv	a1,s1
    1d38:	854e                	mv	a0,s3
    1d3a:	3721                	jal	1c42 <__sfputs_r>
    1d3c:	57fd                	li	a5,-1
    1d3e:	1ef50363          	beq	a0,a5,1f24 <mmio.c.1d292ae4+0x171>
    1d42:	5792                	lw	a5,36(sp)
    1d44:	97ee                	add	a5,a5,s11
    1d46:	d23e                	sw	a5,36(sp)
    1d48:	00044783          	lbu	a5,0(s0)
    1d4c:	1c078c63          	beqz	a5,1f24 <mmio.c.1d292ae4+0x171>
    1d50:	57fd                	li	a5,-1
    1d52:	00140913          	addi	s2,s0,1
    1d56:	c802                	sw	zero,16(sp)
    1d58:	ce02                	sw	zero,28(sp)
    1d5a:	ca3e                	sw	a5,20(sp)
    1d5c:	cc02                	sw	zero,24(sp)
    1d5e:	040109a3          	sb	zero,83(sp)
    1d62:	d482                	sw	zero,104(sp)
    1d64:	4d85                	li	s11,1
    1d66:	00094583          	lbu	a1,0(s2)
    1d6a:	4615                	li	a2,5
    1d6c:	2e4b0513          	addi	a0,s6,740 # 802e4 <__sf_fake_stdout+0x20>
    1d70:	217d                	jal	221e <memchr>
    1d72:	47c2                	lw	a5,16(sp)
    1d74:	00190413          	addi	s0,s2,1
    1d78:	ed59                	bnez	a0,1e16 <mmio.c.1d292ae4+0x63>
    1d7a:	0107f713          	andi	a4,a5,16
    1d7e:	c709                	beqz	a4,1d88 <_vfiprintf_r+0xe2>
    1d80:	02000713          	li	a4,32
    1d84:	04e109a3          	sb	a4,83(sp)
    1d88:	0087f713          	andi	a4,a5,8
    1d8c:	c709                	beqz	a4,1d96 <_vfiprintf_r+0xf0>
    1d8e:	02b00713          	li	a4,43
    1d92:	04e109a3          	sb	a4,83(sp)
    1d96:	00094683          	lbu	a3,0(s2)
    1d9a:	02a00713          	li	a4,42
    1d9e:	08e68563          	beq	a3,a4,1e28 <mmio.c.1d292ae4+0x75>
    1da2:	47f2                	lw	a5,28(sp)
    1da4:	844a                	mv	s0,s2
    1da6:	4681                	li	a3,0
    1da8:	4625                	li	a2,9
    1daa:	4529                	li	a0,10
    1dac:	00044703          	lbu	a4,0(s0)
    1db0:	00140593          	addi	a1,s0,1
    1db4:	fd070713          	addi	a4,a4,-48 # fd0 <__swbuf_r+0x6c>
    1db8:	0ae67d63          	bgeu	a2,a4,1e72 <mmio.c.1d292ae4+0xbf>
    1dbc:	ceb5                	beqz	a3,1e38 <mmio.c.1d292ae4+0x85>
    1dbe:	ce3e                	sw	a5,28(sp)
    1dc0:	a8a5                	j	1e38 <mmio.c.1d292ae4+0x85>
    1dc2:	000807b7          	lui	a5,0x80
    1dc6:	2c478793          	addi	a5,a5,708 # 802c4 <__sf_fake_stdout>
    1dca:	00f49563          	bne	s1,a5,1dd4 <mmio.c.1d292ae4+0x21>
    1dce:	0089a483          	lw	s1,8(s3)
    1dd2:	bf09                	j	1ce4 <_vfiprintf_r+0x3e>
    1dd4:	000807b7          	lui	a5,0x80
    1dd8:	28478793          	addi	a5,a5,644 # 80284 <__sf_fake_stderr>
    1ddc:	f0f494e3          	bne	s1,a5,1ce4 <_vfiprintf_r+0x3e>
    1de0:	00c9a483          	lw	s1,12(s3)
    1de4:	b701                	j	1ce4 <_vfiprintf_r+0x3e>
    1de6:	85a6                	mv	a1,s1
    1de8:	854e                	mv	a0,s3
    1dea:	a48ff0ef          	jal	ra,1032 <__swsetup_r>
    1dee:	f00503e3          	beqz	a0,1cf4 <_vfiprintf_r+0x4e>
    1df2:	557d                	li	a0,-1
    1df4:	50ba                	lw	ra,172(sp)
    1df6:	542a                	lw	s0,168(sp)
    1df8:	549a                	lw	s1,164(sp)
    1dfa:	590a                	lw	s2,160(sp)
    1dfc:	49fa                	lw	s3,156(sp)
    1dfe:	4a6a                	lw	s4,152(sp)
    1e00:	4ada                	lw	s5,148(sp)
    1e02:	4b4a                	lw	s6,144(sp)
    1e04:	4bba                	lw	s7,140(sp)
    1e06:	4c2a                	lw	s8,136(sp)
    1e08:	4c9a                	lw	s9,132(sp)
    1e0a:	4d0a                	lw	s10,128(sp)
    1e0c:	5df6                	lw	s11,124(sp)
    1e0e:	614d                	addi	sp,sp,176
    1e10:	8082                	ret
    1e12:	0405                	addi	s0,s0,1
    1e14:	b731                	j	1d20 <_vfiprintf_r+0x7a>
    1e16:	2e4b0713          	addi	a4,s6,740
    1e1a:	8d19                	sub	a0,a0,a4
    1e1c:	00ad9533          	sll	a0,s11,a0
    1e20:	8fc9                	or	a5,a5,a0
    1e22:	c83e                	sw	a5,16(sp)
    1e24:	8922                	mv	s2,s0
    1e26:	b781                	j	1d66 <_vfiprintf_r+0xc0>
    1e28:	4732                	lw	a4,12(sp)
    1e2a:	00470693          	addi	a3,a4,4
    1e2e:	4318                	lw	a4,0(a4)
    1e30:	c636                	sw	a3,12(sp)
    1e32:	02074963          	bltz	a4,1e64 <mmio.c.1d292ae4+0xb1>
    1e36:	ce3a                	sw	a4,28(sp)
    1e38:	00044703          	lbu	a4,0(s0)
    1e3c:	02e00793          	li	a5,46
    1e40:	06f71063          	bne	a4,a5,1ea0 <mmio.c.1d292ae4+0xed>
    1e44:	00144703          	lbu	a4,1(s0)
    1e48:	02a00793          	li	a5,42
    1e4c:	02f71b63          	bne	a4,a5,1e82 <mmio.c.1d292ae4+0xcf>
    1e50:	47b2                	lw	a5,12(sp)
    1e52:	0409                	addi	s0,s0,2
    1e54:	00478713          	addi	a4,a5,4
    1e58:	439c                	lw	a5,0(a5)
    1e5a:	c63a                	sw	a4,12(sp)
    1e5c:	0207c163          	bltz	a5,1e7e <mmio.c.1d292ae4+0xcb>
    1e60:	ca3e                	sw	a5,20(sp)
    1e62:	a83d                	j	1ea0 <mmio.c.1d292ae4+0xed>
    1e64:	40e00733          	neg	a4,a4
    1e68:	0027e793          	ori	a5,a5,2
    1e6c:	ce3a                	sw	a4,28(sp)
    1e6e:	c83e                	sw	a5,16(sp)
    1e70:	b7e1                	j	1e38 <mmio.c.1d292ae4+0x85>
    1e72:	02a787b3          	mul	a5,a5,a0
    1e76:	842e                	mv	s0,a1
    1e78:	4685                	li	a3,1
    1e7a:	97ba                	add	a5,a5,a4
    1e7c:	bf05                	j	1dac <_vfiprintf_r+0x106>
    1e7e:	57fd                	li	a5,-1
    1e80:	b7c5                	j	1e60 <mmio.c.1d292ae4+0xad>
    1e82:	0405                	addi	s0,s0,1
    1e84:	ca02                	sw	zero,20(sp)
    1e86:	4681                	li	a3,0
    1e88:	4781                	li	a5,0
    1e8a:	4625                	li	a2,9
    1e8c:	4529                	li	a0,10
    1e8e:	00044703          	lbu	a4,0(s0)
    1e92:	00140593          	addi	a1,s0,1
    1e96:	fd070713          	addi	a4,a4,-48
    1e9a:	04e67d63          	bgeu	a2,a4,1ef4 <mmio.c.1d292ae4+0x141>
    1e9e:	f2e9                	bnez	a3,1e60 <mmio.c.1d292ae4+0xad>
    1ea0:	00044583          	lbu	a1,0(s0)
    1ea4:	460d                	li	a2,3
    1ea6:	2ecb8513          	addi	a0,s7,748 # 802ec <__sf_fake_stdout+0x28>
    1eaa:	2e95                	jal	221e <memchr>
    1eac:	cd01                	beqz	a0,1ec4 <mmio.c.1d292ae4+0x111>
    1eae:	2ecb8793          	addi	a5,s7,748
    1eb2:	8d1d                	sub	a0,a0,a5
    1eb4:	47c2                	lw	a5,16(sp)
    1eb6:	04000713          	li	a4,64
    1eba:	00a71733          	sll	a4,a4,a0
    1ebe:	8fd9                	or	a5,a5,a4
    1ec0:	0405                	addi	s0,s0,1
    1ec2:	c83e                	sw	a5,16(sp)
    1ec4:	00044583          	lbu	a1,0(s0)
    1ec8:	4619                	li	a2,6
    1eca:	2f0d0513          	addi	a0,s10,752 # 802f0 <__sf_fake_stdout+0x2c>
    1ece:	00140913          	addi	s2,s0,1
    1ed2:	02b10423          	sb	a1,40(sp)
    1ed6:	26a1                	jal	221e <memchr>
    1ed8:	cd31                	beqz	a0,1f34 <mmio.c.1d292ae4+0x181>
    1eda:	020a9763          	bnez	s5,1f08 <mmio.c.1d292ae4+0x155>
    1ede:	4742                	lw	a4,16(sp)
    1ee0:	47b2                	lw	a5,12(sp)
    1ee2:	10077713          	andi	a4,a4,256
    1ee6:	cf09                	beqz	a4,1f00 <mmio.c.1d292ae4+0x14d>
    1ee8:	0791                	addi	a5,a5,4
    1eea:	c63e                	sw	a5,12(sp)
    1eec:	5792                	lw	a5,36(sp)
    1eee:	97d2                	add	a5,a5,s4
    1ef0:	d23e                	sw	a5,36(sp)
    1ef2:	b535                	j	1d1e <_vfiprintf_r+0x78>
    1ef4:	02a787b3          	mul	a5,a5,a0
    1ef8:	842e                	mv	s0,a1
    1efa:	4685                	li	a3,1
    1efc:	97ba                	add	a5,a5,a4
    1efe:	bf41                	j	1e8e <mmio.c.1d292ae4+0xdb>
    1f00:	079d                	addi	a5,a5,7
    1f02:	9be1                	andi	a5,a5,-8
    1f04:	07a1                	addi	a5,a5,8
    1f06:	b7d5                	j	1eea <mmio.c.1d292ae4+0x137>
    1f08:	0078                	addi	a4,sp,12
    1f0a:	c42c0693          	addi	a3,s8,-958 # 1c42 <__sfputs_r>
    1f0e:	8626                	mv	a2,s1
    1f10:	080c                	addi	a1,sp,16
    1f12:	854e                	mv	a0,s3
    1f14:	00000097          	auipc	ra,0x0
    1f18:	000000e7          	jalr	zero # 0 <__vector_start>
    1f1c:	57fd                	li	a5,-1
    1f1e:	8a2a                	mv	s4,a0
    1f20:	fcf516e3          	bne	a0,a5,1eec <mmio.c.1d292ae4+0x139>
    1f24:	00c4d783          	lhu	a5,12(s1)
    1f28:	0407f793          	andi	a5,a5,64
    1f2c:	ec0793e3          	bnez	a5,1df2 <mmio.c.1d292ae4+0x3f>
    1f30:	5512                	lw	a0,36(sp)
    1f32:	b5c9                	j	1df4 <mmio.c.1d292ae4+0x41>
    1f34:	0078                	addi	a4,sp,12
    1f36:	c42c0693          	addi	a3,s8,-958
    1f3a:	8626                	mv	a2,s1
    1f3c:	080c                	addi	a1,sp,16
    1f3e:	854e                	mv	a0,s3
    1f40:	297d                	jal	23fe <_printf_i>
    1f42:	bfe9                	j	1f1c <mmio.c.1d292ae4+0x169>

00001f44 <vfiprintf>:
    1f44:	000807b7          	lui	a5,0x80
    1f48:	86b2                	mv	a3,a2
    1f4a:	862e                	mv	a2,a1
    1f4c:	85aa                	mv	a1,a0
    1f4e:	4e07a503          	lw	a0,1248(a5) # 804e0 <_impure_ptr>
    1f52:	bb91                	j	1ca6 <_vfiprintf_r>

00001f54 <__sfvwrite_r>:
    1f54:	461c                	lw	a5,8(a2)
    1f56:	e781                	bnez	a5,1f5e <__sfvwrite_r+0xa>
    1f58:	4781                	li	a5,0
    1f5a:	853e                	mv	a0,a5
    1f5c:	8082                	ret
    1f5e:	00c5d783          	lhu	a5,12(a1)
    1f62:	715d                	addi	sp,sp,-80
    1f64:	c4a2                	sw	s0,72(sp)
    1f66:	c0ca                	sw	s2,64(sp)
    1f68:	dc52                	sw	s4,56(sp)
    1f6a:	c686                	sw	ra,76(sp)
    1f6c:	c2a6                	sw	s1,68(sp)
    1f6e:	de4e                	sw	s3,60(sp)
    1f70:	da56                	sw	s5,52(sp)
    1f72:	d85a                	sw	s6,48(sp)
    1f74:	d65e                	sw	s7,44(sp)
    1f76:	d462                	sw	s8,40(sp)
    1f78:	d266                	sw	s9,36(sp)
    1f7a:	d06a                	sw	s10,32(sp)
    1f7c:	ce6e                	sw	s11,28(sp)
    1f7e:	8ba1                	andi	a5,a5,8
    1f80:	892a                	mv	s2,a0
    1f82:	842e                	mv	s0,a1
    1f84:	8a32                	mv	s4,a2
    1f86:	cbd9                	beqz	a5,201c <__sfvwrite_r+0xc8>
    1f88:	499c                	lw	a5,16(a1)
    1f8a:	cbc9                	beqz	a5,201c <__sfvwrite_r+0xc8>
    1f8c:	00c45783          	lhu	a5,12(s0)
    1f90:	000a2983          	lw	s3,0(s4)
    1f94:	0027f713          	andi	a4,a5,2
    1f98:	e37d                	bnez	a4,207e <__sfvwrite_r+0x12a>
    1f9a:	8b85                	andi	a5,a5,1
    1f9c:	14078f63          	beqz	a5,20fa <__sfvwrite_r+0x1a6>
    1fa0:	4b81                	li	s7,0
    1fa2:	4501                	li	a0,0
    1fa4:	4b01                	li	s6,0
    1fa6:	4a81                	li	s5,0
    1fa8:	220a8d63          	beqz	s5,21e2 <__sfvwrite_r+0x28e>
    1fac:	e919                	bnez	a0,1fc2 <__sfvwrite_r+0x6e>
    1fae:	8656                	mv	a2,s5
    1fb0:	45a9                	li	a1,10
    1fb2:	855a                	mv	a0,s6
    1fb4:	24ad                	jal	221e <memchr>
    1fb6:	001a8b93          	addi	s7,s5,1
    1fba:	c501                	beqz	a0,1fc2 <__sfvwrite_r+0x6e>
    1fbc:	0505                	addi	a0,a0,1
    1fbe:	41650bb3          	sub	s7,a0,s6
    1fc2:	8c5e                	mv	s8,s7
    1fc4:	017af363          	bgeu	s5,s7,1fca <__sfvwrite_r+0x76>
    1fc8:	8c56                	mv	s8,s5
    1fca:	4008                	lw	a0,0(s0)
    1fcc:	481c                	lw	a5,16(s0)
    1fce:	4404                	lw	s1,8(s0)
    1fd0:	4854                	lw	a3,20(s0)
    1fd2:	20a7ff63          	bgeu	a5,a0,21f0 <__sfvwrite_r+0x29c>
    1fd6:	94b6                	add	s1,s1,a3
    1fd8:	2184dc63          	bge	s1,s8,21f0 <__sfvwrite_r+0x29c>
    1fdc:	85da                	mv	a1,s6
    1fde:	8626                	mv	a2,s1
    1fe0:	24bd                	jal	224e <memmove>
    1fe2:	401c                	lw	a5,0(s0)
    1fe4:	85a2                	mv	a1,s0
    1fe6:	854a                	mv	a0,s2
    1fe8:	97a6                	add	a5,a5,s1
    1fea:	c01c                	sw	a5,0(s0)
    1fec:	be4ff0ef          	jal	ra,13d0 <_fflush_r>
    1ff0:	0e051d63          	bnez	a0,20ea <__sfvwrite_r+0x196>
    1ff4:	409b8bb3          	sub	s7,s7,s1
    1ff8:	4505                	li	a0,1
    1ffa:	000b9763          	bnez	s7,2008 <__sfvwrite_r+0xb4>
    1ffe:	85a2                	mv	a1,s0
    2000:	854a                	mv	a0,s2
    2002:	bceff0ef          	jal	ra,13d0 <_fflush_r>
    2006:	e175                	bnez	a0,20ea <__sfvwrite_r+0x196>
    2008:	008a2783          	lw	a5,8(s4)
    200c:	9b26                	add	s6,s6,s1
    200e:	409a8ab3          	sub	s5,s5,s1
    2012:	8f85                	sub	a5,a5,s1
    2014:	00fa2423          	sw	a5,8(s4)
    2018:	fbc1                	bnez	a5,1fa8 <__sfvwrite_r+0x54>
    201a:	a089                	j	205c <__sfvwrite_r+0x108>
    201c:	85a2                	mv	a1,s0
    201e:	854a                	mv	a0,s2
    2020:	812ff0ef          	jal	ra,1032 <__swsetup_r>
    2024:	57fd                	li	a5,-1
    2026:	d13d                	beqz	a0,1f8c <__sfvwrite_r+0x38>
    2028:	a81d                	j	205e <__sfvwrite_r+0x10a>
    202a:	0009aa83          	lw	s5,0(s3)
    202e:	0049a483          	lw	s1,4(s3)
    2032:	09a1                	addi	s3,s3,8
    2034:	541c                	lw	a5,40(s0)
    2036:	500c                	lw	a1,32(s0)
    2038:	d8ed                	beqz	s1,202a <__sfvwrite_r+0xd6>
    203a:	86a6                	mv	a3,s1
    203c:	009b7363          	bgeu	s6,s1,2042 <__sfvwrite_r+0xee>
    2040:	86da                	mv	a3,s6
    2042:	8656                	mv	a2,s5
    2044:	854a                	mv	a0,s2
    2046:	9782                	jalr	a5
    2048:	0aa05163          	blez	a0,20ea <__sfvwrite_r+0x196>
    204c:	008a2783          	lw	a5,8(s4)
    2050:	9aaa                	add	s5,s5,a0
    2052:	8c89                	sub	s1,s1,a0
    2054:	8f89                	sub	a5,a5,a0
    2056:	00fa2423          	sw	a5,8(s4)
    205a:	ffe9                	bnez	a5,2034 <__sfvwrite_r+0xe0>
    205c:	4781                	li	a5,0
    205e:	40b6                	lw	ra,76(sp)
    2060:	4426                	lw	s0,72(sp)
    2062:	4496                	lw	s1,68(sp)
    2064:	4906                	lw	s2,64(sp)
    2066:	59f2                	lw	s3,60(sp)
    2068:	5a62                	lw	s4,56(sp)
    206a:	5ad2                	lw	s5,52(sp)
    206c:	5b42                	lw	s6,48(sp)
    206e:	5bb2                	lw	s7,44(sp)
    2070:	5c22                	lw	s8,40(sp)
    2072:	5c92                	lw	s9,36(sp)
    2074:	5d02                	lw	s10,32(sp)
    2076:	4df2                	lw	s11,28(sp)
    2078:	853e                	mv	a0,a5
    207a:	6161                	addi	sp,sp,80
    207c:	8082                	ret
    207e:	80000b37          	lui	s6,0x80000
    2082:	4a81                	li	s5,0
    2084:	4481                	li	s1,0
    2086:	c00b4b13          	xori	s6,s6,-1024
    208a:	b76d                	j	2034 <__sfvwrite_r+0xe0>
    208c:	0009aa83          	lw	s5,0(s3)
    2090:	0049ad03          	lw	s10,4(s3)
    2094:	09a1                	addi	s3,s3,8
    2096:	00c41703          	lh	a4,12(s0)
    209a:	4008                	lw	a0,0(s0)
    209c:	4410                	lw	a2,8(s0)
    209e:	fe0d07e3          	beqz	s10,208c <__sfvwrite_r+0x138>
    20a2:	01071793          	slli	a5,a4,0x10
    20a6:	20077713          	andi	a4,a4,512
    20aa:	83c1                	srli	a5,a5,0x10
    20ac:	c365                	beqz	a4,218c <__sfvwrite_r+0x238>
    20ae:	08cd6663          	bltu	s10,a2,213a <__sfvwrite_r+0x1e6>
    20b2:	4807f713          	andi	a4,a5,1152
    20b6:	c351                	beqz	a4,213a <__sfvwrite_r+0x1e6>
    20b8:	4844                	lw	s1,20(s0)
    20ba:	480c                	lw	a1,16(s0)
    20bc:	029c04b3          	mul	s1,s8,s1
    20c0:	40b50db3          	sub	s11,a0,a1
    20c4:	001d8713          	addi	a4,s11,1
    20c8:	976a                	add	a4,a4,s10
    20ca:	0394c4b3          	div	s1,s1,s9
    20ce:	00e4f363          	bgeu	s1,a4,20d4 <__sfvwrite_r+0x180>
    20d2:	84ba                	mv	s1,a4
    20d4:	4007f793          	andi	a5,a5,1024
    20d8:	cbd1                	beqz	a5,216c <__sfvwrite_r+0x218>
    20da:	85a6                	mv	a1,s1
    20dc:	854a                	mv	a0,s2
    20de:	fc8ff0ef          	jal	ra,18a6 <_malloc_r>
    20e2:	e51d                	bnez	a0,2110 <__sfvwrite_r+0x1bc>
    20e4:	47b1                	li	a5,12
    20e6:	00f92023          	sw	a5,0(s2)
    20ea:	00c45783          	lhu	a5,12(s0)
    20ee:	0407e793          	ori	a5,a5,64
    20f2:	00f41623          	sh	a5,12(s0)
    20f6:	57fd                	li	a5,-1
    20f8:	b79d                	j	205e <__sfvwrite_r+0x10a>
    20fa:	80000b37          	lui	s6,0x80000
    20fe:	ffeb4b93          	xori	s7,s6,-2
    2102:	4a81                	li	s5,0
    2104:	4d01                	li	s10,0
    2106:	fffb4b13          	not	s6,s6
    210a:	4c0d                	li	s8,3
    210c:	4c89                	li	s9,2
    210e:	b761                	j	2096 <__sfvwrite_r+0x142>
    2110:	480c                	lw	a1,16(s0)
    2112:	866e                	mv	a2,s11
    2114:	c62a                	sw	a0,12(sp)
    2116:	220d                	jal	2238 <memcpy>
    2118:	00c45703          	lhu	a4,12(s0)
    211c:	47b2                	lw	a5,12(sp)
    211e:	b7f77713          	andi	a4,a4,-1153
    2122:	08076713          	ori	a4,a4,128
    2126:	00e41623          	sh	a4,12(s0)
    212a:	c81c                	sw	a5,16(s0)
    212c:	c844                	sw	s1,20(s0)
    212e:	97ee                	add	a5,a5,s11
    2130:	41b484b3          	sub	s1,s1,s11
    2134:	c01c                	sw	a5,0(s0)
    2136:	866a                	mv	a2,s10
    2138:	c404                	sw	s1,8(s0)
    213a:	84ea                	mv	s1,s10
    213c:	00cd7363          	bgeu	s10,a2,2142 <__sfvwrite_r+0x1ee>
    2140:	866a                	mv	a2,s10
    2142:	4008                	lw	a0,0(s0)
    2144:	85d6                	mv	a1,s5
    2146:	c632                	sw	a2,12(sp)
    2148:	2219                	jal	224e <memmove>
    214a:	441c                	lw	a5,8(s0)
    214c:	4632                	lw	a2,12(sp)
    214e:	8f91                	sub	a5,a5,a2
    2150:	c41c                	sw	a5,8(s0)
    2152:	401c                	lw	a5,0(s0)
    2154:	97b2                	add	a5,a5,a2
    2156:	c01c                	sw	a5,0(s0)
    2158:	008a2783          	lw	a5,8(s4)
    215c:	9aa6                	add	s5,s5,s1
    215e:	409d0d33          	sub	s10,s10,s1
    2162:	8f85                	sub	a5,a5,s1
    2164:	00fa2423          	sw	a5,8(s4)
    2168:	f79d                	bnez	a5,2096 <__sfvwrite_r+0x142>
    216a:	bdcd                	j	205c <__sfvwrite_r+0x108>
    216c:	8626                	mv	a2,s1
    216e:	854a                	mv	a0,s2
    2170:	2211                	jal	2274 <_realloc_r>
    2172:	87aa                	mv	a5,a0
    2174:	f95d                	bnez	a0,212a <__sfvwrite_r+0x1d6>
    2176:	480c                	lw	a1,16(s0)
    2178:	854a                	mv	a0,s2
    217a:	e8aff0ef          	jal	ra,1804 <_free_r>
    217e:	00c45783          	lhu	a5,12(s0)
    2182:	f7f7f793          	andi	a5,a5,-129
    2186:	00f41623          	sh	a5,12(s0)
    218a:	bfa9                	j	20e4 <__sfvwrite_r+0x190>
    218c:	481c                	lw	a5,16(s0)
    218e:	00a7e563          	bltu	a5,a0,2198 <__sfvwrite_r+0x244>
    2192:	4854                	lw	a3,20(s0)
    2194:	02dd7663          	bgeu	s10,a3,21c0 <__sfvwrite_r+0x26c>
    2198:	84b2                	mv	s1,a2
    219a:	00cd7363          	bgeu	s10,a2,21a0 <__sfvwrite_r+0x24c>
    219e:	84ea                	mv	s1,s10
    21a0:	8626                	mv	a2,s1
    21a2:	85d6                	mv	a1,s5
    21a4:	206d                	jal	224e <memmove>
    21a6:	441c                	lw	a5,8(s0)
    21a8:	4018                	lw	a4,0(s0)
    21aa:	8f85                	sub	a5,a5,s1
    21ac:	9726                	add	a4,a4,s1
    21ae:	c41c                	sw	a5,8(s0)
    21b0:	c018                	sw	a4,0(s0)
    21b2:	f3dd                	bnez	a5,2158 <__sfvwrite_r+0x204>
    21b4:	85a2                	mv	a1,s0
    21b6:	854a                	mv	a0,s2
    21b8:	a18ff0ef          	jal	ra,13d0 <_fflush_r>
    21bc:	dd51                	beqz	a0,2158 <__sfvwrite_r+0x204>
    21be:	b735                	j	20ea <__sfvwrite_r+0x196>
    21c0:	87da                	mv	a5,s6
    21c2:	01abe363          	bltu	s7,s10,21c8 <__sfvwrite_r+0x274>
    21c6:	87ea                	mv	a5,s10
    21c8:	02d7c7b3          	div	a5,a5,a3
    21cc:	5418                	lw	a4,40(s0)
    21ce:	500c                	lw	a1,32(s0)
    21d0:	8656                	mv	a2,s5
    21d2:	854a                	mv	a0,s2
    21d4:	02d786b3          	mul	a3,a5,a3
    21d8:	9702                	jalr	a4
    21da:	84aa                	mv	s1,a0
    21dc:	f6a04ee3          	bgtz	a0,2158 <__sfvwrite_r+0x204>
    21e0:	b729                	j	20ea <__sfvwrite_r+0x196>
    21e2:	0009ab03          	lw	s6,0(s3)
    21e6:	0049aa83          	lw	s5,4(s3)
    21ea:	4501                	li	a0,0
    21ec:	09a1                	addi	s3,s3,8
    21ee:	bb6d                	j	1fa8 <__sfvwrite_r+0x54>
    21f0:	00dc4b63          	blt	s8,a3,2206 <__sfvwrite_r+0x2b2>
    21f4:	541c                	lw	a5,40(s0)
    21f6:	500c                	lw	a1,32(s0)
    21f8:	865a                	mv	a2,s6
    21fa:	854a                	mv	a0,s2
    21fc:	9782                	jalr	a5
    21fe:	84aa                	mv	s1,a0
    2200:	dea04ae3          	bgtz	a0,1ff4 <__sfvwrite_r+0xa0>
    2204:	b5dd                	j	20ea <__sfvwrite_r+0x196>
    2206:	8662                	mv	a2,s8
    2208:	85da                	mv	a1,s6
    220a:	2091                	jal	224e <memmove>
    220c:	441c                	lw	a5,8(s0)
    220e:	84e2                	mv	s1,s8
    2210:	418787b3          	sub	a5,a5,s8
    2214:	c41c                	sw	a5,8(s0)
    2216:	401c                	lw	a5,0(s0)
    2218:	97e2                	add	a5,a5,s8
    221a:	c01c                	sw	a5,0(s0)
    221c:	bbe1                	j	1ff4 <__sfvwrite_r+0xa0>

0000221e <memchr>:
    221e:	0ff5f593          	zext.b	a1,a1
    2222:	962a                	add	a2,a2,a0
    2224:	00c51463          	bne	a0,a2,222c <memchr+0xe>
    2228:	4501                	li	a0,0
    222a:	8082                	ret
    222c:	00054783          	lbu	a5,0(a0)
    2230:	feb78de3          	beq	a5,a1,222a <memchr+0xc>
    2234:	0505                	addi	a0,a0,1
    2236:	b7fd                	j	2224 <memchr+0x6>

00002238 <memcpy>:
    2238:	832a                	mv	t1,a0
    223a:	ca09                	beqz	a2,224c <memcpy+0x14>
    223c:	00058383          	lb	t2,0(a1)
    2240:	00730023          	sb	t2,0(t1)
    2244:	167d                	addi	a2,a2,-1
    2246:	0305                	addi	t1,t1,1
    2248:	0585                	addi	a1,a1,1
    224a:	fa6d                	bnez	a2,223c <memcpy+0x4>
    224c:	8082                	ret

0000224e <memmove>:
    224e:	c215                	beqz	a2,2272 <memmove+0x24>
    2250:	832a                	mv	t1,a0
    2252:	4685                	li	a3,1
    2254:	00b56763          	bltu	a0,a1,2262 <memmove+0x14>
    2258:	56fd                	li	a3,-1
    225a:	fff60713          	addi	a4,a2,-1
    225e:	933a                	add	t1,t1,a4
    2260:	95ba                	add	a1,a1,a4
    2262:	00058383          	lb	t2,0(a1)
    2266:	00730023          	sb	t2,0(t1)
    226a:	167d                	addi	a2,a2,-1
    226c:	9336                	add	t1,t1,a3
    226e:	95b6                	add	a1,a1,a3
    2270:	fa6d                	bnez	a2,2262 <memmove+0x14>
    2272:	8082                	ret

00002274 <_realloc_r>:
    2274:	1101                	addi	sp,sp,-32
    2276:	cc22                	sw	s0,24(sp)
    2278:	ce06                	sw	ra,28(sp)
    227a:	ca26                	sw	s1,20(sp)
    227c:	c84a                	sw	s2,16(sp)
    227e:	c64e                	sw	s3,12(sp)
    2280:	c452                	sw	s4,8(sp)
    2282:	8432                	mv	s0,a2
    2284:	e999                	bnez	a1,229a <_realloc_r+0x26>
    2286:	4462                	lw	s0,24(sp)
    2288:	40f2                	lw	ra,28(sp)
    228a:	44d2                	lw	s1,20(sp)
    228c:	4942                	lw	s2,16(sp)
    228e:	49b2                	lw	s3,12(sp)
    2290:	4a22                	lw	s4,8(sp)
    2292:	85b2                	mv	a1,a2
    2294:	6105                	addi	sp,sp,32
    2296:	e10ff06f          	j	18a6 <_malloc_r>
    229a:	ee09                	bnez	a2,22b4 <_realloc_r+0x40>
    229c:	d68ff0ef          	jal	ra,1804 <_free_r>
    22a0:	4481                	li	s1,0
    22a2:	40f2                	lw	ra,28(sp)
    22a4:	4462                	lw	s0,24(sp)
    22a6:	4942                	lw	s2,16(sp)
    22a8:	49b2                	lw	s3,12(sp)
    22aa:	4a22                	lw	s4,8(sp)
    22ac:	8526                	mv	a0,s1
    22ae:	44d2                	lw	s1,20(sp)
    22b0:	6105                	addi	sp,sp,32
    22b2:	8082                	ret
    22b4:	8a2a                	mv	s4,a0
    22b6:	892e                	mv	s2,a1
    22b8:	2665                	jal	2660 <_malloc_usable_size_r>
    22ba:	89aa                	mv	s3,a0
    22bc:	00856763          	bltu	a0,s0,22ca <_realloc_r+0x56>
    22c0:	00155793          	srli	a5,a0,0x1
    22c4:	84ca                	mv	s1,s2
    22c6:	fc87eee3          	bltu	a5,s0,22a2 <_realloc_r+0x2e>
    22ca:	85a2                	mv	a1,s0
    22cc:	8552                	mv	a0,s4
    22ce:	dd8ff0ef          	jal	ra,18a6 <_malloc_r>
    22d2:	84aa                	mv	s1,a0
    22d4:	d579                	beqz	a0,22a2 <_realloc_r+0x2e>
    22d6:	8622                	mv	a2,s0
    22d8:	0089f363          	bgeu	s3,s0,22de <_realloc_r+0x6a>
    22dc:	864e                	mv	a2,s3
    22de:	85ca                	mv	a1,s2
    22e0:	8526                	mv	a0,s1
    22e2:	3f99                	jal	2238 <memcpy>
    22e4:	85ca                	mv	a1,s2
    22e6:	8552                	mv	a0,s4
    22e8:	d1cff0ef          	jal	ra,1804 <_free_r>
    22ec:	bf5d                	j	22a2 <_realloc_r+0x2e>

000022ee <_printf_common>:
    22ee:	7179                	addi	sp,sp,-48
    22f0:	cc52                	sw	s4,24(sp)
    22f2:	499c                	lw	a5,16(a1)
    22f4:	8a3a                	mv	s4,a4
    22f6:	4598                	lw	a4,8(a1)
    22f8:	d422                	sw	s0,40(sp)
    22fa:	d04a                	sw	s2,32(sp)
    22fc:	ce4e                	sw	s3,28(sp)
    22fe:	ca56                	sw	s5,20(sp)
    2300:	d606                	sw	ra,44(sp)
    2302:	d226                	sw	s1,36(sp)
    2304:	c85a                	sw	s6,16(sp)
    2306:	c65e                	sw	s7,12(sp)
    2308:	89aa                	mv	s3,a0
    230a:	842e                	mv	s0,a1
    230c:	8932                	mv	s2,a2
    230e:	8ab6                	mv	s5,a3
    2310:	00e7d363          	bge	a5,a4,2316 <_printf_common+0x28>
    2314:	87ba                	mv	a5,a4
    2316:	00f92023          	sw	a5,0(s2)
    231a:	04344703          	lbu	a4,67(s0)
    231e:	c701                	beqz	a4,2326 <_printf_common+0x38>
    2320:	0785                	addi	a5,a5,1
    2322:	00f92023          	sw	a5,0(s2)
    2326:	401c                	lw	a5,0(s0)
    2328:	0207f793          	andi	a5,a5,32
    232c:	c791                	beqz	a5,2338 <_printf_common+0x4a>
    232e:	00092783          	lw	a5,0(s2)
    2332:	0789                	addi	a5,a5,2
    2334:	00f92023          	sw	a5,0(s2)
    2338:	4004                	lw	s1,0(s0)
    233a:	8899                	andi	s1,s1,6
    233c:	e891                	bnez	s1,2350 <_printf_common+0x62>
    233e:	01940b13          	addi	s6,s0,25
    2342:	5bfd                	li	s7,-1
    2344:	445c                	lw	a5,12(s0)
    2346:	00092703          	lw	a4,0(s2)
    234a:	8f99                	sub	a5,a5,a4
    234c:	04f4cc63          	blt	s1,a5,23a4 <_printf_common+0xb6>
    2350:	04344783          	lbu	a5,67(s0)
    2354:	00f036b3          	snez	a3,a5
    2358:	401c                	lw	a5,0(s0)
    235a:	0207f793          	andi	a5,a5,32
    235e:	eba5                	bnez	a5,23ce <_printf_common+0xe0>
    2360:	04340613          	addi	a2,s0,67
    2364:	85d6                	mv	a1,s5
    2366:	854e                	mv	a0,s3
    2368:	9a02                	jalr	s4
    236a:	57fd                	li	a5,-1
    236c:	04f50363          	beq	a0,a5,23b2 <_printf_common+0xc4>
    2370:	401c                	lw	a5,0(s0)
    2372:	4711                	li	a4,4
    2374:	4481                	li	s1,0
    2376:	8b99                	andi	a5,a5,6
    2378:	00e79963          	bne	a5,a4,238a <_printf_common+0x9c>
    237c:	4444                	lw	s1,12(s0)
    237e:	00092783          	lw	a5,0(s2)
    2382:	8c9d                	sub	s1,s1,a5
    2384:	0004d363          	bgez	s1,238a <_printf_common+0x9c>
    2388:	4481                	li	s1,0
    238a:	441c                	lw	a5,8(s0)
    238c:	4818                	lw	a4,16(s0)
    238e:	00f75463          	bge	a4,a5,2396 <_printf_common+0xa8>
    2392:	8f99                	sub	a5,a5,a4
    2394:	94be                	add	s1,s1,a5
    2396:	4901                	li	s2,0
    2398:	0469                	addi	s0,s0,26
    239a:	5b7d                	li	s6,-1
    239c:	05249863          	bne	s1,s2,23ec <_printf_common+0xfe>
    23a0:	4501                	li	a0,0
    23a2:	a809                	j	23b4 <_printf_common+0xc6>
    23a4:	4685                	li	a3,1
    23a6:	865a                	mv	a2,s6
    23a8:	85d6                	mv	a1,s5
    23aa:	854e                	mv	a0,s3
    23ac:	9a02                	jalr	s4
    23ae:	01751e63          	bne	a0,s7,23ca <_printf_common+0xdc>
    23b2:	557d                	li	a0,-1
    23b4:	50b2                	lw	ra,44(sp)
    23b6:	5422                	lw	s0,40(sp)
    23b8:	5492                	lw	s1,36(sp)
    23ba:	5902                	lw	s2,32(sp)
    23bc:	49f2                	lw	s3,28(sp)
    23be:	4a62                	lw	s4,24(sp)
    23c0:	4ad2                	lw	s5,20(sp)
    23c2:	4b42                	lw	s6,16(sp)
    23c4:	4bb2                	lw	s7,12(sp)
    23c6:	6145                	addi	sp,sp,48
    23c8:	8082                	ret
    23ca:	0485                	addi	s1,s1,1
    23cc:	bfa5                	j	2344 <_printf_common+0x56>
    23ce:	00d40733          	add	a4,s0,a3
    23d2:	03000613          	li	a2,48
    23d6:	04c701a3          	sb	a2,67(a4)
    23da:	04544703          	lbu	a4,69(s0)
    23de:	00168793          	addi	a5,a3,1 # 1001 <init.c.97f15b39+0x2a>
    23e2:	97a2                	add	a5,a5,s0
    23e4:	0689                	addi	a3,a3,2
    23e6:	04e781a3          	sb	a4,67(a5)
    23ea:	bf9d                	j	2360 <_printf_common+0x72>
    23ec:	4685                	li	a3,1
    23ee:	8622                	mv	a2,s0
    23f0:	85d6                	mv	a1,s5
    23f2:	854e                	mv	a0,s3
    23f4:	9a02                	jalr	s4
    23f6:	fb650ee3          	beq	a0,s6,23b2 <_printf_common+0xc4>
    23fa:	0905                	addi	s2,s2,1
    23fc:	b745                	j	239c <_printf_common+0xae>

000023fe <_printf_i>:
    23fe:	7179                	addi	sp,sp,-48
    2400:	d422                	sw	s0,40(sp)
    2402:	d226                	sw	s1,36(sp)
    2404:	d04a                	sw	s2,32(sp)
    2406:	ce4e                	sw	s3,28(sp)
    2408:	d606                	sw	ra,44(sp)
    240a:	cc52                	sw	s4,24(sp)
    240c:	ca56                	sw	s5,20(sp)
    240e:	c85a                	sw	s6,16(sp)
    2410:	0185c883          	lbu	a7,24(a1)
    2414:	07800793          	li	a5,120
    2418:	84aa                	mv	s1,a0
    241a:	842e                	mv	s0,a1
    241c:	8932                	mv	s2,a2
    241e:	89b6                	mv	s3,a3
    2420:	0117ee63          	bltu	a5,a7,243c <_printf_i+0x3e>
    2424:	06200793          	li	a5,98
    2428:	04358693          	addi	a3,a1,67
    242c:	0117ed63          	bltu	a5,a7,2446 <_printf_i+0x48>
    2430:	1a088e63          	beqz	a7,25ec <bitfield.c.ab41fd61+0x180>
    2434:	05800793          	li	a5,88
    2438:	16f88f63          	beq	a7,a5,25b6 <bitfield.c.ab41fd61+0x14a>
    243c:	04240a93          	addi	s5,s0,66
    2440:	05140123          	sb	a7,66(s0)
    2444:	a80d                	j	2476 <bitfield.c.ab41fd61+0xa>
    2446:	f9d88793          	addi	a5,a7,-99
    244a:	0ff7f793          	zext.b	a5,a5
    244e:	4655                	li	a2,21
    2450:	fef666e3          	bltu	a2,a5,243c <_printf_i+0x3e>
    2454:	00080637          	lui	a2,0x80
    2458:	078a                	slli	a5,a5,0x2
    245a:	32060613          	addi	a2,a2,800 # 80320 <__sf_fake_stdout+0x5c>
    245e:	97b2                	add	a5,a5,a2
    2460:	439c                	lw	a5,0(a5)
    2462:	8782                	jr	a5
    2464:	431c                	lw	a5,0(a4)
    2466:	04258a93          	addi	s5,a1,66
    246a:	00478693          	addi	a3,a5,4
    246e:	439c                	lw	a5,0(a5)
    2470:	c314                	sw	a3,0(a4)
    2472:	04f58123          	sb	a5,66(a1)
    2476:	4785                	li	a5,1
    2478:	aa69                	j	2612 <bitfield.c.ab41fd61+0x1a6>
    247a:	419c                	lw	a5,0(a1)
    247c:	4308                	lw	a0,0(a4)
    247e:	0807f613          	andi	a2,a5,128
    2482:	00450593          	addi	a1,a0,4
    2486:	c20d                	beqz	a2,24a8 <bitfield.c.ab41fd61+0x3c>
    2488:	411c                	lw	a5,0(a0)
    248a:	c30c                	sw	a1,0(a4)
    248c:	00080837          	lui	a6,0x80
    2490:	0007d863          	bgez	a5,24a0 <bitfield.c.ab41fd61+0x34>
    2494:	02d00713          	li	a4,45
    2498:	40f007b3          	neg	a5,a5
    249c:	04e401a3          	sb	a4,67(s0)
    24a0:	2f880813          	addi	a6,a6,760 # 802f8 <__sf_fake_stdout+0x34>
    24a4:	4729                	li	a4,10
    24a6:	a0a1                	j	24ee <bitfield.c.ab41fd61+0x82>
    24a8:	0407f613          	andi	a2,a5,64
    24ac:	411c                	lw	a5,0(a0)
    24ae:	c30c                	sw	a1,0(a4)
    24b0:	de71                	beqz	a2,248c <bitfield.c.ab41fd61+0x20>
    24b2:	07c2                	slli	a5,a5,0x10
    24b4:	87c1                	srai	a5,a5,0x10
    24b6:	bfd9                	j	248c <bitfield.c.ab41fd61+0x20>
    24b8:	4190                	lw	a2,0(a1)
    24ba:	431c                	lw	a5,0(a4)
    24bc:	08067513          	andi	a0,a2,128
    24c0:	00478593          	addi	a1,a5,4
    24c4:	c501                	beqz	a0,24cc <bitfield.c.ab41fd61+0x60>
    24c6:	c30c                	sw	a1,0(a4)
    24c8:	439c                	lw	a5,0(a5)
    24ca:	a039                	j	24d8 <bitfield.c.ab41fd61+0x6c>
    24cc:	04067613          	andi	a2,a2,64
    24d0:	c30c                	sw	a1,0(a4)
    24d2:	da7d                	beqz	a2,24c8 <bitfield.c.ab41fd61+0x5c>
    24d4:	0007d783          	lhu	a5,0(a5)
    24d8:	00080837          	lui	a6,0x80
    24dc:	06f00713          	li	a4,111
    24e0:	2f880813          	addi	a6,a6,760 # 802f8 <__sf_fake_stdout+0x34>
    24e4:	0ce88e63          	beq	a7,a4,25c0 <bitfield.c.ab41fd61+0x154>
    24e8:	4729                	li	a4,10
    24ea:	040401a3          	sb	zero,67(s0)
    24ee:	4050                	lw	a2,4(s0)
    24f0:	c410                	sw	a2,8(s0)
    24f2:	00064563          	bltz	a2,24fc <bitfield.c.ab41fd61+0x90>
    24f6:	400c                	lw	a1,0(s0)
    24f8:	99ed                	andi	a1,a1,-5
    24fa:	c00c                	sw	a1,0(s0)
    24fc:	e399                	bnez	a5,2502 <bitfield.c.ab41fd61+0x96>
    24fe:	8ab6                	mv	s5,a3
    2500:	ce19                	beqz	a2,251e <bitfield.c.ab41fd61+0xb2>
    2502:	8ab6                	mv	s5,a3
    2504:	02e7f633          	remu	a2,a5,a4
    2508:	1afd                	addi	s5,s5,-1
    250a:	9642                	add	a2,a2,a6
    250c:	00064603          	lbu	a2,0(a2)
    2510:	00ca8023          	sb	a2,0(s5)
    2514:	863e                	mv	a2,a5
    2516:	02e7d7b3          	divu	a5,a5,a4
    251a:	fee675e3          	bgeu	a2,a4,2504 <bitfield.c.ab41fd61+0x98>
    251e:	47a1                	li	a5,8
    2520:	00f71e63          	bne	a4,a5,253c <bitfield.c.ab41fd61+0xd0>
    2524:	401c                	lw	a5,0(s0)
    2526:	8b85                	andi	a5,a5,1
    2528:	cb91                	beqz	a5,253c <bitfield.c.ab41fd61+0xd0>
    252a:	4058                	lw	a4,4(s0)
    252c:	481c                	lw	a5,16(s0)
    252e:	00e7c763          	blt	a5,a4,253c <bitfield.c.ab41fd61+0xd0>
    2532:	03000793          	li	a5,48
    2536:	fefa8fa3          	sb	a5,-1(s5)
    253a:	1afd                	addi	s5,s5,-1
    253c:	415686b3          	sub	a3,a3,s5
    2540:	c814                	sw	a3,16(s0)
    2542:	874e                	mv	a4,s3
    2544:	86ca                	mv	a3,s2
    2546:	0070                	addi	a2,sp,12
    2548:	85a2                	mv	a1,s0
    254a:	8526                	mv	a0,s1
    254c:	334d                	jal	22ee <_printf_common>
    254e:	5a7d                	li	s4,-1
    2550:	0d451563          	bne	a0,s4,261a <bitfield.c.ab41fd61+0x1ae>
    2554:	557d                	li	a0,-1
    2556:	50b2                	lw	ra,44(sp)
    2558:	5422                	lw	s0,40(sp)
    255a:	5492                	lw	s1,36(sp)
    255c:	5902                	lw	s2,32(sp)
    255e:	49f2                	lw	s3,28(sp)
    2560:	4a62                	lw	s4,24(sp)
    2562:	4ad2                	lw	s5,20(sp)
    2564:	4b42                	lw	s6,16(sp)
    2566:	6145                	addi	sp,sp,48
    2568:	8082                	ret
    256a:	419c                	lw	a5,0(a1)
    256c:	0207e793          	ori	a5,a5,32
    2570:	c19c                	sw	a5,0(a1)
    2572:	00080837          	lui	a6,0x80
    2576:	07800893          	li	a7,120
    257a:	30c80813          	addi	a6,a6,780 # 8030c <__sf_fake_stdout+0x48>
    257e:	051402a3          	sb	a7,69(s0)
    2582:	4010                	lw	a2,0(s0)
    2584:	430c                	lw	a1,0(a4)
    2586:	08067513          	andi	a0,a2,128
    258a:	419c                	lw	a5,0(a1)
    258c:	0591                	addi	a1,a1,4
    258e:	e511                	bnez	a0,259a <bitfield.c.ab41fd61+0x12e>
    2590:	04067513          	andi	a0,a2,64
    2594:	c119                	beqz	a0,259a <bitfield.c.ab41fd61+0x12e>
    2596:	07c2                	slli	a5,a5,0x10
    2598:	83c1                	srli	a5,a5,0x10
    259a:	c30c                	sw	a1,0(a4)
    259c:	00167713          	andi	a4,a2,1
    25a0:	c701                	beqz	a4,25a8 <bitfield.c.ab41fd61+0x13c>
    25a2:	02066613          	ori	a2,a2,32
    25a6:	c010                	sw	a2,0(s0)
    25a8:	4741                	li	a4,16
    25aa:	f3a1                	bnez	a5,24ea <bitfield.c.ab41fd61+0x7e>
    25ac:	4010                	lw	a2,0(s0)
    25ae:	fdf67613          	andi	a2,a2,-33
    25b2:	c010                	sw	a2,0(s0)
    25b4:	bf1d                	j	24ea <bitfield.c.ab41fd61+0x7e>
    25b6:	00080837          	lui	a6,0x80
    25ba:	2f880813          	addi	a6,a6,760 # 802f8 <__sf_fake_stdout+0x34>
    25be:	b7c1                	j	257e <bitfield.c.ab41fd61+0x112>
    25c0:	4721                	li	a4,8
    25c2:	b725                	j	24ea <bitfield.c.ab41fd61+0x7e>
    25c4:	4190                	lw	a2,0(a1)
    25c6:	431c                	lw	a5,0(a4)
    25c8:	49cc                	lw	a1,20(a1)
    25ca:	08067813          	andi	a6,a2,128
    25ce:	00478513          	addi	a0,a5,4
    25d2:	00080663          	beqz	a6,25de <bitfield.c.ab41fd61+0x172>
    25d6:	c308                	sw	a0,0(a4)
    25d8:	439c                	lw	a5,0(a5)
    25da:	c38c                	sw	a1,0(a5)
    25dc:	a801                	j	25ec <bitfield.c.ab41fd61+0x180>
    25de:	c308                	sw	a0,0(a4)
    25e0:	04067613          	andi	a2,a2,64
    25e4:	439c                	lw	a5,0(a5)
    25e6:	da75                	beqz	a2,25da <bitfield.c.ab41fd61+0x16e>
    25e8:	00b79023          	sh	a1,0(a5)
    25ec:	00042823          	sw	zero,16(s0)
    25f0:	8ab6                	mv	s5,a3
    25f2:	bf81                	j	2542 <bitfield.c.ab41fd61+0xd6>
    25f4:	431c                	lw	a5,0(a4)
    25f6:	41d0                	lw	a2,4(a1)
    25f8:	4581                	li	a1,0
    25fa:	00478693          	addi	a3,a5,4
    25fe:	c314                	sw	a3,0(a4)
    2600:	0007aa83          	lw	s5,0(a5)
    2604:	8556                	mv	a0,s5
    2606:	3921                	jal	221e <memchr>
    2608:	c501                	beqz	a0,2610 <bitfield.c.ab41fd61+0x1a4>
    260a:	41550533          	sub	a0,a0,s5
    260e:	c048                	sw	a0,4(s0)
    2610:	405c                	lw	a5,4(s0)
    2612:	c81c                	sw	a5,16(s0)
    2614:	040401a3          	sb	zero,67(s0)
    2618:	b72d                	j	2542 <bitfield.c.ab41fd61+0xd6>
    261a:	4814                	lw	a3,16(s0)
    261c:	8656                	mv	a2,s5
    261e:	85ca                	mv	a1,s2
    2620:	8526                	mv	a0,s1
    2622:	9982                	jalr	s3
    2624:	f34508e3          	beq	a0,s4,2554 <bitfield.c.ab41fd61+0xe8>
    2628:	401c                	lw	a5,0(s0)
    262a:	8b89                	andi	a5,a5,2
    262c:	e78d                	bnez	a5,2656 <bitfield.c.ab41fd61+0x1ea>
    262e:	47b2                	lw	a5,12(sp)
    2630:	4448                	lw	a0,12(s0)
    2632:	f2f552e3          	bge	a0,a5,2556 <bitfield.c.ab41fd61+0xea>
    2636:	853e                	mv	a0,a5
    2638:	bf39                	j	2556 <bitfield.c.ab41fd61+0xea>
    263a:	4685                	li	a3,1
    263c:	8656                	mv	a2,s5
    263e:	85ca                	mv	a1,s2
    2640:	8526                	mv	a0,s1
    2642:	9982                	jalr	s3
    2644:	f16508e3          	beq	a0,s6,2554 <bitfield.c.ab41fd61+0xe8>
    2648:	0a05                	addi	s4,s4,1
    264a:	445c                	lw	a5,12(s0)
    264c:	4732                	lw	a4,12(sp)
    264e:	8f99                	sub	a5,a5,a4
    2650:	fefa45e3          	blt	s4,a5,263a <bitfield.c.ab41fd61+0x1ce>
    2654:	bfe9                	j	262e <bitfield.c.ab41fd61+0x1c2>
    2656:	4a01                	li	s4,0
    2658:	01940a93          	addi	s5,s0,25
    265c:	5b7d                	li	s6,-1
    265e:	b7f5                	j	264a <bitfield.c.ab41fd61+0x1de>

00002660 <_malloc_usable_size_r>:
    2660:	ffc5a783          	lw	a5,-4(a1)
    2664:	ffc78513          	addi	a0,a5,-4
    2668:	0007d563          	bgez	a5,2672 <_malloc_usable_size_r+0x12>
    266c:	95aa                	add	a1,a1,a0
    266e:	419c                	lw	a5,0(a1)
    2670:	953e                	add	a0,a0,a5
    2672:	8082                	ret

00002674 <__divdi3>:
    2674:	832a                	mv	t1,a0
    2676:	8e2e                	mv	t3,a1
    2678:	4881                	li	a7,0
    267a:	0005db63          	bgez	a1,2690 <__divdi3+0x1c>
    267e:	00a037b3          	snez	a5,a0
    2682:	40b00e33          	neg	t3,a1
    2686:	40fe0e33          	sub	t3,t3,a5
    268a:	40a00333          	neg	t1,a0
    268e:	58fd                	li	a7,-1
    2690:	0006db63          	bgez	a3,26a6 <__divdi3+0x32>
    2694:	00c037b3          	snez	a5,a2
    2698:	40d006b3          	neg	a3,a3
    269c:	fff8c893          	not	a7,a7
    26a0:	8e9d                	sub	a3,a3,a5
    26a2:	40c00633          	neg	a2,a2
    26a6:	8732                	mv	a4,a2
    26a8:	881a                	mv	a6,t1
    26aa:	87f2                	mv	a5,t3
    26ac:	20069f63          	bnez	a3,28ca <soc_ctrl.c.866c9c8a+0xb2>
    26b0:	000805b7          	lui	a1,0x80
    26b4:	37858593          	addi	a1,a1,888 # 80378 <__clz_tab>
    26b8:	0cce7163          	bgeu	t3,a2,277a <memory.c.f6d1f22a+0xc6>
    26bc:	66c1                	lui	a3,0x10
    26be:	0ad67763          	bgeu	a2,a3,276c <memory.c.f6d1f22a+0xb8>
    26c2:	10063693          	sltiu	a3,a2,256
    26c6:	0016c693          	xori	a3,a3,1
    26ca:	068e                	slli	a3,a3,0x3
    26cc:	00d65533          	srl	a0,a2,a3
    26d0:	95aa                	add	a1,a1,a0
    26d2:	0005c583          	lbu	a1,0(a1)
    26d6:	02000513          	li	a0,32
    26da:	96ae                	add	a3,a3,a1
    26dc:	40d505b3          	sub	a1,a0,a3
    26e0:	00d50b63          	beq	a0,a3,26f6 <memory.c.f6d1f22a+0x42>
    26e4:	00be17b3          	sll	a5,t3,a1
    26e8:	00d356b3          	srl	a3,t1,a3
    26ec:	00b61733          	sll	a4,a2,a1
    26f0:	8fd5                	or	a5,a5,a3
    26f2:	00b31833          	sll	a6,t1,a1
    26f6:	01075593          	srli	a1,a4,0x10
    26fa:	02b7de33          	divu	t3,a5,a1
    26fe:	01071613          	slli	a2,a4,0x10
    2702:	8241                	srli	a2,a2,0x10
    2704:	02b7f7b3          	remu	a5,a5,a1
    2708:	8572                	mv	a0,t3
    270a:	03c60333          	mul	t1,a2,t3
    270e:	01079693          	slli	a3,a5,0x10
    2712:	01085793          	srli	a5,a6,0x10
    2716:	8fd5                	or	a5,a5,a3
    2718:	0067fc63          	bgeu	a5,t1,2730 <memory.c.f6d1f22a+0x7c>
    271c:	97ba                	add	a5,a5,a4
    271e:	fffe0513          	addi	a0,t3,-1
    2722:	00e7e763          	bltu	a5,a4,2730 <memory.c.f6d1f22a+0x7c>
    2726:	0067f563          	bgeu	a5,t1,2730 <memory.c.f6d1f22a+0x7c>
    272a:	ffee0513          	addi	a0,t3,-2
    272e:	97ba                	add	a5,a5,a4
    2730:	406787b3          	sub	a5,a5,t1
    2734:	02b7d333          	divu	t1,a5,a1
    2738:	0842                	slli	a6,a6,0x10
    273a:	01085813          	srli	a6,a6,0x10
    273e:	02b7f7b3          	remu	a5,a5,a1
    2742:	026606b3          	mul	a3,a2,t1
    2746:	07c2                	slli	a5,a5,0x10
    2748:	00f86833          	or	a6,a6,a5
    274c:	879a                	mv	a5,t1
    274e:	00d87b63          	bgeu	a6,a3,2764 <memory.c.f6d1f22a+0xb0>
    2752:	983a                	add	a6,a6,a4
    2754:	fff30793          	addi	a5,t1,-1
    2758:	00e86663          	bltu	a6,a4,2764 <memory.c.f6d1f22a+0xb0>
    275c:	00d87463          	bgeu	a6,a3,2764 <memory.c.f6d1f22a+0xb0>
    2760:	ffe30793          	addi	a5,t1,-2
    2764:	0542                	slli	a0,a0,0x10
    2766:	8d5d                	or	a0,a0,a5
    2768:	4581                	li	a1,0
    276a:	a84d                	j	281c <soc_ctrl.c.866c9c8a+0x4>
    276c:	01000537          	lui	a0,0x1000
    2770:	46c1                	li	a3,16
    2772:	f4a66de3          	bltu	a2,a0,26cc <memory.c.f6d1f22a+0x18>
    2776:	46e1                	li	a3,24
    2778:	bf91                	j	26cc <memory.c.f6d1f22a+0x18>
    277a:	e211                	bnez	a2,277e <memory.c.f6d1f22a+0xca>
    277c:	9002                	ebreak
    277e:	67c1                	lui	a5,0x10
    2780:	0af67863          	bgeu	a2,a5,2830 <soc_ctrl.c.866c9c8a+0x18>
    2784:	10063693          	sltiu	a3,a2,256
    2788:	0016c693          	xori	a3,a3,1
    278c:	068e                	slli	a3,a3,0x3
    278e:	00d657b3          	srl	a5,a2,a3
    2792:	95be                	add	a1,a1,a5
    2794:	0005c783          	lbu	a5,0(a1)
    2798:	97b6                	add	a5,a5,a3
    279a:	02000693          	li	a3,32
    279e:	40f685b3          	sub	a1,a3,a5
    27a2:	08f69e63          	bne	a3,a5,283e <soc_ctrl.c.866c9c8a+0x26>
    27a6:	40ce07b3          	sub	a5,t3,a2
    27aa:	4585                	li	a1,1
    27ac:	01075313          	srli	t1,a4,0x10
    27b0:	0267deb3          	divu	t4,a5,t1
    27b4:	01071613          	slli	a2,a4,0x10
    27b8:	8241                	srli	a2,a2,0x10
    27ba:	01085693          	srli	a3,a6,0x10
    27be:	0267f7b3          	remu	a5,a5,t1
    27c2:	8576                	mv	a0,t4
    27c4:	03d60e33          	mul	t3,a2,t4
    27c8:	07c2                	slli	a5,a5,0x10
    27ca:	8fd5                	or	a5,a5,a3
    27cc:	01c7fc63          	bgeu	a5,t3,27e4 <memory.c.f6d1f22a+0x130>
    27d0:	97ba                	add	a5,a5,a4
    27d2:	fffe8513          	addi	a0,t4,-1
    27d6:	00e7e763          	bltu	a5,a4,27e4 <memory.c.f6d1f22a+0x130>
    27da:	01c7f563          	bgeu	a5,t3,27e4 <memory.c.f6d1f22a+0x130>
    27de:	ffee8513          	addi	a0,t4,-2
    27e2:	97ba                	add	a5,a5,a4
    27e4:	41c787b3          	sub	a5,a5,t3
    27e8:	0267de33          	divu	t3,a5,t1
    27ec:	0842                	slli	a6,a6,0x10
    27ee:	01085813          	srli	a6,a6,0x10
    27f2:	0267f7b3          	remu	a5,a5,t1
    27f6:	03c606b3          	mul	a3,a2,t3
    27fa:	07c2                	slli	a5,a5,0x10
    27fc:	00f86833          	or	a6,a6,a5
    2800:	87f2                	mv	a5,t3
    2802:	00d87b63          	bgeu	a6,a3,2818 <soc_ctrl.c.866c9c8a>
    2806:	983a                	add	a6,a6,a4
    2808:	fffe0793          	addi	a5,t3,-1
    280c:	00e86663          	bltu	a6,a4,2818 <soc_ctrl.c.866c9c8a>
    2810:	00d87463          	bgeu	a6,a3,2818 <soc_ctrl.c.866c9c8a>
    2814:	ffee0793          	addi	a5,t3,-2
    2818:	0542                	slli	a0,a0,0x10
    281a:	8d5d                	or	a0,a0,a5
    281c:	00088963          	beqz	a7,282e <soc_ctrl.c.866c9c8a+0x16>
    2820:	00a037b3          	snez	a5,a0
    2824:	40b005b3          	neg	a1,a1
    2828:	8d9d                	sub	a1,a1,a5
    282a:	40a00533          	neg	a0,a0
    282e:	8082                	ret
    2830:	010007b7          	lui	a5,0x1000
    2834:	46c1                	li	a3,16
    2836:	f4f66ce3          	bltu	a2,a5,278e <memory.c.f6d1f22a+0xda>
    283a:	46e1                	li	a3,24
    283c:	bf89                	j	278e <memory.c.f6d1f22a+0xda>
    283e:	00b61733          	sll	a4,a2,a1
    2842:	00fe56b3          	srl	a3,t3,a5
    2846:	01075513          	srli	a0,a4,0x10
    284a:	00be1e33          	sll	t3,t3,a1
    284e:	00f357b3          	srl	a5,t1,a5
    2852:	01c7e7b3          	or	a5,a5,t3
    2856:	02a6de33          	divu	t3,a3,a0
    285a:	01071613          	slli	a2,a4,0x10
    285e:	8241                	srli	a2,a2,0x10
    2860:	00b31833          	sll	a6,t1,a1
    2864:	02a6f6b3          	remu	a3,a3,a0
    2868:	03c60333          	mul	t1,a2,t3
    286c:	01069593          	slli	a1,a3,0x10
    2870:	0107d693          	srli	a3,a5,0x10
    2874:	8ecd                	or	a3,a3,a1
    2876:	85f2                	mv	a1,t3
    2878:	0066fc63          	bgeu	a3,t1,2890 <soc_ctrl.c.866c9c8a+0x78>
    287c:	96ba                	add	a3,a3,a4
    287e:	fffe0593          	addi	a1,t3,-1
    2882:	00e6e763          	bltu	a3,a4,2890 <soc_ctrl.c.866c9c8a+0x78>
    2886:	0066f563          	bgeu	a3,t1,2890 <soc_ctrl.c.866c9c8a+0x78>
    288a:	ffee0593          	addi	a1,t3,-2
    288e:	96ba                	add	a3,a3,a4
    2890:	406686b3          	sub	a3,a3,t1
    2894:	02a6d333          	divu	t1,a3,a0
    2898:	07c2                	slli	a5,a5,0x10
    289a:	83c1                	srli	a5,a5,0x10
    289c:	02a6f6b3          	remu	a3,a3,a0
    28a0:	02660633          	mul	a2,a2,t1
    28a4:	06c2                	slli	a3,a3,0x10
    28a6:	8fd5                	or	a5,a5,a3
    28a8:	869a                	mv	a3,t1
    28aa:	00c7fc63          	bgeu	a5,a2,28c2 <soc_ctrl.c.866c9c8a+0xaa>
    28ae:	97ba                	add	a5,a5,a4
    28b0:	fff30693          	addi	a3,t1,-1
    28b4:	00e7e763          	bltu	a5,a4,28c2 <soc_ctrl.c.866c9c8a+0xaa>
    28b8:	00c7f563          	bgeu	a5,a2,28c2 <soc_ctrl.c.866c9c8a+0xaa>
    28bc:	ffe30693          	addi	a3,t1,-2
    28c0:	97ba                	add	a5,a5,a4
    28c2:	05c2                	slli	a1,a1,0x10
    28c4:	8f91                	sub	a5,a5,a2
    28c6:	8dd5                	or	a1,a1,a3
    28c8:	b5d5                	j	27ac <memory.c.f6d1f22a+0xf8>
    28ca:	14de6163          	bltu	t3,a3,2a0c <soc_ctrl.c.866c9c8a+0x1f4>
    28ce:	67c1                	lui	a5,0x10
    28d0:	02f6ff63          	bgeu	a3,a5,290e <soc_ctrl.c.866c9c8a+0xf6>
    28d4:	1006b713          	sltiu	a4,a3,256
    28d8:	00174713          	xori	a4,a4,1
    28dc:	070e                	slli	a4,a4,0x3
    28de:	000807b7          	lui	a5,0x80
    28e2:	00e6d5b3          	srl	a1,a3,a4
    28e6:	37878793          	addi	a5,a5,888 # 80378 <__clz_tab>
    28ea:	97ae                	add	a5,a5,a1
    28ec:	0007c783          	lbu	a5,0(a5)
    28f0:	97ba                	add	a5,a5,a4
    28f2:	02000713          	li	a4,32
    28f6:	40f705b3          	sub	a1,a4,a5
    28fa:	02f71163          	bne	a4,a5,291c <soc_ctrl.c.866c9c8a+0x104>
    28fe:	4505                	li	a0,1
    2900:	f1c6eee3          	bltu	a3,t3,281c <soc_ctrl.c.866c9c8a+0x4>
    2904:	00c33533          	sltu	a0,t1,a2
    2908:	00154513          	xori	a0,a0,1
    290c:	bf01                	j	281c <soc_ctrl.c.866c9c8a+0x4>
    290e:	010007b7          	lui	a5,0x1000
    2912:	4741                	li	a4,16
    2914:	fcf6e5e3          	bltu	a3,a5,28de <soc_ctrl.c.866c9c8a+0xc6>
    2918:	4761                	li	a4,24
    291a:	b7d1                	j	28de <soc_ctrl.c.866c9c8a+0xc6>
    291c:	00f65733          	srl	a4,a2,a5
    2920:	00b696b3          	sll	a3,a3,a1
    2924:	8ed9                	or	a3,a3,a4
    2926:	00fe5733          	srl	a4,t3,a5
    292a:	00be1e33          	sll	t3,t3,a1
    292e:	00f357b3          	srl	a5,t1,a5
    2932:	01c7e7b3          	or	a5,a5,t3
    2936:	0106de13          	srli	t3,a3,0x10
    293a:	03c75f33          	divu	t5,a4,t3
    293e:	01069813          	slli	a6,a3,0x10
    2942:	01085813          	srli	a6,a6,0x10
    2946:	00b61633          	sll	a2,a2,a1
    294a:	03c77733          	remu	a4,a4,t3
    294e:	03e80eb3          	mul	t4,a6,t5
    2952:	01071513          	slli	a0,a4,0x10
    2956:	0107d713          	srli	a4,a5,0x10
    295a:	8f49                	or	a4,a4,a0
    295c:	857a                	mv	a0,t5
    295e:	01d77c63          	bgeu	a4,t4,2976 <soc_ctrl.c.866c9c8a+0x15e>
    2962:	9736                	add	a4,a4,a3
    2964:	ffff0513          	addi	a0,t5,-1
    2968:	00d76763          	bltu	a4,a3,2976 <soc_ctrl.c.866c9c8a+0x15e>
    296c:	01d77563          	bgeu	a4,t4,2976 <soc_ctrl.c.866c9c8a+0x15e>
    2970:	ffef0513          	addi	a0,t5,-2
    2974:	9736                	add	a4,a4,a3
    2976:	41d70733          	sub	a4,a4,t4
    297a:	03c75eb3          	divu	t4,a4,t3
    297e:	07c2                	slli	a5,a5,0x10
    2980:	83c1                	srli	a5,a5,0x10
    2982:	03c77733          	remu	a4,a4,t3
    2986:	03d80833          	mul	a6,a6,t4
    298a:	0742                	slli	a4,a4,0x10
    298c:	8fd9                	or	a5,a5,a4
    298e:	8776                	mv	a4,t4
    2990:	0107fc63          	bgeu	a5,a6,29a8 <soc_ctrl.c.866c9c8a+0x190>
    2994:	97b6                	add	a5,a5,a3
    2996:	fffe8713          	addi	a4,t4,-1
    299a:	00d7e763          	bltu	a5,a3,29a8 <soc_ctrl.c.866c9c8a+0x190>
    299e:	0107f563          	bgeu	a5,a6,29a8 <soc_ctrl.c.866c9c8a+0x190>
    29a2:	ffee8713          	addi	a4,t4,-2
    29a6:	97b6                	add	a5,a5,a3
    29a8:	0542                	slli	a0,a0,0x10
    29aa:	6ec1                	lui	t4,0x10
    29ac:	8d59                	or	a0,a0,a4
    29ae:	fffe8693          	addi	a3,t4,-1 # ffff <intt_driver.c.552d8326+0x8134>
    29b2:	00d57733          	and	a4,a0,a3
    29b6:	410787b3          	sub	a5,a5,a6
    29ba:	8ef1                	and	a3,a3,a2
    29bc:	01055813          	srli	a6,a0,0x10
    29c0:	8241                	srli	a2,a2,0x10
    29c2:	02d70e33          	mul	t3,a4,a3
    29c6:	02d806b3          	mul	a3,a6,a3
    29ca:	02c70733          	mul	a4,a4,a2
    29ce:	02c80833          	mul	a6,a6,a2
    29d2:	00d70633          	add	a2,a4,a3
    29d6:	010e5713          	srli	a4,t3,0x10
    29da:	9732                	add	a4,a4,a2
    29dc:	00d77363          	bgeu	a4,a3,29e2 <soc_ctrl.c.866c9c8a+0x1ca>
    29e0:	9876                	add	a6,a6,t4
    29e2:	01075693          	srli	a3,a4,0x10
    29e6:	96c2                	add	a3,a3,a6
    29e8:	02d7e063          	bltu	a5,a3,2a08 <soc_ctrl.c.866c9c8a+0x1f0>
    29ec:	d6d79ee3          	bne	a5,a3,2768 <memory.c.f6d1f22a+0xb4>
    29f0:	67c1                	lui	a5,0x10
    29f2:	17fd                	addi	a5,a5,-1
    29f4:	8f7d                	and	a4,a4,a5
    29f6:	0742                	slli	a4,a4,0x10
    29f8:	00fe7e33          	and	t3,t3,a5
    29fc:	00b31333          	sll	t1,t1,a1
    2a00:	9772                	add	a4,a4,t3
    2a02:	4581                	li	a1,0
    2a04:	e0e37ce3          	bgeu	t1,a4,281c <soc_ctrl.c.866c9c8a+0x4>
    2a08:	157d                	addi	a0,a0,-1
    2a0a:	bbb9                	j	2768 <memory.c.f6d1f22a+0xb4>
    2a0c:	4581                	li	a1,0
    2a0e:	4501                	li	a0,0
    2a10:	b531                	j	281c <soc_ctrl.c.866c9c8a+0x4>

00002a12 <__udivdi3>:
    2a12:	832a                	mv	t1,a0
    2a14:	88ae                	mv	a7,a1
    2a16:	8732                	mv	a4,a2
    2a18:	882a                	mv	a6,a0
    2a1a:	87ae                	mv	a5,a1
    2a1c:	20069663          	bnez	a3,2c28 <uart.c.04492fba+0x1b2>
    2a20:	000805b7          	lui	a1,0x80
    2a24:	37858593          	addi	a1,a1,888 # 80378 <__clz_tab>
    2a28:	0cc8f163          	bgeu	a7,a2,2aea <uart.c.04492fba+0x74>
    2a2c:	66c1                	lui	a3,0x10
    2a2e:	0ad67763          	bgeu	a2,a3,2adc <uart.c.04492fba+0x66>
    2a32:	10063693          	sltiu	a3,a2,256
    2a36:	0016c693          	xori	a3,a3,1
    2a3a:	068e                	slli	a3,a3,0x3
    2a3c:	00d65533          	srl	a0,a2,a3
    2a40:	95aa                	add	a1,a1,a0
    2a42:	0005c583          	lbu	a1,0(a1)
    2a46:	02000513          	li	a0,32
    2a4a:	96ae                	add	a3,a3,a1
    2a4c:	40d505b3          	sub	a1,a0,a3
    2a50:	00d50b63          	beq	a0,a3,2a66 <__udivdi3+0x54>
    2a54:	00b897b3          	sll	a5,a7,a1
    2a58:	00d356b3          	srl	a3,t1,a3
    2a5c:	00b61733          	sll	a4,a2,a1
    2a60:	8fd5                	or	a5,a5,a3
    2a62:	00b31833          	sll	a6,t1,a1
    2a66:	01075593          	srli	a1,a4,0x10
    2a6a:	02b7d333          	divu	t1,a5,a1
    2a6e:	01071613          	slli	a2,a4,0x10
    2a72:	8241                	srli	a2,a2,0x10
    2a74:	02b7f7b3          	remu	a5,a5,a1
    2a78:	851a                	mv	a0,t1
    2a7a:	026608b3          	mul	a7,a2,t1
    2a7e:	01079693          	slli	a3,a5,0x10
    2a82:	01085793          	srli	a5,a6,0x10
    2a86:	8fd5                	or	a5,a5,a3
    2a88:	0117fc63          	bgeu	a5,a7,2aa0 <uart.c.04492fba+0x2a>
    2a8c:	97ba                	add	a5,a5,a4
    2a8e:	fff30513          	addi	a0,t1,-1
    2a92:	00e7e763          	bltu	a5,a4,2aa0 <uart.c.04492fba+0x2a>
    2a96:	0117f563          	bgeu	a5,a7,2aa0 <uart.c.04492fba+0x2a>
    2a9a:	ffe30513          	addi	a0,t1,-2
    2a9e:	97ba                	add	a5,a5,a4
    2aa0:	411787b3          	sub	a5,a5,a7
    2aa4:	02b7d8b3          	divu	a7,a5,a1
    2aa8:	0842                	slli	a6,a6,0x10
    2aaa:	01085813          	srli	a6,a6,0x10
    2aae:	02b7f7b3          	remu	a5,a5,a1
    2ab2:	031606b3          	mul	a3,a2,a7
    2ab6:	07c2                	slli	a5,a5,0x10
    2ab8:	00f86833          	or	a6,a6,a5
    2abc:	87c6                	mv	a5,a7
    2abe:	00d87b63          	bgeu	a6,a3,2ad4 <uart.c.04492fba+0x5e>
    2ac2:	983a                	add	a6,a6,a4
    2ac4:	fff88793          	addi	a5,a7,-1
    2ac8:	00e86663          	bltu	a6,a4,2ad4 <uart.c.04492fba+0x5e>
    2acc:	00d87463          	bgeu	a6,a3,2ad4 <uart.c.04492fba+0x5e>
    2ad0:	ffe88793          	addi	a5,a7,-2
    2ad4:	0542                	slli	a0,a0,0x10
    2ad6:	8d5d                	or	a0,a0,a5
    2ad8:	4581                	li	a1,0
    2ada:	8082                	ret
    2adc:	01000537          	lui	a0,0x1000
    2ae0:	46c1                	li	a3,16
    2ae2:	f4a66de3          	bltu	a2,a0,2a3c <__udivdi3+0x2a>
    2ae6:	46e1                	li	a3,24
    2ae8:	bf91                	j	2a3c <__udivdi3+0x2a>
    2aea:	e211                	bnez	a2,2aee <uart.c.04492fba+0x78>
    2aec:	9002                	ebreak
    2aee:	67c1                	lui	a5,0x10
    2af0:	08f67f63          	bgeu	a2,a5,2b8e <uart.c.04492fba+0x118>
    2af4:	10063693          	sltiu	a3,a2,256
    2af8:	0016c693          	xori	a3,a3,1
    2afc:	068e                	slli	a3,a3,0x3
    2afe:	00d657b3          	srl	a5,a2,a3
    2b02:	95be                	add	a1,a1,a5
    2b04:	0005c783          	lbu	a5,0(a1)
    2b08:	97b6                	add	a5,a5,a3
    2b0a:	02000693          	li	a3,32
    2b0e:	40f685b3          	sub	a1,a3,a5
    2b12:	08f69563          	bne	a3,a5,2b9c <uart.c.04492fba+0x126>
    2b16:	40c887b3          	sub	a5,a7,a2
    2b1a:	4585                	li	a1,1
    2b1c:	01075893          	srli	a7,a4,0x10
    2b20:	0317de33          	divu	t3,a5,a7
    2b24:	01071613          	slli	a2,a4,0x10
    2b28:	8241                	srli	a2,a2,0x10
    2b2a:	01085693          	srli	a3,a6,0x10
    2b2e:	0317f7b3          	remu	a5,a5,a7
    2b32:	8572                	mv	a0,t3
    2b34:	03c60333          	mul	t1,a2,t3
    2b38:	07c2                	slli	a5,a5,0x10
    2b3a:	8fd5                	or	a5,a5,a3
    2b3c:	0067fc63          	bgeu	a5,t1,2b54 <uart.c.04492fba+0xde>
    2b40:	97ba                	add	a5,a5,a4
    2b42:	fffe0513          	addi	a0,t3,-1
    2b46:	00e7e763          	bltu	a5,a4,2b54 <uart.c.04492fba+0xde>
    2b4a:	0067f563          	bgeu	a5,t1,2b54 <uart.c.04492fba+0xde>
    2b4e:	ffee0513          	addi	a0,t3,-2
    2b52:	97ba                	add	a5,a5,a4
    2b54:	406787b3          	sub	a5,a5,t1
    2b58:	0317d333          	divu	t1,a5,a7
    2b5c:	0842                	slli	a6,a6,0x10
    2b5e:	01085813          	srli	a6,a6,0x10
    2b62:	0317f7b3          	remu	a5,a5,a7
    2b66:	026606b3          	mul	a3,a2,t1
    2b6a:	07c2                	slli	a5,a5,0x10
    2b6c:	00f86833          	or	a6,a6,a5
    2b70:	879a                	mv	a5,t1
    2b72:	00d87b63          	bgeu	a6,a3,2b88 <uart.c.04492fba+0x112>
    2b76:	983a                	add	a6,a6,a4
    2b78:	fff30793          	addi	a5,t1,-1
    2b7c:	00e86663          	bltu	a6,a4,2b88 <uart.c.04492fba+0x112>
    2b80:	00d87463          	bgeu	a6,a3,2b88 <uart.c.04492fba+0x112>
    2b84:	ffe30793          	addi	a5,t1,-2
    2b88:	0542                	slli	a0,a0,0x10
    2b8a:	8d5d                	or	a0,a0,a5
    2b8c:	8082                	ret
    2b8e:	010007b7          	lui	a5,0x1000
    2b92:	46c1                	li	a3,16
    2b94:	f6f665e3          	bltu	a2,a5,2afe <uart.c.04492fba+0x88>
    2b98:	46e1                	li	a3,24
    2b9a:	b795                	j	2afe <uart.c.04492fba+0x88>
    2b9c:	00b61733          	sll	a4,a2,a1
    2ba0:	00f8d6b3          	srl	a3,a7,a5
    2ba4:	01075513          	srli	a0,a4,0x10
    2ba8:	00f357b3          	srl	a5,t1,a5
    2bac:	00b31833          	sll	a6,t1,a1
    2bb0:	02a6d333          	divu	t1,a3,a0
    2bb4:	01071613          	slli	a2,a4,0x10
    2bb8:	00b898b3          	sll	a7,a7,a1
    2bbc:	8241                	srli	a2,a2,0x10
    2bbe:	0117e7b3          	or	a5,a5,a7
    2bc2:	02a6f6b3          	remu	a3,a3,a0
    2bc6:	026608b3          	mul	a7,a2,t1
    2bca:	01069593          	slli	a1,a3,0x10
    2bce:	0107d693          	srli	a3,a5,0x10
    2bd2:	8ecd                	or	a3,a3,a1
    2bd4:	859a                	mv	a1,t1
    2bd6:	0116fc63          	bgeu	a3,a7,2bee <uart.c.04492fba+0x178>
    2bda:	96ba                	add	a3,a3,a4
    2bdc:	fff30593          	addi	a1,t1,-1
    2be0:	00e6e763          	bltu	a3,a4,2bee <uart.c.04492fba+0x178>
    2be4:	0116f563          	bgeu	a3,a7,2bee <uart.c.04492fba+0x178>
    2be8:	ffe30593          	addi	a1,t1,-2
    2bec:	96ba                	add	a3,a3,a4
    2bee:	411686b3          	sub	a3,a3,a7
    2bf2:	02a6d8b3          	divu	a7,a3,a0
    2bf6:	07c2                	slli	a5,a5,0x10
    2bf8:	83c1                	srli	a5,a5,0x10
    2bfa:	02a6f6b3          	remu	a3,a3,a0
    2bfe:	03160633          	mul	a2,a2,a7
    2c02:	06c2                	slli	a3,a3,0x10
    2c04:	8fd5                	or	a5,a5,a3
    2c06:	86c6                	mv	a3,a7
    2c08:	00c7fc63          	bgeu	a5,a2,2c20 <uart.c.04492fba+0x1aa>
    2c0c:	97ba                	add	a5,a5,a4
    2c0e:	fff88693          	addi	a3,a7,-1
    2c12:	00e7e763          	bltu	a5,a4,2c20 <uart.c.04492fba+0x1aa>
    2c16:	00c7f563          	bgeu	a5,a2,2c20 <uart.c.04492fba+0x1aa>
    2c1a:	ffe88693          	addi	a3,a7,-2
    2c1e:	97ba                	add	a5,a5,a4
    2c20:	05c2                	slli	a1,a1,0x10
    2c22:	8f91                	sub	a5,a5,a2
    2c24:	8dd5                	or	a1,a1,a3
    2c26:	bddd                	j	2b1c <uart.c.04492fba+0xa6>
    2c28:	14d5e163          	bltu	a1,a3,2d6a <uart.c.04492fba+0x2f4>
    2c2c:	67c1                	lui	a5,0x10
    2c2e:	02f6ff63          	bgeu	a3,a5,2c6c <uart.c.04492fba+0x1f6>
    2c32:	1006b713          	sltiu	a4,a3,256
    2c36:	00174713          	xori	a4,a4,1
    2c3a:	070e                	slli	a4,a4,0x3
    2c3c:	000807b7          	lui	a5,0x80
    2c40:	00e6d5b3          	srl	a1,a3,a4
    2c44:	37878793          	addi	a5,a5,888 # 80378 <__clz_tab>
    2c48:	97ae                	add	a5,a5,a1
    2c4a:	0007c783          	lbu	a5,0(a5)
    2c4e:	97ba                	add	a5,a5,a4
    2c50:	02000713          	li	a4,32
    2c54:	40f705b3          	sub	a1,a4,a5
    2c58:	02f71163          	bne	a4,a5,2c7a <uart.c.04492fba+0x204>
    2c5c:	4505                	li	a0,1
    2c5e:	e716eee3          	bltu	a3,a7,2ada <uart.c.04492fba+0x64>
    2c62:	00c33533          	sltu	a0,t1,a2
    2c66:	00154513          	xori	a0,a0,1
    2c6a:	8082                	ret
    2c6c:	010007b7          	lui	a5,0x1000
    2c70:	4741                	li	a4,16
    2c72:	fcf6e5e3          	bltu	a3,a5,2c3c <uart.c.04492fba+0x1c6>
    2c76:	4761                	li	a4,24
    2c78:	b7d1                	j	2c3c <uart.c.04492fba+0x1c6>
    2c7a:	00f65733          	srl	a4,a2,a5
    2c7e:	00b696b3          	sll	a3,a3,a1
    2c82:	8ed9                	or	a3,a3,a4
    2c84:	00f8d733          	srl	a4,a7,a5
    2c88:	00b898b3          	sll	a7,a7,a1
    2c8c:	00f357b3          	srl	a5,t1,a5
    2c90:	0117e7b3          	or	a5,a5,a7
    2c94:	0106d893          	srli	a7,a3,0x10
    2c98:	03175eb3          	divu	t4,a4,a7
    2c9c:	01069813          	slli	a6,a3,0x10
    2ca0:	01085813          	srli	a6,a6,0x10
    2ca4:	00b61633          	sll	a2,a2,a1
    2ca8:	03177733          	remu	a4,a4,a7
    2cac:	03d80e33          	mul	t3,a6,t4
    2cb0:	01071513          	slli	a0,a4,0x10
    2cb4:	0107d713          	srli	a4,a5,0x10
    2cb8:	8f49                	or	a4,a4,a0
    2cba:	8576                	mv	a0,t4
    2cbc:	01c77c63          	bgeu	a4,t3,2cd4 <uart.c.04492fba+0x25e>
    2cc0:	9736                	add	a4,a4,a3
    2cc2:	fffe8513          	addi	a0,t4,-1
    2cc6:	00d76763          	bltu	a4,a3,2cd4 <uart.c.04492fba+0x25e>
    2cca:	01c77563          	bgeu	a4,t3,2cd4 <uart.c.04492fba+0x25e>
    2cce:	ffee8513          	addi	a0,t4,-2
    2cd2:	9736                	add	a4,a4,a3
    2cd4:	41c70733          	sub	a4,a4,t3
    2cd8:	03175e33          	divu	t3,a4,a7
    2cdc:	07c2                	slli	a5,a5,0x10
    2cde:	83c1                	srli	a5,a5,0x10
    2ce0:	03177733          	remu	a4,a4,a7
    2ce4:	03c80833          	mul	a6,a6,t3
    2ce8:	0742                	slli	a4,a4,0x10
    2cea:	8fd9                	or	a5,a5,a4
    2cec:	8772                	mv	a4,t3
    2cee:	0107fc63          	bgeu	a5,a6,2d06 <uart.c.04492fba+0x290>
    2cf2:	97b6                	add	a5,a5,a3
    2cf4:	fffe0713          	addi	a4,t3,-1
    2cf8:	00d7e763          	bltu	a5,a3,2d06 <uart.c.04492fba+0x290>
    2cfc:	0107f563          	bgeu	a5,a6,2d06 <uart.c.04492fba+0x290>
    2d00:	ffee0713          	addi	a4,t3,-2
    2d04:	97b6                	add	a5,a5,a3
    2d06:	0542                	slli	a0,a0,0x10
    2d08:	6e41                	lui	t3,0x10
    2d0a:	8d59                	or	a0,a0,a4
    2d0c:	fffe0693          	addi	a3,t3,-1 # ffff <intt_driver.c.552d8326+0x8134>
    2d10:	00d57733          	and	a4,a0,a3
    2d14:	410787b3          	sub	a5,a5,a6
    2d18:	8ef1                	and	a3,a3,a2
    2d1a:	01055813          	srli	a6,a0,0x10
    2d1e:	8241                	srli	a2,a2,0x10
    2d20:	02d708b3          	mul	a7,a4,a3
    2d24:	02d806b3          	mul	a3,a6,a3
    2d28:	02c70733          	mul	a4,a4,a2
    2d2c:	02c80833          	mul	a6,a6,a2
    2d30:	00d70633          	add	a2,a4,a3
    2d34:	0108d713          	srli	a4,a7,0x10
    2d38:	9732                	add	a4,a4,a2
    2d3a:	00d77363          	bgeu	a4,a3,2d40 <uart.c.04492fba+0x2ca>
    2d3e:	9872                	add	a6,a6,t3
    2d40:	01075693          	srli	a3,a4,0x10
    2d44:	96c2                	add	a3,a3,a6
    2d46:	02d7e063          	bltu	a5,a3,2d66 <uart.c.04492fba+0x2f0>
    2d4a:	d8d797e3          	bne	a5,a3,2ad8 <uart.c.04492fba+0x62>
    2d4e:	67c1                	lui	a5,0x10
    2d50:	17fd                	addi	a5,a5,-1
    2d52:	8f7d                	and	a4,a4,a5
    2d54:	0742                	slli	a4,a4,0x10
    2d56:	00f8f8b3          	and	a7,a7,a5
    2d5a:	00b31333          	sll	t1,t1,a1
    2d5e:	9746                	add	a4,a4,a7
    2d60:	4581                	li	a1,0
    2d62:	d6e37ce3          	bgeu	t1,a4,2ada <uart.c.04492fba+0x64>
    2d66:	157d                	addi	a0,a0,-1
    2d68:	bb85                	j	2ad8 <uart.c.04492fba+0x62>
    2d6a:	4581                	li	a1,0
    2d6c:	4501                	li	a0,0
    2d6e:	8082                	ret
