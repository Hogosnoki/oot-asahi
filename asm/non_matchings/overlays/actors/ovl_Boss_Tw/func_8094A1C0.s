glabel func_8094A1C0
/* 114F0 8094A1C0 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 114F4 8094A1C4 F7BA0030 */  sdc1    $f26, 0x0030($sp)
/* 114F8 8094A1C8 3C018095 */  lui     $at, %hi(D_8094B218)       ## $at = 80950000
/* 114FC 8094A1CC AFB40048 */  sw      $s4, 0x0048($sp)
/* 11500 8094A1D0 AFB30044 */  sw      $s3, 0x0044($sp)
/* 11504 8094A1D4 AFB20040 */  sw      $s2, 0x0040($sp)
/* 11508 8094A1D8 AFB00038 */  sw      $s0, 0x0038($sp)
/* 1150C 8094A1DC F7B80028 */  sdc1    $f24, 0x0028($sp)
/* 11510 8094A1E0 C43AB218 */  lwc1    $f26, %lo(D_8094B218)($at)
/* 11514 8094A1E4 AFBF004C */  sw      $ra, 0x004C($sp)
/* 11518 8094A1E8 AFB1003C */  sw      $s1, 0x003C($sp)
/* 1151C 8094A1EC F7B60020 */  sdc1    $f22, 0x0020($sp)
/* 11520 8094A1F0 F7B40018 */  sdc1    $f20, 0x0018($sp)
/* 11524 8094A1F4 3C018095 */  lui     $at, %hi(D_8094B21C)       ## $at = 80950000
/* 11528 8094A1F8 3C138095 */  lui     $s3, %hi(D_8094A86C)       ## $s3 = 80950000
/* 1152C 8094A1FC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 11530 8094A200 8CB11C44 */  lw      $s1, 0x1C44($a1)           ## 00001C44
/* 11534 8094A204 2673A86C */  addiu   $s3, $s3, %lo(D_8094A86C)  ## $s3 = 8094A86C
/* 11538 8094A208 C438B21C */  lwc1    $f24, %lo(D_8094B21C)($at)
/* 1153C 8094A20C 249204B0 */  addiu   $s2, $a0, 0x04B0           ## $s2 = 000004B0
/* 11540 8094A210 2414000C */  addiu   $s4, $zero, 0x000C         ## $s4 = 0000000C
.L8094A214:
/* 11544 8094A214 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 11548 8094A218 4600C306 */  mov.s   $f12, $f24
/* 1154C 8094A21C 4600010D */  trunc.w.s $f4, $f0
/* 11550 8094A220 860E0154 */  lh      $t6, 0x0154($s0)           ## 00000154
/* 11554 8094A224 44182000 */  mfc1    $t8, $f4
/* 11558 8094A228 00000000 */  nop
/* 1155C 8094A22C 0018CC00 */  sll     $t9, $t8, 16
/* 11560 8094A230 00194403 */  sra     $t0, $t9, 16
/* 11564 8094A234 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 11568 8094A238 00095400 */  sll     $t2, $t1, 16
/* 1156C 8094A23C 000A5C03 */  sra     $t3, $t2, 16
/* 11570 8094A240 01CB6021 */  addu    $t4, $t6, $t3
/* 11574 8094A244 A60C0154 */  sh      $t4, 0x0154($s0)           ## 00000154
/* 11578 8094A248 860D0154 */  lh      $t5, 0x0154($s0)           ## 00000154
/* 1157C 8094A24C 05A10004 */  bgez    $t5, .L8094A260
/* 11580 8094A250 31AF0003 */  andi    $t7, $t5, 0x0003           ## $t7 = 00000000
/* 11584 8094A254 11E00002 */  beq     $t7, $zero, .L8094A260
/* 11588 8094A258 00000000 */  nop
/* 1158C 8094A25C 25EFFFFC */  addiu   $t7, $t7, 0xFFFC           ## $t7 = FFFFFFFC
.L8094A260:
/* 11590 8094A260 A60F0154 */  sh      $t7, 0x0154($s0)           ## 00000154
/* 11594 8094A264 86180154 */  lh      $t8, 0x0154($s0)           ## 00000154
/* 11598 8094A268 03140019 */  multu   $t8, $s4
/* 1159C 8094A26C 0000C812 */  mflo    $t9
/* 115A0 8094A270 02794021 */  addu    $t0, $s3, $t9
/* 115A4 8094A274 8D0A0000 */  lw      $t2, 0x0000($t0)           ## 00000000
/* 115A8 8094A278 AE4A0000 */  sw      $t2, 0x0000($s2)           ## 000004B0
/* 115AC 8094A27C 8D090004 */  lw      $t1, 0x0004($t0)           ## 00000004
/* 115B0 8094A280 AE490004 */  sw      $t1, 0x0004($s2)           ## 000004B4
/* 115B4 8094A284 8D0A0008 */  lw      $t2, 0x0008($t0)           ## 00000008
/* 115B8 8094A288 AE4A0008 */  sw      $t2, 0x0008($s2)           ## 000004B8
/* 115BC 8094A28C C6260024 */  lwc1    $f6, 0x0024($s1)           ## 00000024
/* 115C0 8094A290 C60204B0 */  lwc1    $f2, 0x04B0($s0)           ## 000004B0
/* 115C4 8094A294 C628002C */  lwc1    $f8, 0x002C($s1)           ## 0000002C
/* 115C8 8094A298 C61004B8 */  lwc1    $f16, 0x04B8($s0)          ## 000004B8
/* 115CC 8094A29C 46061501 */  sub.s   $f20, $f2, $f6
/* 115D0 8094A2A0 46088581 */  sub.s   $f22, $f16, $f8
/* 115D4 8094A2A4 4614A282 */  mul.s   $f10, $f20, $f20
/* 115D8 8094A2A8 00000000 */  nop
/* 115DC 8094A2AC 4616B102 */  mul.s   $f4, $f22, $f22
/* 115E0 8094A2B0 46045180 */  add.s   $f6, $f10, $f4
/* 115E4 8094A2B4 4606D03C */  c.lt.s  $f26, $f6
/* 115E8 8094A2B8 00000000 */  nop
/* 115EC 8094A2BC 4500FFD5 */  bc1f    .L8094A214
/* 115F0 8094A2C0 00000000 */  nop
/* 115F4 8094A2C4 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 115F8 8094A2C8 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 115FC 8094A2CC 3C0143F0 */  lui     $at, 0x43F0                ## $at = 43F00000
/* 11600 8094A2D0 46081501 */  sub.s   $f20, $f2, $f8
/* 11604 8094A2D4 44810000 */  mtc1    $at, $f0                   ## $f0 = 480.00
/* 11608 8094A2D8 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 1160C 8094A2DC 46048581 */  sub.s   $f22, $f16, $f4
/* 11610 8094A2E0 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 11614 8094A2E4 3C0E8095 */  lui     $t6, %hi(func_8094A398)    ## $t6 = 80950000
/* 11618 8094A2E8 25CEA398 */  addiu   $t6, $t6, %lo(func_8094A398) ## $t6 = 8094A398
/* 1161C 8094A2EC AE0E014C */  sw      $t6, 0x014C($s0)           ## 0000014C
/* 11620 8094A2F0 4600B386 */  mov.s   $f14, $f22
/* 11624 8094A2F4 4600A306 */  mov.s   $f12, $f20
/* 11628 8094A2F8 E60004B4 */  swc1    $f0, 0x04B4($s0)           ## 000004B4
/* 1162C 8094A2FC E61204C8 */  swc1    $f18, 0x04C8($s0)          ## 000004C8
/* 11630 8094A300 E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
/* 11634 8094A304 0C03F494 */  jal     Math_atan2f
/* 11638 8094A308 460A0601 */  sub.s   $f24, $f0, $f10
/* 1163C 8094A30C 3C018095 */  lui     $at, %hi(D_8094B220)       ## $at = 80950000
/* 11640 8094A310 C43AB220 */  lwc1    $f26, %lo(D_8094B220)($at)
/* 11644 8094A314 4600C306 */  mov.s   $f12, $f24
/* 11648 8094A318 461A0182 */  mul.s   $f6, $f0, $f26
/* 1164C 8094A31C 00000000 */  nop
/* 11650 8094A320 4614A282 */  mul.s   $f10, $f20, $f20
/* 11654 8094A324 00000000 */  nop
/* 11658 8094A328 4616B102 */  mul.s   $f4, $f22, $f22
/* 1165C 8094A32C 4600320D */  trunc.w.s $f8, $f6
/* 11660 8094A330 46045000 */  add.s   $f0, $f10, $f4
/* 11664 8094A334 440C4000 */  mfc1    $t4, $f8
/* 11668 8094A338 46000384 */  sqrt.s  $f14, $f0
/* 1166C 8094A33C 0C03F494 */  jal     Math_atan2f
/* 11670 8094A340 A60C0032 */  sh      $t4, 0x0032($s0)           ## 00000032
/* 11674 8094A344 461A0182 */  mul.s   $f6, $f0, $f26
/* 11678 8094A348 3C050603 */  lui     $a1, 0x0603                ## $a1 = 06030000
/* 1167C 8094A34C 24A52BF8 */  addiu   $a1, $a1, 0x2BF8           ## $a1 = 06032BF8
/* 11680 8094A350 26040568 */  addiu   $a0, $s0, 0x0568           ## $a0 = 00000568
/* 11684 8094A354 3C06C120 */  lui     $a2, 0xC120                ## $a2 = C1200000
/* 11688 8094A358 4600320D */  trunc.w.s $f8, $f6
/* 1168C 8094A35C 440F4000 */  mfc1    $t7, $f8
/* 11690 8094A360 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 11694 8094A364 A60F0030 */  sh      $t7, 0x0030($s0)           ## 00000030
/* 11698 8094A368 8FBF004C */  lw      $ra, 0x004C($sp)
/* 1169C 8094A36C D7B40018 */  ldc1    $f20, 0x0018($sp)
/* 116A0 8094A370 D7B60020 */  ldc1    $f22, 0x0020($sp)
/* 116A4 8094A374 D7B80028 */  ldc1    $f24, 0x0028($sp)
/* 116A8 8094A378 D7BA0030 */  ldc1    $f26, 0x0030($sp)
/* 116AC 8094A37C 8FB00038 */  lw      $s0, 0x0038($sp)
/* 116B0 8094A380 8FB1003C */  lw      $s1, 0x003C($sp)
/* 116B4 8094A384 8FB20040 */  lw      $s2, 0x0040($sp)
/* 116B8 8094A388 8FB30044 */  lw      $s3, 0x0044($sp)
/* 116BC 8094A38C 8FB40048 */  lw      $s4, 0x0048($sp)
/* 116C0 8094A390 03E00008 */  jr      $ra
/* 116C4 8094A394 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000


