.late_rodata
glabel D_80B88BBC
    .float 0.03

glabel D_80B88BC0
    .float 1.6

glabel D_80B88BC4
    .float 0.01

glabel D_80B88BC8
    .float 0.8

glabel D_80B88BCC
    .float 1.3

.text
glabel func_80B874E4
/* 00114 80B874E4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00118 80B874E8 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 0011C 80B874EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00120 80B874F0 00451021 */  addu    $v0, $v0, $a1              
/* 00124 80B874F4 904203DC */  lbu     $v0, 0x03DC($v0)           ## 000103DC
/* 00128 80B874F8 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 0012C 80B874FC 2508E660 */  addiu   $t0, $t0, 0xE660           ## $t0 = 8015E660
/* 00130 80B87500 2409000D */  addiu   $t1, $zero, 0x000D         ## $t1 = 0000000D
/* 00134 80B87504 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00138 80B87508 8CA71C44 */  lw      $a3, 0x1C44($a1)           ## 00001C44
/* 0013C 80B8750C 10490004 */  beq     $v0, $t1, .L80B87520       
/* 00140 80B87510 850313C8 */  lh      $v1, 0x13C8($t0)           ## 8015FA28
/* 00144 80B87514 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 00148 80B87518 54410006 */  bnel    $v0, $at, .L80B87534       
/* 0014C 80B8751C 286104B0 */  slti    $at, $v1, 0x04B0           
.L80B87520:
/* 00150 80B87520 0C00B55C */  jal     Actor_Kill
              
/* 00154 80B87524 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00158 80B87528 1000007D */  beq     $zero, $zero, .L80B87720   
/* 0015C 80B8752C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00160 80B87530 286104B0 */  slti    $at, $v1, 0x04B0           
.L80B87534:
/* 00164 80B87534 14200007 */  bne     $at, $zero, .L80B87554     
/* 00168 80B87538 240EFF9C */  addiu   $t6, $zero, 0xFF9C         ## $t6 = FFFFFF9C
/* 0016C 80B8753C A0E00A78 */  sb      $zero, 0x0A78($a3)         ## 00000A78
/* 00170 80B87540 A50013C8 */  sh      $zero, 0x13C8($t0)         ## 000013C8
/* 00174 80B87544 0C00B55C */  jal     Actor_Kill
              
/* 00178 80B87548 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 0017C 80B8754C 10000074 */  beq     $zero, $zero, .L80B87720   
/* 00180 80B87550 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B87554:
/* 00184 80B87554 A0EE0A78 */  sb      $t6, 0x0A78($a3)           ## 00000A78
/* 00188 80B87558 84C2014C */  lh      $v0, 0x014C($a2)           ## 0000014C
/* 0018C 80B8755C C4C0015C */  lwc1    $f0, 0x015C($a2)           ## 0000015C
/* 00190 80B87560 240400FF */  addiu   $a0, $zero, 0x00FF         ## $a0 = 000000FF
/* 00194 80B87564 28410014 */  slti    $at, $v0, 0x0014           
/* 00198 80B87568 E4C00058 */  swc1    $f0, 0x0058($a2)           ## 00000058
/* 0019C 80B8756C 1020001B */  beq     $at, $zero, .L80B875DC     
/* 001A0 80B87570 E4C00050 */  swc1    $f0, 0x0050($a2)           ## 00000050
/* 001A4 80B87574 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 001A8 80B87578 3C0180B9 */  lui     $at, %hi(D_80B88BBC)       ## $at = 80B90000
/* 001AC 80B8757C C4288BBC */  lwc1    $f8, %lo(D_80B88BBC)($at)  
/* 001B0 80B87580 468021A0 */  cvt.s.w $f6, $f4                   
/* 001B4 80B87584 3C0180B9 */  lui     $at, %hi(D_80B88BC0)       ## $at = 80B90000
/* 001B8 80B87588 C4308BC0 */  lwc1    $f16, %lo(D_80B88BC0)($at) 
/* 001BC 80B8758C C4C4015C */  lwc1    $f4, 0x015C($a2)           ## 0000015C
/* 001C0 80B87590 84CF014C */  lh      $t7, 0x014C($a2)           ## 0000014C
/* 001C4 80B87594 3C0180B9 */  lui     $at, %hi(D_80B88BC4)       ## $at = 80B90000
/* 001C8 80B87598 46083282 */  mul.s   $f10, $f6, $f8             
/* 001CC 80B8759C 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 001D0 80B875A0 00000000 */  nop
/* 001D4 80B875A4 46803220 */  cvt.s.w $f8, $f6                   
/* 001D8 80B875A8 C4C6015C */  lwc1    $f6, 0x015C($a2)           ## 0000015C
/* 001DC 80B875AC 460A8481 */  sub.s   $f18, $f16, $f10           
/* 001E0 80B875B0 46049002 */  mul.s   $f0, $f18, $f4             
/* 001E4 80B875B4 E4C00058 */  swc1    $f0, 0x0058($a2)           ## 00000058
/* 001E8 80B875B8 E4C00050 */  swc1    $f0, 0x0050($a2)           ## 00000050
/* 001EC 80B875BC C4308BC4 */  lwc1    $f16, %lo(D_80B88BC4)($at) 
/* 001F0 80B875C0 3C0180B9 */  lui     $at, %hi(D_80B88BC8)       ## $at = 80B90000
/* 001F4 80B875C4 C4328BC8 */  lwc1    $f18, %lo(D_80B88BC8)($at) 
/* 001F8 80B875C8 46104282 */  mul.s   $f10, $f8, $f16            
/* 001FC 80B875CC 46125100 */  add.s   $f4, $f10, $f18            
/* 00200 80B875D0 46062202 */  mul.s   $f8, $f4, $f6              
/* 00204 80B875D4 10000006 */  beq     $zero, $zero, .L80B875F0   
/* 00208 80B875D8 E4C80054 */  swc1    $f8, 0x0054($a2)           ## 00000054
.L80B875DC:
/* 0020C 80B875DC C4C0015C */  lwc1    $f0, 0x015C($a2)           ## 0000015C
/* 00210 80B875E0 C4D0015C */  lwc1    $f16, 0x015C($a2)          ## 0000015C
/* 00214 80B875E4 E4C00058 */  swc1    $f0, 0x0058($a2)           ## 00000058
/* 00218 80B875E8 E4C00050 */  swc1    $f0, 0x0050($a2)           ## 00000050
/* 0021C 80B875EC E4D00054 */  swc1    $f16, 0x0054($a2)          ## 00000054
.L80B875F0:
/* 00220 80B875F0 3C0180B9 */  lui     $at, %hi(D_80B88BCC)       ## $at = 80B90000
/* 00224 80B875F4 C4208BCC */  lwc1    $f0, %lo(D_80B88BCC)($at)  
/* 00228 80B875F8 C4CA0050 */  lwc1    $f10, 0x0050($a2)          ## 00000050
/* 0022C 80B875FC C4C40058 */  lwc1    $f4, 0x0058($a2)           ## 00000058
/* 00230 80B87600 84C2014C */  lh      $v0, 0x014C($a2)           ## 0000014C
/* 00234 80B87604 46005482 */  mul.s   $f18, $f10, $f0            
/* 00238 80B87608 28410014 */  slti    $at, $v0, 0x0014           
/* 0023C 80B8760C 46002182 */  mul.s   $f6, $f4, $f0              
/* 00240 80B87610 E4D20050 */  swc1    $f18, 0x0050($a2)          ## 00000050
/* 00244 80B87614 10200006 */  beq     $at, $zero, .L80B87630     
/* 00248 80B87618 E4C60058 */  swc1    $f6, 0x0058($a2)           ## 00000058
/* 0024C 80B8761C 00022080 */  sll     $a0, $v0,  2               
/* 00250 80B87620 00822023 */  subu    $a0, $a0, $v0              
/* 00254 80B87624 00042080 */  sll     $a0, $a0,  2               
/* 00258 80B87628 10000001 */  beq     $zero, $zero, .L80B87630   
/* 0025C 80B8762C 308400FF */  andi    $a0, $a0, 0x00FF           ## $a0 = 000000FF
.L80B87630:
/* 00260 80B87630 2861049C */  slti    $at, $v1, 0x049C           
/* 00264 80B87634 5420000D */  bnel    $at, $zero, .L80B8766C     
/* 00268 80B87638 2861044C */  slti    $at, $v1, 0x044C           
/* 0026C 80B8763C 00690019 */  multu   $v1, $t1                   
/* 00270 80B87640 24193CEB */  addiu   $t9, $zero, 0x3CEB         ## $t9 = 00003CEB
/* 00274 80B87644 306B0001 */  andi    $t3, $v1, 0x0001           ## $t3 = 00000000
/* 00278 80B87648 0000C012 */  mflo    $t8                        
/* 0027C 80B8764C 03385023 */  subu    $t2, $t9, $t8              
/* 00280 80B87650 1160000D */  beq     $t3, $zero, .L80B87688     
/* 00284 80B87654 A0CA014E */  sb      $t2, 0x014E($a2)           ## 0000014E
/* 00288 80B87658 314C00FF */  andi    $t4, $t2, 0x00FF           ## $t4 = 00000000
/* 0028C 80B8765C 000C6843 */  sra     $t5, $t4,  1               
/* 00290 80B87660 10000009 */  beq     $zero, $zero, .L80B87688   
/* 00294 80B87664 A0CD014E */  sb      $t5, 0x014E($a2)           ## 0000014E
/* 00298 80B87668 2861044C */  slti    $at, $v1, 0x044C           
.L80B8766C:
/* 0029C 80B8766C 14200005 */  bne     $at, $zero, .L80B87684     
/* 002A0 80B87670 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 002A4 80B87674 000379C0 */  sll     $t7, $v1,  7               
/* 002A8 80B87678 25F9007F */  addiu   $t9, $t7, 0x007F           ## $t9 = 0000007F
/* 002AC 80B8767C 10000002 */  beq     $zero, $zero, .L80B87688   
/* 002B0 80B87680 A0D9014E */  sb      $t9, 0x014E($a2)           ## 0000014E
.L80B87684:
/* 002B4 80B87684 A0D8014E */  sb      $t8, 0x014E($a2)           ## 0000014E
.L80B87688:
/* 002B8 80B87688 90CA014E */  lbu     $t2, 0x014E($a2)           ## 0000014E
/* 002BC 80B8768C 008A082A */  slt     $at, $a0, $t2              
/* 002C0 80B87690 50200003 */  beql    $at, $zero, .L80B876A0     
/* 002C4 80B87694 84CB0032 */  lh      $t3, 0x0032($a2)           ## 00000032
/* 002C8 80B87698 A0C4014E */  sb      $a0, 0x014E($a2)           ## 0000014E
/* 002CC 80B8769C 84CB0032 */  lh      $t3, 0x0032($a2)           ## 00000032
.L80B876A0:
/* 002D0 80B876A0 256C03E8 */  addiu   $t4, $t3, 0x03E8           ## $t4 = 000003E8
/* 002D4 80B876A4 A4CC0032 */  sh      $t4, 0x0032($a2)           ## 00000032
/* 002D8 80B876A8 84AD07A0 */  lh      $t5, 0x07A0($a1)           ## 000007A0
/* 002DC 80B876AC 000D7080 */  sll     $t6, $t5,  2               
/* 002E0 80B876B0 00AE7821 */  addu    $t7, $a1, $t6              
/* 002E4 80B876B4 8DE40790 */  lw      $a0, 0x0790($t7)           ## 00000790
/* 002E8 80B876B8 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 002EC 80B876BC 0C016A7D */  jal     func_8005A9F4              
/* 002F0 80B876C0 A7A30018 */  sh      $v1, 0x0018($sp)           
/* 002F4 80B876C4 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 002F8 80B876C8 87A30018 */  lh      $v1, 0x0018($sp)           
/* 002FC 80B876CC 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 00300 80B876D0 84D90032 */  lh      $t9, 0x0032($a2)           ## 00000032
/* 00304 80B876D4 84CA014C */  lh      $t2, 0x014C($a2)           ## 0000014C
/* 00308 80B876D8 2508E660 */  addiu   $t0, $t0, 0xE660           ## $t0 = 8015E660
/* 0030C 80B876DC 0059C021 */  addu    $t8, $v0, $t9              
/* 00310 80B876E0 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 00314 80B876E4 A4D800B6 */  sh      $t8, 0x00B6($a2)           ## 000000B6
/* 00318 80B876E8 A4CB014C */  sh      $t3, 0x014C($a2)           ## 0000014C
/* 0031C 80B876EC 246C0001 */  addiu   $t4, $v1, 0x0001           ## $t4 = 00000001
/* 00320 80B876F0 2861044C */  slti    $at, $v1, 0x044C           
/* 00324 80B876F4 10200006 */  beq     $at, $zero, .L80B87710     
/* 00328 80B876F8 A50C13C8 */  sh      $t4, 0x13C8($t0)           ## 8015FA28
/* 0032C 80B876FC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00330 80B87700 0C00BE5D */  jal     func_8002F974              
/* 00334 80B87704 2405007C */  addiu   $a1, $zero, 0x007C         ## $a1 = 0000007C
/* 00338 80B87708 10000005 */  beq     $zero, $zero, .L80B87720   
/* 0033C 80B8770C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B87710:
/* 00340 80B87710 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00344 80B87714 0C00BE5D */  jal     func_8002F974              
/* 00348 80B87718 240500C0 */  addiu   $a1, $zero, 0x00C0         ## $a1 = 000000C0
/* 0034C 80B8771C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B87720:
/* 00350 80B87720 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00354 80B87724 03E00008 */  jr      $ra                        
/* 00358 80B87728 00000000 */  nop
