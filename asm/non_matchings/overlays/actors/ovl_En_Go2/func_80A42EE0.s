.rdata
glabel D_80A48590
    .asciz "../z_en_go2_eff.c"
    .balign 4

glabel D_80A485A4
    .asciz "../z_en_go2_eff.c"
    .balign 4

glabel D_80A485B8
    .asciz "../z_en_go2_eff.c"
    .balign 4

.text
glabel func_80A42EE0
/* 001B0 80A42EE0 27BDFF58 */  addiu   $sp, $sp, 0xFF58           ## $sp = FFFFFF58
/* 001B4 80A42EE4 AFBE0050 */  sw      $s8, 0x0050($sp)           
/* 001B8 80A42EE8 00A0F025 */  or      $s8, $a1, $zero            ## $s8 = 00000000
/* 001BC 80A42EEC AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 001C0 80A42EF0 AFB7004C */  sw      $s7, 0x004C($sp)           
/* 001C4 80A42EF4 AFB60048 */  sw      $s6, 0x0048($sp)           
/* 001C8 80A42EF8 AFB50044 */  sw      $s5, 0x0044($sp)           
/* 001CC 80A42EFC AFB40040 */  sw      $s4, 0x0040($sp)           
/* 001D0 80A42F00 AFB3003C */  sw      $s3, 0x003C($sp)           
/* 001D4 80A42F04 AFB20038 */  sw      $s2, 0x0038($sp)           
/* 001D8 80A42F08 AFB10034 */  sw      $s1, 0x0034($sp)           
/* 001DC 80A42F0C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 001E0 80A42F10 F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 001E4 80A42F14 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 001E8 80A42F18 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 001EC 80A42F1C 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 001F0 80A42F20 24920270 */  addiu   $s2, $a0, 0x0270           ## $s2 = 00000270
/* 001F4 80A42F24 3C0680A5 */  lui     $a2, %hi(D_80A48590)       ## $a2 = 80A50000
/* 001F8 80A42F28 24C68590 */  addiu   $a2, $a2, %lo(D_80A48590)  ## $a2 = 80A48590
/* 001FC 80A42F2C 27A40088 */  addiu   $a0, $sp, 0x0088           ## $a0 = FFFFFFE0
/* 00200 80A42F30 2407006F */  addiu   $a3, $zero, 0x006F         ## $a3 = 0000006F
/* 00204 80A42F34 0C031AB1 */  jal     Graph_OpenDisps              
/* 00208 80A42F38 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 0020C 80A42F3C 0000B825 */  or      $s7, $zero, $zero          ## $s7 = 00000000
/* 00210 80A42F40 0C024F61 */  jal     func_80093D84              
/* 00214 80A42F44 8FC40000 */  lw      $a0, 0x0000($s8)           ## 00000000
/* 00218 80A42F48 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 0021C 80A42F4C 4481C000 */  mtc1    $at, $f24                  ## $f24 = 8.00
/* 00220 80A42F50 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00224 80A42F54 4481B000 */  mtc1    $at, $f22                  ## $f22 = 1.00
/* 00228 80A42F58 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 0022C 80A42F5C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 255.00
/* 00230 80A42F60 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 00234 80A42F64 3C16DE00 */  lui     $s6, 0xDE00                ## $s6 = DE000000
.L80A42F68:
/* 00238 80A42F68 924E0000 */  lbu     $t6, 0x0000($s2)           ## 00000270
/* 0023C 80A42F6C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00240 80A42F70 34211DA0 */  ori     $at, $at, 0x1DA0           ## $at = 00011DA0
/* 00244 80A42F74 11C0008A */  beq     $t6, $zero, .L80A431A0     
/* 00248 80A42F78 03C19821 */  addu    $s3, $s8, $at              
/* 0024C 80A42F7C 3C150601 */  lui     $s5, 0x0601                ## $s5 = 06010000
/* 00250 80A42F80 16E00014 */  bne     $s7, $zero, .L80A42FD4     
/* 00254 80A42F84 26B5FD50 */  addiu   $s5, $s5, 0xFD50           ## $s5 = 0600FD50
/* 00258 80A42F88 3C110601 */  lui     $s1, 0x0601                ## $s1 = 06010000
/* 0025C 80A42F8C 2631FD40 */  addiu   $s1, $s1, 0xFD40           ## $s1 = 0600FD40
/* 00260 80A42F90 8E0402D0 */  lw      $a0, 0x02D0($s0)           ## 000002D0
/* 00264 80A42F94 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00268 80A42F98 0C024DDD */  jal     Gfx_CallSetupDL              
/* 0026C 80A42F9C 24170001 */  addiu   $s7, $zero, 0x0001         ## $s7 = 00000001
/* 00270 80A42FA0 AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
/* 00274 80A42FA4 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00278 80A42FA8 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 0027C 80A42FAC AC510004 */  sw      $s1, 0x0004($v0)           ## 00000004
/* 00280 80A42FB0 AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
/* 00284 80A42FB4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00288 80A42FB8 3C08643C */  lui     $t0, 0x643C                ## $t0 = 643C0000
/* 0028C 80A42FBC 35081400 */  ori     $t0, $t0, 0x1400           ## $t0 = 643C1400
/* 00290 80A42FC0 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00294 80A42FC4 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 00298 80A42FC8 3C19FB00 */  lui     $t9, 0xFB00                ## $t9 = FB000000
/* 0029C 80A42FCC AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 002A0 80A42FD0 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
.L80A42FD4:
/* 002A4 80A42FD4 92490001 */  lbu     $t1, 0x0001($s2)           ## 00000271
/* 002A8 80A42FD8 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 002AC 80A42FDC 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 002B0 80A42FE0 05210004 */  bgez    $t1, .L80A42FF4            
/* 002B4 80A42FE4 468021A0 */  cvt.s.w $f6, $f4                   
/* 002B8 80A42FE8 44814000 */  mtc1    $at, $f8                   ## $f8 = 4294967296.00
/* 002BC 80A42FEC 00000000 */  nop
/* 002C0 80A42FF0 46083180 */  add.s   $f6, $f6, $f8              
.L80A42FF4:
/* 002C4 80A42FF4 924A0002 */  lbu     $t2, 0x0002($s2)           ## 00000272
/* 002C8 80A42FF8 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 002CC 80A42FFC 448A5000 */  mtc1    $t2, $f10                  ## $f10 = 0.00
/* 002D0 80A43000 05410004 */  bgez    $t2, .L80A43014            
/* 002D4 80A43004 46805420 */  cvt.s.w $f16, $f10                 
/* 002D8 80A43008 44819000 */  mtc1    $at, $f18                  ## $f18 = 4294967296.00
/* 002DC 80A4300C 00000000 */  nop
/* 002E0 80A43010 46128400 */  add.s   $f16, $f16, $f18           
.L80A43014:
/* 002E4 80A43014 4610A103 */  div.s   $f4, $f20, $f16            
/* 002E8 80A43018 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 002EC 80A4301C 3C01AA82 */  lui     $at, 0xAA82                ## $at = AA820000
/* 002F0 80A43020 34215A00 */  ori     $at, $at, 0x5A00           ## $at = AA825A00
/* 002F4 80A43024 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 002F8 80A43028 AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 002FC 80A4302C 3C0DFA00 */  lui     $t5, 0xFA00                ## $t5 = FA000000
/* 00300 80A43030 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 00304 80A43034 3C19E700 */  lui     $t9, 0xE700                ## $t9 = E7000000
/* 00308 80A43038 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0030C 80A4303C 46043202 */  mul.s   $f8, $f6, $f4              
/* 00310 80A43040 4600428D */  trunc.w.s $f10, $f8                  
/* 00314 80A43044 44045000 */  mfc1    $a0, $f10                  
/* 00318 80A43048 00000000 */  nop
/* 0031C 80A4304C 00042400 */  sll     $a0, $a0, 16               
/* 00320 80A43050 00042403 */  sra     $a0, $a0, 16               
/* 00324 80A43054 308E00FF */  andi    $t6, $a0, 0x00FF           ## $t6 = 00000000
/* 00328 80A43058 01C17825 */  or      $t7, $t6, $at              ## $t7 = AA825A00
/* 0032C 80A4305C AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 00330 80A43060 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00334 80A43064 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00338 80A43068 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 0033C 80A4306C AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 00340 80A43070 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00344 80A43074 8E46001C */  lw      $a2, 0x001C($s2)           ## 0000028C
/* 00348 80A43078 C64E0018 */  lwc1    $f14, 0x0018($s2)          ## 00000288
/* 0034C 80A4307C 0C034261 */  jal     Matrix_Translate              
/* 00350 80A43080 C64C0014 */  lwc1    $f12, 0x0014($s2)          ## 00000284
/* 00354 80A43084 0C0347F5 */  jal     func_800D1FD4              
/* 00358 80A43088 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 0035C 80A4308C C64C0004 */  lwc1    $f12, 0x0004($s2)          ## 00000274
/* 00360 80A43090 4406B000 */  mfc1    $a2, $f22                  
/* 00364 80A43094 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00368 80A43098 0C0342A3 */  jal     Matrix_Scale              
/* 0036C 80A4309C 46006386 */  mov.s   $f14, $f12                 
/* 00370 80A430A0 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00374 80A430A4 3C09DA38 */  lui     $t1, 0xDA38                ## $t1 = DA380000
/* 00378 80A430A8 35290003 */  ori     $t1, $t1, 0x0003           ## $t1 = DA380003
/* 0037C 80A430AC 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 00380 80A430B0 AE0802D0 */  sw      $t0, 0x02D0($s0)           ## 000002D0
/* 00384 80A430B4 3C0580A5 */  lui     $a1, %hi(D_80A485A4)       ## $a1 = 80A50000
/* 00388 80A430B8 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 0038C 80A430BC 8FC40000 */  lw      $a0, 0x0000($s8)           ## 00000000
/* 00390 80A430C0 24A585A4 */  addiu   $a1, $a1, %lo(D_80A485A4)  ## $a1 = 80A485A4
/* 00394 80A430C4 24060089 */  addiu   $a2, $zero, 0x0089         ## $a2 = 00000089
/* 00398 80A430C8 0C0346A2 */  jal     Matrix_NewMtx              
/* 0039C 80A430CC 00408825 */  or      $s1, $v0, $zero            ## $s1 = 00000000
/* 003A0 80A430D0 AE220004 */  sw      $v0, 0x0004($s1)           ## 00000004
/* 003A4 80A430D4 924A0001 */  lbu     $t2, 0x0001($s2)           ## 00000271
/* 003A8 80A430D8 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 003AC 80A430DC 448A9000 */  mtc1    $t2, $f18                  ## $f18 = 0.00
/* 003B0 80A430E0 05410004 */  bgez    $t2, .L80A430F4            
/* 003B4 80A430E4 46809420 */  cvt.s.w $f16, $f18                 
/* 003B8 80A430E8 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 003BC 80A430EC 00000000 */  nop
/* 003C0 80A430F0 46068400 */  add.s   $f16, $f16, $f6            
.L80A430F4:
/* 003C4 80A430F4 924B0002 */  lbu     $t3, 0x0002($s2)           ## 00000272
/* 003C8 80A430F8 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 003CC 80A430FC 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 003D0 80A43100 05610004 */  bgez    $t3, .L80A43114            
/* 003D4 80A43104 46802220 */  cvt.s.w $f8, $f4                   
/* 003D8 80A43108 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 003DC 80A4310C 00000000 */  nop
/* 003E0 80A43110 460A4200 */  add.s   $f8, $f8, $f10             
.L80A43114:
/* 003E4 80A43114 4608C483 */  div.s   $f18, $f24, $f8            
/* 003E8 80A43118 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 003EC 80A4311C 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 003F0 80A43120 35CE0020 */  ori     $t6, $t6, 0x0020           ## $t6 = DB060020
/* 003F4 80A43124 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 003F8 80A43128 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 003FC 80A4312C 3C0480A5 */  lui     $a0, %hi(D_80A480D0)       ## $a0 = 80A50000
/* 00400 80A43130 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 00404 80A43134 3C0A8016 */  lui     $t2, %hi(gSegments)
/* 00408 80A43138 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 0040C 80A4313C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00410 80A43140 46128182 */  mul.s   $f6, $f16, $f18            
/* 00414 80A43144 4600310D */  trunc.w.s $f4, $f6                   
/* 00418 80A43148 44052000 */  mfc1    $a1, $f4                   
/* 0041C 80A4314C 00000000 */  nop
/* 00420 80A43150 00052C00 */  sll     $a1, $a1, 16               
/* 00424 80A43154 00052C03 */  sra     $a1, $a1, 16               
/* 00428 80A43158 00057880 */  sll     $t7, $a1,  2               
/* 0042C 80A4315C 008F2021 */  addu    $a0, $a0, $t7              
/* 00430 80A43160 8C8480D0 */  lw      $a0, %lo(D_80A480D0)($a0)  
/* 00434 80A43164 0004C900 */  sll     $t9, $a0,  4               
/* 00438 80A43168 00194702 */  srl     $t0, $t9, 28               
/* 0043C 80A4316C 00084880 */  sll     $t1, $t0,  2               
/* 00440 80A43170 01495021 */  addu    $t2, $t2, $t1              
/* 00444 80A43174 8D4A6FA8 */  lw      $t2, %lo(gSegments)($t2)
/* 00448 80A43178 0081C024 */  and     $t8, $a0, $at              
/* 0044C 80A4317C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00450 80A43180 030A5821 */  addu    $t3, $t8, $t2              
/* 00454 80A43184 01616021 */  addu    $t4, $t3, $at              
/* 00458 80A43188 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 0045C 80A4318C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00460 80A43190 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 00464 80A43194 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 00468 80A43198 AC550004 */  sw      $s5, 0x0004($v0)           ## 00000004
/* 0046C 80A4319C AC560000 */  sw      $s6, 0x0000($v0)           ## 00000000
.L80A431A0:
/* 00470 80A431A0 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 00474 80A431A4 0014A400 */  sll     $s4, $s4, 16               
/* 00478 80A431A8 0014A403 */  sra     $s4, $s4, 16               
/* 0047C 80A431AC 2A81000A */  slti    $at, $s4, 0x000A           
/* 00480 80A431B0 1420FF6D */  bne     $at, $zero, .L80A42F68     
/* 00484 80A431B4 26520038 */  addiu   $s2, $s2, 0x0038           ## $s2 = 000002A8
/* 00488 80A431B8 3C0680A5 */  lui     $a2, %hi(D_80A485B8)       ## $a2 = 80A50000
/* 0048C 80A431BC 24C685B8 */  addiu   $a2, $a2, %lo(D_80A485B8)  ## $a2 = 80A485B8
/* 00490 80A431C0 27A40088 */  addiu   $a0, $sp, 0x0088           ## $a0 = FFFFFFE0
/* 00494 80A431C4 8FC50000 */  lw      $a1, 0x0000($s8)           ## 00000000
/* 00498 80A431C8 0C031AD5 */  jal     Graph_CloseDisps              
/* 0049C 80A431CC 24070097 */  addiu   $a3, $zero, 0x0097         ## $a3 = 00000097
/* 004A0 80A431D0 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 004A4 80A431D4 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 004A8 80A431D8 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 004AC 80A431DC D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 004B0 80A431E0 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 004B4 80A431E4 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 004B8 80A431E8 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 004BC 80A431EC 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 004C0 80A431F0 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 004C4 80A431F4 8FB50044 */  lw      $s5, 0x0044($sp)           
/* 004C8 80A431F8 8FB60048 */  lw      $s6, 0x0048($sp)           
/* 004CC 80A431FC 8FB7004C */  lw      $s7, 0x004C($sp)           
/* 004D0 80A43200 8FBE0050 */  lw      $s8, 0x0050($sp)           
/* 004D4 80A43204 03E00008 */  jr      $ra                        
/* 004D8 80A43208 27BD00A8 */  addiu   $sp, $sp, 0x00A8           ## $sp = 00000000
