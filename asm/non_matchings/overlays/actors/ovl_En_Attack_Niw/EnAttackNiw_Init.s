glabel EnAttackNiw_Init
/* 00000 809B5100 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 809B5104 AFA50034 */  sw      $a1, 0x0034($sp)
/* 00008 809B5108 AFBF002C */  sw      $ra, 0x002C($sp)
/* 0000C 809B510C AFB00028 */  sw      $s0, 0x0028($sp)
/* 00010 809B5110 3C05809B */  lui     $a1, %hi(D_809B6170)       ## $a1 = 809B0000
/* 00014 809B5114 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 809B5118 0C01E037 */  jal     Actor_ProcessInitChain

/* 0001C 809B511C 24A56170 */  addiu   $a1, $a1, %lo(D_809B6170)  ## $a1 = 809B6170
/* 00020 809B5120 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00024 809B5124 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00028 809B5128 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0002C 809B512C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00030 809B5130 0C00AC78 */  jal     ActorShape_Init

/* 00034 809B5134 3C0741C8 */  lui     $a3, 0x41C8                ## $a3 = 41C80000
/* 00038 809B5138 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 0003C 809B513C 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00040 809B5140 260E0190 */  addiu   $t6, $s0, 0x0190           ## $t6 = 00000190
/* 00044 809B5144 260F01F0 */  addiu   $t7, $s0, 0x01F0           ## $t7 = 000001F0
/* 00048 809B5148 24180010 */  addiu   $t8, $zero, 0x0010         ## $t8 = 00000010
/* 0004C 809B514C AFB80018 */  sw      $t8, 0x0018($sp)
/* 00050 809B5150 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 00054 809B5154 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 00058 809B5158 24E700E8 */  addiu   $a3, $a3, 0x00E8           ## $a3 = 060000E8
/* 0005C 809B515C 24C62530 */  addiu   $a2, $a2, 0x2530           ## $a2 = 06002530
/* 00060 809B5160 8FA40034 */  lw      $a0, 0x0034($sp)
/* 00064 809B5164 0C0291BE */  jal     SkelAnime_InitSV
/* 00068 809B5168 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 0006C 809B516C 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 00070 809B5170 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00074 809B5174 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00078 809B5178 07210002 */  bgez    $t9, .L809B5184
/* 0007C 809B517C 00000000 */  nop
/* 00080 809B5180 A600001C */  sh      $zero, 0x001C($s0)         ## 0000001C
.L809B5184:
/* 00084 809B5184 0C00B58B */  jal     Actor_SetScale

/* 00088 809B5188 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 0008C 809B518C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00090 809B5190 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00094 809B5194 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 00098 809B5198 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 0009C 809B519C E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 000A0 809B51A0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 000A4 809B51A4 44816000 */  mtc1    $at, $f12                  ## $f12 = 10.00
/* 000A8 809B51A8 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 000AC 809B51AC E6000298 */  swc1    $f0, 0x0298($s0)           ## 00000298
/* 000B0 809B51B0 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 000B4 809B51B4 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 000B8 809B51B8 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 000BC 809B51BC E600029C */  swc1    $f0, 0x029C($s0)           ## 0000029C
/* 000C0 809B51C0 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 000C4 809B51C4 E60002A0 */  swc1    $f0, 0x02A0($s0)           ## 000002A0
/* 000C8 809B51C8 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 000CC 809B51CC 0C00B58B */  jal     Actor_SetScale

/* 000D0 809B51D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000D4 809B51D4 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 000D8 809B51D8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 000DC 809B51DC 01014824 */  and     $t1, $t0, $at
/* 000E0 809B51E0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 000E4 809B51E4 AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 000E8 809B51E8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 000EC 809B51EC 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 000F0 809B51F0 3C01809B */  lui     $at, %hi(D_809B6190)       ## $at = 809B0000
/* 000F4 809B51F4 C42A6190 */  lwc1    $f10, %lo(D_809B6190)($at)
/* 000F8 809B51F8 46060201 */  sub.s   $f8, $f0, $f6
/* 000FC 809B51FC 3C0B809B */  lui     $t3, %hi(func_809B5670)    ## $t3 = 809B0000
/* 00100 809B5200 256B5670 */  addiu   $t3, $t3, %lo(func_809B5670) ## $t3 = 809B5670
/* 00104 809B5204 AE0B0250 */  sw      $t3, 0x0250($s0)           ## 00000250
/* 00108 809B5208 460A4402 */  mul.s   $f16, $f8, $f10
/* 0010C 809B520C 4600848D */  trunc.w.s $f18, $f16
/* 00110 809B5210 44029000 */  mfc1    $v0, $f18
/* 00114 809B5214 00000000 */  nop
/* 00118 809B5218 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 0011C 809B521C A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 00120 809B5220 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00124 809B5224 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00128 809B5228 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0012C 809B522C 03E00008 */  jr      $ra
/* 00130 809B5230 00000000 */  nop


