.late_rodata
glabel D_80139FB0
    .float 0.01

glabel D_80139FB4
    .float 182.04167

glabel D_80139FB8
    .float 0.01

glabel D_80139FBC
    .float 0.01

glabel D_80139FC0
    .float 0.01

glabel D_80139FC4
    .float 0.01

glabel D_80139FC8
    .float 0.01

glabel D_80139FCC
    .float 0.05

glabel D_80139FD0
    .float 0.99

.text
glabel Camera_Jump3
/* AC1E80 8004ACE0 27BDFF28 */  addiu $sp, $sp, -0xd8
/* AC1E84 8004ACE4 AFB0001C */  sw    $s0, 0x1c($sp)
/* AC1E88 8004ACE8 00808025 */  move  $s0, $a0
/* AC1E8C 8004ACEC AFBF0024 */  sw    $ra, 0x24($sp)
/* AC1E90 8004ACF0 AFB10020 */  sw    $s1, 0x20($sp)
/* AC1E94 8004ACF4 0C00B721 */  jal   Player_GetCameraYOffset
/* AC1E98 8004ACF8 8C840090 */   lw    $a0, 0x90($a0)
/* AC1E9C 8004ACFC E7A00074 */  swc1  $f0, 0x74($sp)
/* AC1EA0 8004AD00 8E050090 */  lw    $a1, 0x90($s0)
/* AC1EA4 8004AD04 0C00BBB9 */  jal   func_8002EEE4
/* AC1EA8 8004AD08 27A40060 */   addiu $a0, $sp, 0x60
/* AC1EAC 8004AD0C 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC1EB0 8004AD10 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC1EB4 8004AD14 2606005C */  addiu $a2, $s0, 0x5c
/* AC1EB8 8004AD18 C4C60004 */  lwc1  $f6, 4($a2)
/* AC1EBC 8004AD1C 846E01EC */  lh    $t6, 0x1ec($v1)
/* AC1EC0 8004AD20 C6040114 */  lwc1  $f4, 0x114($s0)
/* AC1EC4 8004AD24 00003825 */  move  $a3, $zero
/* AC1EC8 8004AD28 448E4000 */  mtc1  $t6, $f8
/* AC1ECC 8004AD2C 46062001 */  sub.s $f0, $f4, $f6
/* AC1ED0 8004AD30 27A40098 */  addiu $a0, $sp, 0x98
/* AC1ED4 8004AD34 26050050 */  addiu $a1, $s0, 0x50
/* AC1ED8 8004AD38 468042A0 */  cvt.s.w $f10, $f8
/* AC1EDC 8004AD3C 460A003C */  c.lt.s $f0, $f10
/* AC1EE0 8004AD40 00000000 */  nop
/* AC1EE4 8004AD44 45030004 */  bc1tl .L8004AD58
/* AC1EE8 8004AD48 26110024 */   addiu $s1, $s0, 0x24
/* AC1EEC 8004AD4C 860F015E */  lh    $t7, 0x15e($s0)
/* AC1EF0 8004AD50 15E00007 */  bnez  $t7, .L8004AD70
/* AC1EF4 8004AD54 26110024 */   addiu $s1, $s0, 0x24
.L8004AD58:
/* AC1EF8 8004AD58 86380022 */  lh    $t8, 0x22($s1)
/* AC1EFC 8004AD5C 53000015 */  beql  $t8, $zero, .L8004ADB4
/* AC1F00 8004AD60 26110024 */   addiu $s1, $s0, 0x24
/* AC1F04 8004AD64 A6200022 */  sh    $zero, 0x22($s1)
/* AC1F08 8004AD68 10000011 */  b     .L8004ADB0
/* AC1F0C 8004AD6C 24070001 */   li    $a3, 1
.L8004AD70:
/* AC1F10 8004AD70 847901EE */  lh    $t9, 0x1ee($v1)
/* AC1F14 8004AD74 26110024 */  addiu $s1, $s0, 0x24
/* AC1F18 8004AD78 44992000 */  mtc1  $t9, $f4
/* AC1F1C 8004AD7C 00000000 */  nop
/* AC1F20 8004AD80 468021A0 */  cvt.s.w $f6, $f4
/* AC1F24 8004AD84 4600303C */  c.lt.s $f6, $f0
/* AC1F28 8004AD88 00000000 */  nop
/* AC1F2C 8004AD8C 45020009 */  bc1fl .L8004ADB4
/* AC1F30 8004AD90 26110024 */   addiu $s1, $s0, 0x24
/* AC1F34 8004AD94 86280022 */  lh    $t0, 0x22($s1)
/* AC1F38 8004AD98 2401000A */  li    $at, 10
/* AC1F3C 8004AD9C 2409000A */  li    $t1, 10
/* AC1F40 8004ADA0 51010004 */  beql  $t0, $at, .L8004ADB4
/* AC1F44 8004ADA4 26110024 */   addiu $s1, $s0, 0x24
/* AC1F48 8004ADA8 A6290022 */  sh    $t1, 0x22($s1)
/* AC1F4C 8004ADAC 24070001 */  li    $a3, 1
.L8004ADB0:
/* AC1F50 8004ADB0 26110024 */  addiu $s1, $s0, 0x24
.L8004ADB4:
/* AC1F54 8004ADB4 AFA5003C */  sw    $a1, 0x3c($sp)
/* AC1F58 8004ADB8 AFA60040 */  sw    $a2, 0x40($sp)
/* AC1F5C 8004ADBC 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* AC1F60 8004ADC0 AFA70054 */   sw    $a3, 0x54($sp)
/* AC1F64 8004ADC4 26060074 */  addiu $a2, $s0, 0x74
/* AC1F68 8004ADC8 AFA60038 */  sw    $a2, 0x38($sp)
/* AC1F6C 8004ADCC 27A40090 */  addiu $a0, $sp, 0x90
/* AC1F70 8004ADD0 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* AC1F74 8004ADD4 8FA5003C */   lw    $a1, 0x3c($sp)
/* AC1F78 8004ADD8 8603015E */  lh    $v1, 0x15e($s0)
/* AC1F7C 8004ADDC 8FA70054 */  lw    $a3, 0x54($sp)
/* AC1F80 8004ADE0 1060000A */  beqz  $v1, .L8004AE0C
/* AC1F84 8004ADE4 2401000A */   li    $at, 10
/* AC1F88 8004ADE8 10610008 */  beq   $v1, $at, .L8004AE0C
/* AC1F8C 8004ADEC 24010014 */   li    $at, 20
/* AC1F90 8004ADF0 10610006 */  beq   $v1, $at, .L8004AE0C
/* AC1F94 8004ADF4 00000000 */   nop
/* AC1F98 8004ADF8 14E00004 */  bnez  $a3, .L8004AE0C
/* AC1F9C 8004ADFC 3C0A8016 */   lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* AC1FA0 8004AE00 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* AC1FA4 8004AE04 85430314 */  lh    $v1, 0x314($t2)
/* AC1FA8 8004AE08 1060005C */  beqz  $v1, .L8004AF7C
.L8004AE0C:
/* AC1FAC 8004AE0C 3C198016 */   lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* AC1FB0 8004AE10 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* AC1FB4 8004AE14 3C018014 */  lui   $at, %hi(D_80139FB0)
/* AC1FB8 8004AE18 C4309FB0 */  lwc1  $f16, %lo(D_80139FB0)($at)
/* AC1FBC 8004AE1C 872801F0 */  lh    $t0, 0x1f0($t9)
/* AC1FC0 8004AE20 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC1FC4 8004AE24 44812000 */  mtc1  $at, $f4
/* AC1FC8 8004AE28 44884000 */  mtc1  $t0, $f8
/* AC1FCC 8004AE2C 3C014288 */  li    $at, 0x42880000 # 0.000000
/* AC1FD0 8004AE30 C7AE0074 */  lwc1  $f14, 0x74($sp)
/* AC1FD4 8004AE34 468042A0 */  cvt.s.w $f10, $f8
/* AC1FD8 8004AE38 44814000 */  mtc1  $at, $f8
/* AC1FDC 8004AE3C 860B0142 */  lh    $t3, 0x142($s0)
/* AC1FE0 8004AE40 3C0D8012 */  lui   $t5, %hi(sCameraSettings)
/* AC1FE4 8004AE44 862E0022 */  lh    $t6, 0x22($s1)
/* AC1FE8 8004AE48 000B60C0 */  sll   $t4, $t3, 3
/* AC1FEC 8004AE4C 46105082 */  mul.s $f2, $f10, $f16
/* AC1FF0 8004AE50 460E4283 */  div.s $f10, $f8, $f14
/* AC1FF4 8004AE54 01AC6821 */  addu  $t5, $t5, $t4
/* AC1FF8 8004AE58 8DADD068 */  lw    $t5, %lo(sCameraSettings+4)($t5)
/* AC1FFC 8004AE5C 000E78C0 */  sll   $t7, $t6, 3
/* AC2000 8004AE60 3C018014 */  lui   $at, %hi(D_80139FB4)
/* AC2004 8004AE64 01AFC021 */  addu  $t8, $t5, $t7
/* AC2008 8004AE68 46022180 */  add.s $f6, $f4, $f2
/* AC200C 8004AE6C 8F020004 */  lw    $v0, 4($t8)
/* AC2010 8004AE70 84490000 */  lh    $t1, ($v0)
/* AC2014 8004AE74 24420024 */  addiu $v0, $v0, 0x24
/* AC2018 8004AE78 460A1102 */  mul.s $f4, $f2, $f10
/* AC201C 8004AE7C 44895000 */  mtc1  $t1, $f10
/* AC2020 8004AE80 46107202 */  mul.s $f8, $f14, $f16
/* AC2024 8004AE84 46043301 */  sub.s $f12, $f6, $f4
/* AC2028 8004AE88 468051A0 */  cvt.s.w $f6, $f10
/* AC202C 8004AE8C 460C4002 */  mul.s $f0, $f8, $f12
/* AC2030 8004AE90 00000000 */  nop
/* AC2034 8004AE94 46003102 */  mul.s $f4, $f6, $f0
/* AC2038 8004AE98 E6040000 */  swc1  $f4, ($s0)
/* AC203C 8004AE9C 844AFFE0 */  lh    $t2, -0x20($v0)
/* AC2040 8004AEA0 448A4000 */  mtc1  $t2, $f8
/* AC2044 8004AEA4 00000000 */  nop
/* AC2048 8004AEA8 468042A0 */  cvt.s.w $f10, $f8
/* AC204C 8004AEAC 46005182 */  mul.s $f6, $f10, $f0
/* AC2050 8004AEB0 E6060004 */  swc1  $f6, 4($s0)
/* AC2054 8004AEB4 844BFFE4 */  lh    $t3, -0x1c($v0)
/* AC2058 8004AEB8 448B2000 */  mtc1  $t3, $f4
/* AC205C 8004AEBC 3C0B8016 */  lui   $t3, %hi(gGameInfo)
/* AC2060 8004AEC0 46802220 */  cvt.s.w $f8, $f4
/* AC2064 8004AEC4 46004282 */  mul.s $f10, $f8, $f0
/* AC2068 8004AEC8 E60A0008 */  swc1  $f10, 8($s0)
/* AC206C 8004AECC 844CFFE8 */  lh    $t4, -0x18($v0)
/* AC2070 8004AED0 C4289FB4 */  lwc1  $f8, %lo(D_80139FB4)($at)
/* AC2074 8004AED4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC2078 8004AED8 448C3000 */  mtc1  $t4, $f6
/* AC207C 8004AEDC 00000000 */  nop
/* AC2080 8004AEE0 46803120 */  cvt.s.w $f4, $f6
/* AC2084 8004AEE4 44813000 */  mtc1  $at, $f6
/* AC2088 8004AEE8 46082282 */  mul.s $f10, $f4, $f8
/* AC208C 8004AEEC 46065100 */  add.s $f4, $f10, $f6
/* AC2090 8004AEF0 4600220D */  trunc.w.s $f8, $f4
/* AC2094 8004AEF4 440D4000 */  mfc1  $t5, $f8
/* AC2098 8004AEF8 00000000 */  nop
/* AC209C 8004AEFC A60D0020 */  sh    $t5, 0x20($s0)
/* AC20A0 8004AF00 844FFFEC */  lh    $t7, -0x14($v0)
/* AC20A4 8004AF04 448F5000 */  mtc1  $t7, $f10
/* AC20A8 8004AF08 00000000 */  nop
/* AC20AC 8004AF0C 468051A0 */  cvt.s.w $f6, $f10
/* AC20B0 8004AF10 E606000C */  swc1  $f6, 0xc($s0)
/* AC20B4 8004AF14 8458FFF0 */  lh    $t8, -0x10($v0)
/* AC20B8 8004AF18 44982000 */  mtc1  $t8, $f4
/* AC20BC 8004AF1C 00000000 */  nop
/* AC20C0 8004AF20 46802220 */  cvt.s.w $f8, $f4
/* AC20C4 8004AF24 E6080010 */  swc1  $f8, 0x10($s0)
/* AC20C8 8004AF28 8459FFF4 */  lh    $t9, -0xc($v0)
/* AC20CC 8004AF2C 44995000 */  mtc1  $t9, $f10
/* AC20D0 8004AF30 00000000 */  nop
/* AC20D4 8004AF34 468051A0 */  cvt.s.w $f6, $f10
/* AC20D8 8004AF38 46103102 */  mul.s $f4, $f6, $f16
/* AC20DC 8004AF3C E6040014 */  swc1  $f4, 0x14($s0)
/* AC20E0 8004AF40 8448FFF8 */  lh    $t0, -8($v0)
/* AC20E4 8004AF44 44884000 */  mtc1  $t0, $f8
/* AC20E8 8004AF48 00000000 */  nop
/* AC20EC 8004AF4C 468042A0 */  cvt.s.w $f10, $f8
/* AC20F0 8004AF50 E60A0018 */  swc1  $f10, 0x18($s0)
/* AC20F4 8004AF54 8449FFFC */  lh    $t1, -4($v0)
/* AC20F8 8004AF58 44893000 */  mtc1  $t1, $f6
/* AC20FC 8004AF5C 00000000 */  nop
/* AC2100 8004AF60 46803120 */  cvt.s.w $f4, $f6
/* AC2104 8004AF64 46102202 */  mul.s $f8, $f4, $f16
/* AC2108 8004AF68 E608001C */  swc1  $f8, 0x1c($s0)
/* AC210C 8004AF6C 844A0000 */  lh    $t2, ($v0)
/* AC2110 8004AF70 A60A0022 */  sh    $t2, 0x22($s0)
/* AC2114 8004AF74 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AC2118 8004AF78 85630314 */  lh    $v1, 0x314($t3)
.L8004AF7C:
/* AC211C 8004AF7C 3C018014 */  lui   $at, %hi(D_80139FB8)
/* AC2120 8004AF80 1060000B */  beqz  $v1, .L8004AFB0
/* AC2124 8004AF84 C4309FB8 */   lwc1  $f16, %lo(D_80139FB8)($at)
/* AC2128 8004AF88 860C0144 */  lh    $t4, 0x144($s0)
/* AC212C 8004AF8C 02002025 */  move  $a0, $s0
/* AC2130 8004AF90 AFAC00C8 */  sw    $t4, 0xc8($sp)
/* AC2134 8004AF94 862E0022 */  lh    $t6, 0x22($s1)
/* AC2138 8004AF98 0C011495 */  jal   Camera_CopyPREGToModeValues
/* AC213C 8004AF9C A60E0144 */   sh    $t6, 0x144($s0)
/* AC2140 8004AFA0 8FAD00C8 */  lw    $t5, 0xc8($sp)
/* AC2144 8004AFA4 3C018014 */  lui   $at, %hi(D_80139FBC)
/* AC2148 8004AFA8 A60D0144 */  sh    $t5, 0x144($s0)
/* AC214C 8004AFAC C4309FBC */  lwc1  $f16, %lo(D_80139FBC)($at)
.L8004AFB0:
/* AC2150 8004AFB0 860F0022 */  lh    $t7, 0x22($s0)
/* AC2154 8004AFB4 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC2158 8004AFB8 AC2FD3A0 */  sw    $t7, %lo(D_8011D3A0)($at)
/* AC215C 8004AFBC 8602015E */  lh    $v0, 0x15e($s0)
/* AC2160 8004AFC0 10400007 */  beqz  $v0, .L8004AFE0
/* AC2164 8004AFC4 2401000A */   li    $at, 10
/* AC2168 8004AFC8 10410005 */  beq   $v0, $at, .L8004AFE0
/* AC216C 8004AFCC 24010014 */   li    $at, 20
/* AC2170 8004AFD0 10410003 */  beq   $v0, $at, .L8004AFE0
/* AC2174 8004AFD4 24010019 */   li    $at, 25
/* AC2178 8004AFD8 14410013 */  bne   $v0, $at, .L8004B028
/* AC217C 8004AFDC 3C038016 */   lui   $v1, %hi(gGameInfo)
.L8004AFE0:
/* AC2180 8004AFE0 AE20000C */  sw    $zero, 0xc($s1)
/* AC2184 8004AFE4 C60A0104 */  lwc1  $f10, 0x104($s0)
/* AC2188 8004AFE8 A6200018 */  sh    $zero, 0x18($s1)
/* AC218C 8004AFEC 86220018 */  lh    $v0, 0x18($s1)
/* AC2190 8004AFF0 2418000A */  li    $t8, 10
/* AC2194 8004AFF4 A6380020 */  sh    $t8, 0x20($s1)
/* AC2198 8004AFF8 E62A001C */  swc1  $f10, 0x1c($s1)
/* AC219C 8004AFFC A6220014 */  sh    $v0, 0x14($s1)
/* AC21A0 8004B000 A6220016 */  sh    $v0, 0x16($s1)
/* AC21A4 8004B004 C606000C */  lwc1  $f6, 0xc($s0)
/* AC21A8 8004B008 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC21AC 8004B00C E6260010 */  swc1  $f6, 0x10($s1)
/* AC21B0 8004B010 8619015E */  lh    $t9, 0x15e($s0)
/* AC21B4 8004B014 27280001 */  addiu $t0, $t9, 1
/* AC21B8 8004B018 A608015E */  sh    $t0, 0x15e($s0)
/* AC21BC 8004B01C A620001A */  sh    $zero, 0x1a($s1)
/* AC21C0 8004B020 10000006 */  b     .L8004B03C
/* AC21C4 8004B024 8C63FA90 */   lw    $v1, %lo(gGameInfo)($v1)
.L8004B028:
/* AC21C8 8004B028 86220020 */  lh    $v0, 0x20($s1)
/* AC21CC 8004B02C 10400002 */  beqz  $v0, .L8004B038
/* AC21D0 8004B030 2449FFFF */   addiu $t1, $v0, -1
/* AC21D4 8004B034 A6290020 */  sh    $t1, 0x20($s1)
.L8004B038:
/* AC21D8 8004B038 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
.L8004B03C:
/* AC21DC 8004B03C 8FAB0040 */  lw    $t3, 0x40($sp)
/* AC21E0 8004B040 27AA00B0 */  addiu $t2, $sp, 0xb0
/* AC21E4 8004B044 8D6E0000 */  lw    $t6, ($t3)
/* AC21E8 8004B048 AD4E0000 */  sw    $t6, ($t2)
/* AC21EC 8004B04C 8D6C0004 */  lw    $t4, 4($t3)
/* AC21F0 8004B050 AD4C0004 */  sw    $t4, 4($t2)
/* AC21F4 8004B054 8D6E0008 */  lw    $t6, 8($t3)
/* AC21F8 8004B058 AD4E0008 */  sw    $t6, 8($t2)
/* AC21FC 8004B05C 846D01C6 */  lh    $t5, 0x1c6($v1)
/* AC2200 8004B060 846F01C8 */  lh    $t7, 0x1c8($v1)
/* AC2204 8004B064 C60000E0 */  lwc1  $f0, 0xe0($s0)
/* AC2208 8004B068 448D2000 */  mtc1  $t5, $f4
/* AC220C 8004B06C 448F5000 */  mtc1  $t7, $f10
/* AC2210 8004B070 46802220 */  cvt.s.w $f8, $f4
/* AC2214 8004B074 468051A0 */  cvt.s.w $f6, $f10
/* AC2218 8004B078 46104082 */  mul.s $f2, $f8, $f16
/* AC221C 8004B07C 00000000 */  nop
/* AC2220 8004B080 46001482 */  mul.s $f18, $f2, $f0
/* AC2224 8004B084 00000000 */  nop
/* AC2228 8004B088 46103102 */  mul.s $f4, $f6, $f16
/* AC222C 8004B08C 00000000 */  nop
/* AC2230 8004B090 46002202 */  mul.s $f8, $f4, $f0
/* AC2234 8004B094 E7A800C0 */  swc1  $f8, 0xc0($sp)
/* AC2238 8004B098 86380018 */  lh    $t8, 0x18($s1)
/* AC223C 8004B09C 13000003 */  beqz  $t8, .L8004B0AC
/* AC2240 8004B0A0 00000000 */   nop
/* AC2244 8004B0A4 10000002 */  b     .L8004B0B0
/* AC2248 8004B0A8 E7A200BC */   swc1  $f2, 0xbc($sp)
.L8004B0AC:
/* AC224C 8004B0AC E7B200BC */  swc1  $f18, 0xbc($sp)
.L8004B0B0:
/* AC2250 8004B0B0 8622001A */  lh    $v0, 0x1a($s1)
/* AC2254 8004B0B4 1040001D */  beqz  $v0, .L8004B12C
/* AC2258 8004B0B8 0002C840 */   sll   $t9, $v0, 1
/* AC225C 8004B0BC 44993000 */  mtc1  $t9, $f6
/* AC2260 8004B0C0 C62A0010 */  lwc1  $f10, 0x10($s1)
/* AC2264 8004B0C4 C60E00C8 */  lwc1  $f14, 0xc8($s0)
/* AC2268 8004B0C8 46803120 */  cvt.s.w $f4, $f6
/* AC226C 8004B0CC 44069000 */  mfc1  $a2, $f18
/* AC2270 8004B0D0 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC2274 8004B0D4 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2278 8004B0D8 E7B200C4 */  swc1  $f18, 0xc4($sp)
/* AC227C 8004B0DC 0C010E27 */  jal   func_8004389C
/* AC2280 8004B0E0 46045300 */   add.s $f12, $f10, $f4
/* AC2284 8004B0E4 E60000C8 */  swc1  $f0, 0xc8($s0)
/* AC2288 8004B0E8 8628001A */  lh    $t0, 0x1a($s1)
/* AC228C 8004B0EC 3C014220 */  li    $at, 0x42200000 # 0.000000
/* AC2290 8004B0F0 44815000 */  mtc1  $at, $f10
/* AC2294 8004B0F4 00084840 */  sll   $t1, $t0, 1
/* AC2298 8004B0F8 44894000 */  mtc1  $t1, $f8
/* AC229C 8004B0FC 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC22A0 8004B100 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC22A4 8004B104 468041A0 */  cvt.s.w $f6, $f8
/* AC22A8 8004B108 8FA600C0 */  lw    $a2, 0xc0($sp)
/* AC22AC 8004B10C C60E00C4 */  lwc1  $f14, 0xc4($s0)
/* AC22B0 8004B110 0C010E27 */  jal   func_8004389C
/* AC22B4 8004B114 460A3300 */   add.s $f12, $f6, $f10
/* AC22B8 8004B118 E60000C4 */  swc1  $f0, 0xc4($s0)
/* AC22BC 8004B11C 862A001A */  lh    $t2, 0x1a($s1)
/* AC22C0 8004B120 254BFFFF */  addiu $t3, $t2, -1
/* AC22C4 8004B124 10000011 */  b     .L8004B16C
/* AC22C8 8004B128 A62B001A */   sh    $t3, 0x1a($s1)
.L8004B12C:
/* AC22CC 8004B12C C62C0010 */  lwc1  $f12, 0x10($s1)
/* AC22D0 8004B130 C60E00C8 */  lwc1  $f14, 0xc8($s0)
/* AC22D4 8004B134 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC22D8 8004B138 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC22DC 8004B13C E7B200C4 */  swc1  $f18, 0xc4($sp)
/* AC22E0 8004B140 0C010E27 */  jal   func_8004389C
/* AC22E4 8004B144 8FA600BC */   lw    $a2, 0xbc($sp)
/* AC22E8 8004B148 3C014220 */  li    $at, 0x42200000 # 0.000000
/* AC22EC 8004B14C E60000C8 */  swc1  $f0, 0xc8($s0)
/* AC22F0 8004B150 44816000 */  mtc1  $at, $f12
/* AC22F4 8004B154 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC22F8 8004B158 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC22FC 8004B15C 8FA600C0 */  lw    $a2, 0xc0($sp)
/* AC2300 8004B160 0C010E27 */  jal   func_8004389C
/* AC2304 8004B164 C60E00C4 */   lwc1  $f14, 0xc4($s0)
/* AC2308 8004B168 E60000C4 */  swc1  $f0, 0xc4($s0)
.L8004B16C:
/* AC230C 8004B16C 3C0C8016 */  lui   $t4, %hi(gGameInfo) # $t4, 0x8016
/* AC2310 8004B170 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC2314 8004B174 3C018014 */  lui   $at, %hi(D_80139FC0)
/* AC2318 8004B178 C4269FC0 */  lwc1  $f6, %lo(D_80139FC0)($at)
/* AC231C 8004B17C 858E0198 */  lh    $t6, 0x198($t4)
/* AC2320 8004B180 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC2324 8004B184 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2328 8004B188 448E2000 */  mtc1  $t6, $f4
/* AC232C 8004B18C C60E00CC */  lwc1  $f14, 0xcc($s0)
/* AC2330 8004B190 8FA600C4 */  lw    $a2, 0xc4($sp)
/* AC2334 8004B194 46802220 */  cvt.s.w $f8, $f4
/* AC2338 8004B198 46064302 */  mul.s $f12, $f8, $f6
/* AC233C 8004B19C 0C010E27 */  jal   func_8004389C
/* AC2340 8004B1A0 00000000 */   nop
/* AC2344 8004B1A4 E60000CC */  swc1  $f0, 0xcc($s0)
/* AC2348 8004B1A8 3C0D8016 */  lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* AC234C 8004B1AC 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* AC2350 8004B1B0 3C018014 */  lui   $at, %hi(D_80139FC4)
/* AC2354 8004B1B4 C4289FC4 */  lwc1  $f8, %lo(D_80139FC4)($at)
/* AC2358 8004B1B8 85AF019A */  lh    $t7, 0x19a($t5)
/* AC235C 8004B1BC 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC2360 8004B1C0 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2364 8004B1C4 448F5000 */  mtc1  $t7, $f10
/* AC2368 8004B1C8 8FA600C0 */  lw    $a2, 0xc0($sp)
/* AC236C 8004B1CC C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* AC2370 8004B1D0 46805120 */  cvt.s.w $f4, $f10
/* AC2374 8004B1D4 46082302 */  mul.s $f12, $f4, $f8
/* AC2378 8004B1D8 0C010E27 */  jal   func_8004389C
/* AC237C 8004B1DC 00000000 */   nop
/* AC2380 8004B1E0 E60000D0 */  swc1  $f0, 0xd0($s0)
/* AC2384 8004B1E4 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* AC2388 8004B1E8 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AC238C 8004B1EC 3C018014 */  lui   $at, %hi(D_80139FC8)
/* AC2390 8004B1F0 C4249FC8 */  lwc1  $f4, %lo(D_80139FC8)($at)
/* AC2394 8004B1F4 8719019C */  lh    $t9, 0x19c($t8)
/* AC2398 8004B1F8 3C018014 */  lui   $at, %hi(D_80139FCC)
/* AC239C 8004B1FC C60800E0 */  lwc1  $f8, 0xe0($s0)
/* AC23A0 8004B200 44993000 */  mtc1  $t9, $f6
/* AC23A4 8004B204 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC23A8 8004B208 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC23AC 8004B20C 468032A0 */  cvt.s.w $f10, $f6
/* AC23B0 8004B210 C4269FCC */  lwc1  $f6, %lo(D_80139FCC)($at)
/* AC23B4 8004B214 46000386 */  mov.s $f14, $f0
/* AC23B8 8004B218 46045302 */  mul.s $f12, $f10, $f4
/* AC23BC 8004B21C 00000000 */  nop
/* AC23C0 8004B220 46064282 */  mul.s $f10, $f8, $f6
/* AC23C4 8004B224 44065000 */  mfc1  $a2, $f10
/* AC23C8 8004B228 0C010E27 */  jal   func_8004389C
/* AC23CC 8004B22C 00000000 */   nop
/* AC23D0 8004B230 E60000D4 */  swc1  $f0, 0xd4($s0)
/* AC23D4 8004B234 02002025 */  move  $a0, $s0
/* AC23D8 8004B238 27A50090 */  addiu $a1, $sp, 0x90
/* AC23DC 8004B23C 8E060000 */  lw    $a2, ($s0)
/* AC23E0 8004B240 0C0115EA */  jal   func_800457A8
/* AC23E4 8004B244 86070022 */   lh    $a3, 0x22($s0)
/* AC23E8 8004B248 27A400A8 */  addiu $a0, $sp, 0xa8
/* AC23EC 8004B24C 8FA5003C */  lw    $a1, 0x3c($sp)
/* AC23F0 8004B250 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* AC23F4 8004B254 8FA60038 */   lw    $a2, 0x38($sp)
/* AC23F8 8004B258 86280020 */  lh    $t0, 0x20($s1)
/* AC23FC 8004B25C 8E060004 */  lw    $a2, 4($s0)
/* AC2400 8004B260 8E070008 */  lw    $a3, 8($s0)
/* AC2404 8004B264 02002025 */  move  $a0, $s0
/* AC2408 8004B268 8FA500A8 */  lw    $a1, 0xa8($sp)
/* AC240C 8004B26C 0C011A70 */  jal   func_800469C0
/* AC2410 8004B270 AFA80010 */   sw    $t0, 0x10($sp)
/* AC2414 8004B274 E7A000A8 */  swc1  $f0, 0xa8($sp)
/* AC2418 8004B278 E60000DC */  swc1  $f0, 0xdc($s0)
/* AC241C 8004B27C 26020094 */  addiu $v0, $s0, 0x94
/* AC2420 8004B280 C44C0004 */  lwc1  $f12, 4($v0)
/* AC2424 8004B284 C6020104 */  lwc1  $f2, 0x104($s0)
/* AC2428 8004B288 3C014120 */  li    $at, 0x41200000 # 0.000000
/* AC242C 8004B28C 44812000 */  mtc1  $at, $f4
/* AC2430 8004B290 460C103E */  c.le.s $f2, $f12
/* AC2434 8004B294 00000000 */  nop
/* AC2438 8004B298 45020004 */  bc1fl .L8004B2AC
/* AC243C 8004B29C 46026001 */   sub.s $f0, $f12, $f2
/* AC2440 8004B2A0 10000003 */  b     .L8004B2B0
/* AC2444 8004B2A4 46026001 */   sub.s $f0, $f12, $f2
/* AC2448 8004B2A8 46026001 */  sub.s $f0, $f12, $f2
.L8004B2AC:
/* AC244C 8004B2AC 46000007 */  neg.s $f0, $f0
.L8004B2B0:
/* AC2450 8004B2B0 4604003C */  c.lt.s $f0, $f4
/* AC2454 8004B2B4 C7A80064 */  lwc1  $f8, 0x64($sp)
/* AC2458 8004B2B8 3C014248 */  li    $at, 0x42480000 # 0.000000
/* AC245C 8004B2BC 45030014 */  bc1tl .L8004B310
/* AC2460 8004B2C0 86290018 */   lh    $t1, 0x18($s1)
/* AC2464 8004B2C4 C6000114 */  lwc1  $f0, 0x114($s0)
/* AC2468 8004B2C8 44815000 */  mtc1  $at, $f10
/* AC246C 8004B2CC C7A60064 */  lwc1  $f6, 0x64($sp)
/* AC2470 8004B2D0 4608003E */  c.le.s $f0, $f8
/* AC2474 8004B2D4 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* AC2478 8004B2D8 45020004 */  bc1fl .L8004B2EC
/* AC247C 8004B2DC 46003081 */   sub.s $f2, $f6, $f0
/* AC2480 8004B2E0 10000003 */  b     .L8004B2F0
/* AC2484 8004B2E4 46004081 */   sub.s $f2, $f8, $f0
/* AC2488 8004B2E8 46003081 */  sub.s $f2, $f6, $f0
.L8004B2EC:
/* AC248C 8004B2EC 46001087 */  neg.s $f2, $f2
.L8004B2F0:
/* AC2490 8004B2F0 460A103C */  c.lt.s $f2, $f10
/* AC2494 8004B2F4 00000000 */  nop
/* AC2498 8004B2F8 45030005 */  bc1tl .L8004B310
/* AC249C 8004B2FC 86290018 */   lh    $t1, 0x18($s1)
/* AC24A0 8004B300 44812000 */  mtc1  $at, $f4
/* AC24A4 8004B304 00000000 */  nop
/* AC24A8 8004B308 E60400C4 */  swc1  $f4, 0xc4($s0)
/* AC24AC 8004B30C 86290018 */  lh    $t1, 0x18($s1)
.L8004B310:
/* AC24B0 8004B310 02002025 */  move  $a0, $s0
/* AC24B4 8004B314 87A50096 */  lh    $a1, 0x96($sp)
/* AC24B8 8004B318 11200017 */  beqz  $t1, .L8004B378
/* AC24BC 8004B31C 3C013F80 */   li    $at, 0x3F800000 # 0.000000
/* AC24C0 8004B320 44814000 */  mtc1  $at, $f8
/* AC24C4 8004B324 C60600C8 */  lwc1  $f6, 0xc8($s0)
/* AC24C8 8004B328 86240016 */  lh    $a0, 0x16($s1)
/* AC24CC 8004B32C 87A50096 */  lh    $a1, 0x96($sp)
/* AC24D0 8004B330 46064283 */  div.s $f10, $f8, $f6
/* AC24D4 8004B334 2407000A */  li    $a3, 10
/* AC24D8 8004B338 44065000 */  mfc1  $a2, $f10
/* AC24DC 8004B33C 0C010E47 */  jal   func_8004391C
/* AC24E0 8004B340 00000000 */   nop
/* AC24E4 8004B344 A7A200AE */  sh    $v0, 0xae($sp)
/* AC24E8 8004B348 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC24EC 8004B34C 44812000 */  mtc1  $at, $f4
/* AC24F0 8004B350 C60800C8 */  lwc1  $f8, 0xc8($s0)
/* AC24F4 8004B354 86240014 */  lh    $a0, 0x14($s1)
/* AC24F8 8004B358 87A50094 */  lh    $a1, 0x94($sp)
/* AC24FC 8004B35C 46082183 */  div.s $f6, $f4, $f8
/* AC2500 8004B360 2407000A */  li    $a3, 10
/* AC2504 8004B364 44063000 */  mfc1  $a2, $f6
/* AC2508 8004B368 0C010E47 */  jal   func_8004391C
/* AC250C 8004B36C 00000000 */   nop
/* AC2510 8004B370 1000000D */  b     .L8004B3A8
/* AC2514 8004B374 A7A200AC */   sh    $v0, 0xac($sp)
.L8004B378:
/* AC2518 8004B378 44805000 */  mtc1  $zero, $f10
/* AC251C 8004B37C 8446000E */  lh    $a2, 0xe($v0)
/* AC2520 8004B380 8E070014 */  lw    $a3, 0x14($s0)
/* AC2524 8004B384 0C011B2D */  jal   func_80046CB4
/* AC2528 8004B388 E7AA0010 */   swc1  $f10, 0x10($sp)
/* AC252C 8004B38C A7A200AE */  sh    $v0, 0xae($sp)
/* AC2530 8004B390 86060020 */  lh    $a2, 0x20($s0)
/* AC2534 8004B394 02002025 */  move  $a0, $s0
/* AC2538 8004B398 87A50094 */  lh    $a1, 0x94($sp)
/* AC253C 8004B39C 0C011AD1 */  jal   func_80046B44
/* AC2540 8004B3A0 00003825 */   move  $a3, $zero
/* AC2544 8004B3A4 A7A200AC */  sh    $v0, 0xac($sp)
.L8004B3A8:
/* AC2548 8004B3A8 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC254C 8004B3AC 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC2550 8004B3B0 27A600A8 */  addiu $a2, $sp, 0xa8
/* AC2554 8004B3B4 8464019E */  lh    $a0, 0x19e($v1)
/* AC2558 8004B3B8 0082082A */  slt   $at, $a0, $v0
/* AC255C 8004B3BC 50200003 */  beql  $at, $zero, .L8004B3CC
/* AC2560 8004B3C0 846201D8 */   lh    $v0, 0x1d8($v1)
/* AC2564 8004B3C4 A7A400AC */  sh    $a0, 0xac($sp)
/* AC2568 8004B3C8 846201D8 */  lh    $v0, 0x1d8($v1)
.L8004B3CC:
/* AC256C 8004B3CC 87AA00AC */  lh    $t2, 0xac($sp)
/* AC2570 8004B3D0 0142082A */  slt   $at, $t2, $v0
/* AC2574 8004B3D4 50200003 */  beql  $at, $zero, .L8004B3E4
/* AC2578 8004B3D8 8FA40038 */   lw    $a0, 0x38($sp)
/* AC257C 8004B3DC A7A200AC */  sh    $v0, 0xac($sp)
/* AC2580 8004B3E0 8FA40038 */  lw    $a0, 0x38($sp)
.L8004B3E4:
/* AC2584 8004B3E4 0C010F0A */  jal   func_80043C28
/* AC2588 8004B3E8 8FA5003C */   lw    $a1, 0x3c($sp)
/* AC258C 8004B3EC 860B0140 */  lh    $t3, 0x140($s0)
/* AC2590 8004B3F0 24010007 */  li    $at, 7
/* AC2594 8004B3F4 55610038 */  bnel  $t3, $at, .L8004B4D8
/* AC2598 8004B3F8 C608000C */   lwc1  $f8, 0xc($s0)
/* AC259C 8004B3FC 860C0022 */  lh    $t4, 0x22($s0)
/* AC25A0 8004B400 02002025 */  move  $a0, $s0
/* AC25A4 8004B404 27A500A8 */  addiu $a1, $sp, 0xa8
/* AC25A8 8004B408 318E0010 */  andi  $t6, $t4, 0x10
/* AC25AC 8004B40C 15C00031 */  bnez  $t6, .L8004B4D4
/* AC25B0 8004B410 27AD00BC */   addiu $t5, $sp, 0xbc
/* AC25B4 8004B414 8E060004 */  lw    $a2, 4($s0)
/* AC25B8 8004B418 8E07000C */  lw    $a3, 0xc($s0)
/* AC25BC 8004B41C AFB10014 */  sw    $s1, 0x14($sp)
/* AC25C0 8004B420 0C011B88 */  jal   func_80046E20
/* AC25C4 8004B424 AFAD0010 */   sw    $t5, 0x10($sp)
/* AC25C8 8004B428 860F0022 */  lh    $t7, 0x22($s0)
/* AC25CC 8004B42C 87B9009C */  lh    $t9, 0x9c($sp)
/* AC25D0 8004B430 27A400A8 */  addiu $a0, $sp, 0xa8
/* AC25D4 8004B434 31F80004 */  andi  $t8, $t7, 4
/* AC25D8 8004B438 13000008 */  beqz  $t8, .L8004B45C
/* AC25DC 8004B43C 8FA50040 */   lw    $a1, 0x40($sp)
/* AC25E0 8004B440 00194023 */  negu  $t0, $t9
/* AC25E4 8004B444 A6080134 */  sh    $t0, 0x134($s0)
/* AC25E8 8004B448 87A9009E */  lh    $t1, 0x9e($sp)
/* AC25EC 8004B44C A6000138 */  sh    $zero, 0x138($s0)
/* AC25F0 8004B450 252A8001 */  addiu $t2, $t1, -0x7fff
/* AC25F4 8004B454 10000008 */  b     .L8004B478
/* AC25F8 8004B458 A60A0136 */   sh    $t2, 0x136($s0)
.L8004B45C:
/* AC25FC 8004B45C 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* AC2600 8004B460 8FA6003C */   lw    $a2, 0x3c($sp)
/* AC2604 8004B464 87AB00AC */  lh    $t3, 0xac($sp)
/* AC2608 8004B468 A60B0134 */  sh    $t3, 0x134($s0)
/* AC260C 8004B46C 87AC00AE */  lh    $t4, 0xae($sp)
/* AC2610 8004B470 A6000138 */  sh    $zero, 0x138($s0)
/* AC2614 8004B474 A60C0136 */  sh    $t4, 0x136($s0)
.L8004B478:
/* AC2618 8004B478 862E0018 */  lh    $t6, 0x18($s1)
/* AC261C 8004B47C 3C018014 */  lui   $at, %hi(D_80139FD0)
/* AC2620 8004B480 C7A800BC */  lwc1  $f8, 0xbc($sp)
/* AC2624 8004B484 51C00021 */  beql  $t6, $zero, .L8004B50C
/* AC2628 8004B488 C60C0018 */   lwc1  $f12, 0x18($s0)
/* AC262C 8004B48C C4249FD0 */  lwc1  $f4, %lo(D_80139FD0)($at)
/* AC2630 8004B490 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC2634 8004B494 44815000 */  mtc1  $at, $f10
/* AC2638 8004B498 46082182 */  mul.s $f6, $f4, $f8
/* AC263C 8004B49C 862D0016 */  lh    $t5, 0x16($s1)
/* AC2640 8004B4A0 86050136 */  lh    $a1, 0x136($s0)
/* AC2644 8004B4A4 2407000A */  li    $a3, 10
/* AC2648 8004B4A8 25B98001 */  addiu $t9, $t5, -0x7fff
/* AC264C 8004B4AC 03255023 */  subu  $t2, $t9, $a1
/* AC2650 8004B4B0 00AA2021 */  addu  $a0, $a1, $t2
/* AC2654 8004B4B4 46065101 */  sub.s $f4, $f10, $f6
/* AC2658 8004B4B8 00042400 */  sll   $a0, $a0, 0x10
/* AC265C 8004B4BC 00042403 */  sra   $a0, $a0, 0x10
/* AC2660 8004B4C0 44062000 */  mfc1  $a2, $f4
/* AC2664 8004B4C4 0C010E47 */  jal   func_8004391C
/* AC2668 8004B4C8 00000000 */   nop
/* AC266C 8004B4CC 1000000E */  b     .L8004B508
/* AC2670 8004B4D0 A6020136 */   sh    $v0, 0x136($s0)
.L8004B4D4:
/* AC2674 8004B4D4 C608000C */  lwc1  $f8, 0xc($s0)
.L8004B4D8:
/* AC2678 8004B4D8 A6200018 */  sh    $zero, 0x18($s1)
/* AC267C 8004B4DC 3C018012 */  lui   $at, %hi(D_8011D3E8) # $at, 0x8012
/* AC2680 8004B4E0 E6280010 */  swc1  $f8, 0x10($s1)
/* AC2684 8004B4E4 8FAC0038 */  lw    $t4, 0x38($sp)
/* AC2688 8004B4E8 AC20D3E8 */  sw    $zero, %lo(D_8011D3E8)($at)
/* AC268C 8004B4EC 8FAB0040 */  lw    $t3, 0x40($sp)
/* AC2690 8004B4F0 8D8D0000 */  lw    $t5, ($t4)
/* AC2694 8004B4F4 AD6D0000 */  sw    $t5, ($t3)
/* AC2698 8004B4F8 8D8E0004 */  lw    $t6, 4($t4)
/* AC269C 8004B4FC AD6E0004 */  sw    $t6, 4($t3)
/* AC26A0 8004B500 8D8D0008 */  lw    $t5, 8($t4)
/* AC26A4 8004B504 AD6D0008 */  sw    $t5, 8($t3)
.L8004B508:
/* AC26A8 8004B508 C60C0018 */  lwc1  $f12, 0x18($s0)
.L8004B50C:
/* AC26AC 8004B50C C60E00FC */  lwc1  $f14, 0xfc($s0)
/* AC26B0 8004B510 8E0600D4 */  lw    $a2, 0xd4($s0)
/* AC26B4 8004B514 0C010E27 */  jal   func_8004389C
/* AC26B8 8004B518 3C073F80 */   lui   $a3, 0x3f80
/* AC26BC 8004B51C E60000FC */  swc1  $f0, 0xfc($s0)
/* AC26C0 8004B520 00002025 */  move  $a0, $zero
/* AC26C4 8004B524 8605015A */  lh    $a1, 0x15a($s0)
/* AC26C8 8004B528 3C063F00 */  lui   $a2, 0x3f00
/* AC26CC 8004B52C 0C010E47 */  jal   func_8004391C
/* AC26D0 8004B530 2407000A */   li    $a3, 10
/* AC26D4 8004B534 A602015A */  sh    $v0, 0x15a($s0)
/* AC26D8 8004B538 02002025 */  move  $a0, $s0
/* AC26DC 8004B53C 0C011429 */  jal   func_800450A4
/* AC26E0 8004B540 8E05001C */   lw    $a1, 0x1c($s0)
/* AC26E4 8004B544 E6000100 */  swc1  $f0, 0x100($s0)
/* AC26E8 8004B548 8FBF0024 */  lw    $ra, 0x24($sp)
/* AC26EC 8004B54C 8FB10020 */  lw    $s1, 0x20($sp)
/* AC26F0 8004B550 8FB0001C */  lw    $s0, 0x1c($sp)
/* AC26F4 8004B554 27BD00D8 */  addiu $sp, $sp, 0xd8
/* AC26F8 8004B558 03E00008 */  jr    $ra
/* AC26FC 8004B55C 24020001 */   li    $v0, 1
