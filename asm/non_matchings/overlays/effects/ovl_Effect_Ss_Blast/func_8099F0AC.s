glabel func_8099F0AC
/* 002FC 8099F0AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00300 8099F0B0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00304 8099F0B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00308 8099F0B8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0030C 8099F0BC 00C03825 */  or      $a3, $a2, $zero            ## $a3 = 00000000
/* 00310 8099F0C0 24C40046 */  addiu   $a0, $a2, 0x0046           ## $a0 = 00000046
/* 00314 8099F0C4 84C60050 */  lh      $a2, 0x0050($a2)           ## 00000050
/* 00318 8099F0C8 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 0031C 8099F0CC 0C01DE5F */  jal     Math_ApproxS
              
/* 00320 8099F0D0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00324 8099F0D4 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00328 8099F0D8 84E20054 */  lh      $v0, 0x0054($a3)           ## 00000054
/* 0032C 8099F0DC 84EE0052 */  lh      $t6, 0x0052($a3)           ## 00000052
/* 00330 8099F0E0 01C27821 */  addu    $t7, $t6, $v0              
/* 00334 8099F0E4 10400004 */  beq     $v0, $zero, .L8099F0F8     
/* 00338 8099F0E8 A4EF0052 */  sh      $t7, 0x0052($a3)           ## 00000052
/* 0033C 8099F0EC 84F80056 */  lh      $t8, 0x0056($a3)           ## 00000056
/* 00340 8099F0F0 0058C823 */  subu    $t9, $v0, $t8              
/* 00344 8099F0F4 A4F90054 */  sh      $t9, 0x0054($a3)           ## 00000054
.L8099F0F8:
/* 00348 8099F0F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0034C 8099F0FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00350 8099F100 03E00008 */  jr      $ra                        
/* 00354 8099F104 00000000 */  nop
/* 00358 8099F108 00000000 */  nop
/* 0035C 8099F10C 00000000 */  nop
