glabel BossMo_Draw
/* 09008 80924B08 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 0900C 80924B0C AFBF003C */  sw      $ra, 0x003C($sp)           
/* 09010 80924B10 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 09014 80924B14 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 09018 80924B18 AFA50084 */  sw      $a1, 0x0084($sp)           
/* 0901C 80924B1C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 09020 80924B20 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 09024 80924B24 3C068092 */  lui     $a2, %hi(D_80926AD0)       ## $a2 = 80920000
/* 09028 80924B28 24C66AD0 */  addiu   $a2, $a2, %lo(D_80926AD0)  ## $a2 = 80926AD0
/* 0902C 80924B2C 27A40060 */  addiu   $a0, $sp, 0x0060           ## $a0 = FFFFFFE0
/* 09030 80924B30 24071B2E */  addiu   $a3, $zero, 0x1B2E         ## $a3 = 00001B2E
/* 09034 80924B34 0C031AB1 */  jal     func_800C6AC4              
/* 09038 80924B38 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0903C 80924B3C 8FAF0084 */  lw      $t7, 0x0084($sp)           
/* 09040 80924B40 0C024F46 */  jal     func_80093D18              
/* 09044 80924B44 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 09048 80924B48 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 0904C 80924B4C 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 09050 80924B50 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 09054 80924B54 24780008 */  addiu   $t8, $v1, 0x0008           ## $t8 = 00000008
/* 09058 80924B58 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 0905C 80924B5C AC790000 */  sw      $t9, 0x0000($v1)           ## 00000000
/* 09060 80924B60 C62401A4 */  lwc1    $f4, 0x01A4($s1)           ## 000001A4
/* 09064 80924B64 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.50
/* 09068 80924B68 2401FF00 */  addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
/* 0906C 80924B6C 3C189696 */  lui     $t8, 0x9696                ## $t8 = 96960000
/* 09070 80924B70 46062202 */  mul.s   $f8, $f4, $f6              
/* 09074 80924B74 37189600 */  ori     $t8, $t8, 0x9600           ## $t8 = 96969600
/* 09078 80924B78 3C0FFB00 */  lui     $t7, 0xFB00                ## $t7 = FB000000
/* 0907C 80924B7C 4600428D */  trunc.w.s $f10, $f8                  
/* 09080 80924B80 440B5000 */  mfc1    $t3, $f10                  
/* 09084 80924B84 00000000 */  nop
/* 09088 80924B88 316C00FF */  andi    $t4, $t3, 0x00FF           ## $t4 = 00000000
/* 0908C 80924B8C 01816825 */  or      $t5, $t4, $at              ## $t5 = FFFFFF00
/* 09090 80924B90 AC6D0004 */  sw      $t5, 0x0004($v1)           ## 00000004
/* 09094 80924B94 8E0302C0 */  lw      $v1, 0x02C0($s0)           ## 000002C0
/* 09098 80924B98 246E0008 */  addiu   $t6, $v1, 0x0008           ## $t6 = 00000008
/* 0909C 80924B9C AE0E02C0 */  sw      $t6, 0x02C0($s0)           ## 000002C0
/* 090A0 80924BA0 AC780004 */  sw      $t8, 0x0004($v1)           ## 00000004
/* 090A4 80924BA4 AC6F0000 */  sw      $t7, 0x0000($v1)           ## 00000000
/* 090A8 80924BA8 8FB90084 */  lw      $t9, 0x0084($sp)           
/* 090AC 80924BAC 0C024F61 */  jal     func_80093D84              
/* 090B0 80924BB0 8F240000 */  lw      $a0, 0x0000($t9)           ## FA000000
/* 090B4 80924BB4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 090B8 80924BB8 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 090BC 80924BBC 35290020 */  ori     $t1, $t1, 0x0020           ## $t1 = DB060020
/* 090C0 80924BC0 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 090C4 80924BC4 AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 090C8 80924BC8 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 090CC 80924BCC 8FAA0084 */  lw      $t2, 0x0084($sp)           
/* 090D0 80924BD0 86270164 */  lh      $a3, 0x0164($s1)           ## 00000164
/* 090D4 80924BD4 86260162 */  lh      $a2, 0x0162($s1)           ## 00000162
/* 090D8 80924BD8 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 090DC 80924BDC 240B0020 */  addiu   $t3, $zero, 0x0020         ## $t3 = 00000020
/* 090E0 80924BE0 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 090E4 80924BE4 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 090E8 80924BE8 AFAD0018 */  sw      $t5, 0x0018($sp)           
/* 090EC 80924BEC AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 090F0 80924BF0 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 090F4 80924BF4 862E0166 */  lh      $t6, 0x0166($s1)           ## 00000166
/* 090F8 80924BF8 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 090FC 80924BFC 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 09100 80924C00 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 09104 80924C04 862F0168 */  lh      $t7, 0x0168($s1)           ## 00000168
/* 09108 80924C08 AFB90028 */  sw      $t9, 0x0028($sp)           
/* 0910C 80924C0C AFB80024 */  sw      $t8, 0x0024($sp)           
/* 09110 80924C10 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 09114 80924C14 AFA20054 */  sw      $v0, 0x0054($sp)           
/* 09118 80924C18 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 0911C 80924C1C AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 09120 80924C20 8FA30054 */  lw      $v1, 0x0054($sp)           
/* 09124 80924C24 3C09FA00 */  lui     $t1, 0xFA00                ## $t1 = FA000000
/* 09128 80924C28 3529FFFF */  ori     $t1, $t1, 0xFFFF           ## $t1 = FA00FFFF
/* 0912C 80924C2C AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 09130 80924C30 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09134 80924C34 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 09138 80924C38 44819000 */  mtc1    $at, $f18                  ## $f18 = 12.00
/* 0913C 80924C3C 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 09140 80924C40 AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 09144 80924C44 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 09148 80924C48 C63001A4 */  lwc1    $f16, 0x01A4($s1)          ## 000001A4
/* 0914C 80924C4C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 09150 80924C50 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 09154 80924C54 46128102 */  mul.s   $f4, $f16, $f18            
/* 09158 80924C58 3C01C8FF */  lui     $at, 0xC8FF                ## $at = C8FF0000
/* 0915C 80924C5C 3421FF00 */  ori     $at, $at, 0xFF00           ## $at = C8FFFF00
/* 09160 80924C60 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 09164 80924C64 46062203 */  div.s   $f8, $f4, $f6              
/* 09168 80924C68 4600428D */  trunc.w.s $f10, $f8                  
/* 0916C 80924C6C 440D5000 */  mfc1    $t5, $f10                  
/* 09170 80924C70 00000000 */  nop
/* 09174 80924C74 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 00000000
/* 09178 80924C78 01C17825 */  or      $t7, $t6, $at              ## $t7 = C8FFFF00
/* 0917C 80924C7C AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 09180 80924C80 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 09184 80924C84 3C010064 */  lui     $at, 0x0064                ## $at = 00640000
/* 09188 80924C88 3421FF00 */  ori     $at, $at, 0xFF00           ## $at = 0064FF00
/* 0918C 80924C8C 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 09190 80924C90 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 09194 80924C94 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 09198 80924C98 C63001A4 */  lwc1    $f16, 0x01A4($s1)          ## 000001A4
/* 0919C 80924C9C 4600848D */  trunc.w.s $f18, $f16                 
/* 091A0 80924CA0 440B9000 */  mfc1    $t3, $f18                  
/* 091A4 80924CA4 00000000 */  nop
/* 091A8 80924CA8 316C00FF */  andi    $t4, $t3, 0x00FF           ## $t4 = 00000000
/* 091AC 80924CAC 01816825 */  or      $t5, $t4, $at              ## $t5 = 0064FF00
/* 091B0 80924CB0 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 091B4 80924CB4 8624015C */  lh      $a0, 0x015C($s1)           ## 0000015C
/* 091B8 80924CB8 00800821 */  addu    $at, $a0, $zero            
/* 091BC 80924CBC 00042080 */  sll     $a0, $a0,  2               
/* 091C0 80924CC0 00812023 */  subu    $a0, $a0, $at              
/* 091C4 80924CC4 00042080 */  sll     $a0, $a0,  2               
/* 091C8 80924CC8 00812023 */  subu    $a0, $a0, $at              
/* 091CC 80924CCC 00042200 */  sll     $a0, $a0,  8               
/* 091D0 80924CD0 00042400 */  sll     $a0, $a0, 16               
/* 091D4 80924CD4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 091D8 80924CD8 00042403 */  sra     $a0, $a0, 16               
/* 091DC 80924CDC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 091E0 80924CE0 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 091E4 80924CE4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 091E8 80924CE8 3C0FD700 */  lui     $t7, 0xD700                ## $t7 = D7000000
/* 091EC 80924CEC 46040182 */  mul.s   $f6, $f0, $f4              
/* 091F0 80924CF0 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 091F4 80924CF4 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 091F8 80924CF8 35EF0002 */  ori     $t7, $t7, 0x0002           ## $t7 = D7000002
/* 091FC 80924CFC AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 09200 80924D00 4600320D */  trunc.w.s $f8, $f6                   
/* 09204 80924D04 44044000 */  mfc1    $a0, $f8                   
/* 09208 80924D08 00000000 */  nop
/* 0920C 80924D0C 00042400 */  sll     $a0, $a0, 16               
/* 09210 80924D10 00042403 */  sra     $a0, $a0, 16               
/* 09214 80924D14 2484015E */  addiu   $a0, $a0, 0x015E           ## $a0 = 0000015E
/* 09218 80924D18 3084FFFF */  andi    $a0, $a0, 0xFFFF           ## $a0 = 0000015E
/* 0921C 80924D1C 0004CC00 */  sll     $t9, $a0, 16               
/* 09220 80924D20 03244025 */  or      $t0, $t9, $a0              ## $t0 = 0000015E
/* 09224 80924D24 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 09228 80924D28 922901D1 */  lbu     $t1, 0x01D1($s1)           ## 000001D1
/* 0922C 80924D2C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 09230 80924D30 51200004 */  beql    $t1, $zero, .L80924D44     
/* 09234 80924D34 8FAA0084 */  lw      $t2, 0x0084($sp)           
/* 09238 80924D38 0C248E1C */  jal     func_80923870              
/* 0923C 80924D3C 8FA50084 */  lw      $a1, 0x0084($sp)           
/* 09240 80924D40 8FAA0084 */  lw      $t2, 0x0084($sp)           
.L80924D44:
/* 09244 80924D44 3C068092 */  lui     $a2, %hi(D_80926AE0)       ## $a2 = 80920000
/* 09248 80924D48 24C66AE0 */  addiu   $a2, $a2, %lo(D_80926AE0)  ## $a2 = 80926AE0
/* 0924C 80924D4C 27A40060 */  addiu   $a0, $sp, 0x0060           ## $a0 = FFFFFFE0
/* 09250 80924D50 24071B6F */  addiu   $a3, $zero, 0x1B6F         ## $a3 = 00001B6F
/* 09254 80924D54 0C031AD5 */  jal     func_800C6B54              
/* 09258 80924D58 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000000
/* 0925C 80924D5C 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 09260 80924D60 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 09264 80924D64 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 09268 80924D68 03E00008 */  jr      $ra                        
/* 0926C 80924D6C 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000


