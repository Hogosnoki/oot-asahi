glabel func_80B523C8
/* 03A38 80B523C8 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 03A3C 80B523CC AFBF002C */  sw      $ra, 0x002C($sp)
/* 03A40 80B523D0 AFB10028 */  sw      $s1, 0x0028($sp)
/* 03A44 80B523D4 AFB00024 */  sw      $s0, 0x0024($sp)
/* 03A48 80B523D8 AFA5008C */  sw      $a1, 0x008C($sp)
/* 03A4C 80B523DC 84820190 */  lh      $v0, 0x0190($a0)           ## 00000190
/* 03A50 80B523E0 84830194 */  lh      $v1, 0x0194($a0)           ## 00000194
/* 03A54 80B523E4 3C0980B5 */  lui     $t1, %hi(D_80B52810)       ## $t1 = 80B50000
/* 03A58 80B523E8 25292810 */  addiu   $t1, $t1, %lo(D_80B52810)  ## $t1 = 80B52810
/* 03A5C 80B523EC 00027080 */  sll     $t6, $v0,  2
/* 03A60 80B523F0 0003C880 */  sll     $t9, $v1,  2
/* 03A64 80B523F4 012E7821 */  addu    $t7, $t1, $t6
/* 03A68 80B523F8 01395021 */  addu    $t2, $t1, $t9
/* 03A6C 80B523FC 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000000
/* 03A70 80B52400 8D4B0000 */  lw      $t3, 0x0000($t2)           ## 00000000
/* 03A74 80B52404 3C0D80B5 */  lui     $t5, %hi(D_80B52834)       ## $t5 = 80B50000
/* 03A78 80B52408 AFB80074 */  sw      $t8, 0x0074($sp)
/* 03A7C 80B5240C AFAB0070 */  sw      $t3, 0x0070($sp)
/* 03A80 80B52410 84880198 */  lh      $t0, 0x0198($a0)           ## 00000198
/* 03A84 80B52414 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 03A88 80B52418 3C0680B5 */  lui     $a2, %hi(D_80B52B38)       ## $a2 = 80B50000
/* 03A8C 80B5241C 00086080 */  sll     $t4, $t0,  2
/* 03A90 80B52420 01AC6821 */  addu    $t5, $t5, $t4
/* 03A94 80B52424 8DAD2834 */  lw      $t5, %lo(D_80B52834)($t5)
/* 03A98 80B52428 24C62B38 */  addiu   $a2, $a2, %lo(D_80B52B38)  ## $a2 = 80B52B38
/* 03A9C 80B5242C 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFC4
/* 03AA0 80B52430 AFAD0064 */  sw      $t5, 0x0064($sp)
/* 03AA4 80B52434 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 03AA8 80B52438 24070657 */  addiu   $a3, $zero, 0x0657         ## $a3 = 00000657
/* 03AAC 80B5243C 0C031AB1 */  jal     Graph_OpenDisp
/* 03AB0 80B52440 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 03AB4 80B52444 8FAF008C */  lw      $t7, 0x008C($sp)
/* 03AB8 80B52448 0C024F46 */  jal     func_80093D18
/* 03ABC 80B5244C 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 03AC0 80B52450 8FA70074 */  lw      $a3, 0x0074($sp)
/* 03AC4 80B52454 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03AC8 80B52458 3C048016 */  lui     $a0, 0x8016                ## $a0 = 80160000
/* 03ACC 80B5245C 00075100 */  sll     $t2, $a3,  4
/* 03AD0 80B52460 000A5F02 */  srl     $t3, $t2, 28
/* 03AD4 80B52464 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 03AD8 80B52468 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 03ADC 80B5246C AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 03AE0 80B52470 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 03AE4 80B52474 000B6080 */  sll     $t4, $t3,  2
/* 03AE8 80B52478 24846FA8 */  addiu   $a0, $a0, 0x6FA8           ## $a0 = 80166FA8
/* 03AEC 80B5247C 008C6821 */  addu    $t5, $a0, $t4
/* 03AF0 80B52480 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 03AF4 80B52484 8DAE0000 */  lw      $t6, 0x0000($t5)           ## 00000000
/* 03AF8 80B52488 3C0500FF */  lui     $a1, 0x00FF                ## $a1 = 00FF0000
/* 03AFC 80B5248C 34A5FFFF */  ori     $a1, $a1, 0xFFFF           ## $a1 = 00FFFFFF
/* 03B00 80B52490 00E57824 */  and     $t7, $a3, $a1
/* 03B04 80B52494 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 03B08 80B52498 01CFC021 */  addu    $t8, $t6, $t7
/* 03B0C 80B5249C 0306C821 */  addu    $t9, $t8, $a2
/* 03B10 80B524A0 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 03B14 80B524A4 8FA70070 */  lw      $a3, 0x0070($sp)
/* 03B18 80B524A8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03B1C 80B524AC 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 03B20 80B524B0 00076100 */  sll     $t4, $a3,  4
/* 03B24 80B524B4 000C6F02 */  srl     $t5, $t4, 28
/* 03B28 80B524B8 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 03B2C 80B524BC AE0A02C0 */  sw      $t2, 0x02C0($s0)           ## 000002C0
/* 03B30 80B524C0 000D7080 */  sll     $t6, $t5,  2
/* 03B34 80B524C4 356B0024 */  ori     $t3, $t3, 0x0024           ## $t3 = DB060024
/* 03B38 80B524C8 008E7821 */  addu    $t7, $a0, $t6
/* 03B3C 80B524CC AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 03B40 80B524D0 8DF80000 */  lw      $t8, 0x0000($t7)           ## 00000000
/* 03B44 80B524D4 00E5C824 */  and     $t9, $a3, $a1
/* 03B48 80B524D8 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 03B4C 80B524DC 03195021 */  addu    $t2, $t8, $t9
/* 03B50 80B524E0 01465821 */  addu    $t3, $t2, $a2
/* 03B54 80B524E4 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 03B58 80B524E8 8FA70064 */  lw      $a3, 0x0064($sp)
/* 03B5C 80B524EC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03B60 80B524F0 35AD0028 */  ori     $t5, $t5, 0x0028           ## $t5 = DB060028
/* 03B64 80B524F4 00077100 */  sll     $t6, $a3,  4
/* 03B68 80B524F8 000E7F02 */  srl     $t7, $t6, 28
/* 03B6C 80B524FC 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 03B70 80B52500 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 03B74 80B52504 000FC080 */  sll     $t8, $t7,  2
/* 03B78 80B52508 0098C821 */  addu    $t9, $a0, $t8
/* 03B7C 80B5250C AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 03B80 80B52510 8F2A0000 */  lw      $t2, 0x0000($t9)           ## DB060020
/* 03B84 80B52514 00E55824 */  and     $t3, $a3, $a1
/* 03B88 80B52518 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 03B8C 80B5251C 014B6021 */  addu    $t4, $t2, $t3
/* 03B90 80B52520 01866821 */  addu    $t5, $t4, $a2
/* 03B94 80B52524 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 03B98 80B52528 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03B9C 80B5252C 3C0FFB00 */  lui     $t7, 0xFB00                ## $t7 = FB000000
/* 03BA0 80B52530 3C0B8011 */  lui     $t3, 0x8011                ## $t3 = 80110000
/* 03BA4 80B52534 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 03BA8 80B52538 AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 03BAC 80B5253C AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 03BB0 80B52540 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 03BB4 80B52544 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03BB8 80B52548 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 03BBC 80B5254C 354A002C */  ori     $t2, $t2, 0x002C           ## $t2 = DB06002C
/* 03BC0 80B52550 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 03BC4 80B52554 AE1902C0 */  sw      $t9, 0x02C0($s0)           ## 000002C0
/* 03BC8 80B52558 256B6290 */  addiu   $t3, $t3, 0x6290           ## $t3 = 80116290
/* 03BCC 80B5255C AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 03BD0 80B52560 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 03BD4 80B52564 2622014C */  addiu   $v0, $s1, 0x014C           ## $v0 = 0000014C
/* 03BD8 80B52568 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000150
/* 03BDC 80B5256C 8C460020 */  lw      $a2, 0x0020($v0)           ## 0000016C
/* 03BE0 80B52570 90470002 */  lbu     $a3, 0x0002($v0)           ## 0000014E
/* 03BE4 80B52574 3C0D80B5 */  lui     $t5, %hi(func_80B4FB74)    ## $t5 = 80B50000
/* 03BE8 80B52578 3C0C80B5 */  lui     $t4, %hi(func_80B52348)    ## $t4 = 80B50000
/* 03BEC 80B5257C 258C2348 */  addiu   $t4, $t4, %lo(func_80B52348) ## $t4 = 80B52348
/* 03BF0 80B52580 25ADFB74 */  addiu   $t5, $t5, %lo(func_80B4FB74) ## $t5 = 80B4FB74
/* 03BF4 80B52584 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 03BF8 80B52588 AFAC0010 */  sw      $t4, 0x0010($sp)
/* 03BFC 80B5258C AFB10018 */  sw      $s1, 0x0018($sp)
/* 03C00 80B52590 8E0E02C0 */  lw      $t6, 0x02C0($s0)           ## 000002C0
/* 03C04 80B52594 8FA4008C */  lw      $a0, 0x008C($sp)
/* 03C08 80B52598 0C0289CF */  jal     SkelAnime_DrawSV2
/* 03C0C 80B5259C AFAE001C */  sw      $t6, 0x001C($sp)
/* 03C10 80B525A0 AE0202C0 */  sw      $v0, 0x02C0($s0)           ## 000002C0
/* 03C14 80B525A4 8FAF008C */  lw      $t7, 0x008C($sp)
/* 03C18 80B525A8 3C0680B5 */  lui     $a2, %hi(D_80B52B48)       ## $a2 = 80B50000
/* 03C1C 80B525AC 24C62B48 */  addiu   $a2, $a2, %lo(D_80B52B48)  ## $a2 = 80B52B48
/* 03C20 80B525B0 27A4004C */  addiu   $a0, $sp, 0x004C           ## $a0 = FFFFFFC4
/* 03C24 80B525B4 24070670 */  addiu   $a3, $zero, 0x0670         ## $a3 = 00000670
/* 03C28 80B525B8 0C031AD5 */  jal     Graph_CloseDisp
/* 03C2C 80B525BC 8DE50000 */  lw      $a1, 0x0000($t7)           ## 00000000
/* 03C30 80B525C0 8FBF002C */  lw      $ra, 0x002C($sp)
/* 03C34 80B525C4 8FB00024 */  lw      $s0, 0x0024($sp)
/* 03C38 80B525C8 8FB10028 */  lw      $s1, 0x0028($sp)
/* 03C3C 80B525CC 03E00008 */  jr      $ra
/* 03C40 80B525D0 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000


