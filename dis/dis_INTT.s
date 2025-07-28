
sw/applications/athos_ip_test/INTT/main.elf:     file format elf32-littleriscv


Disassembly of section .vectors:

00000000 <__vector_start>:
   0:	64c0106f          	j	164c <handler_exception>
   4:	1ae0106f          	j	11b2 <__no_irq_handler>
   8:	1aa0106f          	j	11b2 <__no_irq_handler>
   c:	7d00106f          	j	17dc <handler_irq_software>
  10:	1a20106f          	j	11b2 <__no_irq_handler>
  14:	19e0106f          	j	11b2 <__no_irq_handler>
  18:	19a0106f          	j	11b2 <__no_irq_handler>
  1c:	7f00106f          	j	180c <handler_irq_timer>
  20:	1920106f          	j	11b2 <__no_irq_handler>
  24:	18e0106f          	j	11b2 <__no_irq_handler>
  28:	18a0106f          	j	11b2 <__no_irq_handler>
  2c:	0110106f          	j	183c <handler_irq_external>
  30:	1820106f          	j	11b2 <__no_irq_handler>
  34:	17e0106f          	j	11b2 <__no_irq_handler>
  38:	17a0106f          	j	11b2 <__no_irq_handler>
  3c:	1760106f          	j	11b2 <__no_irq_handler>
  40:	0a90106f          	j	18e8 <handler_irq_fast_timer_1>
  44:	0f90106f          	j	193c <handler_irq_fast_timer_2>
  48:	1490106f          	j	1990 <handler_irq_fast_timer_3>
  4c:	0790106f          	j	18c4 <handler_irq_fast_dma>
  50:	1990106f          	j	19e8 <handler_irq_fast_spi>
  54:	1ed0106f          	j	1a40 <handler_irq_fast_spi_flash>
  58:	2410106f          	j	1a98 <handler_irq_fast_gpio_0>
  5c:	2950106f          	j	1af0 <handler_irq_fast_gpio_1>
  60:	2e90106f          	j	1b48 <handler_irq_fast_gpio_2>
  64:	33d0106f          	j	1ba0 <handler_irq_fast_gpio_3>
  68:	3910106f          	j	1bf8 <handler_irq_fast_gpio_4>
  6c:	3e50106f          	j	1c50 <handler_irq_fast_gpio_5>
  70:	43d0106f          	j	1cac <handler_irq_fast_gpio_6>
  74:	4910106f          	j	1d04 <handler_irq_fast_gpio_7>
  78:	13a0106f          	j	11b2 <__no_irq_handler>
  7c:	1360106f          	j	11b2 <__no_irq_handler>
  80:	1ba0106f          	j	123a <verification_irq_handler>
  84:	12e0106f          	j	11b2 <__no_irq_handler>
  88:	12a0106f          	j	11b2 <__no_irq_handler>
  8c:	1260106f          	j	11b2 <__no_irq_handler>
  90:	1220106f          	j	11b2 <__no_irq_handler>
  94:	11e0106f          	j	11b2 <__no_irq_handler>
  98:	11a0106f          	j	11b2 <__no_irq_handler>
  9c:	1160106f          	j	11b2 <__no_irq_handler>
  a0:	1120106f          	j	11b2 <__no_irq_handler>
  a4:	10e0106f          	j	11b2 <__no_irq_handler>
  a8:	10a0106f          	j	11b2 <__no_irq_handler>
  ac:	1060106f          	j	11b2 <__no_irq_handler>
  b0:	1020106f          	j	11b2 <__no_irq_handler>
  b4:	0fe0106f          	j	11b2 <__no_irq_handler>
  b8:	0fa0106f          	j	11b2 <__no_irq_handler>
  bc:	0f60106f          	j	11b2 <__no_irq_handler>
  c0:	0f20106f          	j	11b2 <__no_irq_handler>
  c4:	0ee0106f          	j	11b2 <__no_irq_handler>
  c8:	0ea0106f          	j	11b2 <__no_irq_handler>
  cc:	0e60106f          	j	11b2 <__no_irq_handler>
  d0:	0e20106f          	j	11b2 <__no_irq_handler>
  d4:	0de0106f          	j	11b2 <__no_irq_handler>
  d8:	0da0106f          	j	11b2 <__no_irq_handler>
  dc:	0d60106f          	j	11b2 <__no_irq_handler>
  e0:	0d20106f          	j	11b2 <__no_irq_handler>
  e4:	0ce0106f          	j	11b2 <__no_irq_handler>
  e8:	0ca0106f          	j	11b2 <__no_irq_handler>
  ec:	0c60106f          	j	11b2 <__no_irq_handler>
  f0:	0c20106f          	j	11b2 <__no_irq_handler>
  f4:	0be0106f          	j	11b2 <__no_irq_handler>
  f8:	0ba0106f          	j	11b2 <__no_irq_handler>
  fc:	0b60106f          	j	11b2 <__no_irq_handler>
 100:	0b20106f          	j	11b2 <__no_irq_handler>

Disassembly of section .init:

00000180 <_start>:
 180:	00081197          	auipc	gp,0x81
 184:	c3418193          	addi	gp,gp,-972 # 80db4 <__global_pointer$>
 188:	000e0117          	auipc	sp,0xe0
 18c:	64810113          	addi	sp,sp,1608 # e07d0 <_sp>
 190:	20000537          	lui	a0,0x20000
 194:	05f5e637          	lui	a2,0x5f5e
 198:	10060613          	addi	a2,a2,256 # 5f5e100 <_sp+0x5e7d930>
 19c:	cd50                	sw	a2,28(a0)
 19e:	00080517          	auipc	a0,0x80
 1a2:	48650513          	addi	a0,a0,1158 # 80624 <plic_intr_flag>
 1a6:	00080617          	auipc	a2,0x80
 1aa:	62a60613          	addi	a2,a2,1578 # 807d0 <__BSS_END__>
 1ae:	8e09                	sub	a2,a2,a0
 1b0:	4581                	li	a1,0
 1b2:	453010ef          	jal	ra,1e04 <memset>
 1b6:	00000517          	auipc	a0,0x0
 1ba:	e4a50513          	addi	a0,a0,-438 # 0 <__vector_start>
 1be:	00156513          	ori	a0,a0,1
 1c2:	30551073          	csrw	mtvec,a0
 1c6:	00002517          	auipc	a0,0x2
 1ca:	b9e50513          	addi	a0,a0,-1122 # 1d64 <__libc_fini_array>
 1ce:	38d010ef          	jal	ra,1d5a <atexit>
 1d2:	3cd010ef          	jal	ra,1d9e <__libc_init_array>
 1d6:	4502                	lw	a0,0(sp)
 1d8:	004c                	addi	a1,sp,4
 1da:	4601                	li	a2,0
 1dc:	03a000ef          	jal	ra,216 <main>
 1e0:	00c0006f          	j	1ec <exit>

000001e4 <_init>:
 1e4:	354010ef          	jal	ra,1538 <init>

000001e8 <_fini>:
 1e8:	8082                	ret

Disassembly of section .text:

000001ec <exit>:
     1ec:	1141                	addi	sp,sp,-16
     1ee:	6789                	lui	a5,0x2
     1f0:	c422                	sw	s0,8(sp)
     1f2:	c606                	sw	ra,12(sp)
     1f4:	25678793          	addi	a5,a5,598 # 2256 <__call_exitprocs>
     1f8:	842a                	mv	s0,a0
     1fa:	c781                	beqz	a5,202 <exit+0x16>
     1fc:	4581                	li	a1,0
     1fe:	058020ef          	jal	ra,2256 <__call_exitprocs>
     202:	000807b7          	lui	a5,0x80
     206:	6147a503          	lw	a0,1556(a5) # 80614 <_global_impure_ptr>
     20a:	551c                	lw	a5,40(a0)
     20c:	c391                	beqz	a5,210 <exit+0x24>
     20e:	9782                	jalr	a5
     210:	8522                	mv	a0,s0
     212:	32e010ef          	jal	ra,1540 <_exit>

00000216 <main>:
     216:	00240637          	lui	a2,0x240
     21a:	9d010113          	addi	sp,sp,-1584
     21e:	d1d60613          	addi	a2,a2,-739 # 23fd1d <_sp+0x15f54d>
     222:	40c12023          	sw	a2,1024(sp)
     226:	04c00637          	lui	a2,0x4c00
     22a:	d7a60613          	addi	a2,a2,-646 # 4bffd7a <_sp+0x4b1f5aa>
     22e:	40c12223          	sw	a2,1028(sp)
     232:	fdd20637          	lui	a2,0xfdd20
     236:	60060613          	addi	a2,a2,1536 # fdd20600 <_sp+0xfdc3fe30>
     23a:	40c12423          	sw	a2,1032(sp)
     23e:	02970637          	lui	a2,0x2970
     242:	d4a60613          	addi	a2,a2,-694 # 296fd4a <_sp+0x288f57a>
     246:	40c12623          	sw	a2,1036(sp)
     24a:	04590637          	lui	a2,0x4590
     24e:	5b660613          	addi	a2,a2,1462 # 45905b6 <_sp+0x44afde6>
     252:	40c12823          	sw	a2,1040(sp)
     256:	fb290637          	lui	a2,0xfb290
     25a:	9fb60613          	addi	a2,a2,-1541 # fb28f9fb <_sp+0xfb1af22b>
     25e:	40c12a23          	sw	a2,1044(sp)
     262:	fb720637          	lui	a2,0xfb720
     266:	64660613          	addi	a2,a2,1606 # fb720646 <_sp+0xfb63fe76>
     26a:	40c12c23          	sw	a2,1048(sp)
     26e:	fd530637          	lui	a2,0xfd530
     272:	99960613          	addi	a2,a2,-1639 # fd52f999 <_sp+0xfd44f1c9>
     276:	40c12e23          	sw	a2,1052(sp)
     27a:	ff420637          	lui	a2,0xff420
     27e:	b2060613          	addi	a2,a2,-1248 # ff41fb20 <_sp+0xff33f350>
     282:	42c12023          	sw	a2,1056(sp)
     286:	05480637          	lui	a2,0x5480
     28a:	39060613          	addi	a2,a2,912 # 5480390 <_sp+0x539fbc0>
     28e:	42c12223          	sw	a2,1060(sp)
     292:	00040637          	lui	a2,0x40
     296:	12760613          	addi	a2,a2,295 # 40127 <__heap_size+0x10127>
     29a:	42c12423          	sw	a2,1064(sp)
     29e:	00590637          	lui	a2,0x590
     2a2:	4e160613          	addi	a2,a2,1249 # 5904e1 <_sp+0x4afd11>
     2a6:	42c12623          	sw	a2,1068(sp)
     2aa:	016b0637          	lui	a2,0x16b0
     2ae:	08960613          	addi	a2,a2,137 # 16b0089 <_sp+0x15cf8b9>
     2b2:	42c12823          	sw	a2,1072(sp)
     2b6:	f9970637          	lui	a2,0xf9970
     2ba:	b3b60613          	addi	a2,a2,-1221 # f996fb3b <_sp+0xf988f36b>
     2be:	42c12a23          	sw	a2,1076(sp)
     2c2:	053d0637          	lui	a2,0x53d0
     2c6:	20560613          	addi	a2,a2,517 # 53d0205 <_sp+0x52efa35>
     2ca:	42c12c23          	sw	a2,1080(sp)
     2ce:	fe9a0637          	lui	a2,0xfe9a0
     2d2:	cf860613          	addi	a2,a2,-776 # fe99fcf8 <_sp+0xfe8bf528>
     2d6:	44c12223          	sw	a2,1092(sp)
     2da:	03120637          	lui	a2,0x3120
     2de:	f5260613          	addi	a2,a2,-174 # 311ff52 <_sp+0x303f782>
     2e2:	44c12423          	sw	a2,1096(sp)
     2e6:	fc720637          	lui	a2,0xfc720
     2ea:	ccd60613          	addi	a2,a2,-819 # fc71fccd <_sp+0xfc63f4fd>
     2ee:	44c12623          	sw	a2,1100(sp)
     2f2:	fb970637          	lui	a2,0xfb970
     2f6:	1b560613          	addi	a2,a2,437 # fb9701b5 <_sp+0xfb88f9e5>
     2fa:	44c12a23          	sw	a2,1108(sp)
     2fe:	049b0637          	lui	a2,0x49b0
     302:	031607b7          	lui	a5,0x3160
     306:	fc390eb7          	lui	t4,0xfc390
     30a:	fca50f37          	lui	t5,0xfca50
     30e:	56260613          	addi	a2,a2,1378 # 49b0562 <_sp+0x48cfd92>
     312:	0d878293          	addi	t0,a5,216 # 31600d8 <_sp+0x307f908>
     316:	2bee8f93          	addi	t6,t4,702 # fc3902be <_sp+0xfc2afaee>
     31a:	f16f0813          	addi	a6,t5,-234 # fca4ff16 <_sp+0xfc96f746>
     31e:	44c12c23          	sw	a2,1112(sp)
     322:	00910637          	lui	a2,0x910
     326:	42512e23          	sw	t0,1084(sp)
     32a:	45f12023          	sw	t6,1088(sp)
     32e:	45012823          	sw	a6,1104(sp)
     332:	d9860613          	addi	a2,a2,-616 # 90fd98 <_sp+0x82f5c8>
     336:	62112623          	sw	ra,1580(sp)
     33a:	62912423          	sw	s1,1576(sp)
     33e:	63212223          	sw	s2,1572(sp)
     342:	63312023          	sw	s3,1568(sp)
     346:	61412e23          	sw	s4,1564(sp)
     34a:	61512c23          	sw	s5,1560(sp)
     34e:	61612a23          	sw	s6,1556(sp)
     352:	61712823          	sw	s7,1552(sp)
     356:	61812623          	sw	s8,1548(sp)
     35a:	44c12e23          	sw	a2,1116(sp)
     35e:	05690637          	lui	a2,0x5690
     362:	07a60613          	addi	a2,a2,122 # 569007a <_sp+0x55af8aa>
     366:	46c12023          	sw	a2,1120(sp)
     36a:	fcec0637          	lui	a2,0xfcec0
     36e:	15d60613          	addi	a2,a2,349 # fcec015d <_sp+0xfcddf98d>
     372:	46c12223          	sw	a2,1124(sp)
     376:	05390637          	lui	a2,0x5390
     37a:	2ab60613          	addi	a2,a2,683 # 53902ab <_sp+0x52afadb>
     37e:	46c12423          	sw	a2,1128(sp)
     382:	02a90637          	lui	a2,0x2a90
     386:	1f360613          	addi	a2,a2,499 # 2a901f3 <_sp+0x29afa23>
     38a:	46c12623          	sw	a2,1132(sp)
     38e:	029a0637          	lui	a2,0x29a0
     392:	9e160613          	addi	a2,a2,-1567 # 299f9e1 <_sp+0x28bf211>
     396:	46c12823          	sw	a2,1136(sp)
     39a:	ff520637          	lui	a2,0xff520
     39e:	38260613          	addi	a2,a2,898 # ff520382 <_sp+0xff43fbb2>
     3a2:	46c12a23          	sw	a2,1140(sp)
     3a6:	fa100637          	lui	a2,0xfa100
     3aa:	4f960613          	addi	a2,a2,1273 # fa1004f9 <_sp+0xfa01fd29>
     3ae:	46c12c23          	sw	a2,1144(sp)
     3b2:	042a0637          	lui	a2,0x42a0
     3b6:	46e60613          	addi	a2,a2,1134 # 42a046e <_sp+0x41bfc9e>
     3ba:	46c12e23          	sw	a2,1148(sp)
     3be:	03210637          	lui	a2,0x3210
     3c2:	e7b60613          	addi	a2,a2,-389 # 320fe7b <_sp+0x312f6ab>
     3c6:	48c12023          	sw	a2,1152(sp)
     3ca:	fad40637          	lui	a2,0xfad40
     3ce:	4c960613          	addi	a2,a2,1225 # fad404c9 <_sp+0xfac5fcf9>
     3d2:	48c12223          	sw	a2,1156(sp)
     3d6:	fd280637          	lui	a2,0xfd280
     3da:	db260613          	addi	a2,a2,-590 # fd27fdb2 <_sp+0xfd19f5e2>
     3de:	48c12423          	sw	a2,1160(sp)
     3e2:	ff380637          	lui	a2,0xff380
     3e6:	47760613          	addi	a2,a2,1143 # ff380477 <_sp+0xff29fca7>
     3ea:	48c12623          	sw	a2,1164(sp)
     3ee:	f9990637          	lui	a2,0xf9990
     3f2:	4fc60613          	addi	a2,a2,1276 # f99904fc <_sp+0xf98afd2c>
     3f6:	48c12823          	sw	a2,1168(sp)
     3fa:	fe940637          	lui	a2,0xfe940
     3fe:	ba860613          	addi	a2,a2,-1112 # fe93fba8 <_sp+0xfe85f3d8>
     402:	48c12a23          	sw	a2,1172(sp)
     406:	01f80637          	lui	a2,0x1f80
     40a:	cfd60613          	addi	a2,a2,-771 # 1f7fcfd <_sp+0x1e9f52d>
     40e:	48c12e23          	sw	a2,1180(sp)
     412:	ff730637          	lui	a2,0xff730
     416:	4f260613          	addi	a2,a2,1266 # ff7304f2 <_sp+0xff64fd22>
     41a:	4ac12023          	sw	a2,1184(sp)
     41e:	00310637          	lui	a2,0x310
     422:	c3e60613          	addi	a2,a2,-962 # 30fc3e <_sp+0x22f46e>
     426:	4ac12223          	sw	a2,1188(sp)
     42a:	f9fc0637          	lui	a2,0xf9fc0
     42e:	24160613          	addi	a2,a2,577 # f9fc0241 <_sp+0xf9edfa71>
     432:	4ac12423          	sw	a2,1192(sp)
     436:	00790637          	lui	a2,0x790
     43a:	67960613          	addi	a2,a2,1657 # 790679 <_sp+0x6afea9>
     43e:	4ac12623          	sw	a2,1196(sp)
     442:	fc3d0637          	lui	a2,0xfc3d0
     446:	52560613          	addi	a2,a2,1317 # fc3d0525 <_sp+0xfc2efd55>
     44a:	4ac12823          	sw	a2,1200(sp)
     44e:	fb420637          	lui	a2,0xfb420
     452:	27360613          	addi	a2,a2,627 # fb420273 <_sp+0xfb33faa3>
     456:	4ac12a23          	sw	a2,1204(sp)
     45a:	048f0637          	lui	a2,0x48f0
     45e:	06e60613          	addi	a2,a2,110 # 48f006e <_sp+0x480f89e>
     462:	4ac12c23          	sw	a2,1208(sp)
     466:	05ab0637          	lui	a2,0x5ab0
     46a:	48960613          	addi	a2,a2,1161 # 5ab0489 <_sp+0x59cfcb9>
     46e:	4ac12e23          	sw	a2,1212(sp)
     472:	06690637          	lui	a2,0x6690
     476:	f6c60613          	addi	a2,a2,-148 # 668ff6c <_sp+0x65af79c>
     47a:	4cc12023          	sw	a2,1216(sp)
     47e:	05890637          	lui	a2,0x5890
     482:	45760613          	addi	a2,a2,1111 # 5890457 <_sp+0x57afc87>
     486:	4cc12423          	sw	a2,1224(sp)
     48a:	fd090637          	lui	a2,0xfd090
     48e:	04d60613          	addi	a2,a2,77 # fd09004d <_sp+0xfcfaf87d>
     492:	4cc12623          	sw	a2,1228(sp)
     496:	000d0637          	lui	a2,0xd0
     49a:	f0c60613          	addi	a2,a2,-244 # cff0c <__heap_end+0x1f73c>
     49e:	4cc12823          	sw	a2,1232(sp)
     4a2:	fb140637          	lui	a2,0xfb140
     4a6:	29760613          	addi	a2,a2,663 # fb140297 <_sp+0xfb05fac7>
     4aa:	4cc12a23          	sw	a2,1236(sp)
     4ae:	ff6f0637          	lui	a2,0xff6f0
     4b2:	99960613          	addi	a2,a2,-1639 # ff6ef999 <_sp+0xff60f1c9>
     4b6:	4cc12c23          	sw	a2,1240(sp)
     4ba:	05fc0637          	lui	a2,0x5fc0
     4be:	028d05b7          	lui	a1,0x28d0
     4c2:	05420737          	lui	a4,0x5420
     4c6:	4e760613          	addi	a2,a2,1255 # 5fc04e7 <_sp+0x5edfd17>
     4ca:	f5c58293          	addi	t0,a1,-164 # 28cff5c <_sp+0x27ef78c>
     4ce:	23c70f93          	addi	t6,a4,572 # 542023c <_sp+0x533fa6c>
     4d2:	4cc12e23          	sw	a2,1244(sp)
     4d6:	01bd0637          	lui	a2,0x1bd0
     4da:	48512c23          	sw	t0,1176(sp)
     4de:	4df12223          	sw	t6,1220(sp)
     4e2:	3bf60613          	addi	a2,a2,959 # 1bd03bf <_sp+0x1aefbef>
     4e6:	4ec12023          	sw	a2,1248(sp)
     4ea:	fd0f0637          	lui	a2,0xfd0f0
     4ee:	c6660613          	addi	a2,a2,-922 # fd0efc66 <_sp+0xfd00f496>
     4f2:	4ec12423          	sw	a2,1256(sp)
     4f6:	fb760637          	lui	a2,0xfb760
     4fa:	2e060613          	addi	a2,a2,736 # fb7602e0 <_sp+0xfb67fb10>
     4fe:	4ec12623          	sw	a2,1260(sp)
     502:	fc950637          	lui	a2,0xfc950
     506:	a6760613          	addi	a2,a2,-1433 # fc94fa67 <_sp+0xfc86f297>
     50a:	4ec12823          	sw	a2,1264(sp)
     50e:	fb160637          	lui	a2,0xfb160
     512:	27a60613          	addi	a2,a2,634 # fb16027a <_sp+0xfb07faaa>
     516:	4ec12a23          	sw	a2,1268(sp)
     51a:	ffd50637          	lui	a2,0xffd50
     51e:	c1860613          	addi	a2,a2,-1000 # ffd4fc18 <_sp+0xffc6f448>
     522:	4ec12c23          	sw	a2,1272(sp)
     526:	06390637          	lui	a2,0x6390
     52a:	9fd60613          	addi	a2,a2,-1539 # 638f9fd <_sp+0x62af22d>
     52e:	4ec12e23          	sw	a2,1276(sp)
     532:	fee00637          	lui	a2,0xfee00
     536:	cc960613          	addi	a2,a2,-823 # fedffcc9 <_sp+0xfed1f4f9>
     53a:	50c12023          	sw	a2,1280(sp)
     53e:	ff310637          	lui	a2,0xff310
     542:	c0360613          	addi	a2,a2,-1021 # ff30fc03 <_sp+0xff22f433>
     546:	50c12223          	sw	a2,1284(sp)
     54a:	00c10637          	lui	a2,0xc10
     54e:	ad360613          	addi	a2,a2,-1325 # c0fad3 <_sp+0xb2f303>
     552:	50c12423          	sw	a2,1288(sp)
     556:	00660637          	lui	a2,0x660
     55a:	c5060613          	addi	a2,a2,-944 # 65fc50 <_sp+0x57f480>
     55e:	50c12623          	sw	a2,1292(sp)
     562:	05260637          	lui	a2,0x5260
     566:	22f60613          	addi	a2,a2,559 # 526022f <_sp+0x517fa5f>
     56a:	50c12a23          	sw	a2,1300(sp)
     56e:	057b0637          	lui	a2,0x57b0
     572:	b1660613          	addi	a2,a2,-1258 # 57afb16 <_sp+0x56cf346>
     576:	50c12c23          	sw	a2,1304(sp)
     57a:	fb600637          	lui	a2,0xfb600
     57e:	99660613          	addi	a2,a2,-1642 # fb5ff996 <_sp+0xfb51f1c6>
     582:	52c12023          	sw	a2,1312(sp)
     586:	022c0637          	lui	a2,0x22c0
     58a:	9c160613          	addi	a2,a2,-1599 # 22bf9c1 <_sp+0x21df1f1>
     58e:	52c12223          	sw	a2,1316(sp)
     592:	02690637          	lui	a2,0x2690
     596:	b9060613          	addi	a2,a2,-1136 # 268fb90 <_sp+0x25af3c0>
     59a:	52c12423          	sw	a2,1320(sp)
     59e:	00d30637          	lui	a2,0xd30
     5a2:	47a60613          	addi	a2,a2,1146 # d3047a <_sp+0xc4fcaa>
     5a6:	52c12623          	sw	a2,1324(sp)
     5aa:	037b0637          	lui	a2,0x37b0
     5ae:	24160613          	addi	a2,a2,577 # 37b0241 <_sp+0x36cfa71>
     5b2:	52c12823          	sw	a2,1328(sp)
     5b6:	04910637          	lui	a2,0x4910
     5ba:	2c160613          	addi	a2,a2,705 # 49102c1 <_sp+0x482faf1>
     5be:	52c12a23          	sw	a2,1332(sp)
     5c2:	03aa0637          	lui	a2,0x3aa0
     5c6:	5ba60613          	addi	a2,a2,1466 # 3aa05ba <_sp+0x39bfdea>
     5ca:	52c12c23          	sw	a2,1336(sp)
     5ce:	f9ff0637          	lui	a2,0xf9ff0
     5d2:	3e660613          	addi	a2,a2,998 # f9ff03e6 <_sp+0xf9f0fc16>
     5d6:	52c12e23          	sw	a2,1340(sp)
     5da:	fdc10637          	lui	a2,0xfdc10
     5de:	3b460613          	addi	a2,a2,948 # fdc103b4 <_sp+0xfdb2fbe4>
     5e2:	54c12223          	sw	a2,1348(sp)
     5e6:	fde20637          	lui	a2,0xfde20
     5ea:	11160613          	addi	a2,a2,273 # fde20111 <_sp+0xfdd3f941>
     5ee:	54c12423          	sw	a2,1352(sp)
     5f2:	fa0b0637          	lui	a2,0xfa0b0
     5f6:	caf60613          	addi	a2,a2,-849 # fa0afcaf <_sp+0xf9fcf4df>
     5fa:	54c12623          	sw	a2,1356(sp)
     5fe:	fdbb0637          	lui	a2,0xfdbb0
     602:	a2960613          	addi	a2,a2,-1495 # fdbafa29 <_sp+0xfdacf259>
     606:	54c12823          	sw	a2,1360(sp)
     60a:	fa640637          	lui	a2,0xfa640
     60e:	4bb60613          	addi	a2,a2,1211 # fa6404bb <_sp+0xfa55fceb>
     612:	54c12a23          	sw	a2,1364(sp)
     616:	00620637          	lui	a2,0x620
     61a:	9b160613          	addi	a2,a2,-1615 # 61f9b1 <_sp+0x53f1e1>
     61e:	54c12c23          	sw	a2,1368(sp)
     622:	fa810637          	lui	a2,0xfa810
     626:	22660613          	addi	a2,a2,550 # fa810226 <_sp+0xfa72fa56>
     62a:	fe000e37          	lui	t3,0xfe000
     62e:	54c12e23          	sw	a2,1372(sp)
     632:	ffd20637          	lui	a2,0xffd20
     636:	055a06b7          	lui	a3,0x55a0
     63a:	131e0f93          	addi	t6,t3,305 # fe000131 <_sp+0xfdf1f961>
     63e:	06270537          	lui	a0,0x6270
     642:	fce20337          	lui	t1,0xfce20
     646:	3c360613          	addi	a2,a2,963 # ffd203c3 <_sp+0xffc3fbf3>
     64a:	3e968813          	addi	a6,a3,1001 # 55a03e9 <_sp+0x54bfc19>
     64e:	58d30293          	addi	t0,t1,1421 # fce2058d <_sp+0xfcd3fdbd>
     652:	15a50393          	addi	t2,a0,346 # 627015a <_sp+0x618f98a>
     656:	55f12023          	sw	t6,1344(sp)
     65a:	56c12023          	sw	a2,1376(sp)
     65e:	fd6e0fb7          	lui	t6,0xfd6e0
     662:	02570637          	lui	a2,0x2570
     666:	4f012223          	sw	a6,1252(sp)
     66a:	a3c60613          	addi	a2,a2,-1476 # 256fa3c <_sp+0x248f26c>
     66e:	06cf8f93          	addi	t6,t6,108 # fd6e006c <_sp+0xfd5ff89c>
     672:	50712823          	sw	t2,1296(sp)
     676:	50512e23          	sw	t0,1308(sp)
     67a:	56c12223          	sw	a2,1380(sp)
     67e:	59f12423          	sw	t6,1416(sp)
     682:	04d90fb7          	lui	t6,0x4d90
     686:	995f8f93          	addi	t6,t6,-1643 # 4d8f995 <_sp+0x4caf1c5>
     68a:	59f12623          	sw	t6,1420(sp)
     68e:	fc1c0fb7          	lui	t6,0xfc1c0
     692:	578f8f93          	addi	t6,t6,1400 # fc1c0578 <_sp+0xfc0dfda8>
     696:	59f12823          	sw	t6,1424(sp)
     69a:	037f0fb7          	lui	t6,0x37f0
     69e:	b3df8f93          	addi	t6,t6,-1219 # 37efb3d <_sp+0x370f36d>
     6a2:	59f12a23          	sw	t6,1428(sp)
     6a6:	fef90fb7          	lui	t6,0xfef90
     6aa:	21af8f93          	addi	t6,t6,538 # fef9021a <_sp+0xfeeafa4a>
     6ae:	59f12c23          	sw	t6,1432(sp)
     6b2:	06230fb7          	lui	t6,0x6230
     6b6:	42ef8f93          	addi	t6,t6,1070 # 623042e <_sp+0x614fc5e>
     6ba:	46af0f13          	addi	t5,t5,1130
     6be:	59f12e23          	sw	t6,1436(sp)
     6c2:	fa760fb7          	lui	t6,0xfa760
     6c6:	acbf8f93          	addi	t6,t6,-1333 # fa75facb <_sp+0xfa67f2fb>
     6ca:	5de12223          	sw	t5,1476(sp)
     6ce:	f99e0f37          	lui	t5,0xf99e0
     6d2:	5bf12023          	sw	t6,1440(sp)
     6d6:	217f0f13          	addi	t5,t5,535 # f99e0217 <_sp+0xf98ffa47>
     6da:	02790fb7          	lui	t6,0x2790
     6de:	9bff8f93          	addi	t6,t6,-1601 # 278f9bf <_sp+0x26af1ef>
     6e2:	5de12423          	sw	t5,1480(sp)
     6e6:	fc5f0f37          	lui	t5,0xfc5f0
     6ea:	5bf12223          	sw	t6,1444(sp)
     6ee:	209f0f13          	addi	t5,t5,521 # fc5f0209 <_sp+0xfc50fa39>
     6f2:	03810637          	lui	a2,0x3810
     6f6:	fd140fb7          	lui	t6,0xfd140
     6fa:	15660613          	addi	a2,a2,342 # 3810156 <_sp+0x372f986>
     6fe:	022f8f93          	addi	t6,t6,34 # fd140022 <_sp+0xfd05f852>
     702:	5de12623          	sw	t5,1484(sp)
     706:	02d30f37          	lui	t5,0x2d30
     70a:	56c12423          	sw	a2,1384(sp)
     70e:	5bf12423          	sw	t6,1448(sp)
     712:	e6af0f13          	addi	t5,t5,-406 # 2d2fe6a <_sp+0x2c4f69a>
     716:	02340637          	lui	a2,0x2340
     71a:	fca00fb7          	lui	t6,0xfca00
     71e:	d5660613          	addi	a2,a2,-682 # 233fd56 <_sp+0x225f586>
     722:	3b2f8f93          	addi	t6,t6,946 # fca003b2 <_sp+0xfc91fbe2>
     726:	5de12823          	sw	t5,1488(sp)
     72a:	fbba0f37          	lui	t5,0xfbba0
     72e:	56c12623          	sw	a2,1388(sp)
     732:	5bf12623          	sw	t6,1452(sp)
     736:	5c3f0f13          	addi	t5,t5,1475 # fbba05c3 <_sp+0xfbabfdf3>
     73a:	fb0e0637          	lui	a2,0xfb0e0
     73e:	00970fb7          	lui	t6,0x970
     742:	3fd60613          	addi	a2,a2,1021 # fb0e03fd <_sp+0xfafffc2d>
     746:	2aff8f93          	addi	t6,t6,687 # 9702af <_sp+0x88fadf>
     74a:	5de12a23          	sw	t5,1492(sp)
     74e:	032a0f37          	lui	t5,0x32a0
     752:	56c12823          	sw	a2,1392(sp)
     756:	5bf12823          	sw	t6,1456(sp)
     75a:	dbaf0f13          	addi	t5,t5,-582 # 329fdba <_sp+0x31bf5ea>
     75e:	059c0637          	lui	a2,0x59c0
     762:	022e0fb7          	lui	t6,0x22e0
     766:	17960613          	addi	a2,a2,377 # 59c0179 <_sp+0x58df9a9>
     76a:	1fb1                	addi	t6,t6,-20
     76c:	5de12c23          	sw	t5,1496(sp)
     770:	fc9c0f37          	lui	t5,0xfc9c0
     774:	56c12c23          	sw	a2,1400(sp)
     778:	5bf12a23          	sw	t6,1460(sp)
     77c:	1f79                	addi	t5,t5,-2
     77e:	fb620637          	lui	a2,0xfb620
     782:	fc940fb7          	lui	t6,0xfc940
     786:	fb660613          	addi	a2,a2,-74 # fb61ffb6 <_sp+0xfb53f7e6>
     78a:	e0bf8f93          	addi	t6,t6,-501 # fc93fe0b <_sp+0xfc85f63b>
     78e:	5de12e23          	sw	t5,1500(sp)
     792:	03420f37          	lui	t5,0x3420
     796:	56c12e23          	sw	a2,1404(sp)
     79a:	5bf12c23          	sw	t6,1464(sp)
     79e:	2bff0f13          	addi	t5,t5,703 # 34202bf <_sp+0x333faef>
     7a2:	055f0637          	lui	a2,0x55f0
     7a6:	fc0b0fb7          	lui	t6,0xfc0b0
     7aa:	067d                	addi	a2,a2,31
     7ac:	ed0f8f93          	addi	t6,t6,-304 # fc0afed0 <_sp+0xfbfcf700>
     7b0:	5fe12023          	sw	t5,1504(sp)
     7b4:	fa510f37          	lui	t5,0xfa510
     7b8:	fc8208b7          	lui	a7,0xfc820
     7bc:	58c12023          	sw	a2,1408(sp)
     7c0:	5bf12e23          	sw	t6,1468(sp)
     7c4:	193f0f13          	addi	t5,t5,403 # fa510193 <_sp+0xfa42f9c3>
     7c8:	fe1c0637          	lui	a2,0xfe1c0
     7cc:	fbf50fb7          	lui	t6,0xfbf50
     7d0:	38288813          	addi	a6,a7,898 # fc820382 <_sp+0xfc73fbb2>
     7d4:	b1260613          	addi	a2,a2,-1262 # fe1bfb12 <_sp+0xfe0df342>
     7d8:	5fe12223          	sw	t5,1508(sp)
     7dc:	090f8f93          	addi	t6,t6,144 # fbf50090 <_sp+0xfbe6f8c0>
     7e0:	fdf90f37          	lui	t5,0xfdf90
     7e4:	57012a23          	sw	a6,1396(sp)
     7e8:	58c12223          	sw	a2,1412(sp)
     7ec:	fa6e0e13          	addi	t3,t3,-90
     7f0:	e9df0f13          	addi	t5,t5,-355 # fdf8fe9d <_sp+0xfdeaf6cd>
     7f4:	5df12023          	sw	t6,1472(sp)
     7f8:	5fe12423          	sw	t5,1512(sp)
     7fc:	21c12423          	sw	t3,520(sp)
     800:	00450e37          	lui	t3,0x450
     804:	9a4e0e13          	addi	t3,t3,-1628 # 44f9a4 <_sp+0x36f1d4>
     808:	21c12623          	sw	t3,524(sp)
     80c:	04fb0e37          	lui	t3,0x4fb0
     810:	134e0e13          	addi	t3,t3,308 # 4fb0134 <_sp+0x4ecf964>
     814:	21c12823          	sw	t3,528(sp)
     818:	fc210e37          	lui	t3,0xfc210
     81c:	4afe0e13          	addi	t3,t3,1199 # fc2104af <_sp+0xfc12fcdf>
     820:	21c12a23          	sw	t3,532(sp)
     824:	03100e37          	lui	t3,0x3100
     828:	e32e0e13          	addi	t3,t3,-462 # 30ffe32 <_sp+0x301f662>
     82c:	21c12c23          	sw	t3,536(sp)
     830:	f9940e37          	lui	t3,0xf9940
     834:	de4e0e13          	addi	t3,t3,-540 # f993fde4 <_sp+0xf985f614>
     838:	21c12e23          	sw	t3,540(sp)
     83c:	fa2e0e37          	lui	t3,0xfa2e0
     840:	5cbe0e13          	addi	t3,t3,1483 # fa2e05cb <_sp+0xfa1ffdfb>
     844:	23c12223          	sw	t3,548(sp)
     848:	fe100e37          	lui	t3,0xfe100
     84c:	f56e0e13          	addi	t3,t3,-170 # fe0fff56 <_sp+0xfe01f786>
     850:	23c12623          	sw	t3,556(sp)
     854:	03dd0e37          	lui	t3,0x3dd0
     858:	11ae0e13          	addi	t3,t3,282 # 3dd011a <_sp+0x3cef94a>
     85c:	23c12823          	sw	t3,560(sp)
     860:	f9950e37          	lui	t3,0xf9950
     864:	054e0e13          	addi	t3,t3,84 # f9950054 <_sp+0xf986f884>
     868:	23c12a23          	sw	t3,564(sp)
     86c:	ffca0e37          	lui	t3,0xffca0
     870:	fb5e0e13          	addi	t3,t3,-75 # ffc9ffb5 <_sp+0xffbbf7e5>
     874:	23c12c23          	sw	t3,568(sp)
     878:	ffee0e37          	lui	t3,0xffee0
     87c:	d5ee0e13          	addi	t3,t3,-674 # ffedfd5e <_sp+0xffdff58e>
     880:	23c12e23          	sw	t3,572(sp)
     884:	fb4a0e37          	lui	t3,0xfb4a0
     888:	cf7e0e13          	addi	t3,t3,-777 # fb49fcf7 <_sp+0xfb3bf527>
     88c:	25c12023          	sw	t3,576(sp)
     890:	fc850e37          	lui	t3,0xfc850
     894:	454e0e13          	addi	t3,t3,1108 # fc850454 <_sp+0xfc76fc84>
     898:	25c12223          	sw	t3,580(sp)
     89c:	fd370e37          	lui	t3,0xfd370
     8a0:	484e0e13          	addi	t3,t3,1156 # fd370484 <_sp+0xfd28fcb4>
     8a4:	25c12423          	sw	t3,584(sp)
     8a8:	fb860e37          	lui	t3,0xfb860
     8ac:	272e0e13          	addi	t3,t3,626 # fb860272 <_sp+0xfb77faa2>
     8b0:	25c12623          	sw	t3,588(sp)
     8b4:	f9c70e37          	lui	t3,0xf9c70
     8b8:	281e8e93          	addi	t4,t4,641
     8bc:	62ee0e13          	addi	t3,t3,1582 # f9c7062e <_sp+0xf9b8fe5e>
     8c0:	5fd12a23          	sw	t4,1524(sp)
     8c4:	25c12823          	sw	t3,592(sp)
     8c8:	fd400eb7          	lui	t4,0xfd400
     8cc:	04700e37          	lui	t3,0x4700
     8d0:	2aae8e93          	addi	t4,t4,682 # fd4002aa <_sp+0xfd31fada>
     8d4:	174e0e13          	addi	t3,t3,372 # 4700174 <_sp+0x461f9a4>
     8d8:	5fd12c23          	sw	t4,1528(sp)
     8dc:	25c12a23          	sw	t3,596(sp)
     8e0:	01cf0eb7          	lui	t4,0x1cf0
     8e4:	02410e37          	lui	t3,0x2410
     8e8:	496e8e93          	addi	t4,t4,1174 # 1cf0496 <_sp+0x1c0fcc6>
     8ec:	1c0e0e13          	addi	t3,t3,448 # 24101c0 <_sp+0x232f9f0>
     8f0:	03650f37          	lui	t5,0x3650
     8f4:	df2f0f13          	addi	t5,t5,-526 # 364fdf2 <_sp+0x356f622>
     8f8:	5fd12e23          	sw	t4,1532(sp)
     8fc:	f7830313          	addi	t1,t1,-136
     900:	b2300e93          	li	t4,-1245
     904:	25c12c23          	sw	t3,600(sp)
     908:	fcf70e37          	lui	t3,0xfcf70
     90c:	5fe12623          	sw	t5,1516(sp)
     910:	21d11123          	sh	t4,514(sp)
     914:	380e0e13          	addi	t3,t3,896 # fcf70380 <_sp+0xfce8fbb0>
     918:	26612223          	sw	t1,612(sp)
     91c:	004c0f37          	lui	t5,0x4c0
     920:	02900eb7          	lui	t4,0x2900
     924:	035a0337          	lui	t1,0x35a0
     928:	062a0837          	lui	a6,0x62a0
     92c:	fc100637          	lui	a2,0xfc100
     930:	2bef0f13          	addi	t5,t5,702 # 4c02be <_sp+0x3dfaee>
     934:	0bce8e93          	addi	t4,t4,188 # 29000bc <_sp+0x281f8ec>
     938:	25c12e23          	sw	t3,604(sp)
     93c:	37f30313          	addi	t1,t1,895 # 35a037f <_sp+0x34bfbaf>
     940:	fab90e37          	lui	t3,0xfab90
     944:	5fe12823          	sw	t5,1520(sp)
     948:	21d12223          	sw	t4,516(sp)
     94c:	aec60f13          	addi	t5,a2,-1300 # fc0ffaec <_sp+0xfc01f31c>
     950:	d3d80e93          	addi	t4,a6,-707 # 629fd3d <_sp+0x61bf56d>
     954:	26612423          	sw	t1,616(sp)
     958:	db4e0e13          	addi	t3,t3,-588 # fab8fdb4 <_sp+0xfaaaf5e4>
     95c:	ff2a0337          	lui	t1,0xff2a0
     960:	fac88893          	addi	a7,a7,-84
     964:	d7c30313          	addi	t1,t1,-644 # ff29fd7c <_sp+0xff1bf5ac>
     968:	23e12023          	sw	t5,544(sp)
     96c:	23d12423          	sw	t4,552(sp)
     970:	27c12023          	sw	t3,608(sp)
     974:	26612623          	sw	t1,620(sp)
     978:	27112e23          	sw	a7,636(sp)
     97c:	37b00893          	li	a7,891
     980:	29111023          	sh	a7,640(sp)
     984:	a0800893          	li	a7,-1528
     988:	29111123          	sh	a7,642(sp)
     98c:	056f08b7          	lui	a7,0x56f0
     990:	04a88893          	addi	a7,a7,74 # 56f004a <_sp+0x560f87a>
     994:	29112223          	sw	a7,644(sp)
     998:	fcab08b7          	lui	a7,0xfcab0
     99c:	dc588893          	addi	a7,a7,-571 # fcaafdc5 <_sp+0xfc9cf5f5>
     9a0:	29112423          	sw	a7,648(sp)
     9a4:	fbeb08b7          	lui	a7,0xfbeb0
     9a8:	52488893          	addi	a7,a7,1316 # fbeb0524 <_sp+0xfbdcfd54>
     9ac:	29112623          	sw	a7,652(sp)
     9b0:	fc2208b7          	lui	a7,0xfc220
     9b4:	e1a88893          	addi	a7,a7,-486 # fc21fe1a <_sp+0xfc13f64a>
     9b8:	29112823          	sw	a7,656(sp)
     9bc:	f9b808b7          	lui	a7,0xf9b80
     9c0:	27788893          	addi	a7,a7,631 # f9b80277 <_sp+0xf9a9faa7>
     9c4:	29112a23          	sw	a7,660(sp)
     9c8:	fb3108b7          	lui	a7,0xfb310
     9cc:	0c688893          	addi	a7,a7,198 # fb3100c6 <_sp+0xfb22f8f6>
     9d0:	29112c23          	sw	a7,664(sp)
     9d4:	fa3008b7          	lui	a7,0xfa300
     9d8:	58188893          	addi	a7,a7,1409 # fa300581 <_sp+0xfa21fdb1>
     9dc:	29112e23          	sw	a7,668(sp)
     9e0:	fddd08b7          	lui	a7,0xfddd0
     9e4:	eba88893          	addi	a7,a7,-326 # fddcfeba <_sp+0xfdcef6ea>
     9e8:	2b112023          	sw	a7,672(sp)
     9ec:	fa6108b7          	lui	a7,0xfa610
     9f0:	e1d88893          	addi	a7,a7,-483 # fa60fe1d <_sp+0xfa52f64d>
     9f4:	2b112223          	sw	a7,676(sp)
     9f8:	021208b7          	lui	a7,0x2120
     9fc:	1f888893          	addi	a7,a7,504 # 21201f8 <_sp+0x203fa28>
     a00:	2b112423          	sw	a7,680(sp)
     a04:	f97308b7          	lui	a7,0xf9730
     a08:	51688893          	addi	a7,a7,1302 # f9730516 <_sp+0xf964fd46>
     a0c:	2b112623          	sw	a7,684(sp)
     a10:	01cc08b7          	lui	a7,0x1cc0
     a14:	1a488893          	addi	a7,a7,420 # 1cc01a4 <_sp+0x1bdf9d4>
     a18:	2b112823          	sw	a7,688(sp)
     a1c:	049e08b7          	lui	a7,0x49e0
     a20:	f9b88893          	addi	a7,a7,-101 # 49dff9b <_sp+0x48ff7cb>
     a24:	2b112a23          	sw	a7,692(sp)
     a28:	042708b7          	lui	a7,0x4270
     a2c:	0ed88893          	addi	a7,a7,237 # 42700ed <_sp+0x418f91d>
     a30:	2b112c23          	sw	a7,696(sp)
     a34:	fd1b08b7          	lui	a7,0xfd1b0
     a38:	65a88893          	addi	a7,a7,1626 # fd1b065a <_sp+0xfd0cfe8a>
     a3c:	2b112e23          	sw	a7,700(sp)
     a40:	060a08b7          	lui	a7,0x60a0
     a44:	1c388893          	addi	a7,a7,451 # 60a01c3 <_sp+0x5fbf9f3>
     a48:	2d112023          	sw	a7,704(sp)
     a4c:	01f608b7          	lui	a7,0x1f60
     a50:	45e88893          	addi	a7,a7,1118 # 1f6045e <_sp+0x1e7fc8e>
     a54:	2d112223          	sw	a7,708(sp)
     a58:	01ea08b7          	lui	a7,0x1ea0
     a5c:	df388893          	addi	a7,a7,-525 # 1e9fdf3 <_sp+0x1dbf623>
     a60:	2d112423          	sw	a7,712(sp)
     a64:	010908b7          	lui	a7,0x1090
     a68:	d5488893          	addi	a7,a7,-684 # 108fd54 <_sp+0xfaf584>
     a6c:	2d112623          	sw	a7,716(sp)
     a70:	048308b7          	lui	a7,0x4830
     a74:	d2f88893          	addi	a7,a7,-721 # 482fd2f <_sp+0x474f55f>
     a78:	2d112823          	sw	a7,720(sp)
     a7c:	fdc808b7          	lui	a7,0xfdc80
     a80:	46e88893          	addi	a7,a7,1134 # fdc8046e <_sp+0xfdb9fc9e>
     a84:	2d112a23          	sw	a7,724(sp)
     a88:	fb2408b7          	lui	a7,0xfb240
     a8c:	5ed88893          	addi	a7,a7,1517 # fb2405ed <_sp+0xfb15fe1d>
     a90:	2d112c23          	sw	a7,728(sp)
     a94:	01ff08b7          	lui	a7,0x1ff0
     a98:	0fa88893          	addi	a7,a7,250 # 1ff00fa <_sp+0x1f0f92a>
     a9c:	2d112e23          	sw	a7,732(sp)
     aa0:	04ab08b7          	lui	a7,0x4ab0
     aa4:	cda88893          	addi	a7,a7,-806 # 4aafcda <_sp+0x49cf50a>
     aa8:	02d90337          	lui	t1,0x2d90
     aac:	e6730313          	addi	t1,t1,-409 # 2d8fe67 <_sp+0x2caf697>
     ab0:	2f112023          	sw	a7,736(sp)
     ab4:	04cf08b7          	lui	a7,0x4cf0
     ab8:	26612823          	sw	t1,624(sp)
     abc:	ced88893          	addi	a7,a7,-787 # 4cefced <_sp+0x4c0f51d>
     ac0:	064e0337          	lui	t1,0x64e0
     ac4:	58430313          	addi	t1,t1,1412 # 64e0584 <_sp+0x63ffdb4>
     ac8:	2f112223          	sw	a7,740(sp)
     acc:	faf508b7          	lui	a7,0xfaf50
     ad0:	26612a23          	sw	t1,628(sp)
     ad4:	f0e88893          	addi	a7,a7,-242 # faf4ff0e <_sp+0xfae6f73e>
     ad8:	facb0337          	lui	t1,0xfacb0
     adc:	2f112423          	sw	a7,744(sp)
     ae0:	46030313          	addi	t1,t1,1120 # facb0460 <_sp+0xfabcfc90>
     ae4:	039008b7          	lui	a7,0x3900
     ae8:	5ff50513          	addi	a0,a0,1535
     aec:	26612c23          	sw	t1,632(sp)
     af0:	48e88893          	addi	a7,a7,1166 # 390048e <_sp+0x381fcbe>
     af4:	2f112623          	sw	a7,748(sp)
     af8:	aa258593          	addi	a1,a1,-1374
     afc:	30a12c23          	sw	a0,792(sp)
     b00:	fc4f0537          	lui	a0,0xfc4f0
     b04:	a7950513          	addi	a0,a0,-1415 # fc4efa79 <_sp+0xfc40f2a9>
     b08:	34b12223          	sw	a1,836(sp)
     b0c:	04b305b7          	lui	a1,0x4b30
     b10:	ab180813          	addi	a6,a6,-1359
     b14:	30a12e23          	sw	a0,796(sp)
     b18:	35b58593          	addi	a1,a1,859 # 4b3035b <_sp+0x4a4fb8b>
     b1c:	fbfe0537          	lui	a0,0xfbfe0
     b20:	2f012823          	sw	a6,752(sp)
     b24:	56c50513          	addi	a0,a0,1388 # fbfe056c <_sp+0xfbeffd9c>
     b28:	34b12423          	sw	a1,840(sp)
     b2c:	00d10837          	lui	a6,0xd10
     b30:	fdbd05b7          	lui	a1,0xfdbd0
     b34:	d7080813          	addi	a6,a6,-656 # d0fd70 <_sp+0xc2f5a0>
     b38:	32a12023          	sw	a0,800(sp)
     b3c:	c1f58593          	addi	a1,a1,-993 # fdbcfc1f <_sp+0xfdaef44f>
     b40:	02b50537          	lui	a0,0x2b50
     b44:	2f012a23          	sw	a6,756(sp)
     b48:	ce550513          	addi	a0,a0,-795 # 2b4fce5 <_sp+0x2a6f515>
     b4c:	34b12623          	sw	a1,844(sp)
     b50:	fbf30837          	lui	a6,0xfbf30
     b54:	fd4205b7          	lui	a1,0xfd420
     b58:	a8580813          	addi	a6,a6,-1403 # fbf2fa85 <_sp+0xfbe4f2b5>
     b5c:	32a12223          	sw	a0,804(sp)
     b60:	5a658593          	addi	a1,a1,1446 # fd4205a6 <_sp+0xfd33fdd6>
     b64:	00440537          	lui	a0,0x440
     b68:	2f012c23          	sw	a6,760(sp)
     b6c:	1555                	addi	a0,a0,-11
     b6e:	34b12823          	sw	a1,848(sp)
     b72:	01df0837          	lui	a6,0x1df0
     b76:	fb6c05b7          	lui	a1,0xfb6c0
     b7a:	63380813          	addi	a6,a6,1587 # 1df0633 <_sp+0x1d0fe63>
     b7e:	32a12423          	sw	a0,808(sp)
     b82:	12c58593          	addi	a1,a1,300 # fb6c012c <_sp+0xfb5df95c>
     b86:	fc3b0537          	lui	a0,0xfc3b0
     b8a:	2f012e23          	sw	a6,764(sp)
     b8e:	d8a50513          	addi	a0,a0,-630 # fc3afd8a <_sp+0xfc2cf5ba>
     b92:	d9000813          	li	a6,-624
     b96:	34b12a23          	sw	a1,852(sp)
     b9a:	fb2d05b7          	lui	a1,0xfb2d0
     b9e:	31011023          	sh	a6,768(sp)
     ba2:	32a12623          	sw	a0,812(sp)
     ba6:	f8800813          	li	a6,-120
     baa:	5fd58593          	addi	a1,a1,1533 # fb2d05fd <_sp+0xfb1efe2d>
     bae:	04840537          	lui	a0,0x4840
     bb2:	31011123          	sh	a6,770(sp)
     bb6:	df750513          	addi	a0,a0,-521 # 483fdf7 <_sp+0x475f627>
     bba:	fb2f0837          	lui	a6,0xfb2f0
     bbe:	34b12c23          	sw	a1,856(sp)
     bc2:	fab405b7          	lui	a1,0xfab40
     bc6:	31012223          	sw	a6,772(sp)
     bca:	32a12823          	sw	a0,816(sp)
     bce:	3ae58593          	addi	a1,a1,942 # fab403ae <_sp+0xfaa5fbde>
     bd2:	fa180837          	lui	a6,0xfa180
     bd6:	05c10537          	lui	a0,0x5c10
     bda:	2a080813          	addi	a6,a6,672 # fa1802a0 <_sp+0xfa09fad0>
     bde:	bca50513          	addi	a0,a0,-1078 # 5c0fbca <_sp+0x5b2f3fa>
     be2:	34b12e23          	sw	a1,860(sp)
     be6:	005205b7          	lui	a1,0x520
     bea:	31012423          	sw	a6,776(sp)
     bee:	32a12a23          	sw	a0,820(sp)
     bf2:	ee758593          	addi	a1,a1,-281 # 51fee7 <_sp+0x43f717>
     bf6:	fefa0837          	lui	a6,0xfefa0
     bfa:	fe0e0537          	lui	a0,0xfe0e0
     bfe:	aab80813          	addi	a6,a6,-1365 # fef9faab <_sp+0xfeebf2db>
     c02:	3cd50513          	addi	a0,a0,973 # fe0e03cd <_sp+0xfdfffbfd>
     c06:	36b12023          	sw	a1,864(sp)
     c0a:	04f005b7          	lui	a1,0x4f00
     c0e:	31012623          	sw	a6,780(sp)
     c12:	32a12c23          	sw	a0,824(sp)
     c16:	9bf58593          	addi	a1,a1,-1601 # 4eff9bf <_sp+0x4e1f1ef>
     c1a:	ff3d0837          	lui	a6,0xff3d0
     c1e:	fcd90537          	lui	a0,0xfcd90
     c22:	18e80813          	addi	a6,a6,398 # ff3d018e <_sp+0xff2ef9be>
     c26:	cf250513          	addi	a0,a0,-782 # fcd8fcf2 <_sp+0xfccaf522>
     c2a:	36b12223          	sw	a1,868(sp)
     c2e:	fc5905b7          	lui	a1,0xfc590
     c32:	31012823          	sw	a6,784(sp)
     c36:	32a12e23          	sw	a0,828(sp)
     c3a:	03358593          	addi	a1,a1,51 # fc590033 <_sp+0xfc4af863>
     c3e:	fbcf0837          	lui	a6,0xfbcf0
     c42:	00730537          	lui	a0,0x730
     c46:	36b12423          	sw	a1,872(sp)
     c4a:	e5180813          	addi	a6,a6,-431 # fbcefe51 <_sp+0xfbc0f681>
     c4e:	d6650513          	addi	a0,a0,-666 # 72fd66 <_sp+0x64f596>
     c52:	02e105b7          	lui	a1,0x2e10
     c56:	25960613          	addi	a2,a2,601
     c5a:	a6258593          	addi	a1,a1,-1438 # 2e0fa62 <_sp+0x2d2f292>
     c5e:	31012a23          	sw	a6,788(sp)
     c62:	34a12023          	sw	a0,832(sp)
     c66:	36b12623          	sw	a1,876(sp)
     c6a:	36c12e23          	sw	a2,892(sp)
     c6e:	48900613          	li	a2,1161
     c72:	38c11023          	sh	a2,896(sp)
     c76:	f8000613          	li	a2,-128
     c7a:	38c11123          	sh	a2,898(sp)
     c7e:	fc5b0637          	lui	a2,0xfc5b0
     c82:	17460613          	addi	a2,a2,372 # fc5b0174 <_sp+0xfc4cf9a4>
     c86:	38c12223          	sw	a2,900(sp)
     c8a:	fb5e0637          	lui	a2,0xfb5e0
     c8e:	28a60613          	addi	a2,a2,650 # fb5e028a <_sp+0xfb4ffaba>
     c92:	38c12423          	sw	a2,904(sp)
     c96:	fd168613          	addi	a2,a3,-47
     c9a:	a9478693          	addi	a3,a5,-1388
     c9e:	3ad12623          	sw	a3,940(sp)
     ca2:	02dd06b7          	lui	a3,0x2dd0
     ca6:	1ce68693          	addi	a3,a3,462 # 2dd01ce <_sp+0x2cef9fe>
     caa:	53c70713          	addi	a4,a4,1340
     cae:	3ad12823          	sw	a3,944(sp)
     cb2:	fa2f06b7          	lui	a3,0xfa2f0
     cb6:	42268693          	addi	a3,a3,1058 # fa2f0422 <_sp+0xfa20fc52>
     cba:	3ce12823          	sw	a4,976(sp)
     cbe:	fd590737          	lui	a4,0xfd590
     cc2:	3ad12a23          	sw	a3,948(sp)
     cc6:	de170713          	addi	a4,a4,-543 # fd58fde1 <_sp+0xfd4af611>
     cca:	031b06b7          	lui	a3,0x31b0
     cce:	e8c68693          	addi	a3,a3,-372 # 31afe8c <_sp+0x30cf6bc>
     cd2:	3ce12a23          	sw	a4,980(sp)
     cd6:	029d0737          	lui	a4,0x29d0
     cda:	38c12a23          	sw	a2,916(sp)
     cde:	3ad12c23          	sw	a3,952(sp)
     ce2:	abf70713          	addi	a4,a4,-1345 # 29cfabf <_sp+0x28ef2ef>
     ce6:	fe460637          	lui	a2,0xfe460
     cea:	ffcd06b7          	lui	a3,0xffcd0
     cee:	e6460613          	addi	a2,a2,-412 # fe45fe64 <_sp+0xfe37f694>
     cf2:	9ff68693          	addi	a3,a3,-1537 # ffccf9ff <_sp+0xffbef22f>
     cf6:	3ce12c23          	sw	a4,984(sp)
     cfa:	f9ac0737          	lui	a4,0xf9ac0
     cfe:	38c12c23          	sw	a2,920(sp)
     d02:	3ad12e23          	sw	a3,956(sp)
     d06:	f7170713          	addi	a4,a4,-143 # f9abff71 <_sp+0xf99df7a1>
     d0a:	f9c305b7          	lui	a1,0xf9c30
     d0e:	fda90637          	lui	a2,0xfda90
     d12:	048206b7          	lui	a3,0x4820
     d16:	cf058593          	addi	a1,a1,-784 # f9c2fcf0 <_sp+0xf9b4f520>
     d1a:	0a260613          	addi	a2,a2,162 # fda900a2 <_sp+0xfd9af8d2>
     d1e:	64068693          	addi	a3,a3,1600 # 4820640 <_sp+0x473fe70>
     d22:	3ce12e23          	sw	a4,988(sp)
     d26:	fc6b0737          	lui	a4,0xfc6b0
     d2a:	36b12823          	sw	a1,880(sp)
     d2e:	38c12e23          	sw	a2,924(sp)
     d32:	3cd12023          	sw	a3,960(sp)
     d36:	a9e70713          	addi	a4,a4,-1378 # fc6afa9e <_sp+0xfc5cf2ce>
     d3a:	028405b7          	lui	a1,0x2840
     d3e:	05320637          	lui	a2,0x5320
     d42:	f9b506b7          	lui	a3,0xf9b50
     d46:	68b58593          	addi	a1,a1,1675 # 284068b <_sp+0x275febb>
     d4a:	34360613          	addi	a2,a2,835 # 5320343 <_sp+0x523fb73>
     d4e:	5dc68693          	addi	a3,a3,1500 # f9b505dc <_sp+0xf9a6fe0c>
     d52:	3ee12023          	sw	a4,992(sp)
     d56:	04cb0737          	lui	a4,0x4cb0
     d5a:	36b12a23          	sw	a1,884(sp)
     d5e:	3ac12023          	sw	a2,928(sp)
     d62:	3cd12223          	sw	a3,964(sp)
     d66:	5df70713          	addi	a4,a4,1503 # 4cb05df <_sp+0x4bcfe0f>
     d6a:	05de05b7          	lui	a1,0x5de0
     d6e:	f9e00637          	lui	a2,0xf9e00
     d72:	03c806b7          	lui	a3,0x3c80
     d76:	b9858593          	addi	a1,a1,-1128 # 5ddfb98 <_sp+0x5cff3c8>
     d7a:	1aa60613          	addi	a2,a2,426 # f9e001aa <_sp+0xf9d1f9da>
     d7e:	23468693          	addi	a3,a3,564 # 3c80234 <_sp+0x3b9fa64>
     d82:	3ee12223          	sw	a4,996(sp)
     d86:	faba0737          	lui	a4,0xfaba0
     d8a:	36b12c23          	sw	a1,888(sp)
     d8e:	3ac12223          	sw	a2,932(sp)
     d92:	3cd12423          	sw	a3,968(sp)
     d96:	f9970713          	addi	a4,a4,-103 # fab9ff99 <_sp+0xfaabf7c9>
     d9a:	fb3c07b7          	lui	a5,0xfb3c0
     d9e:	fc2605b7          	lui	a1,0xfc260
     da2:	01210637          	lui	a2,0x1210
     da6:	028a06b7          	lui	a3,0x28a0
     daa:	60478793          	addi	a5,a5,1540 # fb3c0604 <_sp+0xfb2dfe34>
     dae:	53568693          	addi	a3,a3,1333 # 28a0535 <_sp+0x27bfd65>
     db2:	3ee12423          	sw	a4,1000(sp)
     db6:	d3458593          	addi	a1,a1,-716 # fc25fd34 <_sp+0xfc17f564>
     dba:	b1260613          	addi	a2,a2,-1262 # 120fb12 <_sp+0x112f342>
     dbe:	fb3e0737          	lui	a4,0xfb3e0
     dc2:	38f12623          	sw	a5,908(sp)
     dc6:	3cd12623          	sw	a3,972(sp)
     dca:	c9770713          	addi	a4,a4,-873 # fb3dfc97 <_sp+0xfb2ff4c7>
     dce:	38b12823          	sw	a1,912(sp)
     dd2:	3ac12423          	sw	a2,936(sp)
     dd6:	3ee12623          	sw	a4,1004(sp)
     dda:	04cc0737          	lui	a4,0x4cc0
     dde:	4f370713          	addi	a4,a4,1267 # 4cc04f3 <_sp+0x4bdfd23>
     de2:	3ee12823          	sw	a4,1008(sp)
     de6:	02740737          	lui	a4,0x2740
     dea:	3ee70713          	addi	a4,a4,1006 # 27403ee <_sp+0x265fc1e>
     dee:	3ee12a23          	sw	a4,1012(sp)
     df2:	fca40737          	lui	a4,0xfca40
     df6:	e5c70713          	addi	a4,a4,-420 # fca3fe5c <_sp+0xfc95f68c>
     dfa:	3ee12c23          	sw	a4,1016(sp)
     dfe:	fe270737          	lui	a4,0xfe270
     e02:	4d870713          	addi	a4,a4,1240 # fe2704d8 <_sp+0xfe18fd08>
     e06:	300007b7          	lui	a5,0x30000
     e0a:	3ee12e23          	sw	a4,1020(sp)
     e0e:	0007a423          	sw	zero,8(a5) # 30000008 <_sp+0x2ff1f838>
     e12:	300006b7          	lui	a3,0x30000
     e16:	0007a623          	sw	zero,12(a5)
     e1a:	11068713          	addi	a4,a3,272 # 30000110 <_sp+0x2ff1f940>
     e1e:	07c1                	addi	a5,a5,16
     e20:	0007a023          	sw	zero,0(a5)
     e24:	0791                	addi	a5,a5,4
     e26:	fee79de3          	bne	a5,a4,e20 <main+0xc0a>
     e2a:	2006a023          	sw	zero,512(a3)
     e2e:	2006a223          	sw	zero,516(a3)
     e32:	2006a423          	sw	zero,520(a3)
     e36:	2086a783          	lw	a5,520(a3)
     e3a:	e799                	bnez	a5,e48 <main+0xc32>
     e3c:	2006a823          	sw	zero,528(a3)
     e40:	2106a783          	lw	a5,528(a3)
     e44:	22078063          	beqz	a5,1064 <main+0xe4e>
     e48:	4785                	li	a5,1
     e4a:	3207b073          	csrc	mcountinhibit,a5
     e4e:	4781                	li	a5,0
     e50:	b0079073          	csrw	mcycle,a5
     e54:	858a                	mv	a1,sp
     e56:	40010513          	addi	a0,sp,1024
     e5a:	2b85                	jal	13ca <intt_driver>
     e5c:	b00025f3          	csrr	a1,mcycle
     e60:	000804b7          	lui	s1,0x80
     e64:	0d448513          	addi	a0,s1,212 # 800d4 <no_exception_handler_msg+0x3f>
     e68:	20210913          	addi	s2,sp,514
     e6c:	603010ef          	jal	ra,2c6e <iprintf>
     e70:	8a0a                	mv	s4,sp
     e72:	8aca                	mv	s5,s2
     e74:	23900613          	li	a2,569
     e78:	4981                	li	s3,0
     e7a:	00080bb7          	lui	s7,0x80
     e7e:	10000b13          	li	s6,256
     e82:	a021                	j	e8a <main+0xc74>
     e84:	000a9603          	lh	a2,0(s5)
     e88:	0a89                	addi	s5,s5,2
     e8a:	000a1683          	lh	a3,0(s4)
     e8e:	85ce                	mv	a1,s3
     e90:	0e4b8513          	addi	a0,s7,228 # 800e4 <no_exception_handler_msg+0x4f>
     e94:	0985                	addi	s3,s3,1
     e96:	00c68463          	beq	a3,a2,e9e <main+0xc88>
     e9a:	5d5010ef          	jal	ra,2c6e <iprintf>
     e9e:	0a09                	addi	s4,s4,2
     ea0:	ff6992e3          	bne	s3,s6,e84 <main+0xc6e>
     ea4:	4785                	li	a5,1
     ea6:	3207b073          	csrc	mcountinhibit,a5
     eaa:	4781                	li	a5,0
     eac:	b0079073          	csrw	mcycle,a5
     eb0:	757d                	lui	a0,0xfffff
     eb2:	000809b7          	lui	s3,0x80
     eb6:	80000a37          	lui	s4,0x80000
     eba:	6895                	lui	a7,0x5
     ebc:	6805                	lui	a6,0x1
     ebe:	30150313          	addi	t1,a0,769 # fffff301 <_sp+0xfff1eb31>
     ec2:	409d                	li	ra,7
     ec4:	65c00593          	li	a1,1628
     ec8:	07f00f93          	li	t6,127
     ecc:	4289                	li	t0,2
     ece:	2c098993          	addi	s3,s3,704 # 802c0 <zetas>
     ed2:	fffa4a13          	not	s4,s4
     ed6:	ebf88893          	addi	a7,a7,-321 # 4ebf <gpio.c.0fdb15dd+0x616>
     eda:	02000e37          	lui	t3,0x2000
     ede:	d0180813          	addi	a6,a6,-767 # d01 <main+0xaeb>
     ee2:	2ff50513          	addi	a0,a0,767
     ee6:	0ff00393          	li	t2,255
     eea:	014f8f33          	add	t5,t6,s4
     eee:	4e81                	li	t4,0
     ef0:	0f06                	slli	t5,t5,0x1
     ef2:	01d28733          	add	a4,t0,t4
     ef6:	9f4e                	add	t5,t5,s3
     ef8:	1ffd                	addi	t6,t6,-1
     efa:	08eef163          	bgeu	t4,a4,f7c <main+0xd66>
     efe:	001e9693          	slli	a3,t4,0x1
     f02:	00570eb3          	add	t4,a4,t0
     f06:	40010793          	addi	a5,sp,1024
     f0a:	0706                	slli	a4,a4,0x1
     f0c:	001e9613          	slli	a2,t4,0x1
     f10:	96be                	add	a3,a3,a5
     f12:	973e                	add	a4,a4,a5
     f14:	963e                	add	a2,a2,a5
     f16:	0006db03          	lhu	s6,0(a3)
     f1a:	00075a83          	lhu	s5,0(a4)
     f1e:	0689                	addi	a3,a3,2
     f20:	0709                	addi	a4,a4,2
     f22:	9ada                	add	s5,s5,s6
     f24:	010a9793          	slli	a5,s5,0x10
     f28:	87c1                	srai	a5,a5,0x10
     f2a:	031787b3          	mul	a5,a5,a7
     f2e:	97f2                	add	a5,a5,t3
     f30:	87e9                	srai	a5,a5,0x1a
     f32:	030787b3          	mul	a5,a5,a6
     f36:	40fa8ab3          	sub	s5,s5,a5
     f3a:	ff569f23          	sh	s5,-2(a3)
     f3e:	ffe75a83          	lhu	s5,-2(a4)
     f42:	416a8ab3          	sub	s5,s5,s6
     f46:	0ac2                	slli	s5,s5,0x10
     f48:	410ada93          	srai	s5,s5,0x10
     f4c:	02ba8ab3          	mul	s5,s5,a1
     f50:	026a87b3          	mul	a5,s5,t1
     f54:	07c2                	slli	a5,a5,0x10
     f56:	87c1                	srai	a5,a5,0x10
     f58:	02a787b3          	mul	a5,a5,a0
     f5c:	97d6                	add	a5,a5,s5
     f5e:	87c1                	srai	a5,a5,0x10
     f60:	fef71f23          	sh	a5,-2(a4)
     f64:	fae619e3          	bne	a2,a4,f16 <main+0xd00>
     f68:	01d3ed63          	bltu	t2,t4,f82 <main+0xd6c>
     f6c:	01d28733          	add	a4,t0,t4
     f70:	000f1583          	lh	a1,0(t5)
     f74:	1ffd                	addi	t6,t6,-1
     f76:	1f79                	addi	t5,t5,-2
     f78:	f8eee3e3          	bltu	t4,a4,efe <main+0xce8>
     f7c:	8eba                	mv	t4,a4
     f7e:	ffd3f7e3          	bgeu	t2,t4,f6c <main+0xd56>
     f82:	10fd                	addi	ra,ra,-1
     f84:	0286                	slli	t0,t0,0x1
     f86:	00008863          	beqz	ra,f96 <main+0xd80>
     f8a:	001f9793          	slli	a5,t6,0x1
     f8e:	97ce                	add	a5,a5,s3
     f90:	00079583          	lh	a1,0(a5)
     f94:	bf99                	j	eea <main+0xcd4>
     f96:	767d                	lui	a2,0xfffff
     f98:	40010993          	addi	s3,sp,1024
     f9c:	30160593          	addi	a1,a2,769 # fffff301 <_sp+0xfff1eb31>
     fa0:	60010813          	addi	a6,sp,1536
     fa4:	874e                	mv	a4,s3
     fa6:	5a100513          	li	a0,1441
     faa:	2ff60613          	addi	a2,a2,767
     fae:	00071683          	lh	a3,0(a4)
     fb2:	0709                	addi	a4,a4,2
     fb4:	02a686b3          	mul	a3,a3,a0
     fb8:	02b687b3          	mul	a5,a3,a1
     fbc:	07c2                	slli	a5,a5,0x10
     fbe:	87c1                	srai	a5,a5,0x10
     fc0:	02c787b3          	mul	a5,a5,a2
     fc4:	97b6                	add	a5,a5,a3
     fc6:	87c1                	srai	a5,a5,0x10
     fc8:	fef71f23          	sh	a5,-2(a4)
     fcc:	fee811e3          	bne	a6,a4,fae <main+0xd98>
     fd0:	b00025f3          	csrr	a1,mcycle
     fd4:	0d448513          	addi	a0,s1,212
     fd8:	497010ef          	jal	ra,2c6e <iprintf>
     fdc:	23900a13          	li	s4,569
     fe0:	4481                	li	s1,0
     fe2:	4a81                	li	s5,0
     fe4:	00080bb7          	lui	s7,0x80
     fe8:	00080c37          	lui	s8,0x80
     fec:	10000b13          	li	s6,256
     ff0:	a021                	j	ff8 <main+0xde2>
     ff2:	00091a03          	lh	s4,0(s2)
     ff6:	0909                	addi	s2,s2,2
     ff8:	00099783          	lh	a5,0(s3)
     ffc:	110b8513          	addi	a0,s7,272 # 80110 <no_exception_handler_msg+0x7b>
    1000:	03478063          	beq	a5,s4,1020 <main+0xe0a>
    1004:	46b010ef          	jal	ra,2c6e <iprintf>
    1008:	00099683          	lh	a3,0(s3)
    100c:	0a85                	addi	s5,s5,1
    100e:	8652                	mv	a2,s4
    1010:	85a6                	mv	a1,s1
    1012:	0e4c0513          	addi	a0,s8,228 # 800e4 <no_exception_handler_msg+0x4f>
    1016:	0ac2                	slli	s5,s5,0x10
    1018:	457010ef          	jal	ra,2c6e <iprintf>
    101c:	410ada93          	srai	s5,s5,0x10
    1020:	0485                	addi	s1,s1,1
    1022:	0989                	addi	s3,s3,2
    1024:	fd6497e3          	bne	s1,s6,ff2 <main+0xddc>
    1028:	160a8c63          	beqz	s5,11a0 <main+0xf8a>
    102c:	00080537          	lui	a0,0x80
    1030:	14850513          	addi	a0,a0,328 # 80148 <no_exception_handler_msg+0xb3>
    1034:	6bf000ef          	jal	ra,1ef2 <puts>
    1038:	62c12083          	lw	ra,1580(sp)
    103c:	62812483          	lw	s1,1576(sp)
    1040:	62412903          	lw	s2,1572(sp)
    1044:	62012983          	lw	s3,1568(sp)
    1048:	61c12a03          	lw	s4,1564(sp)
    104c:	61812a83          	lw	s5,1560(sp)
    1050:	61412b03          	lw	s6,1556(sp)
    1054:	61012b83          	lw	s7,1552(sp)
    1058:	60c12c03          	lw	s8,1548(sp)
    105c:	4501                	li	a0,0
    105e:	63010113          	addi	sp,sp,1584
    1062:	8082                	ret
    1064:	00080337          	lui	t1,0x80
    1068:	6f05                	lui	t5,0x1
    106a:	64430313          	addi	t1,t1,1604 # 80644 <handlers>
    106e:	250f0f13          	addi	t5,t5,592 # 1250 <handler_irq_dummy>
    1072:	6885                	lui	a7,0x1
    1074:	6505                	lui	a0,0x1
    1076:	6e05                	lui	t3,0x1
    1078:	01e32023          	sw	t5,0(t1)
    107c:	00430713          	addi	a4,t1,4
    1080:	4785                	li	a5,1
    1082:	4081                	li	ra,0
    1084:	4381                	li	t2,0
    1086:	4281                	li	t0,0
    1088:	4621                	li	a2,8
    108a:	02000593          	li	a1,32
    108e:	03000813          	li	a6,48
    1092:	03100e93          	li	t4,49
    1096:	03200f93          	li	t6,50
    109a:	03300493          	li	s1,51
    109e:	03f00913          	li	s2,63
    10a2:	27488893          	addi	a7,a7,628 # 1274 <handler_irq_i2c>
    10a6:	33a50513          	addi	a0,a0,826 # 133a <handler_irq_gpio>
    10aa:	23ee0e13          	addi	t3,t3,574 # 123e <handler_irq_uart>
    10ae:	a021                	j	10b6 <main+0xea0>
    10b0:	c308                	sw	a0,0(a4)
    10b2:	0785                	addi	a5,a5,1
    10b4:	0711                	addi	a4,a4,4
    10b6:	0ff7f693          	zext.b	a3,a5
    10ba:	00f67963          	bgeu	a2,a5,10cc <main+0xeb6>
    10be:	fed5f9e3          	bgeu	a1,a3,10b0 <main+0xe9a>
    10c2:	00d86863          	bltu	a6,a3,10d2 <main+0xebc>
    10c6:	01172023          	sw	a7,0(a4)
    10ca:	b7e5                	j	10b2 <main+0xe9c>
    10cc:	01c72023          	sw	t3,0(a4)
    10d0:	b7cd                	j	10b2 <main+0xe9c>
    10d2:	0dd68363          	beq	a3,t4,1198 <main+0xf82>
    10d6:	0df68363          	beq	a3,t6,119c <main+0xf86>
    10da:	0c968a63          	beq	a3,s1,11ae <main+0xf98>
    10de:	01e72023          	sw	t5,0(a4)
    10e2:	fd2698e3          	bne	a3,s2,10b2 <main+0xe9c>
    10e6:	00008763          	beqz	ra,10f4 <main+0xede>
    10ea:	6785                	lui	a5,0x1
    10ec:	34078793          	addi	a5,a5,832 # 1340 <handler_irq_dma>
    10f0:	0cf32623          	sw	a5,204(t1)
    10f4:	00038663          	beqz	t2,1100 <main+0xeea>
    10f8:	00000793          	li	a5,0
    10fc:	0cf32423          	sw	a5,200(t1)
    1100:	00028763          	beqz	t0,110e <main+0xef8>
    1104:	6785                	lui	a5,0x1
    1106:	32678793          	addi	a5,a5,806 # 1326 <handler_irq_spi>
    110a:	0cf32223          	sw	a5,196(t1)
    110e:	300007b7          	lui	a5,0x30000
    1112:	0e078713          	addi	a4,a5,224 # 300000e0 <_sp+0x2ff1f910>
    1116:	4685                	li	a3,1
    1118:	c314                	sw	a3,0(a4)
    111a:	20478793          	addi	a5,a5,516
    111e:	4398                	lw	a4,0(a5)
    1120:	fff006b7          	lui	a3,0xfff00
    1124:	16fd                	addi	a3,a3,-1
    1126:	8f75                	and	a4,a4,a3
    1128:	001006b7          	lui	a3,0x100
    112c:	8f55                	or	a4,a4,a3
    112e:	c398                	sw	a4,0(a5)
    1130:	4621                	li	a2,8
    1132:	30062073          	csrs	mstatus,a2
    1136:	6705                	lui	a4,0x1
    1138:	80070793          	addi	a5,a4,-2048 # 800 <main+0x5ea>
    113c:	3047a073          	csrs	mie,a5
    1140:	000806b7          	lui	a3,0x80
    1144:	200607b7          	lui	a5,0x20060
    1148:	63868693          	addi	a3,a3,1592 # 80638 <dma_cb>
    114c:	c69c                	sw	a5,8(a3)
    114e:	0006a023          	sw	zero,0(a3)
    1152:	0007a023          	sw	zero,0(a5) # 20060000 <_sp+0x1ff7f830>
    1156:	0007a223          	sw	zero,4(a5)
    115a:	0007a623          	sw	zero,12(a5)
    115e:	0007aa23          	sw	zero,20(a5)
    1162:	0007ac23          	sw	zero,24(a5)
    1166:	0007ae23          	sw	zero,28(a5)
    116a:	0207a023          	sw	zero,32(a5)
    116e:	0207a223          	sw	zero,36(a5)
    1172:	0207a623          	sw	zero,44(a5)
    1176:	000817b7          	lui	a5,0x81
    117a:	80078793          	addi	a5,a5,-2048 # 80800 <__BSS_END__+0x30>
    117e:	3047b073          	csrc	mie,a5
    1182:	30062073          	csrs	mstatus,a2
    1186:	3047a073          	csrs	mie,a5
    118a:	200807b7          	lui	a5,0x20080
    118e:	0721                	addi	a4,a4,8
    1190:	c398                	sw	a4,0(a5)
    1192:	0007a023          	sw	zero,0(a5) # 20080000 <_sp+0x1ff9f830>
    1196:	b94d                	j	e48 <main+0xc32>
    1198:	4285                	li	t0,1
    119a:	bf21                	j	10b2 <main+0xe9c>
    119c:	4385                	li	t2,1
    119e:	bf11                	j	10b2 <main+0xe9c>
    11a0:	00080537          	lui	a0,0x80
    11a4:	14050513          	addi	a0,a0,320 # 80140 <no_exception_handler_msg+0xab>
    11a8:	54b000ef          	jal	ra,1ef2 <puts>
    11ac:	b541                	j	102c <main+0xe16>
    11ae:	4085                	li	ra,1
    11b0:	b709                	j	10b2 <main+0xe9c>

000011b2 <__no_irq_handler>:
    11b2:	0007f517          	auipc	a0,0x7f
    11b6:	ee350513          	addi	a0,a0,-285 # 80095 <no_exception_handler_msg>
    11ba:	539000ef          	jal	ra,1ef2 <puts>
    11be:	ff5ff06f          	j	11b2 <__no_irq_handler>

000011c2 <sw_irq_handler>:
    11c2:	342022f3          	csrr	t0,mcause
    11c6:	00129293          	slli	t0,t0,0x1
    11ca:	0012d293          	srli	t0,t0,0x1
    11ce:	00200313          	li	t1,2
    11d2:	02628c63          	beq	t0,t1,120a <handle_illegal_insn>
    11d6:	00b00313          	li	t1,11
    11da:	00628863          	beq	t0,t1,11ea <handle_ecall>
    11de:	00300313          	li	t1,3
    11e2:	00628c63          	beq	t0,t1,11fa <handle_ebreak>
    11e6:	0340006f          	j	121a <handle_unknown>

000011ea <handle_ecall>:
    11ea:	0007f517          	auipc	a0,0x7f
    11ee:	e4550513          	addi	a0,a0,-443 # 8002f <ecall_msg>
    11f2:	501000ef          	jal	ra,1ef2 <puts>
    11f6:	0340006f          	j	122a <end_handler>

000011fa <handle_ebreak>:
    11fa:	0007f517          	auipc	a0,0x7f
    11fe:	e5650513          	addi	a0,a0,-426 # 80050 <ebreak_msg>
    1202:	4f1000ef          	jal	ra,1ef2 <puts>
    1206:	0240006f          	j	122a <end_handler>

0000120a <handle_illegal_insn>:
    120a:	0007f517          	auipc	a0,0x7f
    120e:	df650513          	addi	a0,a0,-522 # 80000 <illegal_insn_msg>
    1212:	4e1000ef          	jal	ra,1ef2 <puts>
    1216:	0140006f          	j	122a <end_handler>

0000121a <handle_unknown>:
    121a:	0007f517          	auipc	a0,0x7f
    121e:	e5850513          	addi	a0,a0,-424 # 80072 <unknown_msg>
    1222:	4d1000ef          	jal	ra,1ef2 <puts>
    1226:	0040006f          	j	122a <end_handler>

0000122a <end_handler>:
    122a:	34102573          	csrr	a0,mepc
    122e:	00450513          	addi	a0,a0,4
    1232:	34151073          	csrw	mepc,a0
    1236:	30200073          	mret

0000123a <verification_irq_handler>:
    123a:	30200073          	mret

0000123e <handler_irq_uart>:
    123e:	1101                	addi	sp,sp,-32
    1240:	ce22                	sw	s0,28(sp)
    1242:	1000                	addi	s0,sp,32
    1244:	fea42623          	sw	a0,-20(s0)
    1248:	0001                	nop
    124a:	4472                	lw	s0,28(sp)
    124c:	6105                	addi	sp,sp,32
    124e:	8082                	ret

00001250 <handler_irq_dummy>:
    1250:	1101                	addi	sp,sp,-32
    1252:	ce22                	sw	s0,28(sp)
    1254:	1000                	addi	s0,sp,32
    1256:	fea42623          	sw	a0,-20(s0)
    125a:	0001                	nop
    125c:	4472                	lw	s0,28(sp)
    125e:	6105                	addi	sp,sp,32
    1260:	8082                	ret

00001262 <gpio_handler_irq_dummy>:
    1262:	1101                	addi	sp,sp,-32
    1264:	ce22                	sw	s0,28(sp)
    1266:	1000                	addi	s0,sp,32
    1268:	fea42623          	sw	a0,-20(s0)
    126c:	0001                	nop
    126e:	4472                	lw	s0,28(sp)
    1270:	6105                	addi	sp,sp,32
    1272:	8082                	ret

00001274 <handler_irq_i2c>:
    1274:	1101                	addi	sp,sp,-32
    1276:	ce22                	sw	s0,28(sp)
    1278:	1000                	addi	s0,sp,32
    127a:	fea42623          	sw	a0,-20(s0)
    127e:	fec42503          	lw	a0,-20(s0)
    1282:	4472                	lw	s0,28(sp)
    1284:	6105                	addi	sp,sp,32
    1286:	bf65                	j	123e <handler_irq_uart>

00001288 <fic_irq_timer_1>:
    1288:	1141                	addi	sp,sp,-16
    128a:	c622                	sw	s0,12(sp)
    128c:	0800                	addi	s0,sp,16
    128e:	0001                	nop
    1290:	4432                	lw	s0,12(sp)
    1292:	0141                	addi	sp,sp,16
    1294:	8082                	ret

00001296 <fic_irq_timer_2>:
    1296:	1141                	addi	sp,sp,-16
    1298:	c622                	sw	s0,12(sp)
    129a:	0800                	addi	s0,sp,16
    129c:	4432                	lw	s0,12(sp)
    129e:	0141                	addi	sp,sp,16
    12a0:	b7e5                	j	1288 <fic_irq_timer_1>

000012a2 <fic_irq_timer_3>:
    12a2:	1141                	addi	sp,sp,-16
    12a4:	c622                	sw	s0,12(sp)
    12a6:	0800                	addi	s0,sp,16
    12a8:	4432                	lw	s0,12(sp)
    12aa:	0141                	addi	sp,sp,16
    12ac:	bff1                	j	1288 <fic_irq_timer_1>

000012ae <fic_irq_spi>:
    12ae:	1141                	addi	sp,sp,-16
    12b0:	c622                	sw	s0,12(sp)
    12b2:	0800                	addi	s0,sp,16
    12b4:	4432                	lw	s0,12(sp)
    12b6:	0141                	addi	sp,sp,16
    12b8:	bfc1                	j	1288 <fic_irq_timer_1>

000012ba <fic_irq_spi_flash>:
    12ba:	1141                	addi	sp,sp,-16
    12bc:	c622                	sw	s0,12(sp)
    12be:	0800                	addi	s0,sp,16
    12c0:	4432                	lw	s0,12(sp)
    12c2:	0141                	addi	sp,sp,16
    12c4:	b7d1                	j	1288 <fic_irq_timer_1>

000012c6 <fic_irq_gpio_0>:
    12c6:	1141                	addi	sp,sp,-16
    12c8:	c622                	sw	s0,12(sp)
    12ca:	0800                	addi	s0,sp,16
    12cc:	4432                	lw	s0,12(sp)
    12ce:	0141                	addi	sp,sp,16
    12d0:	bf65                	j	1288 <fic_irq_timer_1>

000012d2 <fic_irq_gpio_1>:
    12d2:	1141                	addi	sp,sp,-16
    12d4:	c622                	sw	s0,12(sp)
    12d6:	0800                	addi	s0,sp,16
    12d8:	4432                	lw	s0,12(sp)
    12da:	0141                	addi	sp,sp,16
    12dc:	b775                	j	1288 <fic_irq_timer_1>

000012de <fic_irq_gpio_2>:
    12de:	1141                	addi	sp,sp,-16
    12e0:	c622                	sw	s0,12(sp)
    12e2:	0800                	addi	s0,sp,16
    12e4:	4432                	lw	s0,12(sp)
    12e6:	0141                	addi	sp,sp,16
    12e8:	b745                	j	1288 <fic_irq_timer_1>

000012ea <fic_irq_gpio_3>:
    12ea:	1141                	addi	sp,sp,-16
    12ec:	c622                	sw	s0,12(sp)
    12ee:	0800                	addi	s0,sp,16
    12f0:	4432                	lw	s0,12(sp)
    12f2:	0141                	addi	sp,sp,16
    12f4:	bf51                	j	1288 <fic_irq_timer_1>

000012f6 <fic_irq_gpio_4>:
    12f6:	1141                	addi	sp,sp,-16
    12f8:	c622                	sw	s0,12(sp)
    12fa:	0800                	addi	s0,sp,16
    12fc:	4432                	lw	s0,12(sp)
    12fe:	0141                	addi	sp,sp,16
    1300:	b761                	j	1288 <fic_irq_timer_1>

00001302 <fic_irq_gpio_5>:
    1302:	1141                	addi	sp,sp,-16
    1304:	c622                	sw	s0,12(sp)
    1306:	0800                	addi	s0,sp,16
    1308:	4432                	lw	s0,12(sp)
    130a:	0141                	addi	sp,sp,16
    130c:	bfb5                	j	1288 <fic_irq_timer_1>

0000130e <fic_irq_gpio_6>:
    130e:	1141                	addi	sp,sp,-16
    1310:	c622                	sw	s0,12(sp)
    1312:	0800                	addi	s0,sp,16
    1314:	4432                	lw	s0,12(sp)
    1316:	0141                	addi	sp,sp,16
    1318:	bf85                	j	1288 <fic_irq_timer_1>

0000131a <fic_irq_gpio_7>:
    131a:	1141                	addi	sp,sp,-16
    131c:	c622                	sw	s0,12(sp)
    131e:	0800                	addi	s0,sp,16
    1320:	4432                	lw	s0,12(sp)
    1322:	0141                	addi	sp,sp,16
    1324:	b795                	j	1288 <fic_irq_timer_1>

00001326 <handler_irq_spi>:
    1326:	1101                	addi	sp,sp,-32
    1328:	ce22                	sw	s0,28(sp)
    132a:	1000                	addi	s0,sp,32
    132c:	fea42623          	sw	a0,-20(s0)
    1330:	fec42503          	lw	a0,-20(s0)
    1334:	4472                	lw	s0,28(sp)
    1336:	6105                	addi	sp,sp,32
    1338:	b719                	j	123e <handler_irq_uart>

0000133a <handler_irq_gpio>:
    133a:	4781                	li	a5,0
    133c:	8782                	jr	a5

0000133e <dma_intr_handler_trans_done>:
    133e:	8082                	ret

00001340 <handler_irq_dma>:
    1340:	8082                	ret

00001342 <dma_load_transaction.constprop.0.isra.0>:
    1342:	000807b7          	lui	a5,0x80
    1346:	63878793          	addi	a5,a5,1592 # 80638 <dma_cb>
    134a:	4794                	lw	a3,8(a5)
    134c:	00052803          	lw	a6,0(a0)
    1350:	00452e83          	lw	t4,4(a0)
    1354:	4ad8                	lw	a4,20(a3)
    1356:	56d0                	lw	a2,44(a3)
    1358:	00482e03          	lw	t3,4(a6)
    135c:	f0077713          	andi	a4,a4,-256
    1360:	004ea303          	lw	t1,4(t4)
    1364:	cad8                	sw	a4,20(a3)
    1366:	01482883          	lw	a7,20(a6)
    136a:	00166613          	ori	a2,a2,1
    136e:	c388                	sw	a0,0(a5)
    1370:	d6d0                	sw	a2,44(a3)
    1372:	01c6a023          	sw	t3,0(a3)
    1376:	0066a223          	sw	t1,4(a3)
    137a:	4781                	li	a5,0
    137c:	00089b63          	bnez	a7,1392 <dma_load_transaction.constprop.0.isra.0+0x50>
    1380:	01452883          	lw	a7,20(a0)
    1384:	00885603          	lhu	a2,8(a6)
    1388:	4791                	li	a5,4
    138a:	4117d7b3          	sra	a5,a5,a7
    138e:	02c787b3          	mul	a5,a5,a2
    1392:	0ff7f793          	zext.b	a5,a5
    1396:	8fd9                	or	a5,a5,a4
    1398:	7741                	lui	a4,0xffff0
    139a:	0ff70713          	addi	a4,a4,255 # ffff00ff <_sp+0xfff0f92f>
    139e:	8ff9                	and	a5,a5,a4
    13a0:	cadc                	sw	a5,20(a3)
    13a2:	014ea603          	lw	a2,20(t4)
    13a6:	4701                	li	a4,0
    13a8:	ea09                	bnez	a2,13ba <dma_load_transaction.constprop.0.isra.0+0x78>
    13aa:	4948                	lw	a0,20(a0)
    13ac:	008ed603          	lhu	a2,8(t4)
    13b0:	4711                	li	a4,4
    13b2:	40a75733          	sra	a4,a4,a0
    13b6:	02c70733          	mul	a4,a4,a2
    13ba:	6641                	lui	a2,0x10
    13bc:	0722                	slli	a4,a4,0x8
    13be:	167d                	addi	a2,a2,-1
    13c0:	8f71                	and	a4,a4,a2
    13c2:	8f5d                	or	a4,a4,a5
    13c4:	cad8                	sw	a4,20(a3)
    13c6:	c6cc                	sw	a1,12(a3)
    13c8:	8082                	ret

000013ca <intt_driver>:
    13ca:	7131                	addi	sp,sp,-192
    13cc:	db4a                	sw	s2,180(sp)
    13ce:	00080937          	lui	s2,0x80
    13d2:	6785                	lui	a5,0x1
    13d4:	62490913          	addi	s2,s2,1572 # 80624 <plic_intr_flag>
    13d8:	dd26                	sw	s1,184(sp)
    13da:	d94e                	sw	s3,176(sp)
    13dc:	c0478693          	addi	a3,a5,-1020 # c04 <main+0x9ee>
    13e0:	df06                	sw	ra,188(sp)
    13e2:	00090023          	sb	zero,0(s2)
    13e6:	20080737          	lui	a4,0x20080
    13ea:	c314                	sw	a3,0(a4)
    13ec:	c0078793          	addi	a5,a5,-1024
    13f0:	c31c                	sw	a5,0(a4)
    13f2:	872a                	mv	a4,a0
    13f4:	c6ba                	sw	a4,76(sp)
    13f6:	f0000737          	lui	a4,0xf0000
    13fa:	da3a                	sw	a4,52(sp)
    13fc:	00b8                	addi	a4,sp,72
    13fe:	4785                	li	a5,1
    1400:	c882                	sw	zero,80(sp)
    1402:	c53a                	sw	a4,136(sp)
    1404:	89ae                	mv	s3,a1
    1406:	1818                	addi	a4,sp,48
    1408:	40000593          	li	a1,1024
    140c:	0128                	addi	a0,sp,136
    140e:	000804b7          	lui	s1,0x80
    1412:	04f11823          	sh	a5,80(sp)
    1416:	c73a                	sw	a4,140(sp)
    1418:	d53e                	sw	a5,168(sp)
    141a:	c482                	sw	zero,72(sp)
    141c:	ca82                	sw	zero,84(sp)
    141e:	cc82                	sw	zero,88(sp)
    1420:	ce82                	sw	zero,92(sp)
    1422:	d802                	sw	zero,48(sp)
    1424:	dc02                	sw	zero,56(sp)
    1426:	de02                	sw	zero,60(sp)
    1428:	c082                	sw	zero,64(sp)
    142a:	c282                	sw	zero,68(sp)
    142c:	c902                	sw	zero,144(sp)
    142e:	cb02                	sw	zero,148(sp)
    1430:	cd02                	sw	zero,152(sp)
    1432:	cf02                	sw	zero,156(sp)
    1434:	d102                	sw	zero,160(sp)
    1436:	d302                	sw	zero,164(sp)
    1438:	d702                	sw	zero,172(sp)
    143a:	63848493          	addi	s1,s1,1592 # 80638 <dma_cb>
    143e:	3711                	jal	1342 <dma_load_transaction.constprop.0.isra.0>
    1440:	449c                	lw	a5,8(s1)
    1442:	4701                	li	a4,0
    1444:	46a1                	li	a3,8
    1446:	4b9c                	lw	a5,16(a5)
    1448:	8b85                	andi	a5,a5,1
    144a:	30072073          	csrs	mstatus,a4
    144e:	c3cd                	beqz	a5,14f0 <intt_driver+0x126>
    1450:	47a1                	li	a5,8
    1452:	3007a073          	csrs	mstatus,a5
    1456:	6785                	lui	a5,0x1
    1458:	20080737          	lui	a4,0x20080
    145c:	d0078693          	addi	a3,a5,-768 # d00 <main+0xaea>
    1460:	c314                	sw	a3,0(a4)
    1462:	c0078793          	addi	a5,a5,-1024
    1466:	c31c                	sw	a5,0(a4)
    1468:	00094783          	lbu	a5,0(s2)
    146c:	e791                	bnez	a5,1478 <intt_driver+0xae>
    146e:	10500073          	wfi
    1472:	00094783          	lbu	a5,0(s2)
    1476:	dfe5                	beqz	a5,146e <intt_driver+0xa4>
    1478:	6785                	lui	a5,0x1
    147a:	c2078693          	addi	a3,a5,-992 # c20 <main+0xa0a>
    147e:	20080737          	lui	a4,0x20080
    1482:	c314                	sw	a3,0(a4)
    1484:	c0078793          	addi	a5,a5,-1024
    1488:	c31c                	sw	a5,0(a4)
    148a:	f00007b7          	lui	a5,0xf0000
    148e:	0c878793          	addi	a5,a5,200 # f00000c8 <_sp+0xeff1f8f8>
    1492:	4705                	li	a4,1
    1494:	c402                	sw	zero,8(sp)
    1496:	ce3e                	sw	a5,28(sp)
    1498:	20000593          	li	a1,512
    149c:	083c                	addi	a5,sp,24
    149e:	1088                	addi	a0,sp,96
    14a0:	00e11423          	sh	a4,8(sp)
    14a4:	d0be                	sw	a5,96(sp)
    14a6:	c13a                	sw	a4,128(sp)
    14a8:	cc02                	sw	zero,24(sp)
    14aa:	d002                	sw	zero,32(sp)
    14ac:	d202                	sw	zero,36(sp)
    14ae:	d402                	sw	zero,40(sp)
    14b0:	d602                	sw	zero,44(sp)
    14b2:	c002                	sw	zero,0(sp)
    14b4:	c602                	sw	zero,12(sp)
    14b6:	c802                	sw	zero,16(sp)
    14b8:	ca02                	sw	zero,20(sp)
    14ba:	c24e                	sw	s3,4(sp)
    14bc:	d482                	sw	zero,104(sp)
    14be:	d682                	sw	zero,108(sp)
    14c0:	d882                	sw	zero,112(sp)
    14c2:	da82                	sw	zero,116(sp)
    14c4:	dc82                	sw	zero,120(sp)
    14c6:	de82                	sw	zero,124(sp)
    14c8:	c302                	sw	zero,132(sp)
    14ca:	d28a                	sw	sp,100(sp)
    14cc:	3d9d                	jal	1342 <dma_load_transaction.constprop.0.isra.0>
    14ce:	449c                	lw	a5,8(s1)
    14d0:	4701                	li	a4,0
    14d2:	46a1                	li	a3,8
    14d4:	4b9c                	lw	a5,16(a5)
    14d6:	8b85                	andi	a5,a5,1
    14d8:	30072073          	csrs	mstatus,a4
    14dc:	c39d                	beqz	a5,1502 <intt_driver+0x138>
    14de:	47a1                	li	a5,8
    14e0:	3007a073          	csrs	mstatus,a5
    14e4:	50fa                	lw	ra,188(sp)
    14e6:	54ea                	lw	s1,184(sp)
    14e8:	595a                	lw	s2,180(sp)
    14ea:	59ca                	lw	s3,176(sp)
    14ec:	6129                	addi	sp,sp,192
    14ee:	8082                	ret
    14f0:	10500073          	wfi
    14f4:	449c                	lw	a5,8(s1)
    14f6:	4b9c                	lw	a5,16(a5)
    14f8:	3006a073          	csrs	mstatus,a3
    14fc:	8b85                	andi	a5,a5,1
    14fe:	d7b1                	beqz	a5,144a <intt_driver+0x80>
    1500:	bf99                	j	1456 <intt_driver+0x8c>
    1502:	10500073          	wfi
    1506:	449c                	lw	a5,8(s1)
    1508:	4b9c                	lw	a5,16(a5)
    150a:	3006a073          	csrs	mstatus,a3
    150e:	8b85                	andi	a5,a5,1
    1510:	d7e1                	beqz	a5,14d8 <intt_driver+0x10e>
    1512:	bfc9                	j	14e4 <intt_driver+0x11a>

00001514 <print_exc_msg>:
    1514:	85aa                	mv	a1,a0
    1516:	00080537          	lui	a0,0x80
    151a:	1141                	addi	sp,sp,-16
    151c:	0b850513          	addi	a0,a0,184 # 800b8 <no_exception_handler_msg+0x23>
    1520:	c606                	sw	ra,12(sp)
    1522:	74c010ef          	jal	ra,2c6e <iprintf>
    1526:	343025f3          	csrr	a1,mtval
    152a:	00080537          	lui	a0,0x80
    152e:	0bc50513          	addi	a0,a0,188 # 800bc <no_exception_handler_msg+0x27>
    1532:	73c010ef          	jal	ra,2c6e <iprintf>
    1536:	a001                	j	1536 <print_exc_msg+0x22>

00001538 <init>:
    1538:	4501                	li	a0,0
    153a:	8082                	ret

0000153c <_close>:
    153c:	557d                	li	a0,-1
    153e:	8082                	ret

00001540 <_exit>:
    1540:	200007b7          	lui	a5,0x20000
    1544:	c3c8                	sw	a0,4(a5)
    1546:	4705                	li	a4,1
    1548:	00e78023          	sb	a4,0(a5) # 20000000 <_sp+0x1ff1f830>
    154c:	10500073          	wfi

00001550 <_fstat>:
    1550:	6789                	lui	a5,0x2
    1552:	c1dc                	sw	a5,4(a1)
    1554:	4501                	li	a0,0
    1556:	8082                	ret

00001558 <_isatty>:
    1558:	157d                	addi	a0,a0,-1
    155a:	00153513          	seqz	a0,a0
    155e:	8082                	ret

00001560 <_lseek>:
    1560:	4501                	li	a0,0
    1562:	8082                	ret

00001564 <_read>:
    1564:	4501                	li	a0,0
    1566:	8082                	ret

00001568 <_write>:
    1568:	4785                	li	a5,1
    156a:	08f51d63          	bne	a0,a5,1604 <_write+0x9c>
    156e:	1141                	addi	sp,sp,-16
    1570:	200007b7          	lui	a5,0x20000
    1574:	c24a                	sw	s2,4(sp)
    1576:	8932                	mv	s2,a2
    1578:	4fd0                	lw	a2,28(a5)
    157a:	c606                	sw	ra,12(sp)
    157c:	c426                	sw	s1,8(sp)
    157e:	ce11                	beqz	a2,159a <_write+0x32>
    1580:	84ae                	mv	s1,a1
    1582:	4681                	li	a3,0
    1584:	80000537          	lui	a0,0x80000
    1588:	03e00593          	li	a1,62
    158c:	51a020ef          	jal	ra,3aa6 <__udivdi3>
    1590:	01051793          	slli	a5,a0,0x10
    1594:	83c1                	srli	a5,a5,0x10
    1596:	00a78a63          	beq	a5,a0,15aa <_write+0x42>
    159a:	000807b7          	lui	a5,0x80
    159e:	05800713          	li	a4,88
    15a2:	62e7a423          	sw	a4,1576(a5) # 80628 <errno>
    15a6:	557d                	li	a0,-1
    15a8:	a889                	j	15fa <_write+0x92>
    15aa:	f9e5                	bnez	a1,159a <_write+0x32>
    15ac:	200b0737          	lui	a4,0x200b0
    15b0:	00072623          	sw	zero,12(a4) # 200b000c <_sp+0x1ffcf83c>
    15b4:	478d                	li	a5,3
    15b6:	cf5c                	sw	a5,28(a4)
    15b8:	02072223          	sw	zero,36(a4)
    15bc:	02072623          	sw	zero,44(a4)
    15c0:	00072223          	sw	zero,4(a4)
    15c4:	01051793          	slli	a5,a0,0x10
    15c8:	56fd                	li	a3,-1
    15ca:	c314                	sw	a3,0(a4)
    15cc:	0037e793          	ori	a5,a5,3
    15d0:	c75c                	sw	a5,12(a4)
    15d2:	00072223          	sw	zero,4(a4)
    15d6:	02090163          	beqz	s2,15f8 <_write+0x90>
    15da:	012485b3          	add	a1,s1,s2
    15de:	0004c683          	lbu	a3,0(s1)
    15e2:	4b1c                	lw	a5,16(a4)
    15e4:	8b85                	andi	a5,a5,1
    15e6:	fff5                	bnez	a5,15e2 <_write+0x7a>
    15e8:	cf14                	sw	a3,24(a4)
    15ea:	4b1c                	lw	a5,16(a4)
    15ec:	838d                	srli	a5,a5,0x3
    15ee:	8b85                	andi	a5,a5,1
    15f0:	dfed                	beqz	a5,15ea <_write+0x82>
    15f2:	0485                	addi	s1,s1,1
    15f4:	fe9595e3          	bne	a1,s1,15de <_write+0x76>
    15f8:	854a                	mv	a0,s2
    15fa:	40b2                	lw	ra,12(sp)
    15fc:	44a2                	lw	s1,8(sp)
    15fe:	4912                	lw	s2,4(sp)
    1600:	0141                	addi	sp,sp,16
    1602:	8082                	ret
    1604:	000807b7          	lui	a5,0x80
    1608:	05800713          	li	a4,88
    160c:	62e7a423          	sw	a4,1576(a5) # 80628 <errno>
    1610:	557d                	li	a0,-1
    1612:	8082                	ret

00001614 <_sbrk>:
    1614:	00080737          	lui	a4,0x80
    1618:	00080637          	lui	a2,0x80
    161c:	000b07b7          	lui	a5,0xb0
    1620:	61870713          	addi	a4,a4,1560 # 80618 <brk>
    1624:	7d060613          	addi	a2,a2,2000 # 807d0 <__BSS_END__>
    1628:	7d078793          	addi	a5,a5,2000 # b07d0 <__heap_end>
    162c:	86aa                	mv	a3,a0
    162e:	4308                	lw	a0,0(a4)
    1630:	00f60b63          	beq	a2,a5,1646 <_sbrk+0x32>
    1634:	00d50633          	add	a2,a0,a3
    1638:	00f67563          	bgeu	a2,a5,1642 <_sbrk+0x2e>
    163c:	9636                	add	a2,a2,a3
    163e:	c310                	sw	a2,0(a4)
    1640:	8082                	ret
    1642:	c31c                	sw	a5,0(a4)
    1644:	8082                	ret
    1646:	4501                	li	a0,0
    1648:	8082                	ret
	...

0000164c <handler_exception>:
    164c:	7119                	addi	sp,sp,-128
    164e:	de86                	sw	ra,124(sp)
    1650:	dc96                	sw	t0,120(sp)
    1652:	da9a                	sw	t1,116(sp)
    1654:	d89e                	sw	t2,112(sp)
    1656:	d6aa                	sw	a0,108(sp)
    1658:	d4ae                	sw	a1,104(sp)
    165a:	d2b2                	sw	a2,100(sp)
    165c:	d0b6                	sw	a3,96(sp)
    165e:	ceba                	sw	a4,92(sp)
    1660:	ccbe                	sw	a5,88(sp)
    1662:	cac2                	sw	a6,84(sp)
    1664:	c8c6                	sw	a7,80(sp)
    1666:	c6f2                	sw	t3,76(sp)
    1668:	c4f6                	sw	t4,72(sp)
    166a:	c2fa                	sw	t5,68(sp)
    166c:	c0fe                	sw	t6,64(sp)
    166e:	342027f3          	csrr	a5,mcause
    1672:	472d                	li	a4,11
    1674:	8bfd                	andi	a5,a5,31
    1676:	00f76a63          	bltu	a4,a5,168a <handler_exception+0x3e>
    167a:	00080737          	lui	a4,0x80
    167e:	078a                	slli	a5,a5,0x2
    1680:	26070713          	addi	a4,a4,608 # 80260 <no_exception_handler_msg+0x1cb>
    1684:	97ba                	add	a5,a5,a4
    1686:	439c                	lw	a5,0(a5)
    1688:	8782                	jr	a5
    168a:	a001                	j	168a <handler_exception+0x3e>
    168c:	00080537          	lui	a0,0x80
    1690:	15c50513          	addi	a0,a0,348 # 8015c <no_exception_handler_msg+0xc7>
    1694:	05f000ef          	jal	ra,1ef2 <puts>
    1698:	a001                	j	1698 <handler_exception+0x4c>
    169a:	000807b7          	lui	a5,0x80
    169e:	17c78793          	addi	a5,a5,380 # 8017c <no_exception_handler_msg+0xe7>
    16a2:	0048                	addi	a0,sp,4
    16a4:	872a                	mv	a4,a0
    16a6:	03078893          	addi	a7,a5,48
    16aa:	0007a803          	lw	a6,0(a5)
    16ae:	43cc                	lw	a1,4(a5)
    16b0:	4790                	lw	a2,8(a5)
    16b2:	47d4                	lw	a3,12(a5)
    16b4:	01072023          	sw	a6,0(a4)
    16b8:	c34c                	sw	a1,4(a4)
    16ba:	c710                	sw	a2,8(a4)
    16bc:	c754                	sw	a3,12(a4)
    16be:	07c1                	addi	a5,a5,16
    16c0:	0741                	addi	a4,a4,16
    16c2:	ff1794e3          	bne	a5,a7,16aa <init.c.97f15b39+0x7>
    16c6:	4394                	lw	a3,0(a5)
    16c8:	0047c783          	lbu	a5,4(a5)
    16cc:	c314                	sw	a3,0(a4)
    16ce:	00f70223          	sb	a5,4(a4)
    16d2:	3589                	jal	1514 <print_exc_msg>
    16d4:	000807b7          	lui	a5,0x80
    16d8:	17c78793          	addi	a5,a5,380 # 8017c <no_exception_handler_msg+0xe7>
    16dc:	0048                	addi	a0,sp,4
    16de:	872a                	mv	a4,a0
    16e0:	03078893          	addi	a7,a5,48
    16e4:	0007a803          	lw	a6,0(a5)
    16e8:	43cc                	lw	a1,4(a5)
    16ea:	4790                	lw	a2,8(a5)
    16ec:	47d4                	lw	a3,12(a5)
    16ee:	01072023          	sw	a6,0(a4)
    16f2:	c34c                	sw	a1,4(a4)
    16f4:	c710                	sw	a2,8(a4)
    16f6:	c754                	sw	a3,12(a4)
    16f8:	07c1                	addi	a5,a5,16
    16fa:	0741                	addi	a4,a4,16
    16fc:	ff1794e3          	bne	a5,a7,16e4 <syscalls.c.c388568e+0xf>
    1700:	b7d9                	j	16c6 <init.c.97f15b39+0x23>
    1702:	000807b7          	lui	a5,0x80
    1706:	1b478793          	addi	a5,a5,436 # 801b4 <no_exception_handler_msg+0x11f>
    170a:	0048                	addi	a0,sp,4
    170c:	872a                	mv	a4,a0
    170e:	03c78313          	addi	t1,a5,60
    1712:	0007a883          	lw	a7,0(a5)
    1716:	0047a803          	lw	a6,4(a5)
    171a:	478c                	lw	a1,8(a5)
    171c:	47d0                	lw	a2,12(a5)
    171e:	4b94                	lw	a3,16(a5)
    1720:	01172023          	sw	a7,0(a4)
    1724:	01072223          	sw	a6,4(a4)
    1728:	c70c                	sw	a1,8(a4)
    172a:	c750                	sw	a2,12(a4)
    172c:	cb14                	sw	a3,16(a4)
    172e:	07d1                	addi	a5,a5,20
    1730:	0751                	addi	a4,a4,20
    1732:	fe6790e3          	bne	a5,t1,1712 <syscalls.c.c388568e+0x3d>
    1736:	3bf9                	jal	1514 <print_exc_msg>
    1738:	000807b7          	lui	a5,0x80
    173c:	1f078793          	addi	a5,a5,496 # 801f0 <no_exception_handler_msg+0x15b>
    1740:	0048                	addi	a0,sp,4
    1742:	872a                	mv	a4,a0
    1744:	03078893          	addi	a7,a5,48
    1748:	0007a803          	lw	a6,0(a5)
    174c:	43cc                	lw	a1,4(a5)
    174e:	4790                	lw	a2,8(a5)
    1750:	47d4                	lw	a3,12(a5)
    1752:	01072023          	sw	a6,0(a4)
    1756:	c34c                	sw	a1,4(a4)
    1758:	c710                	sw	a2,8(a4)
    175a:	c754                	sw	a3,12(a4)
    175c:	07c1                	addi	a5,a5,16
    175e:	0741                	addi	a4,a4,16
    1760:	ff1794e3          	bne	a5,a7,1748 <syscalls.c.c388568e+0x73>
    1764:	4390                	lw	a2,0(a5)
    1766:	43d4                	lw	a3,4(a5)
    1768:	0087c783          	lbu	a5,8(a5)
    176c:	c310                	sw	a2,0(a4)
    176e:	c354                	sw	a3,4(a4)
    1770:	00f70423          	sb	a5,8(a4)
    1774:	3345                	jal	1514 <print_exc_msg>
    1776:	000807b7          	lui	a5,0x80
    177a:	22c78793          	addi	a5,a5,556 # 8022c <no_exception_handler_msg+0x197>
    177e:	0048                	addi	a0,sp,4
    1780:	872a                	mv	a4,a0
    1782:	03078893          	addi	a7,a5,48
    1786:	0007a803          	lw	a6,0(a5)
    178a:	43cc                	lw	a1,4(a5)
    178c:	4790                	lw	a2,8(a5)
    178e:	47d4                	lw	a3,12(a5)
    1790:	01072023          	sw	a6,0(a4)
    1794:	c34c                	sw	a1,4(a4)
    1796:	c710                	sw	a2,8(a4)
    1798:	c754                	sw	a3,12(a4)
    179a:	07c1                	addi	a5,a5,16
    179c:	0741                	addi	a4,a4,16
    179e:	ff1794e3          	bne	a5,a7,1786 <syscalls.c.c388568e+0xb1>
    17a2:	0007c783          	lbu	a5,0(a5)
    17a6:	00f70023          	sb	a5,0(a4)
    17aa:	b771                	j	1736 <syscalls.c.c388568e+0x61>
    17ac:	000807b7          	lui	a5,0x80
    17b0:	22c78793          	addi	a5,a5,556 # 8022c <no_exception_handler_msg+0x197>
    17b4:	0048                	addi	a0,sp,4
    17b6:	872a                	mv	a4,a0
    17b8:	03078893          	addi	a7,a5,48
    17bc:	0007a803          	lw	a6,0(a5)
    17c0:	43cc                	lw	a1,4(a5)
    17c2:	4790                	lw	a2,8(a5)
    17c4:	47d4                	lw	a3,12(a5)
    17c6:	01072023          	sw	a6,0(a4)
    17ca:	c34c                	sw	a1,4(a4)
    17cc:	c710                	sw	a2,8(a4)
    17ce:	c754                	sw	a3,12(a4)
    17d0:	07c1                	addi	a5,a5,16
    17d2:	0741                	addi	a4,a4,16
    17d4:	ff1794e3          	bne	a5,a7,17bc <syscalls.c.c388568e+0xe7>
    17d8:	b7e9                	j	17a2 <syscalls.c.c388568e+0xcd>
	...

000017dc <handler_irq_software>:
    17dc:	7139                	addi	sp,sp,-64
    17de:	d62a                	sw	a0,44(sp)
    17e0:	00080537          	lui	a0,0x80
    17e4:	29050513          	addi	a0,a0,656 # 80290 <no_exception_handler_msg+0x1fb>
    17e8:	de06                	sw	ra,60(sp)
    17ea:	dc16                	sw	t0,56(sp)
    17ec:	da1a                	sw	t1,52(sp)
    17ee:	d81e                	sw	t2,48(sp)
    17f0:	d42e                	sw	a1,40(sp)
    17f2:	d232                	sw	a2,36(sp)
    17f4:	d036                	sw	a3,32(sp)
    17f6:	ce3a                	sw	a4,28(sp)
    17f8:	cc3e                	sw	a5,24(sp)
    17fa:	ca42                	sw	a6,20(sp)
    17fc:	c846                	sw	a7,16(sp)
    17fe:	c672                	sw	t3,12(sp)
    1800:	c476                	sw	t4,8(sp)
    1802:	c27a                	sw	t5,4(sp)
    1804:	c07e                	sw	t6,0(sp)
    1806:	25f5                	jal	1ef2 <puts>
    1808:	a001                	j	1808 <handler_irq_software+0x2c>
	...

0000180c <handler_irq_timer>:
    180c:	7139                	addi	sp,sp,-64
    180e:	d62a                	sw	a0,44(sp)
    1810:	00080537          	lui	a0,0x80
    1814:	2a850513          	addi	a0,a0,680 # 802a8 <no_exception_handler_msg+0x213>
    1818:	de06                	sw	ra,60(sp)
    181a:	dc16                	sw	t0,56(sp)
    181c:	da1a                	sw	t1,52(sp)
    181e:	d81e                	sw	t2,48(sp)
    1820:	d42e                	sw	a1,40(sp)
    1822:	d232                	sw	a2,36(sp)
    1824:	d036                	sw	a3,32(sp)
    1826:	ce3a                	sw	a4,28(sp)
    1828:	cc3e                	sw	a5,24(sp)
    182a:	ca42                	sw	a6,20(sp)
    182c:	c846                	sw	a7,16(sp)
    182e:	c672                	sw	t3,12(sp)
    1830:	c476                	sw	t4,8(sp)
    1832:	c27a                	sw	t5,4(sp)
    1834:	c07e                	sw	t6,0(sp)
    1836:	2d75                	jal	1ef2 <puts>
    1838:	a001                	j	1838 <handler_irq_timer+0x2c>
	...

0000183c <handler_irq_external>:
    183c:	715d                	addi	sp,sp,-80
    183e:	cc4a                	sw	s2,24(sp)
    1840:	30000937          	lui	s2,0x30000
    1844:	de26                	sw	s1,60(sp)
    1846:	20c92483          	lw	s1,524(s2) # 3000020c <_sp+0x2ff1fa3c>
    184a:	d23e                	sw	a5,36(sp)
    184c:	000807b7          	lui	a5,0x80
    1850:	d43a                	sw	a4,40(sp)
    1852:	64478793          	addi	a5,a5,1604 # 80644 <handlers>
    1856:	00249713          	slli	a4,s1,0x2
    185a:	97ba                	add	a5,a5,a4
    185c:	439c                	lw	a5,0(a5)
    185e:	dc2a                	sw	a0,56(sp)
    1860:	c686                	sw	ra,76(sp)
    1862:	c496                	sw	t0,72(sp)
    1864:	c29a                	sw	t1,68(sp)
    1866:	c09e                	sw	t2,64(sp)
    1868:	da2e                	sw	a1,52(sp)
    186a:	d832                	sw	a2,48(sp)
    186c:	d636                	sw	a3,44(sp)
    186e:	d042                	sw	a6,32(sp)
    1870:	ce46                	sw	a7,28(sp)
    1872:	ca72                	sw	t3,20(sp)
    1874:	c876                	sw	t4,16(sp)
    1876:	c67a                	sw	t5,12(sp)
    1878:	c47e                	sw	t6,8(sp)
    187a:	8526                	mv	a0,s1
    187c:	9782                	jalr	a5
    187e:	000807b7          	lui	a5,0x80
    1882:	4705                	li	a4,1
    1884:	62e78223          	sb	a4,1572(a5) # 80624 <plic_intr_flag>
    1888:	20992623          	sw	s1,524(s2)
    188c:	40b6                	lw	ra,76(sp)
    188e:	42a6                	lw	t0,72(sp)
    1890:	4316                	lw	t1,68(sp)
    1892:	4386                	lw	t2,64(sp)
    1894:	54f2                	lw	s1,60(sp)
    1896:	5562                	lw	a0,56(sp)
    1898:	55d2                	lw	a1,52(sp)
    189a:	5642                	lw	a2,48(sp)
    189c:	56b2                	lw	a3,44(sp)
    189e:	5722                	lw	a4,40(sp)
    18a0:	5792                	lw	a5,36(sp)
    18a2:	5802                	lw	a6,32(sp)
    18a4:	48f2                	lw	a7,28(sp)
    18a6:	4962                	lw	s2,24(sp)
    18a8:	4e52                	lw	t3,20(sp)
    18aa:	4ec2                	lw	t4,16(sp)
    18ac:	4f32                	lw	t5,12(sp)
    18ae:	4fa2                	lw	t6,8(sp)
    18b0:	6161                	addi	sp,sp,80
    18b2:	30200073          	mret

000018b6 <fic_irq_dma>:
    18b6:	000807b7          	lui	a5,0x80
    18ba:	4705                	li	a4,1
    18bc:	62e78e23          	sb	a4,1596(a5) # 8063c <dma_cb+0x4>
    18c0:	8082                	ret
	...

000018c4 <handler_irq_fast_dma>:
    18c4:	1141                	addi	sp,sp,-16
    18c6:	c63a                	sw	a4,12(sp)
    18c8:	c43e                	sw	a5,8(sp)
    18ca:	4721                	li	a4,8
    18cc:	200707b7          	lui	a5,0x20070
    18d0:	c3d8                	sw	a4,4(a5)
    18d2:	000807b7          	lui	a5,0x80
    18d6:	4705                	li	a4,1
    18d8:	62e78e23          	sb	a4,1596(a5) # 8063c <dma_cb+0x4>
    18dc:	4732                	lw	a4,12(sp)
    18de:	47a2                	lw	a5,8(sp)
    18e0:	0141                	addi	sp,sp,16
    18e2:	30200073          	mret
	...

000018e8 <handler_irq_fast_timer_1>:
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
    190e:	4705                	li	a4,1
    1910:	c3d8                	sw	a4,4(a5)
    1912:	3a9d                	jal	1288 <fic_irq_timer_1>
    1914:	50f2                	lw	ra,60(sp)
    1916:	52e2                	lw	t0,56(sp)
    1918:	5352                	lw	t1,52(sp)
    191a:	53c2                	lw	t2,48(sp)
    191c:	5532                	lw	a0,44(sp)
    191e:	55a2                	lw	a1,40(sp)
    1920:	5612                	lw	a2,36(sp)
    1922:	5682                	lw	a3,32(sp)
    1924:	4772                	lw	a4,28(sp)
    1926:	47e2                	lw	a5,24(sp)
    1928:	4852                	lw	a6,20(sp)
    192a:	48c2                	lw	a7,16(sp)
    192c:	4e32                	lw	t3,12(sp)
    192e:	4ea2                	lw	t4,8(sp)
    1930:	4f12                	lw	t5,4(sp)
    1932:	4f82                	lw	t6,0(sp)
    1934:	6121                	addi	sp,sp,64
    1936:	30200073          	mret
	...

0000193c <handler_irq_fast_timer_2>:
    193c:	7139                	addi	sp,sp,-64
    193e:	ce3a                	sw	a4,28(sp)
    1940:	cc3e                	sw	a5,24(sp)
    1942:	de06                	sw	ra,60(sp)
    1944:	dc16                	sw	t0,56(sp)
    1946:	da1a                	sw	t1,52(sp)
    1948:	d81e                	sw	t2,48(sp)
    194a:	d62a                	sw	a0,44(sp)
    194c:	d42e                	sw	a1,40(sp)
    194e:	d232                	sw	a2,36(sp)
    1950:	d036                	sw	a3,32(sp)
    1952:	ca42                	sw	a6,20(sp)
    1954:	c846                	sw	a7,16(sp)
    1956:	c672                	sw	t3,12(sp)
    1958:	c476                	sw	t4,8(sp)
    195a:	c27a                	sw	t5,4(sp)
    195c:	c07e                	sw	t6,0(sp)
    195e:	200707b7          	lui	a5,0x20070
    1962:	4709                	li	a4,2
    1964:	c3d8                	sw	a4,4(a5)
    1966:	320d                	jal	1288 <fic_irq_timer_1>
    1968:	50f2                	lw	ra,60(sp)
    196a:	52e2                	lw	t0,56(sp)
    196c:	5352                	lw	t1,52(sp)
    196e:	53c2                	lw	t2,48(sp)
    1970:	5532                	lw	a0,44(sp)
    1972:	55a2                	lw	a1,40(sp)
    1974:	5612                	lw	a2,36(sp)
    1976:	5682                	lw	a3,32(sp)
    1978:	4772                	lw	a4,28(sp)
    197a:	47e2                	lw	a5,24(sp)
    197c:	4852                	lw	a6,20(sp)
    197e:	48c2                	lw	a7,16(sp)
    1980:	4e32                	lw	t3,12(sp)
    1982:	4ea2                	lw	t4,8(sp)
    1984:	4f12                	lw	t5,4(sp)
    1986:	4f82                	lw	t6,0(sp)
    1988:	6121                	addi	sp,sp,64
    198a:	30200073          	mret
	...

00001990 <handler_irq_fast_timer_3>:
    1990:	7139                	addi	sp,sp,-64
    1992:	ce3a                	sw	a4,28(sp)
    1994:	cc3e                	sw	a5,24(sp)
    1996:	de06                	sw	ra,60(sp)
    1998:	dc16                	sw	t0,56(sp)
    199a:	da1a                	sw	t1,52(sp)
    199c:	d81e                	sw	t2,48(sp)
    199e:	d62a                	sw	a0,44(sp)
    19a0:	d42e                	sw	a1,40(sp)
    19a2:	d232                	sw	a2,36(sp)
    19a4:	d036                	sw	a3,32(sp)
    19a6:	ca42                	sw	a6,20(sp)
    19a8:	c846                	sw	a7,16(sp)
    19aa:	c672                	sw	t3,12(sp)
    19ac:	c476                	sw	t4,8(sp)
    19ae:	c27a                	sw	t5,4(sp)
    19b0:	c07e                	sw	t6,0(sp)
    19b2:	200707b7          	lui	a5,0x20070
    19b6:	4711                	li	a4,4
    19b8:	c3d8                	sw	a4,4(a5)
    19ba:	8cfff0ef          	jal	ra,1288 <fic_irq_timer_1>
    19be:	50f2                	lw	ra,60(sp)
    19c0:	52e2                	lw	t0,56(sp)
    19c2:	5352                	lw	t1,52(sp)
    19c4:	53c2                	lw	t2,48(sp)
    19c6:	5532                	lw	a0,44(sp)
    19c8:	55a2                	lw	a1,40(sp)
    19ca:	5612                	lw	a2,36(sp)
    19cc:	5682                	lw	a3,32(sp)
    19ce:	4772                	lw	a4,28(sp)
    19d0:	47e2                	lw	a5,24(sp)
    19d2:	4852                	lw	a6,20(sp)
    19d4:	48c2                	lw	a7,16(sp)
    19d6:	4e32                	lw	t3,12(sp)
    19d8:	4ea2                	lw	t4,8(sp)
    19da:	4f12                	lw	t5,4(sp)
    19dc:	4f82                	lw	t6,0(sp)
    19de:	6121                	addi	sp,sp,64
    19e0:	30200073          	mret
    19e4:	0000                	unimp
	...

000019e8 <handler_irq_fast_spi>:
    19e8:	7139                	addi	sp,sp,-64
    19ea:	ce3a                	sw	a4,28(sp)
    19ec:	cc3e                	sw	a5,24(sp)
    19ee:	de06                	sw	ra,60(sp)
    19f0:	dc16                	sw	t0,56(sp)
    19f2:	da1a                	sw	t1,52(sp)
    19f4:	d81e                	sw	t2,48(sp)
    19f6:	d62a                	sw	a0,44(sp)
    19f8:	d42e                	sw	a1,40(sp)
    19fa:	d232                	sw	a2,36(sp)
    19fc:	d036                	sw	a3,32(sp)
    19fe:	ca42                	sw	a6,20(sp)
    1a00:	c846                	sw	a7,16(sp)
    1a02:	c672                	sw	t3,12(sp)
    1a04:	c476                	sw	t4,8(sp)
    1a06:	c27a                	sw	t5,4(sp)
    1a08:	c07e                	sw	t6,0(sp)
    1a0a:	200707b7          	lui	a5,0x20070
    1a0e:	4741                	li	a4,16
    1a10:	c3d8                	sw	a4,4(a5)
    1a12:	877ff0ef          	jal	ra,1288 <fic_irq_timer_1>
    1a16:	50f2                	lw	ra,60(sp)
    1a18:	52e2                	lw	t0,56(sp)
    1a1a:	5352                	lw	t1,52(sp)
    1a1c:	53c2                	lw	t2,48(sp)
    1a1e:	5532                	lw	a0,44(sp)
    1a20:	55a2                	lw	a1,40(sp)
    1a22:	5612                	lw	a2,36(sp)
    1a24:	5682                	lw	a3,32(sp)
    1a26:	4772                	lw	a4,28(sp)
    1a28:	47e2                	lw	a5,24(sp)
    1a2a:	4852                	lw	a6,20(sp)
    1a2c:	48c2                	lw	a7,16(sp)
    1a2e:	4e32                	lw	t3,12(sp)
    1a30:	4ea2                	lw	t4,8(sp)
    1a32:	4f12                	lw	t5,4(sp)
    1a34:	4f82                	lw	t6,0(sp)
    1a36:	6121                	addi	sp,sp,64
    1a38:	30200073          	mret
    1a3c:	0000                	unimp
	...

00001a40 <handler_irq_fast_spi_flash>:
    1a40:	7139                	addi	sp,sp,-64
    1a42:	ce3a                	sw	a4,28(sp)
    1a44:	cc3e                	sw	a5,24(sp)
    1a46:	de06                	sw	ra,60(sp)
    1a48:	dc16                	sw	t0,56(sp)
    1a4a:	da1a                	sw	t1,52(sp)
    1a4c:	d81e                	sw	t2,48(sp)
    1a4e:	d62a                	sw	a0,44(sp)
    1a50:	d42e                	sw	a1,40(sp)
    1a52:	d232                	sw	a2,36(sp)
    1a54:	d036                	sw	a3,32(sp)
    1a56:	ca42                	sw	a6,20(sp)
    1a58:	c846                	sw	a7,16(sp)
    1a5a:	c672                	sw	t3,12(sp)
    1a5c:	c476                	sw	t4,8(sp)
    1a5e:	c27a                	sw	t5,4(sp)
    1a60:	c07e                	sw	t6,0(sp)
    1a62:	200707b7          	lui	a5,0x20070
    1a66:	02000713          	li	a4,32
    1a6a:	c3d8                	sw	a4,4(a5)
    1a6c:	81dff0ef          	jal	ra,1288 <fic_irq_timer_1>
    1a70:	50f2                	lw	ra,60(sp)
    1a72:	52e2                	lw	t0,56(sp)
    1a74:	5352                	lw	t1,52(sp)
    1a76:	53c2                	lw	t2,48(sp)
    1a78:	5532                	lw	a0,44(sp)
    1a7a:	55a2                	lw	a1,40(sp)
    1a7c:	5612                	lw	a2,36(sp)
    1a7e:	5682                	lw	a3,32(sp)
    1a80:	4772                	lw	a4,28(sp)
    1a82:	47e2                	lw	a5,24(sp)
    1a84:	4852                	lw	a6,20(sp)
    1a86:	48c2                	lw	a7,16(sp)
    1a88:	4e32                	lw	t3,12(sp)
    1a8a:	4ea2                	lw	t4,8(sp)
    1a8c:	4f12                	lw	t5,4(sp)
    1a8e:	4f82                	lw	t6,0(sp)
    1a90:	6121                	addi	sp,sp,64
    1a92:	30200073          	mret
	...

00001a98 <handler_irq_fast_gpio_0>:
    1a98:	7139                	addi	sp,sp,-64
    1a9a:	ce3a                	sw	a4,28(sp)
    1a9c:	cc3e                	sw	a5,24(sp)
    1a9e:	de06                	sw	ra,60(sp)
    1aa0:	dc16                	sw	t0,56(sp)
    1aa2:	da1a                	sw	t1,52(sp)
    1aa4:	d81e                	sw	t2,48(sp)
    1aa6:	d62a                	sw	a0,44(sp)
    1aa8:	d42e                	sw	a1,40(sp)
    1aaa:	d232                	sw	a2,36(sp)
    1aac:	d036                	sw	a3,32(sp)
    1aae:	ca42                	sw	a6,20(sp)
    1ab0:	c846                	sw	a7,16(sp)
    1ab2:	c672                	sw	t3,12(sp)
    1ab4:	c476                	sw	t4,8(sp)
    1ab6:	c27a                	sw	t5,4(sp)
    1ab8:	c07e                	sw	t6,0(sp)
    1aba:	200707b7          	lui	a5,0x20070
    1abe:	04000713          	li	a4,64
    1ac2:	c3d8                	sw	a4,4(a5)
    1ac4:	fc4ff0ef          	jal	ra,1288 <fic_irq_timer_1>
    1ac8:	50f2                	lw	ra,60(sp)
    1aca:	52e2                	lw	t0,56(sp)
    1acc:	5352                	lw	t1,52(sp)
    1ace:	53c2                	lw	t2,48(sp)
    1ad0:	5532                	lw	a0,44(sp)
    1ad2:	55a2                	lw	a1,40(sp)
    1ad4:	5612                	lw	a2,36(sp)
    1ad6:	5682                	lw	a3,32(sp)
    1ad8:	4772                	lw	a4,28(sp)
    1ada:	47e2                	lw	a5,24(sp)
    1adc:	4852                	lw	a6,20(sp)
    1ade:	48c2                	lw	a7,16(sp)
    1ae0:	4e32                	lw	t3,12(sp)
    1ae2:	4ea2                	lw	t4,8(sp)
    1ae4:	4f12                	lw	t5,4(sp)
    1ae6:	4f82                	lw	t6,0(sp)
    1ae8:	6121                	addi	sp,sp,64
    1aea:	30200073          	mret
	...

00001af0 <handler_irq_fast_gpio_1>:
    1af0:	7139                	addi	sp,sp,-64
    1af2:	ce3a                	sw	a4,28(sp)
    1af4:	cc3e                	sw	a5,24(sp)
    1af6:	de06                	sw	ra,60(sp)
    1af8:	dc16                	sw	t0,56(sp)
    1afa:	da1a                	sw	t1,52(sp)
    1afc:	d81e                	sw	t2,48(sp)
    1afe:	d62a                	sw	a0,44(sp)
    1b00:	d42e                	sw	a1,40(sp)
    1b02:	d232                	sw	a2,36(sp)
    1b04:	d036                	sw	a3,32(sp)
    1b06:	ca42                	sw	a6,20(sp)
    1b08:	c846                	sw	a7,16(sp)
    1b0a:	c672                	sw	t3,12(sp)
    1b0c:	c476                	sw	t4,8(sp)
    1b0e:	c27a                	sw	t5,4(sp)
    1b10:	c07e                	sw	t6,0(sp)
    1b12:	200707b7          	lui	a5,0x20070
    1b16:	08000713          	li	a4,128
    1b1a:	c3d8                	sw	a4,4(a5)
    1b1c:	f6cff0ef          	jal	ra,1288 <fic_irq_timer_1>
    1b20:	50f2                	lw	ra,60(sp)
    1b22:	52e2                	lw	t0,56(sp)
    1b24:	5352                	lw	t1,52(sp)
    1b26:	53c2                	lw	t2,48(sp)
    1b28:	5532                	lw	a0,44(sp)
    1b2a:	55a2                	lw	a1,40(sp)
    1b2c:	5612                	lw	a2,36(sp)
    1b2e:	5682                	lw	a3,32(sp)
    1b30:	4772                	lw	a4,28(sp)
    1b32:	47e2                	lw	a5,24(sp)
    1b34:	4852                	lw	a6,20(sp)
    1b36:	48c2                	lw	a7,16(sp)
    1b38:	4e32                	lw	t3,12(sp)
    1b3a:	4ea2                	lw	t4,8(sp)
    1b3c:	4f12                	lw	t5,4(sp)
    1b3e:	4f82                	lw	t6,0(sp)
    1b40:	6121                	addi	sp,sp,64
    1b42:	30200073          	mret
	...

00001b48 <handler_irq_fast_gpio_2>:
    1b48:	7139                	addi	sp,sp,-64
    1b4a:	ce3a                	sw	a4,28(sp)
    1b4c:	cc3e                	sw	a5,24(sp)
    1b4e:	de06                	sw	ra,60(sp)
    1b50:	dc16                	sw	t0,56(sp)
    1b52:	da1a                	sw	t1,52(sp)
    1b54:	d81e                	sw	t2,48(sp)
    1b56:	d62a                	sw	a0,44(sp)
    1b58:	d42e                	sw	a1,40(sp)
    1b5a:	d232                	sw	a2,36(sp)
    1b5c:	d036                	sw	a3,32(sp)
    1b5e:	ca42                	sw	a6,20(sp)
    1b60:	c846                	sw	a7,16(sp)
    1b62:	c672                	sw	t3,12(sp)
    1b64:	c476                	sw	t4,8(sp)
    1b66:	c27a                	sw	t5,4(sp)
    1b68:	c07e                	sw	t6,0(sp)
    1b6a:	200707b7          	lui	a5,0x20070
    1b6e:	10000713          	li	a4,256
    1b72:	c3d8                	sw	a4,4(a5)
    1b74:	f14ff0ef          	jal	ra,1288 <fic_irq_timer_1>
    1b78:	50f2                	lw	ra,60(sp)
    1b7a:	52e2                	lw	t0,56(sp)
    1b7c:	5352                	lw	t1,52(sp)
    1b7e:	53c2                	lw	t2,48(sp)
    1b80:	5532                	lw	a0,44(sp)
    1b82:	55a2                	lw	a1,40(sp)
    1b84:	5612                	lw	a2,36(sp)
    1b86:	5682                	lw	a3,32(sp)
    1b88:	4772                	lw	a4,28(sp)
    1b8a:	47e2                	lw	a5,24(sp)
    1b8c:	4852                	lw	a6,20(sp)
    1b8e:	48c2                	lw	a7,16(sp)
    1b90:	4e32                	lw	t3,12(sp)
    1b92:	4ea2                	lw	t4,8(sp)
    1b94:	4f12                	lw	t5,4(sp)
    1b96:	4f82                	lw	t6,0(sp)
    1b98:	6121                	addi	sp,sp,64
    1b9a:	30200073          	mret
	...

00001ba0 <handler_irq_fast_gpio_3>:
    1ba0:	7139                	addi	sp,sp,-64
    1ba2:	ce3a                	sw	a4,28(sp)
    1ba4:	cc3e                	sw	a5,24(sp)
    1ba6:	de06                	sw	ra,60(sp)
    1ba8:	dc16                	sw	t0,56(sp)
    1baa:	da1a                	sw	t1,52(sp)
    1bac:	d81e                	sw	t2,48(sp)
    1bae:	d62a                	sw	a0,44(sp)
    1bb0:	d42e                	sw	a1,40(sp)
    1bb2:	d232                	sw	a2,36(sp)
    1bb4:	d036                	sw	a3,32(sp)
    1bb6:	ca42                	sw	a6,20(sp)
    1bb8:	c846                	sw	a7,16(sp)
    1bba:	c672                	sw	t3,12(sp)
    1bbc:	c476                	sw	t4,8(sp)
    1bbe:	c27a                	sw	t5,4(sp)
    1bc0:	c07e                	sw	t6,0(sp)
    1bc2:	200707b7          	lui	a5,0x20070
    1bc6:	20000713          	li	a4,512
    1bca:	c3d8                	sw	a4,4(a5)
    1bcc:	ebcff0ef          	jal	ra,1288 <fic_irq_timer_1>
    1bd0:	50f2                	lw	ra,60(sp)
    1bd2:	52e2                	lw	t0,56(sp)
    1bd4:	5352                	lw	t1,52(sp)
    1bd6:	53c2                	lw	t2,48(sp)
    1bd8:	5532                	lw	a0,44(sp)
    1bda:	55a2                	lw	a1,40(sp)
    1bdc:	5612                	lw	a2,36(sp)
    1bde:	5682                	lw	a3,32(sp)
    1be0:	4772                	lw	a4,28(sp)
    1be2:	47e2                	lw	a5,24(sp)
    1be4:	4852                	lw	a6,20(sp)
    1be6:	48c2                	lw	a7,16(sp)
    1be8:	4e32                	lw	t3,12(sp)
    1bea:	4ea2                	lw	t4,8(sp)
    1bec:	4f12                	lw	t5,4(sp)
    1bee:	4f82                	lw	t6,0(sp)
    1bf0:	6121                	addi	sp,sp,64
    1bf2:	30200073          	mret
	...

00001bf8 <handler_irq_fast_gpio_4>:
    1bf8:	7139                	addi	sp,sp,-64
    1bfa:	ce3a                	sw	a4,28(sp)
    1bfc:	cc3e                	sw	a5,24(sp)
    1bfe:	de06                	sw	ra,60(sp)
    1c00:	dc16                	sw	t0,56(sp)
    1c02:	da1a                	sw	t1,52(sp)
    1c04:	d81e                	sw	t2,48(sp)
    1c06:	d62a                	sw	a0,44(sp)
    1c08:	d42e                	sw	a1,40(sp)
    1c0a:	d232                	sw	a2,36(sp)
    1c0c:	d036                	sw	a3,32(sp)
    1c0e:	ca42                	sw	a6,20(sp)
    1c10:	c846                	sw	a7,16(sp)
    1c12:	c672                	sw	t3,12(sp)
    1c14:	c476                	sw	t4,8(sp)
    1c16:	c27a                	sw	t5,4(sp)
    1c18:	c07e                	sw	t6,0(sp)
    1c1a:	200707b7          	lui	a5,0x20070
    1c1e:	40000713          	li	a4,1024
    1c22:	c3d8                	sw	a4,4(a5)
    1c24:	e64ff0ef          	jal	ra,1288 <fic_irq_timer_1>
    1c28:	50f2                	lw	ra,60(sp)
    1c2a:	52e2                	lw	t0,56(sp)
    1c2c:	5352                	lw	t1,52(sp)
    1c2e:	53c2                	lw	t2,48(sp)
    1c30:	5532                	lw	a0,44(sp)
    1c32:	55a2                	lw	a1,40(sp)
    1c34:	5612                	lw	a2,36(sp)
    1c36:	5682                	lw	a3,32(sp)
    1c38:	4772                	lw	a4,28(sp)
    1c3a:	47e2                	lw	a5,24(sp)
    1c3c:	4852                	lw	a6,20(sp)
    1c3e:	48c2                	lw	a7,16(sp)
    1c40:	4e32                	lw	t3,12(sp)
    1c42:	4ea2                	lw	t4,8(sp)
    1c44:	4f12                	lw	t5,4(sp)
    1c46:	4f82                	lw	t6,0(sp)
    1c48:	6121                	addi	sp,sp,64
    1c4a:	30200073          	mret
	...

00001c50 <handler_irq_fast_gpio_5>:
    1c50:	7139                	addi	sp,sp,-64
    1c52:	cc3e                	sw	a5,24(sp)
    1c54:	6785                	lui	a5,0x1
    1c56:	ce3a                	sw	a4,28(sp)
    1c58:	de06                	sw	ra,60(sp)
    1c5a:	dc16                	sw	t0,56(sp)
    1c5c:	da1a                	sw	t1,52(sp)
    1c5e:	d81e                	sw	t2,48(sp)
    1c60:	d62a                	sw	a0,44(sp)
    1c62:	d42e                	sw	a1,40(sp)
    1c64:	d232                	sw	a2,36(sp)
    1c66:	d036                	sw	a3,32(sp)
    1c68:	ca42                	sw	a6,20(sp)
    1c6a:	c846                	sw	a7,16(sp)
    1c6c:	c672                	sw	t3,12(sp)
    1c6e:	c476                	sw	t4,8(sp)
    1c70:	c27a                	sw	t5,4(sp)
    1c72:	c07e                	sw	t6,0(sp)
    1c74:	20070737          	lui	a4,0x20070
    1c78:	80078793          	addi	a5,a5,-2048 # 800 <main+0x5ea>
    1c7c:	c35c                	sw	a5,4(a4)
    1c7e:	e0aff0ef          	jal	ra,1288 <fic_irq_timer_1>
    1c82:	50f2                	lw	ra,60(sp)
    1c84:	52e2                	lw	t0,56(sp)
    1c86:	5352                	lw	t1,52(sp)
    1c88:	53c2                	lw	t2,48(sp)
    1c8a:	5532                	lw	a0,44(sp)
    1c8c:	55a2                	lw	a1,40(sp)
    1c8e:	5612                	lw	a2,36(sp)
    1c90:	5682                	lw	a3,32(sp)
    1c92:	4772                	lw	a4,28(sp)
    1c94:	47e2                	lw	a5,24(sp)
    1c96:	4852                	lw	a6,20(sp)
    1c98:	48c2                	lw	a7,16(sp)
    1c9a:	4e32                	lw	t3,12(sp)
    1c9c:	4ea2                	lw	t4,8(sp)
    1c9e:	4f12                	lw	t5,4(sp)
    1ca0:	4f82                	lw	t6,0(sp)
    1ca2:	6121                	addi	sp,sp,64
    1ca4:	30200073          	mret
    1ca8:	0000                	unimp
	...

00001cac <handler_irq_fast_gpio_6>:
    1cac:	7139                	addi	sp,sp,-64
    1cae:	ce3a                	sw	a4,28(sp)
    1cb0:	cc3e                	sw	a5,24(sp)
    1cb2:	de06                	sw	ra,60(sp)
    1cb4:	dc16                	sw	t0,56(sp)
    1cb6:	da1a                	sw	t1,52(sp)
    1cb8:	d81e                	sw	t2,48(sp)
    1cba:	d62a                	sw	a0,44(sp)
    1cbc:	d42e                	sw	a1,40(sp)
    1cbe:	d232                	sw	a2,36(sp)
    1cc0:	d036                	sw	a3,32(sp)
    1cc2:	ca42                	sw	a6,20(sp)
    1cc4:	c846                	sw	a7,16(sp)
    1cc6:	c672                	sw	t3,12(sp)
    1cc8:	c476                	sw	t4,8(sp)
    1cca:	c27a                	sw	t5,4(sp)
    1ccc:	c07e                	sw	t6,0(sp)
    1cce:	200707b7          	lui	a5,0x20070
    1cd2:	6705                	lui	a4,0x1
    1cd4:	c3d8                	sw	a4,4(a5)
    1cd6:	db2ff0ef          	jal	ra,1288 <fic_irq_timer_1>
    1cda:	50f2                	lw	ra,60(sp)
    1cdc:	52e2                	lw	t0,56(sp)
    1cde:	5352                	lw	t1,52(sp)
    1ce0:	53c2                	lw	t2,48(sp)
    1ce2:	5532                	lw	a0,44(sp)
    1ce4:	55a2                	lw	a1,40(sp)
    1ce6:	5612                	lw	a2,36(sp)
    1ce8:	5682                	lw	a3,32(sp)
    1cea:	4772                	lw	a4,28(sp)
    1cec:	47e2                	lw	a5,24(sp)
    1cee:	4852                	lw	a6,20(sp)
    1cf0:	48c2                	lw	a7,16(sp)
    1cf2:	4e32                	lw	t3,12(sp)
    1cf4:	4ea2                	lw	t4,8(sp)
    1cf6:	4f12                	lw	t5,4(sp)
    1cf8:	4f82                	lw	t6,0(sp)
    1cfa:	6121                	addi	sp,sp,64
    1cfc:	30200073          	mret
    1d00:	0000                	unimp
	...

00001d04 <handler_irq_fast_gpio_7>:
    1d04:	7139                	addi	sp,sp,-64
    1d06:	ce3a                	sw	a4,28(sp)
    1d08:	cc3e                	sw	a5,24(sp)
    1d0a:	de06                	sw	ra,60(sp)
    1d0c:	dc16                	sw	t0,56(sp)
    1d0e:	da1a                	sw	t1,52(sp)
    1d10:	d81e                	sw	t2,48(sp)
    1d12:	d62a                	sw	a0,44(sp)
    1d14:	d42e                	sw	a1,40(sp)
    1d16:	d232                	sw	a2,36(sp)
    1d18:	d036                	sw	a3,32(sp)
    1d1a:	ca42                	sw	a6,20(sp)
    1d1c:	c846                	sw	a7,16(sp)
    1d1e:	c672                	sw	t3,12(sp)
    1d20:	c476                	sw	t4,8(sp)
    1d22:	c27a                	sw	t5,4(sp)
    1d24:	c07e                	sw	t6,0(sp)
    1d26:	200707b7          	lui	a5,0x20070
    1d2a:	6709                	lui	a4,0x2
    1d2c:	c3d8                	sw	a4,4(a5)
    1d2e:	d5aff0ef          	jal	ra,1288 <fic_irq_timer_1>
    1d32:	50f2                	lw	ra,60(sp)
    1d34:	52e2                	lw	t0,56(sp)
    1d36:	5352                	lw	t1,52(sp)
    1d38:	53c2                	lw	t2,48(sp)
    1d3a:	5532                	lw	a0,44(sp)
    1d3c:	55a2                	lw	a1,40(sp)
    1d3e:	5612                	lw	a2,36(sp)
    1d40:	5682                	lw	a3,32(sp)
    1d42:	4772                	lw	a4,28(sp)
    1d44:	47e2                	lw	a5,24(sp)
    1d46:	4852                	lw	a6,20(sp)
    1d48:	48c2                	lw	a7,16(sp)
    1d4a:	4e32                	lw	t3,12(sp)
    1d4c:	4ea2                	lw	t4,8(sp)
    1d4e:	4f12                	lw	t5,4(sp)
    1d50:	4f82                	lw	t6,0(sp)
    1d52:	6121                	addi	sp,sp,64
    1d54:	30200073          	mret
	...

00001d5a <atexit>:
    1d5a:	85aa                	mv	a1,a0
    1d5c:	4681                	li	a3,0
    1d5e:	4601                	li	a2,0
    1d60:	4501                	li	a0,0
    1d62:	a985                	j	21d2 <__register_exitproc>

00001d64 <__libc_fini_array>:
    1d64:	1141                	addi	sp,sp,-16
    1d66:	000807b7          	lui	a5,0x80
    1d6a:	c422                	sw	s0,8(sp)
    1d6c:	00080437          	lui	s0,0x80
    1d70:	5b478713          	addi	a4,a5,1460 # 805b4 <impure_data>
    1d74:	5b440413          	addi	s0,s0,1460 # 805b4 <impure_data>
    1d78:	8c19                	sub	s0,s0,a4
    1d7a:	c226                	sw	s1,4(sp)
    1d7c:	c606                	sw	ra,12(sp)
    1d7e:	8409                	srai	s0,s0,0x2
    1d80:	5b478493          	addi	s1,a5,1460
    1d84:	e411                	bnez	s0,1d90 <__libc_fini_array+0x2c>
    1d86:	40b2                	lw	ra,12(sp)
    1d88:	4422                	lw	s0,8(sp)
    1d8a:	4492                	lw	s1,4(sp)
    1d8c:	0141                	addi	sp,sp,16
    1d8e:	8082                	ret
    1d90:	147d                	addi	s0,s0,-1
    1d92:	00241793          	slli	a5,s0,0x2
    1d96:	97a6                	add	a5,a5,s1
    1d98:	439c                	lw	a5,0(a5)
    1d9a:	9782                	jalr	a5
    1d9c:	b7e5                	j	1d84 <__libc_fini_array+0x20>

00001d9e <__libc_init_array>:
    1d9e:	1141                	addi	sp,sp,-16
    1da0:	c422                	sw	s0,8(sp)
    1da2:	c226                	sw	s1,4(sp)
    1da4:	00080437          	lui	s0,0x80
    1da8:	000804b7          	lui	s1,0x80
    1dac:	5b448793          	addi	a5,s1,1460 # 805b4 <impure_data>
    1db0:	5b440413          	addi	s0,s0,1460 # 805b4 <impure_data>
    1db4:	8c1d                	sub	s0,s0,a5
    1db6:	c04a                	sw	s2,0(sp)
    1db8:	c606                	sw	ra,12(sp)
    1dba:	8409                	srai	s0,s0,0x2
    1dbc:	5b448493          	addi	s1,s1,1460
    1dc0:	4901                	li	s2,0
    1dc2:	02891763          	bne	s2,s0,1df0 <__libc_init_array+0x52>
    1dc6:	000804b7          	lui	s1,0x80
    1dca:	00080437          	lui	s0,0x80
    1dce:	5b448793          	addi	a5,s1,1460 # 805b4 <impure_data>
    1dd2:	5b440413          	addi	s0,s0,1460 # 805b4 <impure_data>
    1dd6:	8c1d                	sub	s0,s0,a5
    1dd8:	8409                	srai	s0,s0,0x2
    1dda:	5b448493          	addi	s1,s1,1460
    1dde:	4901                	li	s2,0
    1de0:	00891d63          	bne	s2,s0,1dfa <__libc_init_array+0x5c>
    1de4:	40b2                	lw	ra,12(sp)
    1de6:	4422                	lw	s0,8(sp)
    1de8:	4492                	lw	s1,4(sp)
    1dea:	4902                	lw	s2,0(sp)
    1dec:	0141                	addi	sp,sp,16
    1dee:	8082                	ret
    1df0:	409c                	lw	a5,0(s1)
    1df2:	0905                	addi	s2,s2,1
    1df4:	0491                	addi	s1,s1,4
    1df6:	9782                	jalr	a5
    1df8:	b7e9                	j	1dc2 <__libc_init_array+0x24>
    1dfa:	409c                	lw	a5,0(s1)
    1dfc:	0905                	addi	s2,s2,1
    1dfe:	0491                	addi	s1,s1,4
    1e00:	9782                	jalr	a5
    1e02:	bff9                	j	1de0 <__libc_init_array+0x42>

00001e04 <memset>:
    1e04:	832a                	mv	t1,a0
    1e06:	c611                	beqz	a2,1e12 <memset+0xe>
    1e08:	00b30023          	sb	a1,0(t1)
    1e0c:	167d                	addi	a2,a2,-1
    1e0e:	0305                	addi	t1,t1,1
    1e10:	fe65                	bnez	a2,1e08 <memset+0x4>
    1e12:	8082                	ret

00001e14 <_puts_r>:
    1e14:	1101                	addi	sp,sp,-32
    1e16:	ca26                	sw	s1,20(sp)
    1e18:	c84a                	sw	s2,16(sp)
    1e1a:	ce06                	sw	ra,28(sp)
    1e1c:	cc22                	sw	s0,24(sp)
    1e1e:	c64e                	sw	s3,12(sp)
    1e20:	c452                	sw	s4,8(sp)
    1e22:	84aa                	mv	s1,a0
    1e24:	892e                	mv	s2,a1
    1e26:	c509                	beqz	a0,1e30 <_puts_r+0x1c>
    1e28:	4d1c                	lw	a5,24(a0)
    1e2a:	e399                	bnez	a5,1e30 <_puts_r+0x1c>
    1e2c:	77c000ef          	jal	ra,25a8 <__sinit>
    1e30:	4c9c                	lw	a5,24(s1)
    1e32:	4480                	lw	s0,8(s1)
    1e34:	e781                	bnez	a5,1e3c <_puts_r+0x28>
    1e36:	8526                	mv	a0,s1
    1e38:	770000ef          	jal	ra,25a8 <__sinit>
    1e3c:	000807b7          	lui	a5,0x80
    1e40:	3e078793          	addi	a5,a5,992 # 803e0 <__sf_fake_stdin>
    1e44:	02f41c63          	bne	s0,a5,1e7c <_puts_r+0x68>
    1e48:	40c0                	lw	s0,4(s1)
    1e4a:	00c45783          	lhu	a5,12(s0)
    1e4e:	8ba1                	andi	a5,a5,8
    1e50:	c7b1                	beqz	a5,1e9c <_puts_r+0x88>
    1e52:	481c                	lw	a5,16(s0)
    1e54:	c7a1                	beqz	a5,1e9c <_puts_r+0x88>
    1e56:	59fd                	li	s3,-1
    1e58:	4a29                	li	s4,10
    1e5a:	441c                	lw	a5,8(s0)
    1e5c:	00094583          	lbu	a1,0(s2)
    1e60:	17fd                	addi	a5,a5,-1
    1e62:	e9b1                	bnez	a1,1eb6 <_puts_r+0xa2>
    1e64:	c41c                	sw	a5,8(s0)
    1e66:	0607de63          	bgez	a5,1ee2 <_puts_r+0xce>
    1e6a:	8622                	mv	a2,s0
    1e6c:	45a9                	li	a1,10
    1e6e:	8526                	mv	a0,s1
    1e70:	2261                	jal	1ff8 <__swbuf_r>
    1e72:	57fd                	li	a5,-1
    1e74:	02f50863          	beq	a0,a5,1ea4 <_puts_r+0x90>
    1e78:	4529                	li	a0,10
    1e7a:	a035                	j	1ea6 <_puts_r+0x92>
    1e7c:	000807b7          	lui	a5,0x80
    1e80:	40078793          	addi	a5,a5,1024 # 80400 <__sf_fake_stdout>
    1e84:	00f41463          	bne	s0,a5,1e8c <_puts_r+0x78>
    1e88:	4480                	lw	s0,8(s1)
    1e8a:	b7c1                	j	1e4a <_puts_r+0x36>
    1e8c:	000807b7          	lui	a5,0x80
    1e90:	3c078793          	addi	a5,a5,960 # 803c0 <__sf_fake_stderr>
    1e94:	faf41be3          	bne	s0,a5,1e4a <_puts_r+0x36>
    1e98:	44c0                	lw	s0,12(s1)
    1e9a:	bf45                	j	1e4a <_puts_r+0x36>
    1e9c:	85a2                	mv	a1,s0
    1e9e:	8526                	mv	a0,s1
    1ea0:	241d                	jal	20c6 <__swsetup_r>
    1ea2:	d955                	beqz	a0,1e56 <_puts_r+0x42>
    1ea4:	557d                	li	a0,-1
    1ea6:	40f2                	lw	ra,28(sp)
    1ea8:	4462                	lw	s0,24(sp)
    1eaa:	44d2                	lw	s1,20(sp)
    1eac:	4942                	lw	s2,16(sp)
    1eae:	49b2                	lw	s3,12(sp)
    1eb0:	4a22                	lw	s4,8(sp)
    1eb2:	6105                	addi	sp,sp,32
    1eb4:	8082                	ret
    1eb6:	c41c                	sw	a5,8(s0)
    1eb8:	0905                	addi	s2,s2,1
    1eba:	0007d763          	bgez	a5,1ec8 <_puts_r+0xb4>
    1ebe:	4c18                	lw	a4,24(s0)
    1ec0:	00e7cb63          	blt	a5,a4,1ed6 <_puts_r+0xc2>
    1ec4:	01458963          	beq	a1,s4,1ed6 <_puts_r+0xc2>
    1ec8:	401c                	lw	a5,0(s0)
    1eca:	00178713          	addi	a4,a5,1
    1ece:	c018                	sw	a4,0(s0)
    1ed0:	00b78023          	sb	a1,0(a5)
    1ed4:	b759                	j	1e5a <_puts_r+0x46>
    1ed6:	8622                	mv	a2,s0
    1ed8:	8526                	mv	a0,s1
    1eda:	2a39                	jal	1ff8 <__swbuf_r>
    1edc:	f7351fe3          	bne	a0,s3,1e5a <_puts_r+0x46>
    1ee0:	b7d1                	j	1ea4 <_puts_r+0x90>
    1ee2:	401c                	lw	a5,0(s0)
    1ee4:	00178713          	addi	a4,a5,1
    1ee8:	c018                	sw	a4,0(s0)
    1eea:	4729                	li	a4,10
    1eec:	00e78023          	sb	a4,0(a5)
    1ef0:	b761                	j	1e78 <_puts_r+0x64>

00001ef2 <puts>:
    1ef2:	000807b7          	lui	a5,0x80
    1ef6:	85aa                	mv	a1,a0
    1ef8:	61c7a503          	lw	a0,1564(a5) # 8061c <_impure_ptr>
    1efc:	bf21                	j	1e14 <_puts_r>

00001efe <cleanup_glue>:
    1efe:	1141                	addi	sp,sp,-16
    1f00:	c422                	sw	s0,8(sp)
    1f02:	842e                	mv	s0,a1
    1f04:	418c                	lw	a1,0(a1)
    1f06:	c226                	sw	s1,4(sp)
    1f08:	c606                	sw	ra,12(sp)
    1f0a:	84aa                	mv	s1,a0
    1f0c:	c191                	beqz	a1,1f10 <cleanup_glue+0x12>
    1f0e:	3fc5                	jal	1efe <cleanup_glue>
    1f10:	85a2                	mv	a1,s0
    1f12:	4422                	lw	s0,8(sp)
    1f14:	40b2                	lw	ra,12(sp)
    1f16:	8526                	mv	a0,s1
    1f18:	4492                	lw	s1,4(sp)
    1f1a:	0141                	addi	sp,sp,16
    1f1c:	17d0006f          	j	2898 <_free_r>

00001f20 <_reclaim_reent>:
    1f20:	000807b7          	lui	a5,0x80
    1f24:	61c7a783          	lw	a5,1564(a5) # 8061c <_impure_ptr>
    1f28:	0ca78763          	beq	a5,a0,1ff6 <_reclaim_reent+0xd6>
    1f2c:	515c                	lw	a5,36(a0)
    1f2e:	1101                	addi	sp,sp,-32
    1f30:	cc22                	sw	s0,24(sp)
    1f32:	ce06                	sw	ra,28(sp)
    1f34:	ca26                	sw	s1,20(sp)
    1f36:	c84a                	sw	s2,16(sp)
    1f38:	c64e                	sw	s3,12(sp)
    1f3a:	842a                	mv	s0,a0
    1f3c:	cf81                	beqz	a5,1f54 <_reclaim_reent+0x34>
    1f3e:	47dc                	lw	a5,12(a5)
    1f40:	4481                	li	s1,0
    1f42:	08000913          	li	s2,128
    1f46:	e3d1                	bnez	a5,1fca <_reclaim_reent+0xaa>
    1f48:	505c                	lw	a5,36(s0)
    1f4a:	438c                	lw	a1,0(a5)
    1f4c:	c581                	beqz	a1,1f54 <_reclaim_reent+0x34>
    1f4e:	8522                	mv	a0,s0
    1f50:	149000ef          	jal	ra,2898 <_free_r>
    1f54:	484c                	lw	a1,20(s0)
    1f56:	c581                	beqz	a1,1f5e <_reclaim_reent+0x3e>
    1f58:	8522                	mv	a0,s0
    1f5a:	13f000ef          	jal	ra,2898 <_free_r>
    1f5e:	504c                	lw	a1,36(s0)
    1f60:	c581                	beqz	a1,1f68 <_reclaim_reent+0x48>
    1f62:	8522                	mv	a0,s0
    1f64:	135000ef          	jal	ra,2898 <_free_r>
    1f68:	5c0c                	lw	a1,56(s0)
    1f6a:	c581                	beqz	a1,1f72 <_reclaim_reent+0x52>
    1f6c:	8522                	mv	a0,s0
    1f6e:	12b000ef          	jal	ra,2898 <_free_r>
    1f72:	5c4c                	lw	a1,60(s0)
    1f74:	c581                	beqz	a1,1f7c <_reclaim_reent+0x5c>
    1f76:	8522                	mv	a0,s0
    1f78:	121000ef          	jal	ra,2898 <_free_r>
    1f7c:	402c                	lw	a1,64(s0)
    1f7e:	c581                	beqz	a1,1f86 <_reclaim_reent+0x66>
    1f80:	8522                	mv	a0,s0
    1f82:	117000ef          	jal	ra,2898 <_free_r>
    1f86:	4c6c                	lw	a1,92(s0)
    1f88:	c581                	beqz	a1,1f90 <_reclaim_reent+0x70>
    1f8a:	8522                	mv	a0,s0
    1f8c:	10d000ef          	jal	ra,2898 <_free_r>
    1f90:	4c2c                	lw	a1,88(s0)
    1f92:	c581                	beqz	a1,1f9a <_reclaim_reent+0x7a>
    1f94:	8522                	mv	a0,s0
    1f96:	103000ef          	jal	ra,2898 <_free_r>
    1f9a:	584c                	lw	a1,52(s0)
    1f9c:	c581                	beqz	a1,1fa4 <_reclaim_reent+0x84>
    1f9e:	8522                	mv	a0,s0
    1fa0:	0f9000ef          	jal	ra,2898 <_free_r>
    1fa4:	4c1c                	lw	a5,24(s0)
    1fa6:	c3a9                	beqz	a5,1fe8 <_reclaim_reent+0xc8>
    1fa8:	541c                	lw	a5,40(s0)
    1faa:	8522                	mv	a0,s0
    1fac:	9782                	jalr	a5
    1fae:	442c                	lw	a1,72(s0)
    1fb0:	cd85                	beqz	a1,1fe8 <_reclaim_reent+0xc8>
    1fb2:	8522                	mv	a0,s0
    1fb4:	4462                	lw	s0,24(sp)
    1fb6:	40f2                	lw	ra,28(sp)
    1fb8:	44d2                	lw	s1,20(sp)
    1fba:	4942                	lw	s2,16(sp)
    1fbc:	49b2                	lw	s3,12(sp)
    1fbe:	6105                	addi	sp,sp,32
    1fc0:	bf3d                	j	1efe <cleanup_glue>
    1fc2:	95a6                	add	a1,a1,s1
    1fc4:	418c                	lw	a1,0(a1)
    1fc6:	e991                	bnez	a1,1fda <_reclaim_reent+0xba>
    1fc8:	0491                	addi	s1,s1,4
    1fca:	505c                	lw	a5,36(s0)
    1fcc:	47cc                	lw	a1,12(a5)
    1fce:	ff249ae3          	bne	s1,s2,1fc2 <_reclaim_reent+0xa2>
    1fd2:	8522                	mv	a0,s0
    1fd4:	0c5000ef          	jal	ra,2898 <_free_r>
    1fd8:	bf85                	j	1f48 <_reclaim_reent+0x28>
    1fda:	0005a983          	lw	s3,0(a1)
    1fde:	8522                	mv	a0,s0
    1fe0:	0b9000ef          	jal	ra,2898 <_free_r>
    1fe4:	85ce                	mv	a1,s3
    1fe6:	b7c5                	j	1fc6 <_reclaim_reent+0xa6>
    1fe8:	40f2                	lw	ra,28(sp)
    1fea:	4462                	lw	s0,24(sp)
    1fec:	44d2                	lw	s1,20(sp)
    1fee:	4942                	lw	s2,16(sp)
    1ff0:	49b2                	lw	s3,12(sp)
    1ff2:	6105                	addi	sp,sp,32
    1ff4:	8082                	ret
    1ff6:	8082                	ret

00001ff8 <__swbuf_r>:
    1ff8:	1101                	addi	sp,sp,-32
    1ffa:	cc22                	sw	s0,24(sp)
    1ffc:	ca26                	sw	s1,20(sp)
    1ffe:	c84a                	sw	s2,16(sp)
    2000:	ce06                	sw	ra,28(sp)
    2002:	c64e                	sw	s3,12(sp)
    2004:	84aa                	mv	s1,a0
    2006:	892e                	mv	s2,a1
    2008:	8432                	mv	s0,a2
    200a:	c501                	beqz	a0,2012 <__swbuf_r+0x1a>
    200c:	4d1c                	lw	a5,24(a0)
    200e:	e391                	bnez	a5,2012 <__swbuf_r+0x1a>
    2010:	2b61                	jal	25a8 <__sinit>
    2012:	000807b7          	lui	a5,0x80
    2016:	3e078793          	addi	a5,a5,992 # 803e0 <__sf_fake_stdin>
    201a:	06f41963          	bne	s0,a5,208c <__swbuf_r+0x94>
    201e:	40c0                	lw	s0,4(s1)
    2020:	4c1c                	lw	a5,24(s0)
    2022:	c41c                	sw	a5,8(s0)
    2024:	00c45783          	lhu	a5,12(s0)
    2028:	8ba1                	andi	a5,a5,8
    202a:	c3c9                	beqz	a5,20ac <__swbuf_r+0xb4>
    202c:	481c                	lw	a5,16(s0)
    202e:	cfbd                	beqz	a5,20ac <__swbuf_r+0xb4>
    2030:	481c                	lw	a5,16(s0)
    2032:	4008                	lw	a0,0(s0)
    2034:	0ff97993          	zext.b	s3,s2
    2038:	0ff97913          	zext.b	s2,s2
    203c:	8d1d                	sub	a0,a0,a5
    203e:	485c                	lw	a5,20(s0)
    2040:	00f54663          	blt	a0,a5,204c <__swbuf_r+0x54>
    2044:	85a2                	mv	a1,s0
    2046:	8526                	mv	a0,s1
    2048:	2931                	jal	2464 <_fflush_r>
    204a:	e52d                	bnez	a0,20b4 <__swbuf_r+0xbc>
    204c:	441c                	lw	a5,8(s0)
    204e:	0505                	addi	a0,a0,1
    2050:	17fd                	addi	a5,a5,-1
    2052:	c41c                	sw	a5,8(s0)
    2054:	401c                	lw	a5,0(s0)
    2056:	00178713          	addi	a4,a5,1
    205a:	c018                	sw	a4,0(s0)
    205c:	01378023          	sb	s3,0(a5)
    2060:	485c                	lw	a5,20(s0)
    2062:	00a78963          	beq	a5,a0,2074 <__swbuf_r+0x7c>
    2066:	00c45783          	lhu	a5,12(s0)
    206a:	8b85                	andi	a5,a5,1
    206c:	cb81                	beqz	a5,207c <__swbuf_r+0x84>
    206e:	47a9                	li	a5,10
    2070:	00f91663          	bne	s2,a5,207c <__swbuf_r+0x84>
    2074:	85a2                	mv	a1,s0
    2076:	8526                	mv	a0,s1
    2078:	26f5                	jal	2464 <_fflush_r>
    207a:	ed0d                	bnez	a0,20b4 <__swbuf_r+0xbc>
    207c:	40f2                	lw	ra,28(sp)
    207e:	4462                	lw	s0,24(sp)
    2080:	44d2                	lw	s1,20(sp)
    2082:	49b2                	lw	s3,12(sp)
    2084:	854a                	mv	a0,s2
    2086:	4942                	lw	s2,16(sp)
    2088:	6105                	addi	sp,sp,32
    208a:	8082                	ret
    208c:	000807b7          	lui	a5,0x80
    2090:	40078793          	addi	a5,a5,1024 # 80400 <__sf_fake_stdout>
    2094:	00f41463          	bne	s0,a5,209c <__swbuf_r+0xa4>
    2098:	4480                	lw	s0,8(s1)
    209a:	b759                	j	2020 <__swbuf_r+0x28>
    209c:	000807b7          	lui	a5,0x80
    20a0:	3c078793          	addi	a5,a5,960 # 803c0 <__sf_fake_stderr>
    20a4:	f6f41ee3          	bne	s0,a5,2020 <__swbuf_r+0x28>
    20a8:	44c0                	lw	s0,12(s1)
    20aa:	bf9d                	j	2020 <__swbuf_r+0x28>
    20ac:	85a2                	mv	a1,s0
    20ae:	8526                	mv	a0,s1
    20b0:	2819                	jal	20c6 <__swsetup_r>
    20b2:	dd3d                	beqz	a0,2030 <__swbuf_r+0x38>
    20b4:	597d                	li	s2,-1
    20b6:	b7d9                	j	207c <__swbuf_r+0x84>

000020b8 <__swbuf>:
    20b8:	000807b7          	lui	a5,0x80
    20bc:	862e                	mv	a2,a1
    20be:	85aa                	mv	a1,a0
    20c0:	61c7a503          	lw	a0,1564(a5) # 8061c <_impure_ptr>
    20c4:	bf15                	j	1ff8 <__swbuf_r>

000020c6 <__swsetup_r>:
    20c6:	1141                	addi	sp,sp,-16
    20c8:	000807b7          	lui	a5,0x80
    20cc:	c226                	sw	s1,4(sp)
    20ce:	61c7a483          	lw	s1,1564(a5) # 8061c <_impure_ptr>
    20d2:	c422                	sw	s0,8(sp)
    20d4:	c04a                	sw	s2,0(sp)
    20d6:	c606                	sw	ra,12(sp)
    20d8:	892a                	mv	s2,a0
    20da:	842e                	mv	s0,a1
    20dc:	c489                	beqz	s1,20e6 <__swsetup_r+0x20>
    20de:	4c9c                	lw	a5,24(s1)
    20e0:	e399                	bnez	a5,20e6 <__swsetup_r+0x20>
    20e2:	8526                	mv	a0,s1
    20e4:	21d1                	jal	25a8 <__sinit>
    20e6:	000807b7          	lui	a5,0x80
    20ea:	3e078793          	addi	a5,a5,992 # 803e0 <__sf_fake_stdin>
    20ee:	02f41763          	bne	s0,a5,211c <__swsetup_r+0x56>
    20f2:	40c0                	lw	s0,4(s1)
    20f4:	00c41783          	lh	a5,12(s0)
    20f8:	01079713          	slli	a4,a5,0x10
    20fc:	0087f693          	andi	a3,a5,8
    2100:	8341                	srli	a4,a4,0x10
    2102:	eab5                	bnez	a3,2176 <__swsetup_r+0xb0>
    2104:	01077693          	andi	a3,a4,16
    2108:	ea95                	bnez	a3,213c <__swsetup_r+0x76>
    210a:	4725                	li	a4,9
    210c:	00e92023          	sw	a4,0(s2)
    2110:	0407e793          	ori	a5,a5,64
    2114:	00f41623          	sh	a5,12(s0)
    2118:	557d                	li	a0,-1
    211a:	a879                	j	21b8 <__swsetup_r+0xf2>
    211c:	000807b7          	lui	a5,0x80
    2120:	40078793          	addi	a5,a5,1024 # 80400 <__sf_fake_stdout>
    2124:	00f41463          	bne	s0,a5,212c <__swsetup_r+0x66>
    2128:	4480                	lw	s0,8(s1)
    212a:	b7e9                	j	20f4 <__swsetup_r+0x2e>
    212c:	000807b7          	lui	a5,0x80
    2130:	3c078793          	addi	a5,a5,960 # 803c0 <__sf_fake_stderr>
    2134:	fcf410e3          	bne	s0,a5,20f4 <__swsetup_r+0x2e>
    2138:	44c0                	lw	s0,12(s1)
    213a:	bf6d                	j	20f4 <__swsetup_r+0x2e>
    213c:	8b11                	andi	a4,a4,4
    213e:	c715                	beqz	a4,216a <__swsetup_r+0xa4>
    2140:	584c                	lw	a1,52(s0)
    2142:	c991                	beqz	a1,2156 <__swsetup_r+0x90>
    2144:	04440793          	addi	a5,s0,68
    2148:	00f58563          	beq	a1,a5,2152 <__swsetup_r+0x8c>
    214c:	854a                	mv	a0,s2
    214e:	74a000ef          	jal	ra,2898 <_free_r>
    2152:	02042a23          	sw	zero,52(s0)
    2156:	00c45783          	lhu	a5,12(s0)
    215a:	00042223          	sw	zero,4(s0)
    215e:	fdb7f793          	andi	a5,a5,-37
    2162:	00f41623          	sh	a5,12(s0)
    2166:	481c                	lw	a5,16(s0)
    2168:	c01c                	sw	a5,0(s0)
    216a:	00c45783          	lhu	a5,12(s0)
    216e:	0087e793          	ori	a5,a5,8
    2172:	00f41623          	sh	a5,12(s0)
    2176:	481c                	lw	a5,16(s0)
    2178:	ef81                	bnez	a5,2190 <__swsetup_r+0xca>
    217a:	00c45783          	lhu	a5,12(s0)
    217e:	20000713          	li	a4,512
    2182:	2807f793          	andi	a5,a5,640
    2186:	00e78563          	beq	a5,a4,2190 <__swsetup_r+0xca>
    218a:	85a2                	mv	a1,s0
    218c:	854a                	mv	a0,s2
    218e:	2d85                	jal	27fe <__smakebuf_r>
    2190:	00c41783          	lh	a5,12(s0)
    2194:	01079713          	slli	a4,a5,0x10
    2198:	0017f693          	andi	a3,a5,1
    219c:	8341                	srli	a4,a4,0x10
    219e:	c29d                	beqz	a3,21c4 <__swsetup_r+0xfe>
    21a0:	4854                	lw	a3,20(s0)
    21a2:	00042423          	sw	zero,8(s0)
    21a6:	40d006b3          	neg	a3,a3
    21aa:	cc14                	sw	a3,24(s0)
    21ac:	4814                	lw	a3,16(s0)
    21ae:	4501                	li	a0,0
    21b0:	e681                	bnez	a3,21b8 <__swsetup_r+0xf2>
    21b2:	08077713          	andi	a4,a4,128
    21b6:	ff29                	bnez	a4,2110 <__swsetup_r+0x4a>
    21b8:	40b2                	lw	ra,12(sp)
    21ba:	4422                	lw	s0,8(sp)
    21bc:	4492                	lw	s1,4(sp)
    21be:	4902                	lw	s2,0(sp)
    21c0:	0141                	addi	sp,sp,16
    21c2:	8082                	ret
    21c4:	00277693          	andi	a3,a4,2
    21c8:	4601                	li	a2,0
    21ca:	e291                	bnez	a3,21ce <__swsetup_r+0x108>
    21cc:	4850                	lw	a2,20(s0)
    21ce:	c410                	sw	a2,8(s0)
    21d0:	bff1                	j	21ac <__swsetup_r+0xe6>

000021d2 <__register_exitproc>:
    21d2:	00080837          	lui	a6,0x80
    21d6:	62c82783          	lw	a5,1580(a6) # 8062c <_global_atexit>
    21da:	88aa                	mv	a7,a0
    21dc:	e39d                	bnez	a5,2202 <__register_exitproc+0x30>
    21de:	00080737          	lui	a4,0x80
    21e2:	74470513          	addi	a0,a4,1860 # 80744 <_global_atexit0>
    21e6:	62a82623          	sw	a0,1580(a6)
    21ea:	00000313          	li	t1,0
    21ee:	74470793          	addi	a5,a4,1860
    21f2:	00030863          	beqz	t1,2202 <__register_exitproc+0x30>
    21f6:	00002783          	lw	a5,0(zero) # 0 <__vector_start>
    21fa:	08f52423          	sw	a5,136(a0)
    21fe:	74470793          	addi	a5,a4,1860
    2202:	43d8                	lw	a4,4(a5)
    2204:	487d                	li	a6,31
    2206:	557d                	li	a0,-1
    2208:	04e84663          	blt	a6,a4,2254 <handler.c.0b49bfed+0x2d>
    220c:	02088d63          	beqz	a7,2246 <handler.c.0b49bfed+0x1f>
    2210:	0887a803          	lw	a6,136(a5)
    2214:	04080063          	beqz	a6,2254 <handler.c.0b49bfed+0x2d>
    2218:	00271513          	slli	a0,a4,0x2
    221c:	9542                	add	a0,a0,a6
    221e:	c110                	sw	a2,0(a0)
    2220:	10082303          	lw	t1,256(a6)
    2224:	4605                	li	a2,1
    2226:	00e61633          	sll	a2,a2,a4
    222a:	00c36333          	or	t1,t1,a2
    222e:	10682023          	sw	t1,256(a6)
    2232:	08d52023          	sw	a3,128(a0)
    2236:	4689                	li	a3,2
    2238:	00d89763          	bne	a7,a3,2246 <handler.c.0b49bfed+0x1f>
    223c:	10482683          	lw	a3,260(a6)
    2240:	8ed1                	or	a3,a3,a2
    2242:	10d82223          	sw	a3,260(a6)
    2246:	00170693          	addi	a3,a4,1
    224a:	070a                	slli	a4,a4,0x2
    224c:	c3d4                	sw	a3,4(a5)
    224e:	97ba                	add	a5,a5,a4
    2250:	c78c                	sw	a1,8(a5)
    2252:	4501                	li	a0,0
    2254:	8082                	ret

00002256 <__call_exitprocs>:
    2256:	7179                	addi	sp,sp,-48
    2258:	c85a                	sw	s6,16(sp)
    225a:	00080b37          	lui	s6,0x80
    225e:	ca56                	sw	s5,20(sp)
    2260:	c65e                	sw	s7,12(sp)
    2262:	c462                	sw	s8,8(sp)
    2264:	d606                	sw	ra,44(sp)
    2266:	d422                	sw	s0,40(sp)
    2268:	d226                	sw	s1,36(sp)
    226a:	d04a                	sw	s2,32(sp)
    226c:	ce4e                	sw	s3,28(sp)
    226e:	cc52                	sw	s4,24(sp)
    2270:	c266                	sw	s9,4(sp)
    2272:	8baa                	mv	s7,a0
    2274:	8aae                	mv	s5,a1
    2276:	62cb0b13          	addi	s6,s6,1580 # 8062c <_global_atexit>
    227a:	4c05                	li	s8,1
    227c:	000b2483          	lw	s1,0(s6)
    2280:	cc81                	beqz	s1,2298 <__call_exitprocs+0x42>
    2282:	40c0                	lw	s0,4(s1)
    2284:	0884a983          	lw	s3,136(s1)
    2288:	fff40913          	addi	s2,s0,-1
    228c:	040a                	slli	s0,s0,0x2
    228e:	00898a33          	add	s4,s3,s0
    2292:	9426                	add	s0,s0,s1
    2294:	00095f63          	bgez	s2,22b2 <__call_exitprocs+0x5c>
    2298:	50b2                	lw	ra,44(sp)
    229a:	5422                	lw	s0,40(sp)
    229c:	5492                	lw	s1,36(sp)
    229e:	5902                	lw	s2,32(sp)
    22a0:	49f2                	lw	s3,28(sp)
    22a2:	4a62                	lw	s4,24(sp)
    22a4:	4ad2                	lw	s5,20(sp)
    22a6:	4b42                	lw	s6,16(sp)
    22a8:	4bb2                	lw	s7,12(sp)
    22aa:	4c22                	lw	s8,8(sp)
    22ac:	4c92                	lw	s9,4(sp)
    22ae:	6145                	addi	sp,sp,48
    22b0:	8082                	ret
    22b2:	000a8c63          	beqz	s5,22ca <__call_exitprocs+0x74>
    22b6:	00099663          	bnez	s3,22c2 <__call_exitprocs+0x6c>
    22ba:	197d                	addi	s2,s2,-1
    22bc:	1a71                	addi	s4,s4,-4
    22be:	1471                	addi	s0,s0,-4
    22c0:	bfd1                	j	2294 <__call_exitprocs+0x3e>
    22c2:	07ca2783          	lw	a5,124(s4) # 8000007c <_sp+0x7ff1f8ac>
    22c6:	ff579ae3          	bne	a5,s5,22ba <__call_exitprocs+0x64>
    22ca:	40d8                	lw	a4,4(s1)
    22cc:	405c                	lw	a5,4(s0)
    22ce:	177d                	addi	a4,a4,-1
    22d0:	03271863          	bne	a4,s2,2300 <__call_exitprocs+0xaa>
    22d4:	0124a223          	sw	s2,4(s1)
    22d8:	d3ed                	beqz	a5,22ba <__call_exitprocs+0x64>
    22da:	0044ac83          	lw	s9,4(s1)
    22de:	00098863          	beqz	s3,22ee <__call_exitprocs+0x98>
    22e2:	1009a683          	lw	a3,256(s3)
    22e6:	012c1733          	sll	a4,s8,s2
    22ea:	8ef9                	and	a3,a3,a4
    22ec:	ee89                	bnez	a3,2306 <__call_exitprocs+0xb0>
    22ee:	9782                	jalr	a5
    22f0:	40d8                	lw	a4,4(s1)
    22f2:	000b2783          	lw	a5,0(s6)
    22f6:	f99713e3          	bne	a4,s9,227c <__call_exitprocs+0x26>
    22fa:	fcf480e3          	beq	s1,a5,22ba <__call_exitprocs+0x64>
    22fe:	bfbd                	j	227c <__call_exitprocs+0x26>
    2300:	00042223          	sw	zero,4(s0)
    2304:	bfd1                	j	22d8 <__call_exitprocs+0x82>
    2306:	1049a683          	lw	a3,260(s3)
    230a:	ffca2583          	lw	a1,-4(s4)
    230e:	8f75                	and	a4,a4,a3
    2310:	e701                	bnez	a4,2318 <__call_exitprocs+0xc2>
    2312:	855e                	mv	a0,s7
    2314:	9782                	jalr	a5
    2316:	bfe9                	j	22f0 <__call_exitprocs+0x9a>
    2318:	852e                	mv	a0,a1
    231a:	9782                	jalr	a5
    231c:	bfd1                	j	22f0 <__call_exitprocs+0x9a>

0000231e <__sflush_r>:
    231e:	00c5d783          	lhu	a5,12(a1)
    2322:	1101                	addi	sp,sp,-32
    2324:	cc22                	sw	s0,24(sp)
    2326:	ca26                	sw	s1,20(sp)
    2328:	ce06                	sw	ra,28(sp)
    232a:	c84a                	sw	s2,16(sp)
    232c:	c64e                	sw	s3,12(sp)
    232e:	0087f713          	andi	a4,a5,8
    2332:	84aa                	mv	s1,a0
    2334:	842e                	mv	s0,a1
    2336:	e375                	bnez	a4,241a <__sflush_r+0xfc>
    2338:	41d8                	lw	a4,4(a1)
    233a:	00e04763          	bgtz	a4,2348 <__sflush_r+0x2a>
    233e:	41b8                	lw	a4,64(a1)
    2340:	00e04463          	bgtz	a4,2348 <__sflush_r+0x2a>
    2344:	4501                	li	a0,0
    2346:	a875                	j	2402 <__sflush_r+0xe4>
    2348:	5458                	lw	a4,44(s0)
    234a:	df6d                	beqz	a4,2344 <__sflush_r+0x26>
    234c:	6685                	lui	a3,0x1
    234e:	0004a903          	lw	s2,0(s1)
    2352:	8ff5                	and	a5,a5,a3
    2354:	0004a023          	sw	zero,0(s1)
    2358:	500c                	lw	a1,32(s0)
    235a:	cfa5                	beqz	a5,23d2 <__sflush_r+0xb4>
    235c:	4868                	lw	a0,84(s0)
    235e:	00c45783          	lhu	a5,12(s0)
    2362:	8b91                	andi	a5,a5,4
    2364:	c799                	beqz	a5,2372 <__sflush_r+0x54>
    2366:	405c                	lw	a5,4(s0)
    2368:	8d1d                	sub	a0,a0,a5
    236a:	585c                	lw	a5,52(s0)
    236c:	c399                	beqz	a5,2372 <__sflush_r+0x54>
    236e:	403c                	lw	a5,64(s0)
    2370:	8d1d                	sub	a0,a0,a5
    2372:	545c                	lw	a5,44(s0)
    2374:	500c                	lw	a1,32(s0)
    2376:	862a                	mv	a2,a0
    2378:	4681                	li	a3,0
    237a:	8526                	mv	a0,s1
    237c:	9782                	jalr	a5
    237e:	57fd                	li	a5,-1
    2380:	00c45703          	lhu	a4,12(s0)
    2384:	00f51d63          	bne	a0,a5,239e <__sflush_r+0x80>
    2388:	4094                	lw	a3,0(s1)
    238a:	47f5                	li	a5,29
    238c:	08d7e263          	bltu	a5,a3,2410 <__sflush_r+0xf2>
    2390:	dfc007b7          	lui	a5,0xdfc00
    2394:	17f9                	addi	a5,a5,-2
    2396:	40d7d7b3          	sra	a5,a5,a3
    239a:	8b85                	andi	a5,a5,1
    239c:	ebb5                	bnez	a5,2410 <__sflush_r+0xf2>
    239e:	481c                	lw	a5,16(s0)
    23a0:	00042223          	sw	zero,4(s0)
    23a4:	c01c                	sw	a5,0(s0)
    23a6:	6785                	lui	a5,0x1
    23a8:	8f7d                	and	a4,a4,a5
    23aa:	c719                	beqz	a4,23b8 <__sflush_r+0x9a>
    23ac:	57fd                	li	a5,-1
    23ae:	00f51463          	bne	a0,a5,23b6 <__sflush_r+0x98>
    23b2:	409c                	lw	a5,0(s1)
    23b4:	e391                	bnez	a5,23b8 <__sflush_r+0x9a>
    23b6:	c868                	sw	a0,84(s0)
    23b8:	584c                	lw	a1,52(s0)
    23ba:	0124a023          	sw	s2,0(s1)
    23be:	d1d9                	beqz	a1,2344 <__sflush_r+0x26>
    23c0:	04440793          	addi	a5,s0,68
    23c4:	00f58463          	beq	a1,a5,23cc <__sflush_r+0xae>
    23c8:	8526                	mv	a0,s1
    23ca:	21f9                	jal	2898 <_free_r>
    23cc:	02042a23          	sw	zero,52(s0)
    23d0:	bf95                	j	2344 <__sflush_r+0x26>
    23d2:	4685                	li	a3,1
    23d4:	4601                	li	a2,0
    23d6:	8526                	mv	a0,s1
    23d8:	9702                	jalr	a4
    23da:	57fd                	li	a5,-1
    23dc:	f8f511e3          	bne	a0,a5,235e <__sflush_r+0x40>
    23e0:	409c                	lw	a5,0(s1)
    23e2:	dfb5                	beqz	a5,235e <__sflush_r+0x40>
    23e4:	4775                	li	a4,29
    23e6:	00e78563          	beq	a5,a4,23f0 <__sflush_r+0xd2>
    23ea:	4759                	li	a4,22
    23ec:	00e79563          	bne	a5,a4,23f6 <__sflush_r+0xd8>
    23f0:	0124a023          	sw	s2,0(s1)
    23f4:	bf81                	j	2344 <__sflush_r+0x26>
    23f6:	00c45783          	lhu	a5,12(s0)
    23fa:	0407e793          	ori	a5,a5,64
    23fe:	00f41623          	sh	a5,12(s0)
    2402:	40f2                	lw	ra,28(sp)
    2404:	4462                	lw	s0,24(sp)
    2406:	44d2                	lw	s1,20(sp)
    2408:	4942                	lw	s2,16(sp)
    240a:	49b2                	lw	s3,12(sp)
    240c:	6105                	addi	sp,sp,32
    240e:	8082                	ret
    2410:	04076713          	ori	a4,a4,64
    2414:	00e41623          	sh	a4,12(s0)
    2418:	b7ed                	j	2402 <__sflush_r+0xe4>
    241a:	0105a983          	lw	s3,16(a1)
    241e:	f20983e3          	beqz	s3,2344 <__sflush_r+0x26>
    2422:	0005a903          	lw	s2,0(a1)
    2426:	8b8d                	andi	a5,a5,3
    2428:	0135a023          	sw	s3,0(a1)
    242c:	41390933          	sub	s2,s2,s3
    2430:	4701                	li	a4,0
    2432:	e391                	bnez	a5,2436 <__sflush_r+0x118>
    2434:	49d8                	lw	a4,20(a1)
    2436:	c418                	sw	a4,8(s0)
    2438:	f12056e3          	blez	s2,2344 <__sflush_r+0x26>
    243c:	541c                	lw	a5,40(s0)
    243e:	500c                	lw	a1,32(s0)
    2440:	86ca                	mv	a3,s2
    2442:	864e                	mv	a2,s3
    2444:	8526                	mv	a0,s1
    2446:	9782                	jalr	a5
    2448:	00a04a63          	bgtz	a0,245c <__sflush_r+0x13e>
    244c:	00c45783          	lhu	a5,12(s0)
    2450:	557d                	li	a0,-1
    2452:	0407e793          	ori	a5,a5,64
    2456:	00f41623          	sh	a5,12(s0)
    245a:	b765                	j	2402 <__sflush_r+0xe4>
    245c:	99aa                	add	s3,s3,a0
    245e:	40a90933          	sub	s2,s2,a0
    2462:	bfd9                	j	2438 <__sflush_r+0x11a>

00002464 <_fflush_r>:
    2464:	499c                	lw	a5,16(a1)
    2466:	cfb9                	beqz	a5,24c4 <mmio.c.1d292ae4+0x45>
    2468:	1101                	addi	sp,sp,-32
    246a:	cc22                	sw	s0,24(sp)
    246c:	ce06                	sw	ra,28(sp)
    246e:	842a                	mv	s0,a0
    2470:	c511                	beqz	a0,247c <_fflush_r+0x18>
    2472:	4d1c                	lw	a5,24(a0)
    2474:	e781                	bnez	a5,247c <_fflush_r+0x18>
    2476:	c62e                	sw	a1,12(sp)
    2478:	2a05                	jal	25a8 <__sinit>
    247a:	45b2                	lw	a1,12(sp)
    247c:	000807b7          	lui	a5,0x80
    2480:	3e078793          	addi	a5,a5,992 # 803e0 <__sf_fake_stdin>
    2484:	00f59b63          	bne	a1,a5,249a <mmio.c.1d292ae4+0x1b>
    2488:	404c                	lw	a1,4(s0)
    248a:	00c59783          	lh	a5,12(a1)
    248e:	c795                	beqz	a5,24ba <mmio.c.1d292ae4+0x3b>
    2490:	8522                	mv	a0,s0
    2492:	4462                	lw	s0,24(sp)
    2494:	40f2                	lw	ra,28(sp)
    2496:	6105                	addi	sp,sp,32
    2498:	b559                	j	231e <__sflush_r>
    249a:	000807b7          	lui	a5,0x80
    249e:	40078793          	addi	a5,a5,1024 # 80400 <__sf_fake_stdout>
    24a2:	00f59463          	bne	a1,a5,24aa <mmio.c.1d292ae4+0x2b>
    24a6:	440c                	lw	a1,8(s0)
    24a8:	b7cd                	j	248a <mmio.c.1d292ae4+0xb>
    24aa:	000807b7          	lui	a5,0x80
    24ae:	3c078793          	addi	a5,a5,960 # 803c0 <__sf_fake_stderr>
    24b2:	fcf59ce3          	bne	a1,a5,248a <mmio.c.1d292ae4+0xb>
    24b6:	444c                	lw	a1,12(s0)
    24b8:	bfc9                	j	248a <mmio.c.1d292ae4+0xb>
    24ba:	40f2                	lw	ra,28(sp)
    24bc:	4462                	lw	s0,24(sp)
    24be:	4501                	li	a0,0
    24c0:	6105                	addi	sp,sp,32
    24c2:	8082                	ret
    24c4:	4501                	li	a0,0
    24c6:	8082                	ret

000024c8 <fflush>:
    24c8:	85aa                	mv	a1,a0
    24ca:	e909                	bnez	a0,24dc <fflush+0x14>
    24cc:	000807b7          	lui	a5,0x80
    24d0:	6147a503          	lw	a0,1556(a5) # 80614 <_global_impure_ptr>
    24d4:	6589                	lui	a1,0x2
    24d6:	46458593          	addi	a1,a1,1124 # 2464 <_fflush_r>
    24da:	acb9                	j	2738 <_fwalk_reent>
    24dc:	000807b7          	lui	a5,0x80
    24e0:	61c7a503          	lw	a0,1564(a5) # 8061c <_impure_ptr>
    24e4:	b741                	j	2464 <_fflush_r>

000024e6 <__fp_lock>:
    24e6:	4501                	li	a0,0
    24e8:	8082                	ret

000024ea <std>:
    24ea:	1141                	addi	sp,sp,-16
    24ec:	c422                	sw	s0,8(sp)
    24ee:	c606                	sw	ra,12(sp)
    24f0:	842a                	mv	s0,a0
    24f2:	00b51623          	sh	a1,12(a0)
    24f6:	00c51723          	sh	a2,14(a0)
    24fa:	00052023          	sw	zero,0(a0)
    24fe:	00052223          	sw	zero,4(a0)
    2502:	00052423          	sw	zero,8(a0)
    2506:	06052223          	sw	zero,100(a0)
    250a:	00052823          	sw	zero,16(a0)
    250e:	00052a23          	sw	zero,20(a0)
    2512:	00052c23          	sw	zero,24(a0)
    2516:	4621                	li	a2,8
    2518:	4581                	li	a1,0
    251a:	05c50513          	addi	a0,a0,92
    251e:	8e7ff0ef          	jal	ra,1e04 <memset>
    2522:	678d                	lui	a5,0x3
    2524:	a4678793          	addi	a5,a5,-1466 # 2a46 <__sread>
    2528:	d05c                	sw	a5,36(s0)
    252a:	678d                	lui	a5,0x3
    252c:	a7a78793          	addi	a5,a5,-1414 # 2a7a <__swrite>
    2530:	d41c                	sw	a5,40(s0)
    2532:	678d                	lui	a5,0x3
    2534:	ac878793          	addi	a5,a5,-1336 # 2ac8 <__sseek>
    2538:	d45c                	sw	a5,44(s0)
    253a:	678d                	lui	a5,0x3
    253c:	afe78793          	addi	a5,a5,-1282 # 2afe <__sclose>
    2540:	40b2                	lw	ra,12(sp)
    2542:	d000                	sw	s0,32(s0)
    2544:	d81c                	sw	a5,48(s0)
    2546:	4422                	lw	s0,8(sp)
    2548:	0141                	addi	sp,sp,16
    254a:	8082                	ret

0000254c <_cleanup_r>:
    254c:	6589                	lui	a1,0x2
    254e:	46458593          	addi	a1,a1,1124 # 2464 <_fflush_r>
    2552:	a2dd                	j	2738 <_fwalk_reent>

00002554 <__fp_unlock>:
    2554:	4501                	li	a0,0
    2556:	8082                	ret

00002558 <__sfmoreglue>:
    2558:	1141                	addi	sp,sp,-16
    255a:	c226                	sw	s1,4(sp)
    255c:	06800793          	li	a5,104
    2560:	fff58493          	addi	s1,a1,-1
    2564:	02f484b3          	mul	s1,s1,a5
    2568:	c04a                	sw	s2,0(sp)
    256a:	892e                	mv	s2,a1
    256c:	c422                	sw	s0,8(sp)
    256e:	c606                	sw	ra,12(sp)
    2570:	07448593          	addi	a1,s1,116
    2574:	26d9                	jal	293a <_malloc_r>
    2576:	842a                	mv	s0,a0
    2578:	cd01                	beqz	a0,2590 <__sfmoreglue+0x38>
    257a:	00052023          	sw	zero,0(a0)
    257e:	01252223          	sw	s2,4(a0)
    2582:	0531                	addi	a0,a0,12
    2584:	c408                	sw	a0,8(s0)
    2586:	06848613          	addi	a2,s1,104
    258a:	4581                	li	a1,0
    258c:	879ff0ef          	jal	ra,1e04 <memset>
    2590:	40b2                	lw	ra,12(sp)
    2592:	8522                	mv	a0,s0
    2594:	4422                	lw	s0,8(sp)
    2596:	4492                	lw	s1,4(sp)
    2598:	4902                	lw	s2,0(sp)
    259a:	0141                	addi	sp,sp,16
    259c:	8082                	ret

0000259e <_cleanup>:
    259e:	000807b7          	lui	a5,0x80
    25a2:	6147a503          	lw	a0,1556(a5) # 80614 <_global_impure_ptr>
    25a6:	b75d                	j	254c <_cleanup_r>

000025a8 <__sinit>:
    25a8:	4d1c                	lw	a5,24(a0)
    25aa:	e3b5                	bnez	a5,260e <__sinit+0x66>
    25ac:	1141                	addi	sp,sp,-16
    25ae:	6789                	lui	a5,0x2
    25b0:	c422                	sw	s0,8(sp)
    25b2:	c606                	sw	ra,12(sp)
    25b4:	54c78793          	addi	a5,a5,1356 # 254c <_cleanup_r>
    25b8:	d51c                	sw	a5,40(a0)
    25ba:	000807b7          	lui	a5,0x80
    25be:	6147a783          	lw	a5,1556(a5) # 80614 <_global_impure_ptr>
    25c2:	04052423          	sw	zero,72(a0)
    25c6:	04052623          	sw	zero,76(a0)
    25ca:	04052823          	sw	zero,80(a0)
    25ce:	842a                	mv	s0,a0
    25d0:	00f51463          	bne	a0,a5,25d8 <__sinit+0x30>
    25d4:	4785                	li	a5,1
    25d6:	cd1c                	sw	a5,24(a0)
    25d8:	8522                	mv	a0,s0
    25da:	281d                	jal	2610 <__sfp>
    25dc:	c048                	sw	a0,4(s0)
    25de:	8522                	mv	a0,s0
    25e0:	2805                	jal	2610 <__sfp>
    25e2:	c408                	sw	a0,8(s0)
    25e4:	8522                	mv	a0,s0
    25e6:	202d                	jal	2610 <__sfp>
    25e8:	c448                	sw	a0,12(s0)
    25ea:	4048                	lw	a0,4(s0)
    25ec:	4601                	li	a2,0
    25ee:	4591                	li	a1,4
    25f0:	3ded                	jal	24ea <std>
    25f2:	4408                	lw	a0,8(s0)
    25f4:	4605                	li	a2,1
    25f6:	45a5                	li	a1,9
    25f8:	3dcd                	jal	24ea <std>
    25fa:	4448                	lw	a0,12(s0)
    25fc:	4609                	li	a2,2
    25fe:	45c9                	li	a1,18
    2600:	35ed                	jal	24ea <std>
    2602:	4785                	li	a5,1
    2604:	40b2                	lw	ra,12(sp)
    2606:	cc1c                	sw	a5,24(s0)
    2608:	4422                	lw	s0,8(sp)
    260a:	0141                	addi	sp,sp,16
    260c:	8082                	ret
    260e:	8082                	ret

00002610 <__sfp>:
    2610:	1141                	addi	sp,sp,-16
    2612:	000807b7          	lui	a5,0x80
    2616:	c226                	sw	s1,4(sp)
    2618:	6147a483          	lw	s1,1556(a5) # 80614 <_global_impure_ptr>
    261c:	c04a                	sw	s2,0(sp)
    261e:	c606                	sw	ra,12(sp)
    2620:	4c9c                	lw	a5,24(s1)
    2622:	c422                	sw	s0,8(sp)
    2624:	892a                	mv	s2,a0
    2626:	e399                	bnez	a5,262c <__sfp+0x1c>
    2628:	8526                	mv	a0,s1
    262a:	3fbd                	jal	25a8 <__sinit>
    262c:	04848493          	addi	s1,s1,72
    2630:	4480                	lw	s0,8(s1)
    2632:	40dc                	lw	a5,4(s1)
    2634:	17fd                	addi	a5,a5,-1
    2636:	0007d663          	bgez	a5,2642 <__sfp+0x32>
    263a:	409c                	lw	a5,0(s1)
    263c:	cfb9                	beqz	a5,269a <__sfp+0x8a>
    263e:	4084                	lw	s1,0(s1)
    2640:	bfc5                	j	2630 <__sfp+0x20>
    2642:	00c41703          	lh	a4,12(s0)
    2646:	e739                	bnez	a4,2694 <__sfp+0x84>
    2648:	77c1                	lui	a5,0xffff0
    264a:	0785                	addi	a5,a5,1
    264c:	06042223          	sw	zero,100(s0)
    2650:	00042023          	sw	zero,0(s0)
    2654:	00042223          	sw	zero,4(s0)
    2658:	00042423          	sw	zero,8(s0)
    265c:	c45c                	sw	a5,12(s0)
    265e:	00042823          	sw	zero,16(s0)
    2662:	00042a23          	sw	zero,20(s0)
    2666:	00042c23          	sw	zero,24(s0)
    266a:	4621                	li	a2,8
    266c:	4581                	li	a1,0
    266e:	05c40513          	addi	a0,s0,92
    2672:	f92ff0ef          	jal	ra,1e04 <memset>
    2676:	02042a23          	sw	zero,52(s0)
    267a:	02042c23          	sw	zero,56(s0)
    267e:	04042423          	sw	zero,72(s0)
    2682:	04042623          	sw	zero,76(s0)
    2686:	40b2                	lw	ra,12(sp)
    2688:	8522                	mv	a0,s0
    268a:	4422                	lw	s0,8(sp)
    268c:	4492                	lw	s1,4(sp)
    268e:	4902                	lw	s2,0(sp)
    2690:	0141                	addi	sp,sp,16
    2692:	8082                	ret
    2694:	06840413          	addi	s0,s0,104
    2698:	bf71                	j	2634 <__sfp+0x24>
    269a:	4591                	li	a1,4
    269c:	854a                	mv	a0,s2
    269e:	3d6d                	jal	2558 <__sfmoreglue>
    26a0:	c088                	sw	a0,0(s1)
    26a2:	842a                	mv	s0,a0
    26a4:	fd49                	bnez	a0,263e <__sfp+0x2e>
    26a6:	47b1                	li	a5,12
    26a8:	00f92023          	sw	a5,0(s2)
    26ac:	bfe9                	j	2686 <__sfp+0x76>

000026ae <__sfp_lock_acquire>:
    26ae:	8082                	ret

000026b0 <__sfp_lock_release>:
    26b0:	8082                	ret

000026b2 <__sinit_lock_acquire>:
    26b2:	8082                	ret

000026b4 <__sinit_lock_release>:
    26b4:	8082                	ret

000026b6 <__fp_lock_all>:
    26b6:	000807b7          	lui	a5,0x80
    26ba:	61c7a503          	lw	a0,1564(a5) # 8061c <_impure_ptr>
    26be:	6589                	lui	a1,0x2
    26c0:	4e658593          	addi	a1,a1,1254 # 24e6 <__fp_lock>
    26c4:	a809                	j	26d6 <_fwalk>

000026c6 <__fp_unlock_all>:
    26c6:	000807b7          	lui	a5,0x80
    26ca:	61c7a503          	lw	a0,1564(a5) # 8061c <_impure_ptr>
    26ce:	6589                	lui	a1,0x2
    26d0:	55458593          	addi	a1,a1,1364 # 2554 <__fp_unlock>
    26d4:	a009                	j	26d6 <_fwalk>

000026d6 <_fwalk>:
    26d6:	1101                	addi	sp,sp,-32
    26d8:	cc22                	sw	s0,24(sp)
    26da:	c84a                	sw	s2,16(sp)
    26dc:	c64e                	sw	s3,12(sp)
    26de:	c256                	sw	s5,4(sp)
    26e0:	c05a                	sw	s6,0(sp)
    26e2:	ce06                	sw	ra,28(sp)
    26e4:	ca26                	sw	s1,20(sp)
    26e6:	c452                	sw	s4,8(sp)
    26e8:	89ae                	mv	s3,a1
    26ea:	04850413          	addi	s0,a0,72
    26ee:	4901                	li	s2,0
    26f0:	4a85                	li	s5,1
    26f2:	5b7d                	li	s6,-1
    26f4:	4404                	lw	s1,8(s0)
    26f6:	00442a03          	lw	s4,4(s0)
    26fa:	1a7d                	addi	s4,s4,-1
    26fc:	000a5f63          	bgez	s4,271a <_fwalk+0x44>
    2700:	4000                	lw	s0,0(s0)
    2702:	f86d                	bnez	s0,26f4 <_fwalk+0x1e>
    2704:	40f2                	lw	ra,28(sp)
    2706:	4462                	lw	s0,24(sp)
    2708:	44d2                	lw	s1,20(sp)
    270a:	49b2                	lw	s3,12(sp)
    270c:	4a22                	lw	s4,8(sp)
    270e:	4a92                	lw	s5,4(sp)
    2710:	4b02                	lw	s6,0(sp)
    2712:	854a                	mv	a0,s2
    2714:	4942                	lw	s2,16(sp)
    2716:	6105                	addi	sp,sp,32
    2718:	8082                	ret
    271a:	00c4d783          	lhu	a5,12(s1)
    271e:	00fafa63          	bgeu	s5,a5,2732 <_fwalk+0x5c>
    2722:	00e49783          	lh	a5,14(s1)
    2726:	01678663          	beq	a5,s6,2732 <_fwalk+0x5c>
    272a:	8526                	mv	a0,s1
    272c:	9982                	jalr	s3
    272e:	00a96933          	or	s2,s2,a0
    2732:	06848493          	addi	s1,s1,104
    2736:	b7d1                	j	26fa <_fwalk+0x24>

00002738 <_fwalk_reent>:
    2738:	7179                	addi	sp,sp,-48
    273a:	d422                	sw	s0,40(sp)
    273c:	d04a                	sw	s2,32(sp)
    273e:	ce4e                	sw	s3,28(sp)
    2740:	cc52                	sw	s4,24(sp)
    2742:	c85a                	sw	s6,16(sp)
    2744:	c65e                	sw	s7,12(sp)
    2746:	d606                	sw	ra,44(sp)
    2748:	d226                	sw	s1,36(sp)
    274a:	ca56                	sw	s5,20(sp)
    274c:	892a                	mv	s2,a0
    274e:	8a2e                	mv	s4,a1
    2750:	04850413          	addi	s0,a0,72
    2754:	4981                	li	s3,0
    2756:	4b05                	li	s6,1
    2758:	5bfd                	li	s7,-1
    275a:	4404                	lw	s1,8(s0)
    275c:	00442a83          	lw	s5,4(s0)
    2760:	1afd                	addi	s5,s5,-1
    2762:	020ad063          	bgez	s5,2782 <_fwalk_reent+0x4a>
    2766:	4000                	lw	s0,0(s0)
    2768:	f86d                	bnez	s0,275a <_fwalk_reent+0x22>
    276a:	50b2                	lw	ra,44(sp)
    276c:	5422                	lw	s0,40(sp)
    276e:	5492                	lw	s1,36(sp)
    2770:	5902                	lw	s2,32(sp)
    2772:	4a62                	lw	s4,24(sp)
    2774:	4ad2                	lw	s5,20(sp)
    2776:	4b42                	lw	s6,16(sp)
    2778:	4bb2                	lw	s7,12(sp)
    277a:	854e                	mv	a0,s3
    277c:	49f2                	lw	s3,28(sp)
    277e:	6145                	addi	sp,sp,48
    2780:	8082                	ret
    2782:	00c4d783          	lhu	a5,12(s1)
    2786:	00fb7b63          	bgeu	s6,a5,279c <_fwalk_reent+0x64>
    278a:	00e49783          	lh	a5,14(s1)
    278e:	01778763          	beq	a5,s7,279c <_fwalk_reent+0x64>
    2792:	85a6                	mv	a1,s1
    2794:	854a                	mv	a0,s2
    2796:	9a02                	jalr	s4
    2798:	00a9e9b3          	or	s3,s3,a0
    279c:	06848493          	addi	s1,s1,104
    27a0:	b7c1                	j	2760 <_fwalk_reent+0x28>

000027a2 <__swhatbuf_r>:
    27a2:	7159                	addi	sp,sp,-112
    27a4:	d4a2                	sw	s0,104(sp)
    27a6:	842e                	mv	s0,a1
    27a8:	00e59583          	lh	a1,14(a1)
    27ac:	d2a6                	sw	s1,100(sp)
    27ae:	d0ca                	sw	s2,96(sp)
    27b0:	d686                	sw	ra,108(sp)
    27b2:	84b2                	mv	s1,a2
    27b4:	8936                	mv	s2,a3
    27b6:	0205d463          	bgez	a1,27de <__swhatbuf_r+0x3c>
    27ba:	00c45783          	lhu	a5,12(s0)
    27be:	0807f793          	andi	a5,a5,128
    27c2:	cf85                	beqz	a5,27fa <__swhatbuf_r+0x58>
    27c4:	4781                	li	a5,0
    27c6:	04000713          	li	a4,64
    27ca:	50b6                	lw	ra,108(sp)
    27cc:	5426                	lw	s0,104(sp)
    27ce:	00f92023          	sw	a5,0(s2)
    27d2:	c098                	sw	a4,0(s1)
    27d4:	5906                	lw	s2,96(sp)
    27d6:	5496                	lw	s1,100(sp)
    27d8:	4501                	li	a0,0
    27da:	6165                	addi	sp,sp,112
    27dc:	8082                	ret
    27de:	0030                	addi	a2,sp,8
    27e0:	2661                	jal	2b68 <_fstat_r>
    27e2:	fc054ce3          	bltz	a0,27ba <__swhatbuf_r+0x18>
    27e6:	4732                	lw	a4,12(sp)
    27e8:	67bd                	lui	a5,0xf
    27ea:	8ff9                	and	a5,a5,a4
    27ec:	7779                	lui	a4,0xffffe
    27ee:	97ba                	add	a5,a5,a4
    27f0:	0017b793          	seqz	a5,a5
    27f4:	40000713          	li	a4,1024
    27f8:	bfc9                	j	27ca <__swhatbuf_r+0x28>
    27fa:	4781                	li	a5,0
    27fc:	bfe5                	j	27f4 <__swhatbuf_r+0x52>

000027fe <__smakebuf_r>:
    27fe:	00c5d783          	lhu	a5,12(a1)
    2802:	1101                	addi	sp,sp,-32
    2804:	cc22                	sw	s0,24(sp)
    2806:	ce06                	sw	ra,28(sp)
    2808:	ca26                	sw	s1,20(sp)
    280a:	c84a                	sw	s2,16(sp)
    280c:	8b89                	andi	a5,a5,2
    280e:	842e                	mv	s0,a1
    2810:	cf89                	beqz	a5,282a <__smakebuf_r+0x2c>
    2812:	04740793          	addi	a5,s0,71
    2816:	c01c                	sw	a5,0(s0)
    2818:	c81c                	sw	a5,16(s0)
    281a:	4785                	li	a5,1
    281c:	c85c                	sw	a5,20(s0)
    281e:	40f2                	lw	ra,28(sp)
    2820:	4462                	lw	s0,24(sp)
    2822:	44d2                	lw	s1,20(sp)
    2824:	4942                	lw	s2,16(sp)
    2826:	6105                	addi	sp,sp,32
    2828:	8082                	ret
    282a:	0074                	addi	a3,sp,12
    282c:	0030                	addi	a2,sp,8
    282e:	84aa                	mv	s1,a0
    2830:	3f8d                	jal	27a2 <__swhatbuf_r>
    2832:	45a2                	lw	a1,8(sp)
    2834:	892a                	mv	s2,a0
    2836:	8526                	mv	a0,s1
    2838:	2209                	jal	293a <_malloc_r>
    283a:	ed01                	bnez	a0,2852 <__smakebuf_r+0x54>
    283c:	00c41783          	lh	a5,12(s0)
    2840:	2007f713          	andi	a4,a5,512
    2844:	ff69                	bnez	a4,281e <__smakebuf_r+0x20>
    2846:	9bf1                	andi	a5,a5,-4
    2848:	0027e793          	ori	a5,a5,2
    284c:	00f41623          	sh	a5,12(s0)
    2850:	b7c9                	j	2812 <__smakebuf_r+0x14>
    2852:	6789                	lui	a5,0x2
    2854:	54c78793          	addi	a5,a5,1356 # 254c <_cleanup_r>
    2858:	d49c                	sw	a5,40(s1)
    285a:	00c45783          	lhu	a5,12(s0)
    285e:	c008                	sw	a0,0(s0)
    2860:	c808                	sw	a0,16(s0)
    2862:	0807e793          	ori	a5,a5,128
    2866:	00f41623          	sh	a5,12(s0)
    286a:	47a2                	lw	a5,8(sp)
    286c:	c85c                	sw	a5,20(s0)
    286e:	47b2                	lw	a5,12(sp)
    2870:	cf89                	beqz	a5,288a <__smakebuf_r+0x8c>
    2872:	00e41583          	lh	a1,14(s0)
    2876:	8526                	mv	a0,s1
    2878:	260d                	jal	2b9a <_isatty_r>
    287a:	c901                	beqz	a0,288a <__smakebuf_r+0x8c>
    287c:	00c45783          	lhu	a5,12(s0)
    2880:	9bf1                	andi	a5,a5,-4
    2882:	0017e793          	ori	a5,a5,1
    2886:	00f41623          	sh	a5,12(s0)
    288a:	00c45783          	lhu	a5,12(s0)
    288e:	0127e533          	or	a0,a5,s2
    2892:	00a41623          	sh	a0,12(s0)
    2896:	b761                	j	281e <__smakebuf_r+0x20>

00002898 <_free_r>:
    2898:	c1c5                	beqz	a1,2938 <_free_r+0xa0>
    289a:	ffc5a783          	lw	a5,-4(a1)
    289e:	1101                	addi	sp,sp,-32
    28a0:	cc22                	sw	s0,24(sp)
    28a2:	ce06                	sw	ra,28(sp)
    28a4:	ffc58413          	addi	s0,a1,-4
    28a8:	0007d363          	bgez	a5,28ae <_free_r+0x16>
    28ac:	943e                	add	s0,s0,a5
    28ae:	c62a                	sw	a0,12(sp)
    28b0:	26b9                	jal	2bfe <__malloc_lock>
    28b2:	00080737          	lui	a4,0x80
    28b6:	63072783          	lw	a5,1584(a4) # 80630 <__malloc_free_list>
    28ba:	4532                	lw	a0,12(sp)
    28bc:	eb89                	bnez	a5,28ce <_free_r+0x36>
    28be:	00042223          	sw	zero,4(s0)
    28c2:	62872823          	sw	s0,1584(a4)
    28c6:	4462                	lw	s0,24(sp)
    28c8:	40f2                	lw	ra,28(sp)
    28ca:	6105                	addi	sp,sp,32
    28cc:	ae15                	j	2c00 <__malloc_unlock>
    28ce:	00f47d63          	bgeu	s0,a5,28e8 <_free_r+0x50>
    28d2:	4010                	lw	a2,0(s0)
    28d4:	00c406b3          	add	a3,s0,a2
    28d8:	00d79663          	bne	a5,a3,28e4 <_free_r+0x4c>
    28dc:	4394                	lw	a3,0(a5)
    28de:	43dc                	lw	a5,4(a5)
    28e0:	96b2                	add	a3,a3,a2
    28e2:	c014                	sw	a3,0(s0)
    28e4:	c05c                	sw	a5,4(s0)
    28e6:	bff1                	j	28c2 <_free_r+0x2a>
    28e8:	873e                	mv	a4,a5
    28ea:	43dc                	lw	a5,4(a5)
    28ec:	c399                	beqz	a5,28f2 <_free_r+0x5a>
    28ee:	fef47de3          	bgeu	s0,a5,28e8 <_free_r+0x50>
    28f2:	4314                	lw	a3,0(a4)
    28f4:	00d70633          	add	a2,a4,a3
    28f8:	00861f63          	bne	a2,s0,2916 <_free_r+0x7e>
    28fc:	4010                	lw	a2,0(s0)
    28fe:	96b2                	add	a3,a3,a2
    2900:	c314                	sw	a3,0(a4)
    2902:	00d70633          	add	a2,a4,a3
    2906:	fcc790e3          	bne	a5,a2,28c6 <_free_r+0x2e>
    290a:	4390                	lw	a2,0(a5)
    290c:	43dc                	lw	a5,4(a5)
    290e:	96b2                	add	a3,a3,a2
    2910:	c314                	sw	a3,0(a4)
    2912:	c35c                	sw	a5,4(a4)
    2914:	bf4d                	j	28c6 <_free_r+0x2e>
    2916:	00c47563          	bgeu	s0,a2,2920 <_free_r+0x88>
    291a:	47b1                	li	a5,12
    291c:	c11c                	sw	a5,0(a0)
    291e:	b765                	j	28c6 <_free_r+0x2e>
    2920:	4010                	lw	a2,0(s0)
    2922:	00c406b3          	add	a3,s0,a2
    2926:	00d79663          	bne	a5,a3,2932 <_free_r+0x9a>
    292a:	4394                	lw	a3,0(a5)
    292c:	43dc                	lw	a5,4(a5)
    292e:	96b2                	add	a3,a3,a2
    2930:	c014                	sw	a3,0(s0)
    2932:	c05c                	sw	a5,4(s0)
    2934:	c340                	sw	s0,4(a4)
    2936:	bf41                	j	28c6 <_free_r+0x2e>
    2938:	8082                	ret

0000293a <_malloc_r>:
    293a:	1101                	addi	sp,sp,-32
    293c:	ca26                	sw	s1,20(sp)
    293e:	00358493          	addi	s1,a1,3
    2942:	98f1                	andi	s1,s1,-4
    2944:	c84a                	sw	s2,16(sp)
    2946:	ce06                	sw	ra,28(sp)
    2948:	cc22                	sw	s0,24(sp)
    294a:	c64e                	sw	s3,12(sp)
    294c:	04a1                	addi	s1,s1,8
    294e:	47b1                	li	a5,12
    2950:	892a                	mv	s2,a0
    2952:	04f4f663          	bgeu	s1,a5,299e <_malloc_r+0x64>
    2956:	44b1                	li	s1,12
    2958:	04b4e563          	bltu	s1,a1,29a2 <_malloc_r+0x68>
    295c:	854a                	mv	a0,s2
    295e:	2445                	jal	2bfe <__malloc_lock>
    2960:	000807b7          	lui	a5,0x80
    2964:	63078713          	addi	a4,a5,1584 # 80630 <__malloc_free_list>
    2968:	4318                	lw	a4,0(a4)
    296a:	63078693          	addi	a3,a5,1584
    296e:	843a                	mv	s0,a4
    2970:	e421                	bnez	s0,29b8 <_malloc_r+0x7e>
    2972:	00080437          	lui	s0,0x80
    2976:	63440413          	addi	s0,s0,1588 # 80634 <__malloc_sbrk_start>
    297a:	401c                	lw	a5,0(s0)
    297c:	e789                	bnez	a5,2986 <_malloc_r+0x4c>
    297e:	4581                	li	a1,0
    2980:	854a                	mv	a0,s2
    2982:	2851                	jal	2a16 <_sbrk_r>
    2984:	c008                	sw	a0,0(s0)
    2986:	85a6                	mv	a1,s1
    2988:	854a                	mv	a0,s2
    298a:	2071                	jal	2a16 <_sbrk_r>
    298c:	59fd                	li	s3,-1
    298e:	07351863          	bne	a0,s3,29fe <_malloc_r+0xc4>
    2992:	47b1                	li	a5,12
    2994:	00f92023          	sw	a5,0(s2)
    2998:	854a                	mv	a0,s2
    299a:	249d                	jal	2c00 <__malloc_unlock>
    299c:	a031                	j	29a8 <_malloc_r+0x6e>
    299e:	fa04dde3          	bgez	s1,2958 <_malloc_r+0x1e>
    29a2:	47b1                	li	a5,12
    29a4:	00f92023          	sw	a5,0(s2)
    29a8:	4501                	li	a0,0
    29aa:	40f2                	lw	ra,28(sp)
    29ac:	4462                	lw	s0,24(sp)
    29ae:	44d2                	lw	s1,20(sp)
    29b0:	4942                	lw	s2,16(sp)
    29b2:	49b2                	lw	s3,12(sp)
    29b4:	6105                	addi	sp,sp,32
    29b6:	8082                	ret
    29b8:	401c                	lw	a5,0(s0)
    29ba:	8f85                	sub	a5,a5,s1
    29bc:	0207ce63          	bltz	a5,29f8 <_malloc_r+0xbe>
    29c0:	462d                	li	a2,11
    29c2:	00f67663          	bgeu	a2,a5,29ce <_malloc_r+0x94>
    29c6:	c01c                	sw	a5,0(s0)
    29c8:	943e                	add	s0,s0,a5
    29ca:	c004                	sw	s1,0(s0)
    29cc:	a029                	j	29d6 <_malloc_r+0x9c>
    29ce:	405c                	lw	a5,4(s0)
    29d0:	02871263          	bne	a4,s0,29f4 <_malloc_r+0xba>
    29d4:	c29c                	sw	a5,0(a3)
    29d6:	854a                	mv	a0,s2
    29d8:	2425                	jal	2c00 <__malloc_unlock>
    29da:	00b40513          	addi	a0,s0,11
    29de:	00440793          	addi	a5,s0,4
    29e2:	9961                	andi	a0,a0,-8
    29e4:	40f50733          	sub	a4,a0,a5
    29e8:	fcf501e3          	beq	a0,a5,29aa <_malloc_r+0x70>
    29ec:	943a                	add	s0,s0,a4
    29ee:	8f89                	sub	a5,a5,a0
    29f0:	c01c                	sw	a5,0(s0)
    29f2:	bf65                	j	29aa <_malloc_r+0x70>
    29f4:	c35c                	sw	a5,4(a4)
    29f6:	b7c5                	j	29d6 <_malloc_r+0x9c>
    29f8:	8722                	mv	a4,s0
    29fa:	4040                	lw	s0,4(s0)
    29fc:	bf95                	j	2970 <_malloc_r+0x36>
    29fe:	00350413          	addi	s0,a0,3
    2a02:	9871                	andi	s0,s0,-4
    2a04:	fc8503e3          	beq	a0,s0,29ca <_malloc_r+0x90>
    2a08:	40a405b3          	sub	a1,s0,a0
    2a0c:	854a                	mv	a0,s2
    2a0e:	2021                	jal	2a16 <_sbrk_r>
    2a10:	fb351de3          	bne	a0,s3,29ca <_malloc_r+0x90>
    2a14:	bfbd                	j	2992 <_malloc_r+0x58>

00002a16 <_sbrk_r>:
    2a16:	1141                	addi	sp,sp,-16
    2a18:	c422                	sw	s0,8(sp)
    2a1a:	c226                	sw	s1,4(sp)
    2a1c:	842a                	mv	s0,a0
    2a1e:	000804b7          	lui	s1,0x80
    2a22:	852e                	mv	a0,a1
    2a24:	c606                	sw	ra,12(sp)
    2a26:	6204a423          	sw	zero,1576(s1) # 80628 <errno>
    2a2a:	bebfe0ef          	jal	ra,1614 <_sbrk>
    2a2e:	57fd                	li	a5,-1
    2a30:	00f51663          	bne	a0,a5,2a3c <_sbrk_r+0x26>
    2a34:	6284a783          	lw	a5,1576(s1)
    2a38:	c391                	beqz	a5,2a3c <_sbrk_r+0x26>
    2a3a:	c01c                	sw	a5,0(s0)
    2a3c:	40b2                	lw	ra,12(sp)
    2a3e:	4422                	lw	s0,8(sp)
    2a40:	4492                	lw	s1,4(sp)
    2a42:	0141                	addi	sp,sp,16
    2a44:	8082                	ret

00002a46 <__sread>:
    2a46:	1141                	addi	sp,sp,-16
    2a48:	c422                	sw	s0,8(sp)
    2a4a:	842e                	mv	s0,a1
    2a4c:	00e59583          	lh	a1,14(a1)
    2a50:	c606                	sw	ra,12(sp)
    2a52:	2a45                	jal	2c02 <_read_r>
    2a54:	00054963          	bltz	a0,2a66 <__sread+0x20>
    2a58:	487c                	lw	a5,84(s0)
    2a5a:	97aa                	add	a5,a5,a0
    2a5c:	c87c                	sw	a5,84(s0)
    2a5e:	40b2                	lw	ra,12(sp)
    2a60:	4422                	lw	s0,8(sp)
    2a62:	0141                	addi	sp,sp,16
    2a64:	8082                	ret
    2a66:	00c45783          	lhu	a5,12(s0)
    2a6a:	777d                	lui	a4,0xfffff
    2a6c:	177d                	addi	a4,a4,-1
    2a6e:	8ff9                	and	a5,a5,a4
    2a70:	00f41623          	sh	a5,12(s0)
    2a74:	b7ed                	j	2a5e <__sread+0x18>

00002a76 <__seofread>:
    2a76:	4501                	li	a0,0
    2a78:	8082                	ret

00002a7a <__swrite>:
    2a7a:	00c5d783          	lhu	a5,12(a1)
    2a7e:	1101                	addi	sp,sp,-32
    2a80:	cc22                	sw	s0,24(sp)
    2a82:	ca26                	sw	s1,20(sp)
    2a84:	c84a                	sw	s2,16(sp)
    2a86:	c64e                	sw	s3,12(sp)
    2a88:	ce06                	sw	ra,28(sp)
    2a8a:	1007f793          	andi	a5,a5,256
    2a8e:	84aa                	mv	s1,a0
    2a90:	842e                	mv	s0,a1
    2a92:	8932                	mv	s2,a2
    2a94:	89b6                	mv	s3,a3
    2a96:	c791                	beqz	a5,2aa2 <__swrite+0x28>
    2a98:	00e59583          	lh	a1,14(a1)
    2a9c:	4689                	li	a3,2
    2a9e:	4601                	li	a2,0
    2aa0:	222d                	jal	2bca <_lseek_r>
    2aa2:	00c45783          	lhu	a5,12(s0)
    2aa6:	777d                	lui	a4,0xfffff
    2aa8:	177d                	addi	a4,a4,-1
    2aaa:	8ff9                	and	a5,a5,a4
    2aac:	00e41583          	lh	a1,14(s0)
    2ab0:	00f41623          	sh	a5,12(s0)
    2ab4:	4462                	lw	s0,24(sp)
    2ab6:	40f2                	lw	ra,28(sp)
    2ab8:	86ce                	mv	a3,s3
    2aba:	864a                	mv	a2,s2
    2abc:	49b2                	lw	s3,12(sp)
    2abe:	4942                	lw	s2,16(sp)
    2ac0:	8526                	mv	a0,s1
    2ac2:	44d2                	lw	s1,20(sp)
    2ac4:	6105                	addi	sp,sp,32
    2ac6:	a83d                	j	2b04 <_write_r>

00002ac8 <__sseek>:
    2ac8:	1141                	addi	sp,sp,-16
    2aca:	c422                	sw	s0,8(sp)
    2acc:	842e                	mv	s0,a1
    2ace:	00e59583          	lh	a1,14(a1)
    2ad2:	c606                	sw	ra,12(sp)
    2ad4:	28dd                	jal	2bca <_lseek_r>
    2ad6:	577d                	li	a4,-1
    2ad8:	00c45783          	lhu	a5,12(s0)
    2adc:	00e51b63          	bne	a0,a4,2af2 <__sseek+0x2a>
    2ae0:	777d                	lui	a4,0xfffff
    2ae2:	177d                	addi	a4,a4,-1
    2ae4:	8ff9                	and	a5,a5,a4
    2ae6:	00f41623          	sh	a5,12(s0)
    2aea:	40b2                	lw	ra,12(sp)
    2aec:	4422                	lw	s0,8(sp)
    2aee:	0141                	addi	sp,sp,16
    2af0:	8082                	ret
    2af2:	6705                	lui	a4,0x1
    2af4:	8fd9                	or	a5,a5,a4
    2af6:	00f41623          	sh	a5,12(s0)
    2afa:	c868                	sw	a0,84(s0)
    2afc:	b7fd                	j	2aea <__sseek+0x22>

00002afe <__sclose>:
    2afe:	00e59583          	lh	a1,14(a1)
    2b02:	a81d                	j	2b38 <_close_r>

00002b04 <_write_r>:
    2b04:	1141                	addi	sp,sp,-16
    2b06:	c422                	sw	s0,8(sp)
    2b08:	c226                	sw	s1,4(sp)
    2b0a:	842a                	mv	s0,a0
    2b0c:	000804b7          	lui	s1,0x80
    2b10:	852e                	mv	a0,a1
    2b12:	85b2                	mv	a1,a2
    2b14:	8636                	mv	a2,a3
    2b16:	c606                	sw	ra,12(sp)
    2b18:	6204a423          	sw	zero,1576(s1) # 80628 <errno>
    2b1c:	a4dfe0ef          	jal	ra,1568 <_write>
    2b20:	57fd                	li	a5,-1
    2b22:	00f51663          	bne	a0,a5,2b2e <_write_r+0x2a>
    2b26:	6284a783          	lw	a5,1576(s1)
    2b2a:	c391                	beqz	a5,2b2e <_write_r+0x2a>
    2b2c:	c01c                	sw	a5,0(s0)
    2b2e:	40b2                	lw	ra,12(sp)
    2b30:	4422                	lw	s0,8(sp)
    2b32:	4492                	lw	s1,4(sp)
    2b34:	0141                	addi	sp,sp,16
    2b36:	8082                	ret

00002b38 <_close_r>:
    2b38:	1141                	addi	sp,sp,-16
    2b3a:	c422                	sw	s0,8(sp)
    2b3c:	c226                	sw	s1,4(sp)
    2b3e:	842a                	mv	s0,a0
    2b40:	000804b7          	lui	s1,0x80
    2b44:	852e                	mv	a0,a1
    2b46:	c606                	sw	ra,12(sp)
    2b48:	6204a423          	sw	zero,1576(s1) # 80628 <errno>
    2b4c:	9f1fe0ef          	jal	ra,153c <_close>
    2b50:	57fd                	li	a5,-1
    2b52:	00f51663          	bne	a0,a5,2b5e <_close_r+0x26>
    2b56:	6284a783          	lw	a5,1576(s1)
    2b5a:	c391                	beqz	a5,2b5e <_close_r+0x26>
    2b5c:	c01c                	sw	a5,0(s0)
    2b5e:	40b2                	lw	ra,12(sp)
    2b60:	4422                	lw	s0,8(sp)
    2b62:	4492                	lw	s1,4(sp)
    2b64:	0141                	addi	sp,sp,16
    2b66:	8082                	ret

00002b68 <_fstat_r>:
    2b68:	1141                	addi	sp,sp,-16
    2b6a:	c422                	sw	s0,8(sp)
    2b6c:	c226                	sw	s1,4(sp)
    2b6e:	842a                	mv	s0,a0
    2b70:	000804b7          	lui	s1,0x80
    2b74:	852e                	mv	a0,a1
    2b76:	85b2                	mv	a1,a2
    2b78:	c606                	sw	ra,12(sp)
    2b7a:	6204a423          	sw	zero,1576(s1) # 80628 <errno>
    2b7e:	9d3fe0ef          	jal	ra,1550 <_fstat>
    2b82:	57fd                	li	a5,-1
    2b84:	00f51663          	bne	a0,a5,2b90 <_fstat_r+0x28>
    2b88:	6284a783          	lw	a5,1576(s1)
    2b8c:	c391                	beqz	a5,2b90 <_fstat_r+0x28>
    2b8e:	c01c                	sw	a5,0(s0)
    2b90:	40b2                	lw	ra,12(sp)
    2b92:	4422                	lw	s0,8(sp)
    2b94:	4492                	lw	s1,4(sp)
    2b96:	0141                	addi	sp,sp,16
    2b98:	8082                	ret

00002b9a <_isatty_r>:
    2b9a:	1141                	addi	sp,sp,-16
    2b9c:	c422                	sw	s0,8(sp)
    2b9e:	c226                	sw	s1,4(sp)
    2ba0:	842a                	mv	s0,a0
    2ba2:	000804b7          	lui	s1,0x80
    2ba6:	852e                	mv	a0,a1
    2ba8:	c606                	sw	ra,12(sp)
    2baa:	6204a423          	sw	zero,1576(s1) # 80628 <errno>
    2bae:	9abfe0ef          	jal	ra,1558 <_isatty>
    2bb2:	57fd                	li	a5,-1
    2bb4:	00f51663          	bne	a0,a5,2bc0 <_isatty_r+0x26>
    2bb8:	6284a783          	lw	a5,1576(s1)
    2bbc:	c391                	beqz	a5,2bc0 <_isatty_r+0x26>
    2bbe:	c01c                	sw	a5,0(s0)
    2bc0:	40b2                	lw	ra,12(sp)
    2bc2:	4422                	lw	s0,8(sp)
    2bc4:	4492                	lw	s1,4(sp)
    2bc6:	0141                	addi	sp,sp,16
    2bc8:	8082                	ret

00002bca <_lseek_r>:
    2bca:	1141                	addi	sp,sp,-16
    2bcc:	c422                	sw	s0,8(sp)
    2bce:	c226                	sw	s1,4(sp)
    2bd0:	842a                	mv	s0,a0
    2bd2:	000804b7          	lui	s1,0x80
    2bd6:	852e                	mv	a0,a1
    2bd8:	85b2                	mv	a1,a2
    2bda:	8636                	mv	a2,a3
    2bdc:	c606                	sw	ra,12(sp)
    2bde:	6204a423          	sw	zero,1576(s1) # 80628 <errno>
    2be2:	97ffe0ef          	jal	ra,1560 <_lseek>
    2be6:	57fd                	li	a5,-1
    2be8:	00f51663          	bne	a0,a5,2bf4 <_lseek_r+0x2a>
    2bec:	6284a783          	lw	a5,1576(s1)
    2bf0:	c391                	beqz	a5,2bf4 <_lseek_r+0x2a>
    2bf2:	c01c                	sw	a5,0(s0)
    2bf4:	40b2                	lw	ra,12(sp)
    2bf6:	4422                	lw	s0,8(sp)
    2bf8:	4492                	lw	s1,4(sp)
    2bfa:	0141                	addi	sp,sp,16
    2bfc:	8082                	ret

00002bfe <__malloc_lock>:
    2bfe:	8082                	ret

00002c00 <__malloc_unlock>:
    2c00:	8082                	ret

00002c02 <_read_r>:
    2c02:	1141                	addi	sp,sp,-16
    2c04:	c422                	sw	s0,8(sp)
    2c06:	c226                	sw	s1,4(sp)
    2c08:	842a                	mv	s0,a0
    2c0a:	000804b7          	lui	s1,0x80
    2c0e:	852e                	mv	a0,a1
    2c10:	85b2                	mv	a1,a2
    2c12:	8636                	mv	a2,a3
    2c14:	c606                	sw	ra,12(sp)
    2c16:	6204a423          	sw	zero,1576(s1) # 80628 <errno>
    2c1a:	94bfe0ef          	jal	ra,1564 <_read>
    2c1e:	57fd                	li	a5,-1
    2c20:	00f51663          	bne	a0,a5,2c2c <_read_r+0x2a>
    2c24:	6284a783          	lw	a5,1576(s1)
    2c28:	c391                	beqz	a5,2c2c <_read_r+0x2a>
    2c2a:	c01c                	sw	a5,0(s0)
    2c2c:	40b2                	lw	ra,12(sp)
    2c2e:	4422                	lw	s0,8(sp)
    2c30:	4492                	lw	s1,4(sp)
    2c32:	0141                	addi	sp,sp,16
    2c34:	8082                	ret

00002c36 <_iprintf_r>:
    2c36:	7139                	addi	sp,sp,-64
    2c38:	cc22                	sw	s0,24(sp)
    2c3a:	ca26                	sw	s1,20(sp)
    2c3c:	ce06                	sw	ra,28(sp)
    2c3e:	d432                	sw	a2,40(sp)
    2c40:	d636                	sw	a3,44(sp)
    2c42:	d83a                	sw	a4,48(sp)
    2c44:	da3e                	sw	a5,52(sp)
    2c46:	dc42                	sw	a6,56(sp)
    2c48:	de46                	sw	a7,60(sp)
    2c4a:	842a                	mv	s0,a0
    2c4c:	84ae                	mv	s1,a1
    2c4e:	c509                	beqz	a0,2c58 <_iprintf_r+0x22>
    2c50:	4d1c                	lw	a5,24(a0)
    2c52:	e399                	bnez	a5,2c58 <_iprintf_r+0x22>
    2c54:	955ff0ef          	jal	ra,25a8 <__sinit>
    2c58:	440c                	lw	a1,8(s0)
    2c5a:	1034                	addi	a3,sp,40
    2c5c:	8626                	mv	a2,s1
    2c5e:	8522                	mv	a0,s0
    2c60:	c636                	sw	a3,12(sp)
    2c62:	28e1                	jal	2d3a <_vfiprintf_r>
    2c64:	40f2                	lw	ra,28(sp)
    2c66:	4462                	lw	s0,24(sp)
    2c68:	44d2                	lw	s1,20(sp)
    2c6a:	6121                	addi	sp,sp,64
    2c6c:	8082                	ret

00002c6e <iprintf>:
    2c6e:	715d                	addi	sp,sp,-80
    2c70:	c2be                	sw	a5,68(sp)
    2c72:	000807b7          	lui	a5,0x80
    2c76:	d422                	sw	s0,40(sp)
    2c78:	842a                	mv	s0,a0
    2c7a:	61c7a503          	lw	a0,1564(a5) # 8061c <_impure_ptr>
    2c7e:	d606                	sw	ra,44(sp)
    2c80:	da2e                	sw	a1,52(sp)
    2c82:	dc32                	sw	a2,56(sp)
    2c84:	de36                	sw	a3,60(sp)
    2c86:	c0ba                	sw	a4,64(sp)
    2c88:	c4c2                	sw	a6,72(sp)
    2c8a:	c6c6                	sw	a7,76(sp)
    2c8c:	c519                	beqz	a0,2c9a <iprintf+0x2c>
    2c8e:	4d1c                	lw	a5,24(a0)
    2c90:	e789                	bnez	a5,2c9a <iprintf+0x2c>
    2c92:	c62a                	sw	a0,12(sp)
    2c94:	915ff0ef          	jal	ra,25a8 <__sinit>
    2c98:	4532                	lw	a0,12(sp)
    2c9a:	450c                	lw	a1,8(a0)
    2c9c:	1854                	addi	a3,sp,52
    2c9e:	8622                	mv	a2,s0
    2ca0:	ce36                	sw	a3,28(sp)
    2ca2:	2861                	jal	2d3a <_vfiprintf_r>
    2ca4:	50b2                	lw	ra,44(sp)
    2ca6:	5422                	lw	s0,40(sp)
    2ca8:	6161                	addi	sp,sp,80
    2caa:	8082                	ret

00002cac <__sfputc_r>:
    2cac:	461c                	lw	a5,8(a2)
    2cae:	17fd                	addi	a5,a5,-1
    2cb0:	c61c                	sw	a5,8(a2)
    2cb2:	0007da63          	bgez	a5,2cc6 <__sfputc_r+0x1a>
    2cb6:	4e18                	lw	a4,24(a2)
    2cb8:	00e7c563          	blt	a5,a4,2cc2 <__sfputc_r+0x16>
    2cbc:	47a9                	li	a5,10
    2cbe:	00f59463          	bne	a1,a5,2cc6 <__sfputc_r+0x1a>
    2cc2:	b36ff06f          	j	1ff8 <__swbuf_r>
    2cc6:	421c                	lw	a5,0(a2)
    2cc8:	852e                	mv	a0,a1
    2cca:	00178713          	addi	a4,a5,1
    2cce:	c218                	sw	a4,0(a2)
    2cd0:	00b78023          	sb	a1,0(a5)
    2cd4:	8082                	ret

00002cd6 <__sfputs_r>:
    2cd6:	1101                	addi	sp,sp,-32
    2cd8:	cc22                	sw	s0,24(sp)
    2cda:	ca26                	sw	s1,20(sp)
    2cdc:	c84a                	sw	s2,16(sp)
    2cde:	c64e                	sw	s3,12(sp)
    2ce0:	c452                	sw	s4,8(sp)
    2ce2:	ce06                	sw	ra,28(sp)
    2ce4:	892a                	mv	s2,a0
    2ce6:	89ae                	mv	s3,a1
    2ce8:	8432                	mv	s0,a2
    2cea:	00d604b3          	add	s1,a2,a3
    2cee:	5a7d                	li	s4,-1
    2cf0:	00941463          	bne	s0,s1,2cf8 <__sfputs_r+0x22>
    2cf4:	4501                	li	a0,0
    2cf6:	a809                	j	2d08 <__sfputs_r+0x32>
    2cf8:	00044583          	lbu	a1,0(s0)
    2cfc:	864e                	mv	a2,s3
    2cfe:	854a                	mv	a0,s2
    2d00:	3775                	jal	2cac <__sfputc_r>
    2d02:	0405                	addi	s0,s0,1
    2d04:	ff4516e3          	bne	a0,s4,2cf0 <__sfputs_r+0x1a>
    2d08:	40f2                	lw	ra,28(sp)
    2d0a:	4462                	lw	s0,24(sp)
    2d0c:	44d2                	lw	s1,20(sp)
    2d0e:	4942                	lw	s2,16(sp)
    2d10:	49b2                	lw	s3,12(sp)
    2d12:	4a22                	lw	s4,8(sp)
    2d14:	6105                	addi	sp,sp,32
    2d16:	8082                	ret

00002d18 <__sprint_r>:
    2d18:	461c                	lw	a5,8(a2)
    2d1a:	1141                	addi	sp,sp,-16
    2d1c:	c422                	sw	s0,8(sp)
    2d1e:	c606                	sw	ra,12(sp)
    2d20:	8432                	mv	s0,a2
    2d22:	cb91                	beqz	a5,2d36 <__sprint_r+0x1e>
    2d24:	24d1                	jal	2fe8 <__sfvwrite_r>
    2d26:	00042423          	sw	zero,8(s0)
    2d2a:	40b2                	lw	ra,12(sp)
    2d2c:	00042223          	sw	zero,4(s0)
    2d30:	4422                	lw	s0,8(sp)
    2d32:	0141                	addi	sp,sp,16
    2d34:	8082                	ret
    2d36:	4501                	li	a0,0
    2d38:	bfcd                	j	2d2a <__sprint_r+0x12>

00002d3a <_vfiprintf_r>:
    2d3a:	7171                	addi	sp,sp,-176
    2d3c:	d522                	sw	s0,168(sp)
    2d3e:	d326                	sw	s1,164(sp)
    2d40:	d14a                	sw	s2,160(sp)
    2d42:	cf4e                	sw	s3,156(sp)
    2d44:	d706                	sw	ra,172(sp)
    2d46:	cd52                	sw	s4,152(sp)
    2d48:	cb56                	sw	s5,148(sp)
    2d4a:	c95a                	sw	s6,144(sp)
    2d4c:	c75e                	sw	s7,140(sp)
    2d4e:	c562                	sw	s8,136(sp)
    2d50:	c366                	sw	s9,132(sp)
    2d52:	c16a                	sw	s10,128(sp)
    2d54:	deee                	sw	s11,124(sp)
    2d56:	89aa                	mv	s3,a0
    2d58:	84ae                	mv	s1,a1
    2d5a:	8932                	mv	s2,a2
    2d5c:	8436                	mv	s0,a3
    2d5e:	c509                	beqz	a0,2d68 <_vfiprintf_r+0x2e>
    2d60:	4d1c                	lw	a5,24(a0)
    2d62:	e399                	bnez	a5,2d68 <_vfiprintf_r+0x2e>
    2d64:	845ff0ef          	jal	ra,25a8 <__sinit>
    2d68:	000807b7          	lui	a5,0x80
    2d6c:	3e078793          	addi	a5,a5,992 # 803e0 <__sf_fake_stdin>
    2d70:	0ef49363          	bne	s1,a5,2e56 <memory.c.f6d1f22a+0xd6>
    2d74:	0049a483          	lw	s1,4(s3)
    2d78:	00c4d783          	lhu	a5,12(s1)
    2d7c:	8ba1                	andi	a5,a5,8
    2d7e:	0e078e63          	beqz	a5,2e7a <memory.c.f6d1f22a+0xfa>
    2d82:	489c                	lw	a5,16(s1)
    2d84:	0e078b63          	beqz	a5,2e7a <memory.c.f6d1f22a+0xfa>
    2d88:	02000793          	li	a5,32
    2d8c:	02f104a3          	sb	a5,41(sp)
    2d90:	03000793          	li	a5,48
    2d94:	d202                	sw	zero,36(sp)
    2d96:	02f10523          	sb	a5,42(sp)
    2d9a:	c622                	sw	s0,12(sp)
    2d9c:	02500c93          	li	s9,37
    2da0:	00080b37          	lui	s6,0x80
    2da4:	00080bb7          	lui	s7,0x80
    2da8:	00080d37          	lui	s10,0x80
    2dac:	6c0d                	lui	s8,0x3
    2dae:	00000a93          	li	s5,0
    2db2:	844a                	mv	s0,s2
    2db4:	00044783          	lbu	a5,0(s0)
    2db8:	c399                	beqz	a5,2dbe <memory.c.f6d1f22a+0x3e>
    2dba:	0f979663          	bne	a5,s9,2ea6 <memory.c.f6d1f22a+0x126>
    2dbe:	41240db3          	sub	s11,s0,s2
    2dc2:	01240d63          	beq	s0,s2,2ddc <memory.c.f6d1f22a+0x5c>
    2dc6:	86ee                	mv	a3,s11
    2dc8:	864a                	mv	a2,s2
    2dca:	85a6                	mv	a1,s1
    2dcc:	854e                	mv	a0,s3
    2dce:	3721                	jal	2cd6 <__sfputs_r>
    2dd0:	57fd                	li	a5,-1
    2dd2:	1ef50363          	beq	a0,a5,2fb8 <soc_ctrl.c.866c9c8a+0xd4>
    2dd6:	5792                	lw	a5,36(sp)
    2dd8:	97ee                	add	a5,a5,s11
    2dda:	d23e                	sw	a5,36(sp)
    2ddc:	00044783          	lbu	a5,0(s0)
    2de0:	1c078c63          	beqz	a5,2fb8 <soc_ctrl.c.866c9c8a+0xd4>
    2de4:	57fd                	li	a5,-1
    2de6:	00140913          	addi	s2,s0,1
    2dea:	c802                	sw	zero,16(sp)
    2dec:	ce02                	sw	zero,28(sp)
    2dee:	ca3e                	sw	a5,20(sp)
    2df0:	cc02                	sw	zero,24(sp)
    2df2:	040109a3          	sb	zero,83(sp)
    2df6:	d482                	sw	zero,104(sp)
    2df8:	4d85                	li	s11,1
    2dfa:	00094583          	lbu	a1,0(s2)
    2dfe:	4615                	li	a2,5
    2e00:	420b0513          	addi	a0,s6,1056 # 80420 <__sf_fake_stdout+0x20>
    2e04:	217d                	jal	32b2 <memchr>
    2e06:	47c2                	lw	a5,16(sp)
    2e08:	00190413          	addi	s0,s2,1
    2e0c:	ed59                	bnez	a0,2eaa <memory.c.f6d1f22a+0x12a>
    2e0e:	0107f713          	andi	a4,a5,16
    2e12:	c709                	beqz	a4,2e1c <memory.c.f6d1f22a+0x9c>
    2e14:	02000713          	li	a4,32
    2e18:	04e109a3          	sb	a4,83(sp)
    2e1c:	0087f713          	andi	a4,a5,8
    2e20:	c709                	beqz	a4,2e2a <memory.c.f6d1f22a+0xaa>
    2e22:	02b00713          	li	a4,43
    2e26:	04e109a3          	sb	a4,83(sp)
    2e2a:	00094683          	lbu	a3,0(s2)
    2e2e:	02a00713          	li	a4,42
    2e32:	08e68563          	beq	a3,a4,2ebc <memory.c.f6d1f22a+0x13c>
    2e36:	47f2                	lw	a5,28(sp)
    2e38:	844a                	mv	s0,s2
    2e3a:	4681                	li	a3,0
    2e3c:	4625                	li	a2,9
    2e3e:	4529                	li	a0,10
    2e40:	00044703          	lbu	a4,0(s0)
    2e44:	00140593          	addi	a1,s0,1
    2e48:	fd070713          	addi	a4,a4,-48 # fd0 <main+0xdba>
    2e4c:	0ae67d63          	bgeu	a2,a4,2f06 <soc_ctrl.c.866c9c8a+0x22>
    2e50:	ceb5                	beqz	a3,2ecc <memory.c.f6d1f22a+0x14c>
    2e52:	ce3e                	sw	a5,28(sp)
    2e54:	a8a5                	j	2ecc <memory.c.f6d1f22a+0x14c>
    2e56:	000807b7          	lui	a5,0x80
    2e5a:	40078793          	addi	a5,a5,1024 # 80400 <__sf_fake_stdout>
    2e5e:	00f49563          	bne	s1,a5,2e68 <memory.c.f6d1f22a+0xe8>
    2e62:	0089a483          	lw	s1,8(s3)
    2e66:	bf09                	j	2d78 <_vfiprintf_r+0x3e>
    2e68:	000807b7          	lui	a5,0x80
    2e6c:	3c078793          	addi	a5,a5,960 # 803c0 <__sf_fake_stderr>
    2e70:	f0f494e3          	bne	s1,a5,2d78 <_vfiprintf_r+0x3e>
    2e74:	00c9a483          	lw	s1,12(s3)
    2e78:	b701                	j	2d78 <_vfiprintf_r+0x3e>
    2e7a:	85a6                	mv	a1,s1
    2e7c:	854e                	mv	a0,s3
    2e7e:	a48ff0ef          	jal	ra,20c6 <__swsetup_r>
    2e82:	f00503e3          	beqz	a0,2d88 <memory.c.f6d1f22a+0x8>
    2e86:	557d                	li	a0,-1
    2e88:	50ba                	lw	ra,172(sp)
    2e8a:	542a                	lw	s0,168(sp)
    2e8c:	549a                	lw	s1,164(sp)
    2e8e:	590a                	lw	s2,160(sp)
    2e90:	49fa                	lw	s3,156(sp)
    2e92:	4a6a                	lw	s4,152(sp)
    2e94:	4ada                	lw	s5,148(sp)
    2e96:	4b4a                	lw	s6,144(sp)
    2e98:	4bba                	lw	s7,140(sp)
    2e9a:	4c2a                	lw	s8,136(sp)
    2e9c:	4c9a                	lw	s9,132(sp)
    2e9e:	4d0a                	lw	s10,128(sp)
    2ea0:	5df6                	lw	s11,124(sp)
    2ea2:	614d                	addi	sp,sp,176
    2ea4:	8082                	ret
    2ea6:	0405                	addi	s0,s0,1
    2ea8:	b731                	j	2db4 <memory.c.f6d1f22a+0x34>
    2eaa:	420b0713          	addi	a4,s6,1056
    2eae:	8d19                	sub	a0,a0,a4
    2eb0:	00ad9533          	sll	a0,s11,a0
    2eb4:	8fc9                	or	a5,a5,a0
    2eb6:	c83e                	sw	a5,16(sp)
    2eb8:	8922                	mv	s2,s0
    2eba:	b781                	j	2dfa <memory.c.f6d1f22a+0x7a>
    2ebc:	4732                	lw	a4,12(sp)
    2ebe:	00470693          	addi	a3,a4,4
    2ec2:	4318                	lw	a4,0(a4)
    2ec4:	c636                	sw	a3,12(sp)
    2ec6:	02074963          	bltz	a4,2ef8 <soc_ctrl.c.866c9c8a+0x14>
    2eca:	ce3a                	sw	a4,28(sp)
    2ecc:	00044703          	lbu	a4,0(s0)
    2ed0:	02e00793          	li	a5,46
    2ed4:	06f71063          	bne	a4,a5,2f34 <soc_ctrl.c.866c9c8a+0x50>
    2ed8:	00144703          	lbu	a4,1(s0)
    2edc:	02a00793          	li	a5,42
    2ee0:	02f71b63          	bne	a4,a5,2f16 <soc_ctrl.c.866c9c8a+0x32>
    2ee4:	47b2                	lw	a5,12(sp)
    2ee6:	0409                	addi	s0,s0,2
    2ee8:	00478713          	addi	a4,a5,4
    2eec:	439c                	lw	a5,0(a5)
    2eee:	c63a                	sw	a4,12(sp)
    2ef0:	0207c163          	bltz	a5,2f12 <soc_ctrl.c.866c9c8a+0x2e>
    2ef4:	ca3e                	sw	a5,20(sp)
    2ef6:	a83d                	j	2f34 <soc_ctrl.c.866c9c8a+0x50>
    2ef8:	40e00733          	neg	a4,a4
    2efc:	0027e793          	ori	a5,a5,2
    2f00:	ce3a                	sw	a4,28(sp)
    2f02:	c83e                	sw	a5,16(sp)
    2f04:	b7e1                	j	2ecc <memory.c.f6d1f22a+0x14c>
    2f06:	02a787b3          	mul	a5,a5,a0
    2f0a:	842e                	mv	s0,a1
    2f0c:	4685                	li	a3,1
    2f0e:	97ba                	add	a5,a5,a4
    2f10:	bf05                	j	2e40 <memory.c.f6d1f22a+0xc0>
    2f12:	57fd                	li	a5,-1
    2f14:	b7c5                	j	2ef4 <soc_ctrl.c.866c9c8a+0x10>
    2f16:	0405                	addi	s0,s0,1
    2f18:	ca02                	sw	zero,20(sp)
    2f1a:	4681                	li	a3,0
    2f1c:	4781                	li	a5,0
    2f1e:	4625                	li	a2,9
    2f20:	4529                	li	a0,10
    2f22:	00044703          	lbu	a4,0(s0)
    2f26:	00140593          	addi	a1,s0,1
    2f2a:	fd070713          	addi	a4,a4,-48
    2f2e:	04e67d63          	bgeu	a2,a4,2f88 <soc_ctrl.c.866c9c8a+0xa4>
    2f32:	f2e9                	bnez	a3,2ef4 <soc_ctrl.c.866c9c8a+0x10>
    2f34:	00044583          	lbu	a1,0(s0)
    2f38:	460d                	li	a2,3
    2f3a:	428b8513          	addi	a0,s7,1064 # 80428 <__sf_fake_stdout+0x28>
    2f3e:	2e95                	jal	32b2 <memchr>
    2f40:	cd01                	beqz	a0,2f58 <soc_ctrl.c.866c9c8a+0x74>
    2f42:	428b8793          	addi	a5,s7,1064
    2f46:	8d1d                	sub	a0,a0,a5
    2f48:	47c2                	lw	a5,16(sp)
    2f4a:	04000713          	li	a4,64
    2f4e:	00a71733          	sll	a4,a4,a0
    2f52:	8fd9                	or	a5,a5,a4
    2f54:	0405                	addi	s0,s0,1
    2f56:	c83e                	sw	a5,16(sp)
    2f58:	00044583          	lbu	a1,0(s0)
    2f5c:	4619                	li	a2,6
    2f5e:	42cd0513          	addi	a0,s10,1068 # 8042c <__sf_fake_stdout+0x2c>
    2f62:	00140913          	addi	s2,s0,1
    2f66:	02b10423          	sb	a1,40(sp)
    2f6a:	26a1                	jal	32b2 <memchr>
    2f6c:	cd31                	beqz	a0,2fc8 <soc_ctrl.c.866c9c8a+0xe4>
    2f6e:	020a9763          	bnez	s5,2f9c <soc_ctrl.c.866c9c8a+0xb8>
    2f72:	4742                	lw	a4,16(sp)
    2f74:	47b2                	lw	a5,12(sp)
    2f76:	10077713          	andi	a4,a4,256
    2f7a:	cf09                	beqz	a4,2f94 <soc_ctrl.c.866c9c8a+0xb0>
    2f7c:	0791                	addi	a5,a5,4
    2f7e:	c63e                	sw	a5,12(sp)
    2f80:	5792                	lw	a5,36(sp)
    2f82:	97d2                	add	a5,a5,s4
    2f84:	d23e                	sw	a5,36(sp)
    2f86:	b535                	j	2db2 <memory.c.f6d1f22a+0x32>
    2f88:	02a787b3          	mul	a5,a5,a0
    2f8c:	842e                	mv	s0,a1
    2f8e:	4685                	li	a3,1
    2f90:	97ba                	add	a5,a5,a4
    2f92:	bf41                	j	2f22 <soc_ctrl.c.866c9c8a+0x3e>
    2f94:	079d                	addi	a5,a5,7
    2f96:	9be1                	andi	a5,a5,-8
    2f98:	07a1                	addi	a5,a5,8
    2f9a:	b7d5                	j	2f7e <soc_ctrl.c.866c9c8a+0x9a>
    2f9c:	0078                	addi	a4,sp,12
    2f9e:	cd6c0693          	addi	a3,s8,-810 # 2cd6 <__sfputs_r>
    2fa2:	8626                	mv	a2,s1
    2fa4:	080c                	addi	a1,sp,16
    2fa6:	854e                	mv	a0,s3
    2fa8:	00000097          	auipc	ra,0x0
    2fac:	000000e7          	jalr	zero # 0 <__vector_start>
    2fb0:	57fd                	li	a5,-1
    2fb2:	8a2a                	mv	s4,a0
    2fb4:	fcf516e3          	bne	a0,a5,2f80 <soc_ctrl.c.866c9c8a+0x9c>
    2fb8:	00c4d783          	lhu	a5,12(s1)
    2fbc:	0407f793          	andi	a5,a5,64
    2fc0:	ec0793e3          	bnez	a5,2e86 <memory.c.f6d1f22a+0x106>
    2fc4:	5512                	lw	a0,36(sp)
    2fc6:	b5c9                	j	2e88 <memory.c.f6d1f22a+0x108>
    2fc8:	0078                	addi	a4,sp,12
    2fca:	cd6c0693          	addi	a3,s8,-810
    2fce:	8626                	mv	a2,s1
    2fd0:	080c                	addi	a1,sp,16
    2fd2:	854e                	mv	a0,s3
    2fd4:	297d                	jal	3492 <_printf_i>
    2fd6:	bfe9                	j	2fb0 <soc_ctrl.c.866c9c8a+0xcc>

00002fd8 <vfiprintf>:
    2fd8:	000807b7          	lui	a5,0x80
    2fdc:	86b2                	mv	a3,a2
    2fde:	862e                	mv	a2,a1
    2fe0:	85aa                	mv	a1,a0
    2fe2:	61c7a503          	lw	a0,1564(a5) # 8061c <_impure_ptr>
    2fe6:	bb91                	j	2d3a <_vfiprintf_r>

00002fe8 <__sfvwrite_r>:
    2fe8:	461c                	lw	a5,8(a2)
    2fea:	e781                	bnez	a5,2ff2 <__sfvwrite_r+0xa>
    2fec:	4781                	li	a5,0
    2fee:	853e                	mv	a0,a5
    2ff0:	8082                	ret
    2ff2:	00c5d783          	lhu	a5,12(a1)
    2ff6:	715d                	addi	sp,sp,-80
    2ff8:	c4a2                	sw	s0,72(sp)
    2ffa:	c0ca                	sw	s2,64(sp)
    2ffc:	dc52                	sw	s4,56(sp)
    2ffe:	c686                	sw	ra,76(sp)
    3000:	c2a6                	sw	s1,68(sp)
    3002:	de4e                	sw	s3,60(sp)
    3004:	da56                	sw	s5,52(sp)
    3006:	d85a                	sw	s6,48(sp)
    3008:	d65e                	sw	s7,44(sp)
    300a:	d462                	sw	s8,40(sp)
    300c:	d266                	sw	s9,36(sp)
    300e:	d06a                	sw	s10,32(sp)
    3010:	ce6e                	sw	s11,28(sp)
    3012:	8ba1                	andi	a5,a5,8
    3014:	892a                	mv	s2,a0
    3016:	842e                	mv	s0,a1
    3018:	8a32                	mv	s4,a2
    301a:	cbd9                	beqz	a5,30b0 <__sfvwrite_r+0xc8>
    301c:	499c                	lw	a5,16(a1)
    301e:	cbc9                	beqz	a5,30b0 <__sfvwrite_r+0xc8>
    3020:	00c45783          	lhu	a5,12(s0)
    3024:	000a2983          	lw	s3,0(s4)
    3028:	0027f713          	andi	a4,a5,2
    302c:	e37d                	bnez	a4,3112 <__sfvwrite_r+0x12a>
    302e:	8b85                	andi	a5,a5,1
    3030:	14078f63          	beqz	a5,318e <uart.c.04492fba+0x4c>
    3034:	4b81                	li	s7,0
    3036:	4501                	li	a0,0
    3038:	4b01                	li	s6,0
    303a:	4a81                	li	s5,0
    303c:	220a8d63          	beqz	s5,3276 <uart.c.04492fba+0x134>
    3040:	e919                	bnez	a0,3056 <__sfvwrite_r+0x6e>
    3042:	8656                	mv	a2,s5
    3044:	45a9                	li	a1,10
    3046:	855a                	mv	a0,s6
    3048:	24ad                	jal	32b2 <memchr>
    304a:	001a8b93          	addi	s7,s5,1
    304e:	c501                	beqz	a0,3056 <__sfvwrite_r+0x6e>
    3050:	0505                	addi	a0,a0,1
    3052:	41650bb3          	sub	s7,a0,s6
    3056:	8c5e                	mv	s8,s7
    3058:	017af363          	bgeu	s5,s7,305e <__sfvwrite_r+0x76>
    305c:	8c56                	mv	s8,s5
    305e:	4008                	lw	a0,0(s0)
    3060:	481c                	lw	a5,16(s0)
    3062:	4404                	lw	s1,8(s0)
    3064:	4854                	lw	a3,20(s0)
    3066:	20a7ff63          	bgeu	a5,a0,3284 <uart.c.04492fba+0x142>
    306a:	94b6                	add	s1,s1,a3
    306c:	2184dc63          	bge	s1,s8,3284 <uart.c.04492fba+0x142>
    3070:	85da                	mv	a1,s6
    3072:	8626                	mv	a2,s1
    3074:	24bd                	jal	32e2 <memmove>
    3076:	401c                	lw	a5,0(s0)
    3078:	85a2                	mv	a1,s0
    307a:	854a                	mv	a0,s2
    307c:	97a6                	add	a5,a5,s1
    307e:	c01c                	sw	a5,0(s0)
    3080:	be4ff0ef          	jal	ra,2464 <_fflush_r>
    3084:	0e051d63          	bnez	a0,317e <uart.c.04492fba+0x3c>
    3088:	409b8bb3          	sub	s7,s7,s1
    308c:	4505                	li	a0,1
    308e:	000b9763          	bnez	s7,309c <__sfvwrite_r+0xb4>
    3092:	85a2                	mv	a1,s0
    3094:	854a                	mv	a0,s2
    3096:	bceff0ef          	jal	ra,2464 <_fflush_r>
    309a:	e175                	bnez	a0,317e <uart.c.04492fba+0x3c>
    309c:	008a2783          	lw	a5,8(s4)
    30a0:	9b26                	add	s6,s6,s1
    30a2:	409a8ab3          	sub	s5,s5,s1
    30a6:	8f85                	sub	a5,a5,s1
    30a8:	00fa2423          	sw	a5,8(s4)
    30ac:	fbc1                	bnez	a5,303c <__sfvwrite_r+0x54>
    30ae:	a089                	j	30f0 <__sfvwrite_r+0x108>
    30b0:	85a2                	mv	a1,s0
    30b2:	854a                	mv	a0,s2
    30b4:	812ff0ef          	jal	ra,20c6 <__swsetup_r>
    30b8:	57fd                	li	a5,-1
    30ba:	d13d                	beqz	a0,3020 <__sfvwrite_r+0x38>
    30bc:	a81d                	j	30f2 <__sfvwrite_r+0x10a>
    30be:	0009aa83          	lw	s5,0(s3)
    30c2:	0049a483          	lw	s1,4(s3)
    30c6:	09a1                	addi	s3,s3,8
    30c8:	541c                	lw	a5,40(s0)
    30ca:	500c                	lw	a1,32(s0)
    30cc:	d8ed                	beqz	s1,30be <__sfvwrite_r+0xd6>
    30ce:	86a6                	mv	a3,s1
    30d0:	009b7363          	bgeu	s6,s1,30d6 <__sfvwrite_r+0xee>
    30d4:	86da                	mv	a3,s6
    30d6:	8656                	mv	a2,s5
    30d8:	854a                	mv	a0,s2
    30da:	9782                	jalr	a5
    30dc:	0aa05163          	blez	a0,317e <uart.c.04492fba+0x3c>
    30e0:	008a2783          	lw	a5,8(s4)
    30e4:	9aaa                	add	s5,s5,a0
    30e6:	8c89                	sub	s1,s1,a0
    30e8:	8f89                	sub	a5,a5,a0
    30ea:	00fa2423          	sw	a5,8(s4)
    30ee:	ffe9                	bnez	a5,30c8 <__sfvwrite_r+0xe0>
    30f0:	4781                	li	a5,0
    30f2:	40b6                	lw	ra,76(sp)
    30f4:	4426                	lw	s0,72(sp)
    30f6:	4496                	lw	s1,68(sp)
    30f8:	4906                	lw	s2,64(sp)
    30fa:	59f2                	lw	s3,60(sp)
    30fc:	5a62                	lw	s4,56(sp)
    30fe:	5ad2                	lw	s5,52(sp)
    3100:	5b42                	lw	s6,48(sp)
    3102:	5bb2                	lw	s7,44(sp)
    3104:	5c22                	lw	s8,40(sp)
    3106:	5c92                	lw	s9,36(sp)
    3108:	5d02                	lw	s10,32(sp)
    310a:	4df2                	lw	s11,28(sp)
    310c:	853e                	mv	a0,a5
    310e:	6161                	addi	sp,sp,80
    3110:	8082                	ret
    3112:	80000b37          	lui	s6,0x80000
    3116:	4a81                	li	s5,0
    3118:	4481                	li	s1,0
    311a:	c00b4b13          	xori	s6,s6,-1024
    311e:	b76d                	j	30c8 <__sfvwrite_r+0xe0>
    3120:	0009aa83          	lw	s5,0(s3)
    3124:	0049ad03          	lw	s10,4(s3)
    3128:	09a1                	addi	s3,s3,8
    312a:	00c41703          	lh	a4,12(s0)
    312e:	4008                	lw	a0,0(s0)
    3130:	4410                	lw	a2,8(s0)
    3132:	fe0d07e3          	beqz	s10,3120 <__sfvwrite_r+0x138>
    3136:	01071793          	slli	a5,a4,0x10
    313a:	20077713          	andi	a4,a4,512
    313e:	83c1                	srli	a5,a5,0x10
    3140:	c365                	beqz	a4,3220 <uart.c.04492fba+0xde>
    3142:	08cd6663          	bltu	s10,a2,31ce <uart.c.04492fba+0x8c>
    3146:	4807f713          	andi	a4,a5,1152
    314a:	c351                	beqz	a4,31ce <uart.c.04492fba+0x8c>
    314c:	4844                	lw	s1,20(s0)
    314e:	480c                	lw	a1,16(s0)
    3150:	029c04b3          	mul	s1,s8,s1
    3154:	40b50db3          	sub	s11,a0,a1
    3158:	001d8713          	addi	a4,s11,1
    315c:	976a                	add	a4,a4,s10
    315e:	0394c4b3          	div	s1,s1,s9
    3162:	00e4f363          	bgeu	s1,a4,3168 <uart.c.04492fba+0x26>
    3166:	84ba                	mv	s1,a4
    3168:	4007f793          	andi	a5,a5,1024
    316c:	cbd1                	beqz	a5,3200 <uart.c.04492fba+0xbe>
    316e:	85a6                	mv	a1,s1
    3170:	854a                	mv	a0,s2
    3172:	fc8ff0ef          	jal	ra,293a <_malloc_r>
    3176:	e51d                	bnez	a0,31a4 <uart.c.04492fba+0x62>
    3178:	47b1                	li	a5,12
    317a:	00f92023          	sw	a5,0(s2)
    317e:	00c45783          	lhu	a5,12(s0)
    3182:	0407e793          	ori	a5,a5,64
    3186:	00f41623          	sh	a5,12(s0)
    318a:	57fd                	li	a5,-1
    318c:	b79d                	j	30f2 <__sfvwrite_r+0x10a>
    318e:	80000b37          	lui	s6,0x80000
    3192:	ffeb4b93          	xori	s7,s6,-2
    3196:	4a81                	li	s5,0
    3198:	4d01                	li	s10,0
    319a:	fffb4b13          	not	s6,s6
    319e:	4c0d                	li	s8,3
    31a0:	4c89                	li	s9,2
    31a2:	b761                	j	312a <__sfvwrite_r+0x142>
    31a4:	480c                	lw	a1,16(s0)
    31a6:	866e                	mv	a2,s11
    31a8:	c62a                	sw	a0,12(sp)
    31aa:	220d                	jal	32cc <memcpy>
    31ac:	00c45703          	lhu	a4,12(s0)
    31b0:	47b2                	lw	a5,12(sp)
    31b2:	b7f77713          	andi	a4,a4,-1153
    31b6:	08076713          	ori	a4,a4,128
    31ba:	00e41623          	sh	a4,12(s0)
    31be:	c81c                	sw	a5,16(s0)
    31c0:	c844                	sw	s1,20(s0)
    31c2:	97ee                	add	a5,a5,s11
    31c4:	41b484b3          	sub	s1,s1,s11
    31c8:	c01c                	sw	a5,0(s0)
    31ca:	866a                	mv	a2,s10
    31cc:	c404                	sw	s1,8(s0)
    31ce:	84ea                	mv	s1,s10
    31d0:	00cd7363          	bgeu	s10,a2,31d6 <uart.c.04492fba+0x94>
    31d4:	866a                	mv	a2,s10
    31d6:	4008                	lw	a0,0(s0)
    31d8:	85d6                	mv	a1,s5
    31da:	c632                	sw	a2,12(sp)
    31dc:	2219                	jal	32e2 <memmove>
    31de:	441c                	lw	a5,8(s0)
    31e0:	4632                	lw	a2,12(sp)
    31e2:	8f91                	sub	a5,a5,a2
    31e4:	c41c                	sw	a5,8(s0)
    31e6:	401c                	lw	a5,0(s0)
    31e8:	97b2                	add	a5,a5,a2
    31ea:	c01c                	sw	a5,0(s0)
    31ec:	008a2783          	lw	a5,8(s4)
    31f0:	9aa6                	add	s5,s5,s1
    31f2:	409d0d33          	sub	s10,s10,s1
    31f6:	8f85                	sub	a5,a5,s1
    31f8:	00fa2423          	sw	a5,8(s4)
    31fc:	f79d                	bnez	a5,312a <__sfvwrite_r+0x142>
    31fe:	bdcd                	j	30f0 <__sfvwrite_r+0x108>
    3200:	8626                	mv	a2,s1
    3202:	854a                	mv	a0,s2
    3204:	2211                	jal	3308 <_realloc_r>
    3206:	87aa                	mv	a5,a0
    3208:	f95d                	bnez	a0,31be <uart.c.04492fba+0x7c>
    320a:	480c                	lw	a1,16(s0)
    320c:	854a                	mv	a0,s2
    320e:	e8aff0ef          	jal	ra,2898 <_free_r>
    3212:	00c45783          	lhu	a5,12(s0)
    3216:	f7f7f793          	andi	a5,a5,-129
    321a:	00f41623          	sh	a5,12(s0)
    321e:	bfa9                	j	3178 <uart.c.04492fba+0x36>
    3220:	481c                	lw	a5,16(s0)
    3222:	00a7e563          	bltu	a5,a0,322c <uart.c.04492fba+0xea>
    3226:	4854                	lw	a3,20(s0)
    3228:	02dd7663          	bgeu	s10,a3,3254 <uart.c.04492fba+0x112>
    322c:	84b2                	mv	s1,a2
    322e:	00cd7363          	bgeu	s10,a2,3234 <uart.c.04492fba+0xf2>
    3232:	84ea                	mv	s1,s10
    3234:	8626                	mv	a2,s1
    3236:	85d6                	mv	a1,s5
    3238:	206d                	jal	32e2 <memmove>
    323a:	441c                	lw	a5,8(s0)
    323c:	4018                	lw	a4,0(s0)
    323e:	8f85                	sub	a5,a5,s1
    3240:	9726                	add	a4,a4,s1
    3242:	c41c                	sw	a5,8(s0)
    3244:	c018                	sw	a4,0(s0)
    3246:	f3dd                	bnez	a5,31ec <uart.c.04492fba+0xaa>
    3248:	85a2                	mv	a1,s0
    324a:	854a                	mv	a0,s2
    324c:	a18ff0ef          	jal	ra,2464 <_fflush_r>
    3250:	dd51                	beqz	a0,31ec <uart.c.04492fba+0xaa>
    3252:	b735                	j	317e <uart.c.04492fba+0x3c>
    3254:	87da                	mv	a5,s6
    3256:	01abe363          	bltu	s7,s10,325c <uart.c.04492fba+0x11a>
    325a:	87ea                	mv	a5,s10
    325c:	02d7c7b3          	div	a5,a5,a3
    3260:	5418                	lw	a4,40(s0)
    3262:	500c                	lw	a1,32(s0)
    3264:	8656                	mv	a2,s5
    3266:	854a                	mv	a0,s2
    3268:	02d786b3          	mul	a3,a5,a3
    326c:	9702                	jalr	a4
    326e:	84aa                	mv	s1,a0
    3270:	f6a04ee3          	bgtz	a0,31ec <uart.c.04492fba+0xaa>
    3274:	b729                	j	317e <uart.c.04492fba+0x3c>
    3276:	0009ab03          	lw	s6,0(s3)
    327a:	0049aa83          	lw	s5,4(s3)
    327e:	4501                	li	a0,0
    3280:	09a1                	addi	s3,s3,8
    3282:	bb6d                	j	303c <__sfvwrite_r+0x54>
    3284:	00dc4b63          	blt	s8,a3,329a <uart.c.04492fba+0x158>
    3288:	541c                	lw	a5,40(s0)
    328a:	500c                	lw	a1,32(s0)
    328c:	865a                	mv	a2,s6
    328e:	854a                	mv	a0,s2
    3290:	9782                	jalr	a5
    3292:	84aa                	mv	s1,a0
    3294:	dea04ae3          	bgtz	a0,3088 <__sfvwrite_r+0xa0>
    3298:	b5dd                	j	317e <uart.c.04492fba+0x3c>
    329a:	8662                	mv	a2,s8
    329c:	85da                	mv	a1,s6
    329e:	2091                	jal	32e2 <memmove>
    32a0:	441c                	lw	a5,8(s0)
    32a2:	84e2                	mv	s1,s8
    32a4:	418787b3          	sub	a5,a5,s8
    32a8:	c41c                	sw	a5,8(s0)
    32aa:	401c                	lw	a5,0(s0)
    32ac:	97e2                	add	a5,a5,s8
    32ae:	c01c                	sw	a5,0(s0)
    32b0:	bbe1                	j	3088 <__sfvwrite_r+0xa0>

000032b2 <memchr>:
    32b2:	0ff5f593          	zext.b	a1,a1
    32b6:	962a                	add	a2,a2,a0
    32b8:	00c51463          	bne	a0,a2,32c0 <memchr+0xe>
    32bc:	4501                	li	a0,0
    32be:	8082                	ret
    32c0:	00054783          	lbu	a5,0(a0)
    32c4:	feb78de3          	beq	a5,a1,32be <memchr+0xc>
    32c8:	0505                	addi	a0,a0,1
    32ca:	b7fd                	j	32b8 <memchr+0x6>

000032cc <memcpy>:
    32cc:	832a                	mv	t1,a0
    32ce:	ca09                	beqz	a2,32e0 <memcpy+0x14>
    32d0:	00058383          	lb	t2,0(a1)
    32d4:	00730023          	sb	t2,0(t1)
    32d8:	167d                	addi	a2,a2,-1
    32da:	0305                	addi	t1,t1,1
    32dc:	0585                	addi	a1,a1,1
    32de:	fa6d                	bnez	a2,32d0 <memcpy+0x4>
    32e0:	8082                	ret

000032e2 <memmove>:
    32e2:	c215                	beqz	a2,3306 <memmove+0x24>
    32e4:	832a                	mv	t1,a0
    32e6:	4685                	li	a3,1
    32e8:	00b56763          	bltu	a0,a1,32f6 <memmove+0x14>
    32ec:	56fd                	li	a3,-1
    32ee:	fff60713          	addi	a4,a2,-1
    32f2:	933a                	add	t1,t1,a4
    32f4:	95ba                	add	a1,a1,a4
    32f6:	00058383          	lb	t2,0(a1)
    32fa:	00730023          	sb	t2,0(t1)
    32fe:	167d                	addi	a2,a2,-1
    3300:	9336                	add	t1,t1,a3
    3302:	95b6                	add	a1,a1,a3
    3304:	fa6d                	bnez	a2,32f6 <memmove+0x14>
    3306:	8082                	ret

00003308 <_realloc_r>:
    3308:	1101                	addi	sp,sp,-32
    330a:	cc22                	sw	s0,24(sp)
    330c:	ce06                	sw	ra,28(sp)
    330e:	ca26                	sw	s1,20(sp)
    3310:	c84a                	sw	s2,16(sp)
    3312:	c64e                	sw	s3,12(sp)
    3314:	c452                	sw	s4,8(sp)
    3316:	8432                	mv	s0,a2
    3318:	e999                	bnez	a1,332e <_realloc_r+0x26>
    331a:	4462                	lw	s0,24(sp)
    331c:	40f2                	lw	ra,28(sp)
    331e:	44d2                	lw	s1,20(sp)
    3320:	4942                	lw	s2,16(sp)
    3322:	49b2                	lw	s3,12(sp)
    3324:	4a22                	lw	s4,8(sp)
    3326:	85b2                	mv	a1,a2
    3328:	6105                	addi	sp,sp,32
    332a:	e10ff06f          	j	293a <_malloc_r>
    332e:	ee09                	bnez	a2,3348 <_realloc_r+0x40>
    3330:	d68ff0ef          	jal	ra,2898 <_free_r>
    3334:	4481                	li	s1,0
    3336:	40f2                	lw	ra,28(sp)
    3338:	4462                	lw	s0,24(sp)
    333a:	4942                	lw	s2,16(sp)
    333c:	49b2                	lw	s3,12(sp)
    333e:	4a22                	lw	s4,8(sp)
    3340:	8526                	mv	a0,s1
    3342:	44d2                	lw	s1,20(sp)
    3344:	6105                	addi	sp,sp,32
    3346:	8082                	ret
    3348:	8a2a                	mv	s4,a0
    334a:	892e                	mv	s2,a1
    334c:	2665                	jal	36f4 <_malloc_usable_size_r>
    334e:	89aa                	mv	s3,a0
    3350:	00856763          	bltu	a0,s0,335e <_realloc_r+0x56>
    3354:	00155793          	srli	a5,a0,0x1
    3358:	84ca                	mv	s1,s2
    335a:	fc87eee3          	bltu	a5,s0,3336 <_realloc_r+0x2e>
    335e:	85a2                	mv	a1,s0
    3360:	8552                	mv	a0,s4
    3362:	dd8ff0ef          	jal	ra,293a <_malloc_r>
    3366:	84aa                	mv	s1,a0
    3368:	d579                	beqz	a0,3336 <_realloc_r+0x2e>
    336a:	8622                	mv	a2,s0
    336c:	0089f363          	bgeu	s3,s0,3372 <_realloc_r+0x6a>
    3370:	864e                	mv	a2,s3
    3372:	85ca                	mv	a1,s2
    3374:	8526                	mv	a0,s1
    3376:	3f99                	jal	32cc <memcpy>
    3378:	85ca                	mv	a1,s2
    337a:	8552                	mv	a0,s4
    337c:	d1cff0ef          	jal	ra,2898 <_free_r>
    3380:	bf5d                	j	3336 <_realloc_r+0x2e>

00003382 <_printf_common>:
    3382:	7179                	addi	sp,sp,-48
    3384:	cc52                	sw	s4,24(sp)
    3386:	499c                	lw	a5,16(a1)
    3388:	8a3a                	mv	s4,a4
    338a:	4598                	lw	a4,8(a1)
    338c:	d422                	sw	s0,40(sp)
    338e:	d04a                	sw	s2,32(sp)
    3390:	ce4e                	sw	s3,28(sp)
    3392:	ca56                	sw	s5,20(sp)
    3394:	d606                	sw	ra,44(sp)
    3396:	d226                	sw	s1,36(sp)
    3398:	c85a                	sw	s6,16(sp)
    339a:	c65e                	sw	s7,12(sp)
    339c:	89aa                	mv	s3,a0
    339e:	842e                	mv	s0,a1
    33a0:	8932                	mv	s2,a2
    33a2:	8ab6                	mv	s5,a3
    33a4:	00e7d363          	bge	a5,a4,33aa <_printf_common+0x28>
    33a8:	87ba                	mv	a5,a4
    33aa:	00f92023          	sw	a5,0(s2)
    33ae:	04344703          	lbu	a4,67(s0)
    33b2:	c701                	beqz	a4,33ba <_printf_common+0x38>
    33b4:	0785                	addi	a5,a5,1
    33b6:	00f92023          	sw	a5,0(s2)
    33ba:	401c                	lw	a5,0(s0)
    33bc:	0207f793          	andi	a5,a5,32
    33c0:	c791                	beqz	a5,33cc <_printf_common+0x4a>
    33c2:	00092783          	lw	a5,0(s2)
    33c6:	0789                	addi	a5,a5,2
    33c8:	00f92023          	sw	a5,0(s2)
    33cc:	4004                	lw	s1,0(s0)
    33ce:	8899                	andi	s1,s1,6
    33d0:	e891                	bnez	s1,33e4 <_printf_common+0x62>
    33d2:	01940b13          	addi	s6,s0,25
    33d6:	5bfd                	li	s7,-1
    33d8:	445c                	lw	a5,12(s0)
    33da:	00092703          	lw	a4,0(s2)
    33de:	8f99                	sub	a5,a5,a4
    33e0:	04f4cc63          	blt	s1,a5,3438 <_printf_common+0xb6>
    33e4:	04344783          	lbu	a5,67(s0)
    33e8:	00f036b3          	snez	a3,a5
    33ec:	401c                	lw	a5,0(s0)
    33ee:	0207f793          	andi	a5,a5,32
    33f2:	eba5                	bnez	a5,3462 <_printf_common+0xe0>
    33f4:	04340613          	addi	a2,s0,67
    33f8:	85d6                	mv	a1,s5
    33fa:	854e                	mv	a0,s3
    33fc:	9a02                	jalr	s4
    33fe:	57fd                	li	a5,-1
    3400:	04f50363          	beq	a0,a5,3446 <_printf_common+0xc4>
    3404:	401c                	lw	a5,0(s0)
    3406:	4711                	li	a4,4
    3408:	4481                	li	s1,0
    340a:	8b99                	andi	a5,a5,6
    340c:	00e79963          	bne	a5,a4,341e <_printf_common+0x9c>
    3410:	4444                	lw	s1,12(s0)
    3412:	00092783          	lw	a5,0(s2)
    3416:	8c9d                	sub	s1,s1,a5
    3418:	0004d363          	bgez	s1,341e <_printf_common+0x9c>
    341c:	4481                	li	s1,0
    341e:	441c                	lw	a5,8(s0)
    3420:	4818                	lw	a4,16(s0)
    3422:	00f75463          	bge	a4,a5,342a <_printf_common+0xa8>
    3426:	8f99                	sub	a5,a5,a4
    3428:	94be                	add	s1,s1,a5
    342a:	4901                	li	s2,0
    342c:	0469                	addi	s0,s0,26
    342e:	5b7d                	li	s6,-1
    3430:	05249863          	bne	s1,s2,3480 <_printf_common+0xfe>
    3434:	4501                	li	a0,0
    3436:	a809                	j	3448 <_printf_common+0xc6>
    3438:	4685                	li	a3,1
    343a:	865a                	mv	a2,s6
    343c:	85d6                	mv	a1,s5
    343e:	854e                	mv	a0,s3
    3440:	9a02                	jalr	s4
    3442:	01751e63          	bne	a0,s7,345e <_printf_common+0xdc>
    3446:	557d                	li	a0,-1
    3448:	50b2                	lw	ra,44(sp)
    344a:	5422                	lw	s0,40(sp)
    344c:	5492                	lw	s1,36(sp)
    344e:	5902                	lw	s2,32(sp)
    3450:	49f2                	lw	s3,28(sp)
    3452:	4a62                	lw	s4,24(sp)
    3454:	4ad2                	lw	s5,20(sp)
    3456:	4b42                	lw	s6,16(sp)
    3458:	4bb2                	lw	s7,12(sp)
    345a:	6145                	addi	sp,sp,48
    345c:	8082                	ret
    345e:	0485                	addi	s1,s1,1
    3460:	bfa5                	j	33d8 <_printf_common+0x56>
    3462:	00d40733          	add	a4,s0,a3
    3466:	03000613          	li	a2,48
    346a:	04c701a3          	sb	a2,67(a4)
    346e:	04544703          	lbu	a4,69(s0)
    3472:	00168793          	addi	a5,a3,1 # 1001 <main+0xdeb>
    3476:	97a2                	add	a5,a5,s0
    3478:	0689                	addi	a3,a3,2
    347a:	04e781a3          	sb	a4,67(a5)
    347e:	bf9d                	j	33f4 <_printf_common+0x72>
    3480:	4685                	li	a3,1
    3482:	8622                	mv	a2,s0
    3484:	85d6                	mv	a1,s5
    3486:	854e                	mv	a0,s3
    3488:	9a02                	jalr	s4
    348a:	fb650ee3          	beq	a0,s6,3446 <_printf_common+0xc4>
    348e:	0905                	addi	s2,s2,1
    3490:	b745                	j	3430 <_printf_common+0xae>

00003492 <_printf_i>:
    3492:	7179                	addi	sp,sp,-48
    3494:	d422                	sw	s0,40(sp)
    3496:	d226                	sw	s1,36(sp)
    3498:	d04a                	sw	s2,32(sp)
    349a:	ce4e                	sw	s3,28(sp)
    349c:	d606                	sw	ra,44(sp)
    349e:	cc52                	sw	s4,24(sp)
    34a0:	ca56                	sw	s5,20(sp)
    34a2:	c85a                	sw	s6,16(sp)
    34a4:	0185c883          	lbu	a7,24(a1)
    34a8:	07800793          	li	a5,120
    34ac:	84aa                	mv	s1,a0
    34ae:	842e                	mv	s0,a1
    34b0:	8932                	mv	s2,a2
    34b2:	89b6                	mv	s3,a3
    34b4:	0117ee63          	bltu	a5,a7,34d0 <_printf_i+0x3e>
    34b8:	06200793          	li	a5,98
    34bc:	04358693          	addi	a3,a1,67
    34c0:	0117ed63          	bltu	a5,a7,34da <_printf_i+0x48>
    34c4:	1a088e63          	beqz	a7,3680 <_printf_i+0x1ee>
    34c8:	05800793          	li	a5,88
    34cc:	16f88f63          	beq	a7,a5,364a <_printf_i+0x1b8>
    34d0:	04240a93          	addi	s5,s0,66
    34d4:	05140123          	sb	a7,66(s0)
    34d8:	a80d                	j	350a <_printf_i+0x78>
    34da:	f9d88793          	addi	a5,a7,-99
    34de:	0ff7f793          	zext.b	a5,a5
    34e2:	4655                	li	a2,21
    34e4:	fef666e3          	bltu	a2,a5,34d0 <_printf_i+0x3e>
    34e8:	00080637          	lui	a2,0x80
    34ec:	078a                	slli	a5,a5,0x2
    34ee:	45c60613          	addi	a2,a2,1116 # 8045c <__sf_fake_stdout+0x5c>
    34f2:	97b2                	add	a5,a5,a2
    34f4:	439c                	lw	a5,0(a5)
    34f6:	8782                	jr	a5
    34f8:	431c                	lw	a5,0(a4)
    34fa:	04258a93          	addi	s5,a1,66
    34fe:	00478693          	addi	a3,a5,4
    3502:	439c                	lw	a5,0(a5)
    3504:	c314                	sw	a3,0(a4)
    3506:	04f58123          	sb	a5,66(a1)
    350a:	4785                	li	a5,1
    350c:	aa69                	j	36a6 <rv_plic.c.e296d9ea+0x20>
    350e:	419c                	lw	a5,0(a1)
    3510:	4308                	lw	a0,0(a4)
    3512:	0807f613          	andi	a2,a5,128
    3516:	00450593          	addi	a1,a0,4
    351a:	c20d                	beqz	a2,353c <_printf_i+0xaa>
    351c:	411c                	lw	a5,0(a0)
    351e:	c30c                	sw	a1,0(a4)
    3520:	00080837          	lui	a6,0x80
    3524:	0007d863          	bgez	a5,3534 <_printf_i+0xa2>
    3528:	02d00713          	li	a4,45
    352c:	40f007b3          	neg	a5,a5
    3530:	04e401a3          	sb	a4,67(s0)
    3534:	43480813          	addi	a6,a6,1076 # 80434 <__sf_fake_stdout+0x34>
    3538:	4729                	li	a4,10
    353a:	a0a1                	j	3582 <_printf_i+0xf0>
    353c:	0407f613          	andi	a2,a5,64
    3540:	411c                	lw	a5,0(a0)
    3542:	c30c                	sw	a1,0(a4)
    3544:	de71                	beqz	a2,3520 <_printf_i+0x8e>
    3546:	07c2                	slli	a5,a5,0x10
    3548:	87c1                	srai	a5,a5,0x10
    354a:	bfd9                	j	3520 <_printf_i+0x8e>
    354c:	4190                	lw	a2,0(a1)
    354e:	431c                	lw	a5,0(a4)
    3550:	08067513          	andi	a0,a2,128
    3554:	00478593          	addi	a1,a5,4
    3558:	c501                	beqz	a0,3560 <_printf_i+0xce>
    355a:	c30c                	sw	a1,0(a4)
    355c:	439c                	lw	a5,0(a5)
    355e:	a039                	j	356c <_printf_i+0xda>
    3560:	04067613          	andi	a2,a2,64
    3564:	c30c                	sw	a1,0(a4)
    3566:	da7d                	beqz	a2,355c <_printf_i+0xca>
    3568:	0007d783          	lhu	a5,0(a5)
    356c:	00080837          	lui	a6,0x80
    3570:	06f00713          	li	a4,111
    3574:	43480813          	addi	a6,a6,1076 # 80434 <__sf_fake_stdout+0x34>
    3578:	0ce88e63          	beq	a7,a4,3654 <_printf_i+0x1c2>
    357c:	4729                	li	a4,10
    357e:	040401a3          	sb	zero,67(s0)
    3582:	4050                	lw	a2,4(s0)
    3584:	c410                	sw	a2,8(s0)
    3586:	00064563          	bltz	a2,3590 <_printf_i+0xfe>
    358a:	400c                	lw	a1,0(s0)
    358c:	99ed                	andi	a1,a1,-5
    358e:	c00c                	sw	a1,0(s0)
    3590:	e399                	bnez	a5,3596 <_printf_i+0x104>
    3592:	8ab6                	mv	s5,a3
    3594:	ce19                	beqz	a2,35b2 <_printf_i+0x120>
    3596:	8ab6                	mv	s5,a3
    3598:	02e7f633          	remu	a2,a5,a4
    359c:	1afd                	addi	s5,s5,-1
    359e:	9642                	add	a2,a2,a6
    35a0:	00064603          	lbu	a2,0(a2)
    35a4:	00ca8023          	sb	a2,0(s5)
    35a8:	863e                	mv	a2,a5
    35aa:	02e7d7b3          	divu	a5,a5,a4
    35ae:	fee675e3          	bgeu	a2,a4,3598 <_printf_i+0x106>
    35b2:	47a1                	li	a5,8
    35b4:	00f71e63          	bne	a4,a5,35d0 <_printf_i+0x13e>
    35b8:	401c                	lw	a5,0(s0)
    35ba:	8b85                	andi	a5,a5,1
    35bc:	cb91                	beqz	a5,35d0 <_printf_i+0x13e>
    35be:	4058                	lw	a4,4(s0)
    35c0:	481c                	lw	a5,16(s0)
    35c2:	00e7c763          	blt	a5,a4,35d0 <_printf_i+0x13e>
    35c6:	03000793          	li	a5,48
    35ca:	fefa8fa3          	sb	a5,-1(s5)
    35ce:	1afd                	addi	s5,s5,-1
    35d0:	415686b3          	sub	a3,a3,s5
    35d4:	c814                	sw	a3,16(s0)
    35d6:	874e                	mv	a4,s3
    35d8:	86ca                	mv	a3,s2
    35da:	0070                	addi	a2,sp,12
    35dc:	85a2                	mv	a1,s0
    35de:	8526                	mv	a0,s1
    35e0:	334d                	jal	3382 <_printf_common>
    35e2:	5a7d                	li	s4,-1
    35e4:	0d451563          	bne	a0,s4,36ae <rv_plic.c.e296d9ea+0x28>
    35e8:	557d                	li	a0,-1
    35ea:	50b2                	lw	ra,44(sp)
    35ec:	5422                	lw	s0,40(sp)
    35ee:	5492                	lw	s1,36(sp)
    35f0:	5902                	lw	s2,32(sp)
    35f2:	49f2                	lw	s3,28(sp)
    35f4:	4a62                	lw	s4,24(sp)
    35f6:	4ad2                	lw	s5,20(sp)
    35f8:	4b42                	lw	s6,16(sp)
    35fa:	6145                	addi	sp,sp,48
    35fc:	8082                	ret
    35fe:	419c                	lw	a5,0(a1)
    3600:	0207e793          	ori	a5,a5,32
    3604:	c19c                	sw	a5,0(a1)
    3606:	00080837          	lui	a6,0x80
    360a:	07800893          	li	a7,120
    360e:	44880813          	addi	a6,a6,1096 # 80448 <__sf_fake_stdout+0x48>
    3612:	051402a3          	sb	a7,69(s0)
    3616:	4010                	lw	a2,0(s0)
    3618:	430c                	lw	a1,0(a4)
    361a:	08067513          	andi	a0,a2,128
    361e:	419c                	lw	a5,0(a1)
    3620:	0591                	addi	a1,a1,4
    3622:	e511                	bnez	a0,362e <_printf_i+0x19c>
    3624:	04067513          	andi	a0,a2,64
    3628:	c119                	beqz	a0,362e <_printf_i+0x19c>
    362a:	07c2                	slli	a5,a5,0x10
    362c:	83c1                	srli	a5,a5,0x10
    362e:	c30c                	sw	a1,0(a4)
    3630:	00167713          	andi	a4,a2,1
    3634:	c701                	beqz	a4,363c <_printf_i+0x1aa>
    3636:	02066613          	ori	a2,a2,32
    363a:	c010                	sw	a2,0(s0)
    363c:	4741                	li	a4,16
    363e:	f3a1                	bnez	a5,357e <_printf_i+0xec>
    3640:	4010                	lw	a2,0(s0)
    3642:	fdf67613          	andi	a2,a2,-33
    3646:	c010                	sw	a2,0(s0)
    3648:	bf1d                	j	357e <_printf_i+0xec>
    364a:	00080837          	lui	a6,0x80
    364e:	43480813          	addi	a6,a6,1076 # 80434 <__sf_fake_stdout+0x34>
    3652:	b7c1                	j	3612 <_printf_i+0x180>
    3654:	4721                	li	a4,8
    3656:	b725                	j	357e <_printf_i+0xec>
    3658:	4190                	lw	a2,0(a1)
    365a:	431c                	lw	a5,0(a4)
    365c:	49cc                	lw	a1,20(a1)
    365e:	08067813          	andi	a6,a2,128
    3662:	00478513          	addi	a0,a5,4
    3666:	00080663          	beqz	a6,3672 <_printf_i+0x1e0>
    366a:	c308                	sw	a0,0(a4)
    366c:	439c                	lw	a5,0(a5)
    366e:	c38c                	sw	a1,0(a5)
    3670:	a801                	j	3680 <_printf_i+0x1ee>
    3672:	c308                	sw	a0,0(a4)
    3674:	04067613          	andi	a2,a2,64
    3678:	439c                	lw	a5,0(a5)
    367a:	da75                	beqz	a2,366e <_printf_i+0x1dc>
    367c:	00b79023          	sh	a1,0(a5)
    3680:	00042823          	sw	zero,16(s0)
    3684:	8ab6                	mv	s5,a3
    3686:	bf81                	j	35d6 <_printf_i+0x144>
    3688:	431c                	lw	a5,0(a4)
    368a:	41d0                	lw	a2,4(a1)
    368c:	4581                	li	a1,0
    368e:	00478693          	addi	a3,a5,4
    3692:	c314                	sw	a3,0(a4)
    3694:	0007aa83          	lw	s5,0(a5)
    3698:	8556                	mv	a0,s5
    369a:	3921                	jal	32b2 <memchr>
    369c:	c501                	beqz	a0,36a4 <rv_plic.c.e296d9ea+0x1e>
    369e:	41550533          	sub	a0,a0,s5
    36a2:	c048                	sw	a0,4(s0)
    36a4:	405c                	lw	a5,4(s0)
    36a6:	c81c                	sw	a5,16(s0)
    36a8:	040401a3          	sb	zero,67(s0)
    36ac:	b72d                	j	35d6 <_printf_i+0x144>
    36ae:	4814                	lw	a3,16(s0)
    36b0:	8656                	mv	a2,s5
    36b2:	85ca                	mv	a1,s2
    36b4:	8526                	mv	a0,s1
    36b6:	9982                	jalr	s3
    36b8:	f34508e3          	beq	a0,s4,35e8 <_printf_i+0x156>
    36bc:	401c                	lw	a5,0(s0)
    36be:	8b89                	andi	a5,a5,2
    36c0:	e78d                	bnez	a5,36ea <rv_plic.c.e296d9ea+0x64>
    36c2:	47b2                	lw	a5,12(sp)
    36c4:	4448                	lw	a0,12(s0)
    36c6:	f2f552e3          	bge	a0,a5,35ea <_printf_i+0x158>
    36ca:	853e                	mv	a0,a5
    36cc:	bf39                	j	35ea <_printf_i+0x158>
    36ce:	4685                	li	a3,1
    36d0:	8656                	mv	a2,s5
    36d2:	85ca                	mv	a1,s2
    36d4:	8526                	mv	a0,s1
    36d6:	9982                	jalr	s3
    36d8:	f16508e3          	beq	a0,s6,35e8 <_printf_i+0x156>
    36dc:	0a05                	addi	s4,s4,1
    36de:	445c                	lw	a5,12(s0)
    36e0:	4732                	lw	a4,12(sp)
    36e2:	8f99                	sub	a5,a5,a4
    36e4:	fefa45e3          	blt	s4,a5,36ce <rv_plic.c.e296d9ea+0x48>
    36e8:	bfe9                	j	36c2 <rv_plic.c.e296d9ea+0x3c>
    36ea:	4a01                	li	s4,0
    36ec:	01940a93          	addi	s5,s0,25
    36f0:	5b7d                	li	s6,-1
    36f2:	b7f5                	j	36de <rv_plic.c.e296d9ea+0x58>

000036f4 <_malloc_usable_size_r>:
    36f4:	ffc5a783          	lw	a5,-4(a1)
    36f8:	ffc78513          	addi	a0,a5,-4
    36fc:	0007d563          	bgez	a5,3706 <_malloc_usable_size_r+0x12>
    3700:	95aa                	add	a1,a1,a0
    3702:	419c                	lw	a5,0(a1)
    3704:	953e                	add	a0,a0,a5
    3706:	8082                	ret

00003708 <__divdi3>:
    3708:	832a                	mv	t1,a0
    370a:	8e2e                	mv	t3,a1
    370c:	4881                	li	a7,0
    370e:	0005db63          	bgez	a1,3724 <__divdi3+0x1c>
    3712:	00a037b3          	snez	a5,a0
    3716:	40b00e33          	neg	t3,a1
    371a:	40fe0e33          	sub	t3,t3,a5
    371e:	40a00333          	neg	t1,a0
    3722:	58fd                	li	a7,-1
    3724:	0006db63          	bgez	a3,373a <__divdi3+0x32>
    3728:	00c037b3          	snez	a5,a2
    372c:	40d006b3          	neg	a3,a3
    3730:	fff8c893          	not	a7,a7
    3734:	8e9d                	sub	a3,a3,a5
    3736:	40c00633          	neg	a2,a2
    373a:	8732                	mv	a4,a2
    373c:	881a                	mv	a6,t1
    373e:	87f2                	mv	a5,t3
    3740:	20069f63          	bnez	a3,395e <__divdi3+0x256>
    3744:	000805b7          	lui	a1,0x80
    3748:	4b458593          	addi	a1,a1,1204 # 804b4 <__clz_tab>
    374c:	0cce7163          	bgeu	t3,a2,380e <__divdi3+0x106>
    3750:	66c1                	lui	a3,0x10
    3752:	0ad67763          	bgeu	a2,a3,3800 <__divdi3+0xf8>
    3756:	10063693          	sltiu	a3,a2,256
    375a:	0016c693          	xori	a3,a3,1
    375e:	068e                	slli	a3,a3,0x3
    3760:	00d65533          	srl	a0,a2,a3
    3764:	95aa                	add	a1,a1,a0
    3766:	0005c583          	lbu	a1,0(a1)
    376a:	02000513          	li	a0,32
    376e:	96ae                	add	a3,a3,a1
    3770:	40d505b3          	sub	a1,a0,a3
    3774:	00d50b63          	beq	a0,a3,378a <__divdi3+0x82>
    3778:	00be17b3          	sll	a5,t3,a1
    377c:	00d356b3          	srl	a3,t1,a3
    3780:	00b61733          	sll	a4,a2,a1
    3784:	8fd5                	or	a5,a5,a3
    3786:	00b31833          	sll	a6,t1,a1
    378a:	01075593          	srli	a1,a4,0x10
    378e:	02b7de33          	divu	t3,a5,a1
    3792:	01071613          	slli	a2,a4,0x10
    3796:	8241                	srli	a2,a2,0x10
    3798:	02b7f7b3          	remu	a5,a5,a1
    379c:	8572                	mv	a0,t3
    379e:	03c60333          	mul	t1,a2,t3
    37a2:	01079693          	slli	a3,a5,0x10
    37a6:	01085793          	srli	a5,a6,0x10
    37aa:	8fd5                	or	a5,a5,a3
    37ac:	0067fc63          	bgeu	a5,t1,37c4 <__divdi3+0xbc>
    37b0:	97ba                	add	a5,a5,a4
    37b2:	fffe0513          	addi	a0,t3,-1
    37b6:	00e7e763          	bltu	a5,a4,37c4 <__divdi3+0xbc>
    37ba:	0067f563          	bgeu	a5,t1,37c4 <__divdi3+0xbc>
    37be:	ffee0513          	addi	a0,t3,-2
    37c2:	97ba                	add	a5,a5,a4
    37c4:	406787b3          	sub	a5,a5,t1
    37c8:	02b7d333          	divu	t1,a5,a1
    37cc:	0842                	slli	a6,a6,0x10
    37ce:	01085813          	srli	a6,a6,0x10
    37d2:	02b7f7b3          	remu	a5,a5,a1
    37d6:	026606b3          	mul	a3,a2,t1
    37da:	07c2                	slli	a5,a5,0x10
    37dc:	00f86833          	or	a6,a6,a5
    37e0:	879a                	mv	a5,t1
    37e2:	00d87b63          	bgeu	a6,a3,37f8 <__divdi3+0xf0>
    37e6:	983a                	add	a6,a6,a4
    37e8:	fff30793          	addi	a5,t1,-1
    37ec:	00e86663          	bltu	a6,a4,37f8 <__divdi3+0xf0>
    37f0:	00d87463          	bgeu	a6,a3,37f8 <__divdi3+0xf0>
    37f4:	ffe30793          	addi	a5,t1,-2
    37f8:	0542                	slli	a0,a0,0x10
    37fa:	8d5d                	or	a0,a0,a5
    37fc:	4581                	li	a1,0
    37fe:	a84d                	j	38b0 <__divdi3+0x1a8>
    3800:	01000537          	lui	a0,0x1000
    3804:	46c1                	li	a3,16
    3806:	f4a66de3          	bltu	a2,a0,3760 <__divdi3+0x58>
    380a:	46e1                	li	a3,24
    380c:	bf91                	j	3760 <__divdi3+0x58>
    380e:	e211                	bnez	a2,3812 <__divdi3+0x10a>
    3810:	9002                	ebreak
    3812:	67c1                	lui	a5,0x10
    3814:	0af67863          	bgeu	a2,a5,38c4 <__divdi3+0x1bc>
    3818:	10063693          	sltiu	a3,a2,256
    381c:	0016c693          	xori	a3,a3,1
    3820:	068e                	slli	a3,a3,0x3
    3822:	00d657b3          	srl	a5,a2,a3
    3826:	95be                	add	a1,a1,a5
    3828:	0005c783          	lbu	a5,0(a1)
    382c:	97b6                	add	a5,a5,a3
    382e:	02000693          	li	a3,32
    3832:	40f685b3          	sub	a1,a3,a5
    3836:	08f69e63          	bne	a3,a5,38d2 <__divdi3+0x1ca>
    383a:	40ce07b3          	sub	a5,t3,a2
    383e:	4585                	li	a1,1
    3840:	01075313          	srli	t1,a4,0x10
    3844:	0267deb3          	divu	t4,a5,t1
    3848:	01071613          	slli	a2,a4,0x10
    384c:	8241                	srli	a2,a2,0x10
    384e:	01085693          	srli	a3,a6,0x10
    3852:	0267f7b3          	remu	a5,a5,t1
    3856:	8576                	mv	a0,t4
    3858:	03d60e33          	mul	t3,a2,t4
    385c:	07c2                	slli	a5,a5,0x10
    385e:	8fd5                	or	a5,a5,a3
    3860:	01c7fc63          	bgeu	a5,t3,3878 <__divdi3+0x170>
    3864:	97ba                	add	a5,a5,a4
    3866:	fffe8513          	addi	a0,t4,-1
    386a:	00e7e763          	bltu	a5,a4,3878 <__divdi3+0x170>
    386e:	01c7f563          	bgeu	a5,t3,3878 <__divdi3+0x170>
    3872:	ffee8513          	addi	a0,t4,-2
    3876:	97ba                	add	a5,a5,a4
    3878:	41c787b3          	sub	a5,a5,t3
    387c:	0267de33          	divu	t3,a5,t1
    3880:	0842                	slli	a6,a6,0x10
    3882:	01085813          	srli	a6,a6,0x10
    3886:	0267f7b3          	remu	a5,a5,t1
    388a:	03c606b3          	mul	a3,a2,t3
    388e:	07c2                	slli	a5,a5,0x10
    3890:	00f86833          	or	a6,a6,a5
    3894:	87f2                	mv	a5,t3
    3896:	00d87b63          	bgeu	a6,a3,38ac <__divdi3+0x1a4>
    389a:	983a                	add	a6,a6,a4
    389c:	fffe0793          	addi	a5,t3,-1
    38a0:	00e86663          	bltu	a6,a4,38ac <__divdi3+0x1a4>
    38a4:	00d87463          	bgeu	a6,a3,38ac <__divdi3+0x1a4>
    38a8:	ffee0793          	addi	a5,t3,-2
    38ac:	0542                	slli	a0,a0,0x10
    38ae:	8d5d                	or	a0,a0,a5
    38b0:	00088963          	beqz	a7,38c2 <__divdi3+0x1ba>
    38b4:	00a037b3          	snez	a5,a0
    38b8:	40b005b3          	neg	a1,a1
    38bc:	8d9d                	sub	a1,a1,a5
    38be:	40a00533          	neg	a0,a0
    38c2:	8082                	ret
    38c4:	010007b7          	lui	a5,0x1000
    38c8:	46c1                	li	a3,16
    38ca:	f4f66ce3          	bltu	a2,a5,3822 <__divdi3+0x11a>
    38ce:	46e1                	li	a3,24
    38d0:	bf89                	j	3822 <__divdi3+0x11a>
    38d2:	00b61733          	sll	a4,a2,a1
    38d6:	00fe56b3          	srl	a3,t3,a5
    38da:	01075513          	srli	a0,a4,0x10
    38de:	00be1e33          	sll	t3,t3,a1
    38e2:	00f357b3          	srl	a5,t1,a5
    38e6:	01c7e7b3          	or	a5,a5,t3
    38ea:	02a6de33          	divu	t3,a3,a0
    38ee:	01071613          	slli	a2,a4,0x10
    38f2:	8241                	srli	a2,a2,0x10
    38f4:	00b31833          	sll	a6,t1,a1
    38f8:	02a6f6b3          	remu	a3,a3,a0
    38fc:	03c60333          	mul	t1,a2,t3
    3900:	01069593          	slli	a1,a3,0x10
    3904:	0107d693          	srli	a3,a5,0x10
    3908:	8ecd                	or	a3,a3,a1
    390a:	85f2                	mv	a1,t3
    390c:	0066fc63          	bgeu	a3,t1,3924 <__divdi3+0x21c>
    3910:	96ba                	add	a3,a3,a4
    3912:	fffe0593          	addi	a1,t3,-1
    3916:	00e6e763          	bltu	a3,a4,3924 <__divdi3+0x21c>
    391a:	0066f563          	bgeu	a3,t1,3924 <__divdi3+0x21c>
    391e:	ffee0593          	addi	a1,t3,-2
    3922:	96ba                	add	a3,a3,a4
    3924:	406686b3          	sub	a3,a3,t1
    3928:	02a6d333          	divu	t1,a3,a0
    392c:	07c2                	slli	a5,a5,0x10
    392e:	83c1                	srli	a5,a5,0x10
    3930:	02a6f6b3          	remu	a3,a3,a0
    3934:	02660633          	mul	a2,a2,t1
    3938:	06c2                	slli	a3,a3,0x10
    393a:	8fd5                	or	a5,a5,a3
    393c:	869a                	mv	a3,t1
    393e:	00c7fc63          	bgeu	a5,a2,3956 <__divdi3+0x24e>
    3942:	97ba                	add	a5,a5,a4
    3944:	fff30693          	addi	a3,t1,-1
    3948:	00e7e763          	bltu	a5,a4,3956 <__divdi3+0x24e>
    394c:	00c7f563          	bgeu	a5,a2,3956 <__divdi3+0x24e>
    3950:	ffe30693          	addi	a3,t1,-2
    3954:	97ba                	add	a5,a5,a4
    3956:	05c2                	slli	a1,a1,0x10
    3958:	8f91                	sub	a5,a5,a2
    395a:	8dd5                	or	a1,a1,a3
    395c:	b5d5                	j	3840 <__divdi3+0x138>
    395e:	14de6163          	bltu	t3,a3,3aa0 <__divdi3+0x398>
    3962:	67c1                	lui	a5,0x10
    3964:	02f6ff63          	bgeu	a3,a5,39a2 <__divdi3+0x29a>
    3968:	1006b713          	sltiu	a4,a3,256
    396c:	00174713          	xori	a4,a4,1
    3970:	070e                	slli	a4,a4,0x3
    3972:	000807b7          	lui	a5,0x80
    3976:	00e6d5b3          	srl	a1,a3,a4
    397a:	4b478793          	addi	a5,a5,1204 # 804b4 <__clz_tab>
    397e:	97ae                	add	a5,a5,a1
    3980:	0007c783          	lbu	a5,0(a5)
    3984:	97ba                	add	a5,a5,a4
    3986:	02000713          	li	a4,32
    398a:	40f705b3          	sub	a1,a4,a5
    398e:	02f71163          	bne	a4,a5,39b0 <__divdi3+0x2a8>
    3992:	4505                	li	a0,1
    3994:	f1c6eee3          	bltu	a3,t3,38b0 <__divdi3+0x1a8>
    3998:	00c33533          	sltu	a0,t1,a2
    399c:	00154513          	xori	a0,a0,1
    39a0:	bf01                	j	38b0 <__divdi3+0x1a8>
    39a2:	010007b7          	lui	a5,0x1000
    39a6:	4741                	li	a4,16
    39a8:	fcf6e5e3          	bltu	a3,a5,3972 <__divdi3+0x26a>
    39ac:	4761                	li	a4,24
    39ae:	b7d1                	j	3972 <__divdi3+0x26a>
    39b0:	00f65733          	srl	a4,a2,a5
    39b4:	00b696b3          	sll	a3,a3,a1
    39b8:	8ed9                	or	a3,a3,a4
    39ba:	00fe5733          	srl	a4,t3,a5
    39be:	00be1e33          	sll	t3,t3,a1
    39c2:	00f357b3          	srl	a5,t1,a5
    39c6:	01c7e7b3          	or	a5,a5,t3
    39ca:	0106de13          	srli	t3,a3,0x10
    39ce:	03c75f33          	divu	t5,a4,t3
    39d2:	01069813          	slli	a6,a3,0x10
    39d6:	01085813          	srli	a6,a6,0x10
    39da:	00b61633          	sll	a2,a2,a1
    39de:	03c77733          	remu	a4,a4,t3
    39e2:	03e80eb3          	mul	t4,a6,t5
    39e6:	01071513          	slli	a0,a4,0x10
    39ea:	0107d713          	srli	a4,a5,0x10
    39ee:	8f49                	or	a4,a4,a0
    39f0:	857a                	mv	a0,t5
    39f2:	01d77c63          	bgeu	a4,t4,3a0a <__divdi3+0x302>
    39f6:	9736                	add	a4,a4,a3
    39f8:	ffff0513          	addi	a0,t5,-1
    39fc:	00d76763          	bltu	a4,a3,3a0a <__divdi3+0x302>
    3a00:	01d77563          	bgeu	a4,t4,3a0a <__divdi3+0x302>
    3a04:	ffef0513          	addi	a0,t5,-2
    3a08:	9736                	add	a4,a4,a3
    3a0a:	41d70733          	sub	a4,a4,t4
    3a0e:	03c75eb3          	divu	t4,a4,t3
    3a12:	07c2                	slli	a5,a5,0x10
    3a14:	83c1                	srli	a5,a5,0x10
    3a16:	03c77733          	remu	a4,a4,t3
    3a1a:	03d80833          	mul	a6,a6,t4
    3a1e:	0742                	slli	a4,a4,0x10
    3a20:	8fd9                	or	a5,a5,a4
    3a22:	8776                	mv	a4,t4
    3a24:	0107fc63          	bgeu	a5,a6,3a3c <__divdi3+0x334>
    3a28:	97b6                	add	a5,a5,a3
    3a2a:	fffe8713          	addi	a4,t4,-1
    3a2e:	00d7e763          	bltu	a5,a3,3a3c <__divdi3+0x334>
    3a32:	0107f563          	bgeu	a5,a6,3a3c <__divdi3+0x334>
    3a36:	ffee8713          	addi	a4,t4,-2
    3a3a:	97b6                	add	a5,a5,a3
    3a3c:	0542                	slli	a0,a0,0x10
    3a3e:	6ec1                	lui	t4,0x10
    3a40:	8d59                	or	a0,a0,a4
    3a42:	fffe8693          	addi	a3,t4,-1 # ffff <intt_driver.c.552d8326+0x7a68>
    3a46:	00d57733          	and	a4,a0,a3
    3a4a:	410787b3          	sub	a5,a5,a6
    3a4e:	8ef1                	and	a3,a3,a2
    3a50:	01055813          	srli	a6,a0,0x10
    3a54:	8241                	srli	a2,a2,0x10
    3a56:	02d70e33          	mul	t3,a4,a3
    3a5a:	02d806b3          	mul	a3,a6,a3
    3a5e:	02c70733          	mul	a4,a4,a2
    3a62:	02c80833          	mul	a6,a6,a2
    3a66:	00d70633          	add	a2,a4,a3
    3a6a:	010e5713          	srli	a4,t3,0x10
    3a6e:	9732                	add	a4,a4,a2
    3a70:	00d77363          	bgeu	a4,a3,3a76 <__divdi3+0x36e>
    3a74:	9876                	add	a6,a6,t4
    3a76:	01075693          	srli	a3,a4,0x10
    3a7a:	96c2                	add	a3,a3,a6
    3a7c:	02d7e063          	bltu	a5,a3,3a9c <__divdi3+0x394>
    3a80:	d6d79ee3          	bne	a5,a3,37fc <__divdi3+0xf4>
    3a84:	67c1                	lui	a5,0x10
    3a86:	17fd                	addi	a5,a5,-1
    3a88:	8f7d                	and	a4,a4,a5
    3a8a:	0742                	slli	a4,a4,0x10
    3a8c:	00fe7e33          	and	t3,t3,a5
    3a90:	00b31333          	sll	t1,t1,a1
    3a94:	9772                	add	a4,a4,t3
    3a96:	4581                	li	a1,0
    3a98:	e0e37ce3          	bgeu	t1,a4,38b0 <__divdi3+0x1a8>
    3a9c:	157d                	addi	a0,a0,-1
    3a9e:	bbb9                	j	37fc <__divdi3+0xf4>
    3aa0:	4581                	li	a1,0
    3aa2:	4501                	li	a0,0
    3aa4:	b531                	j	38b0 <__divdi3+0x1a8>

00003aa6 <__udivdi3>:
    3aa6:	832a                	mv	t1,a0
    3aa8:	88ae                	mv	a7,a1
    3aaa:	8732                	mv	a4,a2
    3aac:	882a                	mv	a6,a0
    3aae:	87ae                	mv	a5,a1
    3ab0:	20069663          	bnez	a3,3cbc <__udivdi3+0x216>
    3ab4:	000805b7          	lui	a1,0x80
    3ab8:	4b458593          	addi	a1,a1,1204 # 804b4 <__clz_tab>
    3abc:	0cc8f163          	bgeu	a7,a2,3b7e <__udivdi3+0xd8>
    3ac0:	66c1                	lui	a3,0x10
    3ac2:	0ad67763          	bgeu	a2,a3,3b70 <__udivdi3+0xca>
    3ac6:	10063693          	sltiu	a3,a2,256
    3aca:	0016c693          	xori	a3,a3,1
    3ace:	068e                	slli	a3,a3,0x3
    3ad0:	00d65533          	srl	a0,a2,a3
    3ad4:	95aa                	add	a1,a1,a0
    3ad6:	0005c583          	lbu	a1,0(a1)
    3ada:	02000513          	li	a0,32
    3ade:	96ae                	add	a3,a3,a1
    3ae0:	40d505b3          	sub	a1,a0,a3
    3ae4:	00d50b63          	beq	a0,a3,3afa <__udivdi3+0x54>
    3ae8:	00b897b3          	sll	a5,a7,a1
    3aec:	00d356b3          	srl	a3,t1,a3
    3af0:	00b61733          	sll	a4,a2,a1
    3af4:	8fd5                	or	a5,a5,a3
    3af6:	00b31833          	sll	a6,t1,a1
    3afa:	01075593          	srli	a1,a4,0x10
    3afe:	02b7d333          	divu	t1,a5,a1
    3b02:	01071613          	slli	a2,a4,0x10
    3b06:	8241                	srli	a2,a2,0x10
    3b08:	02b7f7b3          	remu	a5,a5,a1
    3b0c:	851a                	mv	a0,t1
    3b0e:	026608b3          	mul	a7,a2,t1
    3b12:	01079693          	slli	a3,a5,0x10
    3b16:	01085793          	srli	a5,a6,0x10
    3b1a:	8fd5                	or	a5,a5,a3
    3b1c:	0117fc63          	bgeu	a5,a7,3b34 <__udivdi3+0x8e>
    3b20:	97ba                	add	a5,a5,a4
    3b22:	fff30513          	addi	a0,t1,-1
    3b26:	00e7e763          	bltu	a5,a4,3b34 <__udivdi3+0x8e>
    3b2a:	0117f563          	bgeu	a5,a7,3b34 <__udivdi3+0x8e>
    3b2e:	ffe30513          	addi	a0,t1,-2
    3b32:	97ba                	add	a5,a5,a4
    3b34:	411787b3          	sub	a5,a5,a7
    3b38:	02b7d8b3          	divu	a7,a5,a1
    3b3c:	0842                	slli	a6,a6,0x10
    3b3e:	01085813          	srli	a6,a6,0x10
    3b42:	02b7f7b3          	remu	a5,a5,a1
    3b46:	031606b3          	mul	a3,a2,a7
    3b4a:	07c2                	slli	a5,a5,0x10
    3b4c:	00f86833          	or	a6,a6,a5
    3b50:	87c6                	mv	a5,a7
    3b52:	00d87b63          	bgeu	a6,a3,3b68 <__udivdi3+0xc2>
    3b56:	983a                	add	a6,a6,a4
    3b58:	fff88793          	addi	a5,a7,-1
    3b5c:	00e86663          	bltu	a6,a4,3b68 <__udivdi3+0xc2>
    3b60:	00d87463          	bgeu	a6,a3,3b68 <__udivdi3+0xc2>
    3b64:	ffe88793          	addi	a5,a7,-2
    3b68:	0542                	slli	a0,a0,0x10
    3b6a:	8d5d                	or	a0,a0,a5
    3b6c:	4581                	li	a1,0
    3b6e:	8082                	ret
    3b70:	01000537          	lui	a0,0x1000
    3b74:	46c1                	li	a3,16
    3b76:	f4a66de3          	bltu	a2,a0,3ad0 <__udivdi3+0x2a>
    3b7a:	46e1                	li	a3,24
    3b7c:	bf91                	j	3ad0 <__udivdi3+0x2a>
    3b7e:	e211                	bnez	a2,3b82 <__udivdi3+0xdc>
    3b80:	9002                	ebreak
    3b82:	67c1                	lui	a5,0x10
    3b84:	08f67f63          	bgeu	a2,a5,3c22 <__udivdi3+0x17c>
    3b88:	10063693          	sltiu	a3,a2,256
    3b8c:	0016c693          	xori	a3,a3,1
    3b90:	068e                	slli	a3,a3,0x3
    3b92:	00d657b3          	srl	a5,a2,a3
    3b96:	95be                	add	a1,a1,a5
    3b98:	0005c783          	lbu	a5,0(a1)
    3b9c:	97b6                	add	a5,a5,a3
    3b9e:	02000693          	li	a3,32
    3ba2:	40f685b3          	sub	a1,a3,a5
    3ba6:	08f69563          	bne	a3,a5,3c30 <__udivdi3+0x18a>
    3baa:	40c887b3          	sub	a5,a7,a2
    3bae:	4585                	li	a1,1
    3bb0:	01075893          	srli	a7,a4,0x10
    3bb4:	0317de33          	divu	t3,a5,a7
    3bb8:	01071613          	slli	a2,a4,0x10
    3bbc:	8241                	srli	a2,a2,0x10
    3bbe:	01085693          	srli	a3,a6,0x10
    3bc2:	0317f7b3          	remu	a5,a5,a7
    3bc6:	8572                	mv	a0,t3
    3bc8:	03c60333          	mul	t1,a2,t3
    3bcc:	07c2                	slli	a5,a5,0x10
    3bce:	8fd5                	or	a5,a5,a3
    3bd0:	0067fc63          	bgeu	a5,t1,3be8 <__udivdi3+0x142>
    3bd4:	97ba                	add	a5,a5,a4
    3bd6:	fffe0513          	addi	a0,t3,-1
    3bda:	00e7e763          	bltu	a5,a4,3be8 <__udivdi3+0x142>
    3bde:	0067f563          	bgeu	a5,t1,3be8 <__udivdi3+0x142>
    3be2:	ffee0513          	addi	a0,t3,-2
    3be6:	97ba                	add	a5,a5,a4
    3be8:	406787b3          	sub	a5,a5,t1
    3bec:	0317d333          	divu	t1,a5,a7
    3bf0:	0842                	slli	a6,a6,0x10
    3bf2:	01085813          	srli	a6,a6,0x10
    3bf6:	0317f7b3          	remu	a5,a5,a7
    3bfa:	026606b3          	mul	a3,a2,t1
    3bfe:	07c2                	slli	a5,a5,0x10
    3c00:	00f86833          	or	a6,a6,a5
    3c04:	879a                	mv	a5,t1
    3c06:	00d87b63          	bgeu	a6,a3,3c1c <__udivdi3+0x176>
    3c0a:	983a                	add	a6,a6,a4
    3c0c:	fff30793          	addi	a5,t1,-1
    3c10:	00e86663          	bltu	a6,a4,3c1c <__udivdi3+0x176>
    3c14:	00d87463          	bgeu	a6,a3,3c1c <__udivdi3+0x176>
    3c18:	ffe30793          	addi	a5,t1,-2
    3c1c:	0542                	slli	a0,a0,0x10
    3c1e:	8d5d                	or	a0,a0,a5
    3c20:	8082                	ret
    3c22:	010007b7          	lui	a5,0x1000
    3c26:	46c1                	li	a3,16
    3c28:	f6f665e3          	bltu	a2,a5,3b92 <__udivdi3+0xec>
    3c2c:	46e1                	li	a3,24
    3c2e:	b795                	j	3b92 <__udivdi3+0xec>
    3c30:	00b61733          	sll	a4,a2,a1
    3c34:	00f8d6b3          	srl	a3,a7,a5
    3c38:	01075513          	srli	a0,a4,0x10
    3c3c:	00f357b3          	srl	a5,t1,a5
    3c40:	00b31833          	sll	a6,t1,a1
    3c44:	02a6d333          	divu	t1,a3,a0
    3c48:	01071613          	slli	a2,a4,0x10
    3c4c:	00b898b3          	sll	a7,a7,a1
    3c50:	8241                	srli	a2,a2,0x10
    3c52:	0117e7b3          	or	a5,a5,a7
    3c56:	02a6f6b3          	remu	a3,a3,a0
    3c5a:	026608b3          	mul	a7,a2,t1
    3c5e:	01069593          	slli	a1,a3,0x10
    3c62:	0107d693          	srli	a3,a5,0x10
    3c66:	8ecd                	or	a3,a3,a1
    3c68:	859a                	mv	a1,t1
    3c6a:	0116fc63          	bgeu	a3,a7,3c82 <__udivdi3+0x1dc>
    3c6e:	96ba                	add	a3,a3,a4
    3c70:	fff30593          	addi	a1,t1,-1
    3c74:	00e6e763          	bltu	a3,a4,3c82 <__udivdi3+0x1dc>
    3c78:	0116f563          	bgeu	a3,a7,3c82 <__udivdi3+0x1dc>
    3c7c:	ffe30593          	addi	a1,t1,-2
    3c80:	96ba                	add	a3,a3,a4
    3c82:	411686b3          	sub	a3,a3,a7
    3c86:	02a6d8b3          	divu	a7,a3,a0
    3c8a:	07c2                	slli	a5,a5,0x10
    3c8c:	83c1                	srli	a5,a5,0x10
    3c8e:	02a6f6b3          	remu	a3,a3,a0
    3c92:	03160633          	mul	a2,a2,a7
    3c96:	06c2                	slli	a3,a3,0x10
    3c98:	8fd5                	or	a5,a5,a3
    3c9a:	86c6                	mv	a3,a7
    3c9c:	00c7fc63          	bgeu	a5,a2,3cb4 <__udivdi3+0x20e>
    3ca0:	97ba                	add	a5,a5,a4
    3ca2:	fff88693          	addi	a3,a7,-1
    3ca6:	00e7e763          	bltu	a5,a4,3cb4 <__udivdi3+0x20e>
    3caa:	00c7f563          	bgeu	a5,a2,3cb4 <__udivdi3+0x20e>
    3cae:	ffe88693          	addi	a3,a7,-2
    3cb2:	97ba                	add	a5,a5,a4
    3cb4:	05c2                	slli	a1,a1,0x10
    3cb6:	8f91                	sub	a5,a5,a2
    3cb8:	8dd5                	or	a1,a1,a3
    3cba:	bddd                	j	3bb0 <__udivdi3+0x10a>
    3cbc:	14d5e163          	bltu	a1,a3,3dfe <__udivdi3+0x358>
    3cc0:	67c1                	lui	a5,0x10
    3cc2:	02f6ff63          	bgeu	a3,a5,3d00 <__udivdi3+0x25a>
    3cc6:	1006b713          	sltiu	a4,a3,256
    3cca:	00174713          	xori	a4,a4,1
    3cce:	070e                	slli	a4,a4,0x3
    3cd0:	000807b7          	lui	a5,0x80
    3cd4:	00e6d5b3          	srl	a1,a3,a4
    3cd8:	4b478793          	addi	a5,a5,1204 # 804b4 <__clz_tab>
    3cdc:	97ae                	add	a5,a5,a1
    3cde:	0007c783          	lbu	a5,0(a5)
    3ce2:	97ba                	add	a5,a5,a4
    3ce4:	02000713          	li	a4,32
    3ce8:	40f705b3          	sub	a1,a4,a5
    3cec:	02f71163          	bne	a4,a5,3d0e <__udivdi3+0x268>
    3cf0:	4505                	li	a0,1
    3cf2:	e716eee3          	bltu	a3,a7,3b6e <__udivdi3+0xc8>
    3cf6:	00c33533          	sltu	a0,t1,a2
    3cfa:	00154513          	xori	a0,a0,1
    3cfe:	8082                	ret
    3d00:	010007b7          	lui	a5,0x1000
    3d04:	4741                	li	a4,16
    3d06:	fcf6e5e3          	bltu	a3,a5,3cd0 <__udivdi3+0x22a>
    3d0a:	4761                	li	a4,24
    3d0c:	b7d1                	j	3cd0 <__udivdi3+0x22a>
    3d0e:	00f65733          	srl	a4,a2,a5
    3d12:	00b696b3          	sll	a3,a3,a1
    3d16:	8ed9                	or	a3,a3,a4
    3d18:	00f8d733          	srl	a4,a7,a5
    3d1c:	00b898b3          	sll	a7,a7,a1
    3d20:	00f357b3          	srl	a5,t1,a5
    3d24:	0117e7b3          	or	a5,a5,a7
    3d28:	0106d893          	srli	a7,a3,0x10
    3d2c:	03175eb3          	divu	t4,a4,a7
    3d30:	01069813          	slli	a6,a3,0x10
    3d34:	01085813          	srli	a6,a6,0x10
    3d38:	00b61633          	sll	a2,a2,a1
    3d3c:	03177733          	remu	a4,a4,a7
    3d40:	03d80e33          	mul	t3,a6,t4
    3d44:	01071513          	slli	a0,a4,0x10
    3d48:	0107d713          	srli	a4,a5,0x10
    3d4c:	8f49                	or	a4,a4,a0
    3d4e:	8576                	mv	a0,t4
    3d50:	01c77c63          	bgeu	a4,t3,3d68 <__udivdi3+0x2c2>
    3d54:	9736                	add	a4,a4,a3
    3d56:	fffe8513          	addi	a0,t4,-1
    3d5a:	00d76763          	bltu	a4,a3,3d68 <__udivdi3+0x2c2>
    3d5e:	01c77563          	bgeu	a4,t3,3d68 <__udivdi3+0x2c2>
    3d62:	ffee8513          	addi	a0,t4,-2
    3d66:	9736                	add	a4,a4,a3
    3d68:	41c70733          	sub	a4,a4,t3
    3d6c:	03175e33          	divu	t3,a4,a7
    3d70:	07c2                	slli	a5,a5,0x10
    3d72:	83c1                	srli	a5,a5,0x10
    3d74:	03177733          	remu	a4,a4,a7
    3d78:	03c80833          	mul	a6,a6,t3
    3d7c:	0742                	slli	a4,a4,0x10
    3d7e:	8fd9                	or	a5,a5,a4
    3d80:	8772                	mv	a4,t3
    3d82:	0107fc63          	bgeu	a5,a6,3d9a <__udivdi3+0x2f4>
    3d86:	97b6                	add	a5,a5,a3
    3d88:	fffe0713          	addi	a4,t3,-1
    3d8c:	00d7e763          	bltu	a5,a3,3d9a <__udivdi3+0x2f4>
    3d90:	0107f563          	bgeu	a5,a6,3d9a <__udivdi3+0x2f4>
    3d94:	ffee0713          	addi	a4,t3,-2
    3d98:	97b6                	add	a5,a5,a3
    3d9a:	0542                	slli	a0,a0,0x10
    3d9c:	6e41                	lui	t3,0x10
    3d9e:	8d59                	or	a0,a0,a4
    3da0:	fffe0693          	addi	a3,t3,-1 # ffff <intt_driver.c.552d8326+0x7a68>
    3da4:	00d57733          	and	a4,a0,a3
    3da8:	410787b3          	sub	a5,a5,a6
    3dac:	8ef1                	and	a3,a3,a2
    3dae:	01055813          	srli	a6,a0,0x10
    3db2:	8241                	srli	a2,a2,0x10
    3db4:	02d708b3          	mul	a7,a4,a3
    3db8:	02d806b3          	mul	a3,a6,a3
    3dbc:	02c70733          	mul	a4,a4,a2
    3dc0:	02c80833          	mul	a6,a6,a2
    3dc4:	00d70633          	add	a2,a4,a3
    3dc8:	0108d713          	srli	a4,a7,0x10
    3dcc:	9732                	add	a4,a4,a2
    3dce:	00d77363          	bgeu	a4,a3,3dd4 <__udivdi3+0x32e>
    3dd2:	9872                	add	a6,a6,t3
    3dd4:	01075693          	srli	a3,a4,0x10
    3dd8:	96c2                	add	a3,a3,a6
    3dda:	02d7e063          	bltu	a5,a3,3dfa <__udivdi3+0x354>
    3dde:	d8d797e3          	bne	a5,a3,3b6c <__udivdi3+0xc6>
    3de2:	67c1                	lui	a5,0x10
    3de4:	17fd                	addi	a5,a5,-1
    3de6:	8f7d                	and	a4,a4,a5
    3de8:	0742                	slli	a4,a4,0x10
    3dea:	00f8f8b3          	and	a7,a7,a5
    3dee:	00b31333          	sll	t1,t1,a1
    3df2:	9746                	add	a4,a4,a7
    3df4:	4581                	li	a1,0
    3df6:	d6e37ce3          	bgeu	t1,a4,3b6e <__udivdi3+0xc8>
    3dfa:	157d                	addi	a0,a0,-1
    3dfc:	bb85                	j	3b6c <__udivdi3+0xc6>
    3dfe:	4581                	li	a1,0
    3e00:	4501                	li	a0,0
    3e02:	8082                	ret
