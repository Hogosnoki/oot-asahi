glabel func_809318A0
/* 052D0 809318A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 052D4 809318A4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 052D8 809318A8 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 052DC 809318AC 3C018093 */  lui     $at, %hi(D_8093746C)       ## $at = 80930000
/* 052E0 809318B0 240E0007 */  addiu   $t6, $zero, 0x0007         ## $t6 = 00000007
/* 052E4 809318B4 000FC080 */  sll     $t8, $t7,  2
/* 052E8 809318B8 00380821 */  addu    $at, $at, $t8
/* 052EC 809318BC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 052F0 809318C0 AC2E746C */  sw      $t6, %lo(D_8093746C)($at)
/* 052F4 809318C4 84F9001C */  lh      $t9, 0x001C($a3)           ## 0000001C
/* 052F8 809318C8 3C058093 */  lui     $a1, %hi(D_8093785C)       ## $a1 = 80930000
/* 052FC 809318CC AFA70018 */  sw      $a3, 0x0018($sp)
/* 05300 809318D0 00194080 */  sll     $t0, $t9,  2
/* 05304 809318D4 00A82821 */  addu    $a1, $a1, $t0
/* 05308 809318D8 8CA5785C */  lw      $a1, %lo(D_8093785C)($a1)
/* 0530C 809318DC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 05310 809318E0 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 05314 809318E4 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 05318 809318E8 8FA70018 */  lw      $a3, 0x0018($sp)
/* 0531C 809318EC 3C0B8093 */  lui     $t3, %hi(func_80931928)    ## $t3 = 80930000
/* 05320 809318F0 256B1928 */  addiu   $t3, $t3, %lo(func_80931928) ## $t3 = 80931928
/* 05324 809318F4 80E20194 */  lb      $v0, 0x0194($a3)           ## 00000194
/* 05328 809318F8 ACEB0190 */  sw      $t3, 0x0190($a3)           ## 00000190
/* 0532C 809318FC 00020823 */  subu    $at, $zero, $v0
/* 05330 80931900 00014880 */  sll     $t1, $at,  2
/* 05334 80931904 01214821 */  addu    $t1, $t1, $at
/* 05338 80931908 00094B00 */  sll     $t1, $t1, 12
/* 0533C 8093190C 00025380 */  sll     $t2, $v0, 14
/* 05340 80931910 A4E901A4 */  sh      $t1, 0x01A4($a3)           ## 000001A4
/* 05344 80931914 A4EA01A6 */  sh      $t2, 0x01A6($a3)           ## 000001A6
/* 05348 80931918 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0534C 8093191C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 05350 80931920 03E00008 */  jr      $ra
/* 05354 80931924 00000000 */  nop
