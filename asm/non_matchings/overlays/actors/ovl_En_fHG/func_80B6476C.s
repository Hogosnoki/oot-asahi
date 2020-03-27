glabel func_80B6476C
/* 01DAC 80B6476C 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 01DB0 80B64770 AFB00040 */  sw      $s0, 0x0040($sp)
/* 01DB4 80B64774 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01DB8 80B64778 AFBF0044 */  sw      $ra, 0x0044($sp)
/* 01DBC 80B6477C 3C0480B6 */  lui     $a0, %hi(D_80B65324)       ## $a0 = 80B60000
/* 01DC0 80B64780 F7B40038 */  sdc1    $f20, 0x0038($sp)
/* 01DC4 80B64784 AFA50064 */  sw      $a1, 0x0064($sp)
/* 01DC8 80B64788 0C00084C */  jal     osSyncPrintf

/* 01DCC 80B6478C 24845324 */  addiu   $a0, $a0, %lo(D_80B65324)  ## $a0 = 80B65324
/* 01DD0 80B64790 26040250 */  addiu   $a0, $s0, 0x0250           ## $a0 = 00000250
/* 01DD4 80B64794 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 01DD8 80B64798 AFA4004C */  sw      $a0, 0x004C($sp)
/* 01DDC 80B6479C 8FAE0064 */  lw      $t6, 0x0064($sp)
/* 01DE0 80B647A0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01DE4 80B647A4 4481A000 */  mtc1    $at, $f20                  ## $f20 = 1.00
/* 01DE8 80B647A8 91CF07AF */  lbu     $t7, 0x07AF($t6)           ## 000007AF
/* 01DEC 80B647AC 260401E8 */  addiu   $a0, $s0, 0x01E8           ## $a0 = 000001E8
/* 01DF0 80B647B0 4406A000 */  mfc1    $a2, $f20
/* 01DF4 80B647B4 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 01DF8 80B647B8 05E10005 */  bgez    $t7, .L80B647D0
/* 01DFC 80B647BC 46802120 */  cvt.s.w $f4, $f4
/* 01E00 80B647C0 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 01E04 80B647C4 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 01E08 80B647C8 00000000 */  nop
/* 01E0C 80B647CC 46062100 */  add.s   $f4, $f4, $f6
.L80B647D0:
/* 01E10 80B647D0 44052000 */  mfc1    $a1, $f4
/* 01E14 80B647D4 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01E18 80B647D8 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 01E1C 80B647DC 8FB80064 */  lw      $t8, 0x0064($sp)
/* 01E20 80B647E0 4406A000 */  mfc1    $a2, $f20
/* 01E24 80B647E4 260401EC */  addiu   $a0, $s0, 0x01EC           ## $a0 = 000001EC
/* 01E28 80B647E8 931907AF */  lbu     $t9, 0x07AF($t8)           ## 000007AF
/* 01E2C 80B647EC 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 01E30 80B647F0 07210005 */  bgez    $t9, .L80B64808
/* 01E34 80B647F4 46804220 */  cvt.s.w $f8, $f8
/* 01E38 80B647F8 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 01E3C 80B647FC 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 01E40 80B64800 00000000 */  nop
/* 01E44 80B64804 460A4200 */  add.s   $f8, $f8, $f10
.L80B64808:
/* 01E48 80B64808 44054000 */  mfc1    $a1, $f8
/* 01E4C 80B6480C 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01E50 80B64810 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 01E54 80B64814 8FA80064 */  lw      $t0, 0x0064($sp)
/* 01E58 80B64818 4406A000 */  mfc1    $a2, $f20
/* 01E5C 80B6481C 260401F0 */  addiu   $a0, $s0, 0x01F0           ## $a0 = 000001F0
/* 01E60 80B64820 910907AF */  lbu     $t1, 0x07AF($t0)           ## 000007AF
/* 01E64 80B64824 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 01E68 80B64828 44899000 */  mtc1    $t1, $f18                  ## $f18 = 0.00
/* 01E6C 80B6482C 05210004 */  bgez    $t1, .L80B64840
/* 01E70 80B64830 468094A0 */  cvt.s.w $f18, $f18
/* 01E74 80B64834 44812000 */  mtc1    $at, $f4                   ## $f4 = 4294967296.00
/* 01E78 80B64838 00000000 */  nop
/* 01E7C 80B6483C 46049480 */  add.s   $f18, $f18, $f4
.L80B64840:
/* 01E80 80B64840 44059000 */  mfc1    $a1, $f18
/* 01E84 80B64844 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01E88 80B64848 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 01E8C 80B6484C 4406A000 */  mfc1    $a2, $f20
/* 01E90 80B64850 260401F4 */  addiu   $a0, $s0, 0x01F4           ## $a0 = 000001F4
/* 01E94 80B64854 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01E98 80B64858 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01E9C 80B6485C 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 01EA0 80B64860 3C053C3C */  lui     $a1, 0x3C3C                ## $a1 = 3C3C0000
/* 01EA4 80B64864 4406A000 */  mfc1    $a2, $f20
/* 01EA8 80B64868 3C073B03 */  lui     $a3, 0x3B03                ## $a3 = 3B030000
/* 01EAC 80B6486C 34E7126F */  ori     $a3, $a3, 0x126F           ## $a3 = 3B03126F
/* 01EB0 80B64870 34A56A7E */  ori     $a1, $a1, 0x6A7E           ## $a1 = 3C3C6A7E
/* 01EB4 80B64874 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01EB8 80B64878 26040058 */  addiu   $a0, $s0, 0x0058           ## $a0 = 00000058
/* 01EBC 80B6487C 860A01D4 */  lh      $t2, 0x01D4($s0)           ## 000001D4
/* 01EC0 80B64880 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01EC4 80B64884 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 01EC8 80B64888 11400021 */  beq     $t2, $zero, .L80B64910
/* 01ECC 80B6488C 3C073DCC */  lui     $a3, 0x3DCC                ## $a3 = 3DCC0000
/* 01ED0 80B64890 4405A000 */  mfc1    $a1, $f20
/* 01ED4 80B64894 260401A0 */  addiu   $a0, $s0, 0x01A0           ## $a0 = 000001A0
/* 01ED8 80B64898 0C01E123 */  jal     Math_SmoothDownscaleMaxF

/* 01EDC 80B6489C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01EE0 80B648A0 860B01D4 */  lh      $t3, 0x01D4($s0)           ## 000001D4
/* 01EE4 80B648A4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01EE8 80B648A8 5561001E */  bnel    $t3, $at, .L80B64924
/* 01EEC 80B648AC C60401A0 */  lwc1    $f4, 0x01A0($s0)           ## 000001A0
/* 01EF0 80B648B0 860C01C2 */  lh      $t4, 0x01C2($s0)           ## 000001C2
/* 01EF4 80B648B4 3C0180B6 */  lui     $at, %hi(D_80B65444)       ## $at = 80B60000
/* 01EF8 80B648B8 C4205444 */  lwc1    $f0, %lo(D_80B65444)($at)
/* 01EFC 80B648BC A60C01C4 */  sh      $t4, 0x01C4($s0)           ## 000001C4
/* 01F00 80B648C0 860D01C4 */  lh      $t5, 0x01C4($s0)           ## 000001C4
/* 01F04 80B648C4 3C0F80B6 */  lui     $t7, %hi(D_80B65190)       ## $t7 = 80B60000
/* 01F08 80B648C8 25EF5190 */  addiu   $t7, $t7, %lo(D_80B65190)  ## $t7 = 80B65190
/* 01F0C 80B648CC 000D7100 */  sll     $t6, $t5,  4
/* 01F10 80B648D0 01CF1021 */  addu    $v0, $t6, $t7
/* 01F14 80B648D4 C4460000 */  lwc1    $f6, 0x0000($v0)           ## 00000000
/* 01F18 80B648D8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01F1C 80B648DC 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 01F20 80B648E0 46003202 */  mul.s   $f8, $f6, $f0
/* 01F24 80B648E4 3C0180B6 */  lui     $at, %hi(D_80B65448)       ## $at = 80B60000
/* 01F28 80B648E8 460A4480 */  add.s   $f18, $f8, $f10
/* 01F2C 80B648EC E612018C */  swc1    $f18, 0x018C($s0)          ## 0000018C
/* 01F30 80B648F0 C4440004 */  lwc1    $f4, 0x0004($v0)           ## 00000004
/* 01F34 80B648F4 E6040190 */  swc1    $f4, 0x0190($s0)           ## 00000190
/* 01F38 80B648F8 C4460008 */  lwc1    $f6, 0x0008($v0)           ## 00000008
/* 01F3C 80B648FC C42A5448 */  lwc1    $f10, %lo(D_80B65448)($at)
/* 01F40 80B64900 46003202 */  mul.s   $f8, $f6, $f0
/* 01F44 80B64904 460A4481 */  sub.s   $f18, $f8, $f10
/* 01F48 80B64908 10000005 */  beq     $zero, $zero, .L80B64920
/* 01F4C 80B6490C E6120194 */  swc1    $f18, 0x0194($s0)          ## 00000194
.L80B64910:
/* 01F50 80B64910 4405A000 */  mfc1    $a1, $f20
/* 01F54 80B64914 4406A000 */  mfc1    $a2, $f20
/* 01F58 80B64918 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01F5C 80B6491C 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 0000CCCD
.L80B64920:
/* 01F60 80B64920 C60401A0 */  lwc1    $f4, 0x01A0($s0)           ## 000001A0
.L80B64924:
/* 01F64 80B64924 C6060198 */  lwc1    $f6, 0x0198($s0)           ## 00000198
/* 01F68 80B64928 4406A000 */  mfc1    $a2, $f20
/* 01F6C 80B6492C 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 01F70 80B64930 46062202 */  mul.s   $f8, $f4, $f6
/* 01F74 80B64934 8E05018C */  lw      $a1, 0x018C($s0)           ## 0000018C
/* 01F78 80B64938 44074000 */  mfc1    $a3, $f8
/* 01F7C 80B6493C 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01F80 80B64940 00000000 */  nop
/* 01F84 80B64944 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 01F88 80B64948 4407A000 */  mfc1    $a3, $f20
/* 01F8C 80B6494C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 01F90 80B64950 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 01F94 80B64954 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01F98 80B64958 3C054270 */  lui     $a1, 0x4270                ## $a1 = 42700000
/* 01F9C 80B6495C C60A01A0 */  lwc1    $f10, 0x01A0($s0)          ## 000001A0
/* 01FA0 80B64960 C612019C */  lwc1    $f18, 0x019C($s0)          ## 0000019C
/* 01FA4 80B64964 4406A000 */  mfc1    $a2, $f20
/* 01FA8 80B64968 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 01FAC 80B6496C 46125102 */  mul.s   $f4, $f10, $f18
/* 01FB0 80B64970 8E050194 */  lw      $a1, 0x0194($s0)           ## 00000194
/* 01FB4 80B64974 44072000 */  mfc1    $a3, $f4
/* 01FB8 80B64978 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 01FBC 80B6497C 00000000 */  nop
/* 01FC0 80B64980 C60E018C */  lwc1    $f14, 0x018C($s0)          ## 0000018C
/* 01FC4 80B64984 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 01FC8 80B64988 C6100194 */  lwc1    $f16, 0x0194($s0)          ## 00000194
/* 01FCC 80B6498C C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 01FD0 80B64990 460E3081 */  sub.s   $f2, $f6, $f14
/* 01FD4 80B64994 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 01FD8 80B64998 44812000 */  mtc1    $at, $f4                   ## $f4 = 300.00
/* 01FDC 80B6499C 46104301 */  sub.s   $f12, $f8, $f16
/* 01FE0 80B649A0 46021282 */  mul.s   $f10, $f2, $f2
/* 01FE4 80B649A4 00000000 */  nop
/* 01FE8 80B649A8 460C6482 */  mul.s   $f18, $f12, $f12
/* 01FEC 80B649AC 46125000 */  add.s   $f0, $f10, $f18
/* 01FF0 80B649B0 46000504 */  sqrt.s  $f20, $f0
/* 01FF4 80B649B4 4604A03C */  c.lt.s  $f20, $f4
/* 01FF8 80B649B8 00000000 */  nop
/* 01FFC 80B649BC 45000019 */  bc1f    .L80B64A24
/* 02000 80B649C0 00000000 */  nop
/* 02004 80B649C4 861801C8 */  lh      $t8, 0x01C8($s0)           ## 000001C8
/* 02008 80B649C8 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 0200C 80B649CC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02010 80B649D0 17000014 */  bne     $t8, $zero, .L80B64A24
/* 02014 80B649D4 2407006D */  addiu   $a3, $zero, 0x006D         ## $a3 = 0000006D
/* 02018 80B649D8 A61901C8 */  sh      $t9, 0x01C8($s0)           ## 000001C8
/* 0201C 80B649DC E7AE0010 */  swc1    $f14, 0x0010($sp)
/* 02020 80B649E0 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 02024 80B649E4 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 02028 80B649E8 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 0202C 80B649EC AFA0001C */  sw      $zero, 0x001C($sp)
/* 02030 80B649F0 E7B00018 */  swc1    $f16, 0x0018($sp)
/* 02034 80B649F4 46083280 */  add.s   $f10, $f6, $f8
/* 02038 80B649F8 8FA60064 */  lw      $a2, 0x0064($sp)
/* 0203C 80B649FC 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 02040 80B64A00 240B0028 */  addiu   $t3, $zero, 0x0028         ## $t3 = 00000028
/* 02044 80B64A04 E7AA0014 */  swc1    $f10, 0x0014($sp)
/* 02048 80B64A08 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 0204C 80B64A0C AFAB0028 */  sw      $t3, 0x0028($sp)
/* 02050 80B64A10 AFA00024 */  sw      $zero, 0x0024($sp)
/* 02054 80B64A14 01215021 */  addu    $t2, $t1, $at
/* 02058 80B64A18 AFAA0020 */  sw      $t2, 0x0020($sp)
/* 0205C 80B64A1C 0C00C916 */  jal     Actor_SpawnAttached

/* 02060 80B64A20 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
.L80B64A24:
/* 02064 80B64A24 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02068 80B64A28 3C0D80B6 */  lui     $t5, %hi(func_80B64AA8)    ## $t5 = 80B60000
/* 0206C 80B64A2C 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02070 80B64A30 4600A032 */  c.eq.s  $f20, $f0
/* 02074 80B64A34 240C008C */  addiu   $t4, $zero, 0x008C         ## $t4 = 0000008C
/* 02078 80B64A38 25AD4AA8 */  addiu   $t5, $t5, %lo(func_80B64AA8) ## $t5 = 80B64AA8
/* 0207C 80B64A3C 24A5B4C8 */  addiu   $a1, $a1, 0xB4C8           ## $a1 = 0600B4C8
/* 02080 80B64A40 45020015 */  bc1fl   .L80B64A98
/* 02084 80B64A44 8FBF0044 */  lw      $ra, 0x0044($sp)
/* 02088 80B64A48 8E020118 */  lw      $v0, 0x0118($s0)           ## 00000118
/* 0208C 80B64A4C A60C01D4 */  sh      $t4, 0x01D4($s0)           ## 000001D4
/* 02090 80B64A50 AE0D01FC */  sw      $t5, 0x01FC($s0)           ## 000001FC
/* 02094 80B64A54 44060000 */  mfc1    $a2, $f0
/* 02098 80B64A58 8FA4004C */  lw      $a0, 0x004C($sp)
/* 0209C 80B64A5C 0C0294D3 */  jal     SkelAnime_ChangeAnimationTransitionRate
/* 020A0 80B64A60 AFA20050 */  sw      $v0, 0x0050($sp)
/* 020A4 80B64A64 8FA20050 */  lw      $v0, 0x0050($sp)
/* 020A8 80B64A68 240F0005 */  addiu   $t7, $zero, 0x0005         ## $t7 = 00000005
/* 020AC 80B64A6C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 020B0 80B64A70 904E00AF */  lbu     $t6, 0x00AF($v0)           ## 000000AF
/* 020B4 80B64A74 24198000 */  addiu   $t9, $zero, 0x8000         ## $t9 = FFFF8000
/* 020B8 80B64A78 29C10019 */  slti    $at, $t6, 0x0019
/* 020BC 80B64A7C 54200004 */  bnel    $at, $zero, .L80B64A90
/* 020C0 80B64A80 A05801C9 */  sb      $t8, 0x01C9($v0)           ## 000001C9
/* 020C4 80B64A84 10000002 */  beq     $zero, $zero, .L80B64A90
/* 020C8 80B64A88 A20F014C */  sb      $t7, 0x014C($s0)           ## 0000014C
/* 020CC 80B64A8C A05801C9 */  sb      $t8, 0x01C9($v0)           ## 000001C9
.L80B64A90:
/* 020D0 80B64A90 A61901C6 */  sh      $t9, 0x01C6($s0)           ## 000001C6
/* 020D4 80B64A94 8FBF0044 */  lw      $ra, 0x0044($sp)
.L80B64A98:
/* 020D8 80B64A98 D7B40038 */  ldc1    $f20, 0x0038($sp)
/* 020DC 80B64A9C 8FB00040 */  lw      $s0, 0x0040($sp)
/* 020E0 80B64AA0 03E00008 */  jr      $ra
/* 020E4 80B64AA4 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000


