glabel func_80A58320
/* 01120 80A58320 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01124 80A58324 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 01128 80A58328 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0112C 80A5832C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01130 80A58330 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 01134 80A58334 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01138 80A58338 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0113C 80A5833C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01140 80A58340 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 01144 80A58344 86030194 */  lh      $v1, 0x0194($s0)           ## 00000194
/* 01148 80A58348 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0114C 80A5834C 10600002 */  beq     $v1, $zero, .L80A58358     
/* 01150 80A58350 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 01154 80A58354 A60E0194 */  sh      $t6, 0x0194($s0)           ## 00000194
.L80A58358:
/* 01158 80A58358 0C0295B2 */  jal     func_800A56C8              
/* 0115C 80A5835C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01160 80A58360 14400004 */  bne     $v0, $zero, .L80A58374     
/* 01164 80A58364 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 01168 80A58368 0C0295B2 */  jal     func_800A56C8              
/* 0116C 80A5836C 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 01170 80A58370 10400003 */  beq     $v0, $zero, .L80A58380     
.L80A58374:
/* 01174 80A58374 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01178 80A58378 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0117C 80A5837C 2405387F */  addiu   $a1, $zero, 0x387F         ## $a1 = 0000387F
.L80A58380:
/* 01180 80A58380 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 01184 80A58384 31F80008 */  andi    $t8, $t7, 0x0008           ## $t8 = 00000000
/* 01188 80A58388 53000004 */  beql    $t8, $zero, .L80A5839C     
/* 0118C 80A5838C 863907A0 */  lh      $t9, 0x07A0($s1)           ## 000007A0
/* 01190 80A58390 1000002A */  beq     $zero, $zero, .L80A5843C   
/* 01194 80A58394 8605007E */  lh      $a1, 0x007E($s0)           ## 0000007E
/* 01198 80A58398 863907A0 */  lh      $t9, 0x07A0($s1)           ## 000007A0
.L80A5839C:
/* 0119C 80A5839C 00194080 */  sll     $t0, $t9,  2               
/* 011A0 80A583A0 02284821 */  addu    $t1, $s1, $t0              
/* 011A4 80A583A4 0C016A7D */  jal     func_8005A9F4              
/* 011A8 80A583A8 8D240790 */  lw      $a0, 0x0790($t1)           ## 00000790
/* 011AC 80A583AC 860A008A */  lh      $t2, 0x008A($s0)           ## 0000008A
/* 011B0 80A583B0 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 011B4 80A583B4 01422823 */  subu    $a1, $t2, $v0              
/* 011B8 80A583B8 00A12821 */  addu    $a1, $a1, $at              
/* 011BC 80A583BC 00052C00 */  sll     $a1, $a1, 16               
/* 011C0 80A583C0 00052C03 */  sra     $a1, $a1, 16               
/* 011C4 80A583C4 04A00003 */  bltz    $a1, .L80A583D4            
/* 011C8 80A583C8 00051023 */  subu    $v0, $zero, $a1            
/* 011CC 80A583CC 10000001 */  beq     $zero, $zero, .L80A583D4   
/* 011D0 80A583D0 00A01025 */  or      $v0, $a1, $zero            ## $v0 = 00000000
.L80A583D4:
/* 011D4 80A583D4 28414001 */  slti    $at, $v0, 0x4001           
/* 011D8 80A583D8 5420000C */  bnel    $at, $zero, .L80A5840C     
/* 011DC 80A583DC 862E07A0 */  lh      $t6, 0x07A0($s1)           ## 000007A0
/* 011E0 80A583E0 862B07A0 */  lh      $t3, 0x07A0($s1)           ## 000007A0
/* 011E4 80A583E4 000B6080 */  sll     $t4, $t3,  2               
/* 011E8 80A583E8 022C6821 */  addu    $t5, $s1, $t4              
/* 011EC 80A583EC 0C016A7D */  jal     func_8005A9F4              
/* 011F0 80A583F0 8DA40790 */  lw      $a0, 0x0790($t5)           ## 00000790
/* 011F4 80A583F4 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 011F8 80A583F8 00412821 */  addu    $a1, $v0, $at              
/* 011FC 80A583FC 00052C00 */  sll     $a1, $a1, 16               
/* 01200 80A58400 1000000E */  beq     $zero, $zero, .L80A5843C   
/* 01204 80A58404 00052C03 */  sra     $a1, $a1, 16               
/* 01208 80A58408 862E07A0 */  lh      $t6, 0x07A0($s1)           ## 000007A0
.L80A5840C:
/* 0120C 80A5840C 000E7880 */  sll     $t7, $t6,  2               
/* 01210 80A58410 022FC021 */  addu    $t8, $s1, $t7              
/* 01214 80A58414 8F040790 */  lw      $a0, 0x0790($t8)           ## 00000790
/* 01218 80A58418 0C016A7D */  jal     func_8005A9F4              
/* 0121C 80A5841C A7A5002E */  sh      $a1, 0x002E($sp)           
/* 01220 80A58420 87A5002E */  lh      $a1, 0x002E($sp)           
/* 01224 80A58424 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 01228 80A58428 0005C843 */  sra     $t9, $a1,  1               
/* 0122C 80A5842C 00592823 */  subu    $a1, $v0, $t9              
/* 01230 80A58430 00A12821 */  addu    $a1, $a1, $at              
/* 01234 80A58434 00052C00 */  sll     $a1, $a1, 16               
/* 01238 80A58438 00052C03 */  sra     $a1, $a1, 16               
.L80A5843C:
/* 0123C 80A5843C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 01240 80A58440 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 01244 80A58444 24060800 */  addiu   $a2, $zero, 0x0800         ## $a2 = 00000800
/* 01248 80A58448 86090194 */  lh      $t1, 0x0194($s0)           ## 00000194
/* 0124C 80A5844C 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 01250 80A58450 11200008 */  beq     $t1, $zero, .L80A58474     
/* 01254 80A58454 A6080032 */  sh      $t0, 0x0032($s0)           ## 00000032
/* 01258 80A58458 C60400EC */  lwc1    $f4, 0x00EC($s0)           ## 000000EC
/* 0125C 80A5845C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01260 80A58460 00000000 */  nop
/* 01264 80A58464 4606203C */  c.lt.s  $f4, $f6                   
/* 01268 80A58468 00000000 */  nop
/* 0126C 80A5846C 45020017 */  bc1fl   .L80A584CC                 
/* 01270 80A58470 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A58474:
/* 01274 80A58474 0C041B33 */  jal     func_80106CCC              
/* 01278 80A58478 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0127C 80A5847C 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 01280 80A58480 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01284 80A58484 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01288 80A58488 55410007 */  bnel    $t2, $at, .L80A584A8       
/* 0128C 80A5848C 8E06011C */  lw      $a2, 0x011C($s0)           ## 0000011C
/* 01290 80A58490 0C00B33C */  jal     Flags_SetClear
              
/* 01294 80A58494 82050003 */  lb      $a1, 0x0003($s0)           ## 00000003
/* 01298 80A58498 240B0003 */  addiu   $t3, $zero, 0x0003         ## $t3 = 00000003
/* 0129C 80A5849C 3C0180A6 */  lui     $at, %hi(D_80A58A34)       ## $at = 80A60000
/* 012A0 80A584A0 A42B8A34 */  sh      $t3, %lo(D_80A58A34)($at)  
/* 012A4 80A584A4 8E06011C */  lw      $a2, 0x011C($s0)           ## 0000011C
.L80A584A8:
/* 012A8 80A584A8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 012AC 80A584AC 26251C24 */  addiu   $a1, $s1, 0x1C24           ## $a1 = 00001C24
/* 012B0 80A584B0 10C00003 */  beq     $a2, $zero, .L80A584C0     
/* 012B4 80A584B4 00000000 */  nop
/* 012B8 80A584B8 0C00CDD2 */  jal     Actor_ChangeType
              
/* 012BC 80A584BC 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
.L80A584C0:
/* 012C0 80A584C0 0C00B55C */  jal     Actor_Kill
              
/* 012C4 80A584C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 012C8 80A584C8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A584CC:
/* 012CC 80A584CC 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 012D0 80A584D0 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 012D4 80A584D4 03E00008 */  jr      $ra                        
/* 012D8 80A584D8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
