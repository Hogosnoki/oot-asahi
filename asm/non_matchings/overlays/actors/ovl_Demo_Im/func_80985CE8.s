glabel func_80985CE8
/* 01108 80985CE8 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 0110C 80985CEC AFBF002C */  sw      $ra, 0x002C($sp)
/* 01110 80985CF0 AFB00028 */  sw      $s0, 0x0028($sp)
/* 01114 80985CF4 AFA40078 */  sw      $a0, 0x0078($sp)
/* 01118 80985CF8 AFA5007C */  sw      $a1, 0x007C($sp)
/* 0111C 80985CFC 8482025C */  lh      $v0, 0x025C($a0)           ## 0000025C
/* 01120 80985D00 3C188098 */  lui     $t8, %hi(D_80987830)       ## $t8 = 80980000
/* 01124 80985D04 3C068099 */  lui     $a2, %hi(D_80988810)       ## $a2 = 80990000
/* 01128 80985D08 00027880 */  sll     $t7, $v0,  2
/* 0112C 80985D0C 030FC021 */  addu    $t8, $t8, $t7
/* 01130 80985D10 8F187830 */  lw      $t8, %lo(D_80987830)($t8)
/* 01134 80985D14 24C68810 */  addiu   $a2, $a2, %lo(D_80988810)  ## $a2 = 80988810
/* 01138 80985D18 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFD8
/* 0113C 80985D1C AFB80068 */  sw      $t8, 0x0068($sp)
/* 01140 80985D20 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 01144 80985D24 24070119 */  addiu   $a3, $zero, 0x0119         ## $a3 = 00000119
/* 01148 80985D28 0C031AB1 */  jal     Graph_OpenDisp
/* 0114C 80985D2C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 01150 80985D30 8FA9007C */  lw      $t1, 0x007C($sp)
/* 01154 80985D34 0C024F61 */  jal     func_80093D84
/* 01158 80985D38 8D240000 */  lw      $a0, 0x0000($t1)           ## 00000000
/* 0115C 80985D3C 8FA70068 */  lw      $a3, 0x0068($sp)
/* 01160 80985D40 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01164 80985D44 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 01168 80985D48 00076100 */  sll     $t4, $a3,  4
/* 0116C 80985D4C 000C6F02 */  srl     $t5, $t4, 28
/* 01170 80985D50 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 01174 80985D54 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 01178 80985D58 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 0117C 80985D5C 25EF6FA8 */  addiu   $t7, $t7, 0x6FA8           ## $t7 = 80166FA8
/* 01180 80985D60 000D7080 */  sll     $t6, $t5,  2
/* 01184 80985D64 356B0020 */  ori     $t3, $t3, 0x0020           ## $t3 = DB060020
/* 01188 80985D68 01CF2021 */  addu    $a0, $t6, $t7
/* 0118C 80985D6C AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 01190 80985D70 8C980000 */  lw      $t8, 0x0000($a0)           ## 00000000
/* 01194 80985D74 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 01198 80985D78 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0119C 80985D7C 00E12824 */  and     $a1, $a3, $at
/* 011A0 80985D80 3C068000 */  lui     $a2, 0x8000                ## $a2 = 80000000
/* 011A4 80985D84 0305C821 */  addu    $t9, $t8, $a1
/* 011A8 80985D88 03264821 */  addu    $t1, $t9, $a2
/* 011AC 80985D8C AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 011B0 80985D90 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 011B4 80985D94 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 011B8 80985D98 356B0024 */  ori     $t3, $t3, 0x0024           ## $t3 = DB060024
/* 011BC 80985D9C 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 011C0 80985DA0 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 011C4 80985DA4 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 011C8 80985DA8 8C8C0000 */  lw      $t4, 0x0000($a0)           ## 00000000
/* 011CC 80985DAC 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 011D0 80985DB0 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 011D4 80985DB4 01856821 */  addu    $t5, $t4, $a1
/* 011D8 80985DB8 01A67021 */  addu    $t6, $t5, $a2
/* 011DC 80985DBC AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 011E0 80985DC0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 011E4 80985DC4 8FA80078 */  lw      $t0, 0x0078($sp)
/* 011E8 80985DC8 3C0C8011 */  lui     $t4, 0x8011                ## $t4 = 80110000
/* 011EC 80985DCC 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 011F0 80985DD0 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 011F4 80985DD4 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 011F8 80985DD8 8D19026C */  lw      $t9, 0x026C($t0)           ## 0000026C
/* 011FC 80985DDC 258C6280 */  addiu   $t4, $t4, 0x6280           ## $t4 = 80116280
/* 01200 80985DE0 356B0030 */  ori     $t3, $t3, 0x0030           ## $t3 = DB060030
/* 01204 80985DE4 332900FF */  andi    $t1, $t9, 0x00FF           ## $t1 = 00000000
/* 01208 80985DE8 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 0120C 80985DEC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 01210 80985DF0 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 01214 80985DF4 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 01218 80985DF8 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 0121C 80985DFC AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 01220 80985E00 2502014C */  addiu   $v0, $t0, 0x014C           ## $v0 = 0000014C
/* 01224 80985E04 8C450004 */  lw      $a1, 0x0004($v0)           ## 00000150
/* 01228 80985E08 8C460020 */  lw      $a2, 0x0020($v0)           ## 0000016C
/* 0122C 80985E0C 90470002 */  lbu     $a3, 0x0002($v0)           ## 0000014E
/* 01230 80985E10 AFA00018 */  sw      $zero, 0x0018($sp)
/* 01234 80985E14 AFA00014 */  sw      $zero, 0x0014($sp)
/* 01238 80985E18 AFA00010 */  sw      $zero, 0x0010($sp)
/* 0123C 80985E1C 8E0D02D0 */  lw      $t5, 0x02D0($s0)           ## 000002D0
/* 01240 80985E20 8FA4007C */  lw      $a0, 0x007C($sp)
/* 01244 80985E24 0C0289CF */  jal     SkelAnime_DrawSV2
/* 01248 80985E28 AFAD001C */  sw      $t5, 0x001C($sp)
/* 0124C 80985E2C AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
/* 01250 80985E30 8FAE007C */  lw      $t6, 0x007C($sp)
/* 01254 80985E34 3C068099 */  lui     $a2, %hi(D_80988834)       ## $a2 = 80990000
/* 01258 80985E38 24C68834 */  addiu   $a2, $a2, %lo(D_80988834)  ## $a2 = 80988834
/* 0125C 80985E3C 27A40050 */  addiu   $a0, $sp, 0x0050           ## $a0 = FFFFFFD8
/* 01260 80985E40 24070134 */  addiu   $a3, $zero, 0x0134         ## $a3 = 00000134
/* 01264 80985E44 0C031AD5 */  jal     Graph_CloseDisp
/* 01268 80985E48 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000000
/* 0126C 80985E4C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 01270 80985E50 8FB00028 */  lw      $s0, 0x0028($sp)
/* 01274 80985E54 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
/* 01278 80985E58 03E00008 */  jr      $ra
/* 0127C 80985E5C 00000000 */  nop


