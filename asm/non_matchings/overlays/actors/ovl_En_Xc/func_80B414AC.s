glabel func_80B414AC
/* 052CC 80B414AC 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 052D0 80B414B0 AFBF002C */  sw      $ra, 0x002C($sp)
/* 052D4 80B414B4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 052D8 80B414B8 AFA40068 */  sw      $a0, 0x0068($sp)
/* 052DC 80B414BC AFA5006C */  sw      $a1, 0x006C($sp)
/* 052E0 80B414C0 8CB00000 */  lw      $s0, 0x0000($a1)           ## 00000000
/* 052E4 80B414C4 3C0680B4 */  lui     $a2, %hi(D_80B420F0)       ## $a2 = 80B40000
/* 052E8 80B414C8 24C620F0 */  addiu   $a2, $a2, %lo(D_80B420F0)  ## $a2 = 80B420F0
/* 052EC 80B414CC 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFE0
/* 052F0 80B414D0 24070347 */  addiu   $a3, $zero, 0x0347         ## $a3 = 00000347
/* 052F4 80B414D4 0C031AB1 */  jal     Graph_OpenDisp
/* 052F8 80B414D8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 052FC 80B414DC 0C024F46 */  jal     func_80093D18
/* 05300 80B414E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05304 80B414E4 8E0402C0 */  lw      $a0, 0x02C0($s0)           ## 000002C0
/* 05308 80B414E8 3C030600 */  lui     $v1, 0x0600                ## $v1 = 06000000
/* 0530C 80B414EC 246358C0 */  addiu   $v1, $v1, 0x58C0           ## $v1 = 060058C0
/* 05310 80B414F0 0003C900 */  sll     $t9, $v1,  4
/* 05314 80B414F4 00194702 */  srl     $t0, $t9, 28
/* 05318 80B414F8 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 0531C 80B414FC 3C0A8016 */  lui     $t2, 0x8016                ## $t2 = 80160000
/* 05320 80B41500 248F0008 */  addiu   $t7, $a0, 0x0008           ## $t7 = 00000008
/* 05324 80B41504 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 05328 80B41508 254A6FA8 */  addiu   $t2, $t2, 0x6FA8           ## $t2 = 80166FA8
/* 0532C 80B4150C 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 05330 80B41510 00084880 */  sll     $t1, $t0,  2
/* 05334 80B41514 012A2821 */  addu    $a1, $t1, $t2
/* 05338 80B41518 AC980000 */  sw      $t8, 0x0000($a0)           ## 00000000
/* 0533C 80B4151C 8CAB0000 */  lw      $t3, 0x0000($a1)           ## 00000000
/* 05340 80B41520 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 05344 80B41524 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 05348 80B41528 00613024 */  and     $a2, $v1, $at
/* 0534C 80B4152C 3C078000 */  lui     $a3, 0x8000                ## $a3 = 80000000
/* 05350 80B41530 01666021 */  addu    $t4, $t3, $a2
/* 05354 80B41534 01876821 */  addu    $t5, $t4, $a3
/* 05358 80B41538 AC8D0004 */  sw      $t5, 0x0004($a0)           ## 00000004
/* 0535C 80B4153C 8E0402C0 */  lw      $a0, 0x02C0($s0)           ## 000002C0
/* 05360 80B41540 3C0FDB06 */  lui     $t7, 0xDB06                ## $t7 = DB060000
/* 05364 80B41544 35EF0024 */  ori     $t7, $t7, 0x0024           ## $t7 = DB060024
/* 05368 80B41548 248E0008 */  addiu   $t6, $a0, 0x0008           ## $t6 = 00000008
/* 0536C 80B4154C AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 05370 80B41550 AC8F0000 */  sw      $t7, 0x0000($a0)           ## 00000000
/* 05374 80B41554 8CB80000 */  lw      $t8, 0x0000($a1)           ## 00000000
/* 05378 80B41558 0306C821 */  addu    $t9, $t8, $a2
/* 0537C 80B4155C 03274021 */  addu    $t0, $t9, $a3
/* 05380 80B41560 AC880004 */  sw      $t0, 0x0004($a0)           ## 00000004
/* 05384 80B41564 8FA20068 */  lw      $v0, 0x0068($sp)
/* 05388 80B41568 8FA4006C */  lw      $a0, 0x006C($sp)
/* 0538C 80B4156C 9047014E */  lbu     $a3, 0x014E($v0)           ## 0000014E
/* 05390 80B41570 8C46016C */  lw      $a2, 0x016C($v0)           ## 0000016C
/* 05394 80B41574 8C450150 */  lw      $a1, 0x0150($v0)           ## 00000150
/* 05398 80B41578 AFA00018 */  sw      $zero, 0x0018($sp)
/* 0539C 80B4157C AFA00014 */  sw      $zero, 0x0014($sp)
/* 053A0 80B41580 AFA00010 */  sw      $zero, 0x0010($sp)
/* 053A4 80B41584 0C0286B2 */  jal     SkelAnime_DrawSV
/* 053A8 80B41588 2442014C */  addiu   $v0, $v0, 0x014C           ## $v0 = 0000014C
/* 053AC 80B4158C 3C0680B4 */  lui     $a2, %hi(D_80B42108)       ## $a2 = 80B40000
/* 053B0 80B41590 24C62108 */  addiu   $a2, $a2, %lo(D_80B42108)  ## $a2 = 80B42108
/* 053B4 80B41594 27A40048 */  addiu   $a0, $sp, 0x0048           ## $a0 = FFFFFFE0
/* 053B8 80B41598 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 053BC 80B4159C 0C031AD5 */  jal     Graph_CloseDisp
/* 053C0 80B415A0 24070356 */  addiu   $a3, $zero, 0x0356         ## $a3 = 00000356
/* 053C4 80B415A4 8FBF002C */  lw      $ra, 0x002C($sp)
/* 053C8 80B415A8 8FB00028 */  lw      $s0, 0x0028($sp)
/* 053CC 80B415AC 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 053D0 80B415B0 03E00008 */  jr      $ra
/* 053D4 80B415B4 00000000 */  nop


