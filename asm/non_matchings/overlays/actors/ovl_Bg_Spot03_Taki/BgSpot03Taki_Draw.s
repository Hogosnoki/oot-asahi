glabel BgSpot03Taki_Draw
/* 00604 808AE0E4 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 00608 808AE0E8 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 0060C 808AE0EC AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00610 808AE0F0 AFA40088 */  sw      $a0, 0x0088($sp)           
/* 00614 808AE0F4 AFA5008C */  sw      $a1, 0x008C($sp)           
/* 00618 808AE0F8 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0061C 808AE0FC 3C06808B */  lui     $a2, %hi(D_808AE3C0)       ## $a2 = 808B0000
/* 00620 808AE100 24C6E3C0 */  addiu   $a2, $a2, %lo(D_808AE3C0)  ## $a2 = 808AE3C0
/* 00624 808AE104 27A40068 */  addiu   $a0, $sp, 0x0068           ## $a0 = FFFFFFE0
/* 00628 808AE108 24070141 */  addiu   $a3, $zero, 0x0141         ## $a3 = 00000141
/* 0062C 808AE10C 0C031AB1 */  jal     Graph_OpenDisp              
/* 00630 808AE110 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00634 808AE114 8FA7008C */  lw      $a3, 0x008C($sp)           
/* 00638 808AE118 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0063C 808AE11C 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 00640 808AE120 01074021 */  addu    $t0, $t0, $a3              
/* 00644 808AE124 8D081DE4 */  lw      $t0, 0x1DE4($t0)           ## 00011DE4
/* 00648 808AE128 3C18DA38 */  lui     $t8, 0xDA38                ## $t8 = DA380000
/* 0064C 808AE12C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00650 808AE130 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 00654 808AE134 37180003 */  ori     $t8, $t8, 0x0003           ## $t8 = DA380003
/* 00658 808AE138 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0065C 808AE13C 3C05808B */  lui     $a1, %hi(D_808AE3D8)       ## $a1 = 808B0000
/* 00660 808AE140 8CE40000 */  lw      $a0, 0x0000($a3)           ## 00000000
/* 00664 808AE144 24A5E3D8 */  addiu   $a1, $a1, %lo(D_808AE3D8)  ## $a1 = 808AE3D8
/* 00668 808AE148 24060145 */  addiu   $a2, $zero, 0x0145         ## $a2 = 00000145
/* 0066C 808AE14C AFA20064 */  sw      $v0, 0x0064($sp)           
/* 00670 808AE150 0C0346A2 */  jal     Matrix_NewMtx              
/* 00674 808AE154 AFA8007C */  sw      $t0, 0x007C($sp)           
/* 00678 808AE158 8FA30064 */  lw      $v1, 0x0064($sp)           
/* 0067C 808AE15C 8FA8007C */  lw      $t0, 0x007C($sp)           
/* 00680 808AE160 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00684 808AE164 8FB9008C */  lw      $t9, 0x008C($sp)           
/* 00688 808AE168 8F240000 */  lw      $a0, 0x0000($t9)           ## 00000000
/* 0068C 808AE16C 0C024F61 */  jal     func_80093D84              
/* 00690 808AE170 AFA8007C */  sw      $t0, 0x007C($sp)           
/* 00694 808AE174 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00698 808AE178 8FA8007C */  lw      $t0, 0x007C($sp)           
/* 0069C 808AE17C 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 006A0 808AE180 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 006A4 808AE184 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 006A8 808AE188 358C0020 */  ori     $t4, $t4, 0x0020           ## $t4 = DB060020
/* 006AC 808AE18C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 006B0 808AE190 8FAD008C */  lw      $t5, 0x008C($sp)           
/* 006B4 808AE194 00083880 */  sll     $a3, $t0,  2               
/* 006B8 808AE198 240B0040 */  addiu   $t3, $zero, 0x0040         ## $t3 = 00000040
/* 006BC 808AE19C 8DA40000 */  lw      $a0, 0x0000($t5)           ## 00000000
/* 006C0 808AE1A0 240E0040 */  addiu   $t6, $zero, 0x0040         ## $t6 = 00000040
/* 006C4 808AE1A4 240F0040 */  addiu   $t7, $zero, 0x0040         ## $t7 = 00000040
/* 006C8 808AE1A8 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 006CC 808AE1AC 24190040 */  addiu   $t9, $zero, 0x0040         ## $t9 = 00000040
/* 006D0 808AE1B0 00E83821 */  addu    $a3, $a3, $t0              
/* 006D4 808AE1B4 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 006D8 808AE1B8 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 006DC 808AE1BC AFB80018 */  sw      $t8, 0x0018($sp)           
/* 006E0 808AE1C0 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 006E4 808AE1C4 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 006E8 808AE1C8 AFAB0028 */  sw      $t3, 0x0028($sp)           
/* 006EC 808AE1CC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 006F0 808AE1D0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 006F4 808AE1D4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 006F8 808AE1D8 AFA20060 */  sw      $v0, 0x0060($sp)           
/* 006FC 808AE1DC 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 00700 808AE1E0 AFA8007C */  sw      $t0, 0x007C($sp)           
/* 00704 808AE1E4 8FA30060 */  lw      $v1, 0x0060($sp)           
/* 00708 808AE1E8 8FA8007C */  lw      $t0, 0x007C($sp)           
/* 0070C 808AE1EC 8FA90088 */  lw      $t1, 0x0088($sp)           
/* 00710 808AE1F0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00714 808AE1F4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00718 808AE1F8 3C0D0600 */  lui     $t5, 0x0600                ## $t5 = 06000000
/* 0071C 808AE1FC 25AD0B20 */  addiu   $t5, $t5, 0x0B20           ## $t5 = 06000B20
/* 00720 808AE200 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 00724 808AE204 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 00728 808AE208 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 0072C 808AE20C AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00730 808AE210 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00734 808AE214 912E0174 */  lbu     $t6, 0x0174($t1)           ## 00000174
/* 00738 808AE218 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0073C 808AE21C 01003025 */  or      $a2, $t0, $zero            ## $a2 = 00000000
/* 00740 808AE220 15C0000B */  bne     $t6, $zero, .L808AE250     
/* 00744 808AE224 00083880 */  sll     $a3, $t0,  2               
/* 00748 808AE228 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 0074C 808AE22C 3C180101 */  lui     $t8, 0x0101                ## $t8 = 01010000
/* 00750 808AE230 3C190600 */  lui     $t9, 0x0600                ## $t9 = 06000000
/* 00754 808AE234 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00758 808AE238 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 0075C 808AE23C 27390800 */  addiu   $t9, $t9, 0x0800           ## $t9 = 06000800
/* 00760 808AE240 37189032 */  ori     $t8, $t8, 0x9032           ## $t8 = 01019032
/* 00764 808AE244 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00768 808AE248 1000000A */  beq     $zero, $zero, .L808AE274   
/* 0076C 808AE24C AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
.L808AE250:
/* 00770 808AE250 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00774 808AE254 3C0C0101 */  lui     $t4, 0x0101                ## $t4 = 01010000
/* 00778 808AE258 3C0D0600 */  lui     $t5, 0x0600                ## $t5 = 06000000
/* 0077C 808AE25C 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00780 808AE260 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 00784 808AE264 25AD0990 */  addiu   $t5, $t5, 0x0990           ## $t5 = 06000990
/* 00788 808AE268 358C9032 */  ori     $t4, $t4, 0x9032           ## $t4 = 01019032
/* 0078C 808AE26C AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 00790 808AE270 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
.L808AE274:
/* 00794 808AE274 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00798 808AE278 3C0F0600 */  lui     $t7, 0x0600                ## $t7 = 06000000
/* 0079C 808AE27C 25EF0BC0 */  addiu   $t7, $t7, 0x0BC0           ## $t7 = 06000BC0
/* 007A0 808AE280 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 007A4 808AE284 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 007A8 808AE288 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 007AC 808AE28C AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 007B0 808AE290 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 007B4 808AE294 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 007B8 808AE298 37390020 */  ori     $t9, $t9, 0x0020           ## $t9 = DB060020
/* 007BC 808AE29C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 007C0 808AE2A0 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 007C4 808AE2A4 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 007C8 808AE2A8 8FAB008C */  lw      $t3, 0x008C($sp)           
/* 007CC 808AE2AC 24190040 */  addiu   $t9, $zero, 0x0040         ## $t9 = 00000040
/* 007D0 808AE2B0 24180040 */  addiu   $t8, $zero, 0x0040         ## $t8 = 00000040
/* 007D4 808AE2B4 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000008
/* 007D8 808AE2B8 00087823 */  subu    $t7, $zero, $t0            
/* 007DC 808AE2BC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 007E0 808AE2C0 00E83823 */  subu    $a3, $a3, $t0              
/* 007E4 808AE2C4 240C0040 */  addiu   $t4, $zero, 0x0040         ## $t4 = 00000040
/* 007E8 808AE2C8 240D0040 */  addiu   $t5, $zero, 0x0040         ## $t5 = 00000040
/* 007EC 808AE2CC AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 007F0 808AE2D0 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 007F4 808AE2D4 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 007F8 808AE2D8 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 007FC 808AE2DC AFAF001C */  sw      $t7, 0x001C($sp)           
/* 00800 808AE2E0 AFB90028 */  sw      $t9, 0x0028($sp)           
/* 00804 808AE2E4 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 00808 808AE2E8 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 0080C 808AE2EC AFA2004C */  sw      $v0, 0x004C($sp)           
/* 00810 808AE2F0 8FA3004C */  lw      $v1, 0x004C($sp)           
/* 00814 808AE2F4 3C0C0600 */  lui     $t4, 0x0600                ## $t4 = 06000000
/* 00818 808AE2F8 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 0081C 808AE2FC AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00820 808AE300 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00824 808AE304 258C1580 */  addiu   $t4, $t4, 0x1580           ## $t4 = 06001580
/* 00828 808AE308 3C06808B */  lui     $a2, %hi(D_808AE3F0)       ## $a2 = 808B0000
/* 0082C 808AE30C 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 00830 808AE310 AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 00834 808AE314 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00838 808AE318 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 0083C 808AE31C 8FAD008C */  lw      $t5, 0x008C($sp)           
/* 00840 808AE320 24C6E3F0 */  addiu   $a2, $a2, %lo(D_808AE3F0)  ## $a2 = 808AE3F0
/* 00844 808AE324 27A40068 */  addiu   $a0, $sp, 0x0068           ## $a0 = FFFFFFE0
/* 00848 808AE328 24070166 */  addiu   $a3, $zero, 0x0166         ## $a3 = 00000166
/* 0084C 808AE32C 0C031AD5 */  jal     Graph_CloseDisp              
/* 00850 808AE330 8DA50000 */  lw      $a1, 0x0000($t5)           ## 00000000
/* 00854 808AE334 8FA90088 */  lw      $t1, 0x0088($sp)           
/* 00858 808AE338 912E0174 */  lbu     $t6, 0x0174($t1)           ## 00000174
/* 0085C 808AE33C 9122016A */  lbu     $v0, 0x016A($t1)           ## 0000016A
/* 00860 808AE340 252400E4 */  addiu   $a0, $t1, 0x00E4           ## $a0 = 000000E4
/* 00864 808AE344 2DCF0001 */  sltiu   $t7, $t6, 0x0001           
/* 00868 808AE348 18400008 */  blez    $v0, .L808AE36C            
/* 0086C 808AE34C A12F0174 */  sb      $t7, 0x0174($t1)           ## 00000174
/* 00870 808AE350 28410004 */  slti    $at, $v0, 0x0004           
/* 00874 808AE354 10200005 */  beq     $at, $zero, .L808AE36C     
/* 00878 808AE358 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 0087C 808AE35C 0C03D1B8 */  jal     func_800F46E0              
/* 00880 808AE360 252400E4 */  addiu   $a0, $t1, 0x00E4           ## $a0 = 000000E4
/* 00884 808AE364 10000004 */  beq     $zero, $zero, .L808AE378   
/* 00888 808AE368 8FBF003C */  lw      $ra, 0x003C($sp)           
.L808AE36C:
/* 0088C 808AE36C 0C03D1B8 */  jal     func_800F46E0              
/* 00890 808AE370 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00894 808AE374 8FBF003C */  lw      $ra, 0x003C($sp)           
.L808AE378:
/* 00898 808AE378 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 0089C 808AE37C 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000
/* 008A0 808AE380 03E00008 */  jr      $ra                        
/* 008A4 808AE384 00000000 */  nop
/* 008A8 808AE388 00000000 */  nop
/* 008AC 808AE38C 00000000 */  nop

