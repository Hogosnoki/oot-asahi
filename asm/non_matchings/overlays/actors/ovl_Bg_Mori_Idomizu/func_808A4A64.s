glabel func_808A4A64
/* 00424 808A4A64 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 00428 808A4A68 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 0042C 808A4A6C AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00430 808A4A70 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00434 808A4A74 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 00438 808A4A78 AFA40080 */  sw      $a0, 0x0080($sp)           
/* 0043C 808A4A7C 01C57021 */  addu    $t6, $t6, $a1              
/* 00440 808A4A80 8DCE1DE4 */  lw      $t6, 0x1DE4($t6)           ## 00011DE4
/* 00444 808A4A84 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00448 808A4A88 3C06808A */  lui     $a2, %hi(D_808A4CAC)       ## $a2 = 808A0000
/* 0044C 808A4A8C AFAE0074 */  sw      $t6, 0x0074($sp)           
/* 00450 808A4A90 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00454 808A4A94 24C64CAC */  addiu   $a2, $a2, %lo(D_808A4CAC)  ## $a2 = 808A4CAC
/* 00458 808A4A98 27A40060 */  addiu   $a0, $sp, 0x0060           ## $a0 = FFFFFFE0
/* 0045C 808A4A9C 24070164 */  addiu   $a3, $zero, 0x0164         ## $a3 = 00000164
/* 00460 808A4AA0 0C031AB1 */  jal     func_800C6AC4              
/* 00464 808A4AA4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00468 808A4AA8 0C024F61 */  jal     func_80093D84              
/* 0046C 808A4AAC 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00470 808A4AB0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00474 808A4AB4 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 00478 808A4AB8 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 0047C 808A4ABC 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00480 808A4AC0 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 00484 808A4AC4 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00488 808A4AC8 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0048C 808A4ACC 3C05808A */  lui     $a1, %hi(D_808A4CC4)       ## $a1 = 808A0000
/* 00490 808A4AD0 24A54CC4 */  addiu   $a1, $a1, %lo(D_808A4CC4)  ## $a1 = 808A4CC4
/* 00494 808A4AD4 24060168 */  addiu   $a2, $zero, 0x0168         ## $a2 = 00000168
/* 00498 808A4AD8 0C0346A2 */  jal     Matrix_NewMtx              
/* 0049C 808A4ADC AFA2005C */  sw      $v0, 0x005C($sp)           
/* 004A0 808A4AE0 8FA3005C */  lw      $v1, 0x005C($sp)           
/* 004A4 808A4AE4 3C0ADB06 */  lui     $t2, 0xDB06                ## $t2 = DB060000
/* 004A8 808A4AE8 354A0020 */  ori     $t2, $t2, 0x0020           ## $t2 = DB060020
/* 004AC 808A4AEC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 004B0 808A4AF0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 004B4 808A4AF4 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 004B8 808A4AF8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 004BC 808A4AFC 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 004C0 808A4B00 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 004C4 808A4B04 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 004C8 808A4B08 8FAB0080 */  lw      $t3, 0x0080($sp)           
/* 004CC 808A4B0C 240A0080 */  addiu   $t2, $zero, 0x0080         ## $t2 = 00000080
/* 004D0 808A4B10 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 004D4 808A4B14 816C015C */  lb      $t4, 0x015C($t3)           ## 0000015C
/* 004D8 808A4B18 000C6900 */  sll     $t5, $t4,  4               
/* 004DC 808A4B1C 01AC6821 */  addu    $t5, $t5, $t4              
/* 004E0 808A4B20 000D6880 */  sll     $t5, $t5,  2               
/* 004E4 808A4B24 022D7021 */  addu    $t6, $s1, $t5              
/* 004E8 808A4B28 01EE7821 */  addu    $t7, $t7, $t6              
/* 004EC 808A4B2C 8DEF17B4 */  lw      $t7, 0x17B4($t7)           ## 000117B4
/* 004F0 808A4B30 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 004F4 808A4B34 358C0024 */  ori     $t4, $t4, 0x0024           ## $t4 = DB060024
/* 004F8 808A4B38 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 004FC 808A4B3C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00500 808A4B40 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 00504 808A4B44 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 00508 808A4B48 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 0050C 808A4B4C AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 00510 808A4B50 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00514 808A4B54 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 00518 808A4B58 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0051C 808A4B5C 8FA90074 */  lw      $t1, 0x0074($sp)           
/* 00520 808A4B60 240A0020 */  addiu   $t2, $zero, 0x0020         ## $t2 = 00000020
/* 00524 808A4B64 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00528 808A4B68 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 0052C 808A4B6C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00530 808A4B70 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00534 808A4B74 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 00538 808A4B78 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 0053C 808A4B7C 240D007F */  addiu   $t5, $zero, 0x007F         ## $t5 = 0000007F
/* 00540 808A4B80 3123007F */  andi    $v1, $t1, 0x007F           ## $v1 = 00000000
/* 00544 808A4B84 3127007F */  andi    $a3, $t1, 0x007F           ## $a3 = 00000000
/* 00548 808A4B88 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 0054C 808A4B8C 01A33023 */  subu    $a2, $t5, $v1              
/* 00550 808A4B90 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 00554 808A4B94 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00558 808A4B98 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 0055C 808A4B9C AFAA0028 */  sw      $t2, 0x0028($sp)           
/* 00560 808A4BA0 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00564 808A4BA4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00568 808A4BA8 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 0056C 808A4BAC AFA20050 */  sw      $v0, 0x0050($sp)           
/* 00570 808A4BB0 8FA80050 */  lw      $t0, 0x0050($sp)           
/* 00574 808A4BB4 3C0D0600 */  lui     $t5, 0x0600                ## $t5 = 06000000
/* 00578 808A4BB8 25AD49D0 */  addiu   $t5, $t5, 0x49D0           ## $t5 = 060049D0
/* 0057C 808A4BBC AD020004 */  sw      $v0, 0x0004($t0)           ## 00000004
/* 00580 808A4BC0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00584 808A4BC4 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 00588 808A4BC8 3C06808A */  lui     $a2, %hi(D_808A4CDC)       ## $a2 = 808A0000
/* 0058C 808A4BCC 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00590 808A4BD0 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 00594 808A4BD4 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00598 808A4BD8 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 0059C 808A4BDC 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 005A0 808A4BE0 24C64CDC */  addiu   $a2, $a2, %lo(D_808A4CDC)  ## $a2 = 808A4CDC
/* 005A4 808A4BE4 27A40060 */  addiu   $a0, $sp, 0x0060           ## $a0 = FFFFFFE0
/* 005A8 808A4BE8 0C031AD5 */  jal     func_800C6B54              
/* 005AC 808A4BEC 2407017E */  addiu   $a3, $zero, 0x017E         ## $a3 = 0000017E
/* 005B0 808A4BF0 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 005B4 808A4BF4 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 005B8 808A4BF8 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 005BC 808A4BFC 03E00008 */  jr      $ra                        
/* 005C0 808A4C00 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
/* 005C4 808A4C04 00000000 */  nop
/* 005C8 808A4C08 00000000 */  nop
/* 005CC 808A4C0C 00000000 */  nop

