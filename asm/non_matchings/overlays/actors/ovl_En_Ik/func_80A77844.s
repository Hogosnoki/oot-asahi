glabel func_80A77844
/* 03534 80A77844 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 03538 80A77848 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0353C 80A7784C AFB00028 */  sw      $s0, 0x0028($sp)
/* 03540 80A77850 AFA40068 */  sw      $a0, 0x0068($sp)
/* 03544 80A77854 AFA5006C */  sw      $a1, 0x006C($sp)
/* 03548 80A77858 8CB00000 */  lw      $s0, 0x0000($a1)           ## 00000000
/* 0354C 80A7785C 3C0680A8 */  lui     $a2, %hi(D_80A787D0)       ## $a2 = 80A80000
/* 03550 80A77860 24C687D0 */  addiu   $a2, $a2, %lo(D_80A787D0)  ## $a2 = 80A787D0
/* 03554 80A77864 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFDC
/* 03558 80A77868 24070142 */  addiu   $a3, $zero, 0x0142         ## $a3 = 00000142
/* 0355C 80A7786C 0C031AB1 */  jal     Graph_OpenDisp
/* 03560 80A77870 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 03564 80A77874 8FA40068 */  lw      $a0, 0x0068($sp)
/* 03568 80A77878 8FA5006C */  lw      $a1, 0x006C($sp)
/* 0356C 80A7787C 0C00BAF3 */  jal     func_8002EBCC
/* 03570 80A77880 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 03574 80A77884 0C024F46 */  jal     func_80093D18
/* 03578 80A77888 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0357C 80A7788C 0C024F61 */  jal     func_80093D84
/* 03580 80A77890 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03584 80A77894 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03588 80A77898 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 0358C 80A7789C 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 03590 80A778A0 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 03594 80A778A4 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 03598 80A778A8 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0359C 80A778AC 2419001E */  addiu   $t9, $zero, 0x001E         ## $t9 = 0000001E
/* 035A0 80A778B0 2408001E */  addiu   $t0, $zero, 0x001E         ## $t0 = 0000001E
/* 035A4 80A778B4 AFA80014 */  sw      $t0, 0x0014($sp)
/* 035A8 80A778B8 AFB90010 */  sw      $t9, 0x0010($sp)
/* 035AC 80A778BC AFA00018 */  sw      $zero, 0x0018($sp)
/* 035B0 80A778C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 035B4 80A778C4 240500F5 */  addiu   $a1, $zero, 0x00F5         ## $a1 = 000000F5
/* 035B8 80A778C8 240600E1 */  addiu   $a2, $zero, 0x00E1         ## $a2 = 000000E1
/* 035BC 80A778CC 2407009B */  addiu   $a3, $zero, 0x009B         ## $a3 = 0000009B
/* 035C0 80A778D0 0C29D86C */  jal     func_80A761B0
/* 035C4 80A778D4 AFA20040 */  sw      $v0, 0x0040($sp)
/* 035C8 80A778D8 8FA30040 */  lw      $v1, 0x0040($sp)
/* 035CC 80A778DC 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 035D0 80A778E0 354A0024 */  ori     $t2, $t2, 0x0024           ## $t2 = DB060024
/* 035D4 80A778E4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 035D8 80A778E8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 035DC 80A778EC 240B0028 */  addiu   $t3, $zero, 0x0028         ## $t3 = 00000028
/* 035E0 80A778F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 035E4 80A778F4 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 035E8 80A778F8 AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 035EC 80A778FC AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 035F0 80A77900 AFA00018 */  sw      $zero, 0x0018($sp)
/* 035F4 80A77904 AFA00014 */  sw      $zero, 0x0014($sp)
/* 035F8 80A77908 AFAB0010 */  sw      $t3, 0x0010($sp)
/* 035FC 80A7790C 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 03600 80A77910 24060028 */  addiu   $a2, $zero, 0x0028         ## $a2 = 00000028
/* 03604 80A77914 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 03608 80A77918 0C29D86C */  jal     func_80A761B0
/* 0360C 80A7791C AFA2003C */  sw      $v0, 0x003C($sp)
/* 03610 80A77920 8FA3003C */  lw      $v1, 0x003C($sp)
/* 03614 80A77924 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 03618 80A77928 35AD0028 */  ori     $t5, $t5, 0x0028           ## $t5 = DB060028
/* 0361C 80A7792C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03620 80A77930 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03624 80A77934 240E0014 */  addiu   $t6, $zero, 0x0014         ## $t6 = 00000014
/* 03628 80A77938 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 0362C 80A7793C 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 03630 80A77940 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 03634 80A77944 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 03638 80A77948 2418001E */  addiu   $t8, $zero, 0x001E         ## $t8 = 0000001E
/* 0363C 80A7794C AFB80018 */  sw      $t8, 0x0018($sp)
/* 03640 80A77950 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 03644 80A77954 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 03648 80A77958 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0364C 80A7795C 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 03650 80A77960 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 03654 80A77964 240700FF */  addiu   $a3, $zero, 0x00FF         ## $a3 = 000000FF
/* 03658 80A77968 0C29D86C */  jal     func_80A761B0
/* 0365C 80A7796C AFA20038 */  sw      $v0, 0x0038($sp)
/* 03660 80A77970 8FA30038 */  lw      $v1, 0x0038($sp)
/* 03664 80A77974 3C1980A7 */  lui     $t9, %hi(func_80A77530)    ## $t9 = 80A70000
/* 03668 80A77978 3C0880A7 */  lui     $t0, %hi(func_80A7759C)    ## $t0 = 80A70000
/* 0366C 80A7797C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03670 80A77980 8FA30068 */  lw      $v1, 0x0068($sp)
/* 03674 80A77984 2508759C */  addiu   $t0, $t0, %lo(func_80A7759C) ## $t0 = 80A7759C
/* 03678 80A77988 27397530 */  addiu   $t9, $t9, %lo(func_80A77530) ## $t9 = 80A77530
/* 0367C 80A7798C 2462014C */  addiu   $v0, $v1, 0x014C           ## $v0 = 0000014C
/* 03680 80A77990 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000150
/* 03684 80A77994 8C460020 */  lw      $a2, 0x0020($v0)           ## 0000016C
/* 03688 80A77998 90470002 */  lbu     $a3, 0x0002($v0)           ## 0000014E
/* 0368C 80A7799C AFA80014 */  sw      $t0, 0x0014($sp)
/* 03690 80A779A0 AFB90010 */  sw      $t9, 0x0010($sp)
/* 03694 80A779A4 8FA4006C */  lw      $a0, 0x006C($sp)
/* 03698 80A779A8 0C0286B2 */  jal     SkelAnime_DrawSV
/* 0369C 80A779AC AFA30018 */  sw      $v1, 0x0018($sp)
/* 036A0 80A779B0 3C0680A8 */  lui     $a2, %hi(D_80A787E8)       ## $a2 = 80A80000
/* 036A4 80A779B4 24C687E8 */  addiu   $a2, $a2, %lo(D_80A787E8)  ## $a2 = 80A787E8
/* 036A8 80A779B8 27A40044 */  addiu   $a0, $sp, 0x0044           ## $a0 = FFFFFFDC
/* 036AC 80A779BC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 036B0 80A779C0 0C031AD5 */  jal     Graph_CloseDisp
/* 036B4 80A779C4 24070159 */  addiu   $a3, $zero, 0x0159         ## $a3 = 00000159
/* 036B8 80A779C8 8FBF002C */  lw      $ra, 0x002C($sp)
/* 036BC 80A779CC 8FB00028 */  lw      $s0, 0x0028($sp)
/* 036C0 80A779D0 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 036C4 80A779D4 03E00008 */  jr      $ra
/* 036C8 80A779D8 00000000 */  nop


