glabel func_80B13464
/* 01B74 80B13464 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 01B78 80B13468 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 01B7C 80B1346C AFBE0050 */  sw      $s8, 0x0050($sp)           
/* 01B80 80B13470 AFB7004C */  sw      $s7, 0x004C($sp)           
/* 01B84 80B13474 AFB60048 */  sw      $s6, 0x0048($sp)           
/* 01B88 80B13478 AFB50044 */  sw      $s5, 0x0044($sp)           
/* 01B8C 80B1347C AFB40040 */  sw      $s4, 0x0040($sp)           
/* 01B90 80B13480 AFB3003C */  sw      $s3, 0x003C($sp)           
/* 01B94 80B13484 AFB20038 */  sw      $s2, 0x0038($sp)           
/* 01B98 80B13488 AFB10034 */  sw      $s1, 0x0034($sp)           
/* 01B9C 80B1348C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 01BA0 80B13490 F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 01BA4 80B13494 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 01BA8 80B13498 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 01BAC 80B1349C 8CB20000 */  lw      $s2, 0x0000($a1)           ## 00000000
/* 01BB0 80B134A0 00A0B825 */  or      $s7, $a1, $zero            ## $s7 = 00000000
/* 01BB4 80B134A4 24910348 */  addiu   $s1, $a0, 0x0348           ## $s1 = 00000348
/* 01BB8 80B134A8 3C0680B1 */  lui     $a2, %hi(D_80B13740)       ## $a2 = 80B10000
/* 01BBC 80B134AC 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 01BC0 80B134B0 24C63740 */  addiu   $a2, $a2, %lo(D_80B13740)  ## $a2 = 80B13740
/* 01BC4 80B134B4 27A40074 */  addiu   $a0, $sp, 0x0074           ## $a0 = FFFFFFDC
/* 01BC8 80B134B8 240704D2 */  addiu   $a3, $zero, 0x04D2         ## $a3 = 000004D2
/* 01BCC 80B134BC 0C031AB1 */  jal     Graph_OpenDisp              
/* 01BD0 80B134C0 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01BD4 80B134C4 0C024F61 */  jal     func_80093D84              
/* 01BD8 80B134C8 8EE40000 */  lw      $a0, 0x0000($s7)           ## 00000000
/* 01BDC 80B134CC 3C01C47A */  lui     $at, 0xC47A                ## $at = C47A0000
/* 01BE0 80B134D0 4481C000 */  mtc1    $at, $f24                  ## $f24 = -1000.00
/* 01BE4 80B134D4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01BE8 80B134D8 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 01BEC 80B134DC 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 01BF0 80B134E0 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 01BF4 80B134E4 241E0001 */  addiu   $s8, $zero, 0x0001         ## $s8 = 00000001
/* 01BF8 80B134E8 3C16DE00 */  lui     $s6, 0xDE00                ## $s6 = DE000000
.L80B134EC:
/* 01BFC 80B134EC 922E0000 */  lbu     $t6, 0x0000($s1)           ## 00000348
/* 01C00 80B134F0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01C04 80B134F4 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 01C08 80B134F8 17CE0033 */  bne     $s8, $t6, .L80B135C8       
/* 01C0C 80B134FC 02E18021 */  addu    $s0, $s7, $at              
/* 01C10 80B13500 3C150600 */  lui     $s5, 0x0600                ## $s5 = 06000000
/* 01C14 80B13504 1680000A */  bne     $s4, $zero, .L80B13530     
/* 01C18 80B13508 26B52428 */  addiu   $s5, $s5, 0x2428           ## $s5 = 06002428
/* 01C1C 80B1350C 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 01C20 80B13510 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01C24 80B13514 248423B0 */  addiu   $a0, $a0, 0x23B0           ## $a0 = 060023B0
/* 01C28 80B13518 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 01C2C 80B1351C AE4F02D0 */  sw      $t7, 0x02D0($s2)           ## 000002D0
/* 01C30 80B13520 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 01C34 80B13524 329400FF */  andi    $s4, $s4, 0x00FF           ## $s4 = 00000001
/* 01C38 80B13528 AC440004 */  sw      $a0, 0x0004($v0)           ## 00000004
/* 01C3C 80B1352C AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L80B13530:
/* 01C40 80B13530 C62C0004 */  lwc1    $f12, 0x0004($s1)          ## 0000034C
/* 01C44 80B13534 C62E0008 */  lwc1    $f14, 0x0008($s1)          ## 00000350
/* 01C48 80B13538 8E26000C */  lw      $a2, 0x000C($s1)           ## 00000354
/* 01C4C 80B1353C 0C034261 */  jal     Matrix_Translate              
/* 01C50 80B13540 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01C54 80B13544 0C0347F5 */  jal     func_800D1FD4              
/* 01C58 80B13548 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C5C 80B1354C C62C002C */  lwc1    $f12, 0x002C($s1)          ## 00000374
/* 01C60 80B13550 4406B000 */  mfc1    $a2, $f22                  
/* 01C64 80B13554 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01C68 80B13558 0C0342A3 */  jal     Matrix_Scale              
/* 01C6C 80B1355C 46006386 */  mov.s   $f14, $f12                 
/* 01C70 80B13560 C62C0030 */  lwc1    $f12, 0x0030($s1)          ## 00000378
/* 01C74 80B13564 0C0343B5 */  jal     Matrix_RotateZ              
/* 01C78 80B13568 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 01C7C 80B1356C 4406A000 */  mfc1    $a2, $f20                  
/* 01C80 80B13570 4600A306 */  mov.s   $f12, $f20                 
/* 01C84 80B13574 4600C386 */  mov.s   $f14, $f24                 
/* 01C88 80B13578 0C034261 */  jal     Matrix_Translate              
/* 01C8C 80B1357C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01C90 80B13580 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 01C94 80B13584 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 01C98 80B13588 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 01C9C 80B1358C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 01CA0 80B13590 AE5802D0 */  sw      $t8, 0x02D0($s2)           ## 000002D0
/* 01CA4 80B13594 3C0580B1 */  lui     $a1, %hi(D_80B13758)       ## $a1 = 80B10000
/* 01CA8 80B13598 24A53758 */  addiu   $a1, $a1, %lo(D_80B13758)  ## $a1 = 80B13758
/* 01CAC 80B1359C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01CB0 80B135A0 240604E3 */  addiu   $a2, $zero, 0x04E3         ## $a2 = 000004E3
/* 01CB4 80B135A4 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 01CB8 80B135A8 0C0346A2 */  jal     Matrix_NewMtx              
/* 01CBC 80B135AC 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 01CC0 80B135B0 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 01CC4 80B135B4 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 01CC8 80B135B8 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 01CCC 80B135BC AE4802D0 */  sw      $t0, 0x02D0($s2)           ## 000002D0
/* 01CD0 80B135C0 AC550004 */  sw      $s5, 0x0004($v0)           ## 00000004
/* 01CD4 80B135C4 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L80B135C8:
/* 01CD8 80B135C8 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 01CDC 80B135CC 00139C00 */  sll     $s3, $s3, 16               
/* 01CE0 80B135D0 00139C03 */  sra     $s3, $s3, 16               
/* 01CE4 80B135D4 2A610005 */  slti    $at, $s3, 0x0005           
/* 01CE8 80B135D8 1420FFC4 */  bne     $at, $zero, .L80B134EC     
/* 01CEC 80B135DC 26310038 */  addiu   $s1, $s1, 0x0038           ## $s1 = 00000380
/* 01CF0 80B135E0 3C0680B1 */  lui     $a2, %hi(D_80B13770)       ## $a2 = 80B10000
/* 01CF4 80B135E4 24C63770 */  addiu   $a2, $a2, %lo(D_80B13770)  ## $a2 = 80B13770
/* 01CF8 80B135E8 27A40074 */  addiu   $a0, $sp, 0x0074           ## $a0 = FFFFFFDC
/* 01CFC 80B135EC 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 01D00 80B135F0 0C031AD5 */  jal     Graph_CloseDisp              
/* 01D04 80B135F4 240704E9 */  addiu   $a3, $zero, 0x04E9         ## $a3 = 000004E9
/* 01D08 80B135F8 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 01D0C 80B135FC D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 01D10 80B13600 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 01D14 80B13604 D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 01D18 80B13608 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 01D1C 80B1360C 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 01D20 80B13610 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 01D24 80B13614 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 01D28 80B13618 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 01D2C 80B1361C 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 01D30 80B13620 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 01D34 80B13624 8FB7004C */  lw      $s7, 0x004C($sp)           
/* 01D38 80B13628 8FBE0050 */  lw      $s8, 0x0050($sp)           
/* 01D3C 80B1362C 03E00008 */  jr      $ra                        
/* 01D40 80B13630 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000
/* 01D44 80B13634 00000000 */  nop
/* 01D48 80B13638 00000000 */  nop
/* 01D4C 80B1363C 00000000 */  nop

