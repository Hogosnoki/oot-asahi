glabel func_8089844C
/* 0038C 8089844C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00390 80898450 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00394 80898454 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00398 80898458 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0039C 8089845C 0C00B638 */  jal     Actor_MoveForward
              
/* 003A0 80898460 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 003A4 80898464 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 003A8 80898468 240E0085 */  addiu   $t6, $zero, 0x0085         ## $t6 = 00000085
/* 003AC 8089846C AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 003B0 80898470 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 003B4 80898474 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 003B8 80898478 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 003BC 8089847C 3C074100 */  lui     $a3, 0x4100                ## $a3 = 41000000
/* 003C0 80898480 0C00B92D */  jal     func_8002E4B4              
/* 003C4 80898484 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 003C8 80898488 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 003CC 8089848C 31F80009 */  andi    $t8, $t7, 0x0009           ## $t8 = 00000000
/* 003D0 80898490 1700000C */  bne     $t8, $zero, .L808984C4     
/* 003D4 80898494 00000000 */  nop
/* 003D8 80898498 92190160 */  lbu     $t9, 0x0160($s0)           ## 00000160
/* 003DC 8089849C 33280002 */  andi    $t0, $t9, 0x0002           ## $t0 = 00000000
/* 003E0 808984A0 51000021 */  beql    $t0, $zero, .L80898528     
/* 003E4 808984A4 860A01B0 */  lh      $t2, 0x01B0($s0)           ## 000001B0
/* 003E8 808984A8 8E020154 */  lw      $v0, 0x0154($s0)           ## 00000154
/* 003EC 808984AC 5040001E */  beql    $v0, $zero, .L80898528     
/* 003F0 808984B0 860A01B0 */  lh      $t2, 0x01B0($s0)           ## 000001B0
/* 003F4 808984B4 90490002 */  lbu     $t1, 0x0002($v0)           ## 00000002
/* 003F8 808984B8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 003FC 808984BC 5521001A */  bnel    $t1, $at, .L80898528       
/* 00400 808984C0 860A01B0 */  lh      $t2, 0x01B0($s0)           ## 000001B0
.L808984C4:
/* 00404 808984C4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00408 808984C8 00000000 */  nop
/* 0040C 808984CC C608005C */  lwc1    $f8, 0x005C($s0)           ## 0000005C
/* 00410 808984D0 46000187 */  neg.s   $f6, $f0                   
/* 00414 808984D4 46083282 */  mul.s   $f10, $f6, $f8             
/* 00418 808984D8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0041C 808984DC E7AA002C */  swc1    $f10, 0x002C($sp)          
/* 00420 808984E0 C6120060 */  lwc1    $f18, 0x0060($s0)          ## 00000060
/* 00424 808984E4 46000407 */  neg.s   $f16, $f0                  
/* 00428 808984E8 46128102 */  mul.s   $f4, $f16, $f18            
/* 0042C 808984EC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00430 808984F0 E7A40030 */  swc1    $f4, 0x0030($sp)           
/* 00434 808984F4 C6080064 */  lwc1    $f8, 0x0064($s0)           ## 00000064
/* 00438 808984F8 46000187 */  neg.s   $f6, $f0                   
/* 0043C 808984FC 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00440 80898500 46083282 */  mul.s   $f10, $f6, $f8             
/* 00444 80898504 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00448 80898508 27A6002C */  addiu   $a2, $sp, 0x002C           ## $a2 = FFFFFFF4
/* 0044C 8089850C 0C226045 */  jal     func_80898114              
/* 00450 80898510 E7AA0034 */  swc1    $f10, 0x0034($sp)          
/* 00454 80898514 0C00B55C */  jal     Actor_Kill
              
/* 00458 80898518 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0045C 8089851C 10000010 */  beq     $zero, $zero, .L80898560   
/* 00460 80898520 860B00B6 */  lh      $t3, 0x00B6($s0)           ## 000000B6
/* 00464 80898524 860A01B0 */  lh      $t2, 0x01B0($s0)           ## 000001B0
.L80898528:
/* 00468 80898528 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0046C 8089852C 26060150 */  addiu   $a2, $s0, 0x0150           ## $a2 = 00000150
/* 00470 80898530 2941003D */  slti    $at, $t2, 0x003D           
/* 00474 80898534 54200006 */  bnel    $at, $zero, .L80898550     
/* 00478 80898538 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0047C 8089853C 0C00B55C */  jal     Actor_Kill
              
/* 00480 80898540 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00484 80898544 10000006 */  beq     $zero, $zero, .L80898560   
/* 00488 80898548 860B00B6 */  lh      $t3, 0x00B6($s0)           ## 000000B6
/* 0048C 8089854C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80898550:
/* 00490 80898550 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00494 80898554 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00498 80898558 00812821 */  addu    $a1, $a0, $at              
/* 0049C 8089855C 860B00B6 */  lh      $t3, 0x00B6($s0)           ## 000000B6
.L80898560:
/* 004A0 80898560 860D00B4 */  lh      $t5, 0x00B4($s0)           ## 000000B4
/* 004A4 80898564 256C04B0 */  addiu   $t4, $t3, 0x04B0           ## $t4 = 000004B0
/* 004A8 80898568 25AE0FA0 */  addiu   $t6, $t5, 0x0FA0           ## $t6 = 00000FA0
/* 004AC 8089856C A60C00B6 */  sh      $t4, 0x00B6($s0)           ## 000000B6
/* 004B0 80898570 A60E00B4 */  sh      $t6, 0x00B4($s0)           ## 000000B4
/* 004B4 80898574 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 004B8 80898578 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 004BC 8089857C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 004C0 80898580 03E00008 */  jr      $ra                        
/* 004C4 80898584 00000000 */  nop
