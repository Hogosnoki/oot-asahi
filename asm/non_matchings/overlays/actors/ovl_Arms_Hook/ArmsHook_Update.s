glabel ArmsHook_Update
/* 008EC 808657EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008F0 808657F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008F4 808657F4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 008F8 808657F8 8C990214 */  lw      $t9, 0x0214($a0)           ## 00000214
/* 008FC 808657FC 0320F809 */  jalr    $ra, $t9                   
/* 00900 80865800 00000000 */  nop
/* 00904 80865804 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00908 80865808 8C8F01E8 */  lw      $t7, 0x01E8($a0)           ## 000001E8
/* 0090C 8086580C 8C8E01EC */  lw      $t6, 0x01EC($a0)           ## 000001EC
/* 00910 80865810 AC8F01F4 */  sw      $t7, 0x01F4($a0)           ## 000001F4
/* 00914 80865814 8C8F01F0 */  lw      $t7, 0x01F0($a0)           ## 000001F0
/* 00918 80865818 AC8E01F8 */  sw      $t6, 0x01F8($a0)           ## 000001F8
/* 0091C 8086581C AC8F01FC */  sw      $t7, 0x01FC($a0)           ## 000001FC
/* 00920 80865820 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00924 80865824 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00928 80865828 03E00008 */  jr      $ra                        
/* 0092C 8086582C 00000000 */  nop
