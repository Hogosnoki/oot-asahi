glabel func_809329D4
/* 06404 809329D4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 06408 809329D8 AFB00020 */  sw      $s0, 0x0020($sp)
/* 0640C 809329DC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 06410 809329E0 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 06414 809329E4 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 06418 809329E8 3C058093 */  lui     $a1, %hi(D_8093784C)       ## $a1 = 80930000
/* 0641C 809329EC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 06420 809329F0 000E7880 */  sll     $t7, $t6,  2
/* 06424 809329F4 00AF2821 */  addu    $a1, $a1, $t7
/* 06428 809329F8 8CA5784C */  lw      $a1, %lo(D_8093784C)($a1)
/* 0642C 809329FC 0C029490 */  jal     SkelAnime_ChangeAnimTransitionStop
/* 06430 80932A00 3C064120 */  lui     $a2, 0x4120                ## $a2 = 41200000
/* 06434 80932A04 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 06438 80932A08 3C188093 */  lui     $t8, %hi(func_80932C38)    ## $t8 = 80930000
/* 0643C 80932A0C 27182C38 */  addiu   $t8, $t8, %lo(func_80932C38) ## $t8 = 80932C38
/* 06440 80932A10 13190002 */  beq     $t8, $t9, .L80932A1C
/* 06444 80932A14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 06448 80932A18 A2000195 */  sb      $zero, 0x0195($s0)         ## 00000195
.L80932A1C:
/* 0644C 80932A1C 920803E4 */  lbu     $t0, 0x03E4($s0)           ## 000003E4
/* 06450 80932A20 920A03E5 */  lbu     $t2, 0x03E5($s0)           ## 000003E5
/* 06454 80932A24 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 06458 80932A28 3109FFFC */  andi    $t1, $t0, 0xFFFC           ## $t1 = 00000000
/* 0645C 80932A2C 354B0001 */  ori     $t3, $t2, 0x0001           ## $t3 = 00000001
/* 06460 80932A30 A20903E4 */  sb      $t1, 0x03E4($s0)           ## 000003E4
/* 06464 80932A34 0C24CF3B */  jal     func_80933CEC
/* 06468 80932A38 A20B03E5 */  sb      $t3, 0x03E5($s0)           ## 000003E5
/* 0646C 80932A3C 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 06470 80932A40 0C028800 */  jal     SkelAnime_GetFrameCount

/* 06474 80932A44 2484B6FC */  addiu   $a0, $a0, 0xB6FC           ## $a0 = 0600B6FC
/* 06478 80932A48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0647C 80932A4C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 06480 80932A50 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 06484 80932A54 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 06488 80932A58 0C00D09B */  jal     func_8003426C
/* 0648C 80932A5C AFA20010 */  sw      $v0, 0x0010($sp)
/* 06490 80932A60 3C0C8093 */  lui     $t4, %hi(func_80932A80)    ## $t4 = 80930000
/* 06494 80932A64 258C2A80 */  addiu   $t4, $t4, %lo(func_80932A80) ## $t4 = 80932A80
/* 06498 80932A68 AE0C0190 */  sw      $t4, 0x0190($s0)           ## 00000190
/* 0649C 80932A6C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 064A0 80932A70 8FB00020 */  lw      $s0, 0x0020($sp)
/* 064A4 80932A74 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 064A8 80932A78 03E00008 */  jr      $ra
/* 064AC 80932A7C 00000000 */  nop


