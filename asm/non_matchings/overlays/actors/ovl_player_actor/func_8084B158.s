glabel func_8084B158
/* 18F48 8084B158 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 18F4C 8084B15C 44876000 */  mtc1    $a3, $f12                  ## $f12 = 0.00
/* 18F50 8084B160 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 18F54 8084B164 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 18F58 8084B168 10C00009 */  beq     $a2, $zero, .L8084B190     
/* 18F5C 8084B16C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 18F60 8084B170 94CE000C */  lhu     $t6, 0x000C($a2)           ## 0000000C
/* 18F64 8084B174 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 18F68 8084B178 31CFC000 */  andi    $t7, $t6, 0xC000           ## $t7 = 00000000
/* 18F6C 8084B17C 51E00005 */  beql    $t7, $zero, .L8084B194     
/* 18F70 8084B180 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 18F74 8084B184 44811000 */  mtc1    $at, $f2                   ## $f2 = 0.50
/* 18F78 8084B188 10000006 */  beq     $zero, $zero, .L8084B1A4   
/* 18F7C 8084B18C 46001006 */  mov.s   $f0, $f2                   
.L8084B190:
/* 18F80 8084B190 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
.L8084B194:
/* 18F84 8084B194 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.50
/* 18F88 8084B198 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 18F8C 8084B19C 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.00
/* 18F90 8084B1A0 00000000 */  nop
.L8084B1A4:
/* 18F94 8084B1A4 460C0002 */  mul.s   $f0, $f0, $f12             
/* 18F98 8084B1A8 24E501B4 */  addiu   $a1, $a3, 0x01B4           ## $a1 = 000001B4
/* 18F9C 8084B1AC 4602003C */  c.lt.s  $f0, $f2                   
/* 18FA0 8084B1B0 00000000 */  nop
/* 18FA4 8084B1B4 45000002 */  bc1f    .L8084B1C0                 
/* 18FA8 8084B1B8 00000000 */  nop
/* 18FAC 8084B1BC 46001006 */  mov.s   $f0, $f2                   
.L8084B1C0:
/* 18FB0 8084B1C0 0C028EF0 */  jal     func_800A3BC0              
/* 18FB4 8084B1C4 E4E001D0 */  swc1    $f0, 0x01D0($a3)           ## 000001D0
/* 18FB8 8084B1C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 18FBC 8084B1CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 18FC0 8084B1D0 03E00008 */  jr      $ra                        
/* 18FC4 8084B1D4 00000000 */  nop
