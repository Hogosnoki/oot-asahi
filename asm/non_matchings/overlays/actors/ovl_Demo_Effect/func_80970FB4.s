glabel func_80970FB4
/* 00064 80970FB4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00068 80970FB8 3C0E8097 */  lui     $t6, %hi(func_809746F8)    ## $t6 = 80970000
/* 0006C 80970FBC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00070 80970FC0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00074 80970FC4 25CE46F8 */  addiu   $t6, $t6, %lo(func_809746F8) ## $t6 = 809746F8
/* 00078 80970FC8 ACAE0198 */  sw      $t6, 0x0198($a1)           ## 00000198
/* 0007C 80970FCC 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 00080 80970FD0 8DEFE664 */  lw      $t7, -0x199C($t7)          ## 8015E664
/* 00084 80970FD4 3C198097 */  lui     $t9, %hi(func_80974314)    ## $t9 = 80970000
/* 00088 80970FD8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0008C 80970FDC 11E00005 */  beq     $t7, $zero, .L80970FF4     
/* 00090 80970FE0 27394314 */  addiu   $t9, $t9, %lo(func_80974314) ## $t9 = 80974314
/* 00094 80970FE4 3C188097 */  lui     $t8, %hi(func_80974358)    ## $t8 = 80970000
/* 00098 80970FE8 27184358 */  addiu   $t8, $t8, %lo(func_80974358) ## $t8 = 80974358
/* 0009C 80970FEC 10000002 */  beq     $zero, $zero, .L80970FF8   
/* 000A0 80970FF0 ACB80194 */  sw      $t8, 0x0194($a1)           ## 00000194
.L80970FF4:
/* 000A4 80970FF4 AE190194 */  sw      $t9, 0x0194($s0)           ## 00000194
.L80970FF8:
/* 000A8 80970FF8 848800A4 */  lh      $t0, 0x00A4($a0)           ## 000000A4
/* 000AC 80970FFC 24010043 */  addiu   $at, $zero, 0x0043         ## $at = 00000043
/* 000B0 80971000 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000B4 80971004 15010007 */  bne     $t0, $at, .L80971024       
/* 000B8 80971008 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 000BC 8097100C 3C053EB3 */  lui     $a1, 0x3EB3                ## $a1 = 3EB30000
/* 000C0 80971010 34A53333 */  ori     $a1, $a1, 0x3333           ## $a1 = 3EB33333
/* 000C4 80971014 0C00B58B */  jal     Actor_SetScale
              
/* 000C8 80971018 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000CC 8097101C 10000004 */  beq     $zero, $zero, .L80971030   
/* 000D0 80971020 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
.L80971024:
/* 000D4 80971024 0C00B58B */  jal     Actor_SetScale
              
/* 000D8 80971028 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 0000CCCD
/* 000DC 8097102C 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
.L80971030:
/* 000E0 80971030 240A4000 */  addiu   $t2, $zero, 0x4000         ## $t2 = 00004000
/* 000E4 80971034 A609018C */  sh      $t1, 0x018C($s0)           ## 0000018C
/* 000E8 80971038 A60A00B4 */  sh      $t2, 0x00B4($s0)           ## 000000B4
/* 000EC 8097103C 0C25CD09 */  jal     func_80973424              
/* 000F0 80971040 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000F4 80971044 A6000192 */  sh      $zero, 0x0192($s0)         ## 00000192
/* 000F8 80971048 86020192 */  lh      $v0, 0x0192($s0)           ## 00000192
/* 000FC 8097104C A2000186 */  sb      $zero, 0x0186($s0)         ## 00000186
/* 00100 80971050 3C018097 */  lui     $at, %hi(D_80976810)       ## $at = 80970000
/* 00104 80971054 A6020190 */  sh      $v0, 0x0190($s0)           ## 00000190
/* 00108 80971058 A602018E */  sh      $v0, 0x018E($s0)           ## 0000018E
/* 0010C 8097105C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00110 80971060 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00114 80971064 A4206810 */  sh      $zero, %lo(D_80976810)($at) 
/* 00118 80971068 03E00008 */  jr      $ra                        
/* 0011C 8097106C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
