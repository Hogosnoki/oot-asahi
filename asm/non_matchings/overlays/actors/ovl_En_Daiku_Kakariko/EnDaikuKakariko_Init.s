glabel EnDaikuKakariko_Init
/* 000B0 809E43D0 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 000B4 809E43D4 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 000B8 809E43D8 8C6E0004 */  lw      $t6, 0x0004($v1)           ## 8015E664
/* 000BC 809E43DC 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 000C0 809E43E0 AFB00028 */  sw      $s0, 0x0028($sp)
/* 000C4 809E43E4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 000C8 809E43E8 AFBF002C */  sw      $ra, 0x002C($sp)
/* 000CC 809E43EC 11C00003 */  beq     $t6, $zero, .L809E43FC
/* 000D0 809E43F0 AFA5004C */  sw      $a1, 0x004C($sp)
/* 000D4 809E43F4 10000002 */  beq     $zero, $zero, .L809E4400
/* 000D8 809E43F8 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
.L809E43FC:
/* 000DC 809E43FC 24020011 */  addiu   $v0, $zero, 0x0011         ## $v0 = 00000011
.L809E4400:
/* 000E0 809E4400 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 000E4 809E4404 54410025 */  bnel    $v0, $at, .L809E449C
/* 000E8 809E4408 960B0200 */  lhu     $t3, 0x0200($s0)           ## 00000200
/* 000EC 809E440C 8FAF004C */  lw      $t7, 0x004C($sp)
/* 000F0 809E4410 2401002A */  addiu   $at, $zero, 0x002A         ## $at = 0000002A
/* 000F4 809E4414 85E200A4 */  lh      $v0, 0x00A4($t7)           ## 000000A4
/* 000F8 809E4418 10410014 */  beq     $v0, $at, .L809E446C
/* 000FC 809E441C 24010030 */  addiu   $at, $zero, 0x0030         ## $at = 00000030
/* 00100 809E4420 1041001A */  beq     $v0, $at, .L809E448C
/* 00104 809E4424 24010052 */  addiu   $at, $zero, 0x0052         ## $at = 00000052
/* 00108 809E4428 5441001C */  bnel    $v0, $at, .L809E449C
/* 0010C 809E442C 960B0200 */  lhu     $t3, 0x0200($s0)           ## 00000200
/* 00110 809E4430 8C780010 */  lw      $t8, 0x0010($v1)           ## 8015E670
/* 00114 809E4434 57000019 */  bnel    $t8, $zero, .L809E449C
/* 00118 809E4438 960B0200 */  lhu     $t3, 0x0200($s0)           ## 00000200
/* 0011C 809E443C 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 00120 809E4440 96190200 */  lhu     $t9, 0x0200($s0)           ## 00000200
/* 00124 809E4444 3C0D809E */  lui     $t5, %hi(D_809E5568)       ## $t5 = 809E0000
/* 00128 809E4448 314B0003 */  andi    $t3, $t2, 0x0003           ## $t3 = 00000000
/* 0012C 809E444C 000B6040 */  sll     $t4, $t3,  1
/* 00130 809E4450 37290001 */  ori     $t1, $t9, 0x0001           ## $t1 = 00000001
/* 00134 809E4454 A6090200 */  sh      $t1, 0x0200($s0)           ## 00000200
/* 00138 809E4458 01AC6821 */  addu    $t5, $t5, $t4
/* 0013C 809E445C 95AD5568 */  lhu     $t5, %lo(D_809E5568)($t5)
/* 00140 809E4460 012D7025 */  or      $t6, $t1, $t5              ## $t6 = 809E0001
/* 00144 809E4464 1000000C */  beq     $zero, $zero, .L809E4498
/* 00148 809E4468 A60E0200 */  sh      $t6, 0x0200($s0)           ## 00000200
.L809E446C:
/* 0014C 809E446C 8C6F0010 */  lw      $t7, 0x0010($v1)           ## 8015E670
/* 00150 809E4470 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00154 809E4474 55E10009 */  bnel    $t7, $at, .L809E449C
/* 00158 809E4478 960B0200 */  lhu     $t3, 0x0200($s0)           ## 00000200
/* 0015C 809E447C 96180200 */  lhu     $t8, 0x0200($s0)           ## 00000200
/* 00160 809E4480 37190002 */  ori     $t9, $t8, 0x0002           ## $t9 = 00000002
/* 00164 809E4484 10000004 */  beq     $zero, $zero, .L809E4498
/* 00168 809E4488 A6190200 */  sh      $t9, 0x0200($s0)           ## 00000200
.L809E448C:
/* 0016C 809E448C 96080200 */  lhu     $t0, 0x0200($s0)           ## 00000200
/* 00170 809E4490 350A0004 */  ori     $t2, $t0, 0x0004           ## $t2 = 00000004
/* 00174 809E4494 A60A0200 */  sh      $t2, 0x0200($s0)           ## 00000200
.L809E4498:
/* 00178 809E4498 960B0200 */  lhu     $t3, 0x0200($s0)           ## 00000200
.L809E449C:
/* 0017C 809E449C 316C0007 */  andi    $t4, $t3, 0x0007           ## $t4 = 00000000
/* 00180 809E44A0 55800006 */  bnel    $t4, $zero, .L809E44BC
/* 00184 809E44A4 8C690010 */  lw      $t1, 0x0010($v1)           ## 8015E670
/* 00188 809E44A8 0C00B55C */  jal     Actor_Kill

/* 0018C 809E44AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00190 809E44B0 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00194 809E44B4 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00198 809E44B8 8C690010 */  lw      $t1, 0x0010($v1)           ## 8015E670
.L809E44BC:
/* 0019C 809E44BC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 001A0 809E44C0 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 001A4 809E44C4 15210004 */  bne     $t1, $at, .L809E44D8
/* 001A8 809E44C8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 001AC 809E44CC 960D0200 */  lhu     $t5, 0x0200($s0)           ## 00000200
/* 001B0 809E44D0 35AE0008 */  ori     $t6, $t5, 0x0008           ## $t6 = 00000008
/* 001B4 809E44D4 A60E0200 */  sh      $t6, 0x0200($s0)           ## 00000200
.L809E44D8:
/* 001B8 809E44D8 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 001BC 809E44DC 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 001C0 809E44E0 0C00AC78 */  jal     ActorShape_Init

/* 001C4 809E44E4 3C074220 */  lui     $a3, 0x4220                ## $a3 = 42200000
/* 001C8 809E44E8 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 001CC 809E44EC 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 001D0 809E44F0 260F022C */  addiu   $t7, $s0, 0x022C           ## $t7 = 0000022C
/* 001D4 809E44F4 26180292 */  addiu   $t8, $s0, 0x0292           ## $t8 = 00000292
/* 001D8 809E44F8 24190011 */  addiu   $t9, $zero, 0x0011         ## $t9 = 00000011
/* 001DC 809E44FC AFB90018 */  sw      $t9, 0x0018($sp)
/* 001E0 809E4500 AFB80014 */  sw      $t8, 0x0014($sp)
/* 001E4 809E4504 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 001E8 809E4508 24C67958 */  addiu   $a2, $a2, 0x7958           ## $a2 = 06007958
/* 001EC 809E450C AFA50034 */  sw      $a1, 0x0034($sp)
/* 001F0 809E4510 8FA4004C */  lw      $a0, 0x004C($sp)
/* 001F4 809E4514 0C0291BE */  jal     SkelAnime_InitSV
/* 001F8 809E4518 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 001FC 809E451C 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 00200 809E4520 AFA50030 */  sw      $a1, 0x0030($sp)
/* 00204 809E4524 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 00208 809E4528 8FA4004C */  lw      $a0, 0x004C($sp)
/* 0020C 809E452C 3C07809E */  lui     $a3, %hi(D_809E54B0)       ## $a3 = 809E0000
/* 00210 809E4530 8FA50030 */  lw      $a1, 0x0030($sp)
/* 00214 809E4534 24E754B0 */  addiu   $a3, $a3, %lo(D_809E54B0)  ## $a3 = 809E54B0
/* 00218 809E4538 8FA4004C */  lw      $a0, 0x004C($sp)
/* 0021C 809E453C 0C01712B */  jal     ActorCollider_InitCylinder

/* 00220 809E4540 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00224 809E4544 3C05809E */  lui     $a1, %hi(D_809E54E8)       ## $a1 = 809E0000
/* 00228 809E4548 3C06809E */  lui     $a2, %hi(D_809E54DC)       ## $a2 = 809E0000
/* 0022C 809E454C 24C654DC */  addiu   $a2, $a2, %lo(D_809E54DC)  ## $a2 = 809E54DC
/* 00230 809E4550 24A554E8 */  addiu   $a1, $a1, %lo(D_809E54E8)  ## $a1 = 809E54E8
/* 00234 809E4554 0C0187BF */  jal     func_80061EFC
/* 00238 809E4558 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 0023C 809E455C 3C03809E */  lui     $v1, %hi(D_809E5508)       ## $v1 = 809E0000
/* 00240 809E4560 24635508 */  addiu   $v1, $v1, %lo(D_809E5508)  ## $v1 = 809E5508
/* 00244 809E4564 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00248 809E4568 8C640000 */  lw      $a0, 0x0000($v1)           ## 809E5508
/* 0024C 809E456C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00250 809E4570 3C03809E */  lui     $v1, %hi(D_809E5508)       ## $v1 = 809E0000
/* 00254 809E4574 24635508 */  addiu   $v1, $v1, %lo(D_809E5508)  ## $v1 = 809E5508
/* 00258 809E4578 468021A0 */  cvt.s.w $f6, $f4
/* 0025C 809E457C 90680008 */  lbu     $t0, 0x0008($v1)           ## 809E5510
/* 00260 809E4580 C468000C */  lwc1    $f8, 0x000C($v1)           ## 809E5514
/* 00264 809E4584 8C650000 */  lw      $a1, 0x0000($v1)           ## 809E5508
/* 00268 809E4588 8FA40034 */  lw      $a0, 0x0034($sp)
/* 0026C 809E458C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00270 809E4590 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 00274 809E4594 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00278 809E4598 AFA80014 */  sw      $t0, 0x0014($sp)
/* 0027C 809E459C 0C029468 */  jal     SkelAnime_ChangeAnimation

/* 00280 809E45A0 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 00284 809E45A4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00288 809E45A8 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 0028C 809E45AC AFAA0014 */  sw      $t2, 0x0014($sp)
/* 00290 809E45B0 44060000 */  mfc1    $a2, $f0
/* 00294 809E45B4 44070000 */  mfc1    $a3, $f0
/* 00298 809E45B8 8FA4004C */  lw      $a0, 0x004C($sp)
/* 0029C 809E45BC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 002A0 809E45C0 0C00B92D */  jal     func_8002E4B4
/* 002A4 809E45C4 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 002A8 809E45C8 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 002AC 809E45CC 44818000 */  mtc1    $at, $f16                  ## $f16 = 3.00
/* 002B0 809E45D0 96020200 */  lhu     $v0, 0x0200($s0)           ## 00000200
/* 002B4 809E45D4 3C014496 */  lui     $at, 0x4496                ## $at = 44960000
/* 002B8 809E45D8 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 002BC 809E45DC 44819000 */  mtc1    $at, $f18                  ## $f18 = 1200.00
/* 002C0 809E45E0 240B0006 */  addiu   $t3, $zero, 0x0006         ## $t3 = 00000006
/* 002C4 809E45E4 240CFFFF */  addiu   $t4, $zero, 0xFFFF         ## $t4 = FFFFFFFF
/* 002C8 809E45E8 30490040 */  andi    $t1, $v0, 0x0040           ## $t1 = 00000000
/* 002CC 809E45EC A20B001F */  sb      $t3, 0x001F($s0)           ## 0000001F
/* 002D0 809E45F0 AE0C01EC */  sw      $t4, 0x01EC($s0)           ## 000001EC
/* 002D4 809E45F4 E61001E8 */  swc1    $f16, 0x01E8($s0)          ## 000001E8
/* 002D8 809E45F8 E60A006C */  swc1    $f10, 0x006C($s0)          ## 0000006C
/* 002DC 809E45FC 11200005 */  beq     $t1, $zero, .L809E4614
/* 002E0 809E4600 E61200F4 */  swc1    $f18, 0x00F4($s0)          ## 000000F4
/* 002E4 809E4604 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 002E8 809E4608 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 002EC 809E460C 96020200 */  lhu     $v0, 0x0200($s0)           ## 00000200
/* 002F0 809E4610 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
.L809E4614:
/* 002F4 809E4614 304D0010 */  andi    $t5, $v0, 0x0010           ## $t5 = 00000000
/* 002F8 809E4618 11A00009 */  beq     $t5, $zero, .L809E4640
/* 002FC 809E461C 304F0008 */  andi    $t7, $v0, 0x0008           ## $t7 = 00000000
/* 00300 809E4620 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00304 809E4624 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00308 809E4628 0C2790C8 */  jal     func_809E4320
/* 0030C 809E462C 260601EC */  addiu   $a2, $s0, 0x01EC           ## $a2 = 000001EC
/* 00310 809E4630 3C0E809E */  lui     $t6, %hi(func_809E4BC4)    ## $t6 = 809E0000
/* 00314 809E4634 25CE4BC4 */  addiu   $t6, $t6, %lo(func_809E4BC4) ## $t6 = 809E4BC4
/* 00318 809E4638 10000035 */  beq     $zero, $zero, .L809E4710
/* 0031C 809E463C AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
.L809E4640:
/* 00320 809E4640 11E0001F */  beq     $t7, $zero, .L809E46C0
/* 00324 809E4644 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00328 809E4648 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 0032C 809E464C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00330 809E4650 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00334 809E4654 30420003 */  andi    $v0, $v0, 0x0003           ## $v0 = 00000000
/* 00338 809E4658 10410004 */  beq     $v0, $at, .L809E466C
/* 0033C 809E465C 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 00340 809E4660 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00344 809E4664 14410007 */  bne     $v0, $at, .L809E4684
/* 00348 809E4668 260601EC */  addiu   $a2, $s0, 0x01EC           ## $a2 = 000001EC
.L809E466C:
/* 0034C 809E466C 0C2790C8 */  jal     func_809E4320
/* 00350 809E4670 260601EC */  addiu   $a2, $s0, 0x01EC           ## $a2 = 000001EC
/* 00354 809E4674 96180200 */  lhu     $t8, 0x0200($s0)           ## 00000200
/* 00358 809E4678 37190800 */  ori     $t9, $t8, 0x0800           ## $t9 = 00000800
/* 0035C 809E467C 10000004 */  beq     $zero, $zero, .L809E4690
/* 00360 809E4680 A6190200 */  sh      $t9, 0x0200($s0)           ## 00000200
.L809E4684:
/* 00364 809E4684 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00368 809E4688 0C2790C8 */  jal     func_809E4320
/* 0036C 809E468C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
.L809E4690:
/* 00370 809E4690 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00374 809E4694 00000000 */  nop
/* 00378 809E4698 C606015C */  lwc1    $f6, 0x015C($s0)           ## 0000015C
/* 0037C 809E469C 46060202 */  mul.s   $f8, $f0, $f6
/* 00380 809E46A0 4600428D */  trunc.w.s $f10, $f8
/* 00384 809E46A4 440A5000 */  mfc1    $t2, $f10
/* 00388 809E46A8 00000000 */  nop
/* 0038C 809E46AC 448A8000 */  mtc1    $t2, $f16                  ## $f16 = 0.00
/* 00390 809E46B0 00000000 */  nop
/* 00394 809E46B4 468084A0 */  cvt.s.w $f18, $f16
/* 00398 809E46B8 1000000F */  beq     $zero, $zero, .L809E46F8
/* 0039C 809E46BC E6120164 */  swc1    $f18, 0x0164($s0)          ## 00000164
.L809E46C0:
/* 003A0 809E46C0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 003A4 809E46C4 0C2790C8 */  jal     func_809E4320
/* 003A8 809E46C8 260601EC */  addiu   $a2, $s0, 0x01EC           ## $a2 = 000001EC
/* 003AC 809E46CC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 003B0 809E46D0 00000000 */  nop
/* 003B4 809E46D4 C604015C */  lwc1    $f4, 0x015C($s0)           ## 0000015C
/* 003B8 809E46D8 46040182 */  mul.s   $f6, $f0, $f4
/* 003BC 809E46DC 4600320D */  trunc.w.s $f8, $f6
/* 003C0 809E46E0 440C4000 */  mfc1    $t4, $f8
/* 003C4 809E46E4 00000000 */  nop
/* 003C8 809E46E8 448C5000 */  mtc1    $t4, $f10                  ## $f10 = 0.00
/* 003CC 809E46EC 00000000 */  nop
/* 003D0 809E46F0 46805420 */  cvt.s.w $f16, $f10
/* 003D4 809E46F4 E6100164 */  swc1    $f16, 0x0164($s0)          ## 00000164
.L809E46F8:
/* 003D8 809E46F8 96090200 */  lhu     $t1, 0x0200($s0)           ## 00000200
/* 003DC 809E46FC 3C0E809E */  lui     $t6, %hi(func_809E4A7C)    ## $t6 = 809E0000
/* 003E0 809E4700 25CE4A7C */  addiu   $t6, $t6, %lo(func_809E4A7C) ## $t6 = 809E4A7C
/* 003E4 809E4704 352D0100 */  ori     $t5, $t1, 0x0100           ## $t5 = 00000100
/* 003E8 809E4708 A60D0200 */  sh      $t5, 0x0200($s0)           ## 00000200
/* 003EC 809E470C AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
.L809E4710:
/* 003F0 809E4710 8FBF002C */  lw      $ra, 0x002C($sp)
/* 003F4 809E4714 8FB00028 */  lw      $s0, 0x0028($sp)
/* 003F8 809E4718 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 003FC 809E471C 03E00008 */  jr      $ra
/* 00400 809E4720 00000000 */  nop


