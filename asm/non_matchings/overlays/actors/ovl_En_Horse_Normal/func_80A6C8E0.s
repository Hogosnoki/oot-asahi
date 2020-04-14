.late_rodata
glabel D_80A6D5E4
 .word 0x4622F983

.text
glabel func_80A6C8E0
/* 01690 80A6C8E0 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01694 80A6C8E4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01698 80A6C8E8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0169C 80A6C8EC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 016A0 80A6C8F0 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 016A4 80A6C8F4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 016A8 80A6C8F8 848400B6 */  lh      $a0, 0x00B6($a0)           ## 000000B6
/* 016AC 80A6C8FC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 016B0 80A6C900 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 016B4 80A6C904 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 016B8 80A6C908 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 016BC 80A6C90C 46040182 */  mul.s   $f6, $f0, $f4              
/* 016C0 80A6C910 44819000 */  mtc1    $at, $f18                  ## $f18 = 60.00
/* 016C4 80A6C914 46083280 */  add.s   $f10, $f6, $f8             
/* 016C8 80A6C918 E7AA0028 */  swc1    $f10, 0x0028($sp)          
/* 016CC 80A6C91C C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 016D0 80A6C920 46128100 */  add.s   $f4, $f16, $f18            
/* 016D4 80A6C924 E7A4002C */  swc1    $f4, 0x002C($sp)           
/* 016D8 80A6C928 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 016DC 80A6C92C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 016E0 80A6C930 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 016E4 80A6C934 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 016E8 80A6C938 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 016EC 80A6C93C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 016F0 80A6C940 46060202 */  mul.s   $f8, $f0, $f6              
/* 016F4 80A6C944 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFF8
/* 016F8 80A6C948 27A60024 */  addiu   $a2, $sp, 0x0024           ## $a2 = FFFFFFE4
/* 016FC 80A6C94C 27A70028 */  addiu   $a3, $sp, 0x0028           ## $a3 = FFFFFFE8
/* 01700 80A6C950 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 01704 80A6C954 460A4400 */  add.s   $f16, $f8, $f10            
/* 01708 80A6C958 0C00F250 */  jal     func_8003C940              
/* 0170C 80A6C95C E7B00030 */  swc1    $f16, 0x0030($sp)          
/* 01710 80A6C960 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 01714 80A6C964 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01718 80A6C968 44817000 */  mtc1    $at, $f14                  ## $f14 = 30.00
/* 0171C 80A6C96C E6000220 */  swc1    $f0, 0x0220($s0)           ## 00000220
/* 01720 80A6C970 0C03F494 */  jal     Math_atan2f              
/* 01724 80A6C974 46009301 */  sub.s   $f12, $f18, $f0            
/* 01728 80A6C978 3C0180A7 */  lui     $at, %hi(D_80A6D5E4)       ## $at = 80A70000
/* 0172C 80A6C97C C424D5E4 */  lwc1    $f4, %lo(D_80A6D5E4)($at)  
/* 01730 80A6C980 46040182 */  mul.s   $f6, $f0, $f4              
/* 01734 80A6C984 4600320D */  trunc.w.s $f8, $f6                   
/* 01738 80A6C988 440F4000 */  mfc1    $t7, $f8                   
/* 0173C 80A6C98C 00000000 */  nop
/* 01740 80A6C990 A60F00B4 */  sh      $t7, 0x00B4($s0)           ## 000000B4
/* 01744 80A6C994 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01748 80A6C998 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0174C 80A6C99C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 01750 80A6C9A0 03E00008 */  jr      $ra                        
/* 01754 80A6C9A4 00000000 */  nop
