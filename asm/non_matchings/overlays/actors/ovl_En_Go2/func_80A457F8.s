glabel func_80A457F8
/* 02AC8 80A457F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02ACC 80A457FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02AD0 80A45800 0C291370 */  jal     func_80A44DC0              
/* 02AD4 80A45804 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02AD8 80A45808 14400004 */  bne     $v0, $zero, .L80A4581C     
/* 02ADC 80A4580C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02AE0 80A45810 848E0194 */  lh      $t6, 0x0194($a0)           ## 00000194
/* 02AE4 80A45814 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 02AE8 80A45818 11C00005 */  beq     $t6, $zero, .L80A45830     
.L80A4581C:
/* 02AEC 80A4581C 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 02AF0 80A45820 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 02AF4 80A45824 A48F026E */  sh      $t7, 0x026E($a0)           ## 0000026E
/* 02AF8 80A45828 10000003 */  beq     $zero, $zero, .L80A45838   
/* 02AFC 80A4582C A098020F */  sb      $t8, 0x020F($a0)           ## 0000020F
.L80A45830:
/* 02B00 80A45830 A499026E */  sh      $t9, 0x026E($a0)           ## 0000026E
/* 02B04 80A45834 A080020F */  sb      $zero, 0x020F($a0)         ## 0000020F
.L80A45838:
/* 02B08 80A45838 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02B0C 80A4583C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02B10 80A45840 03E00008 */  jr      $ra                        
/* 02B14 80A45844 00000000 */  nop
