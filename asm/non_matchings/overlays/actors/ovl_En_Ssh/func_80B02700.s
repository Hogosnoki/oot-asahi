glabel func_80B02700
/* 00490 80B02700 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 00494 80B02704 3C0E80B0 */  lui     $t6, %hi(D_80B04554)       ## $t6 = 80B00000
/* 00498 80B02708 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 0049C 80B0270C AFA40080 */  sw      $a0, 0x0080($sp)
/* 004A0 80B02710 AFA50084 */  sw      $a1, 0x0084($sp)
/* 004A4 80B02714 25CE4554 */  addiu   $t6, $t6, %lo(D_80B04554)  ## $t6 = 80B04554
/* 004A8 80B02718 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80B04554
/* 004AC 80B0271C 27A20064 */  addiu   $v0, $sp, 0x0064           ## $v0 = FFFFFFE4
/* 004B0 80B02720 3C0980B0 */  lui     $t1, %hi(D_80B04570)       ## $t1 = 80B00000
/* 004B4 80B02724 AC580000 */  sw      $t8, 0x0000($v0)           ## FFFFFFE4
/* 004B8 80B02728 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 80B04558
/* 004BC 80B0272C 25294570 */  addiu   $t1, $t1, %lo(D_80B04570)  ## $t1 = 80B04570
/* 004C0 80B02730 27B90048 */  addiu   $t9, $sp, 0x0048           ## $t9 = FFFFFFC8
/* 004C4 80B02734 AC4F0004 */  sw      $t7, 0x0004($v0)           ## FFFFFFE8
/* 004C8 80B02738 8DD80008 */  lw      $t8, 0x0008($t6)           ## 80B0455C
/* 004CC 80B0273C 3C0D80B0 */  lui     $t5, %hi(D_80B0458C)       ## $t5 = 80B00000
/* 004D0 80B02740 25AD458C */  addiu   $t5, $t5, %lo(D_80B0458C)  ## $t5 = 80B0458C
/* 004D4 80B02744 AC580008 */  sw      $t8, 0x0008($v0)           ## FFFFFFEC
/* 004D8 80B02748 8DCF000C */  lw      $t7, 0x000C($t6)           ## 80B04560
/* 004DC 80B0274C 27AC0040 */  addiu   $t4, $sp, 0x0040           ## $t4 = FFFFFFC0
/* 004E0 80B02750 AC4F000C */  sw      $t7, 0x000C($v0)           ## FFFFFFF0
/* 004E4 80B02754 8DD80010 */  lw      $t8, 0x0010($t6)           ## 80B04564
/* 004E8 80B02758 AC580010 */  sw      $t8, 0x0010($v0)           ## FFFFFFF4
/* 004EC 80B0275C 8DCF0014 */  lw      $t7, 0x0014($t6)           ## 80B04568
/* 004F0 80B02760 AC4F0014 */  sw      $t7, 0x0014($v0)           ## FFFFFFF8
/* 004F4 80B02764 8DD80018 */  lw      $t8, 0x0018($t6)           ## 80B0456C
/* 004F8 80B02768 AC580018 */  sw      $t8, 0x0018($v0)           ## FFFFFFFC
/* 004FC 80B0276C 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80B04570
/* 00500 80B02770 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80B04574
/* 00504 80B02774 AF2B0000 */  sw      $t3, 0x0000($t9)           ## FFFFFFC8
/* 00508 80B02778 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80B04578
/* 0050C 80B0277C AF2A0004 */  sw      $t2, 0x0004($t9)           ## FFFFFFCC
/* 00510 80B02780 8D2A000C */  lw      $t2, 0x000C($t1)           ## 80B0457C
/* 00514 80B02784 AF2B0008 */  sw      $t3, 0x0008($t9)           ## FFFFFFD0
/* 00518 80B02788 8D2B0010 */  lw      $t3, 0x0010($t1)           ## 80B04580
/* 0051C 80B0278C AF2A000C */  sw      $t2, 0x000C($t9)           ## FFFFFFD4
/* 00520 80B02790 8D2A0014 */  lw      $t2, 0x0014($t1)           ## 80B04584
/* 00524 80B02794 AF2B0010 */  sw      $t3, 0x0010($t9)           ## FFFFFFD8
/* 00528 80B02798 8D2B0018 */  lw      $t3, 0x0018($t1)           ## 80B04588
/* 0052C 80B0279C AF2A0014 */  sw      $t2, 0x0014($t9)           ## FFFFFFDC
/* 00530 80B027A0 AF2B0018 */  sw      $t3, 0x0018($t9)           ## FFFFFFE0
/* 00534 80B027A4 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 80B0458C
/* 00538 80B027A8 AD8F0000 */  sw      $t7, 0x0000($t4)           ## FFFFFFC0
/* 0053C 80B027AC 99AF0006 */  lwr     $t7, 0x0006($t5)           ## 80B04592
/* 00540 80B027B0 B98F0006 */  swr     $t7, 0x0006($t4)           ## FFFFFFC6
/* 00544 80B027B4 8FA30084 */  lw      $v1, 0x0084($sp)
/* 00548 80B027B8 00031880 */  sll     $v1, $v1,  2
/* 0054C 80B027BC 00434021 */  addu    $t0, $v0, $v1
/* 00550 80B027C0 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 00554 80B027C4 AFA80030 */  sw      $t0, 0x0030($sp)
/* 00558 80B027C8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0055C 80B027CC AFA30034 */  sw      $v1, 0x0034($sp)
/* 00560 80B027D0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00564 80B027D4 8FA30034 */  lw      $v1, 0x0034($sp)
/* 00568 80B027D8 8FA80030 */  lw      $t0, 0x0030($sp)
/* 0056C 80B027DC 46802020 */  cvt.s.w $f0, $f4
/* 00570 80B027E0 8FB90084 */  lw      $t9, 0x0084($sp)
/* 00574 80B027E4 03A3C021 */  addu    $t8, $sp, $v1
/* 00578 80B027E8 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 0057C 80B027EC 03B94821 */  addu    $t1, $sp, $t9
/* 00580 80B027F0 44813000 */  mtc1    $at, $f6                   ## $f6 = -6.00
/* 00584 80B027F4 E7A0003C */  swc1    $f0, 0x003C($sp)
/* 00588 80B027F8 8F060048 */  lw      $a2, 0x0048($t8)           ## 00000048
/* 0058C 80B027FC 8D050000 */  lw      $a1, 0x0000($t0)           ## 00000000
/* 00590 80B02800 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 00594 80B02804 91290040 */  lbu     $t1, 0x0040($t1)           ## 00000040
/* 00598 80B02808 8FA40080 */  lw      $a0, 0x0080($sp)
/* 0059C 80B0280C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 005A0 80B02810 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 005A4 80B02814 AFA90014 */  sw      $t1, 0x0014($sp)
/* 005A8 80B02818 0C029468 */  jal     SkelAnime_ChangeAnim

/* 005AC 80B0281C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 005B0 80B02820 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 005B4 80B02824 C7A0003C */  lwc1    $f0, 0x003C($sp)
/* 005B8 80B02828 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
/* 005BC 80B0282C 03E00008 */  jr      $ra
/* 005C0 80B02830 00000000 */  nop


