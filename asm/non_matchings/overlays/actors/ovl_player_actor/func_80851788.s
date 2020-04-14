.late_rodata
glabel D_8085554C
    .float 0.1

.text
glabel func_80851788
/* 1F578 80851788 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1F57C 8085178C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1F580 80851790 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 1F584 80851794 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1F588 80851798 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1F58C 8085179C 8CAE067C */  lw      $t6, 0x067C($a1)           ## 0000067C
/* 1F590 808517A0 3C01FDFF */  lui     $at, 0xFDFF                ## $at = FDFF0000
/* 1F594 808517A4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FDFFFFFF
/* 1F598 808517A8 01C17824 */  and     $t7, $t6, $at              
/* 1F59C 808517AC 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 1F5A0 808517B0 ACAF067C */  sw      $t7, 0x067C($a1)           ## 0000067C
/* 1F5A4 808517B4 24A40024 */  addiu   $a0, $a1, 0x0024           ## $a0 = 00000024
/* 1F5A8 808517B8 24A50450 */  addiu   $a1, $a1, 0x0450           ## $a1 = 00000450
/* 1F5AC 808517BC 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 1F5B0 808517C0 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 1F5B4 808517C4 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 1F5B8 808517C8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 1F5BC 808517CC 3C014020 */  lui     $at, 0x4020                ## $at = 40200000
/* 1F5C0 808517D0 C4C00838 */  lwc1    $f0, 0x0838($a2)           ## 00000838
/* 1F5C4 808517D4 A4C20032 */  sh      $v0, 0x0032($a2)           ## 00000032
/* 1F5C8 808517D8 A4C200B6 */  sh      $v0, 0x00B6($a2)           ## 000000B6
/* 1F5CC 808517DC 4604003E */  c.le.s  $f0, $f4                   
/* 1F5D0 808517E0 A4C2083C */  sh      $v0, 0x083C($a2)           ## 0000083C
/* 1F5D4 808517E4 45020006 */  bc1fl   .L80851800                 
/* 1F5D8 808517E8 44811000 */  mtc1    $at, $f2                   ## $f2 = 2.50
/* 1F5DC 808517EC 3C018085 */  lui     $at, %hi(D_8085554C)       ## $at = 80850000
/* 1F5E0 808517F0 C426554C */  lwc1    $f6, %lo(D_8085554C)($at)  
/* 1F5E4 808517F4 10000008 */  beq     $zero, $zero, .L80851818   
/* 1F5E8 808517F8 E4C60838 */  swc1    $f6, 0x0838($a2)           ## 00000838
/* 1F5EC 808517FC 44811000 */  mtc1    $at, $f2                   ## $f2 = -0.00
.L80851800:
/* 1F5F0 80851800 00000000 */  nop
/* 1F5F4 80851804 4600103C */  c.lt.s  $f2, $f0                   
/* 1F5F8 80851808 00000000 */  nop
/* 1F5FC 8085180C 45020003 */  bc1fl   .L8085181C                 
/* 1F600 80851810 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1F604 80851814 E4C20838 */  swc1    $f2, 0x0838($a2)           ## 00000838
.L80851818:
/* 1F608 80851818 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8085181C:
/* 1F60C 8085181C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1F610 80851820 03E00008 */  jr      $ra                        
/* 1F614 80851824 00000000 */  nop
