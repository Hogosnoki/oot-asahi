glabel func_809AC78C
/* 0008C 809AC78C 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 00090 809AC790 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00094 809AC794 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00098 809AC798 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 0009C 809AC79C AFA40068 */  sw      $a0, 0x0068($sp)           
/* 000A0 809AC7A0 AFA5006C */  sw      $a1, 0x006C($sp)           
/* 000A4 809AC7A4 AFA60070 */  sw      $a2, 0x0070($sp)           
/* 000A8 809AC7A8 84D8005C */  lh      $t8, 0x005C($a2)           ## 0000005C
/* 000AC 809AC7AC 8C900000 */  lw      $s0, 0x0000($a0)           ## 00000000
/* 000B0 809AC7B0 3C08809B */  lui     $t0, %hi(D_809ACA08)       ## $t0 = 809B0000
/* 000B4 809AC7B4 0018C880 */  sll     $t9, $t8,  2               
/* 000B8 809AC7B8 0338C823 */  subu    $t9, $t9, $t8              
/* 000BC 809AC7BC 0019C880 */  sll     $t9, $t9,  2               
/* 000C0 809AC7C0 2508CA08 */  addiu   $t0, $t0, %lo(D_809ACA08)  ## $t0 = 809ACA08
/* 000C4 809AC7C4 3C06809B */  lui     $a2, %hi(D_809ACA70)       ## $a2 = 809B0000
/* 000C8 809AC7C8 03288821 */  addu    $s1, $t9, $t0              
/* 000CC 809AC7CC 24C6CA70 */  addiu   $a2, $a2, %lo(D_809ACA70)  ## $a2 = 809ACA70
/* 000D0 809AC7D0 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFD0
/* 000D4 809AC7D4 2407009A */  addiu   $a3, $zero, 0x009A         ## $a3 = 0000009A
/* 000D8 809AC7D8 0C031AB1 */  jal     Graph_OpenDisp              
/* 000DC 809AC7DC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 000E0 809AC7E0 8FA40068 */  lw      $a0, 0x0068($sp)           
/* 000E4 809AC7E4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 000E8 809AC7E8 34211D60 */  ori     $at, $at, 0x1D60           ## $at = 00011D60
/* 000EC 809AC7EC 8FA50070 */  lw      $a1, 0x0070($sp)           
/* 000F0 809AC7F0 27A60054 */  addiu   $a2, $sp, 0x0054           ## $a2 = FFFFFFEC
/* 000F4 809AC7F4 27A70050 */  addiu   $a3, $sp, 0x0050           ## $a3 = FFFFFFE8
/* 000F8 809AC7F8 0C029B84 */  jal     func_800A6E10              
/* 000FC 809AC7FC 00812021 */  addu    $a0, $a0, $at              
/* 00100 809AC800 3C01809B */  lui     $at, %hi(D_809ACAB8)       ## $at = 809B0000
/* 00104 809AC804 C422CAB8 */  lwc1    $f2, %lo(D_809ACAB8)($at)  
/* 00108 809AC808 C7A00050 */  lwc1    $f0, 0x0050($sp)           
/* 0010C 809AC80C 8FA50070 */  lw      $a1, 0x0070($sp)           
/* 00110 809AC810 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00114 809AC814 4602003C */  c.lt.s  $f0, $f2                   
/* 00118 809AC818 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0011C 809AC81C 45020005 */  bc1fl   .L809AC834                 
/* 00120 809AC820 46020183 */  div.s   $f6, $f0, $f2              
/* 00124 809AC824 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 00128 809AC828 10000007 */  beq     $zero, $zero, .L809AC848   
/* 0012C 809AC82C E7A4004C */  swc1    $f4, 0x004C($sp)           
/* 00130 809AC830 46020183 */  div.s   $f6, $f0, $f2              
.L809AC834:
/* 00134 809AC834 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00138 809AC838 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 0013C 809AC83C 00000000 */  nop
/* 00140 809AC840 46083302 */  mul.s   $f12, $f6, $f8             
/* 00144 809AC844 E7AC004C */  swc1    $f12, 0x004C($sp)          
.L809AC848:
/* 00148 809AC848 C4AC0000 */  lwc1    $f12, 0x0000($a1)          ## 00000000
/* 0014C 809AC84C C4AE0004 */  lwc1    $f14, 0x0004($a1)          ## 00000004
/* 00150 809AC850 0C034261 */  jal     Matrix_Translate              
/* 00154 809AC854 8CA60008 */  lw      $a2, 0x0008($a1)           ## 00000008
/* 00158 809AC858 C7AC004C */  lwc1    $f12, 0x004C($sp)          
/* 0015C 809AC85C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00160 809AC860 44066000 */  mfc1    $a2, $f12                  
/* 00164 809AC864 0C0342A3 */  jal     Matrix_Scale              
/* 00168 809AC868 46006386 */  mov.s   $f14, $f12                 
/* 0016C 809AC86C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00170 809AC870 3C0ADA38 */  lui     $t2, 0xDA38                ## $t2 = DA380000
/* 00174 809AC874 354A0003 */  ori     $t2, $t2, 0x0003           ## $t2 = DA380003
/* 00178 809AC878 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 0017C 809AC87C AE0902D0 */  sw      $t1, 0x02D0($s0)           ## 000002D0
/* 00180 809AC880 3C05809B */  lui     $a1, %hi(D_809ACA88)       ## $a1 = 809B0000
/* 00184 809AC884 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 00188 809AC888 24A5CA88 */  addiu   $a1, $a1, %lo(D_809ACA88)  ## $a1 = 809ACA88
/* 0018C 809AC88C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00190 809AC890 240600A8 */  addiu   $a2, $zero, 0x00A8         ## $a2 = 000000A8
/* 00194 809AC894 0C0346A2 */  jal     Matrix_NewMtx              
/* 00198 809AC898 AFA20034 */  sw      $v0, 0x0034($sp)           
/* 0019C 809AC89C 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 001A0 809AC8A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001A4 809AC8A4 0C025314 */  jal     func_80094C50              
/* 001A8 809AC8A8 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 001AC 809AC8AC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 001B0 809AC8B0 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 001B4 809AC8B4 358C0020 */  ori     $t4, $t4, 0x0020           ## $t4 = DB060020
/* 001B8 809AC8B8 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 001BC 809AC8BC AE0B02D0 */  sw      $t3, 0x02D0($s0)           ## 000002D0
/* 001C0 809AC8C0 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 001C4 809AC8C4 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 001C8 809AC8C8 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 001CC 809AC8CC 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 001D0 809AC8D0 00046900 */  sll     $t5, $a0,  4               
/* 001D4 809AC8D4 000D7702 */  srl     $t6, $t5, 28               
/* 001D8 809AC8D8 000E7880 */  sll     $t7, $t6,  2               
/* 001DC 809AC8DC 030FC021 */  addu    $t8, $t8, $t7              
/* 001E0 809AC8E0 8F186FA8 */  lw      $t8, 0x6FA8($t8)           ## 80166FA8
/* 001E4 809AC8E4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 001E8 809AC8E8 0081C824 */  and     $t9, $a0, $at              
/* 001EC 809AC8EC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 001F0 809AC8F0 03194021 */  addu    $t0, $t8, $t9              
/* 001F4 809AC8F4 01014821 */  addu    $t1, $t0, $at              
/* 001F8 809AC8F8 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 001FC 809AC8FC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00200 809AC900 3C0BFA00 */  lui     $t3, 0xFA00                ## $t3 = FA000000
/* 00204 809AC904 3C06809B */  lui     $a2, %hi(D_809ACAA0)       ## $a2 = 809B0000
/* 00208 809AC908 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 0020C 809AC90C AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 00210 809AC910 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 00214 809AC914 92380005 */  lbu     $t8, 0x0005($s1)           ## 00000005
/* 00218 809AC918 922D0004 */  lbu     $t5, 0x0004($s1)           ## 00000004
/* 0021C 809AC91C 922A0006 */  lbu     $t2, 0x0006($s1)           ## 00000006
/* 00220 809AC920 0018CC00 */  sll     $t9, $t8, 16               
/* 00224 809AC924 000D7600 */  sll     $t6, $t5, 24               
/* 00228 809AC928 01D94025 */  or      $t0, $t6, $t9              ## $t0 = 00000000
/* 0022C 809AC92C 000A5A00 */  sll     $t3, $t2,  8               
/* 00230 809AC930 010B6025 */  or      $t4, $t0, $t3              ## $t4 = FA000000
/* 00234 809AC934 358D00FF */  ori     $t5, $t4, 0x00FF           ## $t5 = FA0000FF
/* 00238 809AC938 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
/* 0023C 809AC93C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00240 809AC940 3C18FB00 */  lui     $t8, 0xFB00                ## $t8 = FB000000
/* 00244 809AC944 24C6CAA0 */  addiu   $a2, $a2, %lo(D_809ACAA0)  ## $a2 = 809ACAA0
/* 00248 809AC948 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 0024C 809AC94C AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 00250 809AC950 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 00254 809AC954 92280009 */  lbu     $t0, 0x0009($s1)           ## 00000009
/* 00258 809AC958 92390008 */  lbu     $t9, 0x0008($s1)           ## 00000008
/* 0025C 809AC95C 922F000A */  lbu     $t7, 0x000A($s1)           ## 0000000A
/* 00260 809AC960 00085C00 */  sll     $t3, $t0, 16               
/* 00264 809AC964 00194E00 */  sll     $t1, $t9, 24               
/* 00268 809AC968 012B6025 */  or      $t4, $t1, $t3              ## $t4 = FA000000
/* 0026C 809AC96C 000FC200 */  sll     $t8, $t7,  8               
/* 00270 809AC970 01987025 */  or      $t6, $t4, $t8              ## $t6 = FB000000
/* 00274 809AC974 35D900FF */  ori     $t9, $t6, 0x00FF           ## $t9 = FB0000FF
/* 00278 809AC978 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 0027C 809AC97C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00280 809AC980 3C090403 */  lui     $t1, 0x0403                ## $t1 = 04030000
/* 00284 809AC984 25299E90 */  addiu   $t1, $t1, 0x9E90           ## $t1 = 04029E90
/* 00288 809AC988 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 0028C 809AC98C AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 00290 809AC990 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 00294 809AC994 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFD0
/* 00298 809AC998 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0029C 809AC99C 240700B7 */  addiu   $a3, $zero, 0x00B7         ## $a3 = 000000B7
/* 002A0 809AC9A0 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 002A4 809AC9A4 0C031AD5 */  jal     Graph_CloseDisp              
/* 002A8 809AC9A8 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 002AC 809AC9AC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 002B0 809AC9B0 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 002B4 809AC9B4 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 002B8 809AC9B8 03E00008 */  jr      $ra                        
/* 002BC 809AC9BC 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000


