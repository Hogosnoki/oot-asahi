glabel func_809B75A0
/* 01250 809B75A0 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 01254 809B75A4 3C0E809C */  lui     $t6, %hi(D_809B8100)       ## $t6 = 809C0000
/* 01258 809B75A8 AFBF0054 */  sw      $ra, 0x0054($sp)
/* 0125C 809B75AC AFBE0050 */  sw      $s8, 0x0050($sp)
/* 01260 809B75B0 AFB7004C */  sw      $s7, 0x004C($sp)
/* 01264 809B75B4 AFB60048 */  sw      $s6, 0x0048($sp)
/* 01268 809B75B8 AFB50044 */  sw      $s5, 0x0044($sp)
/* 0126C 809B75BC AFB40040 */  sw      $s4, 0x0040($sp)
/* 01270 809B75C0 AFB3003C */  sw      $s3, 0x003C($sp)
/* 01274 809B75C4 AFB20038 */  sw      $s2, 0x0038($sp)
/* 01278 809B75C8 AFB10034 */  sw      $s1, 0x0034($sp)
/* 0127C 809B75CC AFB00030 */  sw      $s0, 0x0030($sp)
/* 01280 809B75D0 25CE8100 */  addiu   $t6, $t6, %lo(D_809B8100)  ## $t6 = 809B8100
/* 01284 809B75D4 8DD80000 */  lw      $t8, 0x0000($t6)           ## 809B8100
/* 01288 809B75D8 27BE0074 */  addiu   $s8, $sp, 0x0074           ## $s8 = FFFFFFEC
/* 0128C 809B75DC 241909C4 */  addiu   $t9, $zero, 0x09C4         ## $t9 = 000009C4
/* 01290 809B75E0 AFD80000 */  sw      $t8, 0x0000($s8)           ## FFFFFFEC
/* 01294 809B75E4 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 809B8104
/* 01298 809B75E8 00809825 */  or      $s3, $a0, $zero            ## $s3 = 00000000
/* 0129C 809B75EC 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 012A0 809B75F0 AFCF0004 */  sw      $t7, 0x0004($s8)           ## FFFFFFF0
/* 012A4 809B75F4 8DD80008 */  lw      $t8, 0x0008($t6)           ## 809B8108
/* 012A8 809B75F8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 012AC 809B75FC 24090028 */  addiu   $t1, $zero, 0x0028         ## $t1 = 00000028
/* 012B0 809B7600 AFD80008 */  sw      $t8, 0x0008($s8)           ## FFFFFFF4
/* 012B4 809B7604 A499031C */  sh      $t9, 0x031C($a0)           ## 0000031C
/* 012B8 809B7608 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 012BC 809B760C 266500E4 */  addiu   $a1, $s3, 0x00E4           ## $a1 = 000000E4
/* 012C0 809B7610 AFA90014 */  sw      $t1, 0x0014($sp)
/* 012C4 809B7614 AFA80010 */  sw      $t0, 0x0010($sp)
/* 012C8 809B7618 2406395B */  addiu   $a2, $zero, 0x395B         ## $a2 = 0000395B
/* 012CC 809B761C 0C00AA7D */  jal     func_8002A9F4
/* 012D0 809B7620 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 012D4 809B7624 AE60014C */  sw      $zero, 0x014C($s3)         ## 0000014C
/* 012D8 809B7628 24110054 */  addiu   $s1, $zero, 0x0054         ## $s1 = 00000054
/* 012DC 809B762C 26700054 */  addiu   $s0, $s3, 0x0054           ## $s0 = 00000054
/* 012E0 809B7630 26541C24 */  addiu   $s4, $s2, 0x1C24           ## $s4 = 00001C24
.L809B7634:
/* 012E4 809B7634 C604015C */  lwc1    $f4, 0x015C($s0)           ## 000001B0
/* 012E8 809B7638 8E070158 */  lw      $a3, 0x0158($s0)           ## 000001AC
/* 012EC 809B763C 240A0003 */  addiu   $t2, $zero, 0x0003         ## $t2 = 00000003
/* 012F0 809B7640 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 012F4 809B7644 C6060160 */  lwc1    $f6, 0x0160($s0)           ## 000001B4
/* 012F8 809B7648 AFAA0024 */  sw      $t2, 0x0024($sp)
/* 012FC 809B764C AFA00020 */  sw      $zero, 0x0020($sp)
/* 01300 809B7650 AFA0001C */  sw      $zero, 0x001C($sp)
/* 01304 809B7654 AFA00018 */  sw      $zero, 0x0018($sp)
/* 01308 809B7658 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00001C24
/* 0130C 809B765C 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01310 809B7660 240600DE */  addiu   $a2, $zero, 0x00DE         ## $a2 = 000000DE
/* 01314 809B7664 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 01318 809B7668 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 0131C 809B766C 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 00000060
/* 01320 809B7670 2A2100A8 */  slti    $at, $s1, 0x00A8
/* 01324 809B7674 1420FFEF */  bne     $at, $zero, .L809B7634
/* 01328 809B7678 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = 00000060
/* 0132C 809B767C 26700158 */  addiu   $s0, $s3, 0x0158           ## $s0 = 00000158
/* 01330 809B7680 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000158
/* 01334 809B7684 0C01E027 */  jal     Math_Vec3f_Pitch

/* 01338 809B7688 26640024 */  addiu   $a0, $s3, 0x0024           ## $a0 = 00000024
/* 0133C 809B768C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 01340 809B7690 00418821 */  addu    $s1, $v0, $at
/* 01344 809B7694 00118C00 */  sll     $s1, $s1, 16
/* 01348 809B7698 8665008A */  lh      $a1, 0x008A($s3)           ## 0000008A
/* 0134C 809B769C 8667031C */  lh      $a3, 0x031C($s3)           ## 0000031C
/* 01350 809B76A0 00118C03 */  sra     $s1, $s1, 16
/* 01354 809B76A4 AFA00010 */  sw      $zero, 0x0010($sp)
/* 01358 809B76A8 266400B6 */  addiu   $a0, $s3, 0x00B6           ## $a0 = 000000B6
/* 0135C 809B76AC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 01360 809B76B0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01364 809B76B4 00112C00 */  sll     $a1, $s1, 16
/* 01368 809B76B8 8667031C */  lh      $a3, 0x031C($s3)           ## 0000031C
/* 0136C 809B76BC AFA00010 */  sw      $zero, 0x0010($sp)
/* 01370 809B76C0 00052C03 */  sra     $a1, $a1, 16
/* 01374 809B76C4 266400B4 */  addiu   $a0, $s3, 0x00B4           ## $a0 = 000000B4
/* 01378 809B76C8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 0137C 809B76CC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01380 809B76D0 C66C0024 */  lwc1    $f12, 0x0024($s3)          ## 00000024
/* 01384 809B76D4 C66E0028 */  lwc1    $f14, 0x0028($s3)          ## 00000028
/* 01388 809B76D8 8E66002C */  lw      $a2, 0x002C($s3)           ## 0000002C
/* 0138C 809B76DC 0C034261 */  jal     Matrix_Translate
/* 01390 809B76E0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01394 809B76E4 866400B4 */  lh      $a0, 0x00B4($s3)           ## 000000B4
/* 01398 809B76E8 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 0139C 809B76EC 866500B6 */  lh      $a1, 0x00B6($s3)           ## 000000B6
/* 013A0 809B76F0 00812021 */  addu    $a0, $a0, $at
/* 013A4 809B76F4 00042400 */  sll     $a0, $a0, 16
/* 013A8 809B76F8 00042403 */  sra     $a0, $a0, 16
/* 013AC 809B76FC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 013B0 809B7700 0C034421 */  jal     Matrix_RotateZYX
/* 013B4 809B7704 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 013B8 809B7708 3C04809C */  lui     $a0, %hi(D_809B8080)       ## $a0 = 809C0000
/* 013BC 809B770C 24848080 */  addiu   $a0, $a0, %lo(D_809B8080)  ## $a0 = 809B8080
/* 013C0 809B7710 0C0346BD */  jal     Matrix_MultVec3f
/* 013C4 809B7714 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000158
/* 013C8 809B7718 8E6B0004 */  lw      $t3, 0x0004($s3)           ## 00000004
/* 013CC 809B771C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 013D0 809B7720 2671001E */  addiu   $s1, $s3, 0x001E           ## $s1 = 0000001E
/* 013D4 809B7724 2670003C */  addiu   $s0, $s3, 0x003C           ## $s0 = 0000003C
/* 013D8 809B7728 01616024 */  and     $t4, $t3, $at
/* 013DC 809B772C AE6C0004 */  sw      $t4, 0x0004($s3)           ## 00000004
/* 013E0 809B7730 26160164 */  addiu   $s6, $s0, 0x0164           ## $s6 = 000001A0
/* 013E4 809B7734 263402A8 */  addiu   $s4, $s1, 0x02A8           ## $s4 = 000002C6
/* 013E8 809B7738 263502AA */  addiu   $s5, $s1, 0x02AA           ## $s5 = 000002C8
/* 013EC 809B773C 2412001E */  addiu   $s2, $zero, 0x001E         ## $s2 = 0000001E
/* 013F0 809B7740 2417004E */  addiu   $s7, $zero, 0x004E         ## $s7 = 0000004E
.L809B7744:
/* 013F4 809B7744 866502C6 */  lh      $a1, 0x02C6($s3)           ## 000002C6
/* 013F8 809B7748 8667031C */  lh      $a3, 0x031C($s3)           ## 0000031C
/* 013FC 809B774C AFA00010 */  sw      $zero, 0x0010($sp)
/* 01400 809B7750 02802025 */  or      $a0, $s4, $zero            ## $a0 = 000002C6
/* 01404 809B7754 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 01408 809B7758 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0140C 809B775C 866502C8 */  lh      $a1, 0x02C8($s3)           ## 000002C8
/* 01410 809B7760 8667031C */  lh      $a3, 0x031C($s3)           ## 0000031C
/* 01414 809B7764 AFA00010 */  sw      $zero, 0x0010($sp)
/* 01418 809B7768 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 000002C8
/* 0141C 809B776C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 01420 809B7770 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01424 809B7774 C60C0158 */  lwc1    $f12, 0x0158($s0)          ## 00000194
/* 01428 809B7778 C60E015C */  lwc1    $f14, 0x015C($s0)          ## 00000198
/* 0142C 809B777C 8E060160 */  lw      $a2, 0x0160($s0)           ## 0000019C
/* 01430 809B7780 0C034261 */  jal     Matrix_Translate
/* 01434 809B7784 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01438 809B7788 862402A8 */  lh      $a0, 0x02A8($s1)           ## 000002C6
/* 0143C 809B778C 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 01440 809B7790 862502AA */  lh      $a1, 0x02AA($s1)           ## 000002C8
/* 01444 809B7794 00812021 */  addu    $a0, $a0, $at
/* 01448 809B7798 00042400 */  sll     $a0, $a0, 16
/* 0144C 809B779C 00042403 */  sra     $a0, $a0, 16
/* 01450 809B77A0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01454 809B77A4 0C034421 */  jal     Matrix_RotateZYX
/* 01458 809B77A8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0145C 809B77AC 03C02025 */  or      $a0, $s8, $zero            ## $a0 = FFFFFFEC
/* 01460 809B77B0 0C0346BD */  jal     Matrix_MultVec3f
/* 01464 809B77B4 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 000001A0
/* 01468 809B77B8 26520006 */  addiu   $s2, $s2, 0x0006           ## $s2 = 00000024
/* 0146C 809B77BC 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = 00000048
/* 01470 809B77C0 26310006 */  addiu   $s1, $s1, 0x0006           ## $s1 = 00000024
/* 01474 809B77C4 26940006 */  addiu   $s4, $s4, 0x0006           ## $s4 = 000002CC
/* 01478 809B77C8 26B50006 */  addiu   $s5, $s5, 0x0006           ## $s5 = 000002CE
/* 0147C 809B77CC 1657FFDD */  bne     $s2, $s7, .L809B7744
/* 01480 809B77D0 26D6000C */  addiu   $s6, $s6, 0x000C           ## $s6 = 000001AC
/* 01484 809B77D4 240D000F */  addiu   $t5, $zero, 0x000F         ## $t5 = 0000000F
/* 01488 809B77D8 3C05809B */  lui     $a1, %hi(func_809B781C)    ## $a1 = 809B0000
/* 0148C 809B77DC A66D031A */  sh      $t5, 0x031A($s3)           ## 0000031A
/* 01490 809B77E0 24A5781C */  addiu   $a1, $a1, %lo(func_809B781C) ## $a1 = 809B781C
/* 01494 809B77E4 0C26D8D4 */  jal     func_809B6350
/* 01498 809B77E8 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 0149C 809B77EC 8FBF0054 */  lw      $ra, 0x0054($sp)
/* 014A0 809B77F0 8FB00030 */  lw      $s0, 0x0030($sp)
/* 014A4 809B77F4 8FB10034 */  lw      $s1, 0x0034($sp)
/* 014A8 809B77F8 8FB20038 */  lw      $s2, 0x0038($sp)
/* 014AC 809B77FC 8FB3003C */  lw      $s3, 0x003C($sp)
/* 014B0 809B7800 8FB40040 */  lw      $s4, 0x0040($sp)
/* 014B4 809B7804 8FB50044 */  lw      $s5, 0x0044($sp)
/* 014B8 809B7808 8FB60048 */  lw      $s6, 0x0048($sp)
/* 014BC 809B780C 8FB7004C */  lw      $s7, 0x004C($sp)
/* 014C0 809B7810 8FBE0050 */  lw      $s8, 0x0050($sp)
/* 014C4 809B7814 03E00008 */  jr      $ra
/* 014C8 809B7818 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000


