glabel func_8087AF38
/* 00178 8087AF38 27BDFF28 */  addiu   $sp, $sp, 0xFF28           ## $sp = FFFFFF28
/* 0017C 8087AF3C AFBF009C */  sw      $ra, 0x009C($sp)           
/* 00180 8087AF40 AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 00184 8087AF44 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 00188 8087AF48 AFB60090 */  sw      $s6, 0x0090($sp)           
/* 0018C 8087AF4C AFB5008C */  sw      $s5, 0x008C($sp)           
/* 00190 8087AF50 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 00194 8087AF54 AFB30084 */  sw      $s3, 0x0084($sp)           
/* 00198 8087AF58 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 0019C 8087AF5C AFB1007C */  sw      $s1, 0x007C($sp)           
/* 001A0 8087AF60 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 001A4 8087AF64 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 001A8 8087AF68 F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 001AC 8087AF6C F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 001B0 8087AF70 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 001B4 8087AF74 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 001B8 8087AF78 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 001BC 8087AF7C AFA500DC */  sw      $a1, 0x00DC($sp)           
/* 001C0 8087AF80 94820198 */  lhu     $v0, 0x0198($a0)           ## 00000198
/* 001C4 8087AF84 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 001C8 8087AF88 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 001CC 8087AF8C 10400005 */  beq     $v0, $zero, .L8087AFA4     
/* 001D0 8087AF90 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 001D4 8087AF94 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 001D8 8087AF98 31C2FFFF */  andi    $v0, $t6, 0xFFFF           ## $v0 = 0000FFFF
/* 001DC 8087AF9C 00401825 */  or      $v1, $v0, $zero            ## $v1 = 0000FFFF
/* 001E0 8087AFA0 A48E0198 */  sh      $t6, 0x0198($a0)           ## 00000198
.L8087AFA4:
/* 001E4 8087AFA4 14610008 */  bne     $v1, $at, .L8087AFC8       
/* 001E8 8087AFA8 00000000 */  nop
/* 001EC 8087AFAC 8645001C */  lh      $a1, 0x001C($s2)           ## 0000001C
/* 001F0 8087AFB0 8FA400DC */  lw      $a0, 0x00DC($sp)           
/* 001F4 8087AFB4 00052A03 */  sra     $a1, $a1,  8               
/* 001F8 8087AFB8 0C00B2DD */  jal     Flags_SetSwitch
              
/* 001FC 8087AFBC 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00200 8087AFC0 AE400134 */  sw      $zero, 0x0134($s2)         ## 00000134
/* 00204 8087AFC4 96420198 */  lhu     $v0, 0x0198($s2)           ## 00000198
.L8087AFC8:
/* 00208 8087AFC8 14400018 */  bne     $v0, $zero, .L8087B02C     
/* 0020C 8087AFCC 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00210 8087AFD0 8645001C */  lh      $a1, 0x001C($s2)           ## 0000001C
/* 00214 8087AFD4 8FA400DC */  lw      $a0, 0x00DC($sp)           
/* 00218 8087AFD8 00052A03 */  sra     $a1, $a1,  8               
/* 0021C 8087AFDC 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00220 8087AFE0 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00224 8087AFE4 0C00B55C */  jal     Actor_Kill
              
/* 00228 8087AFE8 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0022C 8087AFEC C6440028 */  lwc1    $f4, 0x0028($s2)           ## 00000028
/* 00230 8087AFF0 8E470024 */  lw      $a3, 0x0024($s2)           ## 00000024
/* 00234 8087AFF4 8FA500DC */  lw      $a1, 0x00DC($sp)           
/* 00238 8087AFF8 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 0023C 8087AFFC C646002C */  lwc1    $f6, 0x002C($s2)           ## 0000002C
/* 00240 8087B000 240F0009 */  addiu   $t7, $zero, 0x0009         ## $t7 = 00000009
/* 00244 8087B004 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 00248 8087B008 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0024C 8087B00C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00250 8087B010 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00254 8087B014 240600B7 */  addiu   $a2, $zero, 0x00B7         ## $a2 = 000000B7
/* 00258 8087B018 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 0025C 8087B01C 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00260 8087B020 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00264 8087B024 10000086 */  beq     $zero, $zero, .L8087B240   
/* 00268 8087B028 8FBF009C */  lw      $ra, 0x009C($sp)           
.L8087B02C:
/* 0026C 8087B02C 0041001A */  div     $zero, $v0, $at            
/* 00270 8087B030 0000C010 */  mfhi    $t8                        
/* 00274 8087B034 57000082 */  bnel    $t8, $zero, .L8087B240     
/* 00278 8087B038 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 0027C 8087B03C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00280 8087B040 00000000 */  nop
/* 00284 8087B044 3C018088 */  lui     $at, %hi(D_8087B5D8)       ## $at = 80880000
/* 00288 8087B048 C428B5D8 */  lwc1    $f8, %lo(D_8087B5D8)($at)  
/* 0028C 8087B04C 4480F000 */  mtc1    $zero, $f30                ## $f30 = 0.00
/* 00290 8087B050 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 00294 8087B054 46080282 */  mul.s   $f10, $f0, $f8             
/* 00298 8087B058 4481E000 */  mtc1    $at, $f28                  ## $f28 = 4.00
/* 0029C 8087B05C 3C018088 */  lui     $at, %hi(D_8087B5DC)       ## $at = 80880000
/* 002A0 8087B060 E7BE00D0 */  swc1    $f30, 0x00D0($sp)          
/* 002A4 8087B064 C6520028 */  lwc1    $f18, 0x0028($s2)          ## 00000028
/* 002A8 8087B068 C43AB5DC */  lwc1    $f26, %lo(D_8087B5DC)($at) 
/* 002AC 8087B06C 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 002B0 8087B070 4600540D */  trunc.w.s $f16, $f10                 
/* 002B4 8087B074 4481C000 */  mtc1    $at, $f24                  ## $f24 = 120.00
/* 002B8 8087B078 0000A025 */  or      $s4, $zero, $zero          ## $s4 = 00000000
/* 002BC 8087B07C 26550008 */  addiu   $s5, $s2, 0x0008           ## $s5 = 00000008
/* 002C0 8087B080 44138000 */  mfc1    $s3, $f16                  
/* 002C4 8087B084 27BE00CC */  addiu   $s8, $sp, 0x00CC           ## $s8 = FFFFFFF4
/* 002C8 8087B088 34178000 */  ori     $s7, $zero, 0x8000         ## $s7 = 00008000
/* 002CC 8087B08C 00139C00 */  sll     $s3, $s3, 16               
/* 002D0 8087B090 00139C03 */  sra     $s3, $s3, 16               
/* 002D4 8087B094 27B600C0 */  addiu   $s6, $sp, 0x00C0           ## $s6 = FFFFFFE8
/* 002D8 8087B098 E7B200C4 */  swc1    $f18, 0x00C4($sp)          
.L8087B09C:
/* 002DC 8087B09C 3C014620 */  lui     $at, 0x4620                ## $at = 46200000
/* 002E0 8087B0A0 44816000 */  mtc1    $at, $f12                  ## $f12 = 10240.00
/* 002E4 8087B0A4 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 002E8 8087B0A8 00000000 */  nop
/* 002EC 8087B0AC 44932000 */  mtc1    $s3, $f4                   ## $f4 = 0.00
/* 002F0 8087B0B0 00000000 */  nop
/* 002F4 8087B0B4 468021A0 */  cvt.s.w $f6, $f4                   
/* 002F8 8087B0B8 46060200 */  add.s   $f8, $f0, $f6              
/* 002FC 8087B0BC 4600428D */  trunc.w.s $f10, $f8                  
/* 00300 8087B0C0 44025000 */  mfc1    $v0, $f10                  
/* 00304 8087B0C4 00000000 */  nop
/* 00308 8087B0C8 00028400 */  sll     $s0, $v0, 16               
/* 0030C 8087B0CC 00022400 */  sll     $a0, $v0, 16               
/* 00310 8087B0D0 00108403 */  sra     $s0, $s0, 16               
/* 00314 8087B0D4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00318 8087B0D8 00042403 */  sra     $a0, $a0, 16               
/* 0031C 8087B0DC 00102400 */  sll     $a0, $s0, 16               
/* 00320 8087B0E0 46000506 */  mov.s   $f20, $f0                  
/* 00324 8087B0E4 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00328 8087B0E8 00042403 */  sra     $a0, $a0, 16               
/* 0032C 8087B0EC 4614C482 */  mul.s   $f18, $f24, $f20           
/* 00330 8087B0F0 C6500024 */  lwc1    $f16, 0x0024($s2)          ## 00000024
/* 00334 8087B0F4 46000586 */  mov.s   $f22, $f0                  
/* 00338 8087B0F8 4600C202 */  mul.s   $f8, $f24, $f0             
/* 0033C 8087B0FC 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000008
/* 00340 8087B100 02C02825 */  or      $a1, $s6, $zero            ## $a1 = FFFFFFE8
/* 00344 8087B104 46128100 */  add.s   $f4, $f16, $f18            
/* 00348 8087B108 E7A400C0 */  swc1    $f4, 0x00C0($sp)           
/* 0034C 8087B10C C646002C */  lwc1    $f6, 0x002C($s2)           ## 0000002C
/* 00350 8087B110 46083280 */  add.s   $f10, $f6, $f8             
/* 00354 8087B114 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 00358 8087B118 E7AA00C8 */  swc1    $f10, 0x00C8($sp)          
/* 0035C 8087B11C 461A0302 */  mul.s   $f12, $f0, $f26            
/* 00360 8087B120 3C018088 */  lui     $at, %hi(D_8087B5E0)       ## $at = 80880000
/* 00364 8087B124 C430B5E0 */  lwc1    $f16, %lo(D_8087B5E0)($at) 
/* 00368 8087B128 02178821 */  addu    $s1, $s0, $s7              
/* 0036C 8087B12C 00118C00 */  sll     $s1, $s1, 16               
/* 00370 8087B130 00118C03 */  sra     $s1, $s1, 16               
/* 00374 8087B134 00112400 */  sll     $a0, $s1, 16               
/* 00378 8087B138 4610603C */  c.lt.s  $f12, $f16                 
/* 0037C 8087B13C 00000000 */  nop
/* 00380 8087B140 45000015 */  bc1f    .L8087B198                 
/* 00384 8087B144 00000000 */  nop
/* 00388 8087B148 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0038C 8087B14C 00042403 */  sra     $a0, $a0, 16               
/* 00390 8087B150 00112400 */  sll     $a0, $s1, 16               
/* 00394 8087B154 46000506 */  mov.s   $f20, $f0                  
/* 00398 8087B158 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0039C 8087B15C 00042403 */  sra     $a0, $a0, 16               
/* 003A0 8087B160 4614C102 */  mul.s   $f4, $f24, $f20            
/* 003A4 8087B164 C6520024 */  lwc1    $f18, 0x0024($s2)          ## 00000024
/* 003A8 8087B168 46000586 */  mov.s   $f22, $f0                  
/* 003AC 8087B16C 4600C282 */  mul.s   $f10, $f24, $f0            
/* 003B0 8087B170 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000008
/* 003B4 8087B174 02C02825 */  or      $a1, $s6, $zero            ## $a1 = FFFFFFE8
/* 003B8 8087B178 46049180 */  add.s   $f6, $f18, $f4             
/* 003BC 8087B17C E7A600C0 */  swc1    $f6, 0x00C0($sp)           
/* 003C0 8087B180 C648002C */  lwc1    $f8, 0x002C($s2)           ## 0000002C
/* 003C4 8087B184 460A4400 */  add.s   $f16, $f8, $f10            
/* 003C8 8087B188 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 003CC 8087B18C E7B000C8 */  swc1    $f16, 0x00C8($sp)          
/* 003D0 8087B190 461A0302 */  mul.s   $f12, $f0, $f26            
/* 003D4 8087B194 00000000 */  nop
.L8087B198:
/* 003D8 8087B198 4614E482 */  mul.s   $f18, $f28, $f20           
/* 003DC 8087B19C 3C078088 */  lui     $a3, %hi(D_8087B56C)       ## $a3 = 80880000
/* 003E0 8087B1A0 2409003C */  addiu   $t1, $zero, 0x003C         ## $t1 = 0000003C
/* 003E4 8087B1A4 240A0006 */  addiu   $t2, $zero, 0x0006         ## $t2 = 00000006
/* 003E8 8087B1A8 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 003EC 8087B1AC 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 003F0 8087B1B0 240D0096 */  addiu   $t5, $zero, 0x0096         ## $t5 = 00000096
/* 003F4 8087B1B4 460C9102 */  mul.s   $f4, $f18, $f12            
/* 003F8 8087B1B8 240E00AA */  addiu   $t6, $zero, 0x00AA         ## $t6 = 000000AA
/* 003FC 8087B1BC 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00400 8087B1C0 4616E182 */  mul.s   $f6, $f28, $f22            
/* 00404 8087B1C4 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00408 8087B1C8 2419000E */  addiu   $t9, $zero, 0x000E         ## $t9 = 0000000E
/* 0040C 8087B1CC 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00410 8087B1D0 E7A400CC */  swc1    $f4, 0x00CC($sp)           
/* 00414 8087B1D4 E7BE00D0 */  swc1    $f30, 0x00D0($sp)          
/* 00418 8087B1D8 AFA8003C */  sw      $t0, 0x003C($sp)           
/* 0041C 8087B1DC 460C3202 */  mul.s   $f8, $f6, $f12             
/* 00420 8087B1E0 AFB90038 */  sw      $t9, 0x0038($sp)           
/* 00424 8087B1E4 AFB80034 */  sw      $t8, 0x0034($sp)           
/* 00428 8087B1E8 AFAF0028 */  sw      $t7, 0x0028($sp)           
/* 0042C 8087B1EC AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 00430 8087B1F0 AFAD0020 */  sw      $t5, 0x0020($sp)           
/* 00434 8087B1F4 AFAC001C */  sw      $t4, 0x001C($sp)           
/* 00438 8087B1F8 E7A800D4 */  swc1    $f8, 0x00D4($sp)           
/* 0043C 8087B1FC AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 00440 8087B200 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00444 8087B204 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00448 8087B208 24E7B56C */  addiu   $a3, $a3, %lo(D_8087B56C)  ## $a3 = 8087B56C
/* 0044C 8087B20C 8FA400DC */  lw      $a0, 0x00DC($sp)           
/* 00450 8087B210 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000008
/* 00454 8087B214 03C03025 */  or      $a2, $s8, $zero            ## $a2 = FFFFFFF4
/* 00458 8087B218 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 0045C 8087B21C 0C00A9AE */  jal     func_8002A6B8              
/* 00460 8087B220 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 00464 8087B224 26732AAA */  addiu   $s3, $s3, 0x2AAA           ## $s3 = 00002AAA
/* 00468 8087B228 26940001 */  addiu   $s4, $s4, 0x0001           ## $s4 = 00000001
/* 0046C 8087B22C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00470 8087B230 00139C00 */  sll     $s3, $s3, 16               
/* 00474 8087B234 1681FF99 */  bne     $s4, $at, .L8087B09C       
/* 00478 8087B238 00139C03 */  sra     $s3, $s3, 16               
/* 0047C 8087B23C 8FBF009C */  lw      $ra, 0x009C($sp)           
.L8087B240:
/* 00480 8087B240 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 00484 8087B244 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 00488 8087B248 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 0048C 8087B24C D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 00490 8087B250 D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 00494 8087B254 D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 00498 8087B258 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 0049C 8087B25C 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 004A0 8087B260 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 004A4 8087B264 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 004A8 8087B268 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 004AC 8087B26C 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 004B0 8087B270 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 004B4 8087B274 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 004B8 8087B278 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 004BC 8087B27C 03E00008 */  jr      $ra                        
/* 004C0 8087B280 27BD00D8 */  addiu   $sp, $sp, 0x00D8           ## $sp = 00000000
