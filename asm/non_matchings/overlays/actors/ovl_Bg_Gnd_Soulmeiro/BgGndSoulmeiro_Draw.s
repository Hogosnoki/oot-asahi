glabel BgGndSoulmeiro_Draw
/* 0060C 8087B3CC 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00610 8087B3D0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00614 8087B3D4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00618 8087B3D8 8488001C */  lh      $t0, 0x001C($a0)           ## 0000001C
/* 0061C 8087B3DC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00620 8087B3E0 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 00624 8087B3E4 310800FF */  andi    $t0, $t0, 0x00FF           ## $t0 = 00000000
/* 00628 8087B3E8 11000009 */  beq     $t0, $zero, .L8087B410     
/* 0062C 8087B3EC 3C068088 */  lui     $a2, %hi(D_8087B590)       ## $a2 = 80880000
/* 00630 8087B3F0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00634 8087B3F4 11010033 */  beq     $t0, $at, .L8087B4C4       
/* 00638 8087B3F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0063C 8087B3FC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00640 8087B400 11010037 */  beq     $t0, $at, .L8087B4E0       
/* 00644 8087B404 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00648 8087B408 1000003B */  beq     $zero, $zero, .L8087B4F8   
/* 0064C 8087B40C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8087B410:
/* 00650 8087B410 8E050000 */  lw      $a1, 0x0000($s0)           ## 00000000
/* 00654 8087B414 AFA80044 */  sw      $t0, 0x0044($sp)           
/* 00658 8087B418 24C6B590 */  addiu   $a2, $a2, %lo(D_8087B590)  ## $a2 = 8087B590
/* 0065C 8087B41C 2407018E */  addiu   $a3, $zero, 0x018E         ## $a3 = 0000018E
/* 00660 8087B420 0C031AB1 */  jal     Graph_OpenDisp              
/* 00664 8087B424 AFA50040 */  sw      $a1, 0x0040($sp)           
/* 00668 8087B428 0C024F61 */  jal     func_80093D84              
/* 0066C 8087B42C 8E040000 */  lw      $a0, 0x0000($s0)           ## 00000000
/* 00670 8087B430 8FA70040 */  lw      $a3, 0x0040($sp)           
/* 00674 8087B434 8FA80044 */  lw      $t0, 0x0044($sp)           
/* 00678 8087B438 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 0067C 8087B43C 8CE202D0 */  lw      $v0, 0x02D0($a3)           ## 000002D0
/* 00680 8087B440 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 00684 8087B444 3C058088 */  lui     $a1, %hi(D_8087B5A8)       ## $a1 = 80880000
/* 00688 8087B448 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 0068C 8087B44C ACEE02D0 */  sw      $t6, 0x02D0($a3)           ## 000002D0
/* 00690 8087B450 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 00694 8087B454 8E040000 */  lw      $a0, 0x0000($s0)           ## 00000000
/* 00698 8087B458 24A5B5A8 */  addiu   $a1, $a1, %lo(D_8087B5A8)  ## $a1 = 8087B5A8
/* 0069C 8087B45C 24060190 */  addiu   $a2, $zero, 0x0190         ## $a2 = 00000190
/* 006A0 8087B460 AFA80044 */  sw      $t0, 0x0044($sp)           
/* 006A4 8087B464 0C0346A2 */  jal     Matrix_NewMtx              
/* 006A8 8087B468 AFA2002C */  sw      $v0, 0x002C($sp)           
/* 006AC 8087B46C 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 006B0 8087B470 8FA80044 */  lw      $t0, 0x0044($sp)           
/* 006B4 8087B474 3C09DE00 */  lui     $t1, 0xDE00                ## $t1 = DE000000
/* 006B8 8087B478 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 006BC 8087B47C 8FB80040 */  lw      $t8, 0x0040($sp)           
/* 006C0 8087B480 3C0B8088 */  lui     $t3, %hi(D_8087B578)       ## $t3 = 80880000
/* 006C4 8087B484 00085080 */  sll     $t2, $t0,  2               
/* 006C8 8087B488 8F0202D0 */  lw      $v0, 0x02D0($t8)           ## 000002D0
/* 006CC 8087B48C 016A5821 */  addu    $t3, $t3, $t2              
/* 006D0 8087B490 3C068088 */  lui     $a2, %hi(D_8087B5C0)       ## $a2 = 80880000
/* 006D4 8087B494 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 006D8 8087B498 AF1902D0 */  sw      $t9, 0x02D0($t8)           ## 000002D0
/* 006DC 8087B49C AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 006E0 8087B4A0 8D6BB578 */  lw      $t3, %lo(D_8087B578)($t3)  
/* 006E4 8087B4A4 24C6B5C0 */  addiu   $a2, $a2, %lo(D_8087B5C0)  ## $a2 = 8087B5C0
/* 006E8 8087B4A8 27A40030 */  addiu   $a0, $sp, 0x0030           ## $a0 = FFFFFFE8
/* 006EC 8087B4AC AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 006F0 8087B4B0 8E050000 */  lw      $a1, 0x0000($s0)           ## 00000000
/* 006F4 8087B4B4 0C031AD5 */  jal     Graph_CloseDisp              
/* 006F8 8087B4B8 24070193 */  addiu   $a3, $zero, 0x0193         ## $a3 = 00000193
/* 006FC 8087B4BC 1000000E */  beq     $zero, $zero, .L8087B4F8   
/* 00700 8087B4C0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8087B4C4:
/* 00704 8087B4C4 00086080 */  sll     $t4, $t0,  2               
/* 00708 8087B4C8 3C058088 */  lui     $a1, %hi(D_8087B578)       ## $a1 = 80880000
/* 0070C 8087B4CC 00AC2821 */  addu    $a1, $a1, $t4              
/* 00710 8087B4D0 0C00D4C9 */  jal     Gfx_DrawDListXlu
              
/* 00714 8087B4D4 8CA5B578 */  lw      $a1, %lo(D_8087B578)($a1)  
/* 00718 8087B4D8 10000007 */  beq     $zero, $zero, .L8087B4F8   
/* 0071C 8087B4DC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8087B4E0:
/* 00720 8087B4E0 00086880 */  sll     $t5, $t0,  2               
/* 00724 8087B4E4 3C058088 */  lui     $a1, %hi(D_8087B578)       ## $a1 = 80880000
/* 00728 8087B4E8 00AD2821 */  addu    $a1, $a1, $t5              
/* 0072C 8087B4EC 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 00730 8087B4F0 8CA5B578 */  lw      $a1, %lo(D_8087B578)($a1)  
/* 00734 8087B4F4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8087B4F8:
/* 00738 8087B4F8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0073C 8087B4FC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00740 8087B500 03E00008 */  jr      $ra                        
/* 00744 8087B504 00000000 */  nop
/* 00748 8087B508 00000000 */  nop
/* 0074C 8087B50C 00000000 */  nop

