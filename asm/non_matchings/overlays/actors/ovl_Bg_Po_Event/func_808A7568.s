glabel func_808A7568
/* 01358 808A7568 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0135C 808A756C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01360 808A7570 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01364 808A7574 848E016C */  lh      $t6, 0x016C($a0)           ## 0000016C
/* 01368 808A7578 25CF0014 */  addiu   $t7, $t6, 0x0014           ## $t7 = 00000014
/* 0136C 808A757C A48F016C */  sh      $t7, 0x016C($a0)           ## 0000016C
/* 01370 808A7580 8498016C */  lh      $t8, 0x016C($a0)           ## 0000016C
/* 01374 808A7584 2B0100FF */  slti    $at, $t8, 0x00FF           
/* 01378 808A7588 54200008 */  bnel    $at, $zero, .L808A75AC     
/* 0137C 808A758C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01380 808A7590 0C229D11 */  jal     func_808A7444              
/* 01384 808A7594 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01388 808A7598 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0138C 808A759C 3C19808A */  lui     $t9, %hi(func_808A7500)    ## $t9 = 808A0000
/* 01390 808A75A0 27397500 */  addiu   $t9, $t9, %lo(func_808A7500) ## $t9 = 808A7500
/* 01394 808A75A4 AC990164 */  sw      $t9, 0x0164($a0)           ## 00000164
/* 01398 808A75A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A75AC:
/* 0139C 808A75AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 013A0 808A75B0 03E00008 */  jr      $ra                        
/* 013A4 808A75B4 00000000 */  nop
