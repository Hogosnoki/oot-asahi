glabel func_8083BF50
/* 09D40 8083BF50 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 09D44 8083BF54 AFBF002C */  sw      $ra, 0x002C($sp)
/* 09D48 8083BF58 AFB00028 */  sw      $s0, 0x0028($sp)
/* 09D4C 8083BF5C AFA5003C */  sw      $a1, 0x003C($sp)
/* 09D50 8083BF60 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 09D54 8083BF64 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 09D58 8083BF68 C4840868 */  lwc1    $f4, 0x0868($a0)           ## 00000868
/* 09D5C 8083BF6C 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 09D60 8083BF70 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 09D64 8083BF74 46062001 */  sub.s   $f0, $f4, $f6
/* 09D68 8083BF78 3C0141E8 */  lui     $at, 0x41E8                ## $at = 41E80000
/* 09D6C 8083BF7C 4602003C */  c.lt.s  $f0, $f2
/* 09D70 8083BF80 00000000 */  nop
/* 09D74 8083BF84 45020005 */  bc1fl   .L8083BF9C
/* 09D78 8083BF88 3C014160 */  lui     $at, 0x4160                ## $at = 41600000
/* 09D7C 8083BF8C 44814000 */  mtc1    $at, $f8                   ## $f8 = 14.00
/* 09D80 8083BF90 00000000 */  nop
/* 09D84 8083BF94 46080000 */  add.s   $f0, $f0, $f8
/* 09D88 8083BF98 3C014160 */  lui     $at, 0x4160                ## $at = 41600000
.L8083BF9C:
/* 09D8C 8083BF9C 44815000 */  mtc1    $at, $f10                  ## $f10 = 14.00
/* 09D90 8083BFA0 3C0141D0 */  lui     $at, 0x41D0                ## $at = 41D00000
/* 09D94 8083BFA4 460A003C */  c.lt.s  $f0, $f10
/* 09D98 8083BFA8 00000000 */  nop
/* 09D9C 8083BFAC 45020014 */  bc1fl   .L8083C000
/* 09DA0 8083BFB0 44812000 */  mtc1    $at, $f4                   ## $f4 = 26.00
/* 09DA4 8083BFB4 3C014130 */  lui     $at, 0x4130                ## $at = 41300000
/* 09DA8 8083BFB8 44816000 */  mtc1    $at, $f12                  ## $f12 = 11.00
/* 09DAC 8083BFBC 920E015B */  lbu     $t6, 0x015B($s0)           ## 0000015B
/* 09DB0 8083BFC0 3C068085 */  lui     $a2, %hi(D_80853AC4)       ## $a2 = 80850000
/* 09DB4 8083BFC4 46006001 */  sub.s   $f0, $f12, $f0
/* 09DB8 8083BFC8 000E7880 */  sll     $t7, $t6,  2
/* 09DBC 8083BFCC 00CF3021 */  addu    $a2, $a2, $t7
/* 09DC0 8083BFD0 8CC63AC4 */  lw      $a2, %lo(D_80853AC4)($a2)
/* 09DC4 8083BFD4 4602003C */  c.lt.s  $f0, $f2
/* 09DC8 8083BFD8 3C013FB0 */  lui     $at, 0x3FB0                ## $at = 3FB00000
/* 09DCC 8083BFDC 45000005 */  bc1f    .L8083BFF4
/* 09DD0 8083BFE0 00000000 */  nop
/* 09DD4 8083BFE4 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.38
/* 09DD8 8083BFE8 46000407 */  neg.s   $f16, $f0
/* 09DDC 8083BFEC 46128002 */  mul.s   $f0, $f16, $f18
/* 09DE0 8083BFF0 00000000 */  nop
.L8083BFF4:
/* 09DE4 8083BFF4 10000014 */  beq     $zero, $zero, .L8083C048
/* 09DE8 8083BFF8 460C0003 */  div.s   $f0, $f0, $f12
/* 09DEC 8083BFFC 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.38
.L8083C000:
/* 09DF0 8083C000 9218015B */  lbu     $t8, 0x015B($s0)           ## 0000015B
/* 09DF4 8083C004 3C068085 */  lui     $a2, %hi(D_80853ADC)       ## $a2 = 80850000
/* 09DF8 8083C008 46002001 */  sub.s   $f0, $f4, $f0
/* 09DFC 8083C00C 0018C880 */  sll     $t9, $t8,  2
/* 09E00 8083C010 00D93021 */  addu    $a2, $a2, $t9
/* 09E04 8083C014 8CC63ADC */  lw      $a2, %lo(D_80853ADC)($a2)
/* 09E08 8083C018 4602003C */  c.lt.s  $f0, $f2
/* 09E0C 8083C01C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 09E10 8083C020 45020006 */  bc1fl   .L8083C03C
/* 09E14 8083C024 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 09E18 8083C028 44814000 */  mtc1    $at, $f8                   ## $f8 = 12.00
/* 09E1C 8083C02C 46000187 */  neg.s   $f6, $f0
/* 09E20 8083C030 46083002 */  mul.s   $f0, $f6, $f8
/* 09E24 8083C034 00000000 */  nop
/* 09E28 8083C038 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
.L8083C03C:
/* 09E2C 8083C03C 44815000 */  mtc1    $at, $f10                  ## $f10 = 12.00
/* 09E30 8083C040 00000000 */  nop
/* 09E34 8083C044 460A0003 */  div.s   $f0, $f0, $f10
.L8083C048:
/* 09E38 8083C048 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 80850000
/* 09E3C 8083C04C AFA60034 */  sw      $a2, 0x0034($sp)
/* 09E40 8083C050 0C028800 */  jal     SkelAnime_GetFrameCount

/* 09E44 8083C054 E7A00030 */  swc1    $f0, 0x0030($sp)
/* 09E48 8083C058 C7B20030 */  lwc1    $f18, 0x0030($sp)
/* 09E4C 8083C05C 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 09E50 8083C060 44807000 */  mtc1    $zero, $f14                ## $f14 = 0.00
/* 09E54 8083C064 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 09E58 8083C068 46808420 */  cvt.s.w $f16, $f16
/* 09E5C 8083C06C 44816000 */  mtc1    $at, $f12                  ## $f12 = 4.00
/* 09E60 8083C070 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 09E64 8083C074 8FA60034 */  lw      $a2, 0x0034($sp)
/* 09E68 8083C078 46126482 */  mul.s   $f18, $f12, $f18
/* 09E6C 8083C07C E7AE0010 */  swc1    $f14, 0x0010($sp)
/* 09E70 8083C080 8FA4003C */  lw      $a0, 0x003C($sp)
/* 09E74 8083C084 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 09E78 8083C088 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 09E7C 8083C08C E7B00014 */  swc1    $f16, 0x0014($sp)
/* 09E80 8083C090 AFA80018 */  sw      $t0, 0x0018($sp)
/* 09E84 8083C094 0C028FC2 */  jal     SkelAnime_LinkChangeAnimation
/* 09E88 8083C098 E7B2001C */  swc1    $f18, 0x001C($sp)
/* 09E8C 8083C09C 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 09E90 8083C0A0 A609083C */  sh      $t1, 0x083C($s0)           ## 0000083C
/* 09E94 8083C0A4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 09E98 8083C0A8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 09E9C 8083C0AC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 09EA0 8083C0B0 03E00008 */  jr      $ra
/* 09EA4 8083C0B4 00000000 */  nop


