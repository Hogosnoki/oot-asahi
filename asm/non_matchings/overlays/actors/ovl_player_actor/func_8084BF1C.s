glabel func_8084BF1C
/* 19D0C 8084BF1C 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 19D10 8084BF20 AFBF002C */  sw      $ra, 0x002C($sp)
/* 19D14 8084BF24 AFB00028 */  sw      $s0, 0x0028($sp)
/* 19D18 8084BF28 AFA5008C */  sw      $a1, 0x008C($sp)
/* 19D1C 8084BF2C C4840028 */  lwc1    $f4, 0x0028($a0)           ## 00000028
/* 19D20 8084BF30 3C028086 */  lui     $v0, %hi(D_80858AB4)       ## $v0 = 80860000
/* 19D24 8084BF34 8C428AB4 */  lw      $v0, %lo(D_80858AB4)($v0)
/* 19D28 8084BF38 4600218D */  trunc.w.s $f6, $f4
/* 19D2C 8084BF3C 8C980680 */  lw      $t8, 0x0680($a0)           ## 00000680
/* 19D30 8084BF40 808A084F */  lb      $t2, 0x084F($a0)           ## 0000084F
/* 19D34 8084BF44 80480015 */  lb      $t0, 0x0015($v0)           ## 80860015
/* 19D38 8084BF48 440F3000 */  mfc1    $t7, $f6
/* 19D3C 8084BF4C 80490014 */  lb      $t1, 0x0014($v0)           ## 80860014
/* 19D40 8084BF50 37190040 */  ori     $t9, $t8, 0x0040           ## $t9 = 00000040
/* 19D44 8084BF54 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 19D48 8084BF58 AC990680 */  sw      $t9, 0x0680($a0)           ## 00000680
/* 19D4C 8084BF5C 11400018 */  beq     $t2, $zero, .L8084BFC0
/* 19D50 8084BF60 A48F0894 */  sh      $t7, 0x0894($a0)           ## 00000894
/* 19D54 8084BF64 05000003 */  bltz    $t0, .L8084BF74
/* 19D58 8084BF68 00081823 */  subu    $v1, $zero, $t0
/* 19D5C 8084BF6C 10000001 */  beq     $zero, $zero, .L8084BF74
/* 19D60 8084BF70 01001825 */  or      $v1, $t0, $zero            ## $v1 = 00000000
.L8084BF74:
/* 19D64 8084BF74 05200003 */  bltz    $t1, .L8084BF84
/* 19D68 8084BF78 00091023 */  subu    $v0, $zero, $t1
/* 19D6C 8084BF7C 10000001 */  beq     $zero, $zero, .L8084BF84
/* 19D70 8084BF80 01201025 */  or      $v0, $t1, $zero            ## $v0 = 00000000
.L8084BF84:
/* 19D74 8084BF84 0062082A */  slt     $at, $v1, $v0
/* 19D78 8084BF88 1020000D */  beq     $at, $zero, .L8084BFC0
/* 19D7C 8084BF8C 00000000 */  nop
/* 19D80 8084BF90 05200003 */  bltz    $t1, .L8084BFA0
/* 19D84 8084BF94 00091023 */  subu    $v0, $zero, $t1
/* 19D88 8084BF98 10000001 */  beq     $zero, $zero, .L8084BFA0
/* 19D8C 8084BF9C 01201025 */  or      $v0, $t1, $zero            ## $v0 = 00000000
.L8084BFA0:
/* 19D90 8084BFA0 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 19D94 8084BFA4 3C018085 */  lui     $at, %hi(D_80855520)       ## $at = 80850000
/* 19D98 8084BFA8 C4305520 */  lwc1    $f16, %lo(D_80855520)($at)
/* 19D9C 8084BFAC 468042A0 */  cvt.s.w $f10, $f8
/* 19DA0 8084BFB0 00004025 */  or      $t0, $zero, $zero          ## $t0 = 00000000
/* 19DA4 8084BFB4 46105002 */  mul.s   $f0, $f10, $f16
/* 19DA8 8084BFB8 1000000D */  beq     $zero, $zero, .L8084BFF0
/* 19DAC 8084BFBC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L8084BFC0:
/* 19DB0 8084BFC0 05000003 */  bltz    $t0, .L8084BFD0
/* 19DB4 8084BFC4 00081023 */  subu    $v0, $zero, $t0
/* 19DB8 8084BFC8 10000001 */  beq     $zero, $zero, .L8084BFD0
/* 19DBC 8084BFCC 01001025 */  or      $v0, $t0, $zero            ## $v0 = 00000000
.L8084BFD0:
/* 19DC0 8084BFD0 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 19DC4 8084BFD4 3C018085 */  lui     $at, %hi(D_80855524)       ## $at = 80850000
/* 19DC8 8084BFD8 C4265524 */  lwc1    $f6, %lo(D_80855524)($at)
/* 19DCC 8084BFDC 46809120 */  cvt.s.w $f4, $f18
/* 19DD0 8084BFE0 00004825 */  or      $t1, $zero, $zero          ## $t1 = 00000000
/* 19DD4 8084BFE4 46062002 */  mul.s   $f0, $f4, $f6
/* 19DD8 8084BFE8 00000000 */  nop
/* 19DDC 8084BFEC 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L8084BFF0:
/* 19DE0 8084BFF0 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 19DE4 8084BFF4 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 19DE8 8084BFF8 3C018085 */  lui     $at, %hi(D_80855528)       ## $at = 80850000
/* 19DEC 8084BFFC 460C003C */  c.lt.s  $f0, $f12
/* 19DF0 8084C000 00000000 */  nop
/* 19DF4 8084C004 45000003 */  bc1f    .L8084C014
/* 19DF8 8084C008 00000000 */  nop
/* 19DFC 8084C00C 10000007 */  beq     $zero, $zero, .L8084C02C
/* 19E00 8084C010 46006006 */  mov.s   $f0, $f12
.L8084C014:
/* 19E04 8084C014 C4225528 */  lwc1    $f2, %lo(D_80855528)($at)
/* 19E08 8084C018 4600103C */  c.lt.s  $f2, $f0
/* 19E0C 8084C01C 00000000 */  nop
/* 19E10 8084C020 45020003 */  bc1fl   .L8084C030
/* 19E14 8084C024 C60801D0 */  lwc1    $f8, 0x01D0($s0)           ## 000001D0
/* 19E18 8084C028 46001006 */  mov.s   $f0, $f2
.L8084C02C:
/* 19E1C 8084C02C C60801D0 */  lwc1    $f8, 0x01D0($s0)           ## 000001D0
.L8084C030:
/* 19E20 8084C030 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 19E24 8084C034 4608503E */  c.le.s  $f10, $f8
/* 19E28 8084C038 00000000 */  nop
/* 19E2C 8084C03C 45020004 */  bc1fl   .L8084C050
/* 19E30 8084C040 44811000 */  mtc1    $at, $f2                   ## $f2 = -1.00
/* 19E34 8084C044 10000003 */  beq     $zero, $zero, .L8084C054
/* 19E38 8084C048 46006086 */  mov.s   $f2, $f12
/* 19E3C 8084C04C 44811000 */  mtc1    $at, $f2                   ## $f2 = -1.00
.L8084C050:
/* 19E40 8084C050 00000000 */  nop
.L8084C054:
/* 19E44 8084C054 46001402 */  mul.s   $f16, $f2, $f0
/* 19E48 8084C058 86030850 */  lh      $v1, 0x0850($s0)           ## 00000850
/* 19E4C 8084C05C 04600036 */  bltz    $v1, .L8084C138
/* 19E50 8084C060 E61001D0 */  swc1    $f16, 0x01D0($s0)          ## 000001D0
/* 19E54 8084C064 8E0B0074 */  lw      $t3, 0x0074($s0)           ## 00000074
/* 19E58 8084C068 51600019 */  beql    $t3, $zero, .L8084C0D0
/* 19E5C 8084C06C 8E0C0678 */  lw      $t4, 0x0678($s0)           ## 00000678
/* 19E60 8084C070 9205007C */  lbu     $a1, 0x007C($s0)           ## 0000007C
/* 19E64 8084C074 8FA4008C */  lw      $a0, 0x008C($sp)
/* 19E68 8084C078 24010032 */  addiu   $at, $zero, 0x0032         ## $at = 00000032
/* 19E6C 8084C07C 10A10013 */  beq     $a1, $at, .L8084C0CC
/* 19E70 8084C080 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 19E74 8084C084 AFA80084 */  sw      $t0, 0x0084($sp)
/* 19E78 8084C088 0C00FAE1 */  jal     DynaPolyInfo_GetActor
              ## DynaPolyInfo_getActor
/* 19E7C 8084C08C AFA90080 */  sw      $t1, 0x0080($sp)
/* 19E80 8084C090 8FA80084 */  lw      $t0, 0x0084($sp)
/* 19E84 8084C094 1040000D */  beq     $v0, $zero, .L8084C0CC
/* 19E88 8084C098 8FA90080 */  lw      $t1, 0x0080($sp)
/* 19E8C 8084C09C 24440024 */  addiu   $a0, $v0, 0x0024           ## $a0 = 00000024
/* 19E90 8084C0A0 24450100 */  addiu   $a1, $v0, 0x0100           ## $a1 = 00000100
/* 19E94 8084C0A4 27A6006C */  addiu   $a2, $sp, 0x006C           ## $a2 = FFFFFFE4
/* 19E98 8084C0A8 AFA80084 */  sw      $t0, 0x0084($sp)
/* 19E9C 8084C0AC 0C01DFB4 */  jal     Math_Vec3f_Diff
              ## Vec3f_Sub
/* 19EA0 8084C0B0 AFA90080 */  sw      $t1, 0x0080($sp)
/* 19EA4 8084C0B4 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 19EA8 8084C0B8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000024
/* 19EAC 8084C0BC 0C01DFA7 */  jal     Math_Vec3f_Sum
              ## Vec3f_Add
/* 19EB0 8084C0C0 27A5006C */  addiu   $a1, $sp, 0x006C           ## $a1 = FFFFFFE4
/* 19EB4 8084C0C4 8FA80084 */  lw      $t0, 0x0084($sp)
/* 19EB8 8084C0C8 8FA90080 */  lw      $t1, 0x0080($sp)
.L8084C0CC:
/* 19EBC 8084C0CC 8E0C0678 */  lw      $t4, 0x0678($s0)           ## 00000678
.L8084C0D0:
/* 19EC0 8084C0D0 240D0007 */  addiu   $t5, $zero, 0x0007         ## $t5 = 00000007
/* 19EC4 8084C0D4 8FA4008C */  lw      $a0, 0x008C($sp)
/* 19EC8 8084C0D8 C5920000 */  lwc1    $f18, 0x0000($t4)          ## 00000000
/* 19ECC 8084C0DC AFA90080 */  sw      $t1, 0x0080($sp)
/* 19ED0 8084C0E0 AFA80084 */  sw      $t0, 0x0084($sp)
/* 19ED4 8084C0E4 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 19ED8 8084C0E8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 19EDC 8084C0EC 3C0641D0 */  lui     $a2, 0x41D0                ## $a2 = 41D00000
/* 19EE0 8084C0F0 3C0740C0 */  lui     $a3, 0x40C0                ## $a3 = 40C00000
/* 19EE4 8084C0F4 0C00B92D */  jal     func_8002E4B4
/* 19EE8 8084C0F8 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 19EEC 8084C0FC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 19EF0 8084C100 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 19EF4 8084C104 8E0E0678 */  lw      $t6, 0x0678($s0)           ## 00000678
/* 19EF8 8084C108 3C01C1A0 */  lui     $at, 0xC1A0                ## $at = C1A00000
/* 19EFC 8084C10C 44813000 */  mtc1    $at, $f6                   ## $f6 = -20.00
/* 19F00 8084C110 8DC7003C */  lw      $a3, 0x003C($t6)           ## 0000003C
/* 19F04 8084C114 8FA4008C */  lw      $a0, 0x008C($sp)
/* 19F08 8084C118 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 19F0C 8084C11C 3C0641D0 */  lui     $a2, 0x41D0                ## $a2 = 41D00000
/* 19F10 8084C120 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 19F14 8084C124 0C20FCD8 */  jal     func_8083F360
/* 19F18 8084C128 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 19F1C 8084C12C 8FA80084 */  lw      $t0, 0x0084($sp)
/* 19F20 8084C130 8FA90080 */  lw      $t1, 0x0080($sp)
/* 19F24 8084C134 86030850 */  lh      $v1, 0x0850($s0)           ## 00000850
.L8084C138:
/* 19F28 8084C138 04600008 */  bltz    $v1, .L8084C15C
/* 19F2C 8084C13C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19F30 8084C140 8FA5008C */  lw      $a1, 0x008C($sp)
/* 19F34 8084C144 AFA80084 */  sw      $t0, 0x0084($sp)
/* 19F38 8084C148 0C20FEF0 */  jal     func_8083FBC0
/* 19F3C 8084C14C AFA90080 */  sw      $t1, 0x0080($sp)
/* 19F40 8084C150 8FA80084 */  lw      $t0, 0x0084($sp)
/* 19F44 8084C154 144000E7 */  bne     $v0, $zero, .L8084C4F4
/* 19F48 8084C158 8FA90080 */  lw      $t1, 0x0080($sp)
.L8084C15C:
/* 19F4C 8084C15C 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 19F50 8084C160 AFA50030 */  sw      $a1, 0x0030($sp)
/* 19F54 8084C164 8FA4008C */  lw      $a0, 0x008C($sp)
/* 19F58 8084C168 AFA80084 */  sw      $t0, 0x0084($sp)
/* 19F5C 8084C16C 0C028EF0 */  jal     func_800A3BC0
/* 19F60 8084C170 AFA90080 */  sw      $t1, 0x0080($sp)
/* 19F64 8084C174 8FA80084 */  lw      $t0, 0x0084($sp)
/* 19F68 8084C178 104000DE */  beq     $v0, $zero, .L8084C4F4
/* 19F6C 8084C17C 8FA90080 */  lw      $t1, 0x0080($sp)
/* 19F70 8084C180 86030850 */  lh      $v1, 0x0850($s0)           ## 00000850
/* 19F74 8084C184 04610008 */  bgez    $v1, .L8084C1A8
/* 19F78 8084C188 00000000 */  nop
/* 19F7C 8084C18C 04600003 */  bltz    $v1, .L8084C19C
/* 19F80 8084C190 00031023 */  subu    $v0, $zero, $v1
/* 19F84 8084C194 10000001 */  beq     $zero, $zero, .L8084C19C
/* 19F88 8084C198 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L8084C19C:
/* 19F8C 8084C19C 304F0001 */  andi    $t7, $v0, 0x0001           ## $t7 = 00000000
/* 19F90 8084C1A0 10000110 */  beq     $zero, $zero, .L8084C5E4
/* 19F94 8084C1A4 A60F0850 */  sh      $t7, 0x0850($s0)           ## 00000850
.L8084C1A8:
/* 19F98 8084C1A8 51000099 */  beql    $t0, $zero, .L8084C410
/* 19F9C 8084C1AC 8219084F */  lb      $t9, 0x084F($s0)           ## 0000084F
/* 19FA0 8084C1B0 8204084F */  lb      $a0, 0x084F($s0)           ## 0000084F
/* 19FA4 8084C1B4 3C018085 */  lui     $at, %hi(D_80854890)       ## $at = 80850000
/* 19FA8 8084C1B8 1900004F */  blez    $t0, .L8084C2F8
/* 19FAC 8084C1BC 00831021 */  addu    $v0, $a0, $v1
/* 19FB0 8084C1C0 8E180678 */  lw      $t8, 0x0678($s0)           ## 00000678
/* 19FB4 8084C1C4 3C068085 */  lui     $a2, %hi(D_8085488C)       ## $a2 = 80850000
/* 19FB8 8084C1C8 24C6488C */  addiu   $a2, $a2, %lo(D_8085488C)  ## $a2 = 8085488C
/* 19FBC 8084C1CC C7080040 */  lwc1    $f8, 0x0040($t8)           ## 00000040
/* 19FC0 8084C1D0 AFA20068 */  sw      $v0, 0x0068($sp)
/* 19FC4 8084C1D4 8FA4008C */  lw      $a0, 0x008C($sp)
/* 19FC8 8084C1D8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 19FCC 8084C1DC 27A7005C */  addiu   $a3, $sp, 0x005C           ## $a3 = FFFFFFD4
/* 19FD0 8084C1E0 0C20E5CF */  jal     func_8083973C
/* 19FD4 8084C1E4 E4284890 */  swc1    $f8, %lo(D_80854890)($at)
/* 19FD8 8084C1E8 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 19FDC 8084C1EC 8FA20068 */  lw      $v0, 0x0068($sp)
/* 19FE0 8084C1F0 46000086 */  mov.s   $f2, $f0
/* 19FE4 8084C1F4 4600503C */  c.lt.s  $f10, $f0
/* 19FE8 8084C1F8 0002C080 */  sll     $t8, $v0,  2
/* 19FEC 8084C1FC 4502002C */  bc1fl   .L8084C2B0
/* 19FF0 8084C200 8E0F0678 */  lw      $t7, 0x0678($s0)           ## 00000678
/* 19FF4 8084C204 8219084F */  lb      $t9, 0x084F($s0)           ## 0000084F
/* 19FF8 8084C208 3C01FFDF */  lui     $at, 0xFFDF                ## $at = FFDF0000
/* 19FFC 8084C20C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFDFFFFF
/* 1A000 8084C210 1320001D */  beq     $t9, $zero, .L8084C288
/* 1A004 8084C214 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1A008 8084C218 8E0A067C */  lw      $t2, 0x067C($s0)           ## 0000067C
/* 1A00C 8084C21C 8E0C0678 */  lw      $t4, 0x0678($s0)           ## 00000678
/* 1A010 8084C220 E6020028 */  swc1    $f2, 0x0028($s0)           ## 00000028
/* 1A014 8084C224 01415824 */  and     $t3, $t2, $at
/* 1A018 8084C228 AE0B067C */  sw      $t3, 0x067C($s0)           ## 0000067C
/* 1A01C 8084C22C 3C0D0400 */  lui     $t5, 0x0400                ## $t5 = 04000000
/* 1A020 8084C230 25AD3000 */  addiu   $t5, $t5, 0x3000           ## $t5 = 04003000
/* 1A024 8084C234 8E060074 */  lw      $a2, 0x0074($s0)           ## 00000074
/* 1A028 8084C238 8D87003C */  lw      $a3, 0x003C($t4)           ## 0000003C
/* 1A02C 8084C23C AFAD0010 */  sw      $t5, 0x0010($sp)
/* 1A030 8084C240 8FA4008C */  lw      $a0, 0x008C($sp)
/* 1A034 8084C244 0C20E971 */  jal     func_8083A5C4
/* 1A038 8084C248 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1A03C 8084C24C 860E083C */  lh      $t6, 0x083C($s0)           ## 0000083C
/* 1A040 8084C250 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 1A044 8084C254 3C050400 */  lui     $a1, 0x0400                ## $a1 = 04000000
/* 1A048 8084C258 01C17821 */  addu    $t7, $t6, $at
/* 1A04C 8084C25C A60F083C */  sh      $t7, 0x083C($s0)           ## 0000083C
/* 1A050 8084C260 8618083C */  lh      $t8, 0x083C($s0)           ## 0000083C
/* 1A054 8084C264 24A53000 */  addiu   $a1, $a1, 0x3000           ## $a1 = 04003000
/* 1A058 8084C268 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1A05C 8084C26C A61800B6 */  sh      $t8, 0x00B6($s0)           ## 000000B6
/* 1A060 8084C270 0C20EA6E */  jal     func_8083A9B8
/* 1A064 8084C274 8FA6008C */  lw      $a2, 0x008C($sp)
/* 1A068 8084C278 8E19067C */  lw      $t9, 0x067C($s0)           ## 0000067C
/* 1A06C 8084C27C 372A4000 */  ori     $t2, $t9, 0x4000           ## $t2 = 00004000
/* 1A070 8084C280 1000005E */  beq     $zero, $zero, .L8084C3FC
/* 1A074 8084C284 AE0A067C */  sw      $t2, 0x067C($s0)           ## 0000067C
.L8084C288:
/* 1A078 8084C288 860C0850 */  lh      $t4, 0x0850($s0)           ## 00000850
/* 1A07C 8084C28C 8E0B0678 */  lw      $t3, 0x0678($s0)           ## 00000678
/* 1A080 8084C290 8FA6008C */  lw      $a2, 0x008C($sp)
/* 1A084 8084C294 000C6880 */  sll     $t5, $t4,  2
/* 1A088 8084C298 016D7021 */  addu    $t6, $t3, $t5
/* 1A08C 8084C29C 0C20FC1C */  jal     func_8083F070
/* 1A090 8084C2A0 8DC500CC */  lw      $a1, 0x00CC($t6)           ## 000000CC
/* 1A094 8084C2A4 10000056 */  beq     $zero, $zero, .L8084C400
/* 1A098 8084C2A8 860F0850 */  lh      $t7, 0x0850($s0)           ## 00000850
/* 1A09C 8084C2AC 8E0F0678 */  lw      $t7, 0x0678($s0)           ## 00000678
.L8084C2B0:
/* 1A0A0 8084C2B0 0302C023 */  subu    $t8, $t8, $v0
/* 1A0A4 8084C2B4 0018C040 */  sll     $t8, $t8,  1
/* 1A0A8 8084C2B8 01F8C821 */  addu    $t9, $t7, $t8
/* 1A0AC 8084C2BC 8B2C004A */  lwl     $t4, 0x004A($t9)           ## 0000004A
/* 1A0B0 8084C2C0 9B2C004D */  lwr     $t4, 0x004D($t9)           ## 0000004D
/* 1A0B4 8084C2C4 8E0B0678 */  lw      $t3, 0x0678($s0)           ## 00000678
/* 1A0B8 8084C2C8 00026880 */  sll     $t5, $v0,  2
/* 1A0BC 8084C2CC AA0C01EC */  swl     $t4, 0x01EC($s0)           ## 000001EC
/* 1A0C0 8084C2D0 BA0C01EF */  swr     $t4, 0x01EF($s0)           ## 000001EF
/* 1A0C4 8084C2D4 972C004E */  lhu     $t4, 0x004E($t9)           ## 0000004E
/* 1A0C8 8084C2D8 016D7021 */  addu    $t6, $t3, $t5
/* 1A0CC 8084C2DC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1A0D0 8084C2E0 A60C01F0 */  sh      $t4, 0x01F0($s0)           ## 000001F0
/* 1A0D4 8084C2E4 8DC600AC */  lw      $a2, 0x00AC($t6)           ## 000000AC
/* 1A0D8 8084C2E8 0C20C899 */  jal     func_80832264
/* 1A0DC 8084C2EC 8FA4008C */  lw      $a0, 0x008C($sp)
/* 1A0E0 8084C2F0 10000043 */  beq     $zero, $zero, .L8084C400
/* 1A0E4 8084C2F4 860F0850 */  lh      $t7, 0x0850($s0)           ## 00000850
.L8084C2F8:
/* 1A0E8 8084C2F8 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 1A0EC 8084C2FC C6120080 */  lwc1    $f18, 0x0080($s0)          ## 00000080
/* 1A0F0 8084C300 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 1A0F4 8084C304 44813000 */  mtc1    $at, $f6                   ## $f6 = 15.00
/* 1A0F8 8084C308 46128101 */  sub.s   $f4, $f16, $f18
/* 1A0FC 8084C30C 38420001 */  xori    $v0, $v0, 0x0001           ## $v0 = 00000001
/* 1A100 8084C310 00027880 */  sll     $t7, $v0,  2
/* 1A104 8084C314 4606203C */  c.lt.s  $f4, $f6
/* 1A108 8084C318 00000000 */  nop
/* 1A10C 8084C31C 4502001B */  bc1fl   .L8084C38C
/* 1A110 8084C320 8E0E0678 */  lw      $t6, 0x0678($s0)           ## 00000678
/* 1A114 8084C324 10800005 */  beq     $a0, $zero, .L8084C33C
/* 1A118 8084C328 8FA5008C */  lw      $a1, 0x008C($sp)
/* 1A11C 8084C32C 0C20FEDF */  jal     func_8083FB7C
/* 1A120 8084C330 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1A124 8084C334 10000032 */  beq     $zero, $zero, .L8084C400
/* 1A128 8084C338 860F0850 */  lh      $t7, 0x0850($s0)           ## 00000850
.L8084C33C:
/* 1A12C 8084C33C 10600009 */  beq     $v1, $zero, .L8084C364
/* 1A130 8084C340 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1A134 8084C344 8E0F0678 */  lw      $t7, 0x0678($s0)           ## 00000678
/* 1A138 8084C348 86030850 */  lh      $v1, 0x0850($s0)           ## 00000850
/* 1A13C 8084C34C 89F90044 */  lwl     $t9, 0x0044($t7)           ## 00000044
/* 1A140 8084C350 99F90047 */  lwr     $t9, 0x0047($t7)           ## 00000047
/* 1A144 8084C354 AA1901EC */  swl     $t9, 0x01EC($s0)           ## 000001EC
/* 1A148 8084C358 BA1901EF */  swr     $t9, 0x01EF($s0)           ## 000001EF
/* 1A14C 8084C35C 95F90048 */  lhu     $t9, 0x0048($t7)           ## 00000048
/* 1A150 8084C360 A61901F0 */  sh      $t9, 0x01F0($s0)           ## 000001F0
.L8084C364:
/* 1A154 8084C364 8E0A0678 */  lw      $t2, 0x0678($s0)           ## 00000678
/* 1A158 8084C368 00036080 */  sll     $t4, $v1,  2
/* 1A15C 8084C36C 8FA6008C */  lw      $a2, 0x008C($sp)
/* 1A160 8084C370 014C5821 */  addu    $t3, $t2, $t4
/* 1A164 8084C374 0C20FC1C */  jal     func_8083F070
/* 1A168 8084C378 8D6500C4 */  lw      $a1, 0x00C4($t3)           ## 000000C4
/* 1A16C 8084C37C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 1A170 8084C380 1000001E */  beq     $zero, $zero, .L8084C3FC
/* 1A174 8084C384 A60D0850 */  sh      $t5, 0x0850($s0)           ## 00000850
/* 1A178 8084C388 8E0E0678 */  lw      $t6, 0x0678($s0)           ## 00000678
.L8084C38C:
/* 1A17C 8084C38C 01E27823 */  subu    $t7, $t7, $v0
/* 1A180 8084C390 000F7840 */  sll     $t7, $t7,  1
/* 1A184 8084C394 01CFC021 */  addu    $t8, $t6, $t7
/* 1A188 8084C398 8B0A0062 */  lwl     $t2, 0x0062($t8)           ## 00000062
/* 1A18C 8084C39C 9B0A0065 */  lwr     $t2, 0x0065($t8)           ## 00000065
/* 1A190 8084C3A0 8E0C0678 */  lw      $t4, 0x0678($s0)           ## 00000678
/* 1A194 8084C3A4 00025880 */  sll     $t3, $v0,  2
/* 1A198 8084C3A8 AA0A01EC */  swl     $t2, 0x01EC($s0)           ## 000001EC
/* 1A19C 8084C3AC BA0A01EF */  swr     $t2, 0x01EF($s0)           ## 000001EF
/* 1A1A0 8084C3B0 970A0066 */  lhu     $t2, 0x0066($t8)           ## 00000066
/* 1A1A4 8084C3B4 018B6821 */  addu    $t5, $t4, $t3
/* 1A1A8 8084C3B8 A60A01F0 */  sh      $t2, 0x01F0($s0)           ## 000001F0
/* 1A1AC 8084C3BC 8DA400AC */  lw      $a0, 0x00AC($t5)           ## 000000AD
/* 1A1B0 8084C3C0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 1A1B4 8084C3C4 AFA40054 */  sw      $a0, 0x0054($sp)
/* 1A1B8 8084C3C8 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 1A1BC 8084C3CC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 1A1C0 8084C3D0 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 1A1C4 8084C3D4 468042A0 */  cvt.s.w $f10, $f8
/* 1A1C8 8084C3D8 AFAE0018 */  sw      $t6, 0x0018($sp)
/* 1A1CC 8084C3DC 8FA60054 */  lw      $a2, 0x0054($sp)
/* 1A1D0 8084C3E0 8FA4008C */  lw      $a0, 0x008C($sp)
/* 1A1D4 8084C3E4 8FA50030 */  lw      $a1, 0x0030($sp)
/* 1A1D8 8084C3E8 3C07BF80 */  lui     $a3, 0xBF80                ## $a3 = BF800000
/* 1A1DC 8084C3EC E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 1A1E0 8084C3F0 E7A00014 */  swc1    $f0, 0x0014($sp)
/* 1A1E4 8084C3F4 0C028FC2 */  jal     SkelAnime_ChangeLinkAnim
/* 1A1E8 8084C3F8 E7A0001C */  swc1    $f0, 0x001C($sp)
.L8084C3FC:
/* 1A1EC 8084C3FC 860F0850 */  lh      $t7, 0x0850($s0)           ## 00000850
.L8084C400:
/* 1A1F0 8084C400 39F80001 */  xori    $t8, $t7, 0x0001           ## $t8 = 00000001
/* 1A1F4 8084C404 10000077 */  beq     $zero, $zero, .L8084C5E4
/* 1A1F8 8084C408 A6180850 */  sh      $t8, 0x0850($s0)           ## 00000850
/* 1A1FC 8084C40C 8219084F */  lb      $t9, 0x084F($s0)           ## 0000084F
.L8084C410:
/* 1A200 8084C410 53200035 */  beql    $t9, $zero, .L8084C4E8
/* 1A204 8084C414 8E0D0680 */  lw      $t5, 0x0680($s0)           ## 00000680
/* 1A208 8084C418 51200033 */  beql    $t1, $zero, .L8084C4E8
/* 1A20C 8084C41C 8E0D0680 */  lw      $t5, 0x0680($s0)           ## 00000680
/* 1A210 8084C420 8E020678 */  lw      $v0, 0x0678($s0)           ## 00000678
/* 1A214 8084C424 00035080 */  sll     $t2, $v1,  2
/* 1A218 8084C428 0003C080 */  sll     $t8, $v1,  2
/* 1A21C 8084C42C 004A6021 */  addu    $t4, $v0, $t2
/* 1A220 8084C430 19200010 */  blez    $t1, .L8084C474
/* 1A224 8084C434 8D8600BC */  lw      $a2, 0x00BC($t4)           ## 000000BC
/* 1A228 8084C438 00035880 */  sll     $t3, $v1,  2
/* 1A22C 8084C43C 01635823 */  subu    $t3, $t3, $v1
/* 1A230 8084C440 000B5840 */  sll     $t3, $t3,  1
/* 1A234 8084C444 004B6821 */  addu    $t5, $v0, $t3
/* 1A238 8084C448 89AF007A */  lwl     $t7, 0x007A($t5)           ## 0000007A
/* 1A23C 8084C44C 99AF007D */  lwr     $t7, 0x007D($t5)           ## 0000007D
/* 1A240 8084C450 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1A244 8084C454 AA0F01EC */  swl     $t7, 0x01EC($s0)           ## 000001EC
/* 1A248 8084C458 BA0F01EF */  swr     $t7, 0x01EF($s0)           ## 000001EF
/* 1A24C 8084C45C 95AF007E */  lhu     $t7, 0x007E($t5)           ## 0000007E
/* 1A250 8084C460 A60F01F0 */  sh      $t7, 0x01F0($s0)           ## 000001F0
/* 1A254 8084C464 0C20C899 */  jal     func_80832264
/* 1A258 8084C468 8FA4008C */  lw      $a0, 0x008C($sp)
/* 1A25C 8084C46C 1000005E */  beq     $zero, $zero, .L8084C5E8
/* 1A260 8084C470 8FBF002C */  lw      $ra, 0x002C($sp)
.L8084C474:
/* 1A264 8084C474 0303C023 */  subu    $t8, $t8, $v1
/* 1A268 8084C478 0018C040 */  sll     $t8, $t8,  1
/* 1A26C 8084C47C 0058C821 */  addu    $t9, $v0, $t8
/* 1A270 8084C480 8B2C0086 */  lwl     $t4, 0x0086($t9)           ## 00000086
/* 1A274 8084C484 9B2C0089 */  lwr     $t4, 0x0089($t9)           ## 00000089
/* 1A278 8084C488 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 1A27C 8084C48C AA0C01EC */  swl     $t4, 0x01EC($s0)           ## 000001EC
/* 1A280 8084C490 BA0C01EF */  swr     $t4, 0x01EF($s0)           ## 000001EF
/* 1A284 8084C494 972C008A */  lhu     $t4, 0x008A($t9)           ## 0000008A
/* 1A288 8084C498 A60C01F0 */  sh      $t4, 0x01F0($s0)           ## 000001F0
/* 1A28C 8084C49C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 1A290 8084C4A0 AFA60050 */  sw      $a2, 0x0050($sp)
/* 1A294 8084C4A4 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 1A298 8084C4A8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 1A29C 8084C4AC 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 1A2A0 8084C4B0 468084A0 */  cvt.s.w $f18, $f16
/* 1A2A4 8084C4B4 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 1A2A8 8084C4B8 AFAB0018 */  sw      $t3, 0x0018($sp)
/* 1A2AC 8084C4BC 8FA60050 */  lw      $a2, 0x0050($sp)
/* 1A2B0 8084C4C0 8FA4008C */  lw      $a0, 0x008C($sp)
/* 1A2B4 8084C4C4 8FA50030 */  lw      $a1, 0x0030($sp)
/* 1A2B8 8084C4C8 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 1A2BC 8084C4CC 3C07BF80 */  lui     $a3, 0xBF80                ## $a3 = BF800000
/* 1A2C0 8084C4D0 E7A40014 */  swc1    $f4, 0x0014($sp)
/* 1A2C4 8084C4D4 0C028FC2 */  jal     SkelAnime_ChangeLinkAnim
/* 1A2C8 8084C4D8 E7A6001C */  swc1    $f6, 0x001C($sp)
/* 1A2CC 8084C4DC 10000042 */  beq     $zero, $zero, .L8084C5E8
/* 1A2D0 8084C4E0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1A2D4 8084C4E4 8E0D0680 */  lw      $t5, 0x0680($s0)           ## 00000680
.L8084C4E8:
/* 1A2D8 8084C4E8 35AE1000 */  ori     $t6, $t5, 0x1000           ## $t6 = 00001000
/* 1A2DC 8084C4EC 1000003D */  beq     $zero, $zero, .L8084C5E4
/* 1A2E0 8084C4F0 AE0E0680 */  sw      $t6, 0x0680($s0)           ## 00000680
.L8084C4F4:
/* 1A2E4 8084C4F4 86030850 */  lh      $v1, 0x0850($s0)           ## 00000850
/* 1A2E8 8084C4F8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 1A2EC 8084C4FC 04630026 */  bgezl   $v1, .L8084C598
/* 1A2F0 8084C500 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 1A2F4 8084C504 1461000B */  bne     $v1, $at, .L8084C534
/* 1A2F8 8084C508 260401B4 */  addiu   $a0, $s0, 0x01B4           ## $a0 = 000001B4
/* 1A2FC 8084C50C 3C054160 */  lui     $a1, 0x4160                ## $a1 = 41600000
/* 1A300 8084C510 0C02914C */  jal     func_800A4530
/* 1A304 8084C514 AFA40030 */  sw      $a0, 0x0030($sp)
/* 1A308 8084C518 1440001A */  bne     $v0, $zero, .L8084C584
/* 1A30C 8084C51C 8FA40030 */  lw      $a0, 0x0030($sp)
/* 1A310 8084C520 0C02914C */  jal     func_800A4530
/* 1A314 8084C524 3C0541E8 */  lui     $a1, 0x41E8                ## $a1 = 41E80000
/* 1A318 8084C528 14400016 */  bne     $v0, $zero, .L8084C584
/* 1A31C 8084C52C 00000000 */  nop
/* 1A320 8084C530 86030850 */  lh      $v1, 0x0850($s0)           ## 00000850
.L8084C534:
/* 1A324 8084C534 2401FFFC */  addiu   $at, $zero, 0xFFFC         ## $at = FFFFFFFC
/* 1A328 8084C538 1461002A */  bne     $v1, $at, .L8084C5E4
/* 1A32C 8084C53C 260401B4 */  addiu   $a0, $s0, 0x01B4           ## $a0 = 000001B4
/* 1A330 8084C540 3C0541B0 */  lui     $a1, 0x41B0                ## $a1 = 41B00000
/* 1A334 8084C544 0C02914C */  jal     func_800A4530
/* 1A338 8084C548 AFA40030 */  sw      $a0, 0x0030($sp)
/* 1A33C 8084C54C 1440000D */  bne     $v0, $zero, .L8084C584
/* 1A340 8084C550 8FA40030 */  lw      $a0, 0x0030($sp)
/* 1A344 8084C554 0C02914C */  jal     func_800A4530
/* 1A348 8084C558 3C05420C */  lui     $a1, 0x420C                ## $a1 = 420C0000
/* 1A34C 8084C55C 14400009 */  bne     $v0, $zero, .L8084C584
/* 1A350 8084C560 8FA40030 */  lw      $a0, 0x0030($sp)
/* 1A354 8084C564 0C02914C */  jal     func_800A4530
/* 1A358 8084C568 3C054244 */  lui     $a1, 0x4244                ## $a1 = 42440000
/* 1A35C 8084C56C 14400005 */  bne     $v0, $zero, .L8084C584
/* 1A360 8084C570 8FA40030 */  lw      $a0, 0x0030($sp)
/* 1A364 8084C574 0C02914C */  jal     func_800A4530
/* 1A368 8084C578 3C05425C */  lui     $a1, 0x425C                ## $a1 = 425C0000
/* 1A36C 8084C57C 5040001A */  beql    $v0, $zero, .L8084C5E8
/* 1A370 8084C580 8FBF002C */  lw      $ra, 0x002C($sp)
.L8084C584:
/* 1A374 8084C584 0C212FB9 */  jal     func_8084BEE4
/* 1A378 8084C588 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1A37C 8084C58C 10000016 */  beq     $zero, $zero, .L8084C5E8
/* 1A380 8084C590 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1A384 8084C594 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
.L8084C598:
/* 1A388 8084C598 C60A01D0 */  lwc1    $f10, 0x01D0($s0)          ## 000001D0
/* 1A38C 8084C59C 260401B4 */  addiu   $a0, $s0, 0x01B4           ## $a0 = 000001B4
/* 1A390 8084C5A0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 1A394 8084C5A4 460A403C */  c.lt.s  $f8, $f10
/* 1A398 8084C5A8 00000000 */  nop
/* 1A39C 8084C5AC 45020005 */  bc1fl   .L8084C5C4
/* 1A3A0 8084C5B0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 1A3A4 8084C5B4 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 1A3A8 8084C5B8 10000004 */  beq     $zero, $zero, .L8084C5CC
/* 1A3AC 8084C5BC 44050000 */  mfc1    $a1, $f0
/* 1A3B0 8084C5C0 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
.L8084C5C4:
/* 1A3B4 8084C5C4 00000000 */  nop
/* 1A3B8 8084C5C8 44050000 */  mfc1    $a1, $f0
.L8084C5CC:
/* 1A3BC 8084C5CC 0C02914C */  jal     func_800A4530
/* 1A3C0 8084C5D0 00000000 */  nop
/* 1A3C4 8084C5D4 50400004 */  beql    $v0, $zero, .L8084C5E8
/* 1A3C8 8084C5D8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 1A3CC 8084C5DC 0C212FB9 */  jal     func_8084BEE4
/* 1A3D0 8084C5E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8084C5E4:
/* 1A3D4 8084C5E4 8FBF002C */  lw      $ra, 0x002C($sp)
.L8084C5E8:
/* 1A3D8 8084C5E8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 1A3DC 8084C5EC 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
/* 1A3E0 8084C5F0 03E00008 */  jr      $ra
/* 1A3E4 8084C5F4 00000000 */  nop


