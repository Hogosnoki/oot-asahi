glabel func_809A5858
/* 00118 809A5858 27BDFF48 */  addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
/* 0011C 809A585C AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00120 809A5860 AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 00124 809A5864 AFB20040 */  sw      $s2, 0x0040($sp)           
/* 00128 809A5868 AFB1003C */  sw      $s1, 0x003C($sp)           
/* 0012C 809A586C AFA500BC */  sw      $a1, 0x00BC($sp)           
/* 00130 809A5870 8C920000 */  lw      $s2, 0x0000($a0)           ## 00000000
/* 00134 809A5874 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 00138 809A5878 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 0013C 809A587C 3C06809A */  lui     $a2, %hi(D_809A5DE0)       ## $a2 = 809A0000
/* 00140 809A5880 24C65DE0 */  addiu   $a2, $a2, %lo(D_809A5DE0)  ## $a2 = 809A5DE0
/* 00144 809A5884 27A40080 */  addiu   $a0, $sp, 0x0080           ## $a0 = FFFFFFC8
/* 00148 809A5888 240700B6 */  addiu   $a3, $zero, 0x00B6         ## $a3 = 000000B6
/* 0014C 809A588C 0C031AB1 */  jal     func_800C6AC4              
/* 00150 809A5890 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 00154 809A5894 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00158 809A5898 00000000 */  nop
/* 0015C 809A589C E7A000A8 */  swc1    $f0, 0x00A8($sp)           
/* 00160 809A58A0 E7A000A4 */  swc1    $f0, 0x00A4($sp)           
/* 00164 809A58A4 E7A000A0 */  swc1    $f0, 0x00A0($sp)           
/* 00168 809A58A8 8E02003C */  lw      $v0, 0x003C($s0)           ## 0000003C
/* 0016C 809A58AC 1040004A */  beq     $v0, $zero, .L809A59D8     
/* 00170 809A58B0 260E002C */  addiu   $t6, $s0, 0x002C           ## $t6 = 0000002C
/* 00174 809A58B4 AFAE0050 */  sw      $t6, 0x0050($sp)           
/* 00178 809A58B8 8C59005C */  lw      $t9, 0x005C($v0)           ## 0000005C
/* 0017C 809A58BC ADD90000 */  sw      $t9, 0x0000($t6)           ## 0000002C
/* 00180 809A58C0 8C580060 */  lw      $t8, 0x0060($v0)           ## 00000060
/* 00184 809A58C4 ADD80004 */  sw      $t8, 0x0004($t6)           ## 00000030
/* 00188 809A58C8 8C590064 */  lw      $t9, 0x0064($v0)           ## 00000064
/* 0018C 809A58CC ADD90008 */  sw      $t9, 0x0008($t6)           ## 00000034
/* 00190 809A58D0 86030056 */  lh      $v1, 0x0056($s0)           ## 00000056
/* 00194 809A58D4 04630011 */  bgezl   $v1, .L809A591C            
/* 00198 809A58D8 8E281C44 */  lw      $t0, 0x1C44($s1)           ## 00001C44
/* 0019C 809A58DC 8E02003C */  lw      $v0, 0x003C($s0)           ## 0000003C
/* 001A0 809A58E0 C6120008 */  lwc1    $f18, 0x0008($s0)          ## 00000008
/* 001A4 809A58E4 C6100000 */  lwc1    $f16, 0x0000($s0)          ## 00000000
/* 001A8 809A58E8 C44A002C */  lwc1    $f10, 0x002C($v0)          ## 0000002C
/* 001AC 809A58EC C4480024 */  lwc1    $f8, 0x0024($v0)           ## 00000024
/* 001B0 809A58F0 C6060004 */  lwc1    $f6, 0x0004($s0)           ## 00000004
/* 001B4 809A58F4 460A9280 */  add.s   $f10, $f18, $f10           
/* 001B8 809A58F8 C4520028 */  lwc1    $f18, 0x0028($v0)          ## 00000028
/* 001BC 809A58FC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 001C0 809A5900 46088300 */  add.s   $f12, $f16, $f8            
/* 001C4 809A5904 44065000 */  mfc1    $a2, $f10                  
/* 001C8 809A5908 0C034261 */  jal     Matrix_Translate              
/* 001CC 809A590C 46123380 */  add.s   $f14, $f6, $f18            
/* 001D0 809A5910 10000039 */  beq     $zero, $zero, .L809A59F8   
/* 001D4 809A5914 27A400A0 */  addiu   $a0, $sp, 0x00A0           ## $a0 = FFFFFFE8
/* 001D8 809A5918 8E281C44 */  lw      $t0, 0x1C44($s1)           ## 00001C44
.L809A591C:
/* 001DC 809A591C A7A3007A */  sh      $v1, 0x007A($sp)           
/* 001E0 809A5920 AFA8007C */  sw      $t0, 0x007C($sp)           
/* 001E4 809A5924 862907A0 */  lh      $t1, 0x07A0($s1)           ## 000007A0
/* 001E8 809A5928 00095080 */  sll     $t2, $t1,  2               
/* 001EC 809A592C 022A5821 */  addu    $t3, $s1, $t2              
/* 001F0 809A5930 0C016A7D */  jal     func_8005A9F4              
/* 001F4 809A5934 8D640790 */  lw      $a0, 0x0790($t3)           ## 00000790
/* 001F8 809A5938 00022400 */  sll     $a0, $v0, 16               
/* 001FC 809A593C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00200 809A5940 00042403 */  sra     $a0, $a0, 16               
/* 00204 809A5944 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00208 809A5948 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 0020C 809A594C 87AD007A */  lh      $t5, 0x007A($sp)           
/* 00210 809A5950 8FAC007C */  lw      $t4, 0x007C($sp)           
/* 00214 809A5954 46080282 */  mul.s   $f10, $f0, $f8             
/* 00218 809A5958 000D7080 */  sll     $t6, $t5,  2               
/* 0021C 809A595C 01CD7023 */  subu    $t6, $t6, $t5              
/* 00220 809A5960 000E7080 */  sll     $t6, $t6,  2               
/* 00224 809A5964 018E1821 */  addu    $v1, $t4, $t6              
/* 00228 809A5968 C4660908 */  lwc1    $f6, 0x0908($v1)           ## 00000908
/* 0022C 809A596C 460A3401 */  sub.s   $f16, $f6, $f10            
/* 00230 809A5970 E6100000 */  swc1    $f16, 0x0000($s0)          ## 00000000
/* 00234 809A5974 C472090C */  lwc1    $f18, 0x090C($v1)          ## 0000090C
/* 00238 809A5978 E6120004 */  swc1    $f18, 0x0004($s0)          ## 00000004
/* 0023C 809A597C 862F07A0 */  lh      $t7, 0x07A0($s1)           ## 000007A0
/* 00240 809A5980 000FC080 */  sll     $t8, $t7,  2               
/* 00244 809A5984 0238C821 */  addu    $t9, $s1, $t8              
/* 00248 809A5988 8F240790 */  lw      $a0, 0x0790($t9)           ## 00000790
/* 0024C 809A598C 0C016A7D */  jal     func_8005A9F4              
/* 00250 809A5990 AFA30054 */  sw      $v1, 0x0054($sp)           
/* 00254 809A5994 00022400 */  sll     $a0, $v0, 16               
/* 00258 809A5998 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0025C 809A599C 00042403 */  sra     $a0, $a0, 16               
/* 00260 809A59A0 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00264 809A59A4 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 00268 809A59A8 8FA30054 */  lw      $v1, 0x0054($sp)           
/* 0026C 809A59AC C60C0000 */  lwc1    $f12, 0x0000($s0)          ## 00000000
/* 00270 809A59B0 46080182 */  mul.s   $f6, $f0, $f8              
/* 00274 809A59B4 C4640910 */  lwc1    $f4, 0x0910($v1)           ## 00000910
/* 00278 809A59B8 C60E0004 */  lwc1    $f14, 0x0004($s0)          ## 00000004
/* 0027C 809A59BC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00280 809A59C0 46062281 */  sub.s   $f10, $f4, $f6             
/* 00284 809A59C4 E60A0008 */  swc1    $f10, 0x0008($s0)          ## 00000008
/* 00288 809A59C8 0C034261 */  jal     Matrix_Translate              
/* 0028C 809A59CC 8E060008 */  lw      $a2, 0x0008($s0)           ## 00000008
/* 00290 809A59D0 10000009 */  beq     $zero, $zero, .L809A59F8   
/* 00294 809A59D4 27A400A0 */  addiu   $a0, $sp, 0x00A0           ## $a0 = FFFFFFE8
.L809A59D8:
/* 00298 809A59D8 C60C0000 */  lwc1    $f12, 0x0000($s0)          ## 00000000
/* 0029C 809A59DC C60E0004 */  lwc1    $f14, 0x0004($s0)          ## 00000004
/* 002A0 809A59E0 8E060008 */  lw      $a2, 0x0008($s0)           ## 00000008
/* 002A4 809A59E4 0C034261 */  jal     Matrix_Translate              
/* 002A8 809A59E8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 002AC 809A59EC 2608002C */  addiu   $t0, $s0, 0x002C           ## $t0 = 0000002C
/* 002B0 809A59F0 AFA80050 */  sw      $t0, 0x0050($sp)           
/* 002B4 809A59F4 27A400A0 */  addiu   $a0, $sp, 0x00A0           ## $a0 = FFFFFFE8
.L809A59F8:
/* 002B8 809A59F8 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 002BC 809A59FC 8FA50050 */  lw      $a1, 0x0050($sp)           
/* 002C0 809A5A00 A7A2005E */  sh      $v0, 0x005E($sp)           
/* 002C4 809A5A04 862907A0 */  lh      $t1, 0x07A0($s1)           ## 000007A0
/* 002C8 809A5A08 00095080 */  sll     $t2, $t1,  2               
/* 002CC 809A5A0C 022A5821 */  addu    $t3, $s1, $t2              
/* 002D0 809A5A10 0C016A7D */  jal     func_8005A9F4              
/* 002D4 809A5A14 8D640790 */  lw      $a0, 0x0790($t3)           ## 00000790
/* 002D8 809A5A18 87AD005E */  lh      $t5, 0x005E($sp)           
/* 002DC 809A5A1C 01A21823 */  subu    $v1, $t5, $v0              
/* 002E0 809A5A20 00032400 */  sll     $a0, $v1, 16               
/* 002E4 809A5A24 A7A300AE */  sh      $v1, 0x00AE($sp)           
/* 002E8 809A5A28 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 002EC 809A5A2C 00042403 */  sra     $a0, $a0, 16               
/* 002F0 809A5A30 46000005 */  abs.s   $f0, $f0                   
/* 002F4 809A5A34 87A400AE */  lh      $a0, 0x00AE($sp)           
/* 002F8 809A5A38 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 002FC 809A5A3C E7A0009C */  swc1    $f0, 0x009C($sp)           
/* 00300 809A5A40 27A400A0 */  addiu   $a0, $sp, 0x00A0           ## $a0 = FFFFFFE8
/* 00304 809A5A44 8FA50050 */  lw      $a1, 0x0050($sp)           
/* 00308 809A5A48 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 0030C 809A5A4C E7A00098 */  swc1    $f0, 0x0098($sp)           
/* 00310 809A5A50 860C0054 */  lh      $t4, 0x0054($s0)           ## 00000054
/* 00314 809A5A54 3C01809A */  lui     $at, %hi(D_809A5E28)       ## $at = 809A0000
/* 00318 809A5A58 C4285E28 */  lwc1    $f8, %lo(D_809A5E28)($at)  
/* 0031C 809A5A5C 448C8000 */  mtc1    $t4, $f16                  ## $f16 = 0.00
/* 00320 809A5A60 00000000 */  nop
/* 00324 809A5A64 468084A0 */  cvt.s.w $f18, $f16                 
/* 00328 809A5A68 46089102 */  mul.s   $f4, $f18, $f8             
/* 0032C 809A5A6C 46040183 */  div.s   $f6, $f0, $f4              
/* 00330 809A5A70 E7A60094 */  swc1    $f6, 0x0094($sp)           
/* 00334 809A5A74 862E07A0 */  lh      $t6, 0x07A0($s1)           ## 000007A0
/* 00338 809A5A78 000E7880 */  sll     $t7, $t6,  2               
/* 0033C 809A5A7C 022FC021 */  addu    $t8, $s1, $t7              
/* 00340 809A5A80 0C016A7D */  jal     func_8005A9F4              
/* 00344 809A5A84 8F040790 */  lw      $a0, 0x0790($t8)           ## 00000790
/* 00348 809A5A88 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 0034C 809A5A8C 0041C821 */  addu    $t9, $v0, $at              
/* 00350 809A5A90 00194400 */  sll     $t0, $t9, 16               
/* 00354 809A5A94 00084C03 */  sra     $t1, $t0, 16               
/* 00358 809A5A98 44895000 */  mtc1    $t1, $f10                  ## $f10 = 0.00
/* 0035C 809A5A9C 3C01809A */  lui     $at, %hi(D_809A5E2C)       ## $at = 809A0000
/* 00360 809A5AA0 C4325E2C */  lwc1    $f18, %lo(D_809A5E2C)($at) 
/* 00364 809A5AA4 46805420 */  cvt.s.w $f16, $f10                 
/* 00368 809A5AA8 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0036C 809A5AAC 46128302 */  mul.s   $f12, $f16, $f18           
/* 00370 809A5AB0 0C034348 */  jal     Matrix_RotateY              
/* 00374 809A5AB4 00000000 */  nop
/* 00378 809A5AB8 860A0044 */  lh      $t2, 0x0044($s0)           ## 00000044
/* 0037C 809A5ABC C7A20098 */  lwc1    $f2, 0x0098($sp)           
/* 00380 809A5AC0 C7AA0094 */  lwc1    $f10, 0x0094($sp)          
/* 00384 809A5AC4 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 00388 809A5AC8 3C01809A */  lui     $at, %hi(D_809A5E30)       ## $at = 809A0000
/* 0038C 809A5ACC C4325E30 */  lwc1    $f18, %lo(D_809A5E30)($at) 
/* 00390 809A5AD0 46804120 */  cvt.s.w $f4, $f8                   
/* 00394 809A5AD4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00398 809A5AD8 46022182 */  mul.s   $f6, $f4, $f2              
/* 0039C 809A5ADC 00000000 */  nop
/* 003A0 809A5AE0 460A3402 */  mul.s   $f16, $f6, $f10            
/* 003A4 809A5AE4 00000000 */  nop
/* 003A8 809A5AE8 46128302 */  mul.s   $f12, $f16, $f18           
/* 003AC 809A5AEC 0C0343B5 */  jal     Matrix_RotateZ              
/* 003B0 809A5AF0 00000000 */  nop
/* 003B4 809A5AF4 860B005C */  lh      $t3, 0x005C($s0)           ## 0000005C
/* 003B8 809A5AF8 860C0042 */  lh      $t4, 0x0042($s0)           ## 00000042
/* 003BC 809A5AFC 860E0040 */  lh      $t6, 0x0040($s0)           ## 00000040
/* 003C0 809A5B00 256D0001 */  addiu   $t5, $t3, 0x0001           ## $t5 = 00000001
/* 003C4 809A5B04 448D4000 */  mtc1    $t5, $f8                   ## $f8 = 0.00
/* 003C8 809A5B08 448C3000 */  mtc1    $t4, $f6                   ## $f6 = 0.00
/* 003CC 809A5B0C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 003D0 809A5B10 46804120 */  cvt.s.w $f4, $f8                   
/* 003D4 809A5B14 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 003D8 809A5B18 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 003DC 809A5B1C 3C01809A */  lui     $at, %hi(D_809A5E34)       ## $at = 809A0000
/* 003E0 809A5B20 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 003E4 809A5B24 468032A0 */  cvt.s.w $f10, $f6                  
/* 003E8 809A5B28 468041A0 */  cvt.s.w $f6, $f8                   
/* 003EC 809A5B2C 460A2403 */  div.s   $f16, $f4, $f10            
/* 003F0 809A5B30 C4245E34 */  lwc1    $f4, %lo(D_809A5E34)($at)  
/* 003F4 809A5B34 46100081 */  sub.s   $f2, $f0, $f16             
/* 003F8 809A5B38 46021482 */  mul.s   $f18, $f2, $f2             
/* 003FC 809A5B3C 46120081 */  sub.s   $f2, $f0, $f18             
/* 00400 809A5B40 46043282 */  mul.s   $f10, $f6, $f4             
/* 00404 809A5B44 00000000 */  nop
/* 00408 809A5B48 46025382 */  mul.s   $f14, $f10, $f2            
/* 0040C 809A5B4C 44067000 */  mfc1    $a2, $f14                  
/* 00410 809A5B50 E7AE00A8 */  swc1    $f14, 0x00A8($sp)          
/* 00414 809A5B54 E7AE00A4 */  swc1    $f14, 0x00A4($sp)          
/* 00418 809A5B58 E7AE00A0 */  swc1    $f14, 0x00A0($sp)          
/* 0041C 809A5B5C 0C0342A3 */  jal     Matrix_Scale              
/* 00420 809A5B60 46007306 */  mov.s   $f12, $f14                 
/* 00424 809A5B64 860F0046 */  lh      $t7, 0x0046($s0)           ## 00000046
/* 00428 809A5B68 3C01809A */  lui     $at, %hi(D_809A5E38)       ## $at = 809A0000
/* 0042C 809A5B6C C4205E38 */  lwc1    $f0, %lo(D_809A5E38)($at)  
/* 00430 809A5B70 448F9000 */  mtc1    $t7, $f18                  ## $f18 = 0.00
/* 00434 809A5B74 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00438 809A5B78 44816000 */  mtc1    $at, $f12                  ## $f12 = 1.00
/* 0043C 809A5B7C 46809220 */  cvt.s.w $f8, $f18                  
/* 00440 809A5B80 3C01809A */  lui     $at, %hi(D_809A5E3C)       ## $at = 809A0000
/* 00444 809A5B84 C4265E3C */  lwc1    $f6, %lo(D_809A5E3C)($at)  
/* 00448 809A5B88 C7A2009C */  lwc1    $f2, 0x009C($sp)           
/* 0044C 809A5B8C C7B00094 */  lwc1    $f16, 0x0094($sp)          
/* 00450 809A5B90 46064102 */  mul.s   $f4, $f8, $f6              
/* 00454 809A5B94 00000000 */  nop
/* 00458 809A5B98 46022282 */  mul.s   $f10, $f4, $f2             
/* 0045C 809A5B9C 00000000 */  nop
/* 00460 809A5BA0 46105482 */  mul.s   $f18, $f10, $f16           
/* 00464 809A5BA4 460C9080 */  add.s   $f2, $f18, $f12            
/* 00468 809A5BA8 4600103C */  c.lt.s  $f2, $f0                   
/* 0046C 809A5BAC E7A2009C */  swc1    $f2, 0x009C($sp)           
/* 00470 809A5BB0 45000002 */  bc1f    .L809A5BBC                 
/* 00474 809A5BB4 00000000 */  nop
/* 00478 809A5BB8 E7A0009C */  swc1    $f0, 0x009C($sp)           
.L809A5BBC:
/* 0047C 809A5BBC C7AE009C */  lwc1    $f14, 0x009C($sp)          
/* 00480 809A5BC0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00484 809A5BC4 460E6203 */  div.s   $f8, $f12, $f14            
/* 00488 809A5BC8 44064000 */  mfc1    $a2, $f8                   
/* 0048C 809A5BCC 0C0342A3 */  jal     Matrix_Scale              
/* 00490 809A5BD0 00000000 */  nop
/* 00494 809A5BD4 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 00498 809A5BD8 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 0049C 809A5BDC 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 004A0 809A5BE0 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 004A4 809A5BE4 AE5802D0 */  sw      $t8, 0x02D0($s2)           ## 000002D0
/* 004A8 809A5BE8 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 004AC 809A5BEC 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 004B0 809A5BF0 3C05809A */  lui     $a1, %hi(D_809A5DF8)       ## $a1 = 809A0000
/* 004B4 809A5BF4 24A55DF8 */  addiu   $a1, $a1, %lo(D_809A5DF8)  ## $a1 = 809A5DF8
/* 004B8 809A5BF8 240600EE */  addiu   $a2, $zero, 0x00EE         ## $a2 = 000000EE
/* 004BC 809A5BFC 0C0346A2 */  jal     Matrix_NewMtx              
/* 004C0 809A5C00 AFA20074 */  sw      $v0, 0x0074($sp)           
/* 004C4 809A5C04 8FA30074 */  lw      $v1, 0x0074($sp)           
/* 004C8 809A5C08 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 004CC 809A5C0C 0C024F61 */  jal     func_80093D84              
/* 004D0 809A5C10 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 004D4 809A5C14 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 004D8 809A5C18 3C09FA00 */  lui     $t1, 0xFA00                ## $t1 = FA000000
/* 004DC 809A5C1C 35290080 */  ori     $t1, $t1, 0x0080           ## $t1 = FA000080
/* 004E0 809A5C20 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 004E4 809A5C24 AE4802D0 */  sw      $t0, 0x02D0($s2)           ## 000002D0
/* 004E8 809A5C28 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 004EC 809A5C2C 860A004C */  lh      $t2, 0x004C($s0)           ## 0000004C
/* 004F0 809A5C30 8619004A */  lh      $t9, 0x004A($s0)           ## 0000004A
/* 004F4 809A5C34 860E0048 */  lh      $t6, 0x0048($s0)           ## 00000048
/* 004F8 809A5C38 314B00FF */  andi    $t3, $t2, 0x00FF           ## $t3 = 00000000
/* 004FC 809A5C3C 000B6A00 */  sll     $t5, $t3,  8               
/* 00500 809A5C40 332800FF */  andi    $t0, $t9, 0x00FF           ## $t0 = 00000000
/* 00504 809A5C44 000E7E00 */  sll     $t7, $t6, 24               
/* 00508 809A5C48 01AFC025 */  or      $t8, $t5, $t7              ## $t8 = 00000000
/* 0050C 809A5C4C 00084C00 */  sll     $t1, $t0, 16               
/* 00510 809A5C50 03095025 */  or      $t2, $t8, $t1              ## $t2 = FA000080
/* 00514 809A5C54 354B00FF */  ori     $t3, $t2, 0x00FF           ## $t3 = FA0000FF
/* 00518 809A5C58 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 0051C 809A5C5C 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 00520 809A5C60 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 00524 809A5C64 3C08DB06 */  lui     $t0, 0xDB06                ## $t0 = DB060000
/* 00528 809A5C68 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 0052C 809A5C6C AE4C02D0 */  sw      $t4, 0x02D0($s2)           ## 000002D0
/* 00530 809A5C70 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 00534 809A5C74 860D0052 */  lh      $t5, 0x0052($s0)           ## 00000052
/* 00538 809A5C78 860B0050 */  lh      $t3, 0x0050($s0)           ## 00000050
/* 0053C 809A5C7C 8618004E */  lh      $t8, 0x004E($s0)           ## 0000004E
/* 00540 809A5C80 31AF00FF */  andi    $t7, $t5, 0x00FF           ## $t7 = 00000000
/* 00544 809A5C84 000FCA00 */  sll     $t9, $t7,  8               
/* 00548 809A5C88 316C00FF */  andi    $t4, $t3, 0x00FF           ## $t4 = 000000FF
/* 0054C 809A5C8C 00184E00 */  sll     $t1, $t8, 24               
/* 00550 809A5C90 03295025 */  or      $t2, $t9, $t1              ## $t2 = FA000080
/* 00554 809A5C94 000C7400 */  sll     $t6, $t4, 16               
/* 00558 809A5C98 014E6825 */  or      $t5, $t2, $t6              ## $t5 = FB000080
/* 0055C 809A5C9C AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 00560 809A5CA0 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 00564 809A5CA4 35080020 */  ori     $t0, $t0, 0x0020           ## $t0 = DB060020
/* 00568 809A5CA8 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 0056C 809A5CAC 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00570 809A5CB0 AE4F02D0 */  sw      $t7, 0x02D0($s2)           ## 000002D0
/* 00574 809A5CB4 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 00578 809A5CB8 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 0057C 809A5CBC 24190040 */  addiu   $t9, $zero, 0x0040         ## $t9 = 00000040
/* 00580 809A5CC0 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 00584 809A5CC4 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00588 809A5CC8 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 0058C 809A5CCC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00590 809A5CD0 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 00594 809A5CD4 8E2B009C */  lw      $t3, 0x009C($s1)           ## 0000009C
/* 00598 809A5CD8 240D0080 */  addiu   $t5, $zero, 0x0080         ## $t5 = 00000080
/* 0059C 809A5CDC 240E0020 */  addiu   $t6, $zero, 0x0020         ## $t6 = 00000020
/* 005A0 809A5CE0 000B0823 */  subu    $at, $zero, $t3            
/* 005A4 809A5CE4 00016080 */  sll     $t4, $at,  2               
/* 005A8 809A5CE8 01816021 */  addu    $t4, $t4, $at              
/* 005AC 809A5CEC 000C6080 */  sll     $t4, $t4,  2               
/* 005B0 809A5CF0 318A01FF */  andi    $t2, $t4, 0x01FF           ## $t2 = 000000FF
/* 005B4 809A5CF4 AFAA0020 */  sw      $t2, 0x0020($sp)           
/* 005B8 809A5CF8 AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 005BC 809A5CFC AFAD0028 */  sw      $t5, 0x0028($sp)           
/* 005C0 809A5D00 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 005C4 809A5D04 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 005C8 809A5D08 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 005CC 809A5D0C 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 005D0 809A5D10 AFA20068 */  sw      $v0, 0x0068($sp)           
/* 005D4 809A5D14 8FA30068 */  lw      $v1, 0x0068($sp)           
/* 005D8 809A5D18 3C06809A */  lui     $a2, %hi(D_809A5E10)       ## $a2 = 809A0000
/* 005DC 809A5D1C 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 005E0 809A5D20 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 005E4 809A5D24 860F0058 */  lh      $t7, 0x0058($s0)           ## 00000058
/* 005E8 809A5D28 24C65E10 */  addiu   $a2, $a2, %lo(D_809A5E10)  ## $a2 = 809A5E10
/* 005EC 809A5D2C 27A40080 */  addiu   $a0, $sp, 0x0080           ## $a0 = FFFFFFC8
/* 005F0 809A5D30 11E0000A */  beq     $t7, $zero, .L809A5D5C     
/* 005F4 809A5D34 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 005F8 809A5D38 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 005FC 809A5D3C 3C190405 */  lui     $t9, 0x0405                ## $t9 = 04050000
/* 00600 809A5D40 2739D5A0 */  addiu   $t9, $t9, 0xD5A0           ## $t9 = 0404D5A0
/* 00604 809A5D44 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 00608 809A5D48 AE4802D0 */  sw      $t0, 0x02D0($s2)           ## 000002D0
/* 0060C 809A5D4C 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 00610 809A5D50 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00614 809A5D54 10000008 */  beq     $zero, $zero, .L809A5D78   
/* 00618 809A5D58 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
.L809A5D5C:
/* 0061C 809A5D5C 8E4202D0 */  lw      $v0, 0x02D0($s2)           ## 000002D0
/* 00620 809A5D60 3C0C0405 */  lui     $t4, 0x0405                ## $t4 = 04050000
/* 00624 809A5D64 258CD4E0 */  addiu   $t4, $t4, 0xD4E0           ## $t4 = 0404D4E0
/* 00628 809A5D68 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 0062C 809A5D6C AE4902D0 */  sw      $t1, 0x02D0($s2)           ## 000002D0
/* 00630 809A5D70 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 00634 809A5D74 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
.L809A5D78:
/* 00638 809A5D78 0C031AD5 */  jal     func_800C6B54              
/* 0063C 809A5D7C 24070111 */  addiu   $a3, $zero, 0x0111         ## $a3 = 00000111
/* 00640 809A5D80 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 00644 809A5D84 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00648 809A5D88 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 0064C 809A5D8C 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 00650 809A5D90 03E00008 */  jr      $ra                        
/* 00654 809A5D94 27BD00B8 */  addiu   $sp, $sp, 0x00B8           ## $sp = 00000000


