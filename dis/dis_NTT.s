
sw/applications/athos_ip_test/NTT/main.elf:     file format elf32-littleriscv


Disassembly of section .vectors:

00000000 <__vector_start>:
   0:	2880106f          	j	1288 <handler_exception>
   4:	5ed0006f          	j	df0 <__no_irq_handler>
   8:	5e90006f          	j	df0 <__no_irq_handler>
   c:	40c0106f          	j	1418 <handler_irq_software>
  10:	5e10006f          	j	df0 <__no_irq_handler>
  14:	5dd0006f          	j	df0 <__no_irq_handler>
  18:	5d90006f          	j	df0 <__no_irq_handler>
  1c:	42c0106f          	j	1448 <handler_irq_timer>
  20:	5d10006f          	j	df0 <__no_irq_handler>
  24:	5cd0006f          	j	df0 <__no_irq_handler>
  28:	5c90006f          	j	df0 <__no_irq_handler>
  2c:	44c0106f          	j	1478 <handler_irq_external>
  30:	5c10006f          	j	df0 <__no_irq_handler>
  34:	5bd0006f          	j	df0 <__no_irq_handler>
  38:	5b90006f          	j	df0 <__no_irq_handler>
  3c:	5b50006f          	j	df0 <__no_irq_handler>
  40:	4e40106f          	j	1524 <handler_irq_fast_timer_1>
  44:	5340106f          	j	1578 <handler_irq_fast_timer_2>
  48:	5840106f          	j	15cc <handler_irq_fast_timer_3>
  4c:	4b40106f          	j	1500 <handler_irq_fast_dma>
  50:	5d40106f          	j	1624 <handler_irq_fast_spi>
  54:	6280106f          	j	167c <handler_irq_fast_spi_flash>
  58:	67c0106f          	j	16d4 <handler_irq_fast_gpio_0>
  5c:	6d00106f          	j	172c <handler_irq_fast_gpio_1>
  60:	7240106f          	j	1784 <handler_irq_fast_gpio_2>
  64:	7780106f          	j	17dc <handler_irq_fast_gpio_3>
  68:	7cc0106f          	j	1834 <handler_irq_fast_gpio_4>
  6c:	0210106f          	j	188c <handler_irq_fast_gpio_5>
  70:	0790106f          	j	18e8 <handler_irq_fast_gpio_6>
  74:	0cd0106f          	j	1940 <handler_irq_fast_gpio_7>
  78:	5790006f          	j	df0 <__no_irq_handler>
  7c:	5750006f          	j	df0 <__no_irq_handler>
  80:	5f90006f          	j	e78 <verification_irq_handler>
  84:	56d0006f          	j	df0 <__no_irq_handler>
  88:	5690006f          	j	df0 <__no_irq_handler>
  8c:	5650006f          	j	df0 <__no_irq_handler>
  90:	5610006f          	j	df0 <__no_irq_handler>
  94:	55d0006f          	j	df0 <__no_irq_handler>
  98:	5590006f          	j	df0 <__no_irq_handler>
  9c:	5550006f          	j	df0 <__no_irq_handler>
  a0:	5510006f          	j	df0 <__no_irq_handler>
  a4:	54d0006f          	j	df0 <__no_irq_handler>
  a8:	5490006f          	j	df0 <__no_irq_handler>
  ac:	5450006f          	j	df0 <__no_irq_handler>
  b0:	5410006f          	j	df0 <__no_irq_handler>
  b4:	53d0006f          	j	df0 <__no_irq_handler>
  b8:	5390006f          	j	df0 <__no_irq_handler>
  bc:	5350006f          	j	df0 <__no_irq_handler>
  c0:	5310006f          	j	df0 <__no_irq_handler>
  c4:	52d0006f          	j	df0 <__no_irq_handler>
  c8:	5290006f          	j	df0 <__no_irq_handler>
  cc:	5250006f          	j	df0 <__no_irq_handler>
  d0:	5210006f          	j	df0 <__no_irq_handler>
  d4:	51d0006f          	j	df0 <__no_irq_handler>
  d8:	5190006f          	j	df0 <__no_irq_handler>
  dc:	5150006f          	j	df0 <__no_irq_handler>
  e0:	5110006f          	j	df0 <__no_irq_handler>
  e4:	50d0006f          	j	df0 <__no_irq_handler>
  e8:	5090006f          	j	df0 <__no_irq_handler>
  ec:	5050006f          	j	df0 <__no_irq_handler>
  f0:	5010006f          	j	df0 <__no_irq_handler>
  f4:	4fd0006f          	j	df0 <__no_irq_handler>
  f8:	4f90006f          	j	df0 <__no_irq_handler>
  fc:	4f50006f          	j	df0 <__no_irq_handler>
 100:	4f10006f          	j	df0 <__no_irq_handler>

Disassembly of section .init:

00000180 <_start>:
 180:	00081197          	auipc	gp,0x81
 184:	c2818193          	addi	gp,gp,-984 # 80da8 <__global_pointer$>
 188:	000e0117          	auipc	sp,0xe0
 18c:	64810113          	addi	sp,sp,1608 # e07d0 <_sp>
 190:	20000537          	lui	a0,0x20000
 194:	05f5e637          	lui	a2,0x5f5e
 198:	10060613          	addi	a2,a2,256 # 5f5e100 <_sp+0x5e7d930>
 19c:	cd50                	sw	a2,28(a0)
 19e:	00080517          	auipc	a0,0x80
 1a2:	47a50513          	addi	a0,a0,1146 # 80618 <plic_intr_flag>
 1a6:	00080617          	auipc	a2,0x80
 1aa:	61e60613          	addi	a2,a2,1566 # 807c4 <__BSS_END__>
 1ae:	8e09                	sub	a2,a2,a0
 1b0:	4581                	li	a1,0
 1b2:	08f010ef          	jal	ra,1a40 <memset>
 1b6:	00000517          	auipc	a0,0x0
 1ba:	e4a50513          	addi	a0,a0,-438 # 0 <__vector_start>
 1be:	00156513          	ori	a0,a0,1
 1c2:	30551073          	csrw	mtvec,a0
 1c6:	00001517          	auipc	a0,0x1
 1ca:	7da50513          	addi	a0,a0,2010 # 19a0 <__libc_fini_array>
 1ce:	7c8010ef          	jal	ra,1996 <atexit>
 1d2:	009010ef          	jal	ra,19da <__libc_init_array>
 1d6:	4502                	lw	a0,0(sp)
 1d8:	004c                	addi	a1,sp,4
 1da:	4601                	li	a2,0
 1dc:	03a000ef          	jal	ra,216 <main>
 1e0:	00c0006f          	j	1ec <exit>

000001e4 <_init>:
 1e4:	793000ef          	jal	ra,1176 <init>

000001e8 <_fini>:
 1e8:	8082                	ret

Disassembly of section .text:

000001ec <exit>:
     1ec:	1141                	addi	sp,sp,-16
     1ee:	6789                	lui	a5,0x2
     1f0:	c422                	sw	s0,8(sp)
     1f2:	c606                	sw	ra,12(sp)
     1f4:	e9278793          	addi	a5,a5,-366 # 1e92 <__call_exitprocs>
     1f8:	842a                	mv	s0,a0
     1fa:	c781                	beqz	a5,202 <exit+0x16>
     1fc:	4581                	li	a1,0
     1fe:	495010ef          	jal	ra,1e92 <__call_exitprocs>
     202:	000807b7          	lui	a5,0x80
     206:	6087a503          	lw	a0,1544(a5) # 80608 <_global_impure_ptr>
     20a:	551c                	lw	a5,40(a0)
     20c:	c391                	beqz	a5,210 <exit+0x24>
     20e:	9782                	jalr	a5
     210:	8522                	mv	a0,s0
     212:	76d000ef          	jal	ra,117e <_exit>

00000216 <main>:
     216:	66c1                	lui	a3,0x10
     218:	9d010113          	addi	sp,sp,-1584
     21c:	77c1                	lui	a5,0xffff0
     21e:	00020537          	lui	a0,0x20
     222:	7801                	lui	a6,0xfffe0
     224:	00030337          	lui	t1,0x30
     228:	00268e13          	addi	t3,a3,2 # 10002 <intt_driver.c.552d8326+0x7b30>
     22c:	5679                	li	a2,-2
     22e:	fff68713          	addi	a4,a3,-1
     232:	58fd                	li	a7,-1
     234:	00180e93          	addi	t4,a6,1 # fffe0001 <_sp+0xffeff831>
     238:	00178393          	addi	t2,a5,1 # ffff0001 <_sp+0xfff0f831>
     23c:	ffe50293          	addi	t0,a0,-2 # 1fffe <intt_driver.c.552d8326+0x17b2c>
     240:	62912423          	sw	s1,1576(sp)
     244:	63312023          	sw	s3,1568(sp)
     248:	fff30493          	addi	s1,t1,-1 # 2ffff <intt_driver.c.552d8326+0x27b2d>
     24c:	00278993          	addi	s3,a5,2
     250:	42c12023          	sw	a2,1056(sp)
     254:	4f8d                	li	t6,3
     256:	00168613          	addi	a2,a3,1
     25a:	45c12823          	sw	t3,1104(sp)
     25e:	fff50e13          	addi	t3,a0,-1
     262:	4585                	li	a1,1
     264:	4f09                	li	t5,2
     266:	62112623          	sw	ra,1580(sp)
     26a:	63212223          	sw	s2,1572(sp)
     26e:	61412e23          	sw	s4,1564(sp)
     272:	00150913          	addi	s2,a0,1
     276:	61512c23          	sw	s5,1560(sp)
     27a:	61612a23          	sw	s6,1556(sp)
     27e:	40712023          	sw	t2,1024(sp)
     282:	40e12423          	sw	a4,1032(sp)
     286:	40612823          	sw	t1,1040(sp)
     28a:	00280093          	addi	ra,a6,2
     28e:	40d12623          	sw	a3,1036(sp)
     292:	40c12a23          	sw	a2,1044(sp)
     296:	43f12823          	sw	t6,1072(sp)
     29a:	40912e23          	sw	s1,1052(sp)
     29e:	ffe68f93          	addi	t6,a3,-2
     2a2:	44e12423          	sw	a4,1096(sp)
     2a6:	44c12a23          	sw	a2,1108(sp)
     2aa:	46e12423          	sw	a4,1128(sp)
     2ae:	61712823          	sw	s7,1552(sp)
     2b2:	61812623          	sw	s8,1548(sp)
     2b6:	61912423          	sw	s9,1544(sp)
     2ba:	40512223          	sw	t0,1028(sp)
     2be:	41112c23          	sw	a7,1048(sp)
     2c2:	43112623          	sw	a7,1068(sp)
     2c6:	42512a23          	sw	t0,1076(sp)
     2ca:	43112c23          	sw	a7,1080(sp)
     2ce:	44512623          	sw	t0,1100(sp)
     2d2:	45d12c23          	sw	t4,1112(sp)
     2d6:	45c12023          	sw	t3,1088(sp)
     2da:	45c12223          	sw	t3,1092(sp)
     2de:	43312223          	sw	s3,1060(sp)
     2e2:	42f12423          	sw	a5,1064(sp)
     2e6:	42f12e23          	sw	a5,1084(sp)
     2ea:	46e12a23          	sw	a4,1140(sp)
     2ee:	44f12e23          	sw	a5,1116(sp)
     2f2:	46112e23          	sw	ra,1148(sp)
     2f6:	46f12023          	sw	a5,1120(sp)
     2fa:	ffd68093          	addi	ra,a3,-3
     2fe:	46f12223          	sw	a5,1124(sp)
     302:	46f12823          	sw	a5,1136(sp)
     306:	46f12c23          	sw	a5,1144(sp)
     30a:	48d12423          	sw	a3,1160(sp)
     30e:	48b12823          	sw	a1,1168(sp)
     312:	48712e23          	sw	t2,1180(sp)
     316:	4ac12223          	sw	a2,1188(sp)
     31a:	4ac12623          	sw	a2,1196(sp)
     31e:	4ad12823          	sw	a3,1200(sp)
     322:	4cb12223          	sw	a1,1220(sp)
     326:	4ce12423          	sw	a4,1224(sp)
     32a:	4cb12823          	sw	a1,1232(sp)
     32e:	4c712a23          	sw	t2,1236(sp)
     332:	46012623          	sw	zero,1132(sp)
     336:	49112023          	sw	a7,1152(sp)
     33a:	49012223          	sw	a6,1156(sp)
     33e:	49212623          	sw	s2,1164(sp)
     342:	49012a23          	sw	a6,1172(sp)
     346:	49d12c23          	sw	t4,1176(sp)
     34a:	4bf12023          	sw	t6,1184(sp)
     34e:	4bc12423          	sw	t3,1192(sp)
     352:	4bc12a23          	sw	t3,1204(sp)
     356:	4be12c23          	sw	t5,1208(sp)
     35a:	4bf12e23          	sw	t6,1212(sp)
     35e:	4d012023          	sw	a6,1216(sp)
     362:	4ca12623          	sw	a0,1228(sp)
     366:	4de12c23          	sw	t5,1240(sp)
     36a:	4cc12e23          	sw	a2,1244(sp)
     36e:	4e112023          	sw	ra,1248(sp)
     372:	fffd00b7          	lui	ra,0xfffd0
     376:	ffe78493          	addi	s1,a5,-2
     37a:	0089                	addi	ra,ra,2
     37c:	ffe30b13          	addi	s6,t1,-2
     380:	4ec12423          	sw	a2,1256(sp)
     384:	4ed12623          	sw	a3,1260(sp)
     388:	4e112823          	sw	ra,1264(sp)
     38c:	4e712a23          	sw	t2,1268(sp)
     390:	4ef12c23          	sw	a5,1272(sp)
     394:	50c12023          	sw	a2,1280(sp)
     398:	00378a93          	addi	s5,a5,3
     39c:	50c12623          	sw	a2,1292(sp)
     3a0:	50f12823          	sw	a5,1296(sp)
     3a4:	50e12e23          	sw	a4,1308(sp)
     3a8:	52c12023          	sw	a2,1312(sp)
     3ac:	54f12623          	sw	a5,1356(sp)
     3b0:	54f12c23          	sw	a5,1368(sp)
     3b4:	4f212e23          	sw	s2,1276(sp)
     3b8:	4e912223          	sw	s1,1252(sp)
     3bc:	51112223          	sw	a7,1284(sp)
     3c0:	50012423          	sw	zero,1288(sp)
     3c4:	51d12a23          	sw	t4,1300(sp)
     3c8:	50912c23          	sw	s1,1304(sp)
     3cc:	53112223          	sw	a7,1316(sp)
     3d0:	52012423          	sw	zero,1320(sp)
     3d4:	53112623          	sw	a7,1324(sp)
     3d8:	53d12823          	sw	t4,1328(sp)
     3dc:	53f12a23          	sw	t6,1332(sp)
     3e0:	53012c23          	sw	a6,1336(sp)
     3e4:	52a12e23          	sw	a0,1340(sp)
     3e8:	55c12023          	sw	t3,1344(sp)
     3ec:	55c12223          	sw	t3,1348(sp)
     3f0:	55d12423          	sw	t4,1352(sp)
     3f4:	55d12823          	sw	t4,1360(sp)
     3f8:	54012a23          	sw	zero,1364(sp)
     3fc:	55112e23          	sw	a7,1372(sp)
     400:	57f12023          	sw	t6,1376(sp)
     404:	3e500793          	li	a5,997
     408:	56d12823          	sw	a3,1392(sp)
     40c:	56e12e23          	sw	a4,1404(sp)
     410:	58b12423          	sw	a1,1416(sp)
     414:	58b12823          	sw	a1,1424(sp)
     418:	5ab12223          	sw	a1,1444(sp)
     41c:	5ac12623          	sw	a2,1452(sp)
     420:	5ab12a23          	sw	a1,1460(sp)
     424:	5ab12c23          	sw	a1,1464(sp)
     428:	5ac12e23          	sw	a2,1468(sp)
     42c:	5cd12423          	sw	a3,1480(sp)
     430:	5cb12623          	sw	a1,1484(sp)
     434:	5ce12823          	sw	a4,1488(sp)
     438:	5ce12a23          	sw	a4,1492(sp)
     43c:	5cb12e23          	sw	a1,1500(sp)
     440:	57c12223          	sw	t3,1380(sp)
     444:	56012423          	sw	zero,1384(sp)
     448:	57012623          	sw	a6,1388(sp)
     44c:	57612a23          	sw	s6,1396(sp)
     450:	56a12c23          	sw	a0,1400(sp)
     454:	59512023          	sw	s5,1408(sp)
     458:	58512223          	sw	t0,1412(sp)
     45c:	59012623          	sw	a6,1420(sp)
     460:	59212a23          	sw	s2,1428(sp)
     464:	58012c23          	sw	zero,1432(sp)
     468:	58912e23          	sw	s1,1436(sp)
     46c:	5a512023          	sw	t0,1440(sp)
     470:	5be12423          	sw	t5,1448(sp)
     474:	5aa12823          	sw	a0,1456(sp)
     478:	5de12023          	sw	t5,1472(sp)
     47c:	5ca12223          	sw	a0,1476(sp)
     480:	5c012c23          	sw	zero,1496(sp)
     484:	5e012023          	sw	zero,1504(sp)
     488:	5f312223          	sw	s3,1508(sp)
     48c:	20f11123          	sh	a5,514(sp)
     490:	fb1207b7          	lui	a5,0xfb120
     494:	56478793          	addi	a5,a5,1380 # fb120564 <_sp+0xfb03fd94>
     498:	20f12223          	sw	a5,516(sp)
     49c:	058707b7          	lui	a5,0x5870
     4a0:	98078793          	addi	a5,a5,-1664 # 586f980 <_sp+0x578f1b0>
     4a4:	20f12423          	sw	a5,520(sp)
     4a8:	048907b7          	lui	a5,0x4890
     4ac:	5c178793          	addi	a5,a5,1473 # 48905c1 <_sp+0x47afdf1>
     4b0:	20f12623          	sw	a5,524(sp)
     4b4:	fc8d07b7          	lui	a5,0xfc8d0
     4b8:	45778793          	addi	a5,a5,1111 # fc8d0457 <_sp+0xfc7efc87>
     4bc:	20f12823          	sw	a5,528(sp)
     4c0:	054007b7          	lui	a5,0x5400
     4c4:	bde78793          	addi	a5,a5,-1058 # 53ffbde <_sp+0x531f40e>
     4c8:	20f12a23          	sw	a5,532(sp)
     4cc:	fcc007b7          	lui	a5,0xfcc00
     4d0:	de178793          	addi	a5,a5,-543 # fcbffde1 <_sp+0xfcb1f611>
     4d4:	20f12c23          	sw	a5,536(sp)
     4d8:	066607b7          	lui	a5,0x6660
     4dc:	3f578793          	addi	a5,a5,1013 # 66603f5 <_sp+0x657fc25>
     4e0:	20f12e23          	sw	a5,540(sp)
     4e4:	f9fb07b7          	lui	a5,0xf9fb0
     4e8:	2c178793          	addi	a5,a5,705 # f9fb02c1 <_sp+0xf9ecfaf1>
     4ec:	22f12223          	sw	a5,548(sp)
     4f0:	01ff07b7          	lui	a5,0x1ff0
     4f4:	c0d78793          	addi	a5,a5,-1011 # 1fefc0d <_sp+0x1f0f43d>
     4f8:	22f12423          	sw	a5,552(sp)
     4fc:	fe6107b7          	lui	a5,0xfe610
     500:	ade78793          	addi	a5,a5,-1314 # fe60fade <_sp+0xfe52f30e>
     504:	22f12623          	sw	a5,556(sp)
     508:	062107b7          	lui	a5,0x6210
     50c:	04378793          	addi	a5,a5,67 # 6210043 <_sp+0x612f873>
     510:	22f12823          	sw	a5,560(sp)
     514:	013407b7          	lui	a5,0x1340
     518:	ab778793          	addi	a5,a5,-1353 # 133fab7 <_sp+0x125f2e7>
     51c:	22f12a23          	sw	a5,564(sp)
     520:	fd7e07b7          	lui	a5,0xfd7e0
     524:	5f878793          	addi	a5,a5,1528 # fd7e05f8 <_sp+0xfd6ffe28>
     528:	22f12c23          	sw	a5,568(sp)
     52c:	01bc07b7          	lui	a5,0x1bc0
     530:	b2378793          	addi	a5,a5,-1245 # 1bbfb23 <_sp+0x1adf353>
     534:	22f12e23          	sw	a5,572(sp)
     538:	00df07b7          	lui	a5,0xdf0
     53c:	d5f78793          	addi	a5,a5,-673 # defd5f <_sp+0xd0f58f>
     540:	24f12023          	sw	a5,576(sp)
     544:	00ee07b7          	lui	a5,0xee0
     548:	5e878793          	addi	a5,a5,1512 # ee05e8 <_sp+0xdffe18>
     54c:	24f12223          	sw	a5,580(sp)
     550:	fb8c07b7          	lui	a5,0xfb8c0
     554:	a1d78793          	addi	a5,a5,-1507 # fb8bfa1d <_sp+0xfb7df24d>
     558:	24f12423          	sw	a5,584(sp)
     55c:	fd5c07b7          	lui	a5,0xfd5c0
     560:	14778793          	addi	a5,a5,327 # fd5c0147 <_sp+0xfd4df977>
     564:	24f12623          	sw	a5,588(sp)
     568:	fe1f07b7          	lui	a5,0xfe1f0
     56c:	57778793          	addi	a5,a5,1399 # fe1f0577 <_sp+0xfe10fda7>
     570:	24f12823          	sw	a5,592(sp)
     574:	00fe07b7          	lui	a5,0xfe0
     578:	ac478793          	addi	a5,a5,-1340 # fdfac4 <_sp+0xeff2f4>
     57c:	24f12a23          	sw	a5,596(sp)
     580:	ff4807b7          	lui	a5,0xff480
     584:	c2c78793          	addi	a5,a5,-980 # ff47fc2c <_sp+0xff39f45c>
     588:	24f12c23          	sw	a5,600(sp)
     58c:	008a07b7          	lui	a5,0x8a0
     590:	49c78793          	addi	a5,a5,1180 # 8a049c <_sp+0x7bfccc>
     594:	24f12e23          	sw	a5,604(sp)
     598:	016b07b7          	lui	a5,0x16b0
     59c:	c7178793          	addi	a5,a5,-911 # 16afc71 <_sp+0x15cf4a1>
     5a0:	26f12023          	sw	a5,608(sp)
     5a4:	fa2307b7          	lui	a5,0xfa230
     5a8:	05cc03b7          	lui	t2,0x5cc0
     5ac:	0c578793          	addi	a5,a5,197 # fa2300c5 <_sp+0xfa14f8f5>
     5b0:	00130a13          	addi	s4,t1,1
     5b4:	26f12223          	sw	a5,612(sp)
     5b8:	bfb38093          	addi	ra,t2,-1029 # 5cbfbfb <_sp+0x5bdf42b>
     5bc:	f9c007b7          	lui	a5,0xf9c00
     5c0:	5ee12423          	sw	a4,1512(sp)
     5c4:	5ee12823          	sw	a4,1520(sp)
     5c8:	5ee12a23          	sw	a4,1524(sp)
     5cc:	47578793          	addi	a5,a5,1141 # f9c00475 <_sp+0xf9b1fca5>
     5d0:	5f412623          	sw	s4,1516(sp)
     5d4:	5ff12c23          	sw	t6,1528(sp)
     5d8:	5fe12e23          	sw	t5,1532(sp)
     5dc:	22112023          	sw	ra,544(sp)
     5e0:	26f12423          	sw	a5,616(sp)
     5e4:	032807b7          	lui	a5,0x3280
     5e8:	c6578793          	addi	a5,a5,-923 # 327fc65 <_sp+0x319f495>
     5ec:	26f12623          	sw	a5,620(sp)
     5f0:	ffea07b7          	lui	a5,0xffea0
     5f4:	5a078793          	addi	a5,a5,1440 # ffea05a0 <_sp+0xffdbfdd0>
     5f8:	26f12823          	sw	a5,624(sp)
     5fc:	037b07b7          	lui	a5,0x37b0
     600:	c4d78793          	addi	a5,a5,-947 # 37afc4d <_sp+0x36cf47d>
     604:	26f12a23          	sw	a5,628(sp)
     608:	008007b7          	lui	a5,0x800
     60c:	f9678793          	addi	a5,a5,-106 # 7fff96 <_sp+0x71f7c6>
     610:	26f12c23          	sw	a5,632(sp)
     614:	04eb07b7          	lui	a5,0x4eb0
     618:	f9c78793          	addi	a5,a5,-100 # 4eaff9c <_sp+0x4dcf7cc>
     61c:	26f12e23          	sw	a5,636(sp)
     620:	ad700793          	li	a5,-1321
     624:	28f11023          	sh	a5,640(sp)
     628:	9a000793          	li	a5,-1632
     62c:	28f11123          	sh	a5,642(sp)
     630:	038c07b7          	lui	a5,0x38c0
     634:	41b78793          	addi	a5,a5,1051 # 38c041b <_sp+0x37dfc4b>
     638:	28f12223          	sw	a5,644(sp)
     63c:	fca807b7          	lui	a5,0xfca80
     640:	07e78793          	addi	a5,a5,126 # fca8007e <_sp+0xfc99f8ae>
     644:	28f12423          	sw	a5,648(sp)
     648:	fb0907b7          	lui	a5,0xfb090
     64c:	2ad78793          	addi	a5,a5,685 # fb0902ad <_sp+0xfafafadd>
     650:	28f12623          	sw	a5,652(sp)
     654:	04e007b7          	lui	a5,0x4e00
     658:	0e678793          	addi	a5,a5,230 # 4e000e6 <_sp+0x4d1f916>
     65c:	28f12823          	sw	a5,656(sp)
     660:	00d607b7          	lui	a5,0xd60
     664:	c6c78793          	addi	a5,a5,-916 # d5fc6c <_sp+0xc7f49c>
     668:	28f12a23          	sw	a5,660(sp)
     66c:	fd2507b7          	lui	a5,0xfd250
     670:	efe78793          	addi	a5,a5,-258 # fd24fefe <_sp+0xfd16f72e>
     674:	28f12c23          	sw	a5,664(sp)
     678:	ff4007b7          	lui	a5,0xff400
     67c:	62f78793          	addi	a5,a5,1583 # ff40062f <_sp+0xff31fe5f>
     680:	28f12e23          	sw	a5,668(sp)
     684:	ff6707b7          	lui	a5,0xff670
     688:	e6878793          	addi	a5,a5,-408 # ff66fe68 <_sp+0xff58f698>
     68c:	2af12023          	sw	a5,672(sp)
     690:	048807b7          	lui	a5,0x4880
     694:	2fb78793          	addi	a5,a5,763 # 48802fb <_sp+0x479fb2b>
     698:	2af12223          	sw	a5,676(sp)
     69c:	055c07b7          	lui	a5,0x55c0
     6a0:	d5978793          	addi	a5,a5,-679 # 55bfd59 <_sp+0x54df589>
     6a4:	2af12423          	sw	a5,680(sp)
     6a8:	fa2e07b7          	lui	a5,0xfa2e0
     6ac:	cd678793          	addi	a5,a5,-810 # fa2dfcd6 <_sp+0xfa1ff506>
     6b0:	2af12623          	sw	a5,684(sp)
     6b4:	011b07b7          	lui	a5,0x11b0
     6b8:	faa78793          	addi	a5,a5,-86 # 11affaa <_sp+0x10cf7da>
     6bc:	2af12823          	sw	a5,688(sp)
     6c0:	045207b7          	lui	a5,0x4520
     6c4:	34778793          	addi	a5,a5,839 # 4520347 <_sp+0x443fb77>
     6c8:	2af12a23          	sw	a5,692(sp)
     6cc:	fcf907b7          	lui	a5,0xfcf90
     6d0:	0e378793          	addi	a5,a5,227 # fcf900e3 <_sp+0xfceaf913>
     6d4:	2af12c23          	sw	a5,696(sp)
     6d8:	031d07b7          	lui	a5,0x31d0
     6dc:	e8d78793          	addi	a5,a5,-371 # 31cfe8d <_sp+0x30ef6bd>
     6e0:	2af12e23          	sw	a5,700(sp)
     6e4:	fcbf07b7          	lui	a5,0xfcbf0
     6e8:	3c178793          	addi	a5,a5,961 # fcbf03c1 <_sp+0xfcb0fbf1>
     6ec:	2cf12023          	sw	a5,704(sp)
     6f0:	01bf07b7          	lui	a5,0x1bf0
     6f4:	e9b78793          	addi	a5,a5,-357 # 1befe9b <_sp+0x1b0f6cb>
     6f8:	2cf12223          	sw	a5,708(sp)
     6fc:	fb0707b7          	lui	a5,0xfb070
     700:	20278793          	addi	a5,a5,514 # fb070202 <_sp+0xfaf8fa32>
     704:	2cf12423          	sw	a5,712(sp)
     708:	054307b7          	lui	a5,0x5430
     70c:	65e78793          	addi	a5,a5,1630 # 543065e <_sp+0x534fe8e>
     710:	2cf12623          	sw	a5,716(sp)
     714:	fe4d07b7          	lui	a5,0xfe4d0
     718:	4d078793          	addi	a5,a5,1232 # fe4d04d0 <_sp+0xfe3efd00>
     71c:	2cf12823          	sw	a5,720(sp)
     720:	008207b7          	lui	a5,0x820
     724:	22b78793          	addi	a5,a5,555 # 82022b <_sp+0x73fa5b>
     728:	2cf12a23          	sw	a5,724(sp)
     72c:	05a507b7          	lui	a5,0x5a50
     730:	38b78793          	addi	a5,a5,907 # 5a5038b <_sp+0x596fbbb>
     734:	2cf12c23          	sw	a5,728(sp)
     738:	fb3a07b7          	lui	a5,0xfb3a0
     73c:	a1e78793          	addi	a5,a5,-1506 # fb39fa1e <_sp+0xfb2bf24e>
     740:	2cf12e23          	sw	a5,732(sp)
     744:	fd9507b7          	lui	a5,0xfd950
     748:	bb878793          	addi	a5,a5,-1096 # fd94fbb8 <_sp+0xfd86f3e8>
     74c:	2ef12023          	sw	a5,736(sp)
     750:	059f07b7          	lui	a5,0x59f0
     754:	a4978793          	addi	a5,a5,-1463 # 59efa49 <_sp+0x590f279>
     758:	2ef12223          	sw	a5,740(sp)
     75c:	05d30637          	lui	a2,0x5d30
     760:	fd4007b7          	lui	a5,0xfd400
     764:	f3378793          	addi	a5,a5,-205 # fd3fff33 <_sp+0xfd31f763>
     768:	ab060613          	addi	a2,a2,-1360 # 5d2fab0 <_sp+0x5c4f2e0>
     76c:	2ef12423          	sw	a5,744(sp)
     770:	2ec12a23          	sw	a2,756(sp)
     774:	fcc60637          	lui	a2,0xfcc60
     778:	1a160613          	addi	a2,a2,417 # fcc601a1 <_sp+0xfcb7f9d1>
     77c:	2ec12c23          	sw	a2,760(sp)
     780:	05610637          	lui	a2,0x5610
     784:	bde60613          	addi	a2,a2,-1058 # 560fbde <_sp+0x552f40e>
     788:	2ec12e23          	sw	a2,764(sp)
     78c:	ff380637          	lui	a2,0xff380
     790:	b0360613          	addi	a2,a2,-1277 # ff37fb03 <_sp+0xff29f333>
     794:	30c12223          	sw	a2,772(sp)
     798:	fde00637          	lui	a2,0xfde00
     79c:	c5d60613          	addi	a2,a2,-931 # fddffc5d <_sp+0xfdd1f48d>
     7a0:	30c12423          	sw	a2,776(sp)
     7a4:	fd760637          	lui	a2,0xfd760
     7a8:	fd760613          	addi	a2,a2,-41 # fd75ffd7 <_sp+0xfd67f807>
     7ac:	30c12623          	sw	a2,780(sp)
     7b0:	ff660637          	lui	a2,0xff660
     7b4:	c0660613          	addi	a2,a2,-1018 # ff65fc06 <_sp+0xff57f436>
     7b8:	30c12823          	sw	a2,784(sp)
     7bc:	fc410637          	lui	a2,0xfc410
     7c0:	da960613          	addi	a2,a2,-599 # fc40fda9 <_sp+0xfc32f5d9>
     7c4:	30c12a23          	sw	a2,788(sp)
     7c8:	fb990637          	lui	a2,0xfb990
     7cc:	cb460613          	addi	a2,a2,-844 # fb98fcb4 <_sp+0xfb8af4e4>
     7d0:	30c12c23          	sw	a2,792(sp)
     7d4:	f9d60637          	lui	a2,0xf9d60
     7d8:	b4460613          	addi	a2,a2,-1212 # f9d5fb44 <_sp+0xf9c7f374>
     7dc:	30c12e23          	sw	a2,796(sp)
     7e0:	015e0637          	lui	a2,0x15e0
     7e4:	e3a60613          	addi	a2,a2,-454 # 15dfe3a <_sp+0x14ff66a>
     7e8:	32c12023          	sw	a2,800(sp)
     7ec:	022b0637          	lui	a2,0x22b0
     7f0:	60160613          	addi	a2,a2,1537 # 22b0601 <_sp+0x21cfe31>
     7f4:	32c12223          	sw	a2,804(sp)
     7f8:	01f40637          	lui	a2,0x1f40
     7fc:	66c60613          	addi	a2,a2,1644 # 1f4066c <_sp+0x1e5fe9c>
     800:	32c12423          	sw	a2,808(sp)
     804:	04aa0637          	lui	a2,0x4aa0
     808:	eb860613          	addi	a2,a2,-328 # 4a9feb8 <_sp+0x49bf6e8>
     80c:	32c12623          	sw	a2,812(sp)
     810:	012d0637          	lui	a2,0x12d0
     814:	b1a60613          	addi	a2,a2,-1254 # 12cfb1a <_sp+0x11ef34a>
     818:	32c12823          	sw	a2,816(sp)
     81c:	ff9a0637          	lui	a2,0xff9a0
     820:	ee660613          	addi	a2,a2,-282 # ff99fee6 <_sp+0xff8bf716>
     824:	32c12a23          	sw	a2,820(sp)
     828:	05b80637          	lui	a2,0x5b80
     82c:	dd160613          	addi	a2,a2,-559 # 5b7fdd1 <_sp+0x5a9f601>
     830:	32c12c23          	sw	a2,824(sp)
     834:	05e20637          	lui	a2,0x5e20
     838:	04d60613          	addi	a2,a2,77 # 5e2004d <_sp+0x5d3f87d>
     83c:	32c12e23          	sw	a2,828(sp)
     840:	04da0637          	lui	a2,0x4da0
     844:	4d660613          	addi	a2,a2,1238 # 4da04d6 <_sp+0x4cbfd06>
     848:	34c12023          	sw	a2,832(sp)
     84c:	04070637          	lui	a2,0x4070
     850:	2dd60613          	addi	a2,a2,733 # 40702dd <_sp+0x3f8fb0d>
     854:	34c12423          	sw	a2,840(sp)
     858:	fbae0637          	lui	a2,0xfbae0
     85c:	fb9206b7          	lui	a3,0xfb920
     860:	38160613          	addi	a2,a2,897 # fbae0381 <_sp+0xfb9ffbb1>
     864:	5a368593          	addi	a1,a3,1443 # fb9205a3 <_sp+0xfb83fdd3>
     868:	34c12623          	sw	a2,844(sp)
     86c:	4eb68693          	addi	a3,a3,1259
     870:	00dc07b7          	lui	a5,0xdc0
     874:	04500637          	lui	a2,0x4500
     878:	a4478793          	addi	a5,a5,-1468 # dbfa44 <_sp+0xcdf274>
     87c:	f4e60613          	addi	a2,a2,-178 # 44fff4e <_sp+0x441f77e>
     880:	34d12e23          	sw	a3,860(sp)
     884:	02ff06b7          	lui	a3,0x2ff0
     888:	2ef12623          	sw	a5,748(sp)
     88c:	34c12823          	sw	a2,848(sp)
     890:	24b68693          	addi	a3,a3,587 # 2ff024b <_sp+0x2f0fa7b>
     894:	05b307b7          	lui	a5,0x5b30
     898:	fc480637          	lui	a2,0xfc480
     89c:	0ff78793          	addi	a5,a5,255 # 5b300ff <_sp+0x5a4f92f>
     8a0:	9de60613          	addi	a2,a2,-1570 # fc47f9de <_sp+0xfc39f20e>
     8a4:	36d12023          	sw	a3,864(sp)
     8a8:	027806b7          	lui	a3,0x2780
     8ac:	2ef12823          	sw	a5,752(sp)
     8b0:	34c12a23          	sw	a2,852(sp)
     8b4:	cf500793          	li	a5,-779
     8b8:	e5768693          	addi	a3,a3,-425 # 277fe57 <_sp+0x269f687>
     8bc:	04090637          	lui	a2,0x4090
     8c0:	30f11023          	sh	a5,768(sp)
     8c4:	c9060613          	addi	a2,a2,-880 # 408fc90 <_sp+0x3faf4c0>
     8c8:	cc600793          	li	a5,-826
     8cc:	36d12223          	sw	a3,868(sp)
     8d0:	00a306b7          	lui	a3,0xa30
     8d4:	30f11123          	sh	a5,770(sp)
     8d8:	34c12c23          	sw	a2,856(sp)
     8dc:	f7c68693          	addi	a3,a3,-132 # a2ff7c <_sp+0x94f7ac>
     8e0:	34b12223          	sw	a1,836(sp)
     8e4:	36d12423          	sw	a3,872(sp)
     8e8:	002f06b7          	lui	a3,0x2f0
     8ec:	edf68693          	addi	a3,a3,-289 # 2efedf <_sp+0x20f70f>
     8f0:	36d12623          	sw	a3,876(sp)
     8f4:	fbed06b7          	lui	a3,0xfbed0
     8f8:	5a068693          	addi	a3,a3,1440 # fbed05a0 <_sp+0xfbdefdd0>
     8fc:	36d12823          	sw	a3,880(sp)
     900:	02fa06b7          	lui	a3,0x2fa0
     904:	b8b68693          	addi	a3,a3,-1141 # 2f9fb8b <_sp+0x2ebf3bb>
     908:	36d12a23          	sw	a3,884(sp)
     90c:	fb1406b7          	lui	a3,0xfb140
     910:	5b568693          	addi	a3,a3,1461 # fb1405b5 <_sp+0xfb05fde5>
     914:	38d12823          	sw	a3,912(sp)
     918:	013706b7          	lui	a3,0x1370
     91c:	db368693          	addi	a3,a3,-589 # 136fdb3 <_sp+0x128f5e3>
     920:	38d12a23          	sw	a3,916(sp)
     924:	fb7606b7          	lui	a3,0xfb760
     928:	31168693          	addi	a3,a3,785 # fb760311 <_sp+0xfb67fb41>
     92c:	38d12c23          	sw	a3,920(sp)
     930:	001406b7          	lui	a3,0x140
     934:	3d268693          	addi	a3,a3,978 # 1403d2 <_sp+0x5fc02>
     938:	38d12e23          	sw	a3,924(sp)
     93c:	04d206b7          	lui	a3,0x4d20
     940:	ad968693          	addi	a3,a3,-1319 # 4d1fad9 <_sp+0x4c3f309>
     944:	3ad12023          	sw	a3,928(sp)
     948:	03ce06b7          	lui	a3,0x3ce0
     94c:	36b68693          	addi	a3,a3,875 # 3ce036b <_sp+0x3bffb9b>
     950:	3ad12223          	sw	a3,932(sp)
     954:	014c06b7          	lui	a3,0x14c0
     958:	d6b68693          	addi	a3,a3,-661 # 14bfd6b <_sp+0x13df59b>
     95c:	3ad12423          	sw	a3,936(sp)
     960:	011606b7          	lui	a3,0x1160
     964:	b4668693          	addi	a3,a3,-1210 # 115fb46 <_sp+0x107f376>
     968:	3ad12823          	sw	a3,944(sp)
     96c:	ffe406b7          	lui	a3,0xffe40
     970:	ecf68693          	addi	a3,a3,-305 # ffe3fecf <_sp+0xffd5f6ff>
     974:	3ad12a23          	sw	a3,948(sp)
     978:	fdfe06b7          	lui	a3,0xfdfe0
     97c:	e5a68693          	addi	a3,a3,-422 # fdfdfe5a <_sp+0xfdeff68a>
     980:	3ad12e23          	sw	a3,956(sp)
     984:	00c806b7          	lui	a3,0xc80
     988:	d3668693          	addi	a3,a3,-714 # c7fd36 <_sp+0xb9f566>
     98c:	3cd12023          	sw	a3,960(sp)
     990:	fda606b7          	lui	a3,0xfda60
     994:	dd068693          	addi	a3,a3,-560 # fda5fdd0 <_sp+0xfd97f600>
     998:	3cd12223          	sw	a3,964(sp)
     99c:	01db06b7          	lui	a3,0x1db0
     9a0:	61868693          	addi	a3,a3,1560 # 1db0618 <_sp+0x1ccfe48>
     9a4:	3cd12423          	sw	a3,968(sp)
     9a8:	f9f306b7          	lui	a3,0xf9f30
     9ac:	3af38793          	addi	a5,t2,943
     9b0:	4af68693          	addi	a3,a3,1199 # f9f304af <_sp+0xf9e4fcdf>
     9b4:	36f12c23          	sw	a5,888(sp)
     9b8:	3cd12623          	sw	a3,972(sp)
     9bc:	023c07b7          	lui	a5,0x23c0
     9c0:	02de06b7          	lui	a3,0x2de0
     9c4:	ea078793          	addi	a5,a5,-352 # 23bfea0 <_sp+0x22df6d0>
     9c8:	f2768693          	addi	a3,a3,-217 # 2ddff27 <_sp+0x2cff757>
     9cc:	36f12e23          	sw	a5,892(sp)
     9d0:	3cd12823          	sw	a3,976(sp)
     9d4:	31200793          	li	a5,786
     9d8:	01df06b7          	lui	a3,0x1df0
     9dc:	38f11023          	sh	a5,896(sp)
     9e0:	9ba68693          	addi	a3,a3,-1606 # 1def9ba <_sp+0x1d0f1ea>
     9e4:	faa00793          	li	a5,-86
     9e8:	38f11123          	sh	a5,898(sp)
     9ec:	3cd12a23          	sw	a3,980(sp)
     9f0:	034d07b7          	lui	a5,0x34d0
     9f4:	fca206b7          	lui	a3,0xfca20
     9f8:	67678793          	addi	a5,a5,1654 # 34d0676 <_sp+0x33efea6>
     9fc:	d2468693          	addi	a3,a3,-732 # fca1fd24 <_sp+0xfc93f554>
     a00:	38f12223          	sw	a5,900(sp)
     a04:	3cd12c23          	sw	a3,984(sp)
     a08:	02e507b7          	lui	a5,0x2e50
     a0c:	fbb206b7          	lui	a3,0xfbb20
     a10:	fcf50737          	lui	a4,0xfcf50
     a14:	c2d78793          	addi	a5,a5,-979 # 2e4fc2d <_sp+0x2d6f45d>
     a18:	9d568693          	addi	a3,a3,-1579 # fbb1f9d5 <_sp+0xfba3f205>
     a1c:	38f12423          	sw	a5,904(sp)
     a20:	31470613          	addi	a2,a4,788 # fcf50314 <_sp+0xfce6fb44>
     a24:	3cd12e23          	sw	a3,988(sp)
     a28:	a1b70713          	addi	a4,a4,-1509
     a2c:	fce007b7          	lui	a5,0xfce00
     a30:	ffa306b7          	lui	a3,0xffa30
     a34:	28b78793          	addi	a5,a5,651 # fce0028b <_sp+0xfcd1fabb>
     a38:	23e68693          	addi	a3,a3,574 # ffa3023e <_sp+0xff94fa6e>
     a3c:	3ee12223          	sw	a4,996(sp)
     a40:	cd530313          	addi	t1,t1,-811
     a44:	f9a50737          	lui	a4,0xf9a50
     a48:	38f12623          	sw	a5,908(sp)
     a4c:	3ed12023          	sw	a3,992(sp)
     a50:	e4370713          	addi	a4,a4,-445 # f9a4fe43 <_sp+0xf996f673>
     a54:	3a612623          	sw	t1,940(sp)
     a58:	3ac12c23          	sw	a2,952(sp)
     a5c:	3ee12423          	sw	a4,1000(sp)
     a60:	fcba0737          	lui	a4,0xfcba0
     a64:	12970713          	addi	a4,a4,297 # fcba0129 <_sp+0xfcabf959>
     a68:	3ee12623          	sw	a4,1004(sp)
     a6c:	fc150737          	lui	a4,0xfc150
     a70:	ecb70713          	addi	a4,a4,-309 # fc14fecb <_sp+0xfc06f6fb>
     a74:	3ee12823          	sw	a4,1008(sp)
     a78:	ffb30737          	lui	a4,0xffb30
     a7c:	c5270713          	addi	a4,a4,-942 # ffb2fc52 <_sp+0xffa4f482>
     a80:	3ee12a23          	sw	a4,1012(sp)
     a84:	02540737          	lui	a4,0x2540
     a88:	67770713          	addi	a4,a4,1655 # 2540677 <_sp+0x245fea7>
     a8c:	3ee12c23          	sw	a4,1016(sp)
     a90:	fa7b0737          	lui	a4,0xfa7b0
     a94:	14970713          	addi	a4,a4,329 # fa7b0149 <_sp+0xfa6cf979>
     a98:	300007b7          	lui	a5,0x30000
     a9c:	3ee12e23          	sw	a4,1020(sp)
     aa0:	0007a423          	sw	zero,8(a5) # 30000008 <_sp+0x2ff1f838>
     aa4:	300006b7          	lui	a3,0x30000
     aa8:	0007a623          	sw	zero,12(a5)
     aac:	11068713          	addi	a4,a3,272 # 30000110 <_sp+0x2ff1f940>
     ab0:	07c1                	addi	a5,a5,16
     ab2:	0007a023          	sw	zero,0(a5)
     ab6:	0791                	addi	a5,a5,4
     ab8:	fee79de3          	bne	a5,a4,ab2 <main+0x89c>
     abc:	2006a023          	sw	zero,512(a3)
     ac0:	2006a223          	sw	zero,516(a3)
     ac4:	2006a423          	sw	zero,520(a3)
     ac8:	2086a783          	lw	a5,520(a3)
     acc:	e799                	bnez	a5,ada <main+0x8c4>
     ace:	2006a823          	sw	zero,528(a3)
     ad2:	2106a783          	lw	a5,528(a3)
     ad6:	1c078663          	beqz	a5,ca2 <main+0xa8c>
     ada:	4785                	li	a5,1
     adc:	3207b073          	csrc	mcountinhibit,a5
     ae0:	4781                	li	a5,0
     ae2:	b0079073          	csrw	mcycle,a5
     ae6:	858a                	mv	a1,sp
     ae8:	40010513          	addi	a0,sp,1024
     aec:	2b31                	jal	1008 <ntt_driver>
     aee:	b00025f3          	csrr	a1,mcycle
     af2:	000804b7          	lui	s1,0x80
     af6:	0d448513          	addi	a0,s1,212 # 800d4 <no_exception_handler_msg+0x3f>
     afa:	20210913          	addi	s2,sp,514
     afe:	5ad010ef          	jal	ra,28aa <iprintf>
     b02:	898a                	mv	s3,sp
     b04:	8aca                	mv	s5,s2
     b06:	48000b13          	li	s6,1152
     b0a:	4a01                	li	s4,0
     b0c:	00080c37          	lui	s8,0x80
     b10:	00080cb7          	lui	s9,0x80
     b14:	0ff00b93          	li	s7,255
     b18:	a021                	j	b20 <main+0x90a>
     b1a:	000a9b03          	lh	s6,0(s5)
     b1e:	0a89                	addi	s5,s5,2
     b20:	00099783          	lh	a5,0(s3)
     b24:	0e4c0513          	addi	a0,s8,228 # 800e4 <no_exception_handler_msg+0x4f>
     b28:	01678c63          	beq	a5,s6,b40 <main+0x92a>
     b2c:	57f010ef          	jal	ra,28aa <iprintf>
     b30:	00099683          	lh	a3,0(s3)
     b34:	865a                	mv	a2,s6
     b36:	85d2                	mv	a1,s4
     b38:	114c8513          	addi	a0,s9,276 # 80114 <no_exception_handler_msg+0x7f>
     b3c:	56f010ef          	jal	ra,28aa <iprintf>
     b40:	0a05                	addi	s4,s4,1
     b42:	0989                	addi	s3,s3,2
     b44:	fd7a1be3          	bne	s4,s7,b1a <main+0x904>
     b48:	00080537          	lui	a0,0x80
     b4c:	14050513          	addi	a0,a0,320 # 80140 <no_exception_handler_msg+0xab>
     b50:	7df000ef          	jal	ra,1b2e <puts>
     b54:	4785                	li	a5,1
     b56:	3207b073          	csrc	mcountinhibit,a5
     b5a:	4781                	li	a5,0
     b5c:	b0079073          	csrw	mcycle,a5
     b60:	787d                	lui	a6,0xfffff
     b62:	000800b7          	lui	ra,0x80
     b66:	30180893          	addi	a7,a6,769 # fffff301 <_sp+0xfff1eb31>
     b6a:	439d                	li	t2,7
     b6c:	d0a00513          	li	a0,-758
     b70:	4f85                	li	t6,1
     b72:	08000f13          	li	t5,128
     b76:	2b408093          	addi	ra,ra,692 # 802b4 <zetas>
     b7a:	2ff80813          	addi	a6,a6,767
     b7e:	0ff00293          	li	t0,255
     b82:	001f8e13          	addi	t3,t6,1
     b86:	4701                	li	a4,0
     b88:	001e1e93          	slli	t4,t3,0x1
     b8c:	00ef0333          	add	t1,t5,a4
     b90:	9e86                	add	t4,t4,ra
     b92:	8ff2                	mv	t6,t3
     b94:	06677263          	bgeu	a4,t1,bf8 <main+0x9e2>
     b98:	40010793          	addi	a5,sp,1024
     b9c:	00131613          	slli	a2,t1,0x1
     ba0:	963e                	add	a2,a2,a5
     ba2:	0706                	slli	a4,a4,0x1
     ba4:	973e                	add	a4,a4,a5
     ba6:	89b2                	mv	s3,a2
     ba8:	00061683          	lh	a3,0(a2)
     bac:	00075583          	lhu	a1,0(a4)
     bb0:	0609                	addi	a2,a2,2
     bb2:	02a686b3          	mul	a3,a3,a0
     bb6:	0709                	addi	a4,a4,2
     bb8:	031687b3          	mul	a5,a3,a7
     bbc:	07c2                	slli	a5,a5,0x10
     bbe:	87c1                	srai	a5,a5,0x10
     bc0:	030787b3          	mul	a5,a5,a6
     bc4:	97b6                	add	a5,a5,a3
     bc6:	83c1                	srli	a5,a5,0x10
     bc8:	40f586b3          	sub	a3,a1,a5
     bcc:	fed61f23          	sh	a3,-2(a2)
     bd0:	ffe75683          	lhu	a3,-2(a4)
     bd4:	97b6                	add	a5,a5,a3
     bd6:	fef71f23          	sh	a5,-2(a4)
     bda:	fce997e3          	bne	s3,a4,ba8 <main+0x992>
     bde:	01e30733          	add	a4,t1,t5
     be2:	00e2ed63          	bltu	t0,a4,bfc <main+0x9e6>
     be6:	0e05                	addi	t3,t3,1
     be8:	00ef0333          	add	t1,t5,a4
     bec:	000e9503          	lh	a0,0(t4)
     bf0:	8ff2                	mv	t6,t3
     bf2:	0e89                	addi	t4,t4,2
     bf4:	fa6762e3          	bltu	a4,t1,b98 <main+0x982>
     bf8:	871a                	mv	a4,t1
     bfa:	b7f5                	j	be6 <main+0x9d0>
     bfc:	13fd                	addi	t2,t2,-1
     bfe:	001f5f13          	srli	t5,t5,0x1
     c02:	00038863          	beqz	t2,c12 <main+0x9fc>
     c06:	001e1793          	slli	a5,t3,0x1
     c0a:	9786                	add	a5,a5,ra
     c0c:	00079503          	lh	a0,0(a5)
     c10:	bf8d                	j	b82 <main+0x96c>
     c12:	b00025f3          	csrr	a1,mcycle
     c16:	0d448513          	addi	a0,s1,212
     c1a:	491010ef          	jal	ra,28aa <iprintf>
     c1e:	40010493          	addi	s1,sp,1024
     c22:	48000a13          	li	s4,1152
     c26:	4981                	li	s3,0
     c28:	4a81                	li	s5,0
     c2a:	00080bb7          	lui	s7,0x80
     c2e:	00080c37          	lui	s8,0x80
     c32:	10000b13          	li	s6,256
     c36:	a021                	j	c3e <main+0xa28>
     c38:	00091a03          	lh	s4,0(s2)
     c3c:	0909                	addi	s2,s2,2
     c3e:	00049783          	lh	a5,0(s1)
     c42:	0e4b8513          	addi	a0,s7,228 # 800e4 <no_exception_handler_msg+0x4f>
     c46:	03478063          	beq	a5,s4,c66 <main+0xa50>
     c4a:	461010ef          	jal	ra,28aa <iprintf>
     c4e:	00049683          	lh	a3,0(s1)
     c52:	0a85                	addi	s5,s5,1
     c54:	8652                	mv	a2,s4
     c56:	85ce                	mv	a1,s3
     c58:	114c0513          	addi	a0,s8,276 # 80114 <no_exception_handler_msg+0x7f>
     c5c:	0ac2                	slli	s5,s5,0x10
     c5e:	44d010ef          	jal	ra,28aa <iprintf>
     c62:	410ada93          	srai	s5,s5,0x10
     c66:	0985                	addi	s3,s3,1
     c68:	0489                	addi	s1,s1,2
     c6a:	fd6997e3          	bne	s3,s6,c38 <main+0xa22>
     c6e:	160a8863          	beqz	s5,dde <main+0xbc8>
     c72:	62c12083          	lw	ra,1580(sp)
     c76:	62812483          	lw	s1,1576(sp)
     c7a:	62412903          	lw	s2,1572(sp)
     c7e:	62012983          	lw	s3,1568(sp)
     c82:	61c12a03          	lw	s4,1564(sp)
     c86:	61812a83          	lw	s5,1560(sp)
     c8a:	61412b03          	lw	s6,1556(sp)
     c8e:	61012b83          	lw	s7,1552(sp)
     c92:	60c12c03          	lw	s8,1548(sp)
     c96:	60812c83          	lw	s9,1544(sp)
     c9a:	4501                	li	a0,0
     c9c:	63010113          	addi	sp,sp,1584
     ca0:	8082                	ret
     ca2:	00080337          	lui	t1,0x80
     ca6:	6f05                	lui	t5,0x1
     ca8:	63830313          	addi	t1,t1,1592 # 80638 <handlers>
     cac:	e8ef0f13          	addi	t5,t5,-370 # e8e <handler_irq_dummy>
     cb0:	6885                	lui	a7,0x1
     cb2:	6505                	lui	a0,0x1
     cb4:	6e05                	lui	t3,0x1
     cb6:	01e32023          	sw	t5,0(t1)
     cba:	00430713          	addi	a4,t1,4
     cbe:	4785                	li	a5,1
     cc0:	4081                	li	ra,0
     cc2:	4381                	li	t2,0
     cc4:	4281                	li	t0,0
     cc6:	4621                	li	a2,8
     cc8:	02000593          	li	a1,32
     ccc:	03000813          	li	a6,48
     cd0:	03100e93          	li	t4,49
     cd4:	03200f93          	li	t6,50
     cd8:	03300493          	li	s1,51
     cdc:	03f00913          	li	s2,63
     ce0:	eb288893          	addi	a7,a7,-334 # eb2 <handler_irq_i2c>
     ce4:	f7850513          	addi	a0,a0,-136 # f78 <handler_irq_gpio>
     ce8:	e7ce0e13          	addi	t3,t3,-388 # e7c <handler_irq_uart>
     cec:	a021                	j	cf4 <main+0xade>
     cee:	c308                	sw	a0,0(a4)
     cf0:	0785                	addi	a5,a5,1
     cf2:	0711                	addi	a4,a4,4
     cf4:	0ff7f693          	zext.b	a3,a5
     cf8:	00f67963          	bgeu	a2,a5,d0a <main+0xaf4>
     cfc:	fed5f9e3          	bgeu	a1,a3,cee <main+0xad8>
     d00:	00d86863          	bltu	a6,a3,d10 <main+0xafa>
     d04:	01172023          	sw	a7,0(a4)
     d08:	b7e5                	j	cf0 <main+0xada>
     d0a:	01c72023          	sw	t3,0(a4)
     d0e:	b7cd                	j	cf0 <main+0xada>
     d10:	0dd68363          	beq	a3,t4,dd6 <main+0xbc0>
     d14:	0df68363          	beq	a3,t6,dda <main+0xbc4>
     d18:	0c968a63          	beq	a3,s1,dec <main+0xbd6>
     d1c:	01e72023          	sw	t5,0(a4)
     d20:	fd2698e3          	bne	a3,s2,cf0 <main+0xada>
     d24:	00008763          	beqz	ra,d32 <main+0xb1c>
     d28:	6785                	lui	a5,0x1
     d2a:	f7e78793          	addi	a5,a5,-130 # f7e <handler_irq_dma>
     d2e:	0cf32623          	sw	a5,204(t1)
     d32:	00038663          	beqz	t2,d3e <main+0xb28>
     d36:	00000793          	li	a5,0
     d3a:	0cf32423          	sw	a5,200(t1)
     d3e:	00028763          	beqz	t0,d4c <main+0xb36>
     d42:	6785                	lui	a5,0x1
     d44:	f6478793          	addi	a5,a5,-156 # f64 <handler_irq_spi>
     d48:	0cf32223          	sw	a5,196(t1)
     d4c:	300007b7          	lui	a5,0x30000
     d50:	0e078713          	addi	a4,a5,224 # 300000e0 <_sp+0x2ff1f910>
     d54:	4685                	li	a3,1
     d56:	c314                	sw	a3,0(a4)
     d58:	20478793          	addi	a5,a5,516
     d5c:	4398                	lw	a4,0(a5)
     d5e:	fff006b7          	lui	a3,0xfff00
     d62:	16fd                	addi	a3,a3,-1
     d64:	8f75                	and	a4,a4,a3
     d66:	001006b7          	lui	a3,0x100
     d6a:	8f55                	or	a4,a4,a3
     d6c:	c398                	sw	a4,0(a5)
     d6e:	4621                	li	a2,8
     d70:	30062073          	csrs	mstatus,a2
     d74:	6705                	lui	a4,0x1
     d76:	80070793          	addi	a5,a4,-2048 # 800 <main+0x5ea>
     d7a:	3047a073          	csrs	mie,a5
     d7e:	000806b7          	lui	a3,0x80
     d82:	200607b7          	lui	a5,0x20060
     d86:	62c68693          	addi	a3,a3,1580 # 8062c <dma_cb>
     d8a:	c69c                	sw	a5,8(a3)
     d8c:	0006a023          	sw	zero,0(a3)
     d90:	0007a023          	sw	zero,0(a5) # 20060000 <_sp+0x1ff7f830>
     d94:	0007a223          	sw	zero,4(a5)
     d98:	0007a623          	sw	zero,12(a5)
     d9c:	0007aa23          	sw	zero,20(a5)
     da0:	0007ac23          	sw	zero,24(a5)
     da4:	0007ae23          	sw	zero,28(a5)
     da8:	0207a023          	sw	zero,32(a5)
     dac:	0207a223          	sw	zero,36(a5)
     db0:	0207a623          	sw	zero,44(a5)
     db4:	000817b7          	lui	a5,0x81
     db8:	80078793          	addi	a5,a5,-2048 # 80800 <__BSS_END__+0x3c>
     dbc:	3047b073          	csrc	mie,a5
     dc0:	30062073          	csrs	mstatus,a2
     dc4:	3047a073          	csrs	mie,a5
     dc8:	200807b7          	lui	a5,0x20080
     dcc:	0721                	addi	a4,a4,8
     dce:	c398                	sw	a4,0(a5)
     dd0:	0007a023          	sw	zero,0(a5) # 20080000 <_sp+0x1ff9f830>
     dd4:	b319                	j	ada <main+0x8c4>
     dd6:	4285                	li	t0,1
     dd8:	bf21                	j	cf0 <main+0xada>
     dda:	4385                	li	t2,1
     ddc:	bf11                	j	cf0 <main+0xada>
     dde:	00080537          	lui	a0,0x80
     de2:	14850513          	addi	a0,a0,328 # 80148 <no_exception_handler_msg+0xb3>
     de6:	549000ef          	jal	ra,1b2e <puts>
     dea:	b561                	j	c72 <main+0xa5c>
     dec:	4085                	li	ra,1
     dee:	b709                	j	cf0 <main+0xada>

00000df0 <__no_irq_handler>:
     df0:	0007f517          	auipc	a0,0x7f
     df4:	2a550513          	addi	a0,a0,677 # 80095 <no_exception_handler_msg>
     df8:	537000ef          	jal	ra,1b2e <puts>
     dfc:	ff5ff06f          	j	df0 <__no_irq_handler>

00000e00 <sw_irq_handler>:
     e00:	342022f3          	csrr	t0,mcause
     e04:	00129293          	slli	t0,t0,0x1
     e08:	0012d293          	srli	t0,t0,0x1
     e0c:	00200313          	li	t1,2
     e10:	02628c63          	beq	t0,t1,e48 <handle_illegal_insn>
     e14:	00b00313          	li	t1,11
     e18:	00628863          	beq	t0,t1,e28 <handle_ecall>
     e1c:	00300313          	li	t1,3
     e20:	00628c63          	beq	t0,t1,e38 <handle_ebreak>
     e24:	0340006f          	j	e58 <handle_unknown>

00000e28 <handle_ecall>:
     e28:	0007f517          	auipc	a0,0x7f
     e2c:	20750513          	addi	a0,a0,519 # 8002f <ecall_msg>
     e30:	4ff000ef          	jal	ra,1b2e <puts>
     e34:	0340006f          	j	e68 <end_handler>

00000e38 <handle_ebreak>:
     e38:	0007f517          	auipc	a0,0x7f
     e3c:	21850513          	addi	a0,a0,536 # 80050 <ebreak_msg>
     e40:	4ef000ef          	jal	ra,1b2e <puts>
     e44:	0240006f          	j	e68 <end_handler>

00000e48 <handle_illegal_insn>:
     e48:	0007f517          	auipc	a0,0x7f
     e4c:	1b850513          	addi	a0,a0,440 # 80000 <illegal_insn_msg>
     e50:	4df000ef          	jal	ra,1b2e <puts>
     e54:	0140006f          	j	e68 <end_handler>

00000e58 <handle_unknown>:
     e58:	0007f517          	auipc	a0,0x7f
     e5c:	21a50513          	addi	a0,a0,538 # 80072 <unknown_msg>
     e60:	4cf000ef          	jal	ra,1b2e <puts>
     e64:	0040006f          	j	e68 <end_handler>

00000e68 <end_handler>:
     e68:	34102573          	csrr	a0,mepc
     e6c:	00450513          	addi	a0,a0,4
     e70:	34151073          	csrw	mepc,a0
     e74:	30200073          	mret

00000e78 <verification_irq_handler>:
     e78:	30200073          	mret

00000e7c <handler_irq_uart>:
     e7c:	1101                	addi	sp,sp,-32
     e7e:	ce22                	sw	s0,28(sp)
     e80:	1000                	addi	s0,sp,32
     e82:	fea42623          	sw	a0,-20(s0)
     e86:	0001                	nop
     e88:	4472                	lw	s0,28(sp)
     e8a:	6105                	addi	sp,sp,32
     e8c:	8082                	ret

00000e8e <handler_irq_dummy>:
     e8e:	1101                	addi	sp,sp,-32
     e90:	ce22                	sw	s0,28(sp)
     e92:	1000                	addi	s0,sp,32
     e94:	fea42623          	sw	a0,-20(s0)
     e98:	0001                	nop
     e9a:	4472                	lw	s0,28(sp)
     e9c:	6105                	addi	sp,sp,32
     e9e:	8082                	ret

00000ea0 <gpio_handler_irq_dummy>:
     ea0:	1101                	addi	sp,sp,-32
     ea2:	ce22                	sw	s0,28(sp)
     ea4:	1000                	addi	s0,sp,32
     ea6:	fea42623          	sw	a0,-20(s0)
     eaa:	0001                	nop
     eac:	4472                	lw	s0,28(sp)
     eae:	6105                	addi	sp,sp,32
     eb0:	8082                	ret

00000eb2 <handler_irq_i2c>:
     eb2:	1101                	addi	sp,sp,-32
     eb4:	ce22                	sw	s0,28(sp)
     eb6:	1000                	addi	s0,sp,32
     eb8:	fea42623          	sw	a0,-20(s0)
     ebc:	fec42503          	lw	a0,-20(s0)
     ec0:	4472                	lw	s0,28(sp)
     ec2:	6105                	addi	sp,sp,32
     ec4:	bf65                	j	e7c <handler_irq_uart>

00000ec6 <fic_irq_timer_1>:
     ec6:	1141                	addi	sp,sp,-16
     ec8:	c622                	sw	s0,12(sp)
     eca:	0800                	addi	s0,sp,16
     ecc:	0001                	nop
     ece:	4432                	lw	s0,12(sp)
     ed0:	0141                	addi	sp,sp,16
     ed2:	8082                	ret

00000ed4 <fic_irq_timer_2>:
     ed4:	1141                	addi	sp,sp,-16
     ed6:	c622                	sw	s0,12(sp)
     ed8:	0800                	addi	s0,sp,16
     eda:	4432                	lw	s0,12(sp)
     edc:	0141                	addi	sp,sp,16
     ede:	b7e5                	j	ec6 <fic_irq_timer_1>

00000ee0 <fic_irq_timer_3>:
     ee0:	1141                	addi	sp,sp,-16
     ee2:	c622                	sw	s0,12(sp)
     ee4:	0800                	addi	s0,sp,16
     ee6:	4432                	lw	s0,12(sp)
     ee8:	0141                	addi	sp,sp,16
     eea:	bff1                	j	ec6 <fic_irq_timer_1>

00000eec <fic_irq_spi>:
     eec:	1141                	addi	sp,sp,-16
     eee:	c622                	sw	s0,12(sp)
     ef0:	0800                	addi	s0,sp,16
     ef2:	4432                	lw	s0,12(sp)
     ef4:	0141                	addi	sp,sp,16
     ef6:	bfc1                	j	ec6 <fic_irq_timer_1>

00000ef8 <fic_irq_spi_flash>:
     ef8:	1141                	addi	sp,sp,-16
     efa:	c622                	sw	s0,12(sp)
     efc:	0800                	addi	s0,sp,16
     efe:	4432                	lw	s0,12(sp)
     f00:	0141                	addi	sp,sp,16
     f02:	b7d1                	j	ec6 <fic_irq_timer_1>

00000f04 <fic_irq_gpio_0>:
     f04:	1141                	addi	sp,sp,-16
     f06:	c622                	sw	s0,12(sp)
     f08:	0800                	addi	s0,sp,16
     f0a:	4432                	lw	s0,12(sp)
     f0c:	0141                	addi	sp,sp,16
     f0e:	bf65                	j	ec6 <fic_irq_timer_1>

00000f10 <fic_irq_gpio_1>:
     f10:	1141                	addi	sp,sp,-16
     f12:	c622                	sw	s0,12(sp)
     f14:	0800                	addi	s0,sp,16
     f16:	4432                	lw	s0,12(sp)
     f18:	0141                	addi	sp,sp,16
     f1a:	b775                	j	ec6 <fic_irq_timer_1>

00000f1c <fic_irq_gpio_2>:
     f1c:	1141                	addi	sp,sp,-16
     f1e:	c622                	sw	s0,12(sp)
     f20:	0800                	addi	s0,sp,16
     f22:	4432                	lw	s0,12(sp)
     f24:	0141                	addi	sp,sp,16
     f26:	b745                	j	ec6 <fic_irq_timer_1>

00000f28 <fic_irq_gpio_3>:
     f28:	1141                	addi	sp,sp,-16
     f2a:	c622                	sw	s0,12(sp)
     f2c:	0800                	addi	s0,sp,16
     f2e:	4432                	lw	s0,12(sp)
     f30:	0141                	addi	sp,sp,16
     f32:	bf51                	j	ec6 <fic_irq_timer_1>

00000f34 <fic_irq_gpio_4>:
     f34:	1141                	addi	sp,sp,-16
     f36:	c622                	sw	s0,12(sp)
     f38:	0800                	addi	s0,sp,16
     f3a:	4432                	lw	s0,12(sp)
     f3c:	0141                	addi	sp,sp,16
     f3e:	b761                	j	ec6 <fic_irq_timer_1>

00000f40 <fic_irq_gpio_5>:
     f40:	1141                	addi	sp,sp,-16
     f42:	c622                	sw	s0,12(sp)
     f44:	0800                	addi	s0,sp,16
     f46:	4432                	lw	s0,12(sp)
     f48:	0141                	addi	sp,sp,16
     f4a:	bfb5                	j	ec6 <fic_irq_timer_1>

00000f4c <fic_irq_gpio_6>:
     f4c:	1141                	addi	sp,sp,-16
     f4e:	c622                	sw	s0,12(sp)
     f50:	0800                	addi	s0,sp,16
     f52:	4432                	lw	s0,12(sp)
     f54:	0141                	addi	sp,sp,16
     f56:	bf85                	j	ec6 <fic_irq_timer_1>

00000f58 <fic_irq_gpio_7>:
     f58:	1141                	addi	sp,sp,-16
     f5a:	c622                	sw	s0,12(sp)
     f5c:	0800                	addi	s0,sp,16
     f5e:	4432                	lw	s0,12(sp)
     f60:	0141                	addi	sp,sp,16
     f62:	b795                	j	ec6 <fic_irq_timer_1>

00000f64 <handler_irq_spi>:
     f64:	1101                	addi	sp,sp,-32
     f66:	ce22                	sw	s0,28(sp)
     f68:	1000                	addi	s0,sp,32
     f6a:	fea42623          	sw	a0,-20(s0)
     f6e:	fec42503          	lw	a0,-20(s0)
     f72:	4472                	lw	s0,28(sp)
     f74:	6105                	addi	sp,sp,32
     f76:	b719                	j	e7c <handler_irq_uart>

00000f78 <handler_irq_gpio>:
     f78:	4781                	li	a5,0
     f7a:	8782                	jr	a5

00000f7c <dma_intr_handler_trans_done>:
     f7c:	8082                	ret

00000f7e <handler_irq_dma>:
     f7e:	8082                	ret

00000f80 <dma_load_transaction.constprop.0.isra.0>:
     f80:	000807b7          	lui	a5,0x80
     f84:	62c78793          	addi	a5,a5,1580 # 8062c <dma_cb>
     f88:	4794                	lw	a3,8(a5)
     f8a:	00052803          	lw	a6,0(a0)
     f8e:	00452e83          	lw	t4,4(a0)
     f92:	4ad8                	lw	a4,20(a3)
     f94:	56d0                	lw	a2,44(a3)
     f96:	00482e03          	lw	t3,4(a6)
     f9a:	f0077713          	andi	a4,a4,-256
     f9e:	004ea303          	lw	t1,4(t4)
     fa2:	cad8                	sw	a4,20(a3)
     fa4:	01482883          	lw	a7,20(a6)
     fa8:	00166613          	ori	a2,a2,1
     fac:	c388                	sw	a0,0(a5)
     fae:	d6d0                	sw	a2,44(a3)
     fb0:	01c6a023          	sw	t3,0(a3)
     fb4:	0066a223          	sw	t1,4(a3)
     fb8:	4781                	li	a5,0
     fba:	00089b63          	bnez	a7,fd0 <dma_load_transaction.constprop.0.isra.0+0x50>
     fbe:	01452883          	lw	a7,20(a0)
     fc2:	00885603          	lhu	a2,8(a6)
     fc6:	4791                	li	a5,4
     fc8:	4117d7b3          	sra	a5,a5,a7
     fcc:	02c787b3          	mul	a5,a5,a2
     fd0:	0ff7f793          	zext.b	a5,a5
     fd4:	8fd9                	or	a5,a5,a4
     fd6:	7741                	lui	a4,0xffff0
     fd8:	0ff70713          	addi	a4,a4,255 # ffff00ff <_sp+0xfff0f92f>
     fdc:	8ff9                	and	a5,a5,a4
     fde:	cadc                	sw	a5,20(a3)
     fe0:	014ea603          	lw	a2,20(t4)
     fe4:	4701                	li	a4,0
     fe6:	ea09                	bnez	a2,ff8 <dma_load_transaction.constprop.0.isra.0+0x78>
     fe8:	4948                	lw	a0,20(a0)
     fea:	008ed603          	lhu	a2,8(t4)
     fee:	4711                	li	a4,4
     ff0:	40a75733          	sra	a4,a4,a0
     ff4:	02c70733          	mul	a4,a4,a2
     ff8:	6641                	lui	a2,0x10
     ffa:	0722                	slli	a4,a4,0x8
     ffc:	167d                	addi	a2,a2,-1
     ffe:	8f71                	and	a4,a4,a2
    1000:	8f5d                	or	a4,a4,a5
    1002:	cad8                	sw	a4,20(a3)
    1004:	c6cc                	sw	a1,12(a3)
    1006:	8082                	ret

00001008 <ntt_driver>:
    1008:	7131                	addi	sp,sp,-192
    100a:	db4a                	sw	s2,180(sp)
    100c:	00080937          	lui	s2,0x80
    1010:	6785                	lui	a5,0x1
    1012:	61890913          	addi	s2,s2,1560 # 80618 <plic_intr_flag>
    1016:	dd26                	sw	s1,184(sp)
    1018:	d94e                	sw	s3,176(sp)
    101a:	80278693          	addi	a3,a5,-2046 # 802 <main+0x5ec>
    101e:	df06                	sw	ra,188(sp)
    1020:	00090023          	sb	zero,0(s2)
    1024:	20080737          	lui	a4,0x20080
    1028:	c314                	sw	a3,0(a4)
    102a:	80078793          	addi	a5,a5,-2048
    102e:	c31c                	sw	a5,0(a4)
    1030:	872a                	mv	a4,a0
    1032:	c6ba                	sw	a4,76(sp)
    1034:	f0000737          	lui	a4,0xf0000
    1038:	da3a                	sw	a4,52(sp)
    103a:	00b8                	addi	a4,sp,72
    103c:	4785                	li	a5,1
    103e:	c882                	sw	zero,80(sp)
    1040:	c53a                	sw	a4,136(sp)
    1042:	89ae                	mv	s3,a1
    1044:	1818                	addi	a4,sp,48
    1046:	40000593          	li	a1,1024
    104a:	0128                	addi	a0,sp,136
    104c:	000804b7          	lui	s1,0x80
    1050:	04f11823          	sh	a5,80(sp)
    1054:	c73a                	sw	a4,140(sp)
    1056:	d53e                	sw	a5,168(sp)
    1058:	c482                	sw	zero,72(sp)
    105a:	ca82                	sw	zero,84(sp)
    105c:	cc82                	sw	zero,88(sp)
    105e:	ce82                	sw	zero,92(sp)
    1060:	d802                	sw	zero,48(sp)
    1062:	dc02                	sw	zero,56(sp)
    1064:	de02                	sw	zero,60(sp)
    1066:	c082                	sw	zero,64(sp)
    1068:	c282                	sw	zero,68(sp)
    106a:	c902                	sw	zero,144(sp)
    106c:	cb02                	sw	zero,148(sp)
    106e:	cd02                	sw	zero,152(sp)
    1070:	cf02                	sw	zero,156(sp)
    1072:	d102                	sw	zero,160(sp)
    1074:	d302                	sw	zero,164(sp)
    1076:	d702                	sw	zero,172(sp)
    1078:	62c48493          	addi	s1,s1,1580 # 8062c <dma_cb>
    107c:	3711                	jal	f80 <dma_load_transaction.constprop.0.isra.0>
    107e:	449c                	lw	a5,8(s1)
    1080:	4701                	li	a4,0
    1082:	46a1                	li	a3,8
    1084:	4b9c                	lw	a5,16(a5)
    1086:	8b85                	andi	a5,a5,1
    1088:	30072073          	csrs	mstatus,a4
    108c:	c3cd                	beqz	a5,112e <ntt_driver+0x126>
    108e:	47a1                	li	a5,8
    1090:	3007a073          	csrs	mstatus,a5
    1094:	6785                	lui	a5,0x1
    1096:	20080737          	lui	a4,0x20080
    109a:	80178693          	addi	a3,a5,-2047 # 801 <main+0x5eb>
    109e:	c314                	sw	a3,0(a4)
    10a0:	80078793          	addi	a5,a5,-2048
    10a4:	c31c                	sw	a5,0(a4)
    10a6:	00094783          	lbu	a5,0(s2)
    10aa:	e791                	bnez	a5,10b6 <ntt_driver+0xae>
    10ac:	10500073          	wfi
    10b0:	00094783          	lbu	a5,0(s2)
    10b4:	dfe5                	beqz	a5,10ac <ntt_driver+0xa4>
    10b6:	6785                	lui	a5,0x1
    10b8:	82078693          	addi	a3,a5,-2016 # 820 <main+0x60a>
    10bc:	20080737          	lui	a4,0x20080
    10c0:	c314                	sw	a3,0(a4)
    10c2:	80078793          	addi	a5,a5,-2048
    10c6:	c31c                	sw	a5,0(a4)
    10c8:	f00007b7          	lui	a5,0xf0000
    10cc:	0c878793          	addi	a5,a5,200 # f00000c8 <_sp+0xeff1f8f8>
    10d0:	4705                	li	a4,1
    10d2:	c402                	sw	zero,8(sp)
    10d4:	ce3e                	sw	a5,28(sp)
    10d6:	20000593          	li	a1,512
    10da:	083c                	addi	a5,sp,24
    10dc:	1088                	addi	a0,sp,96
    10de:	00e11423          	sh	a4,8(sp)
    10e2:	d0be                	sw	a5,96(sp)
    10e4:	c13a                	sw	a4,128(sp)
    10e6:	cc02                	sw	zero,24(sp)
    10e8:	d002                	sw	zero,32(sp)
    10ea:	d202                	sw	zero,36(sp)
    10ec:	d402                	sw	zero,40(sp)
    10ee:	d602                	sw	zero,44(sp)
    10f0:	c002                	sw	zero,0(sp)
    10f2:	c602                	sw	zero,12(sp)
    10f4:	c802                	sw	zero,16(sp)
    10f6:	ca02                	sw	zero,20(sp)
    10f8:	c24e                	sw	s3,4(sp)
    10fa:	d482                	sw	zero,104(sp)
    10fc:	d682                	sw	zero,108(sp)
    10fe:	d882                	sw	zero,112(sp)
    1100:	da82                	sw	zero,116(sp)
    1102:	dc82                	sw	zero,120(sp)
    1104:	de82                	sw	zero,124(sp)
    1106:	c302                	sw	zero,132(sp)
    1108:	d28a                	sw	sp,100(sp)
    110a:	3d9d                	jal	f80 <dma_load_transaction.constprop.0.isra.0>
    110c:	449c                	lw	a5,8(s1)
    110e:	4701                	li	a4,0
    1110:	46a1                	li	a3,8
    1112:	4b9c                	lw	a5,16(a5)
    1114:	8b85                	andi	a5,a5,1
    1116:	30072073          	csrs	mstatus,a4
    111a:	c39d                	beqz	a5,1140 <ntt_driver+0x138>
    111c:	47a1                	li	a5,8
    111e:	3007a073          	csrs	mstatus,a5
    1122:	50fa                	lw	ra,188(sp)
    1124:	54ea                	lw	s1,184(sp)
    1126:	595a                	lw	s2,180(sp)
    1128:	59ca                	lw	s3,176(sp)
    112a:	6129                	addi	sp,sp,192
    112c:	8082                	ret
    112e:	10500073          	wfi
    1132:	449c                	lw	a5,8(s1)
    1134:	4b9c                	lw	a5,16(a5)
    1136:	3006a073          	csrs	mstatus,a3
    113a:	8b85                	andi	a5,a5,1
    113c:	d7b1                	beqz	a5,1088 <ntt_driver+0x80>
    113e:	bf99                	j	1094 <ntt_driver+0x8c>
    1140:	10500073          	wfi
    1144:	449c                	lw	a5,8(s1)
    1146:	4b9c                	lw	a5,16(a5)
    1148:	3006a073          	csrs	mstatus,a3
    114c:	8b85                	andi	a5,a5,1
    114e:	d7e1                	beqz	a5,1116 <ntt_driver+0x10e>
    1150:	bfc9                	j	1122 <ntt_driver+0x11a>

00001152 <print_exc_msg>:
    1152:	85aa                	mv	a1,a0
    1154:	00080537          	lui	a0,0x80
    1158:	1141                	addi	sp,sp,-16
    115a:	0b850513          	addi	a0,a0,184 # 800b8 <no_exception_handler_msg+0x23>
    115e:	c606                	sw	ra,12(sp)
    1160:	74a010ef          	jal	ra,28aa <iprintf>
    1164:	343025f3          	csrr	a1,mtval
    1168:	00080537          	lui	a0,0x80
    116c:	0bc50513          	addi	a0,a0,188 # 800bc <no_exception_handler_msg+0x27>
    1170:	73a010ef          	jal	ra,28aa <iprintf>
    1174:	a001                	j	1174 <print_exc_msg+0x22>

00001176 <init>:
    1176:	4501                	li	a0,0
    1178:	8082                	ret

0000117a <_close>:
    117a:	557d                	li	a0,-1
    117c:	8082                	ret

0000117e <_exit>:
    117e:	200007b7          	lui	a5,0x20000
    1182:	c3c8                	sw	a0,4(a5)
    1184:	4705                	li	a4,1
    1186:	00e78023          	sb	a4,0(a5) # 20000000 <_sp+0x1ff1f830>
    118a:	10500073          	wfi

0000118e <_fstat>:
    118e:	6789                	lui	a5,0x2
    1190:	c1dc                	sw	a5,4(a1)
    1192:	4501                	li	a0,0
    1194:	8082                	ret

00001196 <_isatty>:
    1196:	157d                	addi	a0,a0,-1
    1198:	00153513          	seqz	a0,a0
    119c:	8082                	ret

0000119e <_lseek>:
    119e:	4501                	li	a0,0
    11a0:	8082                	ret

000011a2 <_read>:
    11a2:	4501                	li	a0,0
    11a4:	8082                	ret

000011a6 <_write>:
    11a6:	4785                	li	a5,1
    11a8:	08f51d63          	bne	a0,a5,1242 <_write+0x9c>
    11ac:	1141                	addi	sp,sp,-16
    11ae:	200007b7          	lui	a5,0x20000
    11b2:	c24a                	sw	s2,4(sp)
    11b4:	8932                	mv	s2,a2
    11b6:	4fd0                	lw	a2,28(a5)
    11b8:	c606                	sw	ra,12(sp)
    11ba:	c426                	sw	s1,8(sp)
    11bc:	ce11                	beqz	a2,11d8 <_write+0x32>
    11be:	84ae                	mv	s1,a1
    11c0:	4681                	li	a3,0
    11c2:	80000537          	lui	a0,0x80000
    11c6:	03e00593          	li	a1,62
    11ca:	518020ef          	jal	ra,36e2 <__udivdi3>
    11ce:	01051793          	slli	a5,a0,0x10
    11d2:	83c1                	srli	a5,a5,0x10
    11d4:	00a78a63          	beq	a5,a0,11e8 <_write+0x42>
    11d8:	000807b7          	lui	a5,0x80
    11dc:	05800713          	li	a4,88
    11e0:	60e7ae23          	sw	a4,1564(a5) # 8061c <errno>
    11e4:	557d                	li	a0,-1
    11e6:	a889                	j	1238 <_write+0x92>
    11e8:	f9e5                	bnez	a1,11d8 <_write+0x32>
    11ea:	200b0737          	lui	a4,0x200b0
    11ee:	00072623          	sw	zero,12(a4) # 200b000c <_sp+0x1ffcf83c>
    11f2:	478d                	li	a5,3
    11f4:	cf5c                	sw	a5,28(a4)
    11f6:	02072223          	sw	zero,36(a4)
    11fa:	02072623          	sw	zero,44(a4)
    11fe:	00072223          	sw	zero,4(a4)
    1202:	01051793          	slli	a5,a0,0x10
    1206:	56fd                	li	a3,-1
    1208:	c314                	sw	a3,0(a4)
    120a:	0037e793          	ori	a5,a5,3
    120e:	c75c                	sw	a5,12(a4)
    1210:	00072223          	sw	zero,4(a4)
    1214:	02090163          	beqz	s2,1236 <_write+0x90>
    1218:	012485b3          	add	a1,s1,s2
    121c:	0004c683          	lbu	a3,0(s1)
    1220:	4b1c                	lw	a5,16(a4)
    1222:	8b85                	andi	a5,a5,1
    1224:	fff5                	bnez	a5,1220 <_write+0x7a>
    1226:	cf14                	sw	a3,24(a4)
    1228:	4b1c                	lw	a5,16(a4)
    122a:	838d                	srli	a5,a5,0x3
    122c:	8b85                	andi	a5,a5,1
    122e:	dfed                	beqz	a5,1228 <_write+0x82>
    1230:	0485                	addi	s1,s1,1
    1232:	fe9595e3          	bne	a1,s1,121c <_write+0x76>
    1236:	854a                	mv	a0,s2
    1238:	40b2                	lw	ra,12(sp)
    123a:	44a2                	lw	s1,8(sp)
    123c:	4912                	lw	s2,4(sp)
    123e:	0141                	addi	sp,sp,16
    1240:	8082                	ret
    1242:	000807b7          	lui	a5,0x80
    1246:	05800713          	li	a4,88
    124a:	60e7ae23          	sw	a4,1564(a5) # 8061c <errno>
    124e:	557d                	li	a0,-1
    1250:	8082                	ret

00001252 <_sbrk>:
    1252:	00080737          	lui	a4,0x80
    1256:	00080637          	lui	a2,0x80
    125a:	000b07b7          	lui	a5,0xb0
    125e:	60c70713          	addi	a4,a4,1548 # 8060c <brk>
    1262:	7c460613          	addi	a2,a2,1988 # 807c4 <__BSS_END__>
    1266:	7c478793          	addi	a5,a5,1988 # b07c4 <__heap_end>
    126a:	86aa                	mv	a3,a0
    126c:	4308                	lw	a0,0(a4)
    126e:	00f60b63          	beq	a2,a5,1284 <_sbrk+0x32>
    1272:	00d50633          	add	a2,a0,a3
    1276:	00f67563          	bgeu	a2,a5,1280 <_sbrk+0x2e>
    127a:	9636                	add	a2,a2,a3
    127c:	c310                	sw	a2,0(a4)
    127e:	8082                	ret
    1280:	c31c                	sw	a5,0(a4)
    1282:	8082                	ret
    1284:	4501                	li	a0,0
    1286:	8082                	ret

00001288 <handler_exception>:
    1288:	7119                	addi	sp,sp,-128
    128a:	de86                	sw	ra,124(sp)
    128c:	dc96                	sw	t0,120(sp)
    128e:	da9a                	sw	t1,116(sp)
    1290:	d89e                	sw	t2,112(sp)
    1292:	d6aa                	sw	a0,108(sp)
    1294:	d4ae                	sw	a1,104(sp)
    1296:	d2b2                	sw	a2,100(sp)
    1298:	d0b6                	sw	a3,96(sp)
    129a:	ceba                	sw	a4,92(sp)
    129c:	ccbe                	sw	a5,88(sp)
    129e:	cac2                	sw	a6,84(sp)
    12a0:	c8c6                	sw	a7,80(sp)
    12a2:	c6f2                	sw	t3,76(sp)
    12a4:	c4f6                	sw	t4,72(sp)
    12a6:	c2fa                	sw	t5,68(sp)
    12a8:	c0fe                	sw	t6,64(sp)
    12aa:	342027f3          	csrr	a5,mcause
    12ae:	472d                	li	a4,11
    12b0:	8bfd                	andi	a5,a5,31
    12b2:	00f76a63          	bltu	a4,a5,12c6 <handler_exception+0x3e>
    12b6:	00080737          	lui	a4,0x80
    12ba:	078a                	slli	a5,a5,0x2
    12bc:	25470713          	addi	a4,a4,596 # 80254 <no_exception_handler_msg+0x1bf>
    12c0:	97ba                	add	a5,a5,a4
    12c2:	439c                	lw	a5,0(a5)
    12c4:	8782                	jr	a5
    12c6:	a001                	j	12c6 <handler_exception+0x3e>
    12c8:	00080537          	lui	a0,0x80
    12cc:	15050513          	addi	a0,a0,336 # 80150 <no_exception_handler_msg+0xbb>
    12d0:	05f000ef          	jal	ra,1b2e <puts>
    12d4:	a001                	j	12d4 <handler_exception+0x4c>
    12d6:	000807b7          	lui	a5,0x80
    12da:	17078793          	addi	a5,a5,368 # 80170 <no_exception_handler_msg+0xdb>
    12de:	0048                	addi	a0,sp,4
    12e0:	872a                	mv	a4,a0
    12e2:	03078893          	addi	a7,a5,48
    12e6:	0007a803          	lw	a6,0(a5)
    12ea:	43cc                	lw	a1,4(a5)
    12ec:	4790                	lw	a2,8(a5)
    12ee:	47d4                	lw	a3,12(a5)
    12f0:	01072023          	sw	a6,0(a4)
    12f4:	c34c                	sw	a1,4(a4)
    12f6:	c710                	sw	a2,8(a4)
    12f8:	c754                	sw	a3,12(a4)
    12fa:	07c1                	addi	a5,a5,16
    12fc:	0741                	addi	a4,a4,16
    12fe:	ff1794e3          	bne	a5,a7,12e6 <handler_exception+0x5e>
    1302:	4394                	lw	a3,0(a5)
    1304:	0047c783          	lbu	a5,4(a5)
    1308:	c314                	sw	a3,0(a4)
    130a:	00f70223          	sb	a5,4(a4)
    130e:	3591                	jal	1152 <print_exc_msg>
    1310:	000807b7          	lui	a5,0x80
    1314:	17078793          	addi	a5,a5,368 # 80170 <no_exception_handler_msg+0xdb>
    1318:	0048                	addi	a0,sp,4
    131a:	872a                	mv	a4,a0
    131c:	03078893          	addi	a7,a5,48
    1320:	0007a803          	lw	a6,0(a5)
    1324:	43cc                	lw	a1,4(a5)
    1326:	4790                	lw	a2,8(a5)
    1328:	47d4                	lw	a3,12(a5)
    132a:	01072023          	sw	a6,0(a4)
    132e:	c34c                	sw	a1,4(a4)
    1330:	c710                	sw	a2,8(a4)
    1332:	c754                	sw	a3,12(a4)
    1334:	07c1                	addi	a5,a5,16
    1336:	0741                	addi	a4,a4,16
    1338:	ff1794e3          	bne	a5,a7,1320 <handler_exception+0x98>
    133c:	b7d9                	j	1302 <handler_exception+0x7a>
    133e:	000807b7          	lui	a5,0x80
    1342:	1a878793          	addi	a5,a5,424 # 801a8 <no_exception_handler_msg+0x113>
    1346:	0048                	addi	a0,sp,4
    1348:	872a                	mv	a4,a0
    134a:	03c78313          	addi	t1,a5,60
    134e:	0007a883          	lw	a7,0(a5)
    1352:	0047a803          	lw	a6,4(a5)
    1356:	478c                	lw	a1,8(a5)
    1358:	47d0                	lw	a2,12(a5)
    135a:	4b94                	lw	a3,16(a5)
    135c:	01172023          	sw	a7,0(a4)
    1360:	01072223          	sw	a6,4(a4)
    1364:	c70c                	sw	a1,8(a4)
    1366:	c750                	sw	a2,12(a4)
    1368:	cb14                	sw	a3,16(a4)
    136a:	07d1                	addi	a5,a5,20
    136c:	0751                	addi	a4,a4,20
    136e:	fe6790e3          	bne	a5,t1,134e <main.c.4a980d3e+0xf>
    1372:	33c5                	jal	1152 <print_exc_msg>
    1374:	000807b7          	lui	a5,0x80
    1378:	1e478793          	addi	a5,a5,484 # 801e4 <no_exception_handler_msg+0x14f>
    137c:	0048                	addi	a0,sp,4
    137e:	872a                	mv	a4,a0
    1380:	03078893          	addi	a7,a5,48
    1384:	0007a803          	lw	a6,0(a5)
    1388:	43cc                	lw	a1,4(a5)
    138a:	4790                	lw	a2,8(a5)
    138c:	47d4                	lw	a3,12(a5)
    138e:	01072023          	sw	a6,0(a4)
    1392:	c34c                	sw	a1,4(a4)
    1394:	c710                	sw	a2,8(a4)
    1396:	c754                	sw	a3,12(a4)
    1398:	07c1                	addi	a5,a5,16
    139a:	0741                	addi	a4,a4,16
    139c:	ff1794e3          	bne	a5,a7,1384 <main.c.4a980d3e+0x45>
    13a0:	4390                	lw	a2,0(a5)
    13a2:	43d4                	lw	a3,4(a5)
    13a4:	0087c783          	lbu	a5,8(a5)
    13a8:	c310                	sw	a2,0(a4)
    13aa:	c354                	sw	a3,4(a4)
    13ac:	00f70423          	sb	a5,8(a4)
    13b0:	334d                	jal	1152 <print_exc_msg>
    13b2:	000807b7          	lui	a5,0x80
    13b6:	22078793          	addi	a5,a5,544 # 80220 <no_exception_handler_msg+0x18b>
    13ba:	0048                	addi	a0,sp,4
    13bc:	872a                	mv	a4,a0
    13be:	03078893          	addi	a7,a5,48
    13c2:	0007a803          	lw	a6,0(a5)
    13c6:	43cc                	lw	a1,4(a5)
    13c8:	4790                	lw	a2,8(a5)
    13ca:	47d4                	lw	a3,12(a5)
    13cc:	01072023          	sw	a6,0(a4)
    13d0:	c34c                	sw	a1,4(a4)
    13d2:	c710                	sw	a2,8(a4)
    13d4:	c754                	sw	a3,12(a4)
    13d6:	07c1                	addi	a5,a5,16
    13d8:	0741                	addi	a4,a4,16
    13da:	ff1794e3          	bne	a5,a7,13c2 <main.c.4a980d3e+0x83>
    13de:	0007c783          	lbu	a5,0(a5)
    13e2:	00f70023          	sb	a5,0(a4)
    13e6:	b771                	j	1372 <main.c.4a980d3e+0x33>
    13e8:	000807b7          	lui	a5,0x80
    13ec:	22078793          	addi	a5,a5,544 # 80220 <no_exception_handler_msg+0x18b>
    13f0:	0048                	addi	a0,sp,4
    13f2:	872a                	mv	a4,a0
    13f4:	03078893          	addi	a7,a5,48
    13f8:	0007a803          	lw	a6,0(a5)
    13fc:	43cc                	lw	a1,4(a5)
    13fe:	4790                	lw	a2,8(a5)
    1400:	47d4                	lw	a3,12(a5)
    1402:	01072023          	sw	a6,0(a4)
    1406:	c34c                	sw	a1,4(a4)
    1408:	c710                	sw	a2,8(a4)
    140a:	c754                	sw	a3,12(a4)
    140c:	07c1                	addi	a5,a5,16
    140e:	0741                	addi	a4,a4,16
    1410:	ff1794e3          	bne	a5,a7,13f8 <main.c.4a980d3e+0xb9>
    1414:	b7e9                	j	13de <main.c.4a980d3e+0x9f>
	...

00001418 <handler_irq_software>:
    1418:	7139                	addi	sp,sp,-64
    141a:	d62a                	sw	a0,44(sp)
    141c:	00080537          	lui	a0,0x80
    1420:	28450513          	addi	a0,a0,644 # 80284 <no_exception_handler_msg+0x1ef>
    1424:	de06                	sw	ra,60(sp)
    1426:	dc16                	sw	t0,56(sp)
    1428:	da1a                	sw	t1,52(sp)
    142a:	d81e                	sw	t2,48(sp)
    142c:	d42e                	sw	a1,40(sp)
    142e:	d232                	sw	a2,36(sp)
    1430:	d036                	sw	a3,32(sp)
    1432:	ce3a                	sw	a4,28(sp)
    1434:	cc3e                	sw	a5,24(sp)
    1436:	ca42                	sw	a6,20(sp)
    1438:	c846                	sw	a7,16(sp)
    143a:	c672                	sw	t3,12(sp)
    143c:	c476                	sw	t4,8(sp)
    143e:	c27a                	sw	t5,4(sp)
    1440:	c07e                	sw	t6,0(sp)
    1442:	25f5                	jal	1b2e <puts>
    1444:	a001                	j	1444 <handler_irq_software+0x2c>
	...

00001448 <handler_irq_timer>:
    1448:	7139                	addi	sp,sp,-64
    144a:	d62a                	sw	a0,44(sp)
    144c:	00080537          	lui	a0,0x80
    1450:	29c50513          	addi	a0,a0,668 # 8029c <no_exception_handler_msg+0x207>
    1454:	de06                	sw	ra,60(sp)
    1456:	dc16                	sw	t0,56(sp)
    1458:	da1a                	sw	t1,52(sp)
    145a:	d81e                	sw	t2,48(sp)
    145c:	d42e                	sw	a1,40(sp)
    145e:	d232                	sw	a2,36(sp)
    1460:	d036                	sw	a3,32(sp)
    1462:	ce3a                	sw	a4,28(sp)
    1464:	cc3e                	sw	a5,24(sp)
    1466:	ca42                	sw	a6,20(sp)
    1468:	c846                	sw	a7,16(sp)
    146a:	c672                	sw	t3,12(sp)
    146c:	c476                	sw	t4,8(sp)
    146e:	c27a                	sw	t5,4(sp)
    1470:	c07e                	sw	t6,0(sp)
    1472:	2d75                	jal	1b2e <puts>
    1474:	a001                	j	1474 <handler_irq_timer+0x2c>
	...

00001478 <handler_irq_external>:
    1478:	715d                	addi	sp,sp,-80
    147a:	cc4a                	sw	s2,24(sp)
    147c:	30000937          	lui	s2,0x30000
    1480:	de26                	sw	s1,60(sp)
    1482:	20c92483          	lw	s1,524(s2) # 3000020c <_sp+0x2ff1fa3c>
    1486:	d23e                	sw	a5,36(sp)
    1488:	000807b7          	lui	a5,0x80
    148c:	d43a                	sw	a4,40(sp)
    148e:	63878793          	addi	a5,a5,1592 # 80638 <handlers>
    1492:	00249713          	slli	a4,s1,0x2
    1496:	97ba                	add	a5,a5,a4
    1498:	439c                	lw	a5,0(a5)
    149a:	dc2a                	sw	a0,56(sp)
    149c:	c686                	sw	ra,76(sp)
    149e:	c496                	sw	t0,72(sp)
    14a0:	c29a                	sw	t1,68(sp)
    14a2:	c09e                	sw	t2,64(sp)
    14a4:	da2e                	sw	a1,52(sp)
    14a6:	d832                	sw	a2,48(sp)
    14a8:	d636                	sw	a3,44(sp)
    14aa:	d042                	sw	a6,32(sp)
    14ac:	ce46                	sw	a7,28(sp)
    14ae:	ca72                	sw	t3,20(sp)
    14b0:	c876                	sw	t4,16(sp)
    14b2:	c67a                	sw	t5,12(sp)
    14b4:	c47e                	sw	t6,8(sp)
    14b6:	8526                	mv	a0,s1
    14b8:	9782                	jalr	a5
    14ba:	000807b7          	lui	a5,0x80
    14be:	4705                	li	a4,1
    14c0:	60e78c23          	sb	a4,1560(a5) # 80618 <plic_intr_flag>
    14c4:	20992623          	sw	s1,524(s2)
    14c8:	40b6                	lw	ra,76(sp)
    14ca:	42a6                	lw	t0,72(sp)
    14cc:	4316                	lw	t1,68(sp)
    14ce:	4386                	lw	t2,64(sp)
    14d0:	54f2                	lw	s1,60(sp)
    14d2:	5562                	lw	a0,56(sp)
    14d4:	55d2                	lw	a1,52(sp)
    14d6:	5642                	lw	a2,48(sp)
    14d8:	56b2                	lw	a3,44(sp)
    14da:	5722                	lw	a4,40(sp)
    14dc:	5792                	lw	a5,36(sp)
    14de:	5802                	lw	a6,32(sp)
    14e0:	48f2                	lw	a7,28(sp)
    14e2:	4962                	lw	s2,24(sp)
    14e4:	4e52                	lw	t3,20(sp)
    14e6:	4ec2                	lw	t4,16(sp)
    14e8:	4f32                	lw	t5,12(sp)
    14ea:	4fa2                	lw	t6,8(sp)
    14ec:	6161                	addi	sp,sp,80
    14ee:	30200073          	mret

000014f2 <fic_irq_dma>:
    14f2:	000807b7          	lui	a5,0x80
    14f6:	4705                	li	a4,1
    14f8:	62e78823          	sb	a4,1584(a5) # 80630 <dma_cb+0x4>
    14fc:	8082                	ret
	...

00001500 <handler_irq_fast_dma>:
    1500:	1141                	addi	sp,sp,-16
    1502:	c63a                	sw	a4,12(sp)
    1504:	c43e                	sw	a5,8(sp)
    1506:	4721                	li	a4,8
    1508:	200707b7          	lui	a5,0x20070
    150c:	c3d8                	sw	a4,4(a5)
    150e:	000807b7          	lui	a5,0x80
    1512:	4705                	li	a4,1
    1514:	62e78823          	sb	a4,1584(a5) # 80630 <dma_cb+0x4>
    1518:	4732                	lw	a4,12(sp)
    151a:	47a2                	lw	a5,8(sp)
    151c:	0141                	addi	sp,sp,16
    151e:	30200073          	mret
	...

00001524 <handler_irq_fast_timer_1>:
    1524:	7139                	addi	sp,sp,-64
    1526:	ce3a                	sw	a4,28(sp)
    1528:	cc3e                	sw	a5,24(sp)
    152a:	de06                	sw	ra,60(sp)
    152c:	dc16                	sw	t0,56(sp)
    152e:	da1a                	sw	t1,52(sp)
    1530:	d81e                	sw	t2,48(sp)
    1532:	d62a                	sw	a0,44(sp)
    1534:	d42e                	sw	a1,40(sp)
    1536:	d232                	sw	a2,36(sp)
    1538:	d036                	sw	a3,32(sp)
    153a:	ca42                	sw	a6,20(sp)
    153c:	c846                	sw	a7,16(sp)
    153e:	c672                	sw	t3,12(sp)
    1540:	c476                	sw	t4,8(sp)
    1542:	c27a                	sw	t5,4(sp)
    1544:	c07e                	sw	t6,0(sp)
    1546:	200707b7          	lui	a5,0x20070
    154a:	4705                	li	a4,1
    154c:	c3d8                	sw	a4,4(a5)
    154e:	3aa5                	jal	ec6 <fic_irq_timer_1>
    1550:	50f2                	lw	ra,60(sp)
    1552:	52e2                	lw	t0,56(sp)
    1554:	5352                	lw	t1,52(sp)
    1556:	53c2                	lw	t2,48(sp)
    1558:	5532                	lw	a0,44(sp)
    155a:	55a2                	lw	a1,40(sp)
    155c:	5612                	lw	a2,36(sp)
    155e:	5682                	lw	a3,32(sp)
    1560:	4772                	lw	a4,28(sp)
    1562:	47e2                	lw	a5,24(sp)
    1564:	4852                	lw	a6,20(sp)
    1566:	48c2                	lw	a7,16(sp)
    1568:	4e32                	lw	t3,12(sp)
    156a:	4ea2                	lw	t4,8(sp)
    156c:	4f12                	lw	t5,4(sp)
    156e:	4f82                	lw	t6,0(sp)
    1570:	6121                	addi	sp,sp,64
    1572:	30200073          	mret
	...

00001578 <handler_irq_fast_timer_2>:
    1578:	7139                	addi	sp,sp,-64
    157a:	ce3a                	sw	a4,28(sp)
    157c:	cc3e                	sw	a5,24(sp)
    157e:	de06                	sw	ra,60(sp)
    1580:	dc16                	sw	t0,56(sp)
    1582:	da1a                	sw	t1,52(sp)
    1584:	d81e                	sw	t2,48(sp)
    1586:	d62a                	sw	a0,44(sp)
    1588:	d42e                	sw	a1,40(sp)
    158a:	d232                	sw	a2,36(sp)
    158c:	d036                	sw	a3,32(sp)
    158e:	ca42                	sw	a6,20(sp)
    1590:	c846                	sw	a7,16(sp)
    1592:	c672                	sw	t3,12(sp)
    1594:	c476                	sw	t4,8(sp)
    1596:	c27a                	sw	t5,4(sp)
    1598:	c07e                	sw	t6,0(sp)
    159a:	200707b7          	lui	a5,0x20070
    159e:	4709                	li	a4,2
    15a0:	c3d8                	sw	a4,4(a5)
    15a2:	3215                	jal	ec6 <fic_irq_timer_1>
    15a4:	50f2                	lw	ra,60(sp)
    15a6:	52e2                	lw	t0,56(sp)
    15a8:	5352                	lw	t1,52(sp)
    15aa:	53c2                	lw	t2,48(sp)
    15ac:	5532                	lw	a0,44(sp)
    15ae:	55a2                	lw	a1,40(sp)
    15b0:	5612                	lw	a2,36(sp)
    15b2:	5682                	lw	a3,32(sp)
    15b4:	4772                	lw	a4,28(sp)
    15b6:	47e2                	lw	a5,24(sp)
    15b8:	4852                	lw	a6,20(sp)
    15ba:	48c2                	lw	a7,16(sp)
    15bc:	4e32                	lw	t3,12(sp)
    15be:	4ea2                	lw	t4,8(sp)
    15c0:	4f12                	lw	t5,4(sp)
    15c2:	4f82                	lw	t6,0(sp)
    15c4:	6121                	addi	sp,sp,64
    15c6:	30200073          	mret
	...

000015cc <handler_irq_fast_timer_3>:
    15cc:	7139                	addi	sp,sp,-64
    15ce:	ce3a                	sw	a4,28(sp)
    15d0:	cc3e                	sw	a5,24(sp)
    15d2:	de06                	sw	ra,60(sp)
    15d4:	dc16                	sw	t0,56(sp)
    15d6:	da1a                	sw	t1,52(sp)
    15d8:	d81e                	sw	t2,48(sp)
    15da:	d62a                	sw	a0,44(sp)
    15dc:	d42e                	sw	a1,40(sp)
    15de:	d232                	sw	a2,36(sp)
    15e0:	d036                	sw	a3,32(sp)
    15e2:	ca42                	sw	a6,20(sp)
    15e4:	c846                	sw	a7,16(sp)
    15e6:	c672                	sw	t3,12(sp)
    15e8:	c476                	sw	t4,8(sp)
    15ea:	c27a                	sw	t5,4(sp)
    15ec:	c07e                	sw	t6,0(sp)
    15ee:	200707b7          	lui	a5,0x20070
    15f2:	4711                	li	a4,4
    15f4:	c3d8                	sw	a4,4(a5)
    15f6:	8d1ff0ef          	jal	ra,ec6 <fic_irq_timer_1>
    15fa:	50f2                	lw	ra,60(sp)
    15fc:	52e2                	lw	t0,56(sp)
    15fe:	5352                	lw	t1,52(sp)
    1600:	53c2                	lw	t2,48(sp)
    1602:	5532                	lw	a0,44(sp)
    1604:	55a2                	lw	a1,40(sp)
    1606:	5612                	lw	a2,36(sp)
    1608:	5682                	lw	a3,32(sp)
    160a:	4772                	lw	a4,28(sp)
    160c:	47e2                	lw	a5,24(sp)
    160e:	4852                	lw	a6,20(sp)
    1610:	48c2                	lw	a7,16(sp)
    1612:	4e32                	lw	t3,12(sp)
    1614:	4ea2                	lw	t4,8(sp)
    1616:	4f12                	lw	t5,4(sp)
    1618:	4f82                	lw	t6,0(sp)
    161a:	6121                	addi	sp,sp,64
    161c:	30200073          	mret
    1620:	0000                	unimp
	...

00001624 <handler_irq_fast_spi>:
    1624:	7139                	addi	sp,sp,-64
    1626:	ce3a                	sw	a4,28(sp)
    1628:	cc3e                	sw	a5,24(sp)
    162a:	de06                	sw	ra,60(sp)
    162c:	dc16                	sw	t0,56(sp)
    162e:	da1a                	sw	t1,52(sp)
    1630:	d81e                	sw	t2,48(sp)
    1632:	d62a                	sw	a0,44(sp)
    1634:	d42e                	sw	a1,40(sp)
    1636:	d232                	sw	a2,36(sp)
    1638:	d036                	sw	a3,32(sp)
    163a:	ca42                	sw	a6,20(sp)
    163c:	c846                	sw	a7,16(sp)
    163e:	c672                	sw	t3,12(sp)
    1640:	c476                	sw	t4,8(sp)
    1642:	c27a                	sw	t5,4(sp)
    1644:	c07e                	sw	t6,0(sp)
    1646:	200707b7          	lui	a5,0x20070
    164a:	4741                	li	a4,16
    164c:	c3d8                	sw	a4,4(a5)
    164e:	879ff0ef          	jal	ra,ec6 <fic_irq_timer_1>
    1652:	50f2                	lw	ra,60(sp)
    1654:	52e2                	lw	t0,56(sp)
    1656:	5352                	lw	t1,52(sp)
    1658:	53c2                	lw	t2,48(sp)
    165a:	5532                	lw	a0,44(sp)
    165c:	55a2                	lw	a1,40(sp)
    165e:	5612                	lw	a2,36(sp)
    1660:	5682                	lw	a3,32(sp)
    1662:	4772                	lw	a4,28(sp)
    1664:	47e2                	lw	a5,24(sp)
    1666:	4852                	lw	a6,20(sp)
    1668:	48c2                	lw	a7,16(sp)
    166a:	4e32                	lw	t3,12(sp)
    166c:	4ea2                	lw	t4,8(sp)
    166e:	4f12                	lw	t5,4(sp)
    1670:	4f82                	lw	t6,0(sp)
    1672:	6121                	addi	sp,sp,64
    1674:	30200073          	mret
    1678:	0000                	unimp
	...

0000167c <handler_irq_fast_spi_flash>:
    167c:	7139                	addi	sp,sp,-64
    167e:	ce3a                	sw	a4,28(sp)
    1680:	cc3e                	sw	a5,24(sp)
    1682:	de06                	sw	ra,60(sp)
    1684:	dc16                	sw	t0,56(sp)
    1686:	da1a                	sw	t1,52(sp)
    1688:	d81e                	sw	t2,48(sp)
    168a:	d62a                	sw	a0,44(sp)
    168c:	d42e                	sw	a1,40(sp)
    168e:	d232                	sw	a2,36(sp)
    1690:	d036                	sw	a3,32(sp)
    1692:	ca42                	sw	a6,20(sp)
    1694:	c846                	sw	a7,16(sp)
    1696:	c672                	sw	t3,12(sp)
    1698:	c476                	sw	t4,8(sp)
    169a:	c27a                	sw	t5,4(sp)
    169c:	c07e                	sw	t6,0(sp)
    169e:	200707b7          	lui	a5,0x20070
    16a2:	02000713          	li	a4,32
    16a6:	c3d8                	sw	a4,4(a5)
    16a8:	81fff0ef          	jal	ra,ec6 <fic_irq_timer_1>
    16ac:	50f2                	lw	ra,60(sp)
    16ae:	52e2                	lw	t0,56(sp)
    16b0:	5352                	lw	t1,52(sp)
    16b2:	53c2                	lw	t2,48(sp)
    16b4:	5532                	lw	a0,44(sp)
    16b6:	55a2                	lw	a1,40(sp)
    16b8:	5612                	lw	a2,36(sp)
    16ba:	5682                	lw	a3,32(sp)
    16bc:	4772                	lw	a4,28(sp)
    16be:	47e2                	lw	a5,24(sp)
    16c0:	4852                	lw	a6,20(sp)
    16c2:	48c2                	lw	a7,16(sp)
    16c4:	4e32                	lw	t3,12(sp)
    16c6:	4ea2                	lw	t4,8(sp)
    16c8:	4f12                	lw	t5,4(sp)
    16ca:	4f82                	lw	t6,0(sp)
    16cc:	6121                	addi	sp,sp,64
    16ce:	30200073          	mret
	...

000016d4 <handler_irq_fast_gpio_0>:
    16d4:	7139                	addi	sp,sp,-64
    16d6:	ce3a                	sw	a4,28(sp)
    16d8:	cc3e                	sw	a5,24(sp)
    16da:	de06                	sw	ra,60(sp)
    16dc:	dc16                	sw	t0,56(sp)
    16de:	da1a                	sw	t1,52(sp)
    16e0:	d81e                	sw	t2,48(sp)
    16e2:	d62a                	sw	a0,44(sp)
    16e4:	d42e                	sw	a1,40(sp)
    16e6:	d232                	sw	a2,36(sp)
    16e8:	d036                	sw	a3,32(sp)
    16ea:	ca42                	sw	a6,20(sp)
    16ec:	c846                	sw	a7,16(sp)
    16ee:	c672                	sw	t3,12(sp)
    16f0:	c476                	sw	t4,8(sp)
    16f2:	c27a                	sw	t5,4(sp)
    16f4:	c07e                	sw	t6,0(sp)
    16f6:	200707b7          	lui	a5,0x20070
    16fa:	04000713          	li	a4,64
    16fe:	c3d8                	sw	a4,4(a5)
    1700:	fc6ff0ef          	jal	ra,ec6 <fic_irq_timer_1>
    1704:	50f2                	lw	ra,60(sp)
    1706:	52e2                	lw	t0,56(sp)
    1708:	5352                	lw	t1,52(sp)
    170a:	53c2                	lw	t2,48(sp)
    170c:	5532                	lw	a0,44(sp)
    170e:	55a2                	lw	a1,40(sp)
    1710:	5612                	lw	a2,36(sp)
    1712:	5682                	lw	a3,32(sp)
    1714:	4772                	lw	a4,28(sp)
    1716:	47e2                	lw	a5,24(sp)
    1718:	4852                	lw	a6,20(sp)
    171a:	48c2                	lw	a7,16(sp)
    171c:	4e32                	lw	t3,12(sp)
    171e:	4ea2                	lw	t4,8(sp)
    1720:	4f12                	lw	t5,4(sp)
    1722:	4f82                	lw	t6,0(sp)
    1724:	6121                	addi	sp,sp,64
    1726:	30200073          	mret
	...

0000172c <handler_irq_fast_gpio_1>:
    172c:	7139                	addi	sp,sp,-64
    172e:	ce3a                	sw	a4,28(sp)
    1730:	cc3e                	sw	a5,24(sp)
    1732:	de06                	sw	ra,60(sp)
    1734:	dc16                	sw	t0,56(sp)
    1736:	da1a                	sw	t1,52(sp)
    1738:	d81e                	sw	t2,48(sp)
    173a:	d62a                	sw	a0,44(sp)
    173c:	d42e                	sw	a1,40(sp)
    173e:	d232                	sw	a2,36(sp)
    1740:	d036                	sw	a3,32(sp)
    1742:	ca42                	sw	a6,20(sp)
    1744:	c846                	sw	a7,16(sp)
    1746:	c672                	sw	t3,12(sp)
    1748:	c476                	sw	t4,8(sp)
    174a:	c27a                	sw	t5,4(sp)
    174c:	c07e                	sw	t6,0(sp)
    174e:	200707b7          	lui	a5,0x20070
    1752:	08000713          	li	a4,128
    1756:	c3d8                	sw	a4,4(a5)
    1758:	f6eff0ef          	jal	ra,ec6 <fic_irq_timer_1>
    175c:	50f2                	lw	ra,60(sp)
    175e:	52e2                	lw	t0,56(sp)
    1760:	5352                	lw	t1,52(sp)
    1762:	53c2                	lw	t2,48(sp)
    1764:	5532                	lw	a0,44(sp)
    1766:	55a2                	lw	a1,40(sp)
    1768:	5612                	lw	a2,36(sp)
    176a:	5682                	lw	a3,32(sp)
    176c:	4772                	lw	a4,28(sp)
    176e:	47e2                	lw	a5,24(sp)
    1770:	4852                	lw	a6,20(sp)
    1772:	48c2                	lw	a7,16(sp)
    1774:	4e32                	lw	t3,12(sp)
    1776:	4ea2                	lw	t4,8(sp)
    1778:	4f12                	lw	t5,4(sp)
    177a:	4f82                	lw	t6,0(sp)
    177c:	6121                	addi	sp,sp,64
    177e:	30200073          	mret
	...

00001784 <handler_irq_fast_gpio_2>:
    1784:	7139                	addi	sp,sp,-64
    1786:	ce3a                	sw	a4,28(sp)
    1788:	cc3e                	sw	a5,24(sp)
    178a:	de06                	sw	ra,60(sp)
    178c:	dc16                	sw	t0,56(sp)
    178e:	da1a                	sw	t1,52(sp)
    1790:	d81e                	sw	t2,48(sp)
    1792:	d62a                	sw	a0,44(sp)
    1794:	d42e                	sw	a1,40(sp)
    1796:	d232                	sw	a2,36(sp)
    1798:	d036                	sw	a3,32(sp)
    179a:	ca42                	sw	a6,20(sp)
    179c:	c846                	sw	a7,16(sp)
    179e:	c672                	sw	t3,12(sp)
    17a0:	c476                	sw	t4,8(sp)
    17a2:	c27a                	sw	t5,4(sp)
    17a4:	c07e                	sw	t6,0(sp)
    17a6:	200707b7          	lui	a5,0x20070
    17aa:	10000713          	li	a4,256
    17ae:	c3d8                	sw	a4,4(a5)
    17b0:	f16ff0ef          	jal	ra,ec6 <fic_irq_timer_1>
    17b4:	50f2                	lw	ra,60(sp)
    17b6:	52e2                	lw	t0,56(sp)
    17b8:	5352                	lw	t1,52(sp)
    17ba:	53c2                	lw	t2,48(sp)
    17bc:	5532                	lw	a0,44(sp)
    17be:	55a2                	lw	a1,40(sp)
    17c0:	5612                	lw	a2,36(sp)
    17c2:	5682                	lw	a3,32(sp)
    17c4:	4772                	lw	a4,28(sp)
    17c6:	47e2                	lw	a5,24(sp)
    17c8:	4852                	lw	a6,20(sp)
    17ca:	48c2                	lw	a7,16(sp)
    17cc:	4e32                	lw	t3,12(sp)
    17ce:	4ea2                	lw	t4,8(sp)
    17d0:	4f12                	lw	t5,4(sp)
    17d2:	4f82                	lw	t6,0(sp)
    17d4:	6121                	addi	sp,sp,64
    17d6:	30200073          	mret
	...

000017dc <handler_irq_fast_gpio_3>:
    17dc:	7139                	addi	sp,sp,-64
    17de:	ce3a                	sw	a4,28(sp)
    17e0:	cc3e                	sw	a5,24(sp)
    17e2:	de06                	sw	ra,60(sp)
    17e4:	dc16                	sw	t0,56(sp)
    17e6:	da1a                	sw	t1,52(sp)
    17e8:	d81e                	sw	t2,48(sp)
    17ea:	d62a                	sw	a0,44(sp)
    17ec:	d42e                	sw	a1,40(sp)
    17ee:	d232                	sw	a2,36(sp)
    17f0:	d036                	sw	a3,32(sp)
    17f2:	ca42                	sw	a6,20(sp)
    17f4:	c846                	sw	a7,16(sp)
    17f6:	c672                	sw	t3,12(sp)
    17f8:	c476                	sw	t4,8(sp)
    17fa:	c27a                	sw	t5,4(sp)
    17fc:	c07e                	sw	t6,0(sp)
    17fe:	200707b7          	lui	a5,0x20070
    1802:	20000713          	li	a4,512
    1806:	c3d8                	sw	a4,4(a5)
    1808:	ebeff0ef          	jal	ra,ec6 <fic_irq_timer_1>
    180c:	50f2                	lw	ra,60(sp)
    180e:	52e2                	lw	t0,56(sp)
    1810:	5352                	lw	t1,52(sp)
    1812:	53c2                	lw	t2,48(sp)
    1814:	5532                	lw	a0,44(sp)
    1816:	55a2                	lw	a1,40(sp)
    1818:	5612                	lw	a2,36(sp)
    181a:	5682                	lw	a3,32(sp)
    181c:	4772                	lw	a4,28(sp)
    181e:	47e2                	lw	a5,24(sp)
    1820:	4852                	lw	a6,20(sp)
    1822:	48c2                	lw	a7,16(sp)
    1824:	4e32                	lw	t3,12(sp)
    1826:	4ea2                	lw	t4,8(sp)
    1828:	4f12                	lw	t5,4(sp)
    182a:	4f82                	lw	t6,0(sp)
    182c:	6121                	addi	sp,sp,64
    182e:	30200073          	mret
	...

00001834 <handler_irq_fast_gpio_4>:
    1834:	7139                	addi	sp,sp,-64
    1836:	ce3a                	sw	a4,28(sp)
    1838:	cc3e                	sw	a5,24(sp)
    183a:	de06                	sw	ra,60(sp)
    183c:	dc16                	sw	t0,56(sp)
    183e:	da1a                	sw	t1,52(sp)
    1840:	d81e                	sw	t2,48(sp)
    1842:	d62a                	sw	a0,44(sp)
    1844:	d42e                	sw	a1,40(sp)
    1846:	d232                	sw	a2,36(sp)
    1848:	d036                	sw	a3,32(sp)
    184a:	ca42                	sw	a6,20(sp)
    184c:	c846                	sw	a7,16(sp)
    184e:	c672                	sw	t3,12(sp)
    1850:	c476                	sw	t4,8(sp)
    1852:	c27a                	sw	t5,4(sp)
    1854:	c07e                	sw	t6,0(sp)
    1856:	200707b7          	lui	a5,0x20070
    185a:	40000713          	li	a4,1024
    185e:	c3d8                	sw	a4,4(a5)
    1860:	e66ff0ef          	jal	ra,ec6 <fic_irq_timer_1>
    1864:	50f2                	lw	ra,60(sp)
    1866:	52e2                	lw	t0,56(sp)
    1868:	5352                	lw	t1,52(sp)
    186a:	53c2                	lw	t2,48(sp)
    186c:	5532                	lw	a0,44(sp)
    186e:	55a2                	lw	a1,40(sp)
    1870:	5612                	lw	a2,36(sp)
    1872:	5682                	lw	a3,32(sp)
    1874:	4772                	lw	a4,28(sp)
    1876:	47e2                	lw	a5,24(sp)
    1878:	4852                	lw	a6,20(sp)
    187a:	48c2                	lw	a7,16(sp)
    187c:	4e32                	lw	t3,12(sp)
    187e:	4ea2                	lw	t4,8(sp)
    1880:	4f12                	lw	t5,4(sp)
    1882:	4f82                	lw	t6,0(sp)
    1884:	6121                	addi	sp,sp,64
    1886:	30200073          	mret
	...

0000188c <handler_irq_fast_gpio_5>:
    188c:	7139                	addi	sp,sp,-64
    188e:	cc3e                	sw	a5,24(sp)
    1890:	6785                	lui	a5,0x1
    1892:	ce3a                	sw	a4,28(sp)
    1894:	de06                	sw	ra,60(sp)
    1896:	dc16                	sw	t0,56(sp)
    1898:	da1a                	sw	t1,52(sp)
    189a:	d81e                	sw	t2,48(sp)
    189c:	d62a                	sw	a0,44(sp)
    189e:	d42e                	sw	a1,40(sp)
    18a0:	d232                	sw	a2,36(sp)
    18a2:	d036                	sw	a3,32(sp)
    18a4:	ca42                	sw	a6,20(sp)
    18a6:	c846                	sw	a7,16(sp)
    18a8:	c672                	sw	t3,12(sp)
    18aa:	c476                	sw	t4,8(sp)
    18ac:	c27a                	sw	t5,4(sp)
    18ae:	c07e                	sw	t6,0(sp)
    18b0:	20070737          	lui	a4,0x20070
    18b4:	80078793          	addi	a5,a5,-2048 # 800 <main+0x5ea>
    18b8:	c35c                	sw	a5,4(a4)
    18ba:	e0cff0ef          	jal	ra,ec6 <fic_irq_timer_1>
    18be:	50f2                	lw	ra,60(sp)
    18c0:	52e2                	lw	t0,56(sp)
    18c2:	5352                	lw	t1,52(sp)
    18c4:	53c2                	lw	t2,48(sp)
    18c6:	5532                	lw	a0,44(sp)
    18c8:	55a2                	lw	a1,40(sp)
    18ca:	5612                	lw	a2,36(sp)
    18cc:	5682                	lw	a3,32(sp)
    18ce:	4772                	lw	a4,28(sp)
    18d0:	47e2                	lw	a5,24(sp)
    18d2:	4852                	lw	a6,20(sp)
    18d4:	48c2                	lw	a7,16(sp)
    18d6:	4e32                	lw	t3,12(sp)
    18d8:	4ea2                	lw	t4,8(sp)
    18da:	4f12                	lw	t5,4(sp)
    18dc:	4f82                	lw	t6,0(sp)
    18de:	6121                	addi	sp,sp,64
    18e0:	30200073          	mret
    18e4:	0000                	unimp
	...

000018e8 <handler_irq_fast_gpio_6>:
    18e8:	7139                	addi	sp,sp,-64
    18ea:	ce3a                	sw	a4,28(sp)
    18ec:	cc3e                	sw	a5,24(sp)
    18ee:	de06                	sw	ra,60(sp)
    18f0:	dc16                	sw	t0,56(sp)
    18f2:	da1a                	sw	t1,52(sp)
    18f4:	d81e                	sw	t2,48(sp)
    18f6:	d62a                	sw	a0,44(sp)
    18f8:	d42e                	sw	a1,40(sp)
    18fa:	d232                	sw	a2,36(sp)
    18fc:	d036                	sw	a3,32(sp)
    18fe:	ca42                	sw	a6,20(sp)
    1900:	c846                	sw	a7,16(sp)
    1902:	c672                	sw	t3,12(sp)
    1904:	c476                	sw	t4,8(sp)
    1906:	c27a                	sw	t5,4(sp)
    1908:	c07e                	sw	t6,0(sp)
    190a:	200707b7          	lui	a5,0x20070
    190e:	6705                	lui	a4,0x1
    1910:	c3d8                	sw	a4,4(a5)
    1912:	db4ff0ef          	jal	ra,ec6 <fic_irq_timer_1>
    1916:	50f2                	lw	ra,60(sp)
    1918:	52e2                	lw	t0,56(sp)
    191a:	5352                	lw	t1,52(sp)
    191c:	53c2                	lw	t2,48(sp)
    191e:	5532                	lw	a0,44(sp)
    1920:	55a2                	lw	a1,40(sp)
    1922:	5612                	lw	a2,36(sp)
    1924:	5682                	lw	a3,32(sp)
    1926:	4772                	lw	a4,28(sp)
    1928:	47e2                	lw	a5,24(sp)
    192a:	4852                	lw	a6,20(sp)
    192c:	48c2                	lw	a7,16(sp)
    192e:	4e32                	lw	t3,12(sp)
    1930:	4ea2                	lw	t4,8(sp)
    1932:	4f12                	lw	t5,4(sp)
    1934:	4f82                	lw	t6,0(sp)
    1936:	6121                	addi	sp,sp,64
    1938:	30200073          	mret
    193c:	0000                	unimp
	...

00001940 <handler_irq_fast_gpio_7>:
    1940:	7139                	addi	sp,sp,-64
    1942:	ce3a                	sw	a4,28(sp)
    1944:	cc3e                	sw	a5,24(sp)
    1946:	de06                	sw	ra,60(sp)
    1948:	dc16                	sw	t0,56(sp)
    194a:	da1a                	sw	t1,52(sp)
    194c:	d81e                	sw	t2,48(sp)
    194e:	d62a                	sw	a0,44(sp)
    1950:	d42e                	sw	a1,40(sp)
    1952:	d232                	sw	a2,36(sp)
    1954:	d036                	sw	a3,32(sp)
    1956:	ca42                	sw	a6,20(sp)
    1958:	c846                	sw	a7,16(sp)
    195a:	c672                	sw	t3,12(sp)
    195c:	c476                	sw	t4,8(sp)
    195e:	c27a                	sw	t5,4(sp)
    1960:	c07e                	sw	t6,0(sp)
    1962:	200707b7          	lui	a5,0x20070
    1966:	6709                	lui	a4,0x2
    1968:	c3d8                	sw	a4,4(a5)
    196a:	d5cff0ef          	jal	ra,ec6 <fic_irq_timer_1>
    196e:	50f2                	lw	ra,60(sp)
    1970:	52e2                	lw	t0,56(sp)
    1972:	5352                	lw	t1,52(sp)
    1974:	53c2                	lw	t2,48(sp)
    1976:	5532                	lw	a0,44(sp)
    1978:	55a2                	lw	a1,40(sp)
    197a:	5612                	lw	a2,36(sp)
    197c:	5682                	lw	a3,32(sp)
    197e:	4772                	lw	a4,28(sp)
    1980:	47e2                	lw	a5,24(sp)
    1982:	4852                	lw	a6,20(sp)
    1984:	48c2                	lw	a7,16(sp)
    1986:	4e32                	lw	t3,12(sp)
    1988:	4ea2                	lw	t4,8(sp)
    198a:	4f12                	lw	t5,4(sp)
    198c:	4f82                	lw	t6,0(sp)
    198e:	6121                	addi	sp,sp,64
    1990:	30200073          	mret
	...

00001996 <atexit>:
    1996:	85aa                	mv	a1,a0
    1998:	4681                	li	a3,0
    199a:	4601                	li	a2,0
    199c:	4501                	li	a0,0
    199e:	a985                	j	1e0e <__register_exitproc>

000019a0 <__libc_fini_array>:
    19a0:	1141                	addi	sp,sp,-16
    19a2:	000807b7          	lui	a5,0x80
    19a6:	c422                	sw	s0,8(sp)
    19a8:	00080437          	lui	s0,0x80
    19ac:	5a878713          	addi	a4,a5,1448 # 805a8 <impure_data>
    19b0:	5a840413          	addi	s0,s0,1448 # 805a8 <impure_data>
    19b4:	8c19                	sub	s0,s0,a4
    19b6:	c226                	sw	s1,4(sp)
    19b8:	c606                	sw	ra,12(sp)
    19ba:	8409                	srai	s0,s0,0x2
    19bc:	5a878493          	addi	s1,a5,1448
    19c0:	e411                	bnez	s0,19cc <__libc_fini_array+0x2c>
    19c2:	40b2                	lw	ra,12(sp)
    19c4:	4422                	lw	s0,8(sp)
    19c6:	4492                	lw	s1,4(sp)
    19c8:	0141                	addi	sp,sp,16
    19ca:	8082                	ret
    19cc:	147d                	addi	s0,s0,-1
    19ce:	00241793          	slli	a5,s0,0x2
    19d2:	97a6                	add	a5,a5,s1
    19d4:	439c                	lw	a5,0(a5)
    19d6:	9782                	jalr	a5
    19d8:	b7e5                	j	19c0 <__libc_fini_array+0x20>

000019da <__libc_init_array>:
    19da:	1141                	addi	sp,sp,-16
    19dc:	c422                	sw	s0,8(sp)
    19de:	c226                	sw	s1,4(sp)
    19e0:	00080437          	lui	s0,0x80
    19e4:	000804b7          	lui	s1,0x80
    19e8:	5a848793          	addi	a5,s1,1448 # 805a8 <impure_data>
    19ec:	5a840413          	addi	s0,s0,1448 # 805a8 <impure_data>
    19f0:	8c1d                	sub	s0,s0,a5
    19f2:	c04a                	sw	s2,0(sp)
    19f4:	c606                	sw	ra,12(sp)
    19f6:	8409                	srai	s0,s0,0x2
    19f8:	5a848493          	addi	s1,s1,1448
    19fc:	4901                	li	s2,0
    19fe:	02891763          	bne	s2,s0,1a2c <__libc_init_array+0x52>
    1a02:	000804b7          	lui	s1,0x80
    1a06:	00080437          	lui	s0,0x80
    1a0a:	5a848793          	addi	a5,s1,1448 # 805a8 <impure_data>
    1a0e:	5a840413          	addi	s0,s0,1448 # 805a8 <impure_data>
    1a12:	8c1d                	sub	s0,s0,a5
    1a14:	8409                	srai	s0,s0,0x2
    1a16:	5a848493          	addi	s1,s1,1448
    1a1a:	4901                	li	s2,0
    1a1c:	00891d63          	bne	s2,s0,1a36 <__libc_init_array+0x5c>
    1a20:	40b2                	lw	ra,12(sp)
    1a22:	4422                	lw	s0,8(sp)
    1a24:	4492                	lw	s1,4(sp)
    1a26:	4902                	lw	s2,0(sp)
    1a28:	0141                	addi	sp,sp,16
    1a2a:	8082                	ret
    1a2c:	409c                	lw	a5,0(s1)
    1a2e:	0905                	addi	s2,s2,1
    1a30:	0491                	addi	s1,s1,4
    1a32:	9782                	jalr	a5
    1a34:	b7e9                	j	19fe <__libc_init_array+0x24>
    1a36:	409c                	lw	a5,0(s1)
    1a38:	0905                	addi	s2,s2,1
    1a3a:	0491                	addi	s1,s1,4
    1a3c:	9782                	jalr	a5
    1a3e:	bff9                	j	1a1c <__libc_init_array+0x42>

00001a40 <memset>:
    1a40:	832a                	mv	t1,a0
    1a42:	c611                	beqz	a2,1a4e <memset+0xe>
    1a44:	00b30023          	sb	a1,0(t1)
    1a48:	167d                	addi	a2,a2,-1
    1a4a:	0305                	addi	t1,t1,1
    1a4c:	fe65                	bnez	a2,1a44 <memset+0x4>
    1a4e:	8082                	ret

00001a50 <_puts_r>:
    1a50:	1101                	addi	sp,sp,-32
    1a52:	ca26                	sw	s1,20(sp)
    1a54:	c84a                	sw	s2,16(sp)
    1a56:	ce06                	sw	ra,28(sp)
    1a58:	cc22                	sw	s0,24(sp)
    1a5a:	c64e                	sw	s3,12(sp)
    1a5c:	c452                	sw	s4,8(sp)
    1a5e:	84aa                	mv	s1,a0
    1a60:	892e                	mv	s2,a1
    1a62:	c509                	beqz	a0,1a6c <_puts_r+0x1c>
    1a64:	4d1c                	lw	a5,24(a0)
    1a66:	e399                	bnez	a5,1a6c <_puts_r+0x1c>
    1a68:	77c000ef          	jal	ra,21e4 <__sinit>
    1a6c:	4c9c                	lw	a5,24(s1)
    1a6e:	4480                	lw	s0,8(s1)
    1a70:	e781                	bnez	a5,1a78 <_puts_r+0x28>
    1a72:	8526                	mv	a0,s1
    1a74:	770000ef          	jal	ra,21e4 <__sinit>
    1a78:	000807b7          	lui	a5,0x80
    1a7c:	3d478793          	addi	a5,a5,980 # 803d4 <__sf_fake_stdin>
    1a80:	02f41c63          	bne	s0,a5,1ab8 <_puts_r+0x68>
    1a84:	40c0                	lw	s0,4(s1)
    1a86:	00c45783          	lhu	a5,12(s0)
    1a8a:	8ba1                	andi	a5,a5,8
    1a8c:	c7b1                	beqz	a5,1ad8 <_puts_r+0x88>
    1a8e:	481c                	lw	a5,16(s0)
    1a90:	c7a1                	beqz	a5,1ad8 <_puts_r+0x88>
    1a92:	59fd                	li	s3,-1
    1a94:	4a29                	li	s4,10
    1a96:	441c                	lw	a5,8(s0)
    1a98:	00094583          	lbu	a1,0(s2)
    1a9c:	17fd                	addi	a5,a5,-1
    1a9e:	e9b1                	bnez	a1,1af2 <_puts_r+0xa2>
    1aa0:	c41c                	sw	a5,8(s0)
    1aa2:	0607de63          	bgez	a5,1b1e <_puts_r+0xce>
    1aa6:	8622                	mv	a2,s0
    1aa8:	45a9                	li	a1,10
    1aaa:	8526                	mv	a0,s1
    1aac:	2261                	jal	1c34 <__swbuf_r>
    1aae:	57fd                	li	a5,-1
    1ab0:	02f50863          	beq	a0,a5,1ae0 <_puts_r+0x90>
    1ab4:	4529                	li	a0,10
    1ab6:	a035                	j	1ae2 <_puts_r+0x92>
    1ab8:	000807b7          	lui	a5,0x80
    1abc:	3f478793          	addi	a5,a5,1012 # 803f4 <__sf_fake_stdout>
    1ac0:	00f41463          	bne	s0,a5,1ac8 <_puts_r+0x78>
    1ac4:	4480                	lw	s0,8(s1)
    1ac6:	b7c1                	j	1a86 <_puts_r+0x36>
    1ac8:	000807b7          	lui	a5,0x80
    1acc:	3b478793          	addi	a5,a5,948 # 803b4 <__sf_fake_stderr>
    1ad0:	faf41be3          	bne	s0,a5,1a86 <_puts_r+0x36>
    1ad4:	44c0                	lw	s0,12(s1)
    1ad6:	bf45                	j	1a86 <_puts_r+0x36>
    1ad8:	85a2                	mv	a1,s0
    1ada:	8526                	mv	a0,s1
    1adc:	241d                	jal	1d02 <__swsetup_r>
    1ade:	d955                	beqz	a0,1a92 <_puts_r+0x42>
    1ae0:	557d                	li	a0,-1
    1ae2:	40f2                	lw	ra,28(sp)
    1ae4:	4462                	lw	s0,24(sp)
    1ae6:	44d2                	lw	s1,20(sp)
    1ae8:	4942                	lw	s2,16(sp)
    1aea:	49b2                	lw	s3,12(sp)
    1aec:	4a22                	lw	s4,8(sp)
    1aee:	6105                	addi	sp,sp,32
    1af0:	8082                	ret
    1af2:	c41c                	sw	a5,8(s0)
    1af4:	0905                	addi	s2,s2,1
    1af6:	0007d763          	bgez	a5,1b04 <_puts_r+0xb4>
    1afa:	4c18                	lw	a4,24(s0)
    1afc:	00e7cb63          	blt	a5,a4,1b12 <_puts_r+0xc2>
    1b00:	01458963          	beq	a1,s4,1b12 <_puts_r+0xc2>
    1b04:	401c                	lw	a5,0(s0)
    1b06:	00178713          	addi	a4,a5,1
    1b0a:	c018                	sw	a4,0(s0)
    1b0c:	00b78023          	sb	a1,0(a5)
    1b10:	b759                	j	1a96 <_puts_r+0x46>
    1b12:	8622                	mv	a2,s0
    1b14:	8526                	mv	a0,s1
    1b16:	2a39                	jal	1c34 <__swbuf_r>
    1b18:	f7351fe3          	bne	a0,s3,1a96 <_puts_r+0x46>
    1b1c:	b7d1                	j	1ae0 <_puts_r+0x90>
    1b1e:	401c                	lw	a5,0(s0)
    1b20:	00178713          	addi	a4,a5,1
    1b24:	c018                	sw	a4,0(s0)
    1b26:	4729                	li	a4,10
    1b28:	00e78023          	sb	a4,0(a5)
    1b2c:	b761                	j	1ab4 <_puts_r+0x64>

00001b2e <puts>:
    1b2e:	000807b7          	lui	a5,0x80
    1b32:	85aa                	mv	a1,a0
    1b34:	6107a503          	lw	a0,1552(a5) # 80610 <_impure_ptr>
    1b38:	bf21                	j	1a50 <_puts_r>

00001b3a <cleanup_glue>:
    1b3a:	1141                	addi	sp,sp,-16
    1b3c:	c422                	sw	s0,8(sp)
    1b3e:	842e                	mv	s0,a1
    1b40:	418c                	lw	a1,0(a1)
    1b42:	c226                	sw	s1,4(sp)
    1b44:	c606                	sw	ra,12(sp)
    1b46:	84aa                	mv	s1,a0
    1b48:	c191                	beqz	a1,1b4c <cleanup_glue+0x12>
    1b4a:	3fc5                	jal	1b3a <cleanup_glue>
    1b4c:	85a2                	mv	a1,s0
    1b4e:	4422                	lw	s0,8(sp)
    1b50:	40b2                	lw	ra,12(sp)
    1b52:	8526                	mv	a0,s1
    1b54:	4492                	lw	s1,4(sp)
    1b56:	0141                	addi	sp,sp,16
    1b58:	17d0006f          	j	24d4 <_free_r>

00001b5c <_reclaim_reent>:
    1b5c:	000807b7          	lui	a5,0x80
    1b60:	6107a783          	lw	a5,1552(a5) # 80610 <_impure_ptr>
    1b64:	0ca78763          	beq	a5,a0,1c32 <_reclaim_reent+0xd6>
    1b68:	515c                	lw	a5,36(a0)
    1b6a:	1101                	addi	sp,sp,-32
    1b6c:	cc22                	sw	s0,24(sp)
    1b6e:	ce06                	sw	ra,28(sp)
    1b70:	ca26                	sw	s1,20(sp)
    1b72:	c84a                	sw	s2,16(sp)
    1b74:	c64e                	sw	s3,12(sp)
    1b76:	842a                	mv	s0,a0
    1b78:	cf81                	beqz	a5,1b90 <_reclaim_reent+0x34>
    1b7a:	47dc                	lw	a5,12(a5)
    1b7c:	4481                	li	s1,0
    1b7e:	08000913          	li	s2,128
    1b82:	e3d1                	bnez	a5,1c06 <_reclaim_reent+0xaa>
    1b84:	505c                	lw	a5,36(s0)
    1b86:	438c                	lw	a1,0(a5)
    1b88:	c581                	beqz	a1,1b90 <_reclaim_reent+0x34>
    1b8a:	8522                	mv	a0,s0
    1b8c:	149000ef          	jal	ra,24d4 <_free_r>
    1b90:	484c                	lw	a1,20(s0)
    1b92:	c581                	beqz	a1,1b9a <_reclaim_reent+0x3e>
    1b94:	8522                	mv	a0,s0
    1b96:	13f000ef          	jal	ra,24d4 <_free_r>
    1b9a:	504c                	lw	a1,36(s0)
    1b9c:	c581                	beqz	a1,1ba4 <_reclaim_reent+0x48>
    1b9e:	8522                	mv	a0,s0
    1ba0:	135000ef          	jal	ra,24d4 <_free_r>
    1ba4:	5c0c                	lw	a1,56(s0)
    1ba6:	c581                	beqz	a1,1bae <_reclaim_reent+0x52>
    1ba8:	8522                	mv	a0,s0
    1baa:	12b000ef          	jal	ra,24d4 <_free_r>
    1bae:	5c4c                	lw	a1,60(s0)
    1bb0:	c581                	beqz	a1,1bb8 <_reclaim_reent+0x5c>
    1bb2:	8522                	mv	a0,s0
    1bb4:	121000ef          	jal	ra,24d4 <_free_r>
    1bb8:	402c                	lw	a1,64(s0)
    1bba:	c581                	beqz	a1,1bc2 <_reclaim_reent+0x66>
    1bbc:	8522                	mv	a0,s0
    1bbe:	117000ef          	jal	ra,24d4 <_free_r>
    1bc2:	4c6c                	lw	a1,92(s0)
    1bc4:	c581                	beqz	a1,1bcc <_reclaim_reent+0x70>
    1bc6:	8522                	mv	a0,s0
    1bc8:	10d000ef          	jal	ra,24d4 <_free_r>
    1bcc:	4c2c                	lw	a1,88(s0)
    1bce:	c581                	beqz	a1,1bd6 <_reclaim_reent+0x7a>
    1bd0:	8522                	mv	a0,s0
    1bd2:	103000ef          	jal	ra,24d4 <_free_r>
    1bd6:	584c                	lw	a1,52(s0)
    1bd8:	c581                	beqz	a1,1be0 <_reclaim_reent+0x84>
    1bda:	8522                	mv	a0,s0
    1bdc:	0f9000ef          	jal	ra,24d4 <_free_r>
    1be0:	4c1c                	lw	a5,24(s0)
    1be2:	c3a9                	beqz	a5,1c24 <_reclaim_reent+0xc8>
    1be4:	541c                	lw	a5,40(s0)
    1be6:	8522                	mv	a0,s0
    1be8:	9782                	jalr	a5
    1bea:	442c                	lw	a1,72(s0)
    1bec:	cd85                	beqz	a1,1c24 <_reclaim_reent+0xc8>
    1bee:	8522                	mv	a0,s0
    1bf0:	4462                	lw	s0,24(sp)
    1bf2:	40f2                	lw	ra,28(sp)
    1bf4:	44d2                	lw	s1,20(sp)
    1bf6:	4942                	lw	s2,16(sp)
    1bf8:	49b2                	lw	s3,12(sp)
    1bfa:	6105                	addi	sp,sp,32
    1bfc:	bf3d                	j	1b3a <cleanup_glue>
    1bfe:	95a6                	add	a1,a1,s1
    1c00:	418c                	lw	a1,0(a1)
    1c02:	e991                	bnez	a1,1c16 <_reclaim_reent+0xba>
    1c04:	0491                	addi	s1,s1,4
    1c06:	505c                	lw	a5,36(s0)
    1c08:	47cc                	lw	a1,12(a5)
    1c0a:	ff249ae3          	bne	s1,s2,1bfe <_reclaim_reent+0xa2>
    1c0e:	8522                	mv	a0,s0
    1c10:	0c5000ef          	jal	ra,24d4 <_free_r>
    1c14:	bf85                	j	1b84 <_reclaim_reent+0x28>
    1c16:	0005a983          	lw	s3,0(a1)
    1c1a:	8522                	mv	a0,s0
    1c1c:	0b9000ef          	jal	ra,24d4 <_free_r>
    1c20:	85ce                	mv	a1,s3
    1c22:	b7c5                	j	1c02 <_reclaim_reent+0xa6>
    1c24:	40f2                	lw	ra,28(sp)
    1c26:	4462                	lw	s0,24(sp)
    1c28:	44d2                	lw	s1,20(sp)
    1c2a:	4942                	lw	s2,16(sp)
    1c2c:	49b2                	lw	s3,12(sp)
    1c2e:	6105                	addi	sp,sp,32
    1c30:	8082                	ret
    1c32:	8082                	ret

00001c34 <__swbuf_r>:
    1c34:	1101                	addi	sp,sp,-32
    1c36:	cc22                	sw	s0,24(sp)
    1c38:	ca26                	sw	s1,20(sp)
    1c3a:	c84a                	sw	s2,16(sp)
    1c3c:	ce06                	sw	ra,28(sp)
    1c3e:	c64e                	sw	s3,12(sp)
    1c40:	84aa                	mv	s1,a0
    1c42:	892e                	mv	s2,a1
    1c44:	8432                	mv	s0,a2
    1c46:	c501                	beqz	a0,1c4e <__swbuf_r+0x1a>
    1c48:	4d1c                	lw	a5,24(a0)
    1c4a:	e391                	bnez	a5,1c4e <__swbuf_r+0x1a>
    1c4c:	2b61                	jal	21e4 <__sinit>
    1c4e:	000807b7          	lui	a5,0x80
    1c52:	3d478793          	addi	a5,a5,980 # 803d4 <__sf_fake_stdin>
    1c56:	06f41963          	bne	s0,a5,1cc8 <__swbuf_r+0x94>
    1c5a:	40c0                	lw	s0,4(s1)
    1c5c:	4c1c                	lw	a5,24(s0)
    1c5e:	c41c                	sw	a5,8(s0)
    1c60:	00c45783          	lhu	a5,12(s0)
    1c64:	8ba1                	andi	a5,a5,8
    1c66:	c3c9                	beqz	a5,1ce8 <__swbuf_r+0xb4>
    1c68:	481c                	lw	a5,16(s0)
    1c6a:	cfbd                	beqz	a5,1ce8 <__swbuf_r+0xb4>
    1c6c:	481c                	lw	a5,16(s0)
    1c6e:	4008                	lw	a0,0(s0)
    1c70:	0ff97993          	zext.b	s3,s2
    1c74:	0ff97913          	zext.b	s2,s2
    1c78:	8d1d                	sub	a0,a0,a5
    1c7a:	485c                	lw	a5,20(s0)
    1c7c:	00f54663          	blt	a0,a5,1c88 <__swbuf_r+0x54>
    1c80:	85a2                	mv	a1,s0
    1c82:	8526                	mv	a0,s1
    1c84:	2931                	jal	20a0 <_fflush_r>
    1c86:	e52d                	bnez	a0,1cf0 <__swbuf_r+0xbc>
    1c88:	441c                	lw	a5,8(s0)
    1c8a:	0505                	addi	a0,a0,1
    1c8c:	17fd                	addi	a5,a5,-1
    1c8e:	c41c                	sw	a5,8(s0)
    1c90:	401c                	lw	a5,0(s0)
    1c92:	00178713          	addi	a4,a5,1
    1c96:	c018                	sw	a4,0(s0)
    1c98:	01378023          	sb	s3,0(a5)
    1c9c:	485c                	lw	a5,20(s0)
    1c9e:	00a78963          	beq	a5,a0,1cb0 <__swbuf_r+0x7c>
    1ca2:	00c45783          	lhu	a5,12(s0)
    1ca6:	8b85                	andi	a5,a5,1
    1ca8:	cb81                	beqz	a5,1cb8 <__swbuf_r+0x84>
    1caa:	47a9                	li	a5,10
    1cac:	00f91663          	bne	s2,a5,1cb8 <__swbuf_r+0x84>
    1cb0:	85a2                	mv	a1,s0
    1cb2:	8526                	mv	a0,s1
    1cb4:	26f5                	jal	20a0 <_fflush_r>
    1cb6:	ed0d                	bnez	a0,1cf0 <__swbuf_r+0xbc>
    1cb8:	40f2                	lw	ra,28(sp)
    1cba:	4462                	lw	s0,24(sp)
    1cbc:	44d2                	lw	s1,20(sp)
    1cbe:	49b2                	lw	s3,12(sp)
    1cc0:	854a                	mv	a0,s2
    1cc2:	4942                	lw	s2,16(sp)
    1cc4:	6105                	addi	sp,sp,32
    1cc6:	8082                	ret
    1cc8:	000807b7          	lui	a5,0x80
    1ccc:	3f478793          	addi	a5,a5,1012 # 803f4 <__sf_fake_stdout>
    1cd0:	00f41463          	bne	s0,a5,1cd8 <__swbuf_r+0xa4>
    1cd4:	4480                	lw	s0,8(s1)
    1cd6:	b759                	j	1c5c <__swbuf_r+0x28>
    1cd8:	000807b7          	lui	a5,0x80
    1cdc:	3b478793          	addi	a5,a5,948 # 803b4 <__sf_fake_stderr>
    1ce0:	f6f41ee3          	bne	s0,a5,1c5c <__swbuf_r+0x28>
    1ce4:	44c0                	lw	s0,12(s1)
    1ce6:	bf9d                	j	1c5c <__swbuf_r+0x28>
    1ce8:	85a2                	mv	a1,s0
    1cea:	8526                	mv	a0,s1
    1cec:	2819                	jal	1d02 <__swsetup_r>
    1cee:	dd3d                	beqz	a0,1c6c <__swbuf_r+0x38>
    1cf0:	597d                	li	s2,-1
    1cf2:	b7d9                	j	1cb8 <__swbuf_r+0x84>

00001cf4 <__swbuf>:
    1cf4:	000807b7          	lui	a5,0x80
    1cf8:	862e                	mv	a2,a1
    1cfa:	85aa                	mv	a1,a0
    1cfc:	6107a503          	lw	a0,1552(a5) # 80610 <_impure_ptr>
    1d00:	bf15                	j	1c34 <__swbuf_r>

00001d02 <__swsetup_r>:
    1d02:	1141                	addi	sp,sp,-16
    1d04:	000807b7          	lui	a5,0x80
    1d08:	c226                	sw	s1,4(sp)
    1d0a:	6107a483          	lw	s1,1552(a5) # 80610 <_impure_ptr>
    1d0e:	c422                	sw	s0,8(sp)
    1d10:	c04a                	sw	s2,0(sp)
    1d12:	c606                	sw	ra,12(sp)
    1d14:	892a                	mv	s2,a0
    1d16:	842e                	mv	s0,a1
    1d18:	c489                	beqz	s1,1d22 <__swsetup_r+0x20>
    1d1a:	4c9c                	lw	a5,24(s1)
    1d1c:	e399                	bnez	a5,1d22 <__swsetup_r+0x20>
    1d1e:	8526                	mv	a0,s1
    1d20:	21d1                	jal	21e4 <__sinit>
    1d22:	000807b7          	lui	a5,0x80
    1d26:	3d478793          	addi	a5,a5,980 # 803d4 <__sf_fake_stdin>
    1d2a:	02f41763          	bne	s0,a5,1d58 <__swsetup_r+0x56>
    1d2e:	40c0                	lw	s0,4(s1)
    1d30:	00c41783          	lh	a5,12(s0)
    1d34:	01079713          	slli	a4,a5,0x10
    1d38:	0087f693          	andi	a3,a5,8
    1d3c:	8341                	srli	a4,a4,0x10
    1d3e:	eab5                	bnez	a3,1db2 <__swsetup_r+0xb0>
    1d40:	01077693          	andi	a3,a4,16
    1d44:	ea95                	bnez	a3,1d78 <__swsetup_r+0x76>
    1d46:	4725                	li	a4,9
    1d48:	00e92023          	sw	a4,0(s2)
    1d4c:	0407e793          	ori	a5,a5,64
    1d50:	00f41623          	sh	a5,12(s0)
    1d54:	557d                	li	a0,-1
    1d56:	a879                	j	1df4 <__swsetup_r+0xf2>
    1d58:	000807b7          	lui	a5,0x80
    1d5c:	3f478793          	addi	a5,a5,1012 # 803f4 <__sf_fake_stdout>
    1d60:	00f41463          	bne	s0,a5,1d68 <__swsetup_r+0x66>
    1d64:	4480                	lw	s0,8(s1)
    1d66:	b7e9                	j	1d30 <__swsetup_r+0x2e>
    1d68:	000807b7          	lui	a5,0x80
    1d6c:	3b478793          	addi	a5,a5,948 # 803b4 <__sf_fake_stderr>
    1d70:	fcf410e3          	bne	s0,a5,1d30 <__swsetup_r+0x2e>
    1d74:	44c0                	lw	s0,12(s1)
    1d76:	bf6d                	j	1d30 <__swsetup_r+0x2e>
    1d78:	8b11                	andi	a4,a4,4
    1d7a:	c715                	beqz	a4,1da6 <__swsetup_r+0xa4>
    1d7c:	584c                	lw	a1,52(s0)
    1d7e:	c991                	beqz	a1,1d92 <__swsetup_r+0x90>
    1d80:	04440793          	addi	a5,s0,68
    1d84:	00f58563          	beq	a1,a5,1d8e <__swsetup_r+0x8c>
    1d88:	854a                	mv	a0,s2
    1d8a:	74a000ef          	jal	ra,24d4 <_free_r>
    1d8e:	02042a23          	sw	zero,52(s0)
    1d92:	00c45783          	lhu	a5,12(s0)
    1d96:	00042223          	sw	zero,4(s0)
    1d9a:	fdb7f793          	andi	a5,a5,-37
    1d9e:	00f41623          	sh	a5,12(s0)
    1da2:	481c                	lw	a5,16(s0)
    1da4:	c01c                	sw	a5,0(s0)
    1da6:	00c45783          	lhu	a5,12(s0)
    1daa:	0087e793          	ori	a5,a5,8
    1dae:	00f41623          	sh	a5,12(s0)
    1db2:	481c                	lw	a5,16(s0)
    1db4:	ef81                	bnez	a5,1dcc <__swsetup_r+0xca>
    1db6:	00c45783          	lhu	a5,12(s0)
    1dba:	20000713          	li	a4,512
    1dbe:	2807f793          	andi	a5,a5,640
    1dc2:	00e78563          	beq	a5,a4,1dcc <__swsetup_r+0xca>
    1dc6:	85a2                	mv	a1,s0
    1dc8:	854a                	mv	a0,s2
    1dca:	2d85                	jal	243a <__smakebuf_r>
    1dcc:	00c41783          	lh	a5,12(s0)
    1dd0:	01079713          	slli	a4,a5,0x10
    1dd4:	0017f693          	andi	a3,a5,1
    1dd8:	8341                	srli	a4,a4,0x10
    1dda:	c29d                	beqz	a3,1e00 <__swsetup_r+0xfe>
    1ddc:	4854                	lw	a3,20(s0)
    1dde:	00042423          	sw	zero,8(s0)
    1de2:	40d006b3          	neg	a3,a3
    1de6:	cc14                	sw	a3,24(s0)
    1de8:	4814                	lw	a3,16(s0)
    1dea:	4501                	li	a0,0
    1dec:	e681                	bnez	a3,1df4 <__swsetup_r+0xf2>
    1dee:	08077713          	andi	a4,a4,128
    1df2:	ff29                	bnez	a4,1d4c <__swsetup_r+0x4a>
    1df4:	40b2                	lw	ra,12(sp)
    1df6:	4422                	lw	s0,8(sp)
    1df8:	4492                	lw	s1,4(sp)
    1dfa:	4902                	lw	s2,0(sp)
    1dfc:	0141                	addi	sp,sp,16
    1dfe:	8082                	ret
    1e00:	00277693          	andi	a3,a4,2
    1e04:	4601                	li	a2,0
    1e06:	e291                	bnez	a3,1e0a <__swsetup_r+0x108>
    1e08:	4850                	lw	a2,20(s0)
    1e0a:	c410                	sw	a2,8(s0)
    1e0c:	bff1                	j	1de8 <__swsetup_r+0xe6>

00001e0e <__register_exitproc>:
    1e0e:	00080837          	lui	a6,0x80
    1e12:	62082783          	lw	a5,1568(a6) # 80620 <_global_atexit>
    1e16:	88aa                	mv	a7,a0
    1e18:	e39d                	bnez	a5,1e3e <__register_exitproc+0x30>
    1e1a:	00080737          	lui	a4,0x80
    1e1e:	73870513          	addi	a0,a4,1848 # 80738 <_global_atexit0>
    1e22:	62a82023          	sw	a0,1568(a6)
    1e26:	00000313          	li	t1,0
    1e2a:	73870793          	addi	a5,a4,1848
    1e2e:	00030863          	beqz	t1,1e3e <__register_exitproc+0x30>
    1e32:	00002783          	lw	a5,0(zero) # 0 <__vector_start>
    1e36:	08f52423          	sw	a5,136(a0)
    1e3a:	73870793          	addi	a5,a4,1848
    1e3e:	43d8                	lw	a4,4(a5)
    1e40:	487d                	li	a6,31
    1e42:	557d                	li	a0,-1
    1e44:	04e84663          	blt	a6,a4,1e90 <__register_exitproc+0x82>
    1e48:	02088d63          	beqz	a7,1e82 <__register_exitproc+0x74>
    1e4c:	0887a803          	lw	a6,136(a5)
    1e50:	04080063          	beqz	a6,1e90 <__register_exitproc+0x82>
    1e54:	00271513          	slli	a0,a4,0x2
    1e58:	9542                	add	a0,a0,a6
    1e5a:	c110                	sw	a2,0(a0)
    1e5c:	10082303          	lw	t1,256(a6)
    1e60:	4605                	li	a2,1
    1e62:	00e61633          	sll	a2,a2,a4
    1e66:	00c36333          	or	t1,t1,a2
    1e6a:	10682023          	sw	t1,256(a6)
    1e6e:	08d52023          	sw	a3,128(a0)
    1e72:	4689                	li	a3,2
    1e74:	00d89763          	bne	a7,a3,1e82 <__register_exitproc+0x74>
    1e78:	10482683          	lw	a3,260(a6)
    1e7c:	8ed1                	or	a3,a3,a2
    1e7e:	10d82223          	sw	a3,260(a6)
    1e82:	00170693          	addi	a3,a4,1
    1e86:	070a                	slli	a4,a4,0x2
    1e88:	c3d4                	sw	a3,4(a5)
    1e8a:	97ba                	add	a5,a5,a4
    1e8c:	c78c                	sw	a1,8(a5)
    1e8e:	4501                	li	a0,0
    1e90:	8082                	ret

00001e92 <__call_exitprocs>:
    1e92:	7179                	addi	sp,sp,-48
    1e94:	c85a                	sw	s6,16(sp)
    1e96:	00080b37          	lui	s6,0x80
    1e9a:	ca56                	sw	s5,20(sp)
    1e9c:	c65e                	sw	s7,12(sp)
    1e9e:	c462                	sw	s8,8(sp)
    1ea0:	d606                	sw	ra,44(sp)
    1ea2:	d422                	sw	s0,40(sp)
    1ea4:	d226                	sw	s1,36(sp)
    1ea6:	d04a                	sw	s2,32(sp)
    1ea8:	ce4e                	sw	s3,28(sp)
    1eaa:	cc52                	sw	s4,24(sp)
    1eac:	c266                	sw	s9,4(sp)
    1eae:	8baa                	mv	s7,a0
    1eb0:	8aae                	mv	s5,a1
    1eb2:	620b0b13          	addi	s6,s6,1568 # 80620 <_global_atexit>
    1eb6:	4c05                	li	s8,1
    1eb8:	000b2483          	lw	s1,0(s6)
    1ebc:	cc81                	beqz	s1,1ed4 <__call_exitprocs+0x42>
    1ebe:	40c0                	lw	s0,4(s1)
    1ec0:	0884a983          	lw	s3,136(s1)
    1ec4:	fff40913          	addi	s2,s0,-1
    1ec8:	040a                	slli	s0,s0,0x2
    1eca:	00898a33          	add	s4,s3,s0
    1ece:	9426                	add	s0,s0,s1
    1ed0:	00095f63          	bgez	s2,1eee <__call_exitprocs+0x5c>
    1ed4:	50b2                	lw	ra,44(sp)
    1ed6:	5422                	lw	s0,40(sp)
    1ed8:	5492                	lw	s1,36(sp)
    1eda:	5902                	lw	s2,32(sp)
    1edc:	49f2                	lw	s3,28(sp)
    1ede:	4a62                	lw	s4,24(sp)
    1ee0:	4ad2                	lw	s5,20(sp)
    1ee2:	4b42                	lw	s6,16(sp)
    1ee4:	4bb2                	lw	s7,12(sp)
    1ee6:	4c22                	lw	s8,8(sp)
    1ee8:	4c92                	lw	s9,4(sp)
    1eea:	6145                	addi	sp,sp,48
    1eec:	8082                	ret
    1eee:	000a8c63          	beqz	s5,1f06 <__call_exitprocs+0x74>
    1ef2:	00099663          	bnez	s3,1efe <__call_exitprocs+0x6c>
    1ef6:	197d                	addi	s2,s2,-1
    1ef8:	1a71                	addi	s4,s4,-4
    1efa:	1471                	addi	s0,s0,-4
    1efc:	bfd1                	j	1ed0 <__call_exitprocs+0x3e>
    1efe:	07ca2783          	lw	a5,124(s4)
    1f02:	ff579ae3          	bne	a5,s5,1ef6 <__call_exitprocs+0x64>
    1f06:	40d8                	lw	a4,4(s1)
    1f08:	405c                	lw	a5,4(s0)
    1f0a:	177d                	addi	a4,a4,-1
    1f0c:	03271863          	bne	a4,s2,1f3c <__call_exitprocs+0xaa>
    1f10:	0124a223          	sw	s2,4(s1)
    1f14:	d3ed                	beqz	a5,1ef6 <__call_exitprocs+0x64>
    1f16:	0044ac83          	lw	s9,4(s1)
    1f1a:	00098863          	beqz	s3,1f2a <__call_exitprocs+0x98>
    1f1e:	1009a683          	lw	a3,256(s3)
    1f22:	012c1733          	sll	a4,s8,s2
    1f26:	8ef9                	and	a3,a3,a4
    1f28:	ee89                	bnez	a3,1f42 <__call_exitprocs+0xb0>
    1f2a:	9782                	jalr	a5
    1f2c:	40d8                	lw	a4,4(s1)
    1f2e:	000b2783          	lw	a5,0(s6)
    1f32:	f99713e3          	bne	a4,s9,1eb8 <__call_exitprocs+0x26>
    1f36:	fcf480e3          	beq	s1,a5,1ef6 <__call_exitprocs+0x64>
    1f3a:	bfbd                	j	1eb8 <__call_exitprocs+0x26>
    1f3c:	00042223          	sw	zero,4(s0)
    1f40:	bfd1                	j	1f14 <__call_exitprocs+0x82>
    1f42:	1049a683          	lw	a3,260(s3)
    1f46:	ffca2583          	lw	a1,-4(s4)
    1f4a:	8f75                	and	a4,a4,a3
    1f4c:	e701                	bnez	a4,1f54 <__call_exitprocs+0xc2>
    1f4e:	855e                	mv	a0,s7
    1f50:	9782                	jalr	a5
    1f52:	bfe9                	j	1f2c <__call_exitprocs+0x9a>
    1f54:	852e                	mv	a0,a1
    1f56:	9782                	jalr	a5
    1f58:	bfd1                	j	1f2c <__call_exitprocs+0x9a>

00001f5a <__sflush_r>:
    1f5a:	00c5d783          	lhu	a5,12(a1)
    1f5e:	1101                	addi	sp,sp,-32
    1f60:	cc22                	sw	s0,24(sp)
    1f62:	ca26                	sw	s1,20(sp)
    1f64:	ce06                	sw	ra,28(sp)
    1f66:	c84a                	sw	s2,16(sp)
    1f68:	c64e                	sw	s3,12(sp)
    1f6a:	0087f713          	andi	a4,a5,8
    1f6e:	84aa                	mv	s1,a0
    1f70:	842e                	mv	s0,a1
    1f72:	e375                	bnez	a4,2056 <__sflush_r+0xfc>
    1f74:	41d8                	lw	a4,4(a1)
    1f76:	00e04763          	bgtz	a4,1f84 <__sflush_r+0x2a>
    1f7a:	41b8                	lw	a4,64(a1)
    1f7c:	00e04463          	bgtz	a4,1f84 <__sflush_r+0x2a>
    1f80:	4501                	li	a0,0
    1f82:	a875                	j	203e <__sflush_r+0xe4>
    1f84:	5458                	lw	a4,44(s0)
    1f86:	df6d                	beqz	a4,1f80 <__sflush_r+0x26>
    1f88:	6685                	lui	a3,0x1
    1f8a:	0004a903          	lw	s2,0(s1)
    1f8e:	8ff5                	and	a5,a5,a3
    1f90:	0004a023          	sw	zero,0(s1)
    1f94:	500c                	lw	a1,32(s0)
    1f96:	cfa5                	beqz	a5,200e <__sflush_r+0xb4>
    1f98:	4868                	lw	a0,84(s0)
    1f9a:	00c45783          	lhu	a5,12(s0)
    1f9e:	8b91                	andi	a5,a5,4
    1fa0:	c799                	beqz	a5,1fae <__sflush_r+0x54>
    1fa2:	405c                	lw	a5,4(s0)
    1fa4:	8d1d                	sub	a0,a0,a5
    1fa6:	585c                	lw	a5,52(s0)
    1fa8:	c399                	beqz	a5,1fae <__sflush_r+0x54>
    1faa:	403c                	lw	a5,64(s0)
    1fac:	8d1d                	sub	a0,a0,a5
    1fae:	545c                	lw	a5,44(s0)
    1fb0:	500c                	lw	a1,32(s0)
    1fb2:	862a                	mv	a2,a0
    1fb4:	4681                	li	a3,0
    1fb6:	8526                	mv	a0,s1
    1fb8:	9782                	jalr	a5
    1fba:	57fd                	li	a5,-1
    1fbc:	00c45703          	lhu	a4,12(s0)
    1fc0:	00f51d63          	bne	a0,a5,1fda <__sflush_r+0x80>
    1fc4:	4094                	lw	a3,0(s1)
    1fc6:	47f5                	li	a5,29
    1fc8:	08d7e263          	bltu	a5,a3,204c <__sflush_r+0xf2>
    1fcc:	dfc007b7          	lui	a5,0xdfc00
    1fd0:	17f9                	addi	a5,a5,-2
    1fd2:	40d7d7b3          	sra	a5,a5,a3
    1fd6:	8b85                	andi	a5,a5,1
    1fd8:	ebb5                	bnez	a5,204c <__sflush_r+0xf2>
    1fda:	481c                	lw	a5,16(s0)
    1fdc:	00042223          	sw	zero,4(s0)
    1fe0:	c01c                	sw	a5,0(s0)
    1fe2:	6785                	lui	a5,0x1
    1fe4:	8f7d                	and	a4,a4,a5
    1fe6:	c719                	beqz	a4,1ff4 <__sflush_r+0x9a>
    1fe8:	57fd                	li	a5,-1
    1fea:	00f51463          	bne	a0,a5,1ff2 <__sflush_r+0x98>
    1fee:	409c                	lw	a5,0(s1)
    1ff0:	e391                	bnez	a5,1ff4 <__sflush_r+0x9a>
    1ff2:	c868                	sw	a0,84(s0)
    1ff4:	584c                	lw	a1,52(s0)
    1ff6:	0124a023          	sw	s2,0(s1)
    1ffa:	d1d9                	beqz	a1,1f80 <__sflush_r+0x26>
    1ffc:	04440793          	addi	a5,s0,68
    2000:	00f58463          	beq	a1,a5,2008 <__sflush_r+0xae>
    2004:	8526                	mv	a0,s1
    2006:	21f9                	jal	24d4 <_free_r>
    2008:	02042a23          	sw	zero,52(s0)
    200c:	bf95                	j	1f80 <__sflush_r+0x26>
    200e:	4685                	li	a3,1
    2010:	4601                	li	a2,0
    2012:	8526                	mv	a0,s1
    2014:	9702                	jalr	a4
    2016:	57fd                	li	a5,-1
    2018:	f8f511e3          	bne	a0,a5,1f9a <__sflush_r+0x40>
    201c:	409c                	lw	a5,0(s1)
    201e:	dfb5                	beqz	a5,1f9a <__sflush_r+0x40>
    2020:	4775                	li	a4,29
    2022:	00e78563          	beq	a5,a4,202c <__sflush_r+0xd2>
    2026:	4759                	li	a4,22
    2028:	00e79563          	bne	a5,a4,2032 <__sflush_r+0xd8>
    202c:	0124a023          	sw	s2,0(s1)
    2030:	bf81                	j	1f80 <__sflush_r+0x26>
    2032:	00c45783          	lhu	a5,12(s0)
    2036:	0407e793          	ori	a5,a5,64
    203a:	00f41623          	sh	a5,12(s0)
    203e:	40f2                	lw	ra,28(sp)
    2040:	4462                	lw	s0,24(sp)
    2042:	44d2                	lw	s1,20(sp)
    2044:	4942                	lw	s2,16(sp)
    2046:	49b2                	lw	s3,12(sp)
    2048:	6105                	addi	sp,sp,32
    204a:	8082                	ret
    204c:	04076713          	ori	a4,a4,64
    2050:	00e41623          	sh	a4,12(s0)
    2054:	b7ed                	j	203e <__sflush_r+0xe4>
    2056:	0105a983          	lw	s3,16(a1)
    205a:	f20983e3          	beqz	s3,1f80 <__sflush_r+0x26>
    205e:	0005a903          	lw	s2,0(a1)
    2062:	8b8d                	andi	a5,a5,3
    2064:	0135a023          	sw	s3,0(a1)
    2068:	41390933          	sub	s2,s2,s3
    206c:	4701                	li	a4,0
    206e:	e391                	bnez	a5,2072 <__sflush_r+0x118>
    2070:	49d8                	lw	a4,20(a1)
    2072:	c418                	sw	a4,8(s0)
    2074:	f12056e3          	blez	s2,1f80 <__sflush_r+0x26>
    2078:	541c                	lw	a5,40(s0)
    207a:	500c                	lw	a1,32(s0)
    207c:	86ca                	mv	a3,s2
    207e:	864e                	mv	a2,s3
    2080:	8526                	mv	a0,s1
    2082:	9782                	jalr	a5
    2084:	00a04a63          	bgtz	a0,2098 <__sflush_r+0x13e>
    2088:	00c45783          	lhu	a5,12(s0)
    208c:	557d                	li	a0,-1
    208e:	0407e793          	ori	a5,a5,64
    2092:	00f41623          	sh	a5,12(s0)
    2096:	b765                	j	203e <__sflush_r+0xe4>
    2098:	99aa                	add	s3,s3,a0
    209a:	40a90933          	sub	s2,s2,a0
    209e:	bfd9                	j	2074 <__sflush_r+0x11a>

000020a0 <_fflush_r>:
    20a0:	499c                	lw	a5,16(a1)
    20a2:	cfb9                	beqz	a5,2100 <_fflush_r+0x60>
    20a4:	1101                	addi	sp,sp,-32
    20a6:	cc22                	sw	s0,24(sp)
    20a8:	ce06                	sw	ra,28(sp)
    20aa:	842a                	mv	s0,a0
    20ac:	c511                	beqz	a0,20b8 <_fflush_r+0x18>
    20ae:	4d1c                	lw	a5,24(a0)
    20b0:	e781                	bnez	a5,20b8 <_fflush_r+0x18>
    20b2:	c62e                	sw	a1,12(sp)
    20b4:	2a05                	jal	21e4 <__sinit>
    20b6:	45b2                	lw	a1,12(sp)
    20b8:	000807b7          	lui	a5,0x80
    20bc:	3d478793          	addi	a5,a5,980 # 803d4 <__sf_fake_stdin>
    20c0:	00f59b63          	bne	a1,a5,20d6 <_fflush_r+0x36>
    20c4:	404c                	lw	a1,4(s0)
    20c6:	00c59783          	lh	a5,12(a1)
    20ca:	c795                	beqz	a5,20f6 <_fflush_r+0x56>
    20cc:	8522                	mv	a0,s0
    20ce:	4462                	lw	s0,24(sp)
    20d0:	40f2                	lw	ra,28(sp)
    20d2:	6105                	addi	sp,sp,32
    20d4:	b559                	j	1f5a <__sflush_r>
    20d6:	000807b7          	lui	a5,0x80
    20da:	3f478793          	addi	a5,a5,1012 # 803f4 <__sf_fake_stdout>
    20de:	00f59463          	bne	a1,a5,20e6 <_fflush_r+0x46>
    20e2:	440c                	lw	a1,8(s0)
    20e4:	b7cd                	j	20c6 <_fflush_r+0x26>
    20e6:	000807b7          	lui	a5,0x80
    20ea:	3b478793          	addi	a5,a5,948 # 803b4 <__sf_fake_stderr>
    20ee:	fcf59ce3          	bne	a1,a5,20c6 <_fflush_r+0x26>
    20f2:	444c                	lw	a1,12(s0)
    20f4:	bfc9                	j	20c6 <_fflush_r+0x26>
    20f6:	40f2                	lw	ra,28(sp)
    20f8:	4462                	lw	s0,24(sp)
    20fa:	4501                	li	a0,0
    20fc:	6105                	addi	sp,sp,32
    20fe:	8082                	ret
    2100:	4501                	li	a0,0
    2102:	8082                	ret

00002104 <fflush>:
    2104:	85aa                	mv	a1,a0
    2106:	e909                	bnez	a0,2118 <fflush+0x14>
    2108:	000807b7          	lui	a5,0x80
    210c:	6087a503          	lw	a0,1544(a5) # 80608 <_global_impure_ptr>
    2110:	6589                	lui	a1,0x2
    2112:	0a058593          	addi	a1,a1,160 # 20a0 <_fflush_r>
    2116:	acb9                	j	2374 <_fwalk_reent>
    2118:	000807b7          	lui	a5,0x80
    211c:	6107a503          	lw	a0,1552(a5) # 80610 <_impure_ptr>
    2120:	b741                	j	20a0 <_fflush_r>

00002122 <__fp_lock>:
    2122:	4501                	li	a0,0
    2124:	8082                	ret

00002126 <std>:
    2126:	1141                	addi	sp,sp,-16
    2128:	c422                	sw	s0,8(sp)
    212a:	c606                	sw	ra,12(sp)
    212c:	842a                	mv	s0,a0
    212e:	00b51623          	sh	a1,12(a0)
    2132:	00c51723          	sh	a2,14(a0)
    2136:	00052023          	sw	zero,0(a0)
    213a:	00052223          	sw	zero,4(a0)
    213e:	00052423          	sw	zero,8(a0)
    2142:	06052223          	sw	zero,100(a0)
    2146:	00052823          	sw	zero,16(a0)
    214a:	00052a23          	sw	zero,20(a0)
    214e:	00052c23          	sw	zero,24(a0)
    2152:	4621                	li	a2,8
    2154:	4581                	li	a1,0
    2156:	05c50513          	addi	a0,a0,92
    215a:	8e7ff0ef          	jal	ra,1a40 <memset>
    215e:	6789                	lui	a5,0x2
    2160:	68278793          	addi	a5,a5,1666 # 2682 <__sread>
    2164:	d05c                	sw	a5,36(s0)
    2166:	6789                	lui	a5,0x2
    2168:	6b678793          	addi	a5,a5,1718 # 26b6 <__swrite>
    216c:	d41c                	sw	a5,40(s0)
    216e:	6789                	lui	a5,0x2
    2170:	70478793          	addi	a5,a5,1796 # 2704 <__sseek>
    2174:	d45c                	sw	a5,44(s0)
    2176:	6789                	lui	a5,0x2
    2178:	73a78793          	addi	a5,a5,1850 # 273a <__sclose>
    217c:	40b2                	lw	ra,12(sp)
    217e:	d000                	sw	s0,32(s0)
    2180:	d81c                	sw	a5,48(s0)
    2182:	4422                	lw	s0,8(sp)
    2184:	0141                	addi	sp,sp,16
    2186:	8082                	ret

00002188 <_cleanup_r>:
    2188:	6589                	lui	a1,0x2
    218a:	0a058593          	addi	a1,a1,160 # 20a0 <_fflush_r>
    218e:	a2dd                	j	2374 <_fwalk_reent>

00002190 <__fp_unlock>:
    2190:	4501                	li	a0,0
    2192:	8082                	ret

00002194 <__sfmoreglue>:
    2194:	1141                	addi	sp,sp,-16
    2196:	c226                	sw	s1,4(sp)
    2198:	06800793          	li	a5,104
    219c:	fff58493          	addi	s1,a1,-1
    21a0:	02f484b3          	mul	s1,s1,a5
    21a4:	c04a                	sw	s2,0(sp)
    21a6:	892e                	mv	s2,a1
    21a8:	c422                	sw	s0,8(sp)
    21aa:	c606                	sw	ra,12(sp)
    21ac:	07448593          	addi	a1,s1,116
    21b0:	26d9                	jal	2576 <_malloc_r>
    21b2:	842a                	mv	s0,a0
    21b4:	cd01                	beqz	a0,21cc <__sfmoreglue+0x38>
    21b6:	00052023          	sw	zero,0(a0)
    21ba:	01252223          	sw	s2,4(a0)
    21be:	0531                	addi	a0,a0,12
    21c0:	c408                	sw	a0,8(s0)
    21c2:	06848613          	addi	a2,s1,104
    21c6:	4581                	li	a1,0
    21c8:	879ff0ef          	jal	ra,1a40 <memset>
    21cc:	40b2                	lw	ra,12(sp)
    21ce:	8522                	mv	a0,s0
    21d0:	4422                	lw	s0,8(sp)
    21d2:	4492                	lw	s1,4(sp)
    21d4:	4902                	lw	s2,0(sp)
    21d6:	0141                	addi	sp,sp,16
    21d8:	8082                	ret

000021da <_cleanup>:
    21da:	000807b7          	lui	a5,0x80
    21de:	6087a503          	lw	a0,1544(a5) # 80608 <_global_impure_ptr>
    21e2:	b75d                	j	2188 <_cleanup_r>

000021e4 <__sinit>:
    21e4:	4d1c                	lw	a5,24(a0)
    21e6:	e3b5                	bnez	a5,224a <__sinit+0x66>
    21e8:	1141                	addi	sp,sp,-16
    21ea:	6789                	lui	a5,0x2
    21ec:	c422                	sw	s0,8(sp)
    21ee:	c606                	sw	ra,12(sp)
    21f0:	18878793          	addi	a5,a5,392 # 2188 <_cleanup_r>
    21f4:	d51c                	sw	a5,40(a0)
    21f6:	000807b7          	lui	a5,0x80
    21fa:	6087a783          	lw	a5,1544(a5) # 80608 <_global_impure_ptr>
    21fe:	04052423          	sw	zero,72(a0)
    2202:	04052623          	sw	zero,76(a0)
    2206:	04052823          	sw	zero,80(a0)
    220a:	842a                	mv	s0,a0
    220c:	00f51463          	bne	a0,a5,2214 <__sinit+0x30>
    2210:	4785                	li	a5,1
    2212:	cd1c                	sw	a5,24(a0)
    2214:	8522                	mv	a0,s0
    2216:	281d                	jal	224c <__sfp>
    2218:	c048                	sw	a0,4(s0)
    221a:	8522                	mv	a0,s0
    221c:	2805                	jal	224c <__sfp>
    221e:	c408                	sw	a0,8(s0)
    2220:	8522                	mv	a0,s0
    2222:	202d                	jal	224c <__sfp>
    2224:	c448                	sw	a0,12(s0)
    2226:	4048                	lw	a0,4(s0)
    2228:	4601                	li	a2,0
    222a:	4591                	li	a1,4
    222c:	3ded                	jal	2126 <std>
    222e:	4408                	lw	a0,8(s0)
    2230:	4605                	li	a2,1
    2232:	45a5                	li	a1,9
    2234:	3dcd                	jal	2126 <std>
    2236:	4448                	lw	a0,12(s0)
    2238:	4609                	li	a2,2
    223a:	45c9                	li	a1,18
    223c:	35ed                	jal	2126 <std>
    223e:	4785                	li	a5,1
    2240:	40b2                	lw	ra,12(sp)
    2242:	cc1c                	sw	a5,24(s0)
    2244:	4422                	lw	s0,8(sp)
    2246:	0141                	addi	sp,sp,16
    2248:	8082                	ret
    224a:	8082                	ret

0000224c <__sfp>:
    224c:	1141                	addi	sp,sp,-16
    224e:	000807b7          	lui	a5,0x80
    2252:	c226                	sw	s1,4(sp)
    2254:	6087a483          	lw	s1,1544(a5) # 80608 <_global_impure_ptr>
    2258:	c04a                	sw	s2,0(sp)
    225a:	c606                	sw	ra,12(sp)
    225c:	4c9c                	lw	a5,24(s1)
    225e:	c422                	sw	s0,8(sp)
    2260:	892a                	mv	s2,a0
    2262:	e399                	bnez	a5,2268 <__sfp+0x1c>
    2264:	8526                	mv	a0,s1
    2266:	3fbd                	jal	21e4 <__sinit>
    2268:	04848493          	addi	s1,s1,72
    226c:	4480                	lw	s0,8(s1)
    226e:	40dc                	lw	a5,4(s1)
    2270:	17fd                	addi	a5,a5,-1
    2272:	0007d663          	bgez	a5,227e <__sfp+0x32>
    2276:	409c                	lw	a5,0(s1)
    2278:	cfb9                	beqz	a5,22d6 <__sfp+0x8a>
    227a:	4084                	lw	s1,0(s1)
    227c:	bfc5                	j	226c <__sfp+0x20>
    227e:	00c41703          	lh	a4,12(s0)
    2282:	e739                	bnez	a4,22d0 <__sfp+0x84>
    2284:	77c1                	lui	a5,0xffff0
    2286:	0785                	addi	a5,a5,1
    2288:	06042223          	sw	zero,100(s0)
    228c:	00042023          	sw	zero,0(s0)
    2290:	00042223          	sw	zero,4(s0)
    2294:	00042423          	sw	zero,8(s0)
    2298:	c45c                	sw	a5,12(s0)
    229a:	00042823          	sw	zero,16(s0)
    229e:	00042a23          	sw	zero,20(s0)
    22a2:	00042c23          	sw	zero,24(s0)
    22a6:	4621                	li	a2,8
    22a8:	4581                	li	a1,0
    22aa:	05c40513          	addi	a0,s0,92
    22ae:	f92ff0ef          	jal	ra,1a40 <memset>
    22b2:	02042a23          	sw	zero,52(s0)
    22b6:	02042c23          	sw	zero,56(s0)
    22ba:	04042423          	sw	zero,72(s0)
    22be:	04042623          	sw	zero,76(s0)
    22c2:	40b2                	lw	ra,12(sp)
    22c4:	8522                	mv	a0,s0
    22c6:	4422                	lw	s0,8(sp)
    22c8:	4492                	lw	s1,4(sp)
    22ca:	4902                	lw	s2,0(sp)
    22cc:	0141                	addi	sp,sp,16
    22ce:	8082                	ret
    22d0:	06840413          	addi	s0,s0,104
    22d4:	bf71                	j	2270 <__sfp+0x24>
    22d6:	4591                	li	a1,4
    22d8:	854a                	mv	a0,s2
    22da:	3d6d                	jal	2194 <__sfmoreglue>
    22dc:	c088                	sw	a0,0(s1)
    22de:	842a                	mv	s0,a0
    22e0:	fd49                	bnez	a0,227a <__sfp+0x2e>
    22e2:	47b1                	li	a5,12
    22e4:	00f92023          	sw	a5,0(s2)
    22e8:	bfe9                	j	22c2 <__sfp+0x76>

000022ea <__sfp_lock_acquire>:
    22ea:	8082                	ret

000022ec <__sfp_lock_release>:
    22ec:	8082                	ret

000022ee <__sinit_lock_acquire>:
    22ee:	8082                	ret

000022f0 <__sinit_lock_release>:
    22f0:	8082                	ret

000022f2 <__fp_lock_all>:
    22f2:	000807b7          	lui	a5,0x80
    22f6:	6107a503          	lw	a0,1552(a5) # 80610 <_impure_ptr>
    22fa:	6589                	lui	a1,0x2
    22fc:	12258593          	addi	a1,a1,290 # 2122 <__fp_lock>
    2300:	a809                	j	2312 <_fwalk>

00002302 <__fp_unlock_all>:
    2302:	000807b7          	lui	a5,0x80
    2306:	6107a503          	lw	a0,1552(a5) # 80610 <_impure_ptr>
    230a:	6589                	lui	a1,0x2
    230c:	19058593          	addi	a1,a1,400 # 2190 <__fp_unlock>
    2310:	a009                	j	2312 <_fwalk>

00002312 <_fwalk>:
    2312:	1101                	addi	sp,sp,-32
    2314:	cc22                	sw	s0,24(sp)
    2316:	c84a                	sw	s2,16(sp)
    2318:	c64e                	sw	s3,12(sp)
    231a:	c256                	sw	s5,4(sp)
    231c:	c05a                	sw	s6,0(sp)
    231e:	ce06                	sw	ra,28(sp)
    2320:	ca26                	sw	s1,20(sp)
    2322:	c452                	sw	s4,8(sp)
    2324:	89ae                	mv	s3,a1
    2326:	04850413          	addi	s0,a0,72
    232a:	4901                	li	s2,0
    232c:	4a85                	li	s5,1
    232e:	5b7d                	li	s6,-1
    2330:	4404                	lw	s1,8(s0)
    2332:	00442a03          	lw	s4,4(s0)
    2336:	1a7d                	addi	s4,s4,-1
    2338:	000a5f63          	bgez	s4,2356 <_fwalk+0x44>
    233c:	4000                	lw	s0,0(s0)
    233e:	f86d                	bnez	s0,2330 <_fwalk+0x1e>
    2340:	40f2                	lw	ra,28(sp)
    2342:	4462                	lw	s0,24(sp)
    2344:	44d2                	lw	s1,20(sp)
    2346:	49b2                	lw	s3,12(sp)
    2348:	4a22                	lw	s4,8(sp)
    234a:	4a92                	lw	s5,4(sp)
    234c:	4b02                	lw	s6,0(sp)
    234e:	854a                	mv	a0,s2
    2350:	4942                	lw	s2,16(sp)
    2352:	6105                	addi	sp,sp,32
    2354:	8082                	ret
    2356:	00c4d783          	lhu	a5,12(s1)
    235a:	00fafa63          	bgeu	s5,a5,236e <_fwalk+0x5c>
    235e:	00e49783          	lh	a5,14(s1)
    2362:	01678663          	beq	a5,s6,236e <_fwalk+0x5c>
    2366:	8526                	mv	a0,s1
    2368:	9982                	jalr	s3
    236a:	00a96933          	or	s2,s2,a0
    236e:	06848493          	addi	s1,s1,104
    2372:	b7d1                	j	2336 <_fwalk+0x24>

00002374 <_fwalk_reent>:
    2374:	7179                	addi	sp,sp,-48
    2376:	d422                	sw	s0,40(sp)
    2378:	d04a                	sw	s2,32(sp)
    237a:	ce4e                	sw	s3,28(sp)
    237c:	cc52                	sw	s4,24(sp)
    237e:	c85a                	sw	s6,16(sp)
    2380:	c65e                	sw	s7,12(sp)
    2382:	d606                	sw	ra,44(sp)
    2384:	d226                	sw	s1,36(sp)
    2386:	ca56                	sw	s5,20(sp)
    2388:	892a                	mv	s2,a0
    238a:	8a2e                	mv	s4,a1
    238c:	04850413          	addi	s0,a0,72
    2390:	4981                	li	s3,0
    2392:	4b05                	li	s6,1
    2394:	5bfd                	li	s7,-1
    2396:	4404                	lw	s1,8(s0)
    2398:	00442a83          	lw	s5,4(s0)
    239c:	1afd                	addi	s5,s5,-1
    239e:	020ad063          	bgez	s5,23be <mmio.c.1d292ae4+0x4>
    23a2:	4000                	lw	s0,0(s0)
    23a4:	f86d                	bnez	s0,2396 <_fwalk_reent+0x22>
    23a6:	50b2                	lw	ra,44(sp)
    23a8:	5422                	lw	s0,40(sp)
    23aa:	5492                	lw	s1,36(sp)
    23ac:	5902                	lw	s2,32(sp)
    23ae:	4a62                	lw	s4,24(sp)
    23b0:	4ad2                	lw	s5,20(sp)
    23b2:	4b42                	lw	s6,16(sp)
    23b4:	4bb2                	lw	s7,12(sp)
    23b6:	854e                	mv	a0,s3
    23b8:	49f2                	lw	s3,28(sp)
    23ba:	6145                	addi	sp,sp,48
    23bc:	8082                	ret
    23be:	00c4d783          	lhu	a5,12(s1)
    23c2:	00fb7b63          	bgeu	s6,a5,23d8 <mmio.c.1d292ae4+0x1e>
    23c6:	00e49783          	lh	a5,14(s1)
    23ca:	01778763          	beq	a5,s7,23d8 <mmio.c.1d292ae4+0x1e>
    23ce:	85a6                	mv	a1,s1
    23d0:	854a                	mv	a0,s2
    23d2:	9a02                	jalr	s4
    23d4:	00a9e9b3          	or	s3,s3,a0
    23d8:	06848493          	addi	s1,s1,104
    23dc:	b7c1                	j	239c <_fwalk_reent+0x28>

000023de <__swhatbuf_r>:
    23de:	7159                	addi	sp,sp,-112
    23e0:	d4a2                	sw	s0,104(sp)
    23e2:	842e                	mv	s0,a1
    23e4:	00e59583          	lh	a1,14(a1)
    23e8:	d2a6                	sw	s1,100(sp)
    23ea:	d0ca                	sw	s2,96(sp)
    23ec:	d686                	sw	ra,108(sp)
    23ee:	84b2                	mv	s1,a2
    23f0:	8936                	mv	s2,a3
    23f2:	0205d463          	bgez	a1,241a <__swhatbuf_r+0x3c>
    23f6:	00c45783          	lhu	a5,12(s0)
    23fa:	0807f793          	andi	a5,a5,128
    23fe:	cf85                	beqz	a5,2436 <__swhatbuf_r+0x58>
    2400:	4781                	li	a5,0
    2402:	04000713          	li	a4,64
    2406:	50b6                	lw	ra,108(sp)
    2408:	5426                	lw	s0,104(sp)
    240a:	00f92023          	sw	a5,0(s2)
    240e:	c098                	sw	a4,0(s1)
    2410:	5906                	lw	s2,96(sp)
    2412:	5496                	lw	s1,100(sp)
    2414:	4501                	li	a0,0
    2416:	6165                	addi	sp,sp,112
    2418:	8082                	ret
    241a:	0030                	addi	a2,sp,8
    241c:	2661                	jal	27a4 <_fstat_r>
    241e:	fc054ce3          	bltz	a0,23f6 <__swhatbuf_r+0x18>
    2422:	4732                	lw	a4,12(sp)
    2424:	67bd                	lui	a5,0xf
    2426:	8ff9                	and	a5,a5,a4
    2428:	7779                	lui	a4,0xffffe
    242a:	97ba                	add	a5,a5,a4
    242c:	0017b793          	seqz	a5,a5
    2430:	40000713          	li	a4,1024
    2434:	bfc9                	j	2406 <__swhatbuf_r+0x28>
    2436:	4781                	li	a5,0
    2438:	bfe5                	j	2430 <__swhatbuf_r+0x52>

0000243a <__smakebuf_r>:
    243a:	00c5d783          	lhu	a5,12(a1)
    243e:	1101                	addi	sp,sp,-32
    2440:	cc22                	sw	s0,24(sp)
    2442:	ce06                	sw	ra,28(sp)
    2444:	ca26                	sw	s1,20(sp)
    2446:	c84a                	sw	s2,16(sp)
    2448:	8b89                	andi	a5,a5,2
    244a:	842e                	mv	s0,a1
    244c:	cf89                	beqz	a5,2466 <__smakebuf_r+0x2c>
    244e:	04740793          	addi	a5,s0,71
    2452:	c01c                	sw	a5,0(s0)
    2454:	c81c                	sw	a5,16(s0)
    2456:	4785                	li	a5,1
    2458:	c85c                	sw	a5,20(s0)
    245a:	40f2                	lw	ra,28(sp)
    245c:	4462                	lw	s0,24(sp)
    245e:	44d2                	lw	s1,20(sp)
    2460:	4942                	lw	s2,16(sp)
    2462:	6105                	addi	sp,sp,32
    2464:	8082                	ret
    2466:	0074                	addi	a3,sp,12
    2468:	0030                	addi	a2,sp,8
    246a:	84aa                	mv	s1,a0
    246c:	3f8d                	jal	23de <__swhatbuf_r>
    246e:	45a2                	lw	a1,8(sp)
    2470:	892a                	mv	s2,a0
    2472:	8526                	mv	a0,s1
    2474:	2209                	jal	2576 <_malloc_r>
    2476:	ed01                	bnez	a0,248e <__smakebuf_r+0x54>
    2478:	00c41783          	lh	a5,12(s0)
    247c:	2007f713          	andi	a4,a5,512
    2480:	ff69                	bnez	a4,245a <__smakebuf_r+0x20>
    2482:	9bf1                	andi	a5,a5,-4
    2484:	0027e793          	ori	a5,a5,2
    2488:	00f41623          	sh	a5,12(s0)
    248c:	b7c9                	j	244e <__smakebuf_r+0x14>
    248e:	6789                	lui	a5,0x2
    2490:	18878793          	addi	a5,a5,392 # 2188 <_cleanup_r>
    2494:	d49c                	sw	a5,40(s1)
    2496:	00c45783          	lhu	a5,12(s0)
    249a:	c008                	sw	a0,0(s0)
    249c:	c808                	sw	a0,16(s0)
    249e:	0807e793          	ori	a5,a5,128
    24a2:	00f41623          	sh	a5,12(s0)
    24a6:	47a2                	lw	a5,8(sp)
    24a8:	c85c                	sw	a5,20(s0)
    24aa:	47b2                	lw	a5,12(sp)
    24ac:	cf89                	beqz	a5,24c6 <__smakebuf_r+0x8c>
    24ae:	00e41583          	lh	a1,14(s0)
    24b2:	8526                	mv	a0,s1
    24b4:	260d                	jal	27d6 <_isatty_r>
    24b6:	c901                	beqz	a0,24c6 <__smakebuf_r+0x8c>
    24b8:	00c45783          	lhu	a5,12(s0)
    24bc:	9bf1                	andi	a5,a5,-4
    24be:	0017e793          	ori	a5,a5,1
    24c2:	00f41623          	sh	a5,12(s0)
    24c6:	00c45783          	lhu	a5,12(s0)
    24ca:	0127e533          	or	a0,a5,s2
    24ce:	00a41623          	sh	a0,12(s0)
    24d2:	b761                	j	245a <__smakebuf_r+0x20>

000024d4 <_free_r>:
    24d4:	c1c5                	beqz	a1,2574 <_free_r+0xa0>
    24d6:	ffc5a783          	lw	a5,-4(a1)
    24da:	1101                	addi	sp,sp,-32
    24dc:	cc22                	sw	s0,24(sp)
    24de:	ce06                	sw	ra,28(sp)
    24e0:	ffc58413          	addi	s0,a1,-4
    24e4:	0007d363          	bgez	a5,24ea <_free_r+0x16>
    24e8:	943e                	add	s0,s0,a5
    24ea:	c62a                	sw	a0,12(sp)
    24ec:	26b9                	jal	283a <__malloc_lock>
    24ee:	00080737          	lui	a4,0x80
    24f2:	62472783          	lw	a5,1572(a4) # 80624 <__malloc_free_list>
    24f6:	4532                	lw	a0,12(sp)
    24f8:	eb89                	bnez	a5,250a <_free_r+0x36>
    24fa:	00042223          	sw	zero,4(s0)
    24fe:	62872223          	sw	s0,1572(a4)
    2502:	4462                	lw	s0,24(sp)
    2504:	40f2                	lw	ra,28(sp)
    2506:	6105                	addi	sp,sp,32
    2508:	ae15                	j	283c <__malloc_unlock>
    250a:	00f47d63          	bgeu	s0,a5,2524 <_free_r+0x50>
    250e:	4010                	lw	a2,0(s0)
    2510:	00c406b3          	add	a3,s0,a2
    2514:	00d79663          	bne	a5,a3,2520 <_free_r+0x4c>
    2518:	4394                	lw	a3,0(a5)
    251a:	43dc                	lw	a5,4(a5)
    251c:	96b2                	add	a3,a3,a2
    251e:	c014                	sw	a3,0(s0)
    2520:	c05c                	sw	a5,4(s0)
    2522:	bff1                	j	24fe <_free_r+0x2a>
    2524:	873e                	mv	a4,a5
    2526:	43dc                	lw	a5,4(a5)
    2528:	c399                	beqz	a5,252e <_free_r+0x5a>
    252a:	fef47de3          	bgeu	s0,a5,2524 <_free_r+0x50>
    252e:	4314                	lw	a3,0(a4)
    2530:	00d70633          	add	a2,a4,a3
    2534:	00861f63          	bne	a2,s0,2552 <_free_r+0x7e>
    2538:	4010                	lw	a2,0(s0)
    253a:	96b2                	add	a3,a3,a2
    253c:	c314                	sw	a3,0(a4)
    253e:	00d70633          	add	a2,a4,a3
    2542:	fcc790e3          	bne	a5,a2,2502 <_free_r+0x2e>
    2546:	4390                	lw	a2,0(a5)
    2548:	43dc                	lw	a5,4(a5)
    254a:	96b2                	add	a3,a3,a2
    254c:	c314                	sw	a3,0(a4)
    254e:	c35c                	sw	a5,4(a4)
    2550:	bf4d                	j	2502 <_free_r+0x2e>
    2552:	00c47563          	bgeu	s0,a2,255c <_free_r+0x88>
    2556:	47b1                	li	a5,12
    2558:	c11c                	sw	a5,0(a0)
    255a:	b765                	j	2502 <_free_r+0x2e>
    255c:	4010                	lw	a2,0(s0)
    255e:	00c406b3          	add	a3,s0,a2
    2562:	00d79663          	bne	a5,a3,256e <_free_r+0x9a>
    2566:	4394                	lw	a3,0(a5)
    2568:	43dc                	lw	a5,4(a5)
    256a:	96b2                	add	a3,a3,a2
    256c:	c014                	sw	a3,0(s0)
    256e:	c05c                	sw	a5,4(s0)
    2570:	c340                	sw	s0,4(a4)
    2572:	bf41                	j	2502 <_free_r+0x2e>
    2574:	8082                	ret

00002576 <_malloc_r>:
    2576:	1101                	addi	sp,sp,-32
    2578:	ca26                	sw	s1,20(sp)
    257a:	00358493          	addi	s1,a1,3
    257e:	98f1                	andi	s1,s1,-4
    2580:	c84a                	sw	s2,16(sp)
    2582:	ce06                	sw	ra,28(sp)
    2584:	cc22                	sw	s0,24(sp)
    2586:	c64e                	sw	s3,12(sp)
    2588:	04a1                	addi	s1,s1,8
    258a:	47b1                	li	a5,12
    258c:	892a                	mv	s2,a0
    258e:	04f4f663          	bgeu	s1,a5,25da <_malloc_r+0x64>
    2592:	44b1                	li	s1,12
    2594:	04b4e563          	bltu	s1,a1,25de <_malloc_r+0x68>
    2598:	854a                	mv	a0,s2
    259a:	2445                	jal	283a <__malloc_lock>
    259c:	000807b7          	lui	a5,0x80
    25a0:	62478713          	addi	a4,a5,1572 # 80624 <__malloc_free_list>
    25a4:	4318                	lw	a4,0(a4)
    25a6:	62478693          	addi	a3,a5,1572
    25aa:	843a                	mv	s0,a4
    25ac:	e421                	bnez	s0,25f4 <_malloc_r+0x7e>
    25ae:	00080437          	lui	s0,0x80
    25b2:	62840413          	addi	s0,s0,1576 # 80628 <__malloc_sbrk_start>
    25b6:	401c                	lw	a5,0(s0)
    25b8:	e789                	bnez	a5,25c2 <_malloc_r+0x4c>
    25ba:	4581                	li	a1,0
    25bc:	854a                	mv	a0,s2
    25be:	2851                	jal	2652 <_sbrk_r>
    25c0:	c008                	sw	a0,0(s0)
    25c2:	85a6                	mv	a1,s1
    25c4:	854a                	mv	a0,s2
    25c6:	2071                	jal	2652 <_sbrk_r>
    25c8:	59fd                	li	s3,-1
    25ca:	07351863          	bne	a0,s3,263a <_malloc_r+0xc4>
    25ce:	47b1                	li	a5,12
    25d0:	00f92023          	sw	a5,0(s2)
    25d4:	854a                	mv	a0,s2
    25d6:	249d                	jal	283c <__malloc_unlock>
    25d8:	a031                	j	25e4 <_malloc_r+0x6e>
    25da:	fa04dde3          	bgez	s1,2594 <_malloc_r+0x1e>
    25de:	47b1                	li	a5,12
    25e0:	00f92023          	sw	a5,0(s2)
    25e4:	4501                	li	a0,0
    25e6:	40f2                	lw	ra,28(sp)
    25e8:	4462                	lw	s0,24(sp)
    25ea:	44d2                	lw	s1,20(sp)
    25ec:	4942                	lw	s2,16(sp)
    25ee:	49b2                	lw	s3,12(sp)
    25f0:	6105                	addi	sp,sp,32
    25f2:	8082                	ret
    25f4:	401c                	lw	a5,0(s0)
    25f6:	8f85                	sub	a5,a5,s1
    25f8:	0207ce63          	bltz	a5,2634 <_malloc_r+0xbe>
    25fc:	462d                	li	a2,11
    25fe:	00f67663          	bgeu	a2,a5,260a <_malloc_r+0x94>
    2602:	c01c                	sw	a5,0(s0)
    2604:	943e                	add	s0,s0,a5
    2606:	c004                	sw	s1,0(s0)
    2608:	a029                	j	2612 <_malloc_r+0x9c>
    260a:	405c                	lw	a5,4(s0)
    260c:	02871263          	bne	a4,s0,2630 <_malloc_r+0xba>
    2610:	c29c                	sw	a5,0(a3)
    2612:	854a                	mv	a0,s2
    2614:	2425                	jal	283c <__malloc_unlock>
    2616:	00b40513          	addi	a0,s0,11
    261a:	00440793          	addi	a5,s0,4
    261e:	9961                	andi	a0,a0,-8
    2620:	40f50733          	sub	a4,a0,a5
    2624:	fcf501e3          	beq	a0,a5,25e6 <_malloc_r+0x70>
    2628:	943a                	add	s0,s0,a4
    262a:	8f89                	sub	a5,a5,a0
    262c:	c01c                	sw	a5,0(s0)
    262e:	bf65                	j	25e6 <_malloc_r+0x70>
    2630:	c35c                	sw	a5,4(a4)
    2632:	b7c5                	j	2612 <_malloc_r+0x9c>
    2634:	8722                	mv	a4,s0
    2636:	4040                	lw	s0,4(s0)
    2638:	bf95                	j	25ac <_malloc_r+0x36>
    263a:	00350413          	addi	s0,a0,3
    263e:	9871                	andi	s0,s0,-4
    2640:	fc8503e3          	beq	a0,s0,2606 <_malloc_r+0x90>
    2644:	40a405b3          	sub	a1,s0,a0
    2648:	854a                	mv	a0,s2
    264a:	2021                	jal	2652 <_sbrk_r>
    264c:	fb351de3          	bne	a0,s3,2606 <_malloc_r+0x90>
    2650:	bfbd                	j	25ce <_malloc_r+0x58>

00002652 <_sbrk_r>:
    2652:	1141                	addi	sp,sp,-16
    2654:	c422                	sw	s0,8(sp)
    2656:	c226                	sw	s1,4(sp)
    2658:	842a                	mv	s0,a0
    265a:	000804b7          	lui	s1,0x80
    265e:	852e                	mv	a0,a1
    2660:	c606                	sw	ra,12(sp)
    2662:	6004ae23          	sw	zero,1564(s1) # 8061c <errno>
    2666:	bedfe0ef          	jal	ra,1252 <_sbrk>
    266a:	57fd                	li	a5,-1
    266c:	00f51663          	bne	a0,a5,2678 <_sbrk_r+0x26>
    2670:	61c4a783          	lw	a5,1564(s1)
    2674:	c391                	beqz	a5,2678 <_sbrk_r+0x26>
    2676:	c01c                	sw	a5,0(s0)
    2678:	40b2                	lw	ra,12(sp)
    267a:	4422                	lw	s0,8(sp)
    267c:	4492                	lw	s1,4(sp)
    267e:	0141                	addi	sp,sp,16
    2680:	8082                	ret

00002682 <__sread>:
    2682:	1141                	addi	sp,sp,-16
    2684:	c422                	sw	s0,8(sp)
    2686:	842e                	mv	s0,a1
    2688:	00e59583          	lh	a1,14(a1)
    268c:	c606                	sw	ra,12(sp)
    268e:	2a45                	jal	283e <_read_r>
    2690:	00054963          	bltz	a0,26a2 <__sread+0x20>
    2694:	487c                	lw	a5,84(s0)
    2696:	97aa                	add	a5,a5,a0
    2698:	c87c                	sw	a5,84(s0)
    269a:	40b2                	lw	ra,12(sp)
    269c:	4422                	lw	s0,8(sp)
    269e:	0141                	addi	sp,sp,16
    26a0:	8082                	ret
    26a2:	00c45783          	lhu	a5,12(s0)
    26a6:	777d                	lui	a4,0xfffff
    26a8:	177d                	addi	a4,a4,-1
    26aa:	8ff9                	and	a5,a5,a4
    26ac:	00f41623          	sh	a5,12(s0)
    26b0:	b7ed                	j	269a <__sread+0x18>

000026b2 <__seofread>:
    26b2:	4501                	li	a0,0
    26b4:	8082                	ret

000026b6 <__swrite>:
    26b6:	00c5d783          	lhu	a5,12(a1)
    26ba:	1101                	addi	sp,sp,-32
    26bc:	cc22                	sw	s0,24(sp)
    26be:	ca26                	sw	s1,20(sp)
    26c0:	c84a                	sw	s2,16(sp)
    26c2:	c64e                	sw	s3,12(sp)
    26c4:	ce06                	sw	ra,28(sp)
    26c6:	1007f793          	andi	a5,a5,256
    26ca:	84aa                	mv	s1,a0
    26cc:	842e                	mv	s0,a1
    26ce:	8932                	mv	s2,a2
    26d0:	89b6                	mv	s3,a3
    26d2:	c791                	beqz	a5,26de <__swrite+0x28>
    26d4:	00e59583          	lh	a1,14(a1)
    26d8:	4689                	li	a3,2
    26da:	4601                	li	a2,0
    26dc:	222d                	jal	2806 <_lseek_r>
    26de:	00c45783          	lhu	a5,12(s0)
    26e2:	777d                	lui	a4,0xfffff
    26e4:	177d                	addi	a4,a4,-1
    26e6:	8ff9                	and	a5,a5,a4
    26e8:	00e41583          	lh	a1,14(s0)
    26ec:	00f41623          	sh	a5,12(s0)
    26f0:	4462                	lw	s0,24(sp)
    26f2:	40f2                	lw	ra,28(sp)
    26f4:	86ce                	mv	a3,s3
    26f6:	864a                	mv	a2,s2
    26f8:	49b2                	lw	s3,12(sp)
    26fa:	4942                	lw	s2,16(sp)
    26fc:	8526                	mv	a0,s1
    26fe:	44d2                	lw	s1,20(sp)
    2700:	6105                	addi	sp,sp,32
    2702:	a83d                	j	2740 <_write_r>

00002704 <__sseek>:
    2704:	1141                	addi	sp,sp,-16
    2706:	c422                	sw	s0,8(sp)
    2708:	842e                	mv	s0,a1
    270a:	00e59583          	lh	a1,14(a1)
    270e:	c606                	sw	ra,12(sp)
    2710:	28dd                	jal	2806 <_lseek_r>
    2712:	577d                	li	a4,-1
    2714:	00c45783          	lhu	a5,12(s0)
    2718:	00e51b63          	bne	a0,a4,272e <__sseek+0x2a>
    271c:	777d                	lui	a4,0xfffff
    271e:	177d                	addi	a4,a4,-1
    2720:	8ff9                	and	a5,a5,a4
    2722:	00f41623          	sh	a5,12(s0)
    2726:	40b2                	lw	ra,12(sp)
    2728:	4422                	lw	s0,8(sp)
    272a:	0141                	addi	sp,sp,16
    272c:	8082                	ret
    272e:	6705                	lui	a4,0x1
    2730:	8fd9                	or	a5,a5,a4
    2732:	00f41623          	sh	a5,12(s0)
    2736:	c868                	sw	a0,84(s0)
    2738:	b7fd                	j	2726 <__sseek+0x22>

0000273a <__sclose>:
    273a:	00e59583          	lh	a1,14(a1)
    273e:	a81d                	j	2774 <_close_r>

00002740 <_write_r>:
    2740:	1141                	addi	sp,sp,-16
    2742:	c422                	sw	s0,8(sp)
    2744:	c226                	sw	s1,4(sp)
    2746:	842a                	mv	s0,a0
    2748:	000804b7          	lui	s1,0x80
    274c:	852e                	mv	a0,a1
    274e:	85b2                	mv	a1,a2
    2750:	8636                	mv	a2,a3
    2752:	c606                	sw	ra,12(sp)
    2754:	6004ae23          	sw	zero,1564(s1) # 8061c <errno>
    2758:	a4ffe0ef          	jal	ra,11a6 <_write>
    275c:	57fd                	li	a5,-1
    275e:	00f51663          	bne	a0,a5,276a <_write_r+0x2a>
    2762:	61c4a783          	lw	a5,1564(s1)
    2766:	c391                	beqz	a5,276a <_write_r+0x2a>
    2768:	c01c                	sw	a5,0(s0)
    276a:	40b2                	lw	ra,12(sp)
    276c:	4422                	lw	s0,8(sp)
    276e:	4492                	lw	s1,4(sp)
    2770:	0141                	addi	sp,sp,16
    2772:	8082                	ret

00002774 <_close_r>:
    2774:	1141                	addi	sp,sp,-16
    2776:	c422                	sw	s0,8(sp)
    2778:	c226                	sw	s1,4(sp)
    277a:	842a                	mv	s0,a0
    277c:	000804b7          	lui	s1,0x80
    2780:	852e                	mv	a0,a1
    2782:	c606                	sw	ra,12(sp)
    2784:	6004ae23          	sw	zero,1564(s1) # 8061c <errno>
    2788:	9f3fe0ef          	jal	ra,117a <_close>
    278c:	57fd                	li	a5,-1
    278e:	00f51663          	bne	a0,a5,279a <_close_r+0x26>
    2792:	61c4a783          	lw	a5,1564(s1)
    2796:	c391                	beqz	a5,279a <_close_r+0x26>
    2798:	c01c                	sw	a5,0(s0)
    279a:	40b2                	lw	ra,12(sp)
    279c:	4422                	lw	s0,8(sp)
    279e:	4492                	lw	s1,4(sp)
    27a0:	0141                	addi	sp,sp,16
    27a2:	8082                	ret

000027a4 <_fstat_r>:
    27a4:	1141                	addi	sp,sp,-16
    27a6:	c422                	sw	s0,8(sp)
    27a8:	c226                	sw	s1,4(sp)
    27aa:	842a                	mv	s0,a0
    27ac:	000804b7          	lui	s1,0x80
    27b0:	852e                	mv	a0,a1
    27b2:	85b2                	mv	a1,a2
    27b4:	c606                	sw	ra,12(sp)
    27b6:	6004ae23          	sw	zero,1564(s1) # 8061c <errno>
    27ba:	9d5fe0ef          	jal	ra,118e <_fstat>
    27be:	57fd                	li	a5,-1
    27c0:	00f51663          	bne	a0,a5,27cc <_fstat_r+0x28>
    27c4:	61c4a783          	lw	a5,1564(s1)
    27c8:	c391                	beqz	a5,27cc <_fstat_r+0x28>
    27ca:	c01c                	sw	a5,0(s0)
    27cc:	40b2                	lw	ra,12(sp)
    27ce:	4422                	lw	s0,8(sp)
    27d0:	4492                	lw	s1,4(sp)
    27d2:	0141                	addi	sp,sp,16
    27d4:	8082                	ret

000027d6 <_isatty_r>:
    27d6:	1141                	addi	sp,sp,-16
    27d8:	c422                	sw	s0,8(sp)
    27da:	c226                	sw	s1,4(sp)
    27dc:	842a                	mv	s0,a0
    27de:	000804b7          	lui	s1,0x80
    27e2:	852e                	mv	a0,a1
    27e4:	c606                	sw	ra,12(sp)
    27e6:	6004ae23          	sw	zero,1564(s1) # 8061c <errno>
    27ea:	9adfe0ef          	jal	ra,1196 <_isatty>
    27ee:	57fd                	li	a5,-1
    27f0:	00f51663          	bne	a0,a5,27fc <_isatty_r+0x26>
    27f4:	61c4a783          	lw	a5,1564(s1)
    27f8:	c391                	beqz	a5,27fc <_isatty_r+0x26>
    27fa:	c01c                	sw	a5,0(s0)
    27fc:	40b2                	lw	ra,12(sp)
    27fe:	4422                	lw	s0,8(sp)
    2800:	4492                	lw	s1,4(sp)
    2802:	0141                	addi	sp,sp,16
    2804:	8082                	ret

00002806 <_lseek_r>:
    2806:	1141                	addi	sp,sp,-16
    2808:	c422                	sw	s0,8(sp)
    280a:	c226                	sw	s1,4(sp)
    280c:	842a                	mv	s0,a0
    280e:	000804b7          	lui	s1,0x80
    2812:	852e                	mv	a0,a1
    2814:	85b2                	mv	a1,a2
    2816:	8636                	mv	a2,a3
    2818:	c606                	sw	ra,12(sp)
    281a:	6004ae23          	sw	zero,1564(s1) # 8061c <errno>
    281e:	981fe0ef          	jal	ra,119e <_lseek>
    2822:	57fd                	li	a5,-1
    2824:	00f51663          	bne	a0,a5,2830 <_lseek_r+0x2a>
    2828:	61c4a783          	lw	a5,1564(s1)
    282c:	c391                	beqz	a5,2830 <_lseek_r+0x2a>
    282e:	c01c                	sw	a5,0(s0)
    2830:	40b2                	lw	ra,12(sp)
    2832:	4422                	lw	s0,8(sp)
    2834:	4492                	lw	s1,4(sp)
    2836:	0141                	addi	sp,sp,16
    2838:	8082                	ret

0000283a <__malloc_lock>:
    283a:	8082                	ret

0000283c <__malloc_unlock>:
    283c:	8082                	ret

0000283e <_read_r>:
    283e:	1141                	addi	sp,sp,-16
    2840:	c422                	sw	s0,8(sp)
    2842:	c226                	sw	s1,4(sp)
    2844:	842a                	mv	s0,a0
    2846:	000804b7          	lui	s1,0x80
    284a:	852e                	mv	a0,a1
    284c:	85b2                	mv	a1,a2
    284e:	8636                	mv	a2,a3
    2850:	c606                	sw	ra,12(sp)
    2852:	6004ae23          	sw	zero,1564(s1) # 8061c <errno>
    2856:	94dfe0ef          	jal	ra,11a2 <_read>
    285a:	57fd                	li	a5,-1
    285c:	00f51663          	bne	a0,a5,2868 <_read_r+0x2a>
    2860:	61c4a783          	lw	a5,1564(s1)
    2864:	c391                	beqz	a5,2868 <_read_r+0x2a>
    2866:	c01c                	sw	a5,0(s0)
    2868:	40b2                	lw	ra,12(sp)
    286a:	4422                	lw	s0,8(sp)
    286c:	4492                	lw	s1,4(sp)
    286e:	0141                	addi	sp,sp,16
    2870:	8082                	ret

00002872 <_iprintf_r>:
    2872:	7139                	addi	sp,sp,-64
    2874:	cc22                	sw	s0,24(sp)
    2876:	ca26                	sw	s1,20(sp)
    2878:	ce06                	sw	ra,28(sp)
    287a:	d432                	sw	a2,40(sp)
    287c:	d636                	sw	a3,44(sp)
    287e:	d83a                	sw	a4,48(sp)
    2880:	da3e                	sw	a5,52(sp)
    2882:	dc42                	sw	a6,56(sp)
    2884:	de46                	sw	a7,60(sp)
    2886:	842a                	mv	s0,a0
    2888:	84ae                	mv	s1,a1
    288a:	c509                	beqz	a0,2894 <_iprintf_r+0x22>
    288c:	4d1c                	lw	a5,24(a0)
    288e:	e399                	bnez	a5,2894 <_iprintf_r+0x22>
    2890:	955ff0ef          	jal	ra,21e4 <__sinit>
    2894:	440c                	lw	a1,8(s0)
    2896:	1034                	addi	a3,sp,40
    2898:	8626                	mv	a2,s1
    289a:	8522                	mv	a0,s0
    289c:	c636                	sw	a3,12(sp)
    289e:	28e1                	jal	2976 <_vfiprintf_r>
    28a0:	40f2                	lw	ra,28(sp)
    28a2:	4462                	lw	s0,24(sp)
    28a4:	44d2                	lw	s1,20(sp)
    28a6:	6121                	addi	sp,sp,64
    28a8:	8082                	ret

000028aa <iprintf>:
    28aa:	715d                	addi	sp,sp,-80
    28ac:	c2be                	sw	a5,68(sp)
    28ae:	000807b7          	lui	a5,0x80
    28b2:	d422                	sw	s0,40(sp)
    28b4:	842a                	mv	s0,a0
    28b6:	6107a503          	lw	a0,1552(a5) # 80610 <_impure_ptr>
    28ba:	d606                	sw	ra,44(sp)
    28bc:	da2e                	sw	a1,52(sp)
    28be:	dc32                	sw	a2,56(sp)
    28c0:	de36                	sw	a3,60(sp)
    28c2:	c0ba                	sw	a4,64(sp)
    28c4:	c4c2                	sw	a6,72(sp)
    28c6:	c6c6                	sw	a7,76(sp)
    28c8:	c519                	beqz	a0,28d6 <iprintf+0x2c>
    28ca:	4d1c                	lw	a5,24(a0)
    28cc:	e789                	bnez	a5,28d6 <iprintf+0x2c>
    28ce:	c62a                	sw	a0,12(sp)
    28d0:	915ff0ef          	jal	ra,21e4 <__sinit>
    28d4:	4532                	lw	a0,12(sp)
    28d6:	450c                	lw	a1,8(a0)
    28d8:	1854                	addi	a3,sp,52
    28da:	8622                	mv	a2,s0
    28dc:	ce36                	sw	a3,28(sp)
    28de:	2861                	jal	2976 <_vfiprintf_r>
    28e0:	50b2                	lw	ra,44(sp)
    28e2:	5422                	lw	s0,40(sp)
    28e4:	6161                	addi	sp,sp,80
    28e6:	8082                	ret

000028e8 <__sfputc_r>:
    28e8:	461c                	lw	a5,8(a2)
    28ea:	17fd                	addi	a5,a5,-1
    28ec:	c61c                	sw	a5,8(a2)
    28ee:	0007da63          	bgez	a5,2902 <__sfputc_r+0x1a>
    28f2:	4e18                	lw	a4,24(a2)
    28f4:	00e7c563          	blt	a5,a4,28fe <__sfputc_r+0x16>
    28f8:	47a9                	li	a5,10
    28fa:	00f59463          	bne	a1,a5,2902 <__sfputc_r+0x1a>
    28fe:	b36ff06f          	j	1c34 <__swbuf_r>
    2902:	421c                	lw	a5,0(a2)
    2904:	852e                	mv	a0,a1
    2906:	00178713          	addi	a4,a5,1
    290a:	c218                	sw	a4,0(a2)
    290c:	00b78023          	sb	a1,0(a5)
    2910:	8082                	ret

00002912 <__sfputs_r>:
    2912:	1101                	addi	sp,sp,-32
    2914:	cc22                	sw	s0,24(sp)
    2916:	ca26                	sw	s1,20(sp)
    2918:	c84a                	sw	s2,16(sp)
    291a:	c64e                	sw	s3,12(sp)
    291c:	c452                	sw	s4,8(sp)
    291e:	ce06                	sw	ra,28(sp)
    2920:	892a                	mv	s2,a0
    2922:	89ae                	mv	s3,a1
    2924:	8432                	mv	s0,a2
    2926:	00d604b3          	add	s1,a2,a3
    292a:	5a7d                	li	s4,-1
    292c:	00941463          	bne	s0,s1,2934 <__sfputs_r+0x22>
    2930:	4501                	li	a0,0
    2932:	a809                	j	2944 <__sfputs_r+0x32>
    2934:	00044583          	lbu	a1,0(s0)
    2938:	864e                	mv	a2,s3
    293a:	854a                	mv	a0,s2
    293c:	3775                	jal	28e8 <__sfputc_r>
    293e:	0405                	addi	s0,s0,1
    2940:	ff4516e3          	bne	a0,s4,292c <__sfputs_r+0x1a>
    2944:	40f2                	lw	ra,28(sp)
    2946:	4462                	lw	s0,24(sp)
    2948:	44d2                	lw	s1,20(sp)
    294a:	4942                	lw	s2,16(sp)
    294c:	49b2                	lw	s3,12(sp)
    294e:	4a22                	lw	s4,8(sp)
    2950:	6105                	addi	sp,sp,32
    2952:	8082                	ret

00002954 <__sprint_r>:
    2954:	461c                	lw	a5,8(a2)
    2956:	1141                	addi	sp,sp,-16
    2958:	c422                	sw	s0,8(sp)
    295a:	c606                	sw	ra,12(sp)
    295c:	8432                	mv	s0,a2
    295e:	cb91                	beqz	a5,2972 <__sprint_r+0x1e>
    2960:	24d1                	jal	2c24 <__sfvwrite_r>
    2962:	00042423          	sw	zero,8(s0)
    2966:	40b2                	lw	ra,12(sp)
    2968:	00042223          	sw	zero,4(s0)
    296c:	4422                	lw	s0,8(sp)
    296e:	0141                	addi	sp,sp,16
    2970:	8082                	ret
    2972:	4501                	li	a0,0
    2974:	bfcd                	j	2966 <__sprint_r+0x12>

00002976 <_vfiprintf_r>:
    2976:	7171                	addi	sp,sp,-176
    2978:	d522                	sw	s0,168(sp)
    297a:	d326                	sw	s1,164(sp)
    297c:	d14a                	sw	s2,160(sp)
    297e:	cf4e                	sw	s3,156(sp)
    2980:	d706                	sw	ra,172(sp)
    2982:	cd52                	sw	s4,152(sp)
    2984:	cb56                	sw	s5,148(sp)
    2986:	c95a                	sw	s6,144(sp)
    2988:	c75e                	sw	s7,140(sp)
    298a:	c562                	sw	s8,136(sp)
    298c:	c366                	sw	s9,132(sp)
    298e:	c16a                	sw	s10,128(sp)
    2990:	deee                	sw	s11,124(sp)
    2992:	89aa                	mv	s3,a0
    2994:	84ae                	mv	s1,a1
    2996:	8932                	mv	s2,a2
    2998:	8436                	mv	s0,a3
    299a:	c509                	beqz	a0,29a4 <_vfiprintf_r+0x2e>
    299c:	4d1c                	lw	a5,24(a0)
    299e:	e399                	bnez	a5,29a4 <_vfiprintf_r+0x2e>
    29a0:	845ff0ef          	jal	ra,21e4 <__sinit>
    29a4:	000807b7          	lui	a5,0x80
    29a8:	3d478793          	addi	a5,a5,980 # 803d4 <__sf_fake_stdin>
    29ac:	0ef49363          	bne	s1,a5,2a92 <bitfield.c.ab41fd61+0x1f>
    29b0:	0049a483          	lw	s1,4(s3)
    29b4:	00c4d783          	lhu	a5,12(s1)
    29b8:	8ba1                	andi	a5,a5,8
    29ba:	0e078e63          	beqz	a5,2ab6 <bitfield.c.ab41fd61+0x43>
    29be:	489c                	lw	a5,16(s1)
    29c0:	0e078b63          	beqz	a5,2ab6 <bitfield.c.ab41fd61+0x43>
    29c4:	02000793          	li	a5,32
    29c8:	02f104a3          	sb	a5,41(sp)
    29cc:	03000793          	li	a5,48
    29d0:	d202                	sw	zero,36(sp)
    29d2:	02f10523          	sb	a5,42(sp)
    29d6:	c622                	sw	s0,12(sp)
    29d8:	02500c93          	li	s9,37
    29dc:	00080b37          	lui	s6,0x80
    29e0:	00080bb7          	lui	s7,0x80
    29e4:	00080d37          	lui	s10,0x80
    29e8:	6c0d                	lui	s8,0x3
    29ea:	00000a93          	li	s5,0
    29ee:	844a                	mv	s0,s2
    29f0:	00044783          	lbu	a5,0(s0)
    29f4:	c399                	beqz	a5,29fa <_vfiprintf_r+0x84>
    29f6:	0f979663          	bne	a5,s9,2ae2 <bitfield.c.ab41fd61+0x6f>
    29fa:	41240db3          	sub	s11,s0,s2
    29fe:	01240d63          	beq	s0,s2,2a18 <_vfiprintf_r+0xa2>
    2a02:	86ee                	mv	a3,s11
    2a04:	864a                	mv	a2,s2
    2a06:	85a6                	mv	a1,s1
    2a08:	854e                	mv	a0,s3
    2a0a:	3721                	jal	2912 <__sfputs_r>
    2a0c:	57fd                	li	a5,-1
    2a0e:	1ef50363          	beq	a0,a5,2bf4 <bitfield.c.ab41fd61+0x181>
    2a12:	5792                	lw	a5,36(sp)
    2a14:	97ee                	add	a5,a5,s11
    2a16:	d23e                	sw	a5,36(sp)
    2a18:	00044783          	lbu	a5,0(s0)
    2a1c:	1c078c63          	beqz	a5,2bf4 <bitfield.c.ab41fd61+0x181>
    2a20:	57fd                	li	a5,-1
    2a22:	00140913          	addi	s2,s0,1
    2a26:	c802                	sw	zero,16(sp)
    2a28:	ce02                	sw	zero,28(sp)
    2a2a:	ca3e                	sw	a5,20(sp)
    2a2c:	cc02                	sw	zero,24(sp)
    2a2e:	040109a3          	sb	zero,83(sp)
    2a32:	d482                	sw	zero,104(sp)
    2a34:	4d85                	li	s11,1
    2a36:	00094583          	lbu	a1,0(s2)
    2a3a:	4615                	li	a2,5
    2a3c:	414b0513          	addi	a0,s6,1044 # 80414 <__sf_fake_stdout+0x20>
    2a40:	217d                	jal	2eee <memchr>
    2a42:	47c2                	lw	a5,16(sp)
    2a44:	00190413          	addi	s0,s2,1
    2a48:	ed59                	bnez	a0,2ae6 <bitfield.c.ab41fd61+0x73>
    2a4a:	0107f713          	andi	a4,a5,16
    2a4e:	c709                	beqz	a4,2a58 <_vfiprintf_r+0xe2>
    2a50:	02000713          	li	a4,32
    2a54:	04e109a3          	sb	a4,83(sp)
    2a58:	0087f713          	andi	a4,a5,8
    2a5c:	c709                	beqz	a4,2a66 <_vfiprintf_r+0xf0>
    2a5e:	02b00713          	li	a4,43
    2a62:	04e109a3          	sb	a4,83(sp)
    2a66:	00094683          	lbu	a3,0(s2)
    2a6a:	02a00713          	li	a4,42
    2a6e:	08e68563          	beq	a3,a4,2af8 <bitfield.c.ab41fd61+0x85>
    2a72:	47f2                	lw	a5,28(sp)
    2a74:	844a                	mv	s0,s2
    2a76:	4681                	li	a3,0
    2a78:	4625                	li	a2,9
    2a7a:	4529                	li	a0,10
    2a7c:	00044703          	lbu	a4,0(s0)
    2a80:	00140593          	addi	a1,s0,1
    2a84:	fd070713          	addi	a4,a4,-48 # fd0 <dma_load_transaction.constprop.0.isra.0+0x50>
    2a88:	0ae67d63          	bgeu	a2,a4,2b42 <bitfield.c.ab41fd61+0xcf>
    2a8c:	ceb5                	beqz	a3,2b08 <bitfield.c.ab41fd61+0x95>
    2a8e:	ce3e                	sw	a5,28(sp)
    2a90:	a8a5                	j	2b08 <bitfield.c.ab41fd61+0x95>
    2a92:	000807b7          	lui	a5,0x80
    2a96:	3f478793          	addi	a5,a5,1012 # 803f4 <__sf_fake_stdout>
    2a9a:	00f49563          	bne	s1,a5,2aa4 <bitfield.c.ab41fd61+0x31>
    2a9e:	0089a483          	lw	s1,8(s3)
    2aa2:	bf09                	j	29b4 <_vfiprintf_r+0x3e>
    2aa4:	000807b7          	lui	a5,0x80
    2aa8:	3b478793          	addi	a5,a5,948 # 803b4 <__sf_fake_stderr>
    2aac:	f0f494e3          	bne	s1,a5,29b4 <_vfiprintf_r+0x3e>
    2ab0:	00c9a483          	lw	s1,12(s3)
    2ab4:	b701                	j	29b4 <_vfiprintf_r+0x3e>
    2ab6:	85a6                	mv	a1,s1
    2ab8:	854e                	mv	a0,s3
    2aba:	a48ff0ef          	jal	ra,1d02 <__swsetup_r>
    2abe:	f00503e3          	beqz	a0,29c4 <_vfiprintf_r+0x4e>
    2ac2:	557d                	li	a0,-1
    2ac4:	50ba                	lw	ra,172(sp)
    2ac6:	542a                	lw	s0,168(sp)
    2ac8:	549a                	lw	s1,164(sp)
    2aca:	590a                	lw	s2,160(sp)
    2acc:	49fa                	lw	s3,156(sp)
    2ace:	4a6a                	lw	s4,152(sp)
    2ad0:	4ada                	lw	s5,148(sp)
    2ad2:	4b4a                	lw	s6,144(sp)
    2ad4:	4bba                	lw	s7,140(sp)
    2ad6:	4c2a                	lw	s8,136(sp)
    2ad8:	4c9a                	lw	s9,132(sp)
    2ada:	4d0a                	lw	s10,128(sp)
    2adc:	5df6                	lw	s11,124(sp)
    2ade:	614d                	addi	sp,sp,176
    2ae0:	8082                	ret
    2ae2:	0405                	addi	s0,s0,1
    2ae4:	b731                	j	29f0 <_vfiprintf_r+0x7a>
    2ae6:	414b0713          	addi	a4,s6,1044
    2aea:	8d19                	sub	a0,a0,a4
    2aec:	00ad9533          	sll	a0,s11,a0
    2af0:	8fc9                	or	a5,a5,a0
    2af2:	c83e                	sw	a5,16(sp)
    2af4:	8922                	mv	s2,s0
    2af6:	b781                	j	2a36 <_vfiprintf_r+0xc0>
    2af8:	4732                	lw	a4,12(sp)
    2afa:	00470693          	addi	a3,a4,4
    2afe:	4318                	lw	a4,0(a4)
    2b00:	c636                	sw	a3,12(sp)
    2b02:	02074963          	bltz	a4,2b34 <bitfield.c.ab41fd61+0xc1>
    2b06:	ce3a                	sw	a4,28(sp)
    2b08:	00044703          	lbu	a4,0(s0)
    2b0c:	02e00793          	li	a5,46
    2b10:	06f71063          	bne	a4,a5,2b70 <bitfield.c.ab41fd61+0xfd>
    2b14:	00144703          	lbu	a4,1(s0)
    2b18:	02a00793          	li	a5,42
    2b1c:	02f71b63          	bne	a4,a5,2b52 <bitfield.c.ab41fd61+0xdf>
    2b20:	47b2                	lw	a5,12(sp)
    2b22:	0409                	addi	s0,s0,2
    2b24:	00478713          	addi	a4,a5,4
    2b28:	439c                	lw	a5,0(a5)
    2b2a:	c63a                	sw	a4,12(sp)
    2b2c:	0207c163          	bltz	a5,2b4e <bitfield.c.ab41fd61+0xdb>
    2b30:	ca3e                	sw	a5,20(sp)
    2b32:	a83d                	j	2b70 <bitfield.c.ab41fd61+0xfd>
    2b34:	40e00733          	neg	a4,a4
    2b38:	0027e793          	ori	a5,a5,2
    2b3c:	ce3a                	sw	a4,28(sp)
    2b3e:	c83e                	sw	a5,16(sp)
    2b40:	b7e1                	j	2b08 <bitfield.c.ab41fd61+0x95>
    2b42:	02a787b3          	mul	a5,a5,a0
    2b46:	842e                	mv	s0,a1
    2b48:	4685                	li	a3,1
    2b4a:	97ba                	add	a5,a5,a4
    2b4c:	bf05                	j	2a7c <bitfield.c.ab41fd61+0x9>
    2b4e:	57fd                	li	a5,-1
    2b50:	b7c5                	j	2b30 <bitfield.c.ab41fd61+0xbd>
    2b52:	0405                	addi	s0,s0,1
    2b54:	ca02                	sw	zero,20(sp)
    2b56:	4681                	li	a3,0
    2b58:	4781                	li	a5,0
    2b5a:	4625                	li	a2,9
    2b5c:	4529                	li	a0,10
    2b5e:	00044703          	lbu	a4,0(s0)
    2b62:	00140593          	addi	a1,s0,1
    2b66:	fd070713          	addi	a4,a4,-48
    2b6a:	04e67d63          	bgeu	a2,a4,2bc4 <bitfield.c.ab41fd61+0x151>
    2b6e:	f2e9                	bnez	a3,2b30 <bitfield.c.ab41fd61+0xbd>
    2b70:	00044583          	lbu	a1,0(s0)
    2b74:	460d                	li	a2,3
    2b76:	41cb8513          	addi	a0,s7,1052 # 8041c <__sf_fake_stdout+0x28>
    2b7a:	2e95                	jal	2eee <memchr>
    2b7c:	cd01                	beqz	a0,2b94 <bitfield.c.ab41fd61+0x121>
    2b7e:	41cb8793          	addi	a5,s7,1052
    2b82:	8d1d                	sub	a0,a0,a5
    2b84:	47c2                	lw	a5,16(sp)
    2b86:	04000713          	li	a4,64
    2b8a:	00a71733          	sll	a4,a4,a0
    2b8e:	8fd9                	or	a5,a5,a4
    2b90:	0405                	addi	s0,s0,1
    2b92:	c83e                	sw	a5,16(sp)
    2b94:	00044583          	lbu	a1,0(s0)
    2b98:	4619                	li	a2,6
    2b9a:	420d0513          	addi	a0,s10,1056 # 80420 <__sf_fake_stdout+0x2c>
    2b9e:	00140913          	addi	s2,s0,1
    2ba2:	02b10423          	sb	a1,40(sp)
    2ba6:	26a1                	jal	2eee <memchr>
    2ba8:	cd31                	beqz	a0,2c04 <bitfield.c.ab41fd61+0x191>
    2baa:	020a9763          	bnez	s5,2bd8 <bitfield.c.ab41fd61+0x165>
    2bae:	4742                	lw	a4,16(sp)
    2bb0:	47b2                	lw	a5,12(sp)
    2bb2:	10077713          	andi	a4,a4,256
    2bb6:	cf09                	beqz	a4,2bd0 <bitfield.c.ab41fd61+0x15d>
    2bb8:	0791                	addi	a5,a5,4
    2bba:	c63e                	sw	a5,12(sp)
    2bbc:	5792                	lw	a5,36(sp)
    2bbe:	97d2                	add	a5,a5,s4
    2bc0:	d23e                	sw	a5,36(sp)
    2bc2:	b535                	j	29ee <_vfiprintf_r+0x78>
    2bc4:	02a787b3          	mul	a5,a5,a0
    2bc8:	842e                	mv	s0,a1
    2bca:	4685                	li	a3,1
    2bcc:	97ba                	add	a5,a5,a4
    2bce:	bf41                	j	2b5e <bitfield.c.ab41fd61+0xeb>
    2bd0:	079d                	addi	a5,a5,7
    2bd2:	9be1                	andi	a5,a5,-8
    2bd4:	07a1                	addi	a5,a5,8
    2bd6:	b7d5                	j	2bba <bitfield.c.ab41fd61+0x147>
    2bd8:	0078                	addi	a4,sp,12
    2bda:	912c0693          	addi	a3,s8,-1774 # 2912 <__sfputs_r>
    2bde:	8626                	mv	a2,s1
    2be0:	080c                	addi	a1,sp,16
    2be2:	854e                	mv	a0,s3
    2be4:	00000097          	auipc	ra,0x0
    2be8:	000000e7          	jalr	zero # 0 <__vector_start>
    2bec:	57fd                	li	a5,-1
    2bee:	8a2a                	mv	s4,a0
    2bf0:	fcf516e3          	bne	a0,a5,2bbc <bitfield.c.ab41fd61+0x149>
    2bf4:	00c4d783          	lhu	a5,12(s1)
    2bf8:	0407f793          	andi	a5,a5,64
    2bfc:	ec0793e3          	bnez	a5,2ac2 <bitfield.c.ab41fd61+0x4f>
    2c00:	5512                	lw	a0,36(sp)
    2c02:	b5c9                	j	2ac4 <bitfield.c.ab41fd61+0x51>
    2c04:	0078                	addi	a4,sp,12
    2c06:	912c0693          	addi	a3,s8,-1774
    2c0a:	8626                	mv	a2,s1
    2c0c:	080c                	addi	a1,sp,16
    2c0e:	854e                	mv	a0,s3
    2c10:	297d                	jal	30ce <_printf_i>
    2c12:	bfe9                	j	2bec <bitfield.c.ab41fd61+0x179>

00002c14 <vfiprintf>:
    2c14:	000807b7          	lui	a5,0x80
    2c18:	86b2                	mv	a3,a2
    2c1a:	862e                	mv	a2,a1
    2c1c:	85aa                	mv	a1,a0
    2c1e:	6107a503          	lw	a0,1552(a5) # 80610 <_impure_ptr>
    2c22:	bb91                	j	2976 <_vfiprintf_r>

00002c24 <__sfvwrite_r>:
    2c24:	461c                	lw	a5,8(a2)
    2c26:	e781                	bnez	a5,2c2e <__sfvwrite_r+0xa>
    2c28:	4781                	li	a5,0
    2c2a:	853e                	mv	a0,a5
    2c2c:	8082                	ret
    2c2e:	00c5d783          	lhu	a5,12(a1)
    2c32:	715d                	addi	sp,sp,-80
    2c34:	c4a2                	sw	s0,72(sp)
    2c36:	c0ca                	sw	s2,64(sp)
    2c38:	dc52                	sw	s4,56(sp)
    2c3a:	c686                	sw	ra,76(sp)
    2c3c:	c2a6                	sw	s1,68(sp)
    2c3e:	de4e                	sw	s3,60(sp)
    2c40:	da56                	sw	s5,52(sp)
    2c42:	d85a                	sw	s6,48(sp)
    2c44:	d65e                	sw	s7,44(sp)
    2c46:	d462                	sw	s8,40(sp)
    2c48:	d266                	sw	s9,36(sp)
    2c4a:	d06a                	sw	s10,32(sp)
    2c4c:	ce6e                	sw	s11,28(sp)
    2c4e:	8ba1                	andi	a5,a5,8
    2c50:	892a                	mv	s2,a0
    2c52:	842e                	mv	s0,a1
    2c54:	8a32                	mv	s4,a2
    2c56:	cbd9                	beqz	a5,2cec <memory.c.f6d1f22a+0x31>
    2c58:	499c                	lw	a5,16(a1)
    2c5a:	cbc9                	beqz	a5,2cec <memory.c.f6d1f22a+0x31>
    2c5c:	00c45783          	lhu	a5,12(s0)
    2c60:	000a2983          	lw	s3,0(s4)
    2c64:	0027f713          	andi	a4,a5,2
    2c68:	e37d                	bnez	a4,2d4e <memory.c.f6d1f22a+0x93>
    2c6a:	8b85                	andi	a5,a5,1
    2c6c:	14078f63          	beqz	a5,2dca <memory.c.f6d1f22a+0x10f>
    2c70:	4b81                	li	s7,0
    2c72:	4501                	li	a0,0
    2c74:	4b01                	li	s6,0
    2c76:	4a81                	li	s5,0
    2c78:	220a8d63          	beqz	s5,2eb2 <soc_ctrl.c.866c9c8a+0x93>
    2c7c:	e919                	bnez	a0,2c92 <__sfvwrite_r+0x6e>
    2c7e:	8656                	mv	a2,s5
    2c80:	45a9                	li	a1,10
    2c82:	855a                	mv	a0,s6
    2c84:	24ad                	jal	2eee <memchr>
    2c86:	001a8b93          	addi	s7,s5,1
    2c8a:	c501                	beqz	a0,2c92 <__sfvwrite_r+0x6e>
    2c8c:	0505                	addi	a0,a0,1
    2c8e:	41650bb3          	sub	s7,a0,s6
    2c92:	8c5e                	mv	s8,s7
    2c94:	017af363          	bgeu	s5,s7,2c9a <__sfvwrite_r+0x76>
    2c98:	8c56                	mv	s8,s5
    2c9a:	4008                	lw	a0,0(s0)
    2c9c:	481c                	lw	a5,16(s0)
    2c9e:	4404                	lw	s1,8(s0)
    2ca0:	4854                	lw	a3,20(s0)
    2ca2:	20a7ff63          	bgeu	a5,a0,2ec0 <soc_ctrl.c.866c9c8a+0xa1>
    2ca6:	94b6                	add	s1,s1,a3
    2ca8:	2184dc63          	bge	s1,s8,2ec0 <soc_ctrl.c.866c9c8a+0xa1>
    2cac:	85da                	mv	a1,s6
    2cae:	8626                	mv	a2,s1
    2cb0:	24bd                	jal	2f1e <memmove>
    2cb2:	401c                	lw	a5,0(s0)
    2cb4:	85a2                	mv	a1,s0
    2cb6:	854a                	mv	a0,s2
    2cb8:	97a6                	add	a5,a5,s1
    2cba:	c01c                	sw	a5,0(s0)
    2cbc:	be4ff0ef          	jal	ra,20a0 <_fflush_r>
    2cc0:	0e051d63          	bnez	a0,2dba <memory.c.f6d1f22a+0xff>
    2cc4:	409b8bb3          	sub	s7,s7,s1
    2cc8:	4505                	li	a0,1
    2cca:	000b9763          	bnez	s7,2cd8 <memory.c.f6d1f22a+0x1d>
    2cce:	85a2                	mv	a1,s0
    2cd0:	854a                	mv	a0,s2
    2cd2:	bceff0ef          	jal	ra,20a0 <_fflush_r>
    2cd6:	e175                	bnez	a0,2dba <memory.c.f6d1f22a+0xff>
    2cd8:	008a2783          	lw	a5,8(s4)
    2cdc:	9b26                	add	s6,s6,s1
    2cde:	409a8ab3          	sub	s5,s5,s1
    2ce2:	8f85                	sub	a5,a5,s1
    2ce4:	00fa2423          	sw	a5,8(s4)
    2ce8:	fbc1                	bnez	a5,2c78 <__sfvwrite_r+0x54>
    2cea:	a089                	j	2d2c <memory.c.f6d1f22a+0x71>
    2cec:	85a2                	mv	a1,s0
    2cee:	854a                	mv	a0,s2
    2cf0:	812ff0ef          	jal	ra,1d02 <__swsetup_r>
    2cf4:	57fd                	li	a5,-1
    2cf6:	d13d                	beqz	a0,2c5c <__sfvwrite_r+0x38>
    2cf8:	a81d                	j	2d2e <memory.c.f6d1f22a+0x73>
    2cfa:	0009aa83          	lw	s5,0(s3)
    2cfe:	0049a483          	lw	s1,4(s3)
    2d02:	09a1                	addi	s3,s3,8
    2d04:	541c                	lw	a5,40(s0)
    2d06:	500c                	lw	a1,32(s0)
    2d08:	d8ed                	beqz	s1,2cfa <memory.c.f6d1f22a+0x3f>
    2d0a:	86a6                	mv	a3,s1
    2d0c:	009b7363          	bgeu	s6,s1,2d12 <memory.c.f6d1f22a+0x57>
    2d10:	86da                	mv	a3,s6
    2d12:	8656                	mv	a2,s5
    2d14:	854a                	mv	a0,s2
    2d16:	9782                	jalr	a5
    2d18:	0aa05163          	blez	a0,2dba <memory.c.f6d1f22a+0xff>
    2d1c:	008a2783          	lw	a5,8(s4)
    2d20:	9aaa                	add	s5,s5,a0
    2d22:	8c89                	sub	s1,s1,a0
    2d24:	8f89                	sub	a5,a5,a0
    2d26:	00fa2423          	sw	a5,8(s4)
    2d2a:	ffe9                	bnez	a5,2d04 <memory.c.f6d1f22a+0x49>
    2d2c:	4781                	li	a5,0
    2d2e:	40b6                	lw	ra,76(sp)
    2d30:	4426                	lw	s0,72(sp)
    2d32:	4496                	lw	s1,68(sp)
    2d34:	4906                	lw	s2,64(sp)
    2d36:	59f2                	lw	s3,60(sp)
    2d38:	5a62                	lw	s4,56(sp)
    2d3a:	5ad2                	lw	s5,52(sp)
    2d3c:	5b42                	lw	s6,48(sp)
    2d3e:	5bb2                	lw	s7,44(sp)
    2d40:	5c22                	lw	s8,40(sp)
    2d42:	5c92                	lw	s9,36(sp)
    2d44:	5d02                	lw	s10,32(sp)
    2d46:	4df2                	lw	s11,28(sp)
    2d48:	853e                	mv	a0,a5
    2d4a:	6161                	addi	sp,sp,80
    2d4c:	8082                	ret
    2d4e:	80000b37          	lui	s6,0x80000
    2d52:	4a81                	li	s5,0
    2d54:	4481                	li	s1,0
    2d56:	c00b4b13          	xori	s6,s6,-1024
    2d5a:	b76d                	j	2d04 <memory.c.f6d1f22a+0x49>
    2d5c:	0009aa83          	lw	s5,0(s3)
    2d60:	0049ad03          	lw	s10,4(s3)
    2d64:	09a1                	addi	s3,s3,8
    2d66:	00c41703          	lh	a4,12(s0)
    2d6a:	4008                	lw	a0,0(s0)
    2d6c:	4410                	lw	a2,8(s0)
    2d6e:	fe0d07e3          	beqz	s10,2d5c <memory.c.f6d1f22a+0xa1>
    2d72:	01071793          	slli	a5,a4,0x10
    2d76:	20077713          	andi	a4,a4,512
    2d7a:	83c1                	srli	a5,a5,0x10
    2d7c:	c365                	beqz	a4,2e5c <soc_ctrl.c.866c9c8a+0x3d>
    2d7e:	08cd6663          	bltu	s10,a2,2e0a <memory.c.f6d1f22a+0x14f>
    2d82:	4807f713          	andi	a4,a5,1152
    2d86:	c351                	beqz	a4,2e0a <memory.c.f6d1f22a+0x14f>
    2d88:	4844                	lw	s1,20(s0)
    2d8a:	480c                	lw	a1,16(s0)
    2d8c:	029c04b3          	mul	s1,s8,s1
    2d90:	40b50db3          	sub	s11,a0,a1
    2d94:	001d8713          	addi	a4,s11,1
    2d98:	976a                	add	a4,a4,s10
    2d9a:	0394c4b3          	div	s1,s1,s9
    2d9e:	00e4f363          	bgeu	s1,a4,2da4 <memory.c.f6d1f22a+0xe9>
    2da2:	84ba                	mv	s1,a4
    2da4:	4007f793          	andi	a5,a5,1024
    2da8:	cbd1                	beqz	a5,2e3c <soc_ctrl.c.866c9c8a+0x1d>
    2daa:	85a6                	mv	a1,s1
    2dac:	854a                	mv	a0,s2
    2dae:	fc8ff0ef          	jal	ra,2576 <_malloc_r>
    2db2:	e51d                	bnez	a0,2de0 <memory.c.f6d1f22a+0x125>
    2db4:	47b1                	li	a5,12
    2db6:	00f92023          	sw	a5,0(s2)
    2dba:	00c45783          	lhu	a5,12(s0)
    2dbe:	0407e793          	ori	a5,a5,64
    2dc2:	00f41623          	sh	a5,12(s0)
    2dc6:	57fd                	li	a5,-1
    2dc8:	b79d                	j	2d2e <memory.c.f6d1f22a+0x73>
    2dca:	80000b37          	lui	s6,0x80000
    2dce:	ffeb4b93          	xori	s7,s6,-2
    2dd2:	4a81                	li	s5,0
    2dd4:	4d01                	li	s10,0
    2dd6:	fffb4b13          	not	s6,s6
    2dda:	4c0d                	li	s8,3
    2ddc:	4c89                	li	s9,2
    2dde:	b761                	j	2d66 <memory.c.f6d1f22a+0xab>
    2de0:	480c                	lw	a1,16(s0)
    2de2:	866e                	mv	a2,s11
    2de4:	c62a                	sw	a0,12(sp)
    2de6:	220d                	jal	2f08 <memcpy>
    2de8:	00c45703          	lhu	a4,12(s0)
    2dec:	47b2                	lw	a5,12(sp)
    2dee:	b7f77713          	andi	a4,a4,-1153
    2df2:	08076713          	ori	a4,a4,128
    2df6:	00e41623          	sh	a4,12(s0)
    2dfa:	c81c                	sw	a5,16(s0)
    2dfc:	c844                	sw	s1,20(s0)
    2dfe:	97ee                	add	a5,a5,s11
    2e00:	41b484b3          	sub	s1,s1,s11
    2e04:	c01c                	sw	a5,0(s0)
    2e06:	866a                	mv	a2,s10
    2e08:	c404                	sw	s1,8(s0)
    2e0a:	84ea                	mv	s1,s10
    2e0c:	00cd7363          	bgeu	s10,a2,2e12 <memory.c.f6d1f22a+0x157>
    2e10:	866a                	mv	a2,s10
    2e12:	4008                	lw	a0,0(s0)
    2e14:	85d6                	mv	a1,s5
    2e16:	c632                	sw	a2,12(sp)
    2e18:	2219                	jal	2f1e <memmove>
    2e1a:	441c                	lw	a5,8(s0)
    2e1c:	4632                	lw	a2,12(sp)
    2e1e:	8f91                	sub	a5,a5,a2
    2e20:	c41c                	sw	a5,8(s0)
    2e22:	401c                	lw	a5,0(s0)
    2e24:	97b2                	add	a5,a5,a2
    2e26:	c01c                	sw	a5,0(s0)
    2e28:	008a2783          	lw	a5,8(s4)
    2e2c:	9aa6                	add	s5,s5,s1
    2e2e:	409d0d33          	sub	s10,s10,s1
    2e32:	8f85                	sub	a5,a5,s1
    2e34:	00fa2423          	sw	a5,8(s4)
    2e38:	f79d                	bnez	a5,2d66 <memory.c.f6d1f22a+0xab>
    2e3a:	bdcd                	j	2d2c <memory.c.f6d1f22a+0x71>
    2e3c:	8626                	mv	a2,s1
    2e3e:	854a                	mv	a0,s2
    2e40:	2211                	jal	2f44 <_realloc_r>
    2e42:	87aa                	mv	a5,a0
    2e44:	f95d                	bnez	a0,2dfa <memory.c.f6d1f22a+0x13f>
    2e46:	480c                	lw	a1,16(s0)
    2e48:	854a                	mv	a0,s2
    2e4a:	e8aff0ef          	jal	ra,24d4 <_free_r>
    2e4e:	00c45783          	lhu	a5,12(s0)
    2e52:	f7f7f793          	andi	a5,a5,-129
    2e56:	00f41623          	sh	a5,12(s0)
    2e5a:	bfa9                	j	2db4 <memory.c.f6d1f22a+0xf9>
    2e5c:	481c                	lw	a5,16(s0)
    2e5e:	00a7e563          	bltu	a5,a0,2e68 <soc_ctrl.c.866c9c8a+0x49>
    2e62:	4854                	lw	a3,20(s0)
    2e64:	02dd7663          	bgeu	s10,a3,2e90 <soc_ctrl.c.866c9c8a+0x71>
    2e68:	84b2                	mv	s1,a2
    2e6a:	00cd7363          	bgeu	s10,a2,2e70 <soc_ctrl.c.866c9c8a+0x51>
    2e6e:	84ea                	mv	s1,s10
    2e70:	8626                	mv	a2,s1
    2e72:	85d6                	mv	a1,s5
    2e74:	206d                	jal	2f1e <memmove>
    2e76:	441c                	lw	a5,8(s0)
    2e78:	4018                	lw	a4,0(s0)
    2e7a:	8f85                	sub	a5,a5,s1
    2e7c:	9726                	add	a4,a4,s1
    2e7e:	c41c                	sw	a5,8(s0)
    2e80:	c018                	sw	a4,0(s0)
    2e82:	f3dd                	bnez	a5,2e28 <soc_ctrl.c.866c9c8a+0x9>
    2e84:	85a2                	mv	a1,s0
    2e86:	854a                	mv	a0,s2
    2e88:	a18ff0ef          	jal	ra,20a0 <_fflush_r>
    2e8c:	dd51                	beqz	a0,2e28 <soc_ctrl.c.866c9c8a+0x9>
    2e8e:	b735                	j	2dba <memory.c.f6d1f22a+0xff>
    2e90:	87da                	mv	a5,s6
    2e92:	01abe363          	bltu	s7,s10,2e98 <soc_ctrl.c.866c9c8a+0x79>
    2e96:	87ea                	mv	a5,s10
    2e98:	02d7c7b3          	div	a5,a5,a3
    2e9c:	5418                	lw	a4,40(s0)
    2e9e:	500c                	lw	a1,32(s0)
    2ea0:	8656                	mv	a2,s5
    2ea2:	854a                	mv	a0,s2
    2ea4:	02d786b3          	mul	a3,a5,a3
    2ea8:	9702                	jalr	a4
    2eaa:	84aa                	mv	s1,a0
    2eac:	f6a04ee3          	bgtz	a0,2e28 <soc_ctrl.c.866c9c8a+0x9>
    2eb0:	b729                	j	2dba <memory.c.f6d1f22a+0xff>
    2eb2:	0009ab03          	lw	s6,0(s3)
    2eb6:	0049aa83          	lw	s5,4(s3)
    2eba:	4501                	li	a0,0
    2ebc:	09a1                	addi	s3,s3,8
    2ebe:	bb6d                	j	2c78 <__sfvwrite_r+0x54>
    2ec0:	00dc4b63          	blt	s8,a3,2ed6 <soc_ctrl.c.866c9c8a+0xb7>
    2ec4:	541c                	lw	a5,40(s0)
    2ec6:	500c                	lw	a1,32(s0)
    2ec8:	865a                	mv	a2,s6
    2eca:	854a                	mv	a0,s2
    2ecc:	9782                	jalr	a5
    2ece:	84aa                	mv	s1,a0
    2ed0:	dea04ae3          	bgtz	a0,2cc4 <memory.c.f6d1f22a+0x9>
    2ed4:	b5dd                	j	2dba <memory.c.f6d1f22a+0xff>
    2ed6:	8662                	mv	a2,s8
    2ed8:	85da                	mv	a1,s6
    2eda:	2091                	jal	2f1e <memmove>
    2edc:	441c                	lw	a5,8(s0)
    2ede:	84e2                	mv	s1,s8
    2ee0:	418787b3          	sub	a5,a5,s8
    2ee4:	c41c                	sw	a5,8(s0)
    2ee6:	401c                	lw	a5,0(s0)
    2ee8:	97e2                	add	a5,a5,s8
    2eea:	c01c                	sw	a5,0(s0)
    2eec:	bbe1                	j	2cc4 <memory.c.f6d1f22a+0x9>

00002eee <memchr>:
    2eee:	0ff5f593          	zext.b	a1,a1
    2ef2:	962a                	add	a2,a2,a0
    2ef4:	00c51463          	bne	a0,a2,2efc <memchr+0xe>
    2ef8:	4501                	li	a0,0
    2efa:	8082                	ret
    2efc:	00054783          	lbu	a5,0(a0)
    2f00:	feb78de3          	beq	a5,a1,2efa <memchr+0xc>
    2f04:	0505                	addi	a0,a0,1
    2f06:	b7fd                	j	2ef4 <memchr+0x6>

00002f08 <memcpy>:
    2f08:	832a                	mv	t1,a0
    2f0a:	ca09                	beqz	a2,2f1c <memcpy+0x14>
    2f0c:	00058383          	lb	t2,0(a1)
    2f10:	00730023          	sb	t2,0(t1)
    2f14:	167d                	addi	a2,a2,-1
    2f16:	0305                	addi	t1,t1,1
    2f18:	0585                	addi	a1,a1,1
    2f1a:	fa6d                	bnez	a2,2f0c <memcpy+0x4>
    2f1c:	8082                	ret

00002f1e <memmove>:
    2f1e:	c215                	beqz	a2,2f42 <memmove+0x24>
    2f20:	832a                	mv	t1,a0
    2f22:	4685                	li	a3,1
    2f24:	00b56763          	bltu	a0,a1,2f32 <memmove+0x14>
    2f28:	56fd                	li	a3,-1
    2f2a:	fff60713          	addi	a4,a2,-1
    2f2e:	933a                	add	t1,t1,a4
    2f30:	95ba                	add	a1,a1,a4
    2f32:	00058383          	lb	t2,0(a1)
    2f36:	00730023          	sb	t2,0(t1)
    2f3a:	167d                	addi	a2,a2,-1
    2f3c:	9336                	add	t1,t1,a3
    2f3e:	95b6                	add	a1,a1,a3
    2f40:	fa6d                	bnez	a2,2f32 <memmove+0x14>
    2f42:	8082                	ret

00002f44 <_realloc_r>:
    2f44:	1101                	addi	sp,sp,-32
    2f46:	cc22                	sw	s0,24(sp)
    2f48:	ce06                	sw	ra,28(sp)
    2f4a:	ca26                	sw	s1,20(sp)
    2f4c:	c84a                	sw	s2,16(sp)
    2f4e:	c64e                	sw	s3,12(sp)
    2f50:	c452                	sw	s4,8(sp)
    2f52:	8432                	mv	s0,a2
    2f54:	e999                	bnez	a1,2f6a <_realloc_r+0x26>
    2f56:	4462                	lw	s0,24(sp)
    2f58:	40f2                	lw	ra,28(sp)
    2f5a:	44d2                	lw	s1,20(sp)
    2f5c:	4942                	lw	s2,16(sp)
    2f5e:	49b2                	lw	s3,12(sp)
    2f60:	4a22                	lw	s4,8(sp)
    2f62:	85b2                	mv	a1,a2
    2f64:	6105                	addi	sp,sp,32
    2f66:	e10ff06f          	j	2576 <_malloc_r>
    2f6a:	ee09                	bnez	a2,2f84 <_realloc_r+0x40>
    2f6c:	d68ff0ef          	jal	ra,24d4 <_free_r>
    2f70:	4481                	li	s1,0
    2f72:	40f2                	lw	ra,28(sp)
    2f74:	4462                	lw	s0,24(sp)
    2f76:	4942                	lw	s2,16(sp)
    2f78:	49b2                	lw	s3,12(sp)
    2f7a:	4a22                	lw	s4,8(sp)
    2f7c:	8526                	mv	a0,s1
    2f7e:	44d2                	lw	s1,20(sp)
    2f80:	6105                	addi	sp,sp,32
    2f82:	8082                	ret
    2f84:	8a2a                	mv	s4,a0
    2f86:	892e                	mv	s2,a1
    2f88:	2665                	jal	3330 <_malloc_usable_size_r>
    2f8a:	89aa                	mv	s3,a0
    2f8c:	00856763          	bltu	a0,s0,2f9a <_realloc_r+0x56>
    2f90:	00155793          	srli	a5,a0,0x1
    2f94:	84ca                	mv	s1,s2
    2f96:	fc87eee3          	bltu	a5,s0,2f72 <_realloc_r+0x2e>
    2f9a:	85a2                	mv	a1,s0
    2f9c:	8552                	mv	a0,s4
    2f9e:	dd8ff0ef          	jal	ra,2576 <_malloc_r>
    2fa2:	84aa                	mv	s1,a0
    2fa4:	d579                	beqz	a0,2f72 <_realloc_r+0x2e>
    2fa6:	8622                	mv	a2,s0
    2fa8:	0089f363          	bgeu	s3,s0,2fae <_realloc_r+0x6a>
    2fac:	864e                	mv	a2,s3
    2fae:	85ca                	mv	a1,s2
    2fb0:	8526                	mv	a0,s1
    2fb2:	3f99                	jal	2f08 <memcpy>
    2fb4:	85ca                	mv	a1,s2
    2fb6:	8552                	mv	a0,s4
    2fb8:	d1cff0ef          	jal	ra,24d4 <_free_r>
    2fbc:	bf5d                	j	2f72 <_realloc_r+0x2e>

00002fbe <_printf_common>:
    2fbe:	7179                	addi	sp,sp,-48
    2fc0:	cc52                	sw	s4,24(sp)
    2fc2:	499c                	lw	a5,16(a1)
    2fc4:	8a3a                	mv	s4,a4
    2fc6:	4598                	lw	a4,8(a1)
    2fc8:	d422                	sw	s0,40(sp)
    2fca:	d04a                	sw	s2,32(sp)
    2fcc:	ce4e                	sw	s3,28(sp)
    2fce:	ca56                	sw	s5,20(sp)
    2fd0:	d606                	sw	ra,44(sp)
    2fd2:	d226                	sw	s1,36(sp)
    2fd4:	c85a                	sw	s6,16(sp)
    2fd6:	c65e                	sw	s7,12(sp)
    2fd8:	89aa                	mv	s3,a0
    2fda:	842e                	mv	s0,a1
    2fdc:	8932                	mv	s2,a2
    2fde:	8ab6                	mv	s5,a3
    2fe0:	00e7d363          	bge	a5,a4,2fe6 <_printf_common+0x28>
    2fe4:	87ba                	mv	a5,a4
    2fe6:	00f92023          	sw	a5,0(s2)
    2fea:	04344703          	lbu	a4,67(s0)
    2fee:	c701                	beqz	a4,2ff6 <_printf_common+0x38>
    2ff0:	0785                	addi	a5,a5,1
    2ff2:	00f92023          	sw	a5,0(s2)
    2ff6:	401c                	lw	a5,0(s0)
    2ff8:	0207f793          	andi	a5,a5,32
    2ffc:	c791                	beqz	a5,3008 <_printf_common+0x4a>
    2ffe:	00092783          	lw	a5,0(s2)
    3002:	0789                	addi	a5,a5,2
    3004:	00f92023          	sw	a5,0(s2)
    3008:	4004                	lw	s1,0(s0)
    300a:	8899                	andi	s1,s1,6
    300c:	e891                	bnez	s1,3020 <_printf_common+0x62>
    300e:	01940b13          	addi	s6,s0,25
    3012:	5bfd                	li	s7,-1
    3014:	445c                	lw	a5,12(s0)
    3016:	00092703          	lw	a4,0(s2)
    301a:	8f99                	sub	a5,a5,a4
    301c:	04f4cc63          	blt	s1,a5,3074 <_printf_common+0xb6>
    3020:	04344783          	lbu	a5,67(s0)
    3024:	00f036b3          	snez	a3,a5
    3028:	401c                	lw	a5,0(s0)
    302a:	0207f793          	andi	a5,a5,32
    302e:	eba5                	bnez	a5,309e <uart.c.04492fba+0x21>
    3030:	04340613          	addi	a2,s0,67
    3034:	85d6                	mv	a1,s5
    3036:	854e                	mv	a0,s3
    3038:	9a02                	jalr	s4
    303a:	57fd                	li	a5,-1
    303c:	04f50363          	beq	a0,a5,3082 <uart.c.04492fba+0x5>
    3040:	401c                	lw	a5,0(s0)
    3042:	4711                	li	a4,4
    3044:	4481                	li	s1,0
    3046:	8b99                	andi	a5,a5,6
    3048:	00e79963          	bne	a5,a4,305a <_printf_common+0x9c>
    304c:	4444                	lw	s1,12(s0)
    304e:	00092783          	lw	a5,0(s2)
    3052:	8c9d                	sub	s1,s1,a5
    3054:	0004d363          	bgez	s1,305a <_printf_common+0x9c>
    3058:	4481                	li	s1,0
    305a:	441c                	lw	a5,8(s0)
    305c:	4818                	lw	a4,16(s0)
    305e:	00f75463          	bge	a4,a5,3066 <_printf_common+0xa8>
    3062:	8f99                	sub	a5,a5,a4
    3064:	94be                	add	s1,s1,a5
    3066:	4901                	li	s2,0
    3068:	0469                	addi	s0,s0,26
    306a:	5b7d                	li	s6,-1
    306c:	05249863          	bne	s1,s2,30bc <uart.c.04492fba+0x3f>
    3070:	4501                	li	a0,0
    3072:	a809                	j	3084 <uart.c.04492fba+0x7>
    3074:	4685                	li	a3,1
    3076:	865a                	mv	a2,s6
    3078:	85d6                	mv	a1,s5
    307a:	854e                	mv	a0,s3
    307c:	9a02                	jalr	s4
    307e:	01751e63          	bne	a0,s7,309a <uart.c.04492fba+0x1d>
    3082:	557d                	li	a0,-1
    3084:	50b2                	lw	ra,44(sp)
    3086:	5422                	lw	s0,40(sp)
    3088:	5492                	lw	s1,36(sp)
    308a:	5902                	lw	s2,32(sp)
    308c:	49f2                	lw	s3,28(sp)
    308e:	4a62                	lw	s4,24(sp)
    3090:	4ad2                	lw	s5,20(sp)
    3092:	4b42                	lw	s6,16(sp)
    3094:	4bb2                	lw	s7,12(sp)
    3096:	6145                	addi	sp,sp,48
    3098:	8082                	ret
    309a:	0485                	addi	s1,s1,1
    309c:	bfa5                	j	3014 <_printf_common+0x56>
    309e:	00d40733          	add	a4,s0,a3
    30a2:	03000613          	li	a2,48
    30a6:	04c701a3          	sb	a2,67(a4)
    30aa:	04544703          	lbu	a4,69(s0)
    30ae:	00168793          	addi	a5,a3,1 # 1001 <dma_load_transaction.constprop.0.isra.0+0x81>
    30b2:	97a2                	add	a5,a5,s0
    30b4:	0689                	addi	a3,a3,2
    30b6:	04e781a3          	sb	a4,67(a5)
    30ba:	bf9d                	j	3030 <_printf_common+0x72>
    30bc:	4685                	li	a3,1
    30be:	8622                	mv	a2,s0
    30c0:	85d6                	mv	a1,s5
    30c2:	854e                	mv	a0,s3
    30c4:	9a02                	jalr	s4
    30c6:	fb650ee3          	beq	a0,s6,3082 <uart.c.04492fba+0x5>
    30ca:	0905                	addi	s2,s2,1
    30cc:	b745                	j	306c <_printf_common+0xae>

000030ce <_printf_i>:
    30ce:	7179                	addi	sp,sp,-48
    30d0:	d422                	sw	s0,40(sp)
    30d2:	d226                	sw	s1,36(sp)
    30d4:	d04a                	sw	s2,32(sp)
    30d6:	ce4e                	sw	s3,28(sp)
    30d8:	d606                	sw	ra,44(sp)
    30da:	cc52                	sw	s4,24(sp)
    30dc:	ca56                	sw	s5,20(sp)
    30de:	c85a                	sw	s6,16(sp)
    30e0:	0185c883          	lbu	a7,24(a1)
    30e4:	07800793          	li	a5,120
    30e8:	84aa                	mv	s1,a0
    30ea:	842e                	mv	s0,a1
    30ec:	8932                	mv	s2,a2
    30ee:	89b6                	mv	s3,a3
    30f0:	0117ee63          	bltu	a5,a7,310c <_printf_i+0x3e>
    30f4:	06200793          	li	a5,98
    30f8:	04358693          	addi	a3,a1,67
    30fc:	0117ed63          	bltu	a5,a7,3116 <_printf_i+0x48>
    3100:	1a088e63          	beqz	a7,32bc <_printf_i+0x1ee>
    3104:	05800793          	li	a5,88
    3108:	16f88f63          	beq	a7,a5,3286 <_printf_i+0x1b8>
    310c:	04240a93          	addi	s5,s0,66
    3110:	05140123          	sb	a7,66(s0)
    3114:	a80d                	j	3146 <_printf_i+0x78>
    3116:	f9d88793          	addi	a5,a7,-99
    311a:	0ff7f793          	zext.b	a5,a5
    311e:	4655                	li	a2,21
    3120:	fef666e3          	bltu	a2,a5,310c <_printf_i+0x3e>
    3124:	00080637          	lui	a2,0x80
    3128:	078a                	slli	a5,a5,0x2
    312a:	45060613          	addi	a2,a2,1104 # 80450 <__sf_fake_stdout+0x5c>
    312e:	97b2                	add	a5,a5,a2
    3130:	439c                	lw	a5,0(a5)
    3132:	8782                	jr	a5
    3134:	431c                	lw	a5,0(a4)
    3136:	04258a93          	addi	s5,a1,66
    313a:	00478693          	addi	a3,a5,4
    313e:	439c                	lw	a5,0(a5)
    3140:	c314                	sw	a3,0(a4)
    3142:	04f58123          	sb	a5,66(a1)
    3146:	4785                	li	a5,1
    3148:	aa69                	j	32e2 <_printf_i+0x214>
    314a:	419c                	lw	a5,0(a1)
    314c:	4308                	lw	a0,0(a4)
    314e:	0807f613          	andi	a2,a5,128
    3152:	00450593          	addi	a1,a0,4
    3156:	c20d                	beqz	a2,3178 <_printf_i+0xaa>
    3158:	411c                	lw	a5,0(a0)
    315a:	c30c                	sw	a1,0(a4)
    315c:	00080837          	lui	a6,0x80
    3160:	0007d863          	bgez	a5,3170 <_printf_i+0xa2>
    3164:	02d00713          	li	a4,45
    3168:	40f007b3          	neg	a5,a5
    316c:	04e401a3          	sb	a4,67(s0)
    3170:	42880813          	addi	a6,a6,1064 # 80428 <__sf_fake_stdout+0x34>
    3174:	4729                	li	a4,10
    3176:	a0a1                	j	31be <_printf_i+0xf0>
    3178:	0407f613          	andi	a2,a5,64
    317c:	411c                	lw	a5,0(a0)
    317e:	c30c                	sw	a1,0(a4)
    3180:	de71                	beqz	a2,315c <_printf_i+0x8e>
    3182:	07c2                	slli	a5,a5,0x10
    3184:	87c1                	srai	a5,a5,0x10
    3186:	bfd9                	j	315c <_printf_i+0x8e>
    3188:	4190                	lw	a2,0(a1)
    318a:	431c                	lw	a5,0(a4)
    318c:	08067513          	andi	a0,a2,128
    3190:	00478593          	addi	a1,a5,4
    3194:	c501                	beqz	a0,319c <_printf_i+0xce>
    3196:	c30c                	sw	a1,0(a4)
    3198:	439c                	lw	a5,0(a5)
    319a:	a039                	j	31a8 <_printf_i+0xda>
    319c:	04067613          	andi	a2,a2,64
    31a0:	c30c                	sw	a1,0(a4)
    31a2:	da7d                	beqz	a2,3198 <_printf_i+0xca>
    31a4:	0007d783          	lhu	a5,0(a5)
    31a8:	00080837          	lui	a6,0x80
    31ac:	06f00713          	li	a4,111
    31b0:	42880813          	addi	a6,a6,1064 # 80428 <__sf_fake_stdout+0x34>
    31b4:	0ce88e63          	beq	a7,a4,3290 <_printf_i+0x1c2>
    31b8:	4729                	li	a4,10
    31ba:	040401a3          	sb	zero,67(s0)
    31be:	4050                	lw	a2,4(s0)
    31c0:	c410                	sw	a2,8(s0)
    31c2:	00064563          	bltz	a2,31cc <_printf_i+0xfe>
    31c6:	400c                	lw	a1,0(s0)
    31c8:	99ed                	andi	a1,a1,-5
    31ca:	c00c                	sw	a1,0(s0)
    31cc:	e399                	bnez	a5,31d2 <_printf_i+0x104>
    31ce:	8ab6                	mv	s5,a3
    31d0:	ce19                	beqz	a2,31ee <_printf_i+0x120>
    31d2:	8ab6                	mv	s5,a3
    31d4:	02e7f633          	remu	a2,a5,a4
    31d8:	1afd                	addi	s5,s5,-1
    31da:	9642                	add	a2,a2,a6
    31dc:	00064603          	lbu	a2,0(a2)
    31e0:	00ca8023          	sb	a2,0(s5)
    31e4:	863e                	mv	a2,a5
    31e6:	02e7d7b3          	divu	a5,a5,a4
    31ea:	fee675e3          	bgeu	a2,a4,31d4 <_printf_i+0x106>
    31ee:	47a1                	li	a5,8
    31f0:	00f71e63          	bne	a4,a5,320c <_printf_i+0x13e>
    31f4:	401c                	lw	a5,0(s0)
    31f6:	8b85                	andi	a5,a5,1
    31f8:	cb91                	beqz	a5,320c <_printf_i+0x13e>
    31fa:	4058                	lw	a4,4(s0)
    31fc:	481c                	lw	a5,16(s0)
    31fe:	00e7c763          	blt	a5,a4,320c <_printf_i+0x13e>
    3202:	03000793          	li	a5,48
    3206:	fefa8fa3          	sb	a5,-1(s5)
    320a:	1afd                	addi	s5,s5,-1
    320c:	415686b3          	sub	a3,a3,s5
    3210:	c814                	sw	a3,16(s0)
    3212:	874e                	mv	a4,s3
    3214:	86ca                	mv	a3,s2
    3216:	0070                	addi	a2,sp,12
    3218:	85a2                	mv	a1,s0
    321a:	8526                	mv	a0,s1
    321c:	334d                	jal	2fbe <_printf_common>
    321e:	5a7d                	li	s4,-1
    3220:	0d451563          	bne	a0,s4,32ea <_printf_i+0x21c>
    3224:	557d                	li	a0,-1
    3226:	50b2                	lw	ra,44(sp)
    3228:	5422                	lw	s0,40(sp)
    322a:	5492                	lw	s1,36(sp)
    322c:	5902                	lw	s2,32(sp)
    322e:	49f2                	lw	s3,28(sp)
    3230:	4a62                	lw	s4,24(sp)
    3232:	4ad2                	lw	s5,20(sp)
    3234:	4b42                	lw	s6,16(sp)
    3236:	6145                	addi	sp,sp,48
    3238:	8082                	ret
    323a:	419c                	lw	a5,0(a1)
    323c:	0207e793          	ori	a5,a5,32
    3240:	c19c                	sw	a5,0(a1)
    3242:	00080837          	lui	a6,0x80
    3246:	07800893          	li	a7,120
    324a:	43c80813          	addi	a6,a6,1084 # 8043c <__sf_fake_stdout+0x48>
    324e:	051402a3          	sb	a7,69(s0)
    3252:	4010                	lw	a2,0(s0)
    3254:	430c                	lw	a1,0(a4)
    3256:	08067513          	andi	a0,a2,128
    325a:	419c                	lw	a5,0(a1)
    325c:	0591                	addi	a1,a1,4
    325e:	e511                	bnez	a0,326a <_printf_i+0x19c>
    3260:	04067513          	andi	a0,a2,64
    3264:	c119                	beqz	a0,326a <_printf_i+0x19c>
    3266:	07c2                	slli	a5,a5,0x10
    3268:	83c1                	srli	a5,a5,0x10
    326a:	c30c                	sw	a1,0(a4)
    326c:	00167713          	andi	a4,a2,1
    3270:	c701                	beqz	a4,3278 <_printf_i+0x1aa>
    3272:	02066613          	ori	a2,a2,32
    3276:	c010                	sw	a2,0(s0)
    3278:	4741                	li	a4,16
    327a:	f3a1                	bnez	a5,31ba <_printf_i+0xec>
    327c:	4010                	lw	a2,0(s0)
    327e:	fdf67613          	andi	a2,a2,-33
    3282:	c010                	sw	a2,0(s0)
    3284:	bf1d                	j	31ba <_printf_i+0xec>
    3286:	00080837          	lui	a6,0x80
    328a:	42880813          	addi	a6,a6,1064 # 80428 <__sf_fake_stdout+0x34>
    328e:	b7c1                	j	324e <_printf_i+0x180>
    3290:	4721                	li	a4,8
    3292:	b725                	j	31ba <_printf_i+0xec>
    3294:	4190                	lw	a2,0(a1)
    3296:	431c                	lw	a5,0(a4)
    3298:	49cc                	lw	a1,20(a1)
    329a:	08067813          	andi	a6,a2,128
    329e:	00478513          	addi	a0,a5,4
    32a2:	00080663          	beqz	a6,32ae <_printf_i+0x1e0>
    32a6:	c308                	sw	a0,0(a4)
    32a8:	439c                	lw	a5,0(a5)
    32aa:	c38c                	sw	a1,0(a5)
    32ac:	a801                	j	32bc <_printf_i+0x1ee>
    32ae:	c308                	sw	a0,0(a4)
    32b0:	04067613          	andi	a2,a2,64
    32b4:	439c                	lw	a5,0(a5)
    32b6:	da75                	beqz	a2,32aa <_printf_i+0x1dc>
    32b8:	00b79023          	sh	a1,0(a5)
    32bc:	00042823          	sw	zero,16(s0)
    32c0:	8ab6                	mv	s5,a3
    32c2:	bf81                	j	3212 <_printf_i+0x144>
    32c4:	431c                	lw	a5,0(a4)
    32c6:	41d0                	lw	a2,4(a1)
    32c8:	4581                	li	a1,0
    32ca:	00478693          	addi	a3,a5,4
    32ce:	c314                	sw	a3,0(a4)
    32d0:	0007aa83          	lw	s5,0(a5)
    32d4:	8556                	mv	a0,s5
    32d6:	3921                	jal	2eee <memchr>
    32d8:	c501                	beqz	a0,32e0 <_printf_i+0x212>
    32da:	41550533          	sub	a0,a0,s5
    32de:	c048                	sw	a0,4(s0)
    32e0:	405c                	lw	a5,4(s0)
    32e2:	c81c                	sw	a5,16(s0)
    32e4:	040401a3          	sb	zero,67(s0)
    32e8:	b72d                	j	3212 <_printf_i+0x144>
    32ea:	4814                	lw	a3,16(s0)
    32ec:	8656                	mv	a2,s5
    32ee:	85ca                	mv	a1,s2
    32f0:	8526                	mv	a0,s1
    32f2:	9982                	jalr	s3
    32f4:	f34508e3          	beq	a0,s4,3224 <_printf_i+0x156>
    32f8:	401c                	lw	a5,0(s0)
    32fa:	8b89                	andi	a5,a5,2
    32fc:	e78d                	bnez	a5,3326 <_printf_i+0x258>
    32fe:	47b2                	lw	a5,12(sp)
    3300:	4448                	lw	a0,12(s0)
    3302:	f2f552e3          	bge	a0,a5,3226 <_printf_i+0x158>
    3306:	853e                	mv	a0,a5
    3308:	bf39                	j	3226 <_printf_i+0x158>
    330a:	4685                	li	a3,1
    330c:	8656                	mv	a2,s5
    330e:	85ca                	mv	a1,s2
    3310:	8526                	mv	a0,s1
    3312:	9982                	jalr	s3
    3314:	f16508e3          	beq	a0,s6,3224 <_printf_i+0x156>
    3318:	0a05                	addi	s4,s4,1
    331a:	445c                	lw	a5,12(s0)
    331c:	4732                	lw	a4,12(sp)
    331e:	8f99                	sub	a5,a5,a4
    3320:	fefa45e3          	blt	s4,a5,330a <_printf_i+0x23c>
    3324:	bfe9                	j	32fe <_printf_i+0x230>
    3326:	4a01                	li	s4,0
    3328:	01940a93          	addi	s5,s0,25
    332c:	5b7d                	li	s6,-1
    332e:	b7f5                	j	331a <_printf_i+0x24c>

00003330 <_malloc_usable_size_r>:
    3330:	ffc5a783          	lw	a5,-4(a1)
    3334:	ffc78513          	addi	a0,a5,-4
    3338:	0007d563          	bgez	a5,3342 <_malloc_usable_size_r+0x12>
    333c:	95aa                	add	a1,a1,a0
    333e:	419c                	lw	a5,0(a1)
    3340:	953e                	add	a0,a0,a5
    3342:	8082                	ret

00003344 <__divdi3>:
    3344:	832a                	mv	t1,a0
    3346:	8e2e                	mv	t3,a1
    3348:	4881                	li	a7,0
    334a:	0005db63          	bgez	a1,3360 <__divdi3+0x1c>
    334e:	00a037b3          	snez	a5,a0
    3352:	40b00e33          	neg	t3,a1
    3356:	40fe0e33          	sub	t3,t3,a5
    335a:	40a00333          	neg	t1,a0
    335e:	58fd                	li	a7,-1
    3360:	0006db63          	bgez	a3,3376 <__divdi3+0x32>
    3364:	00c037b3          	snez	a5,a2
    3368:	40d006b3          	neg	a3,a3
    336c:	fff8c893          	not	a7,a7
    3370:	8e9d                	sub	a3,a3,a5
    3372:	40c00633          	neg	a2,a2
    3376:	8732                	mv	a4,a2
    3378:	881a                	mv	a6,t1
    337a:	87f2                	mv	a5,t3
    337c:	20069f63          	bnez	a3,359a <__divdi3+0x256>
    3380:	000805b7          	lui	a1,0x80
    3384:	4a858593          	addi	a1,a1,1192 # 804a8 <__clz_tab>
    3388:	0cce7163          	bgeu	t3,a2,344a <__divdi3+0x106>
    338c:	66c1                	lui	a3,0x10
    338e:	0ad67763          	bgeu	a2,a3,343c <__divdi3+0xf8>
    3392:	10063693          	sltiu	a3,a2,256
    3396:	0016c693          	xori	a3,a3,1
    339a:	068e                	slli	a3,a3,0x3
    339c:	00d65533          	srl	a0,a2,a3
    33a0:	95aa                	add	a1,a1,a0
    33a2:	0005c583          	lbu	a1,0(a1)
    33a6:	02000513          	li	a0,32
    33aa:	96ae                	add	a3,a3,a1
    33ac:	40d505b3          	sub	a1,a0,a3
    33b0:	00d50b63          	beq	a0,a3,33c6 <__divdi3+0x82>
    33b4:	00be17b3          	sll	a5,t3,a1
    33b8:	00d356b3          	srl	a3,t1,a3
    33bc:	00b61733          	sll	a4,a2,a1
    33c0:	8fd5                	or	a5,a5,a3
    33c2:	00b31833          	sll	a6,t1,a1
    33c6:	01075593          	srli	a1,a4,0x10
    33ca:	02b7de33          	divu	t3,a5,a1
    33ce:	01071613          	slli	a2,a4,0x10
    33d2:	8241                	srli	a2,a2,0x10
    33d4:	02b7f7b3          	remu	a5,a5,a1
    33d8:	8572                	mv	a0,t3
    33da:	03c60333          	mul	t1,a2,t3
    33de:	01079693          	slli	a3,a5,0x10
    33e2:	01085793          	srli	a5,a6,0x10
    33e6:	8fd5                	or	a5,a5,a3
    33e8:	0067fc63          	bgeu	a5,t1,3400 <__divdi3+0xbc>
    33ec:	97ba                	add	a5,a5,a4
    33ee:	fffe0513          	addi	a0,t3,-1
    33f2:	00e7e763          	bltu	a5,a4,3400 <__divdi3+0xbc>
    33f6:	0067f563          	bgeu	a5,t1,3400 <__divdi3+0xbc>
    33fa:	ffee0513          	addi	a0,t3,-2
    33fe:	97ba                	add	a5,a5,a4
    3400:	406787b3          	sub	a5,a5,t1
    3404:	02b7d333          	divu	t1,a5,a1
    3408:	0842                	slli	a6,a6,0x10
    340a:	01085813          	srli	a6,a6,0x10
    340e:	02b7f7b3          	remu	a5,a5,a1
    3412:	026606b3          	mul	a3,a2,t1
    3416:	07c2                	slli	a5,a5,0x10
    3418:	00f86833          	or	a6,a6,a5
    341c:	879a                	mv	a5,t1
    341e:	00d87b63          	bgeu	a6,a3,3434 <__divdi3+0xf0>
    3422:	983a                	add	a6,a6,a4
    3424:	fff30793          	addi	a5,t1,-1
    3428:	00e86663          	bltu	a6,a4,3434 <__divdi3+0xf0>
    342c:	00d87463          	bgeu	a6,a3,3434 <__divdi3+0xf0>
    3430:	ffe30793          	addi	a5,t1,-2
    3434:	0542                	slli	a0,a0,0x10
    3436:	8d5d                	or	a0,a0,a5
    3438:	4581                	li	a1,0
    343a:	a84d                	j	34ec <__divdi3+0x1a8>
    343c:	01000537          	lui	a0,0x1000
    3440:	46c1                	li	a3,16
    3442:	f4a66de3          	bltu	a2,a0,339c <__divdi3+0x58>
    3446:	46e1                	li	a3,24
    3448:	bf91                	j	339c <__divdi3+0x58>
    344a:	e211                	bnez	a2,344e <__divdi3+0x10a>
    344c:	9002                	ebreak
    344e:	67c1                	lui	a5,0x10
    3450:	0af67863          	bgeu	a2,a5,3500 <__divdi3+0x1bc>
    3454:	10063693          	sltiu	a3,a2,256
    3458:	0016c693          	xori	a3,a3,1
    345c:	068e                	slli	a3,a3,0x3
    345e:	00d657b3          	srl	a5,a2,a3
    3462:	95be                	add	a1,a1,a5
    3464:	0005c783          	lbu	a5,0(a1)
    3468:	97b6                	add	a5,a5,a3
    346a:	02000693          	li	a3,32
    346e:	40f685b3          	sub	a1,a3,a5
    3472:	08f69e63          	bne	a3,a5,350e <__divdi3+0x1ca>
    3476:	40ce07b3          	sub	a5,t3,a2
    347a:	4585                	li	a1,1
    347c:	01075313          	srli	t1,a4,0x10
    3480:	0267deb3          	divu	t4,a5,t1
    3484:	01071613          	slli	a2,a4,0x10
    3488:	8241                	srli	a2,a2,0x10
    348a:	01085693          	srli	a3,a6,0x10
    348e:	0267f7b3          	remu	a5,a5,t1
    3492:	8576                	mv	a0,t4
    3494:	03d60e33          	mul	t3,a2,t4
    3498:	07c2                	slli	a5,a5,0x10
    349a:	8fd5                	or	a5,a5,a3
    349c:	01c7fc63          	bgeu	a5,t3,34b4 <__divdi3+0x170>
    34a0:	97ba                	add	a5,a5,a4
    34a2:	fffe8513          	addi	a0,t4,-1
    34a6:	00e7e763          	bltu	a5,a4,34b4 <__divdi3+0x170>
    34aa:	01c7f563          	bgeu	a5,t3,34b4 <__divdi3+0x170>
    34ae:	ffee8513          	addi	a0,t4,-2
    34b2:	97ba                	add	a5,a5,a4
    34b4:	41c787b3          	sub	a5,a5,t3
    34b8:	0267de33          	divu	t3,a5,t1
    34bc:	0842                	slli	a6,a6,0x10
    34be:	01085813          	srli	a6,a6,0x10
    34c2:	0267f7b3          	remu	a5,a5,t1
    34c6:	03c606b3          	mul	a3,a2,t3
    34ca:	07c2                	slli	a5,a5,0x10
    34cc:	00f86833          	or	a6,a6,a5
    34d0:	87f2                	mv	a5,t3
    34d2:	00d87b63          	bgeu	a6,a3,34e8 <__divdi3+0x1a4>
    34d6:	983a                	add	a6,a6,a4
    34d8:	fffe0793          	addi	a5,t3,-1
    34dc:	00e86663          	bltu	a6,a4,34e8 <__divdi3+0x1a4>
    34e0:	00d87463          	bgeu	a6,a3,34e8 <__divdi3+0x1a4>
    34e4:	ffee0793          	addi	a5,t3,-2
    34e8:	0542                	slli	a0,a0,0x10
    34ea:	8d5d                	or	a0,a0,a5
    34ec:	00088963          	beqz	a7,34fe <__divdi3+0x1ba>
    34f0:	00a037b3          	snez	a5,a0
    34f4:	40b005b3          	neg	a1,a1
    34f8:	8d9d                	sub	a1,a1,a5
    34fa:	40a00533          	neg	a0,a0
    34fe:	8082                	ret
    3500:	010007b7          	lui	a5,0x1000
    3504:	46c1                	li	a3,16
    3506:	f4f66ce3          	bltu	a2,a5,345e <__divdi3+0x11a>
    350a:	46e1                	li	a3,24
    350c:	bf89                	j	345e <__divdi3+0x11a>
    350e:	00b61733          	sll	a4,a2,a1
    3512:	00fe56b3          	srl	a3,t3,a5
    3516:	01075513          	srli	a0,a4,0x10
    351a:	00be1e33          	sll	t3,t3,a1
    351e:	00f357b3          	srl	a5,t1,a5
    3522:	01c7e7b3          	or	a5,a5,t3
    3526:	02a6de33          	divu	t3,a3,a0
    352a:	01071613          	slli	a2,a4,0x10
    352e:	8241                	srli	a2,a2,0x10
    3530:	00b31833          	sll	a6,t1,a1
    3534:	02a6f6b3          	remu	a3,a3,a0
    3538:	03c60333          	mul	t1,a2,t3
    353c:	01069593          	slli	a1,a3,0x10
    3540:	0107d693          	srli	a3,a5,0x10
    3544:	8ecd                	or	a3,a3,a1
    3546:	85f2                	mv	a1,t3
    3548:	0066fc63          	bgeu	a3,t1,3560 <__divdi3+0x21c>
    354c:	96ba                	add	a3,a3,a4
    354e:	fffe0593          	addi	a1,t3,-1
    3552:	00e6e763          	bltu	a3,a4,3560 <__divdi3+0x21c>
    3556:	0066f563          	bgeu	a3,t1,3560 <__divdi3+0x21c>
    355a:	ffee0593          	addi	a1,t3,-2
    355e:	96ba                	add	a3,a3,a4
    3560:	406686b3          	sub	a3,a3,t1
    3564:	02a6d333          	divu	t1,a3,a0
    3568:	07c2                	slli	a5,a5,0x10
    356a:	83c1                	srli	a5,a5,0x10
    356c:	02a6f6b3          	remu	a3,a3,a0
    3570:	02660633          	mul	a2,a2,t1
    3574:	06c2                	slli	a3,a3,0x10
    3576:	8fd5                	or	a5,a5,a3
    3578:	869a                	mv	a3,t1
    357a:	00c7fc63          	bgeu	a5,a2,3592 <__divdi3+0x24e>
    357e:	97ba                	add	a5,a5,a4
    3580:	fff30693          	addi	a3,t1,-1
    3584:	00e7e763          	bltu	a5,a4,3592 <__divdi3+0x24e>
    3588:	00c7f563          	bgeu	a5,a2,3592 <__divdi3+0x24e>
    358c:	ffe30693          	addi	a3,t1,-2
    3590:	97ba                	add	a5,a5,a4
    3592:	05c2                	slli	a1,a1,0x10
    3594:	8f91                	sub	a5,a5,a2
    3596:	8dd5                	or	a1,a1,a3
    3598:	b5d5                	j	347c <__divdi3+0x138>
    359a:	14de6163          	bltu	t3,a3,36dc <rv_plic.c.e296d9ea+0x11b>
    359e:	67c1                	lui	a5,0x10
    35a0:	02f6ff63          	bgeu	a3,a5,35de <rv_plic.c.e296d9ea+0x1d>
    35a4:	1006b713          	sltiu	a4,a3,256
    35a8:	00174713          	xori	a4,a4,1
    35ac:	070e                	slli	a4,a4,0x3
    35ae:	000807b7          	lui	a5,0x80
    35b2:	00e6d5b3          	srl	a1,a3,a4
    35b6:	4a878793          	addi	a5,a5,1192 # 804a8 <__clz_tab>
    35ba:	97ae                	add	a5,a5,a1
    35bc:	0007c783          	lbu	a5,0(a5)
    35c0:	97ba                	add	a5,a5,a4
    35c2:	02000713          	li	a4,32
    35c6:	40f705b3          	sub	a1,a4,a5
    35ca:	02f71163          	bne	a4,a5,35ec <rv_plic.c.e296d9ea+0x2b>
    35ce:	4505                	li	a0,1
    35d0:	f1c6eee3          	bltu	a3,t3,34ec <__divdi3+0x1a8>
    35d4:	00c33533          	sltu	a0,t1,a2
    35d8:	00154513          	xori	a0,a0,1
    35dc:	bf01                	j	34ec <__divdi3+0x1a8>
    35de:	010007b7          	lui	a5,0x1000
    35e2:	4741                	li	a4,16
    35e4:	fcf6e5e3          	bltu	a3,a5,35ae <__divdi3+0x26a>
    35e8:	4761                	li	a4,24
    35ea:	b7d1                	j	35ae <__divdi3+0x26a>
    35ec:	00f65733          	srl	a4,a2,a5
    35f0:	00b696b3          	sll	a3,a3,a1
    35f4:	8ed9                	or	a3,a3,a4
    35f6:	00fe5733          	srl	a4,t3,a5
    35fa:	00be1e33          	sll	t3,t3,a1
    35fe:	00f357b3          	srl	a5,t1,a5
    3602:	01c7e7b3          	or	a5,a5,t3
    3606:	0106de13          	srli	t3,a3,0x10
    360a:	03c75f33          	divu	t5,a4,t3
    360e:	01069813          	slli	a6,a3,0x10
    3612:	01085813          	srli	a6,a6,0x10
    3616:	00b61633          	sll	a2,a2,a1
    361a:	03c77733          	remu	a4,a4,t3
    361e:	03e80eb3          	mul	t4,a6,t5
    3622:	01071513          	slli	a0,a4,0x10
    3626:	0107d713          	srli	a4,a5,0x10
    362a:	8f49                	or	a4,a4,a0
    362c:	857a                	mv	a0,t5
    362e:	01d77c63          	bgeu	a4,t4,3646 <rv_plic.c.e296d9ea+0x85>
    3632:	9736                	add	a4,a4,a3
    3634:	ffff0513          	addi	a0,t5,-1
    3638:	00d76763          	bltu	a4,a3,3646 <rv_plic.c.e296d9ea+0x85>
    363c:	01d77563          	bgeu	a4,t4,3646 <rv_plic.c.e296d9ea+0x85>
    3640:	ffef0513          	addi	a0,t5,-2
    3644:	9736                	add	a4,a4,a3
    3646:	41d70733          	sub	a4,a4,t4
    364a:	03c75eb3          	divu	t4,a4,t3
    364e:	07c2                	slli	a5,a5,0x10
    3650:	83c1                	srli	a5,a5,0x10
    3652:	03c77733          	remu	a4,a4,t3
    3656:	03d80833          	mul	a6,a6,t4
    365a:	0742                	slli	a4,a4,0x10
    365c:	8fd9                	or	a5,a5,a4
    365e:	8776                	mv	a4,t4
    3660:	0107fc63          	bgeu	a5,a6,3678 <rv_plic.c.e296d9ea+0xb7>
    3664:	97b6                	add	a5,a5,a3
    3666:	fffe8713          	addi	a4,t4,-1
    366a:	00d7e763          	bltu	a5,a3,3678 <rv_plic.c.e296d9ea+0xb7>
    366e:	0107f563          	bgeu	a5,a6,3678 <rv_plic.c.e296d9ea+0xb7>
    3672:	ffee8713          	addi	a4,t4,-2
    3676:	97b6                	add	a5,a5,a3
    3678:	0542                	slli	a0,a0,0x10
    367a:	6ec1                	lui	t4,0x10
    367c:	8d59                	or	a0,a0,a4
    367e:	fffe8693          	addi	a3,t4,-1 # ffff <intt_driver.c.552d8326+0x7b2d>
    3682:	00d57733          	and	a4,a0,a3
    3686:	410787b3          	sub	a5,a5,a6
    368a:	8ef1                	and	a3,a3,a2
    368c:	01055813          	srli	a6,a0,0x10
    3690:	8241                	srli	a2,a2,0x10
    3692:	02d70e33          	mul	t3,a4,a3
    3696:	02d806b3          	mul	a3,a6,a3
    369a:	02c70733          	mul	a4,a4,a2
    369e:	02c80833          	mul	a6,a6,a2
    36a2:	00d70633          	add	a2,a4,a3
    36a6:	010e5713          	srli	a4,t3,0x10
    36aa:	9732                	add	a4,a4,a2
    36ac:	00d77363          	bgeu	a4,a3,36b2 <rv_plic.c.e296d9ea+0xf1>
    36b0:	9876                	add	a6,a6,t4
    36b2:	01075693          	srli	a3,a4,0x10
    36b6:	96c2                	add	a3,a3,a6
    36b8:	02d7e063          	bltu	a5,a3,36d8 <rv_plic.c.e296d9ea+0x117>
    36bc:	d6d79ee3          	bne	a5,a3,3438 <__divdi3+0xf4>
    36c0:	67c1                	lui	a5,0x10
    36c2:	17fd                	addi	a5,a5,-1
    36c4:	8f7d                	and	a4,a4,a5
    36c6:	0742                	slli	a4,a4,0x10
    36c8:	00fe7e33          	and	t3,t3,a5
    36cc:	00b31333          	sll	t1,t1,a1
    36d0:	9772                	add	a4,a4,t3
    36d2:	4581                	li	a1,0
    36d4:	e0e37ce3          	bgeu	t1,a4,34ec <__divdi3+0x1a8>
    36d8:	157d                	addi	a0,a0,-1
    36da:	bbb9                	j	3438 <__divdi3+0xf4>
    36dc:	4581                	li	a1,0
    36de:	4501                	li	a0,0
    36e0:	b531                	j	34ec <__divdi3+0x1a8>

000036e2 <__udivdi3>:
    36e2:	832a                	mv	t1,a0
    36e4:	88ae                	mv	a7,a1
    36e6:	8732                	mv	a4,a2
    36e8:	882a                	mv	a6,a0
    36ea:	87ae                	mv	a5,a1
    36ec:	20069663          	bnez	a3,38f8 <__udivdi3+0x216>
    36f0:	000805b7          	lui	a1,0x80
    36f4:	4a858593          	addi	a1,a1,1192 # 804a8 <__clz_tab>
    36f8:	0cc8f163          	bgeu	a7,a2,37ba <__udivdi3+0xd8>
    36fc:	66c1                	lui	a3,0x10
    36fe:	0ad67763          	bgeu	a2,a3,37ac <__udivdi3+0xca>
    3702:	10063693          	sltiu	a3,a2,256
    3706:	0016c693          	xori	a3,a3,1
    370a:	068e                	slli	a3,a3,0x3
    370c:	00d65533          	srl	a0,a2,a3
    3710:	95aa                	add	a1,a1,a0
    3712:	0005c583          	lbu	a1,0(a1)
    3716:	02000513          	li	a0,32
    371a:	96ae                	add	a3,a3,a1
    371c:	40d505b3          	sub	a1,a0,a3
    3720:	00d50b63          	beq	a0,a3,3736 <__udivdi3+0x54>
    3724:	00b897b3          	sll	a5,a7,a1
    3728:	00d356b3          	srl	a3,t1,a3
    372c:	00b61733          	sll	a4,a2,a1
    3730:	8fd5                	or	a5,a5,a3
    3732:	00b31833          	sll	a6,t1,a1
    3736:	01075593          	srli	a1,a4,0x10
    373a:	02b7d333          	divu	t1,a5,a1
    373e:	01071613          	slli	a2,a4,0x10
    3742:	8241                	srli	a2,a2,0x10
    3744:	02b7f7b3          	remu	a5,a5,a1
    3748:	851a                	mv	a0,t1
    374a:	026608b3          	mul	a7,a2,t1
    374e:	01079693          	slli	a3,a5,0x10
    3752:	01085793          	srli	a5,a6,0x10
    3756:	8fd5                	or	a5,a5,a3
    3758:	0117fc63          	bgeu	a5,a7,3770 <__udivdi3+0x8e>
    375c:	97ba                	add	a5,a5,a4
    375e:	fff30513          	addi	a0,t1,-1
    3762:	00e7e763          	bltu	a5,a4,3770 <__udivdi3+0x8e>
    3766:	0117f563          	bgeu	a5,a7,3770 <__udivdi3+0x8e>
    376a:	ffe30513          	addi	a0,t1,-2
    376e:	97ba                	add	a5,a5,a4
    3770:	411787b3          	sub	a5,a5,a7
    3774:	02b7d8b3          	divu	a7,a5,a1
    3778:	0842                	slli	a6,a6,0x10
    377a:	01085813          	srli	a6,a6,0x10
    377e:	02b7f7b3          	remu	a5,a5,a1
    3782:	031606b3          	mul	a3,a2,a7
    3786:	07c2                	slli	a5,a5,0x10
    3788:	00f86833          	or	a6,a6,a5
    378c:	87c6                	mv	a5,a7
    378e:	00d87b63          	bgeu	a6,a3,37a4 <__udivdi3+0xc2>
    3792:	983a                	add	a6,a6,a4
    3794:	fff88793          	addi	a5,a7,-1
    3798:	00e86663          	bltu	a6,a4,37a4 <__udivdi3+0xc2>
    379c:	00d87463          	bgeu	a6,a3,37a4 <__udivdi3+0xc2>
    37a0:	ffe88793          	addi	a5,a7,-2
    37a4:	0542                	slli	a0,a0,0x10
    37a6:	8d5d                	or	a0,a0,a5
    37a8:	4581                	li	a1,0
    37aa:	8082                	ret
    37ac:	01000537          	lui	a0,0x1000
    37b0:	46c1                	li	a3,16
    37b2:	f4a66de3          	bltu	a2,a0,370c <__udivdi3+0x2a>
    37b6:	46e1                	li	a3,24
    37b8:	bf91                	j	370c <__udivdi3+0x2a>
    37ba:	e211                	bnez	a2,37be <__udivdi3+0xdc>
    37bc:	9002                	ebreak
    37be:	67c1                	lui	a5,0x10
    37c0:	08f67f63          	bgeu	a2,a5,385e <__udivdi3+0x17c>
    37c4:	10063693          	sltiu	a3,a2,256
    37c8:	0016c693          	xori	a3,a3,1
    37cc:	068e                	slli	a3,a3,0x3
    37ce:	00d657b3          	srl	a5,a2,a3
    37d2:	95be                	add	a1,a1,a5
    37d4:	0005c783          	lbu	a5,0(a1)
    37d8:	97b6                	add	a5,a5,a3
    37da:	02000693          	li	a3,32
    37de:	40f685b3          	sub	a1,a3,a5
    37e2:	08f69563          	bne	a3,a5,386c <__udivdi3+0x18a>
    37e6:	40c887b3          	sub	a5,a7,a2
    37ea:	4585                	li	a1,1
    37ec:	01075893          	srli	a7,a4,0x10
    37f0:	0317de33          	divu	t3,a5,a7
    37f4:	01071613          	slli	a2,a4,0x10
    37f8:	8241                	srli	a2,a2,0x10
    37fa:	01085693          	srli	a3,a6,0x10
    37fe:	0317f7b3          	remu	a5,a5,a7
    3802:	8572                	mv	a0,t3
    3804:	03c60333          	mul	t1,a2,t3
    3808:	07c2                	slli	a5,a5,0x10
    380a:	8fd5                	or	a5,a5,a3
    380c:	0067fc63          	bgeu	a5,t1,3824 <__udivdi3+0x142>
    3810:	97ba                	add	a5,a5,a4
    3812:	fffe0513          	addi	a0,t3,-1
    3816:	00e7e763          	bltu	a5,a4,3824 <__udivdi3+0x142>
    381a:	0067f563          	bgeu	a5,t1,3824 <__udivdi3+0x142>
    381e:	ffee0513          	addi	a0,t3,-2
    3822:	97ba                	add	a5,a5,a4
    3824:	406787b3          	sub	a5,a5,t1
    3828:	0317d333          	divu	t1,a5,a7
    382c:	0842                	slli	a6,a6,0x10
    382e:	01085813          	srli	a6,a6,0x10
    3832:	0317f7b3          	remu	a5,a5,a7
    3836:	026606b3          	mul	a3,a2,t1
    383a:	07c2                	slli	a5,a5,0x10
    383c:	00f86833          	or	a6,a6,a5
    3840:	879a                	mv	a5,t1
    3842:	00d87b63          	bgeu	a6,a3,3858 <__udivdi3+0x176>
    3846:	983a                	add	a6,a6,a4
    3848:	fff30793          	addi	a5,t1,-1
    384c:	00e86663          	bltu	a6,a4,3858 <__udivdi3+0x176>
    3850:	00d87463          	bgeu	a6,a3,3858 <__udivdi3+0x176>
    3854:	ffe30793          	addi	a5,t1,-2
    3858:	0542                	slli	a0,a0,0x10
    385a:	8d5d                	or	a0,a0,a5
    385c:	8082                	ret
    385e:	010007b7          	lui	a5,0x1000
    3862:	46c1                	li	a3,16
    3864:	f6f665e3          	bltu	a2,a5,37ce <__udivdi3+0xec>
    3868:	46e1                	li	a3,24
    386a:	b795                	j	37ce <__udivdi3+0xec>
    386c:	00b61733          	sll	a4,a2,a1
    3870:	00f8d6b3          	srl	a3,a7,a5
    3874:	01075513          	srli	a0,a4,0x10
    3878:	00f357b3          	srl	a5,t1,a5
    387c:	00b31833          	sll	a6,t1,a1
    3880:	02a6d333          	divu	t1,a3,a0
    3884:	01071613          	slli	a2,a4,0x10
    3888:	00b898b3          	sll	a7,a7,a1
    388c:	8241                	srli	a2,a2,0x10
    388e:	0117e7b3          	or	a5,a5,a7
    3892:	02a6f6b3          	remu	a3,a3,a0
    3896:	026608b3          	mul	a7,a2,t1
    389a:	01069593          	slli	a1,a3,0x10
    389e:	0107d693          	srli	a3,a5,0x10
    38a2:	8ecd                	or	a3,a3,a1
    38a4:	859a                	mv	a1,t1
    38a6:	0116fc63          	bgeu	a3,a7,38be <__udivdi3+0x1dc>
    38aa:	96ba                	add	a3,a3,a4
    38ac:	fff30593          	addi	a1,t1,-1
    38b0:	00e6e763          	bltu	a3,a4,38be <__udivdi3+0x1dc>
    38b4:	0116f563          	bgeu	a3,a7,38be <__udivdi3+0x1dc>
    38b8:	ffe30593          	addi	a1,t1,-2
    38bc:	96ba                	add	a3,a3,a4
    38be:	411686b3          	sub	a3,a3,a7
    38c2:	02a6d8b3          	divu	a7,a3,a0
    38c6:	07c2                	slli	a5,a5,0x10
    38c8:	83c1                	srli	a5,a5,0x10
    38ca:	02a6f6b3          	remu	a3,a3,a0
    38ce:	03160633          	mul	a2,a2,a7
    38d2:	06c2                	slli	a3,a3,0x10
    38d4:	8fd5                	or	a5,a5,a3
    38d6:	86c6                	mv	a3,a7
    38d8:	00c7fc63          	bgeu	a5,a2,38f0 <__udivdi3+0x20e>
    38dc:	97ba                	add	a5,a5,a4
    38de:	fff88693          	addi	a3,a7,-1
    38e2:	00e7e763          	bltu	a5,a4,38f0 <__udivdi3+0x20e>
    38e6:	00c7f563          	bgeu	a5,a2,38f0 <__udivdi3+0x20e>
    38ea:	ffe88693          	addi	a3,a7,-2
    38ee:	97ba                	add	a5,a5,a4
    38f0:	05c2                	slli	a1,a1,0x10
    38f2:	8f91                	sub	a5,a5,a2
    38f4:	8dd5                	or	a1,a1,a3
    38f6:	bddd                	j	37ec <__udivdi3+0x10a>
    38f8:	14d5e163          	bltu	a1,a3,3a3a <__udivdi3+0x358>
    38fc:	67c1                	lui	a5,0x10
    38fe:	02f6ff63          	bgeu	a3,a5,393c <__udivdi3+0x25a>
    3902:	1006b713          	sltiu	a4,a3,256
    3906:	00174713          	xori	a4,a4,1
    390a:	070e                	slli	a4,a4,0x3
    390c:	000807b7          	lui	a5,0x80
    3910:	00e6d5b3          	srl	a1,a3,a4
    3914:	4a878793          	addi	a5,a5,1192 # 804a8 <__clz_tab>
    3918:	97ae                	add	a5,a5,a1
    391a:	0007c783          	lbu	a5,0(a5)
    391e:	97ba                	add	a5,a5,a4
    3920:	02000713          	li	a4,32
    3924:	40f705b3          	sub	a1,a4,a5
    3928:	02f71163          	bne	a4,a5,394a <__udivdi3+0x268>
    392c:	4505                	li	a0,1
    392e:	e716eee3          	bltu	a3,a7,37aa <__udivdi3+0xc8>
    3932:	00c33533          	sltu	a0,t1,a2
    3936:	00154513          	xori	a0,a0,1
    393a:	8082                	ret
    393c:	010007b7          	lui	a5,0x1000
    3940:	4741                	li	a4,16
    3942:	fcf6e5e3          	bltu	a3,a5,390c <__udivdi3+0x22a>
    3946:	4761                	li	a4,24
    3948:	b7d1                	j	390c <__udivdi3+0x22a>
    394a:	00f65733          	srl	a4,a2,a5
    394e:	00b696b3          	sll	a3,a3,a1
    3952:	8ed9                	or	a3,a3,a4
    3954:	00f8d733          	srl	a4,a7,a5
    3958:	00b898b3          	sll	a7,a7,a1
    395c:	00f357b3          	srl	a5,t1,a5
    3960:	0117e7b3          	or	a5,a5,a7
    3964:	0106d893          	srli	a7,a3,0x10
    3968:	03175eb3          	divu	t4,a4,a7
    396c:	01069813          	slli	a6,a3,0x10
    3970:	01085813          	srli	a6,a6,0x10
    3974:	00b61633          	sll	a2,a2,a1
    3978:	03177733          	remu	a4,a4,a7
    397c:	03d80e33          	mul	t3,a6,t4
    3980:	01071513          	slli	a0,a4,0x10
    3984:	0107d713          	srli	a4,a5,0x10
    3988:	8f49                	or	a4,a4,a0
    398a:	8576                	mv	a0,t4
    398c:	01c77c63          	bgeu	a4,t3,39a4 <__udivdi3+0x2c2>
    3990:	9736                	add	a4,a4,a3
    3992:	fffe8513          	addi	a0,t4,-1
    3996:	00d76763          	bltu	a4,a3,39a4 <__udivdi3+0x2c2>
    399a:	01c77563          	bgeu	a4,t3,39a4 <__udivdi3+0x2c2>
    399e:	ffee8513          	addi	a0,t4,-2
    39a2:	9736                	add	a4,a4,a3
    39a4:	41c70733          	sub	a4,a4,t3
    39a8:	03175e33          	divu	t3,a4,a7
    39ac:	07c2                	slli	a5,a5,0x10
    39ae:	83c1                	srli	a5,a5,0x10
    39b0:	03177733          	remu	a4,a4,a7
    39b4:	03c80833          	mul	a6,a6,t3
    39b8:	0742                	slli	a4,a4,0x10
    39ba:	8fd9                	or	a5,a5,a4
    39bc:	8772                	mv	a4,t3
    39be:	0107fc63          	bgeu	a5,a6,39d6 <__udivdi3+0x2f4>
    39c2:	97b6                	add	a5,a5,a3
    39c4:	fffe0713          	addi	a4,t3,-1
    39c8:	00d7e763          	bltu	a5,a3,39d6 <__udivdi3+0x2f4>
    39cc:	0107f563          	bgeu	a5,a6,39d6 <__udivdi3+0x2f4>
    39d0:	ffee0713          	addi	a4,t3,-2
    39d4:	97b6                	add	a5,a5,a3
    39d6:	0542                	slli	a0,a0,0x10
    39d8:	6e41                	lui	t3,0x10
    39da:	8d59                	or	a0,a0,a4
    39dc:	fffe0693          	addi	a3,t3,-1 # ffff <intt_driver.c.552d8326+0x7b2d>
    39e0:	00d57733          	and	a4,a0,a3
    39e4:	410787b3          	sub	a5,a5,a6
    39e8:	8ef1                	and	a3,a3,a2
    39ea:	01055813          	srli	a6,a0,0x10
    39ee:	8241                	srli	a2,a2,0x10
    39f0:	02d708b3          	mul	a7,a4,a3
    39f4:	02d806b3          	mul	a3,a6,a3
    39f8:	02c70733          	mul	a4,a4,a2
    39fc:	02c80833          	mul	a6,a6,a2
    3a00:	00d70633          	add	a2,a4,a3
    3a04:	0108d713          	srli	a4,a7,0x10
    3a08:	9732                	add	a4,a4,a2
    3a0a:	00d77363          	bgeu	a4,a3,3a10 <__udivdi3+0x32e>
    3a0e:	9872                	add	a6,a6,t3
    3a10:	01075693          	srli	a3,a4,0x10
    3a14:	96c2                	add	a3,a3,a6
    3a16:	02d7e063          	bltu	a5,a3,3a36 <__udivdi3+0x354>
    3a1a:	d8d797e3          	bne	a5,a3,37a8 <__udivdi3+0xc6>
    3a1e:	67c1                	lui	a5,0x10
    3a20:	17fd                	addi	a5,a5,-1
    3a22:	8f7d                	and	a4,a4,a5
    3a24:	0742                	slli	a4,a4,0x10
    3a26:	00f8f8b3          	and	a7,a7,a5
    3a2a:	00b31333          	sll	t1,t1,a1
    3a2e:	9746                	add	a4,a4,a7
    3a30:	4581                	li	a1,0
    3a32:	d6e37ce3          	bgeu	t1,a4,37aa <__udivdi3+0xc8>
    3a36:	157d                	addi	a0,a0,-1
    3a38:	bb85                	j	37a8 <__udivdi3+0xc6>
    3a3a:	4581                	li	a1,0
    3a3c:	4501                	li	a0,0
    3a3e:	8082                	ret
