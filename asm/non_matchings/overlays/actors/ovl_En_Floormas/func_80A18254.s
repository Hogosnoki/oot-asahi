glabel func_80A18254
/* 00D44 80A18254 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00D48 80A18258 AFB00020 */  sw      $s0, 0x0020($sp)
/* 00D4C 80A1825C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D50 80A18260 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00D54 80A18264 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00D58 80A18268 24A50590 */  addiu   $a1, $a1, 0x0590           ## $a1 = 06000590
/* 00D5C 80A1826C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00D60 80A18270 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 00D64 80A18274 3C06C040 */  lui     $a2, 0xC040                ## $a2 = C0400000
/* 00D68 80A18278 8E0E0304 */  lw      $t6, 0x0304($s0)           ## 00000304
/* 00D6C 80A1827C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00D70 80A18280 3421F824 */  ori     $at, $at, 0xF824           ## $at = 0001F824
/* 00D74 80A18284 8DCF0000 */  lw      $t7, 0x0000($t6)           ## 00000000
/* 00D78 80A18288 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D7C 80A1828C 01E1C024 */  and     $t8, $t7, $at
/* 00D80 80A18290 13000005 */  beq     $t8, $zero, .L80A182A8
/* 00D84 80A18294 00000000 */  nop
/* 00D88 80A18298 8E1902D0 */  lw      $t9, 0x02D0($s0)           ## 000002D0
/* 00D8C 80A1829C 87280032 */  lh      $t0, 0x0032($t9)           ## 00000032
/* 00D90 80A182A0 10000006 */  beq     $zero, $zero, .L80A182BC
/* 00D94 80A182A4 A6080032 */  sh      $t0, 0x0032($s0)           ## 00000032
.L80A182A8:
/* 00D98 80A182A8 0C00B69E */  jal     func_8002DA78
/* 00D9C 80A182AC 8E0502D0 */  lw      $a1, 0x02D0($s0)           ## 000002D0
/* 00DA0 80A182B0 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00DA4 80A182B4 00414821 */  addu    $t1, $v0, $at
/* 00DA8 80A182B8 A6090032 */  sh      $t1, 0x0032($s0)           ## 00000032
.L80A182BC:
/* 00DAC 80A182BC 240A0014 */  addiu   $t2, $zero, 0x0014         ## $t2 = 00000014
/* 00DB0 80A182C0 AFAA0010 */  sw      $t2, 0x0010($sp)
/* 00DB4 80A182C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DB8 80A182C8 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00DBC 80A182CC 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00DC0 80A182D0 0C00D09B */  jal     func_8003426C
/* 00DC4 80A182D4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00DC8 80A182D8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00DCC 80A182DC 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 00DD0 80A182E0 3C0140B0 */  lui     $at, 0x40B0                ## $at = 40B00000
/* 00DD4 80A182E4 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.50
/* 00DD8 80A182E8 3C0B80A2 */  lui     $t3, %hi(func_80A19BA8)    ## $t3 = 80A20000
/* 00DDC 80A182EC 256B9BA8 */  addiu   $t3, $t3, %lo(func_80A19BA8) ## $t3 = 80A19BA8
/* 00DE0 80A182F0 AE0B0190 */  sw      $t3, 0x0190($s0)           ## 00000190
/* 00DE4 80A182F4 E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 00DE8 80A182F8 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
/* 00DEC 80A182FC 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00DF0 80A18300 8FB00020 */  lw      $s0, 0x0020($sp)
/* 00DF4 80A18304 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00DF8 80A18308 03E00008 */  jr      $ra
/* 00DFC 80A1830C 00000000 */  nop
