glabel func_80B584B4
/* 05104 80B584B4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 05108 80B584B8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0510C 80B584BC AFB10020 */  sw      $s1, 0x0020($sp)           
/* 05110 80B584C0 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 05114 80B584C4 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 05118 80B584C8 3C0145FA */  lui     $at, 0x45FA                ## $at = 45FA0000
/* 0511C 80B584CC 44812000 */  mtc1    $at, $f4                   ## $f4 = 8000.00
/* 05120 80B584D0 804E0A78 */  lb      $t6, 0x0A78($v0)           ## 00000A78
/* 05124 80B584D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 05128 80B584D8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0512C 80B584DC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 05130 80B584E0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 05134 80B584E4 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 05138 80B584E8 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 0513C 80B584EC A3AE002F */  sb      $t6, 0x002F($sp)           
/* 05140 80B584F0 0C00D4FD */  jal     Actor_FindNearby
              
/* 05144 80B584F4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 05148 80B584F8 3C0F80B6 */  lui     $t7, %hi(D_80B5A4BC)       ## $t7 = 80B60000
/* 0514C 80B584FC 8DEFA4BC */  lw      $t7, %lo(D_80B5A4BC)($t7)  
/* 05150 80B58500 15E00020 */  bne     $t7, $zero, .L80B58584     
/* 05154 80B58504 00000000 */  nop
/* 05158 80B58508 5440000F */  bnel    $v0, $zero, .L80B58548     
/* 0515C 80B5850C 83B9002F */  lb      $t9, 0x002F($sp)           
/* 05160 80B58510 0C02FF21 */  jal     func_800BFC84              
/* 05164 80B58514 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 05168 80B58518 1440000A */  bne     $v0, $zero, .L80B58544     
/* 0516C 80B5851C 24180021 */  addiu   $t8, $zero, 0x0021         ## $t8 = 00000021
/* 05170 80B58520 AE18024C */  sw      $t8, 0x024C($s0)           ## 0000024C
/* 05174 80B58524 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 05178 80B58528 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0517C 80B5852C 24050FAB */  addiu   $a1, $zero, 0x0FAB         ## $a1 = 00000FAB
/* 05180 80B58530 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 05184 80B58534 0C02003E */  jal     func_800800F8              
/* 05188 80B58538 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 0518C 80B5853C 10000035 */  beq     $zero, $zero, .L80B58614   
/* 05190 80B58540 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B58544:
/* 05194 80B58544 83B9002F */  lb      $t9, 0x002F($sp)           
.L80B58548:
/* 05198 80B58548 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0519C 80B5854C 24A53FF8 */  addiu   $a1, $a1, 0x3FF8           ## $a1 = 06003FF8
/* 051A0 80B58550 1B20002F */  blez    $t9, .L80B58610            
/* 051A4 80B58554 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 051A8 80B58558 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 051AC 80B5855C 3C07C140 */  lui     $a3, 0xC140                ## $a3 = C1400000
/* 051B0 80B58560 0C2D5385 */  jal     func_80B54E14              
/* 051B4 80B58564 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 051B8 80B58568 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 051BC 80B5856C 3C0180B6 */  lui     $at, %hi(D_80B5A4BC)       ## $at = 80B60000
/* 051C0 80B58570 AC28A4BC */  sw      $t0, %lo(D_80B5A4BC)($at)  
/* 051C4 80B58574 0C2D5B72 */  jal     func_80B56DC8              
/* 051C8 80B58578 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 051CC 80B5857C 10000025 */  beq     $zero, $zero, .L80B58614   
/* 051D0 80B58580 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B58584:
/* 051D4 80B58584 54400018 */  bnel    $v0, $zero, .L80B585E8     
/* 051D8 80B58588 83AA002F */  lb      $t2, 0x002F($sp)           
/* 051DC 80B5858C 0C02FF21 */  jal     func_800BFC84              
/* 051E0 80B58590 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 051E4 80B58594 14400013 */  bne     $v0, $zero, .L80B585E4     
/* 051E8 80B58598 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 051EC 80B5859C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 051F0 80B585A0 24A57664 */  addiu   $a1, $a1, 0x7664           ## $a1 = 06007664
/* 051F4 80B585A4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 051F8 80B585A8 3C07C140 */  lui     $a3, 0xC140                ## $a3 = C1400000
/* 051FC 80B585AC 0C2D5385 */  jal     func_80B54E14              
/* 05200 80B585B0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 05204 80B585B4 3C0180B6 */  lui     $at, %hi(D_80B5A4BC)       ## $at = 80B60000
/* 05208 80B585B8 AC20A4BC */  sw      $zero, %lo(D_80B5A4BC)($at) 
/* 0520C 80B585BC 24090021 */  addiu   $t1, $zero, 0x0021         ## $t1 = 00000021
/* 05210 80B585C0 AE09024C */  sw      $t1, 0x024C($s0)           ## 0000024C
/* 05214 80B585C4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 05218 80B585C8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0521C 80B585CC 24050FAB */  addiu   $a1, $zero, 0x0FAB         ## $a1 = 00000FAB
/* 05220 80B585D0 2406FF9D */  addiu   $a2, $zero, 0xFF9D         ## $a2 = FFFFFF9D
/* 05224 80B585D4 0C02003E */  jal     func_800800F8              
/* 05228 80B585D8 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 0522C 80B585DC 1000000D */  beq     $zero, $zero, .L80B58614   
/* 05230 80B585E0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B585E4:
/* 05234 80B585E4 83AA002F */  lb      $t2, 0x002F($sp)           
.L80B585E8:
/* 05238 80B585E8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0523C 80B585EC 24A57664 */  addiu   $a1, $a1, 0x7664           ## $a1 = 06007664
/* 05240 80B585F0 1D400007 */  bgtz    $t2, .L80B58610            
/* 05244 80B585F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 05248 80B585F8 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0524C 80B585FC 3C07C140 */  lui     $a3, 0xC140                ## $a3 = C1400000
/* 05250 80B58600 0C2D5385 */  jal     func_80B54E14              
/* 05254 80B58604 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 05258 80B58608 3C0180B6 */  lui     $at, %hi(D_80B5A4BC)       ## $at = 80B60000
/* 0525C 80B5860C AC20A4BC */  sw      $zero, %lo(D_80B5A4BC)($at) 
.L80B58610:
/* 05260 80B58610 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B58614:
/* 05264 80B58614 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 05268 80B58618 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 0526C 80B5861C 03E00008 */  jr      $ra                        
/* 05270 80B58620 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
