glabel func_80A576FC
/* 004FC 80A576FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00500 80A57700 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00504 80A57704 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00508 80A57708 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0050C 80A5770C 24A53128 */  addiu   $a1, $a1, 0x3128           ## $a1 = 06003128
/* 00510 80A57710 AFA60018 */  sw      $a2, 0x0018($sp)
/* 00514 80A57714 0C0294BE */  jal     SkelAnime_ChangeAnimationDefault
/* 00518 80A57718 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0051C 80A5771C 8FA60018 */  lw      $a2, 0x0018($sp)
/* 00520 80A57720 3C0F80A6 */  lui     $t7, %hi(func_80A58028)    ## $t7 = 80A60000
/* 00524 80A57724 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00528 80A57728 25EF8028 */  addiu   $t7, $t7, %lo(func_80A58028) ## $t7 = 80A58028
/* 0052C 80A5772C A4CE0194 */  sh      $t6, 0x0194($a2)           ## 00000194
/* 00530 80A57730 ACCF0190 */  sw      $t7, 0x0190($a2)           ## 00000190
/* 00534 80A57734 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00538 80A57738 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0053C 80A5773C 03E00008 */  jr      $ra
/* 00540 80A57740 00000000 */  nop


