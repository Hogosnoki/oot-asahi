glabel func_80941788
/* 08AB8 80941788 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 08ABC 8094178C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 08AC0 80941790 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 08AC4 80941794 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 08AC8 80941798 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 08ACC 8094179C AFA40070 */  sw      $a0, 0x0070($sp)           
/* 08AD0 809417A0 AFA60078 */  sw      $a2, 0x0078($sp)           
/* 08AD4 809417A4 AFA7007C */  sw      $a3, 0x007C($sp)           
/* 08AD8 809417A8 8C850000 */  lw      $a1, 0x0000($a0)           ## 00000000
/* 08ADC 809417AC 3C068095 */  lui     $a2, %hi(D_8094AA88)       ## $a2 = 80950000
/* 08AE0 809417B0 24C6AA88 */  addiu   $a2, $a2, %lo(D_8094AA88)  ## $a2 = 8094AA88
/* 08AE4 809417B4 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFE8
/* 08AE8 809417B8 24071818 */  addiu   $a3, $zero, 0x1818         ## $a3 = 00001818
/* 08AEC 809417BC 0C031AB1 */  jal     Graph_OpenDisps              
/* 08AF0 809417C0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 08AF4 809417C4 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 08AF8 809417C8 1221004C */  beq     $s1, $at, .L809418FC       
/* 08AFC 809417CC 3C048095 */  lui     $a0, %hi(D_8094A95C)       ## $a0 = 80950000
/* 08B00 809417D0 24010015 */  addiu   $at, $zero, 0x0015         ## $at = 00000015
/* 08B04 809417D4 162100EE */  bne     $s1, $at, .L80941B90       
/* 08B08 809417D8 3C048095 */  lui     $a0, %hi(D_8094A944)       ## $a0 = 80950000
/* 08B0C 809417DC 8FB10080 */  lw      $s1, 0x0080($sp)           
/* 08B10 809417E0 2484A944 */  addiu   $a0, $a0, %lo(D_8094A944)  ## $a0 = 8094A944
/* 08B14 809417E4 0C0346BD */  jal     Matrix_MultVec3f              
/* 08B18 809417E8 26250038 */  addiu   $a1, $s1, 0x0038           ## $a1 = 00000038
/* 08B1C 809417EC 3C048095 */  lui     $a0, %hi(D_8094A950)       ## $a0 = 80950000
/* 08B20 809417F0 2484A950 */  addiu   $a0, $a0, %lo(D_8094A950)  ## $a0 = 8094A950
/* 08B24 809417F4 0C0346BD */  jal     Matrix_MultVec3f              
/* 08B28 809417F8 26250444 */  addiu   $a1, $s1, 0x0444           ## $a1 = 00000444
/* 08B2C 809417FC 922F05F8 */  lbu     $t7, 0x05F8($s1)           ## 000005F8
/* 08B30 80941800 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 08B34 80941804 51E000E3 */  beql    $t7, $zero, .L80941B94     
/* 08B38 80941808 8FAA0070 */  lw      $t2, 0x0070($sp)           
/* 08B3C 8094180C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08B40 80941810 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 08B44 80941814 3C058095 */  lui     $a1, %hi(D_8094AA98)       ## $a1 = 80950000
/* 08B48 80941818 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 08B4C 8094181C AE1802D0 */  sw      $t8, 0x02D0($s0)           ## 000002D0
/* 08B50 80941820 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 08B54 80941824 8FAA0070 */  lw      $t2, 0x0070($sp)           
/* 08B58 80941828 24A5AA98 */  addiu   $a1, $a1, %lo(D_8094AA98)  ## $a1 = 8094AA98
/* 08B5C 8094182C 2406182E */  addiu   $a2, $zero, 0x182E         ## $a2 = 0000182E
/* 08B60 80941830 8D440000 */  lw      $a0, 0x0000($t2)           ## 00000000
/* 08B64 80941834 0C0346A2 */  jal     Matrix_NewMtx              
/* 08B68 80941838 AFA20054 */  sw      $v0, 0x0054($sp)           
/* 08B6C 8094183C 8FA30054 */  lw      $v1, 0x0054($sp)           
/* 08B70 80941840 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 08B74 80941844 3C0700FF */  lui     $a3, 0x00FF                ## $a3 = 00FF0000
/* 08B78 80941848 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 08B7C 8094184C 862B001C */  lh      $t3, 0x001C($s1)           ## 0000001C
/* 08B80 80941850 34E7FFFF */  ori     $a3, $a3, 0xFFFF           ## $a3 = 00FFFFFF
/* 08B84 80941854 24C66FA8 */  addiu   $a2, $a2, 0x6FA8           ## $a2 = 80166FA8
/* 08B88 80941858 15600017 */  bne     $t3, $zero, .L809418B8     
/* 08B8C 8094185C 3C05DE00 */  lui     $a1, 0xDE00                ## $a1 = DE000000
/* 08B90 80941860 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08B94 80941864 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 08B98 80941868 24843AE8 */  addiu   $a0, $a0, 0x3AE8           ## $a0 = 06013AE8
/* 08B9C 8094186C 00046900 */  sll     $t5, $a0,  4               
/* 08BA0 80941870 000D7702 */  srl     $t6, $t5, 28               
/* 08BA4 80941874 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 08BA8 80941878 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 08BAC 8094187C AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 08BB0 80941880 24C66FA8 */  addiu   $a2, $a2, 0x6FA8           ## $a2 = 80166FA8
/* 08BB4 80941884 000E7880 */  sll     $t7, $t6,  2               
/* 08BB8 80941888 3C05DE00 */  lui     $a1, 0xDE00                ## $a1 = DE000000
/* 08BBC 8094188C 00CFC021 */  addu    $t8, $a2, $t7              
/* 08BC0 80941890 AC450000 */  sw      $a1, 0x0000($v0)           ## 00000000
/* 08BC4 80941894 8F190000 */  lw      $t9, 0x0000($t8)           ## 00000000
/* 08BC8 80941898 3C0700FF */  lui     $a3, 0x00FF                ## $a3 = 00FF0000
/* 08BCC 8094189C 34E7FFFF */  ori     $a3, $a3, 0xFFFF           ## $a3 = 00FFFFFF
/* 08BD0 809418A0 00875024 */  and     $t2, $a0, $a3              
/* 08BD4 809418A4 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 08BD8 809418A8 032A5821 */  addu    $t3, $t9, $t2              
/* 08BDC 809418AC 01686021 */  addu    $t4, $t3, $t0              
/* 08BE0 809418B0 100000B7 */  beq     $zero, $zero, .L80941B90   
/* 08BE4 809418B4 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
.L809418B8:
/* 08BE8 809418B8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08BEC 809418BC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 08BF0 809418C0 24843D68 */  addiu   $a0, $a0, 0x3D68           ## $a0 = 06013D68
/* 08BF4 809418C4 00047100 */  sll     $t6, $a0,  4               
/* 08BF8 809418C8 000E7F02 */  srl     $t7, $t6, 28               
/* 08BFC 809418CC 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 08C00 809418D0 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 08C04 809418D4 000FC080 */  sll     $t8, $t7,  2               
/* 08C08 809418D8 00D8C821 */  addu    $t9, $a2, $t8              
/* 08C0C 809418DC AC450000 */  sw      $a1, 0x0000($v0)           ## 00000000
/* 08C10 809418E0 8F2A0000 */  lw      $t2, 0x0000($t9)           ## 00000000
/* 08C14 809418E4 00875824 */  and     $t3, $a0, $a3              
/* 08C18 809418E8 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 08C1C 809418EC 014B6021 */  addu    $t4, $t2, $t3              
/* 08C20 809418F0 01886821 */  addu    $t5, $t4, $t0              
/* 08C24 809418F4 100000A6 */  beq     $zero, $zero, .L80941B90   
/* 08C28 809418F8 AC4D0004 */  sw      $t5, 0x0004($v0)           ## 00000004
.L809418FC:
/* 08C2C 809418FC 8FB10080 */  lw      $s1, 0x0080($sp)           
/* 08C30 80941900 2484A95C */  addiu   $a0, $a0, %lo(D_8094A95C)  ## $a0 = 0600E6C4
/* 08C34 80941904 0C0346BD */  jal     Matrix_MultVec3f              
/* 08C38 80941908 26250450 */  addiu   $a1, $s1, 0x0450           ## $a1 = 00000450
/* 08C3C 8094190C 3C048095 */  lui     $a0, %hi(D_8094A968)       ## $a0 = 80950000
/* 08C40 80941910 2484A968 */  addiu   $a0, $a0, %lo(D_8094A968)  ## $a0 = 8094A968
/* 08C44 80941914 0C0346BD */  jal     Matrix_MultVec3f              
/* 08C48 80941918 2625045C */  addiu   $a1, $s1, 0x045C           ## $a1 = 0000045C
/* 08C4C 8094191C 3C048095 */  lui     $a0, %hi(D_8094A974)       ## $a0 = 80950000
/* 08C50 80941920 2484A974 */  addiu   $a0, $a0, %lo(D_8094A974)  ## $a0 = 8094A974
/* 08C54 80941924 0C0346BD */  jal     Matrix_MultVec3f              
/* 08C58 80941928 26250468 */  addiu   $a1, $s1, 0x0468           ## $a1 = 00000468
/* 08C5C 8094192C 3C048095 */  lui     $a0, %hi(D_8094A980)       ## $a0 = 80950000
/* 08C60 80941930 2484A980 */  addiu   $a0, $a0, %lo(D_8094A980)  ## $a0 = 8094A980
/* 08C64 80941934 0C0346BD */  jal     Matrix_MultVec3f              
/* 08C68 80941938 26250474 */  addiu   $a1, $s1, 0x0474           ## $a1 = 00000474
/* 08C6C 8094193C 3C048095 */  lui     $a0, %hi(D_8094A98C)       ## $a0 = 80950000
/* 08C70 80941940 2484A98C */  addiu   $a0, $a0, %lo(D_8094A98C)  ## $a0 = 8094A98C
/* 08C74 80941944 0C0346BD */  jal     Matrix_MultVec3f              
/* 08C78 80941948 26250480 */  addiu   $a1, $s1, 0x0480           ## $a1 = 00000480
/* 08C7C 8094194C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 08C80 80941950 C62604D0 */  lwc1    $f6, 0x04D0($s1)           ## 000004D0
/* 08C84 80941954 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 08C88 80941958 4606203C */  c.lt.s  $f4, $f6                   
/* 08C8C 8094195C 00000000 */  nop
/* 08C90 80941960 4502008C */  bc1fl   .L80941B94                 
/* 08C94 80941964 8FAA0070 */  lw      $t2, 0x0070($sp)           
/* 08C98 80941968 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08C9C 8094196C 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 08CA0 80941970 3C058095 */  lui     $a1, %hi(D_8094AAA8)       ## $a1 = 80950000
/* 08CA4 80941974 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 08CA8 80941978 AE0E02D0 */  sw      $t6, 0x02D0($s0)           ## 000002D0
/* 08CAC 8094197C AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 08CB0 80941980 8FB80070 */  lw      $t8, 0x0070($sp)           
/* 08CB4 80941984 24A5AAA8 */  addiu   $a1, $a1, %lo(D_8094AAA8)  ## $a1 = 8094AAA8
/* 08CB8 80941988 2406184D */  addiu   $a2, $zero, 0x184D         ## $a2 = 0000184D
/* 08CBC 8094198C 8F040000 */  lw      $a0, 0x0000($t8)           ## 00000000
/* 08CC0 80941990 0C0346A2 */  jal     Matrix_NewMtx              
/* 08CC4 80941994 AFA20048 */  sw      $v0, 0x0048($sp)           
/* 08CC8 80941998 8FA30048 */  lw      $v1, 0x0048($sp)           
/* 08CCC 8094199C 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 08CD0 809419A0 24C66FA8 */  addiu   $a2, $a2, 0x6FA8           ## $a2 = 80166FA8
/* 08CD4 809419A4 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 08CD8 809419A8 8639001C */  lh      $t9, 0x001C($s1)           ## 0000001C
/* 08CDC 809419AC 3C05DE00 */  lui     $a1, 0xDE00                ## $a1 = DE000000
/* 08CE0 809419B0 3C09FA00 */  lui     $t1, 0xFA00                ## $t1 = FA000000
/* 08CE4 809419B4 1720003C */  bne     $t9, $zero, .L80941AA8     
/* 08CE8 809419B8 3C016414 */  lui     $at, 0x6414                ## $at = 64140000
/* 08CEC 809419BC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08CF0 809419C0 3C09FA00 */  lui     $t1, 0xFA00                ## $t1 = FA000000
/* 08CF4 809419C4 3C01FFE1 */  lui     $at, 0xFFE1                ## $at = FFE10000
/* 08CF8 809419C8 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 08CFC 809419CC AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 08D00 809419D0 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 08D04 809419D4 C62804D0 */  lwc1    $f8, 0x04D0($s1)           ## 000004D0
/* 08D08 809419D8 3421FF00 */  ori     $at, $at, 0xFF00           ## $at = FFE1FF00
/* 08D0C 809419DC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 08D10 809419E0 4600428D */  trunc.w.s $f10, $f8                  
/* 08D14 809419E4 24843E98 */  addiu   $a0, $a0, 0x3E98           ## $a0 = 06013E98
/* 08D18 809419E8 00045100 */  sll     $t2, $a0,  4               
/* 08D1C 809419EC 000A5F02 */  srl     $t3, $t2, 28               
/* 08D20 809419F0 440E5000 */  mfc1    $t6, $f10                  
/* 08D24 809419F4 000B6080 */  sll     $t4, $t3,  2               
/* 08D28 809419F8 00CC6821 */  addu    $t5, $a2, $t4              
/* 08D2C 809419FC 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 08D30 80941A00 01E1C025 */  or      $t8, $t7, $at              ## $t8 = FFE1FF00
/* 08D34 80941A04 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 08D38 80941A08 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08D3C 80941A0C 3C0700FF */  lui     $a3, 0x00FF                ## $a3 = 00FF0000
/* 08D40 80941A10 34E7FFFF */  ori     $a3, $a3, 0xFFFF           ## $a3 = 00FFFFFF
/* 08D44 80941A14 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 08D48 80941A18 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 08D4C 80941A1C AC450000 */  sw      $a1, 0x0000($v0)           ## 00000000
/* 08D50 80941A20 8DAE0000 */  lw      $t6, 0x0000($t5)           ## 00000000
/* 08D54 80941A24 00877824 */  and     $t7, $a0, $a3              
/* 08D58 80941A28 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 08D5C 80941A2C 01CFC021 */  addu    $t8, $t6, $t7              
/* 08D60 80941A30 0308C821 */  addu    $t9, $t8, $t0              
/* 08D64 80941A34 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 08D68 80941A38 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08D6C 80941A3C 3C01C3E1 */  lui     $at, 0xC3E1                ## $at = C3E10000
/* 08D70 80941A40 3421EB00 */  ori     $at, $at, 0xEB00           ## $at = C3E1EB00
/* 08D74 80941A44 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 08D78 80941A48 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 08D7C 80941A4C AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 08D80 80941A50 C63004D0 */  lwc1    $f16, 0x04D0($s1)          ## 000004D0
/* 08D84 80941A54 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 08D88 80941A58 24843F98 */  addiu   $a0, $a0, 0x3F98           ## $a0 = 06013F98
/* 08D8C 80941A5C 4600848D */  trunc.w.s $f18, $f16                 
/* 08D90 80941A60 00045100 */  sll     $t2, $a0,  4               
/* 08D94 80941A64 000A5F02 */  srl     $t3, $t2, 28               
/* 08D98 80941A68 000B6080 */  sll     $t4, $t3,  2               
/* 08D9C 80941A6C 440E9000 */  mfc1    $t6, $f18                  
/* 08DA0 80941A70 00CC6821 */  addu    $t5, $a2, $t4              
/* 08DA4 80941A74 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 08DA8 80941A78 01E1C025 */  or      $t8, $t7, $at              ## $t8 = C3E1EB00
/* 08DAC 80941A7C AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 08DB0 80941A80 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08DB4 80941A84 00877824 */  and     $t7, $a0, $a3              
/* 08DB8 80941A88 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 08DBC 80941A8C AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 08DC0 80941A90 AC450000 */  sw      $a1, 0x0000($v0)           ## 00000000
/* 08DC4 80941A94 8DAE0000 */  lw      $t6, 0x0000($t5)           ## 00000000
/* 08DC8 80941A98 01CFC021 */  addu    $t8, $t6, $t7              
/* 08DCC 80941A9C 0308C821 */  addu    $t9, $t8, $t0              
/* 08DD0 80941AA0 1000003B */  beq     $zero, $zero, .L80941B90   
/* 08DD4 80941AA4 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
.L80941AA8:
/* 08DD8 80941AA8 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08DDC 80941AAC 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 08DE0 80941AB0 24844070 */  addiu   $a0, $a0, 0x4070           ## $a0 = 06014070
/* 08DE4 80941AB4 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 08DE8 80941AB8 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 08DEC 80941ABC AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 08DF0 80941AC0 C62404D0 */  lwc1    $f4, 0x04D0($s1)           ## 000004D0
/* 08DF4 80941AC4 00045100 */  sll     $t2, $a0,  4               
/* 08DF8 80941AC8 000A5F02 */  srl     $t3, $t2, 28               
/* 08DFC 80941ACC 4600218D */  trunc.w.s $f6, $f4                   
/* 08E00 80941AD0 3C068016 */  lui     $a2, 0x8016                ## $a2 = 80160000
/* 08E04 80941AD4 24C66FA8 */  addiu   $a2, $a2, 0x6FA8           ## $a2 = 80166FA8
/* 08E08 80941AD8 000B6080 */  sll     $t4, $t3,  2               
/* 08E0C 80941ADC 440E3000 */  mfc1    $t6, $f6                   
/* 08E10 80941AE0 3C05DE00 */  lui     $a1, 0xDE00                ## $a1 = DE000000
/* 08E14 80941AE4 00CC6821 */  addu    $t5, $a2, $t4              
/* 08E18 80941AE8 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 08E1C 80941AEC 01E1C025 */  or      $t8, $t7, $at              ## $t8 = C3E1EB00
/* 08E20 80941AF0 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 08E24 80941AF4 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08E28 80941AF8 3C0700FF */  lui     $a3, 0x00FF                ## $a3 = 00FF0000
/* 08E2C 80941AFC 34E7FFFF */  ori     $a3, $a3, 0xFFFF           ## $a3 = 00FFFFFF
/* 08E30 80941B00 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 08E34 80941B04 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 08E38 80941B08 AC450000 */  sw      $a1, 0x0000($v0)           ## 00000000
/* 08E3C 80941B0C 8DAE0000 */  lw      $t6, 0x0000($t5)           ## 00000000
/* 08E40 80941B10 00877824 */  and     $t7, $a0, $a3              
/* 08E44 80941B14 3C088000 */  lui     $t0, 0x8000                ## $t0 = 80000000
/* 08E48 80941B18 01CFC021 */  addu    $t8, $t6, $t7              
/* 08E4C 80941B1C 0308C821 */  addu    $t9, $t8, $t0              
/* 08E50 80941B20 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 08E54 80941B24 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08E58 80941B28 3C01FF46 */  lui     $at, 0xFF46                ## $at = FF460000
/* 08E5C 80941B2C 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 08E60 80941B30 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 08E64 80941B34 AE0A02D0 */  sw      $t2, 0x02D0($s0)           ## 000002D0
/* 08E68 80941B38 AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 08E6C 80941B3C C62804D0 */  lwc1    $f8, 0x04D0($s1)           ## 000004D0
/* 08E70 80941B40 24844158 */  addiu   $a0, $a0, 0x4158           ## $a0 = 06014158
/* 08E74 80941B44 00045100 */  sll     $t2, $a0,  4               
/* 08E78 80941B48 4600428D */  trunc.w.s $f10, $f8                  
/* 08E7C 80941B4C 000A5F02 */  srl     $t3, $t2, 28               
/* 08E80 80941B50 000B6080 */  sll     $t4, $t3,  2               
/* 08E84 80941B54 00CC6821 */  addu    $t5, $a2, $t4              
/* 08E88 80941B58 440E5000 */  mfc1    $t6, $f10                  
/* 08E8C 80941B5C 00000000 */  nop
/* 08E90 80941B60 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 08E94 80941B64 01E1C025 */  or      $t8, $t7, $at              ## $t8 = FF460000
/* 08E98 80941B68 AC580004 */  sw      $t8, 0x0004($v0)           ## 00000004
/* 08E9C 80941B6C 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 08EA0 80941B70 00877824 */  and     $t7, $a0, $a3              
/* 08EA4 80941B74 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 08EA8 80941B78 AE1902D0 */  sw      $t9, 0x02D0($s0)           ## 000002D0
/* 08EAC 80941B7C AC450000 */  sw      $a1, 0x0000($v0)           ## 00000000
/* 08EB0 80941B80 8DAE0000 */  lw      $t6, 0x0000($t5)           ## 00000000
/* 08EB4 80941B84 01CFC021 */  addu    $t8, $t6, $t7              
/* 08EB8 80941B88 0308C821 */  addu    $t9, $t8, $t0              
/* 08EBC 80941B8C AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
.L80941B90:
/* 08EC0 80941B90 8FAA0070 */  lw      $t2, 0x0070($sp)           
.L80941B94:
/* 08EC4 80941B94 3C068095 */  lui     $a2, %hi(D_8094AAB8)       ## $a2 = 80950000
/* 08EC8 80941B98 24C6AAB8 */  addiu   $a2, $a2, %lo(D_8094AAB8)  ## $a2 = 8094AAB8
/* 08ECC 80941B9C 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFE8
/* 08ED0 80941BA0 2407185C */  addiu   $a3, $zero, 0x185C         ## $a3 = 0000185C
/* 08ED4 80941BA4 0C031AD5 */  jal     Graph_CloseDisps              
/* 08ED8 80941BA8 8D450000 */  lw      $a1, 0x0000($t2)           ## 00000008
/* 08EDC 80941BAC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 08EE0 80941BB0 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 08EE4 80941BB4 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 08EE8 80941BB8 03E00008 */  jr      $ra                        
/* 08EEC 80941BBC 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000


