.late_rodata
glabel D_808B8640
 .word 0x3A1D4952

.text
glabel func_808B7D50
/* 00640 808B7D50 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00644 808B7D54 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00648 808B7D58 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0064C 808B7D5C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00650 808B7D60 848E0216 */  lh      $t6, 0x0216($a0)           ## 00000216
/* 00654 808B7D64 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00658 808B7D68 29C10079 */  slti    $at, $t6, 0x0079           
/* 0065C 808B7D6C 14200006 */  bne     $at, $zero, .L808B7D88     
/* 00660 808B7D70 24840210 */  addiu   $a0, $a0, 0x0210           ## $a0 = 00000210
/* 00664 808B7D74 240503E8 */  addiu   $a1, $zero, 0x03E8         ## $a1 = 000003E8
/* 00668 808B7D78 0C01DE5F */  jal     Math_ApproxS
              
/* 0066C 808B7D7C 24060032 */  addiu   $a2, $zero, 0x0032         ## $a2 = 00000032
/* 00670 808B7D80 10000006 */  beq     $zero, $zero, .L808B7D9C   
/* 00674 808B7D84 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
.L808B7D88:
/* 00678 808B7D88 26040210 */  addiu   $a0, $s0, 0x0210           ## $a0 = 00000210
/* 0067C 808B7D8C 24050BB8 */  addiu   $a1, $zero, 0x0BB8         ## $a1 = 00000BB8
/* 00680 808B7D90 0C01DE5F */  jal     Math_ApproxS
              
/* 00684 808B7D94 24060064 */  addiu   $a2, $zero, 0x0064         ## $a2 = 00000064
/* 00688 808B7D98 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
.L808B7D9C:
/* 0068C 808B7D9C 86180210 */  lh      $t8, 0x0210($s0)           ## 00000210
/* 00690 808B7DA0 86080216 */  lh      $t0, 0x0216($s0)           ## 00000216
/* 00694 808B7DA4 01F8C821 */  addu    $t9, $t7, $t8              
/* 00698 808B7DA8 29010046 */  slti    $at, $t0, 0x0046           
/* 0069C 808B7DAC 10200007 */  beq     $at, $zero, .L808B7DCC     
/* 006A0 808B7DB0 A61900B6 */  sh      $t9, 0x00B6($s0)           ## 000000B6
/* 006A4 808B7DB4 26040208 */  addiu   $a0, $s0, 0x0208           ## $a0 = 00000208
/* 006A8 808B7DB8 3C0542C8 */  lui     $a1, 0x42C8                ## $a1 = 42C80000
/* 006AC 808B7DBC 0C01DE80 */  jal     Math_ApproxF
              
/* 006B0 808B7DC0 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 006B4 808B7DC4 10000006 */  beq     $zero, $zero, .L808B7DE0   
/* 006B8 808B7DC8 2604020C */  addiu   $a0, $s0, 0x020C           ## $a0 = 0000020C
.L808B7DCC:
/* 006BC 808B7DCC 26040208 */  addiu   $a0, $s0, 0x0208           ## $a0 = 00000208
/* 006C0 808B7DD0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 006C4 808B7DD4 0C01DE80 */  jal     Math_ApproxF
              
/* 006C8 808B7DD8 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 006CC 808B7DDC 2604020C */  addiu   $a0, $s0, 0x020C           ## $a0 = 0000020C
.L808B7DE0:
/* 006D0 808B7DE0 240503E8 */  addiu   $a1, $zero, 0x03E8         ## $a1 = 000003E8
/* 006D4 808B7DE4 0C01DE5F */  jal     Math_ApproxS
              
/* 006D8 808B7DE8 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 006DC 808B7DEC 8609020E */  lh      $t1, 0x020E($s0)           ## 0000020E
/* 006E0 808B7DF0 860A020C */  lh      $t2, 0x020C($s0)           ## 0000020C
/* 006E4 808B7DF4 012A5821 */  addu    $t3, $t1, $t2              
/* 006E8 808B7DF8 A60B020E */  sh      $t3, 0x020E($s0)           ## 0000020E
/* 006EC 808B7DFC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 006F0 808B7E00 8604020E */  lh      $a0, 0x020E($s0)           ## 0000020E
/* 006F4 808B7E04 C6040208 */  lwc1    $f4, 0x0208($s0)           ## 00000208
/* 006F8 808B7E08 C6080008 */  lwc1    $f8, 0x0008($s0)           ## 00000008
/* 006FC 808B7E0C 8604020E */  lh      $a0, 0x020E($s0)           ## 0000020E
/* 00700 808B7E10 46040182 */  mul.s   $f6, $f0, $f4              
/* 00704 808B7E14 46083280 */  add.s   $f10, $f6, $f8             
/* 00708 808B7E18 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0070C 808B7E1C E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 00710 808B7E20 C6100208 */  lwc1    $f16, 0x0208($s0)          ## 00000208
/* 00714 808B7E24 C6040010 */  lwc1    $f4, 0x0010($s0)           ## 00000010
/* 00718 808B7E28 860C0212 */  lh      $t4, 0x0212($s0)           ## 00000212
/* 0071C 808B7E2C 46100482 */  mul.s   $f18, $f0, $f16            
/* 00720 808B7E30 26040214 */  addiu   $a0, $s0, 0x0214           ## $a0 = 00000214
/* 00724 808B7E34 258D0BB8 */  addiu   $t5, $t4, 0x0BB8           ## $t5 = 00000BB8
/* 00728 808B7E38 A60D0212 */  sh      $t5, 0x0212($s0)           ## 00000212
/* 0072C 808B7E3C 240505DC */  addiu   $a1, $zero, 0x05DC         ## $a1 = 000005DC
/* 00730 808B7E40 2406001E */  addiu   $a2, $zero, 0x001E         ## $a2 = 0000001E
/* 00734 808B7E44 46049180 */  add.s   $f6, $f18, $f4             
/* 00738 808B7E48 0C01DE5F */  jal     Math_ApproxS
              
/* 0073C 808B7E4C E606002C */  swc1    $f6, 0x002C($s0)           ## 0000002C
/* 00740 808B7E50 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00744 808B7E54 86040212 */  lh      $a0, 0x0212($s0)           ## 00000212
/* 00748 808B7E58 860E0214 */  lh      $t6, 0x0214($s0)           ## 00000214
/* 0074C 808B7E5C 86040212 */  lh      $a0, 0x0212($s0)           ## 00000212
/* 00750 808B7E60 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 00754 808B7E64 00000000 */  nop
/* 00758 808B7E68 468042A0 */  cvt.s.w $f10, $f8                  
/* 0075C 808B7E6C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00760 808B7E70 4600848D */  trunc.w.s $f18, $f16                 
/* 00764 808B7E74 44189000 */  mfc1    $t8, $f18                  
/* 00768 808B7E78 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0076C 808B7E7C A61800B4 */  sh      $t8, 0x00B4($s0)           ## 000000B4
/* 00770 808B7E80 86190214 */  lh      $t9, 0x0214($s0)           ## 00000214
/* 00774 808B7E84 46000107 */  neg.s   $f4, $f0                   
/* 00778 808B7E88 86020216 */  lh      $v0, 0x0216($s0)           ## 00000216
/* 0077C 808B7E8C 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 00780 808B7E90 2841008D */  slti    $at, $v0, 0x008D           
/* 00784 808B7E94 46803220 */  cvt.s.w $f8, $f6                   
/* 00788 808B7E98 46082282 */  mul.s   $f10, $f4, $f8             
/* 0078C 808B7E9C 4600540D */  trunc.w.s $f16, $f10                 
/* 00790 808B7EA0 44098000 */  mfc1    $t1, $f16                  
/* 00794 808B7EA4 14200004 */  bne     $at, $zero, .L808B7EB8     
/* 00798 808B7EA8 A60900B8 */  sh      $t1, 0x00B8($s0)           ## 000000B8
/* 0079C 808B7EAC 0C22DFDD */  jal     func_808B7F74              
/* 007A0 808B7EB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007A4 808B7EB4 86020216 */  lh      $v0, 0x0216($s0)           ## 00000216
.L808B7EB8:
/* 007A8 808B7EB8 28410050 */  slti    $at, $v0, 0x0050           
/* 007AC 808B7EBC 10200007 */  beq     $at, $zero, .L808B7EDC     
/* 007B0 808B7EC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007B4 808B7EC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007B8 808B7EC8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 007BC 808B7ECC 0C22DDDC */  jal     func_808B7770              
/* 007C0 808B7ED0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 007C4 808B7ED4 10000006 */  beq     $zero, $zero, .L808B7EF0   
/* 007C8 808B7ED8 860A0210 */  lh      $t2, 0x0210($s0)           ## 00000210
.L808B7EDC:
/* 007CC 808B7EDC 3C063F4C */  lui     $a2, 0x3F4C                ## $a2 = 3F4C0000
/* 007D0 808B7EE0 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3F4CCCCD
/* 007D4 808B7EE4 0C22DDDC */  jal     func_808B7770              
/* 007D8 808B7EE8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 007DC 808B7EEC 860A0210 */  lh      $t2, 0x0210($s0)           ## 00000210
.L808B7EF0:
/* 007E0 808B7EF0 3C01808C */  lui     $at, %hi(D_808B8640)       ## $at = 808C0000
/* 007E4 808B7EF4 C4248640 */  lwc1    $f4, %lo(D_808B8640)($at)  
/* 007E8 808B7EF8 254BFE0C */  addiu   $t3, $t2, 0xFE0C           ## $t3 = FFFFFE0C
/* 007EC 808B7EFC 448B9000 */  mtc1    $t3, $f18                  ## $f18 = NaN
/* 007F0 808B7F00 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 007F4 808B7F04 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 007F8 808B7F08 468091A0 */  cvt.s.w $f6, $f18                  
/* 007FC 808B7F0C 260400E4 */  addiu   $a0, $s0, 0x00E4           ## $a0 = 000000E4
/* 00800 808B7F10 46043002 */  mul.s   $f0, $f6, $f4              
/* 00804 808B7F14 4602003C */  c.lt.s  $f0, $f2                   
/* 00808 808B7F18 00000000 */  nop
/* 0080C 808B7F1C 45020004 */  bc1fl   .L808B7F30                 
/* 00810 808B7F20 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.50
/* 00814 808B7F24 1000000B */  beq     $zero, $zero, .L808B7F54   
/* 00818 808B7F28 46001006 */  mov.s   $f0, $f2                   
/* 0081C 808B7F2C 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.50
.L808B7F30:
/* 00820 808B7F30 00000000 */  nop
/* 00824 808B7F34 4600603C */  c.lt.s  $f12, $f0                  
/* 00828 808B7F38 00000000 */  nop
/* 0082C 808B7F3C 45020004 */  bc1fl   .L808B7F50                 
/* 00830 808B7F40 46000086 */  mov.s   $f2, $f0                   
/* 00834 808B7F44 10000002 */  beq     $zero, $zero, .L808B7F50   
/* 00838 808B7F48 46006086 */  mov.s   $f2, $f12                  
/* 0083C 808B7F4C 46000086 */  mov.s   $f2, $f0                   
.L808B7F50:
/* 00840 808B7F50 46001006 */  mov.s   $f0, $f2                   
.L808B7F54:
/* 00844 808B7F54 44060000 */  mfc1    $a2, $f0                   
/* 00848 808B7F58 0C03D0DB */  jal     func_800F436C              
/* 0084C 808B7F5C 240500CB */  addiu   $a1, $zero, 0x00CB         ## $a1 = 000000CB
/* 00850 808B7F60 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00854 808B7F64 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00858 808B7F68 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0085C 808B7F6C 03E00008 */  jr      $ra                        
/* 00860 808B7F70 00000000 */  nop
