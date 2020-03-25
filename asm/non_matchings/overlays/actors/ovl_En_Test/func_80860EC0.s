glabel func_80860EC0
/* 01870 80860EC0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01874 80860EC4 AFB00018 */  sw      $s0, 0x0018($sp)
/* 01878 80860EC8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0187C 80860ECC AFBF001C */  sw      $ra, 0x001C($sp)
/* 01880 80860ED0 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01884 80860ED4 24A5E2B0 */  addiu   $a1, $a1, 0xE2B0           ## $a1 = 0600E2B0
/* 01888 80860ED8 0C0294BE */  jal     SkelAnime_ChangeAnimationDefault
/* 0188C 80860EDC 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 01890 80860EE0 240E000F */  addiu   $t6, $zero, 0x000F         ## $t6 = 0000000F
/* 01894 80860EE4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01898 80860EE8 A20E07C8 */  sb      $t6, 0x07C8($s0)           ## 000007C8
/* 0189C 80860EEC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 018A0 80860EF0 44811000 */  mtc1    $at, $f2                   ## $f2 = 0.50
/* 018A4 80860EF4 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 018A8 80860EF8 4600103C */  c.lt.s  $f2, $f0
/* 018AC 80860EFC 00000000 */  nop
/* 018B0 80860F00 45020005 */  bc1fl   .L80860F18
/* 018B4 80860F04 E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
/* 018B8 80860F08 44812000 */  mtc1    $at, $f4                   ## $f4 = -0.50
/* 018BC 80860F0C 10000002 */  beq     $zero, $zero, .L80860F18
/* 018C0 80860F10 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 018C4 80860F14 E6020068 */  swc1    $f2, 0x0068($s0)           ## 00000068
.L80860F18:
/* 018C8 80860F18 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 018CC 80860F1C 00000000 */  nop
/* 018D0 80860F20 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 018D4 80860F24 44813000 */  mtc1    $at, $f6                   ## $f6 = 15.00
/* 018D8 80860F28 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 018DC 80860F2C 44815000 */  mtc1    $at, $f10                  ## $f10 = 25.00
/* 018E0 80860F30 46060202 */  mul.s   $f8, $f0, $f6
/* 018E4 80860F34 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 018E8 80860F38 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 018EC 80860F3C 3C058086 */  lui     $a1, %hi(func_80860F84)    ## $a1 = 80860000
/* 018F0 80860F40 24A50F84 */  addiu   $a1, $a1, %lo(func_80860F84) ## $a1 = 80860F84
/* 018F4 80860F44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018F8 80860F48 E60407EC */  swc1    $f4, 0x07EC($s0)           ## 000007EC
/* 018FC 80860F4C 460A4400 */  add.s   $f16, $f8, $f10
/* 01900 80860F50 A6090032 */  sh      $t1, 0x0032($s0)           ## 00000032
/* 01904 80860F54 4600848D */  trunc.w.s $f18, $f16
/* 01908 80860F58 44189000 */  mfc1    $t8, $f18
/* 0190C 80860F5C 00000000 */  nop
/* 01910 80860F60 0018CC00 */  sll     $t9, $t8, 16
/* 01914 80860F64 00194403 */  sra     $t0, $t9, 16
/* 01918 80860F68 0C217D94 */  jal     func_8085F650
/* 0191C 80860F6C AE0807E8 */  sw      $t0, 0x07E8($s0)           ## 000007E8
/* 01920 80860F70 8FBF001C */  lw      $ra, 0x001C($sp)
/* 01924 80860F74 8FB00018 */  lw      $s0, 0x0018($sp)
/* 01928 80860F78 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0192C 80860F7C 03E00008 */  jr      $ra
/* 01930 80860F80 00000000 */  nop


