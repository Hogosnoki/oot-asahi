glabel func_809746F8
/* 037A8 809746F8 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 037AC 809746FC AFBF003C */  sw      $ra, 0x003C($sp)           
/* 037B0 80974700 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 037B4 80974704 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 037B8 80974708 AFA5009C */  sw      $a1, 0x009C($sp)           
/* 037BC 8097470C 84880188 */  lh      $t0, 0x0188($a0)           ## 00000188
/* 037C0 80974710 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 037C4 80974714 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 037C8 80974718 3C068097 */  lui     $a2, %hi(D_8097694C)       ## $a2 = 80970000
/* 037CC 8097471C 24C6694C */  addiu   $a2, $a2, %lo(D_8097694C)  ## $a2 = 8097694C
/* 037D0 80974720 27A40078 */  addiu   $a0, $sp, 0x0078           ## $a0 = FFFFFFE0
/* 037D4 80974724 240709EF */  addiu   $a3, $zero, 0x09EF         ## $a3 = 000009EF
/* 037D8 80974728 AFA8008C */  sw      $t0, 0x008C($sp)           
/* 037DC 8097472C 0C031AB1 */  jal     Graph_OpenDisps              
/* 037E0 80974730 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 037E4 80974734 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 037E8 80974738 8FA5009C */  lw      $a1, 0x009C($sp)           
/* 037EC 8097473C 0C25D1AD */  jal     func_809746B4              
/* 037F0 80974740 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 037F4 80974744 14400102 */  bne     $v0, $zero, .L80974B50     
/* 037F8 80974748 8FA8008C */  lw      $t0, 0x008C($sp)           
/* 037FC 8097474C 862F018A */  lh      $t7, 0x018A($s1)           ## 0000018A
/* 03800 80974750 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 03804 80974754 570000FF */  bnel    $t8, $zero, .L80974B54     
/* 03808 80974758 8FAE009C */  lw      $t6, 0x009C($sp)           
/* 0380C 8097475C 92220184 */  lbu     $v0, 0x0184($s1)           ## 00000184
/* 03810 80974760 24010013 */  addiu   $at, $zero, 0x0013         ## $at = 00000013
/* 03814 80974764 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 03818 80974768 10410009 */  beq     $v0, $at, .L80974790       
/* 0381C 8097476C 3C0BDB06 */  lui     $t3, 0xDB06                ## $t3 = DB060000
/* 03820 80974770 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 03824 80974774 10410028 */  beq     $v0, $at, .L80974818       
/* 03828 80974778 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 0382C 8097477C 24010015 */  addiu   $at, $zero, 0x0015         ## $at = 00000015
/* 03830 80974780 10410048 */  beq     $v0, $at, .L809748A4       
/* 03834 80974784 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 03838 80974788 10000069 */  beq     $zero, $zero, .L80974930   
/* 0383C 8097478C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
.L80974790:
/* 03840 80974790 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03844 80974794 356B0024 */  ori     $t3, $t3, 0x0024           ## $t3 = DB060024
/* 03848 80974798 00081840 */  sll     $v1, $t0,  1               
/* 0384C 8097479C 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 03850 809747A0 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 03854 809747A4 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 03858 809747A8 8FAC009C */  lw      $t4, 0x009C($sp)           
/* 0385C 809747AC 311800FF */  andi    $t8, $t0, 0x00FF           ## $t8 = 00000000
/* 03860 809747B0 0158C823 */  subu    $t9, $t2, $t8              
/* 03864 809747B4 8D840000 */  lw      $a0, 0x0000($t4)           ## 00000000
/* 03868 809747B8 240C0010 */  addiu   $t4, $zero, 0x0010         ## $t4 = 00000010
/* 0386C 809747BC 240B0010 */  addiu   $t3, $zero, 0x0010         ## $t3 = 00000010
/* 03870 809747C0 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000000
/* 03874 809747C4 00083080 */  sll     $a2, $t0,  2               
/* 03878 809747C8 240D0040 */  addiu   $t5, $zero, 0x0040         ## $t5 = 00000040
/* 0387C 809747CC 240E0040 */  addiu   $t6, $zero, 0x0040         ## $t6 = 00000040
/* 03880 809747D0 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 03884 809747D4 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 03888 809747D8 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 0388C 809747DC AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 03890 809747E0 30C600FF */  andi    $a2, $a2, 0x00FF           ## $a2 = 00000000
/* 03894 809747E4 01433823 */  subu    $a3, $t2, $v1              
/* 03898 809747E8 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 0389C 809747EC AFAB0024 */  sw      $t3, 0x0024($sp)           
/* 038A0 809747F0 AFAC0028 */  sw      $t4, 0x0028($sp)           
/* 038A4 809747F4 AFA8008C */  sw      $t0, 0x008C($sp)           
/* 038A8 809747F8 AFB90020 */  sw      $t9, 0x0020($sp)           
/* 038AC 809747FC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 038B0 80974800 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 038B4 80974804 AFA20074 */  sw      $v0, 0x0074($sp)           
/* 038B8 80974808 8FA90074 */  lw      $t1, 0x0074($sp)           
/* 038BC 8097480C 8FA8008C */  lw      $t0, 0x008C($sp)           
/* 038C0 80974810 10000046 */  beq     $zero, $zero, .L8097492C   
/* 038C4 80974814 AD220004 */  sw      $v0, 0x0004($t1)           ## 00000004
.L80974818:
/* 038C8 80974818 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 038CC 8097481C 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 038D0 80974820 35CE0024 */  ori     $t6, $t6, 0x0024           ## $t6 = DB060024
/* 038D4 80974824 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 038D8 80974828 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 038DC 8097482C AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 038E0 80974830 8FAF009C */  lw      $t7, 0x009C($sp)           
/* 038E4 80974834 00081840 */  sll     $v1, $t0,  1               
/* 038E8 80974838 310C00FF */  andi    $t4, $t0, 0x00FF           ## $t4 = 00000000
/* 038EC 8097483C 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 038F0 80974840 240F0008 */  addiu   $t7, $zero, 0x0008         ## $t7 = 00000008
/* 038F4 80974844 014C6823 */  subu    $t5, $t2, $t4              
/* 038F8 80974848 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000000
/* 038FC 8097484C 240E0010 */  addiu   $t6, $zero, 0x0010         ## $t6 = 00000010
/* 03900 80974850 00083080 */  sll     $a2, $t0,  2               
/* 03904 80974854 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 03908 80974858 24190040 */  addiu   $t9, $zero, 0x0040         ## $t9 = 00000040
/* 0390C 8097485C 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 03910 80974860 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 03914 80974864 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 03918 80974868 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 0391C 8097486C 30C6007F */  andi    $a2, $a2, 0x007F           ## $a2 = 00000000
/* 03920 80974870 AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 03924 80974874 01433823 */  subu    $a3, $t2, $v1              
/* 03928 80974878 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 0392C 8097487C AFAD0020 */  sw      $t5, 0x0020($sp)           
/* 03930 80974880 AFAF0028 */  sw      $t7, 0x0028($sp)           
/* 03934 80974884 AFA8008C */  sw      $t0, 0x008C($sp)           
/* 03938 80974888 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0393C 8097488C 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 03940 80974890 AFA20070 */  sw      $v0, 0x0070($sp)           
/* 03944 80974894 8FA90070 */  lw      $t1, 0x0070($sp)           
/* 03948 80974898 8FA8008C */  lw      $t0, 0x008C($sp)           
/* 0394C 8097489C 10000023 */  beq     $zero, $zero, .L8097492C   
/* 03950 809748A0 AD220004 */  sw      $v0, 0x0004($t1)           ## 00000004
.L809748A4:
/* 03954 809748A4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03958 809748A8 3C19DB06 */  lui     $t9, 0xDB06                ## $t9 = DB060000
/* 0395C 809748AC 37390024 */  ori     $t9, $t9, 0x0024           ## $t9 = DB060024
/* 03960 809748B0 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 03964 809748B4 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 03968 809748B8 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 0396C 809748BC 8FAB009C */  lw      $t3, 0x009C($sp)           
/* 03970 809748C0 00081840 */  sll     $v1, $t0,  1               
/* 03974 809748C4 310F00FF */  andi    $t7, $t0, 0x00FF           ## $t7 = 00000000
/* 03978 809748C8 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 0397C 809748CC 240B0010 */  addiu   $t3, $zero, 0x0010         ## $t3 = 00000010
/* 03980 809748D0 014FC023 */  subu    $t8, $t2, $t7              
/* 03984 809748D4 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000000
/* 03988 809748D8 24190010 */  addiu   $t9, $zero, 0x0010         ## $t9 = 00000010
/* 0398C 809748DC 00083080 */  sll     $a2, $t0,  2               
/* 03990 809748E0 240C0020 */  addiu   $t4, $zero, 0x0020         ## $t4 = 00000020
/* 03994 809748E4 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 03998 809748E8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0399C 809748EC AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 039A0 809748F0 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 039A4 809748F4 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 039A8 809748F8 30C600FF */  andi    $a2, $a2, 0x00FF           ## $a2 = 00000000
/* 039AC 809748FC AFB90024 */  sw      $t9, 0x0024($sp)           
/* 039B0 80974900 01433823 */  subu    $a3, $t2, $v1              
/* 039B4 80974904 AFA3001C */  sw      $v1, 0x001C($sp)           
/* 039B8 80974908 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 039BC 8097490C AFAB0028 */  sw      $t3, 0x0028($sp)           
/* 039C0 80974910 AFA8008C */  sw      $t0, 0x008C($sp)           
/* 039C4 80974914 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 039C8 80974918 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 039CC 8097491C AFA2006C */  sw      $v0, 0x006C($sp)           
/* 039D0 80974920 8FA9006C */  lw      $t1, 0x006C($sp)           
/* 039D4 80974924 8FA8008C */  lw      $t0, 0x008C($sp)           
/* 039D8 80974928 AD220004 */  sw      $v0, 0x0004($t1)           ## 00000004
.L8097492C:
/* 039DC 8097492C 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
.L80974930:
/* 039E0 80974930 3C0DDB06 */  lui     $t5, 0xDB06                ## $t5 = DB060000
/* 039E4 80974934 35AD0020 */  ori     $t5, $t5, 0x0020           ## $t5 = DB060020
/* 039E8 80974938 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 039EC 8097493C AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 039F0 80974940 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 039F4 80974944 8FAE009C */  lw      $t6, 0x009C($sp)           
/* 039F8 80974948 310500FF */  andi    $a1, $t0, 0x00FF           ## $a1 = 00000000
/* 039FC 8097494C 240F0010 */  addiu   $t7, $zero, 0x0010         ## $t7 = 00000010
/* 03A00 80974950 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 03A04 80974954 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 03A08 80974958 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 03A0C 8097495C 24070010 */  addiu   $a3, $zero, 0x0010         ## $a3 = 00000010
/* 03A10 80974960 0C0253A7 */  jal     Gfx_TexScroll              
/* 03A14 80974964 AFA20068 */  sw      $v0, 0x0068($sp)           
/* 03A18 80974968 8FA30068 */  lw      $v1, 0x0068($sp)           
/* 03A1C 8097496C 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 03A20 80974970 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 03A24 80974974 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03A28 80974978 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03A2C 8097497C 3C058097 */  lui     $a1, %hi(D_80976960)       ## $a1 = 80970000
/* 03A30 80974980 24A56960 */  addiu   $a1, $a1, %lo(D_80976960)  ## $a1 = 80976960
/* 03A34 80974984 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 03A38 80974988 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 03A3C 8097498C AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 03A40 80974990 8FAB009C */  lw      $t3, 0x009C($sp)           
/* 03A44 80974994 24060A25 */  addiu   $a2, $zero, 0x0A25         ## $a2 = 00000A25
/* 03A48 80974998 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000000
/* 03A4C 8097499C 0C0346A2 */  jal     Matrix_NewMtx              
/* 03A50 809749A0 AFA20064 */  sw      $v0, 0x0064($sp)           
/* 03A54 809749A4 8FA30064 */  lw      $v1, 0x0064($sp)           
/* 03A58 809749A8 3C0DDA38 */  lui     $t5, 0xDA38                ## $t5 = DA380000
/* 03A5C 809749AC 35AD0003 */  ori     $t5, $t5, 0x0003           ## $t5 = DA380003
/* 03A60 809749B0 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03A64 809749B4 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03A68 809749B8 3C058097 */  lui     $a1, %hi(D_80976974)       ## $a1 = 80970000
/* 03A6C 809749BC 24A56974 */  addiu   $a1, $a1, %lo(D_80976974)  ## $a1 = 80976974
/* 03A70 809749C0 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 03A74 809749C4 AE0C02C0 */  sw      $t4, 0x02C0($s0)           ## 000002C0
/* 03A78 809749C8 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 03A7C 809749CC 8FAE009C */  lw      $t6, 0x009C($sp)           
/* 03A80 809749D0 24060A27 */  addiu   $a2, $zero, 0x0A27         ## $a2 = 00000A27
/* 03A84 809749D4 8DC40000 */  lw      $a0, 0x0000($t6)           ## 00000000
/* 03A88 809749D8 0C0346A2 */  jal     Matrix_NewMtx              
/* 03A8C 809749DC AFA20060 */  sw      $v0, 0x0060($sp)           
/* 03A90 809749E0 8FA30060 */  lw      $v1, 0x0060($sp)           
/* 03A94 809749E4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 03A98 809749E8 8FAF009C */  lw      $t7, 0x009C($sp)           
/* 03A9C 809749EC 0C024F61 */  jal     func_80093D84              
/* 03AA0 809749F0 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 03AA4 809749F4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03AA8 809749F8 8FA5009C */  lw      $a1, 0x009C($sp)           
/* 03AAC 809749FC 0C00BB60 */  jal     func_8002ED80              
/* 03AB0 80974A00 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 03AB4 80974A04 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03AB8 80974A08 3C19FA00 */  lui     $t9, 0xFA00                ## $t9 = FA000000
/* 03ABC 80974A0C 37390080 */  ori     $t9, $t9, 0x0080           ## $t9 = FA000080
/* 03AC0 80974A10 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 03AC4 80974A14 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 03AC8 80974A18 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 03ACC 80974A1C 922C017A */  lbu     $t4, 0x017A($s1)           ## 0000017A
/* 03AD0 80974A20 922F0178 */  lbu     $t7, 0x0178($s1)           ## 00000178
/* 03AD4 80974A24 3C0BFB00 */  lui     $t3, 0xFB00                ## $t3 = FB000000
/* 03AD8 80974A28 000C6A00 */  sll     $t5, $t4,  8               
/* 03ADC 80974A2C 922C0179 */  lbu     $t4, 0x0179($s1)           ## 00000179
/* 03AE0 80974A30 000FC600 */  sll     $t8, $t7, 24               
/* 03AE4 80974A34 01B8C825 */  or      $t9, $t5, $t8              ## $t9 = 00000008
/* 03AE8 80974A38 000C7400 */  sll     $t6, $t4, 16               
/* 03AEC 80974A3C 032E7825 */  or      $t7, $t9, $t6              ## $t7 = 00000008
/* 03AF0 80974A40 35ED00FF */  ori     $t5, $t7, 0x00FF           ## $t5 = 000000FF
/* 03AF4 80974A44 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 03AF8 80974A48 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03AFC 80974A4C 3C0CDE00 */  lui     $t4, 0xDE00                ## $t4 = DE000000
/* 03B00 80974A50 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 03B04 80974A54 AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 03B08 80974A58 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 03B0C 80974A5C 9239017D */  lbu     $t9, 0x017D($s1)           ## 0000017D
/* 03B10 80974A60 922D017B */  lbu     $t5, 0x017B($s1)           ## 0000017B
/* 03B14 80974A64 00197200 */  sll     $t6, $t9,  8               
/* 03B18 80974A68 9239017C */  lbu     $t9, 0x017C($s1)           ## 0000017C
/* 03B1C 80974A6C 000DC600 */  sll     $t8, $t5, 24               
/* 03B20 80974A70 01D85825 */  or      $t3, $t6, $t8              ## $t3 = 00000008
/* 03B24 80974A74 00197C00 */  sll     $t7, $t9, 16               
/* 03B28 80974A78 016F6825 */  or      $t5, $t3, $t7              ## $t5 = 00000008
/* 03B2C 80974A7C 35AE00FF */  ori     $t6, $t5, 0x00FF           ## $t6 = 000000FF
/* 03B30 80974A80 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 03B34 80974A84 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 03B38 80974A88 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 03B3C 80974A8C AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 03B40 80974A90 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 03B44 80974A94 8E390170 */  lw      $t9, 0x0170($s1)           ## 00000170
/* 03B48 80974A98 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 03B4C 80974A9C 8FAB009C */  lw      $t3, 0x009C($sp)           
/* 03B50 80974AA0 0C024F46 */  jal     func_80093D18              
/* 03B54 80974AA4 8D640000 */  lw      $a0, 0x0000($t3)           ## 00000008
/* 03B58 80974AA8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 03B5C 80974AAC 8FA5009C */  lw      $a1, 0x009C($sp)           
/* 03B60 80974AB0 0C00BAF3 */  jal     func_8002EBCC              
/* 03B64 80974AB4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 03B68 80974AB8 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03B6C 80974ABC 3C0DFA00 */  lui     $t5, 0xFA00                ## $t5 = FA000000
/* 03B70 80974AC0 35AD0080 */  ori     $t5, $t5, 0x0080           ## $t5 = FA000080
/* 03B74 80974AC4 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 03B78 80974AC8 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 03B7C 80974ACC AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 03B80 80974AD0 92380180 */  lbu     $t8, 0x0180($s1)           ## 00000180
/* 03B84 80974AD4 922B017E */  lbu     $t3, 0x017E($s1)           ## 0000017E
/* 03B88 80974AD8 3C0EFB00 */  lui     $t6, 0xFB00                ## $t6 = FB000000
/* 03B8C 80974ADC 00186200 */  sll     $t4, $t8,  8               
/* 03B90 80974AE0 9238017F */  lbu     $t8, 0x017F($s1)           ## 0000017F
/* 03B94 80974AE4 000B7E00 */  sll     $t7, $t3, 24               
/* 03B98 80974AE8 018F6825 */  or      $t5, $t4, $t7              ## $t5 = 00000008
/* 03B9C 80974AEC 0018CC00 */  sll     $t9, $t8, 16               
/* 03BA0 80974AF0 01B95825 */  or      $t3, $t5, $t9              ## $t3 = 00000008
/* 03BA4 80974AF4 356C00FF */  ori     $t4, $t3, 0x00FF           ## $t4 = 000000FF
/* 03BA8 80974AF8 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 03BAC 80974AFC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03BB0 80974B00 3C18DE00 */  lui     $t8, 0xDE00                ## $t8 = DE000000
/* 03BB4 80974B04 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 03BB8 80974B08 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 03BBC 80974B0C AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 03BC0 80974B10 922D0183 */  lbu     $t5, 0x0183($s1)           ## 00000183
/* 03BC4 80974B14 922C0181 */  lbu     $t4, 0x0181($s1)           ## 00000181
/* 03BC8 80974B18 000DCA00 */  sll     $t9, $t5,  8               
/* 03BCC 80974B1C 922D0182 */  lbu     $t5, 0x0182($s1)           ## 00000182
/* 03BD0 80974B20 000C7E00 */  sll     $t7, $t4, 24               
/* 03BD4 80974B24 032F7025 */  or      $t6, $t9, $t7              ## $t6 = 00000008
/* 03BD8 80974B28 000D5C00 */  sll     $t3, $t5, 16               
/* 03BDC 80974B2C 01CB6025 */  or      $t4, $t6, $t3              ## $t4 = 00000008
/* 03BE0 80974B30 359900FF */  ori     $t9, $t4, 0x00FF           ## $t9 = 000000FF
/* 03BE4 80974B34 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 03BE8 80974B38 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 03BEC 80974B3C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 03BF0 80974B40 AE0F02C0 */  sw      $t7, 0x02C0($s0)           ## 000002C0
/* 03BF4 80974B44 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 03BF8 80974B48 8E2D0174 */  lw      $t5, 0x0174($s1)           ## 00000174
/* 03BFC 80974B4C AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
.L80974B50:
/* 03C00 80974B50 8FAE009C */  lw      $t6, 0x009C($sp)           
.L80974B54:
/* 03C04 80974B54 3C068097 */  lui     $a2, %hi(D_80976988)       ## $a2 = 80970000
/* 03C08 80974B58 24C66988 */  addiu   $a2, $a2, %lo(D_80976988)  ## $a2 = 80976988
/* 03C0C 80974B5C 27A40078 */  addiu   $a0, $sp, 0x0078           ## $a0 = FFFFFFE0
/* 03C10 80974B60 24070A3C */  addiu   $a3, $zero, 0x0A3C         ## $a3 = 00000A3C
/* 03C14 80974B64 0C031AD5 */  jal     Graph_CloseDisps              
/* 03C18 80974B68 8DC50000 */  lw      $a1, 0x0000($t6)           ## 00000008
/* 03C1C 80974B6C 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 03C20 80974B70 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 03C24 80974B74 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 03C28 80974B78 03E00008 */  jr      $ra                        
/* 03C2C 80974B7C 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000


