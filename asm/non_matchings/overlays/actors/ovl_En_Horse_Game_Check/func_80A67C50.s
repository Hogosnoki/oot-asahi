glabel func_80A67C50
/* 00700 80A67C50 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 00704 80A67C54 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 00708 80A67C58 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 0070C 80A67C5C AC800150 */  sw      $zero, 0x0150($a0)         ## 00000150
/* 00710 80A67C60 03E00008 */  jr      $ra                        
/* 00714 80A67C64 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
