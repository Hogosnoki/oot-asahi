glabel func_808520BC
/* 1FEAC 808520BC 8CCE000C */  lw      $t6, 0x000C($a2)           ## 0000000C
/* 1FEB0 808520C0 8CD90018 */  lw      $t9, 0x0018($a2)           ## 00000018
/* 1FEB4 808520C4 8CCF0010 */  lw      $t7, 0x0010($a2)           ## 00000010
/* 1FEB8 808520C8 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 1FEBC 808520CC 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 1FEC0 808520D0 8CD80014 */  lw      $t8, 0x0014($a2)           ## 00000014
/* 1FEC4 808520D4 46802020 */  cvt.s.w $f0, $f4                   
/* 1FEC8 808520D8 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 1FECC 808520DC 8CC8001C */  lw      $t0, 0x001C($a2)           ## 0000001C
/* 1FED0 808520E0 8CC90020 */  lw      $t1, 0x0020($a2)           ## 00000020
/* 1FED4 808520E4 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 1FED8 808520E8 46805120 */  cvt.s.w $f4, $f10                  
/* 1FEDC 808520EC 44895000 */  mtc1    $t1, $f10                  ## $f10 = 0.00
/* 1FEE0 808520F0 94C20002 */  lhu     $v0, 0x0002($a2)           ## 00000002
/* 1FEE4 808520F4 948A1D74 */  lhu     $t2, 0x1D74($a0)           ## 00001D74
/* 1FEE8 808520F8 94CC0004 */  lhu     $t4, 0x0004($a2)           ## 00000004
/* 1FEEC 808520FC 468030A0 */  cvt.s.w $f2, $f6                   
/* 1FEF0 80852100 44883000 */  mtc1    $t0, $f6                   ## $f6 = 0.00
/* 1FEF4 80852104 01425823 */  subu    $t3, $t2, $v0              
/* 1FEF8 80852108 01826823 */  subu    $t5, $t4, $v0              
/* 1FEFC 8085210C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1FF00 80852110 46804320 */  cvt.s.w $f12, $f8                  
/* 1FF04 80852114 46002381 */  sub.s   $f14, $f4, $f0             
/* 1FF08 80852118 46805120 */  cvt.s.w $f4, $f10                  
/* 1FF0C 8085211C 448D5000 */  mtc1    $t5, $f10                  ## $f10 = 0.00
/* 1FF10 80852120 46803220 */  cvt.s.w $f8, $f6                   
/* 1FF14 80852124 448B3000 */  mtc1    $t3, $f6                   ## $f6 = 0.00
/* 1FF18 80852128 460C2481 */  sub.s   $f18, $f4, $f12            
/* 1FF1C 8085212C 46024401 */  sub.s   $f16, $f8, $f2             
/* 1FF20 80852130 46805120 */  cvt.s.w $f4, $f10                  
/* 1FF24 80852134 46803220 */  cvt.s.w $f8, $f6                   
/* 1FF28 80852138 46044183 */  div.s   $f6, $f8, $f4              
/* 1FF2C 8085213C 46067282 */  mul.s   $f10, $f14, $f6            
/* 1FF30 80852140 E7A60004 */  swc1    $f6, 0x0004($sp)           
/* 1FF34 80852144 46005200 */  add.s   $f8, $f10, $f0             
/* 1FF38 80852148 E4A80024 */  swc1    $f8, 0x0024($a1)           ## 00000024
/* 1FF3C 8085214C C7A40004 */  lwc1    $f4, 0x0004($sp)           
/* 1FF40 80852150 46048182 */  mul.s   $f6, $f16, $f4             
/* 1FF44 80852154 46023280 */  add.s   $f10, $f6, $f2             
/* 1FF48 80852158 E4AA0028 */  swc1    $f10, 0x0028($a1)          ## 00000028
/* 1FF4C 8085215C C7A80004 */  lwc1    $f8, 0x0004($sp)           
/* 1FF50 80852160 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 1FF54 80852164 46089102 */  mul.s   $f4, $f18, $f8             
/* 1FF58 80852168 460C2180 */  add.s   $f6, $f4, $f12             
/* 1FF5C 8085216C 03E00008 */  jr      $ra                        
/* 1FF60 80852170 E4A6002C */  swc1    $f6, 0x002C($a1)           ## 0000002C
