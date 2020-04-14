.rdata
glabel D_80A94FE0
    .asciz "KANBAN ARG    %x\n"
    .balign 4

.text
glabel EnKanban_Init
/* 000B8 80A92058 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 000BC 80A9205C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 000C0 80A92060 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 000C4 80A92064 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 000C8 80A92068 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 000CC 80A9206C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 000D0 80A92070 0C00B58B */  jal     Actor_SetScale
              
/* 000D4 80A92074 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 000D8 80A92078 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 000DC 80A9207C 2401FFDD */  addiu   $at, $zero, 0xFFDD         ## $at = FFFFFFDD
/* 000E0 80A92080 51C1003E */  beql    $t6, $at, .L80A9217C       
/* 000E4 80A92084 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 000E8 80A92088 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 000EC 80A9208C A200001F */  sb      $zero, 0x001F($s0)         ## 0000001F
/* 000F0 80A92090 260501A0 */  addiu   $a1, $s0, 0x01A0           ## $a1 = 000001A0
/* 000F4 80A92094 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 000F8 80A92098 AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
/* 000FC 80A9209C AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00100 80A920A0 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00104 80A920A4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00108 80A920A8 3C0780A9 */  lui     $a3, %hi(D_80A94490)       ## $a3 = 80A90000
/* 0010C 80A920AC 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00110 80A920B0 24E74490 */  addiu   $a3, $a3, %lo(D_80A94490)  ## $a3 = 80A94490
/* 00114 80A920B4 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00118 80A920B8 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 0011C 80A920BC 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00120 80A920C0 3C0480A9 */  lui     $a0, %hi(D_80A94FE0)       ## $a0 = 80A90000
/* 00124 80A920C4 24844FE0 */  addiu   $a0, $a0, %lo(D_80A94FE0)  ## $a0 = 80A94FE0
/* 00128 80A920C8 0C00084C */  jal     osSyncPrintf
              
/* 0012C 80A920CC 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00130 80A920D0 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00134 80A920D4 24010300 */  addiu   $at, $zero, 0x0300         ## $at = 00000300
/* 00138 80A920D8 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 0013C 80A920DC 1441000B */  bne     $v0, $at, .L80A9210C       
/* 00140 80A920E0 340CFFFF */  ori     $t4, $zero, 0xFFFF         ## $t4 = 0000FFFF
/* 00144 80A920E4 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 00148 80A920E8 8F39E664 */  lw      $t9, -0x199C($t9)          ## 8015E664
/* 0014C 80A920EC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00150 80A920F0 2408409D */  addiu   $t0, $zero, 0x409D         ## $t0 = 0000409D
/* 00154 80A920F4 17210003 */  bne     $t9, $at, .L80A92104       
/* 00158 80A920F8 24094090 */  addiu   $t1, $zero, 0x4090         ## $t1 = 00004090
/* 0015C 80A920FC 10000005 */  beq     $zero, $zero, .L80A92114   
/* 00160 80A92100 A608010E */  sh      $t0, 0x010E($s0)           ## 0000010E
.L80A92104:
/* 00164 80A92104 10000003 */  beq     $zero, $zero, .L80A92114   
/* 00168 80A92108 A609010E */  sh      $t1, 0x010E($s0)           ## 0000010E
.L80A9210C:
/* 0016C 80A9210C 344A0300 */  ori     $t2, $v0, 0x0300           ## $t2 = 00000300
/* 00170 80A92110 A60A010E */  sh      $t2, 0x010E($s0)           ## 0000010E
.L80A92114:
/* 00174 80A92114 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00178 80A92118 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 0017C 80A9211C 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00180 80A92120 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 00184 80A92124 A60B0176 */  sh      $t3, 0x0176($s0)           ## 00000176
/* 00188 80A92128 A60C0156 */  sh      $t4, 0x0156($s0)           ## 00000156
/* 0018C 80A9212C 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 00190 80A92130 44060000 */  mfc1    $a2, $f0                   
/* 00194 80A92134 44070000 */  mfc1    $a3, $f0                   
/* 00198 80A92138 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 0019C 80A9213C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 001A0 80A92140 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 001A4 80A92144 0C00B92D */  jal     func_8002E4B4              
/* 001A8 80A92148 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 001AC 80A9214C 0C2A47E8 */  jal     func_80A91FA0              
/* 001B0 80A92150 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001B4 80A92154 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 001B8 80A92158 8DCEE664 */  lw      $t6, -0x199C($t6)          ## 8015E664
/* 001BC 80A9215C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 001C0 80A92160 15C10005 */  bne     $t6, $at, .L80A92178       
/* 001C4 80A92164 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 001C8 80A92168 44814000 */  mtc1    $at, $f8                   ## $f8 = 15.00
/* 001CC 80A9216C C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 001D0 80A92170 46083281 */  sub.s   $f10, $f6, $f8             
/* 001D4 80A92174 E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
.L80A92178:
/* 001D8 80A92178 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A9217C:
/* 001DC 80A9217C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 001E0 80A92180 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 001E4 80A92184 03E00008 */  jr      $ra                        
/* 001E8 80A92188 00000000 */  nop
