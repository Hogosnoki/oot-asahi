glabel func_80839034
/* 06E24 80839034 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 06E28 80839038 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 06E2C 8083903C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 06E30 80839040 AFA40040 */  sw      $a0, 0x0040($sp)           
/* 06E34 80839044 AFA60048 */  sw      $a2, 0x0048($sp)           
/* 06E38 80839048 AFA7004C */  sw      $a3, 0x004C($sp)           
/* 06E3C 8083904C 90AE0002 */  lbu     $t6, 0x0002($a1)           ## 00000002
/* 06E40 80839050 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 06E44 80839054 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 06E48 80839058 55C1015B */  bnel    $t6, $at, .L808395C8       
/* 06E4C 8083905C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 06E50 80839060 8E02067C */  lw      $v0, 0x067C($s0)           ## 0000067C
/* 06E54 80839064 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 06E58 80839068 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 06E5C 8083906C 304F0080 */  andi    $t7, $v0, 0x0080           ## $t7 = 00000000
/* 06E60 80839070 15E000EB */  bne     $t7, $zero, .L80839420     
/* 06E64 80839074 00811821 */  addu    $v1, $a0, $at              
/* 06E68 80839078 80791E15 */  lb      $t9, 0x1E15($v1)           ## 00001E15
/* 06E6C 8083907C 572000E9 */  bnel    $t9, $zero, .L80839424     
/* 06E70 80839080 8FAC0040 */  lw      $t4, 0x0040($sp)           
/* 06E74 80839084 92080444 */  lbu     $t0, 0x0444($s0)           ## 00000444
/* 06E78 80839088 30490001 */  andi    $t1, $v0, 0x0001           ## $t1 = 00000000
/* 06E7C 8083908C 550000E5 */  bnel    $t0, $zero, .L80839424     
/* 06E80 80839090 8FAC0040 */  lw      $t4, 0x0040($sp)           
/* 06E84 80839094 552000E3 */  bnel    $t1, $zero, .L80839424     
/* 06E88 80839098 8FAC0040 */  lw      $t4, 0x0040($sp)           
/* 06E8C 8083909C 10C00008 */  beq     $a2, $zero, .L808390C0     
/* 06E90 808390A0 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 06E94 808390A4 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 06E98 808390A8 00E03025 */  or      $a2, $a3, $zero            ## $a2 = 00000000
/* 06E9C 808390AC 0C01074A */  jal     func_80041D28              
/* 06EA0 808390B0 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 06EA4 808390B4 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 06EA8 808390B8 1440000D */  bne     $v0, $zero, .L808390F0     
/* 06EAC 808390BC 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
.L808390C0:
/* 06EB0 808390C0 3C048085 */  lui     $a0, %hi(D_808535E4)       ## $a0 = 80850000
/* 06EB4 808390C4 8C8435E4 */  lw      $a0, %lo(D_808535E4)($a0)  
/* 06EB8 808390C8 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 06EBC 808390CC 0C20E05B */  jal     func_8083816C              
/* 06EC0 808390D0 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 06EC4 808390D4 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 06EC8 808390D8 104000D1 */  beq     $v0, $zero, .L80839420     
/* 06ECC 808390DC 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 06ED0 808390E0 920B0A7A */  lbu     $t3, 0x0A7A($s0)           ## 00000A7A
/* 06ED4 808390E4 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 06ED8 808390E8 556100CE */  bnel    $t3, $at, .L80839424       
/* 06EDC 808390EC 8FAC0040 */  lw      $t4, 0x0040($sp)           
.L808390F0:
/* 06EE0 808390F0 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 06EE4 808390F4 860C0A84 */  lh      $t4, 0x0A84($s0)           ## 00000A84
/* 06EE8 808390F8 3C012880 */  lui     $at, 0x2880                ## $at = 28800000
/* 06EEC 808390FC 4600218D */  trunc.w.s $f6, $f4                   
/* 06EF0 80839100 440E3000 */  mfc1    $t6, $f6                   
/* 06EF4 80839104 00000000 */  nop
/* 06EF8 80839108 018E7823 */  subu    $t7, $t4, $t6              
/* 06EFC 8083910C AFAF0034 */  sw      $t7, 0x0034($sp)           
/* 06F00 80839110 8E19067C */  lw      $t9, 0x067C($s0)           ## 0000067C
/* 06F04 80839114 03214024 */  and     $t0, $t9, $at              
/* 06F08 80839118 15000011 */  bne     $t0, $zero, .L80839160     
/* 06F0C 8083911C 00000000 */  nop
/* 06F10 80839120 96090088 */  lhu     $t1, 0x0088($s0)           ## 00000088
/* 06F14 80839124 29E10064 */  slti    $at, $t7, 0x0064           
/* 06F18 80839128 31380001 */  andi    $t8, $t1, 0x0001           ## $t8 = 00000000
/* 06F1C 8083912C 1700000C */  bne     $t8, $zero, .L80839160     
/* 06F20 80839130 00000000 */  nop
/* 06F24 80839134 1020000A */  beq     $at, $zero, .L80839160     
/* 06F28 80839138 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 06F2C 8083913C 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 06F30 80839140 3C018085 */  lui     $at, %hi(D_80853600)       ## $at = 80850000
/* 06F34 80839144 C42A3600 */  lwc1    $f10, %lo(D_80853600)($at) 
/* 06F38 80839148 460A403C */  c.lt.s  $f8, $f10                  
/* 06F3C 8083914C 00000000 */  nop
/* 06F40 80839150 45000003 */  bc1f    .L80839160                 
/* 06F44 80839154 00000000 */  nop
/* 06F48 80839158 1000011B */  beq     $zero, $zero, .L808395C8   
/* 06F4C 8083915C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80839160:
/* 06F50 80839160 54A00008 */  bnel    $a1, $zero, .L80839184     
/* 06F54 80839164 8C6B1E04 */  lw      $t3, 0x1E04($v1)           ## 00001E04
/* 06F58 80839168 0C0302D8 */  jal     func_800C0B60              
/* 06F5C 8083916C 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 06F60 80839170 0C026528 */  jal     func_800994A0              
/* 06F64 80839174 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 06F68 80839178 10000049 */  beq     $zero, $zero, .L808392A0   
/* 06F6C 8083917C 8E08067C */  lw      $t0, 0x067C($s0)           ## 0000067C
/* 06F70 80839180 8C6B1E04 */  lw      $t3, 0x1E04($v1)           ## 00001E04
.L80839184:
/* 06F74 80839184 00056840 */  sll     $t5, $a1,  1               
/* 06F78 80839188 8FA70040 */  lw      $a3, 0x0040($sp)           
/* 06F7C 8083918C 016D6021 */  addu    $t4, $t3, $t5              
/* 06F80 80839190 858EFFFE */  lh      $t6, -0x0002($t4)          ## FFFFFFFE
/* 06F84 80839194 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 06F88 80839198 00270821 */  addu    $at, $at, $a3              
/* 06F8C 8083919C A42E1E1A */  sh      $t6, 0x1E1A($at)           ## 00011E1A
/* 06F90 808391A0 84621E1A */  lh      $v0, 0x1E1A($v1)           ## 00001E1A
/* 06F94 808391A4 24017FFF */  addiu   $at, $zero, 0x7FFF         ## $at = 00007FFF
/* 06F98 808391A8 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 06F9C 808391AC 1441000E */  bne     $v0, $at, .L808391E8       
/* 06FA0 808391B0 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 06FA4 808391B4 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 06FA8 808391B8 AC2FF9C4 */  sw      $t7, -0x063C($at)          ## 8015F9C4
/* 06FAC 808391BC 8739F9F4 */  lh      $t9, -0x060C($t9)          ## 8015F9F4
/* 06FB0 808391C0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 06FB4 808391C4 00270821 */  addu    $at, $at, $a3              
/* 06FB8 808391C8 A4391E1A */  sh      $t9, 0x1E1A($at)           ## 00011E1A
/* 06FBC 808391CC 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 06FC0 808391D0 24020003 */  addiu   $v0, $zero, 0x0003         ## $v0 = 00000003
/* 06FC4 808391D4 00270821 */  addu    $at, $at, $a3              
/* 06FC8 808391D8 A0221E5E */  sb      $v0, 0x1E5E($at)           ## 00011E5E
/* 06FCC 808391DC 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 06FD0 808391E0 1000002A */  beq     $zero, $zero, .L8083928C   
/* 06FD4 808391E4 A022FA7D */  sb      $v0, -0x0583($at)          ## 8015FA7D
.L808391E8:
/* 06FD8 808391E8 28417FF9 */  slti    $at, $v0, 0x7FF9           
/* 06FDC 808391EC 14200012 */  bne     $at, $zero, .L80839238     
/* 06FE0 808391F0 24E407C0 */  addiu   $a0, $a3, 0x07C0           ## $a0 = 000007C0
/* 06FE4 808391F4 3C088085 */  lui     $t0, %hi(D_80854514 - 0x7FF9)       ## $t0 = 80850000
/* 06FE8 808391F8 01024021 */  addu    $t0, $t0, $v0              
/* 06FEC 808391FC 9108C51B */  lbu     $t0, %lo(D_80854514 - 0x7FF9)($t0)
/* 06FF0 80839200 90781DEA */  lbu     $t8, 0x1DEA($v1)           ## 00001DEA
/* 06FF4 80839204 3C0D8085 */  lui     $t5, %hi(D_808544F8)       ## $t5 = 80850000
/* 06FF8 80839208 00084840 */  sll     $t1, $t0,  1               
/* 06FFC 8083920C 00185040 */  sll     $t2, $t8,  1               
/* 07000 80839210 012A5821 */  addu    $t3, $t1, $t2              
/* 07004 80839214 01AB6821 */  addu    $t5, $t5, $t3              
/* 07008 80839218 85AD44F8 */  lh      $t5, %lo(D_808544F8)($t5)  
/* 0700C 8083921C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07010 80839220 00270821 */  addu    $at, $at, $a3              
/* 07014 80839224 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 07018 80839228 0C026528 */  jal     func_800994A0              
/* 0701C 8083922C A42D1E1A */  sh      $t5, 0x1E1A($at)           ## 00011E1A
/* 07020 80839230 10000016 */  beq     $zero, $zero, .L8083928C   
/* 07024 80839234 8FA70040 */  lw      $a3, 0x0040($sp)           
.L80839238:
/* 07028 80839238 8FA50048 */  lw      $a1, 0x0048($sp)           
/* 0702C 8083923C 8FA6004C */  lw      $a2, 0x004C($sp)           
/* 07030 80839240 0C0107DF */  jal     func_80041F7C              
/* 07034 80839244 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 07038 80839248 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0703C 8083924C 14410009 */  bne     $v0, $at, .L80839274       
/* 07040 80839250 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 07044 80839254 846C1E1A */  lh      $t4, 0x1E1A($v1)           ## 00001E1A
/* 07048 80839258 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 0704C 8083925C 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 07050 80839260 0C0302D8 */  jal     func_800C0B60              
/* 07054 80839264 A42CF9D8 */  sh      $t4, -0x0628($at)          ## 8015F9D8
/* 07058 80839268 240EFFFE */  addiu   $t6, $zero, 0xFFFE         ## $t6 = FFFFFFFE
/* 0705C 8083926C 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 07060 80839270 AC2EF9C4 */  sw      $t6, -0x063C($at)          ## 8015F9C4
.L80839274:
/* 07064 80839274 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 07068 80839278 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 0706C 8083927C A02FFA23 */  sb      $t7, -0x05DD($at)          ## 8015FA23
/* 07070 80839280 0C026528 */  jal     func_800994A0              
/* 07074 80839284 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 07078 80839288 8FA70040 */  lw      $a3, 0x0040($sp)           
.L8083928C:
/* 0707C 8083928C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07080 80839290 00270821 */  addu    $at, $at, $a3              
/* 07084 80839294 24190014 */  addiu   $t9, $zero, 0x0014         ## $t9 = 00000014
/* 07088 80839298 A0391E15 */  sb      $t9, 0x1E15($at)           ## 00011E15
/* 0708C 8083929C 8E08067C */  lw      $t0, 0x067C($s0)           ## 0000067C
.L808392A0:
/* 07090 808392A0 3C012080 */  lui     $at, 0x2080                ## $at = 20800000
/* 07094 808392A4 0101C024 */  and     $t8, $t0, $at              
/* 07098 808392A8 5700004E */  bnel    $t8, $zero, .L808393E4     
/* 0709C 808392AC 96090088 */  lhu     $t1, 0x0088($s0)           ## 00000088
/* 070A0 808392B0 8E090680 */  lw      $t1, 0x0680($s0)           ## 00000680
/* 070A4 808392B4 00095340 */  sll     $t2, $t1, 13               
/* 070A8 808392B8 0542004A */  bltzl   $t2, .L808393E4            
/* 070AC 808392BC 96090088 */  lhu     $t1, 0x0088($s0)           ## 00000088
/* 070B0 808392C0 0C20CCAE */  jal     func_808332B8              
/* 070B4 808392C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 070B8 808392C8 14400045 */  bne     $v0, $zero, .L808393E0     
/* 070BC 808392CC 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 070C0 808392D0 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 070C4 808392D4 8FA50048 */  lw      $a1, 0x0048($sp)           
/* 070C8 808392D8 0C010753 */  jal     func_80041D4C              
/* 070CC 808392DC 8FA6004C */  lw      $a2, 0x004C($sp)           
/* 070D0 808392E0 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 070D4 808392E4 1041003E */  beq     $v0, $at, .L808393E0       
/* 070D8 808392E8 8FAB0034 */  lw      $t3, 0x0034($sp)           
/* 070DC 808392EC 29610064 */  slti    $at, $t3, 0x0064           
/* 070E0 808392F0 54200005 */  bnel    $at, $zero, .L80839308     
/* 070E4 808392F4 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 070E8 808392F8 960D0088 */  lhu     $t5, 0x0088($s0)           ## 00000088
/* 070EC 808392FC 31AC0001 */  andi    $t4, $t5, 0x0001           ## $t4 = 00000000
/* 070F0 80839300 11800037 */  beq     $t4, $zero, .L808393E0     
/* 070F4 80839304 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
.L80839308:
/* 070F8 80839308 5441000C */  bnel    $v0, $at, .L8083933C       
/* 070FC 8083930C C6000838 */  lwc1    $f0, 0x0838($s0)           ## 00000838
/* 07100 80839310 0C01E233 */  jal     func_800788CC              
/* 07104 80839314 24045805 */  addiu   $a0, $zero, 0x5805         ## $a0 = 00005805
/* 07108 80839318 0C03DA59 */  jal     func_800F6964              
/* 0710C 8083931C 24040005 */  addiu   $a0, $zero, 0x0005         ## $a0 = 00000005
/* 07110 80839320 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 07114 80839324 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 07118 80839328 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
/* 0711C 8083932C A06213E0 */  sb      $v0, 0x13E0($v1)           ## 8015FA40
/* 07120 80839330 10000031 */  beq     $zero, $zero, .L808393F8   
/* 07124 80839334 A06213E1 */  sb      $v0, 0x13E1($v1)           ## 8015FA41
/* 07128 80839338 C6000838 */  lwc1    $f0, 0x0838($s0)           ## 00000838
.L8083933C:
/* 0712C 8083933C 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 07130 80839340 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 07134 80839344 3C188085 */  lui     $t8, %hi(D_808535F4)       ## $t8 = 80850000
/* 07138 80839348 4610003C */  c.lt.s  $f0, $f16                  
/* 0713C 8083934C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 07140 80839350 3C0643C8 */  lui     $a2, 0x43C8                ## $a2 = 43C80000
/* 07144 80839354 45000006 */  bc1f    .L80839370                 
/* 07148 80839358 00000000 */  nop
/* 0714C 8083935C 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 07150 80839360 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 07154 80839364 46000007 */  neg.s   $f0, $f0                   
/* 07158 80839368 01C17821 */  addu    $t7, $t6, $at              
/* 0715C 8083936C A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
.L80839370:
/* 07160 80839370 8F39FA90 */  lw      $t9, -0x0570($t9)          ## 8015FA90
/* 07164 80839374 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 07168 80839378 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 0716C 8083937C 8728006E */  lh      $t0, 0x006E($t9)           ## 8016006E
/* 07170 80839380 44889000 */  mtc1    $t0, $f18                  ## $f18 = 0.00
/* 07174 80839384 00000000 */  nop
/* 07178 80839388 46809120 */  cvt.s.w $f4, $f18                  
/* 0717C 8083938C 46062083 */  div.s   $f2, $f4, $f6              
/* 07180 80839390 4600103C */  c.lt.s  $f2, $f0                   
/* 07184 80839394 00000000 */  nop
/* 07188 80839398 45000003 */  bc1f    .L808393A8                 
/* 0718C 8083939C 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 07190 808393A0 10000003 */  beq     $zero, $zero, .L808393B0   
/* 07194 808393A4 E422FA1C */  swc1    $f2, -0x05E4($at)          ## 8015FA1C
.L808393A8:
/* 07198 808393A8 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 0719C 808393AC E420FA1C */  swc1    $f0, -0x05E4($at)          ## 8015FA1C
.L808393B0:
/* 071A0 808393B0 8F1835F4 */  lw      $t8, %lo(D_808535F4)($t8)  
/* 071A4 808393B4 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 071A8 808393B8 13000003 */  beq     $t8, $zero, .L808393C8     
/* 071AC 808393BC 3C028085 */  lui     $v0, %hi(D_808535FC)       ## $v0 = 80850000
/* 071B0 808393C0 10000002 */  beq     $zero, $zero, .L808393CC   
/* 071B4 808393C4 844235FC */  lh      $v0, %lo(D_808535FC)($v0)  
.L808393C8:
/* 071B8 808393C8 86020032 */  lh      $v0, 0x0032($s0)           ## 00000032
.L808393CC:
/* 071BC 808393CC 00023C00 */  sll     $a3, $v0, 16               
/* 071C0 808393D0 0C20E39C */  jal     func_80838E70              
/* 071C4 808393D4 00073C03 */  sra     $a3, $a3, 16               
/* 071C8 808393D8 10000008 */  beq     $zero, $zero, .L808393FC   
/* 071CC 808393DC 8E0B067C */  lw      $t3, 0x067C($s0)           ## 0000067C
.L808393E0:
/* 071D0 808393E0 96090088 */  lhu     $t1, 0x0088($s0)           ## 00000088
.L808393E4:
/* 071D4 808393E4 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 071D8 808393E8 55400004 */  bnel    $t2, $zero, .L808393FC     
/* 071DC 808393EC 8E0B067C */  lw      $t3, 0x067C($s0)           ## 0000067C
/* 071E0 808393F0 0C20C884 */  jal     func_80832210              
/* 071E4 808393F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L808393F8:
/* 071E8 808393F8 8E0B067C */  lw      $t3, 0x067C($s0)           ## 0000067C
.L808393FC:
/* 071EC 808393FC 3C012000 */  lui     $at, 0x2000                ## $at = 20000000
/* 071F0 80839400 34210001 */  ori     $at, $at, 0x0001           ## $at = 20000001
/* 071F4 80839404 01616825 */  or      $t5, $t3, $at              ## $t5 = 20000001
/* 071F8 80839408 AE0D067C */  sw      $t5, 0x067C($s0)           ## 0000067C
/* 071FC 8083940C 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 07200 80839410 0C20D791 */  jal     func_80835E44              
/* 07204 80839414 2405002F */  addiu   $a1, $zero, 0x002F         ## $a1 = 0000002F
/* 07208 80839418 1000006B */  beq     $zero, $zero, .L808395C8   
/* 0720C 8083941C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80839420:
/* 07210 80839420 8FAC0040 */  lw      $t4, 0x0040($sp)           
.L80839424:
/* 07214 80839424 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 07218 80839428 3C01C57A */  lui     $at, 0xC57A                ## $at = C57A0000
/* 0721C 8083942C 01CC7021 */  addu    $t6, $t6, $t4              
/* 07220 80839430 81CE1E15 */  lb      $t6, 0x1E15($t6)           ## 00011E15
/* 07224 80839434 55C00064 */  bnel    $t6, $zero, .L808395C8     
/* 07228 80839438 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0722C 8083943C C6020028 */  lwc1    $f2, 0x0028($s0)           ## 00000028
/* 07230 80839440 44814000 */  mtc1    $at, $f8                   ## $f8 = -4000.00
/* 07234 80839444 00000000 */  nop
/* 07238 80839448 4608103C */  c.lt.s  $f2, $f8                   
/* 0723C 8083944C 00000000 */  nop
/* 07240 80839450 45030033 */  bc1tl   .L80839520                 
/* 07244 80839454 960B0088 */  lhu     $t3, 0x0088($s0)           ## 00000088
/* 07248 80839458 92020A7A */  lbu     $v0, 0x0A7A($s0)           ## 00000A7A
/* 0724C 8083945C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 07250 80839460 10410002 */  beq     $v0, $at, .L8083946C       
/* 07254 80839464 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 07258 80839468 1441001D */  bne     $v0, $at, .L808394E0       
.L8083946C:
/* 0725C 8083946C 3C018085 */  lui     $at, %hi(D_80853600)       ## $at = 80850000
/* 07260 80839470 C42A3600 */  lwc1    $f10, %lo(D_80853600)($at) 
/* 07264 80839474 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 07268 80839478 44818000 */  mtc1    $at, $f16                  ## $f16 = 100.00
/* 0726C 8083947C 00000000 */  nop
/* 07270 80839480 4610503C */  c.lt.s  $f10, $f16                 
/* 07274 80839484 00000000 */  nop
/* 07278 80839488 45030025 */  bc1tl   .L80839520                 
/* 0727C 8083948C 960B0088 */  lhu     $t3, 0x0088($s0)           ## 00000088
/* 07280 80839490 860F0896 */  lh      $t7, 0x0896($s0)           ## 00000896
/* 07284 80839494 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 07288 80839498 44812000 */  mtc1    $at, $f4                   ## $f4 = 400.00
/* 0728C 8083949C 448F9000 */  mtc1    $t7, $f18                  ## $f18 = 0.00
/* 07290 808394A0 8FB90040 */  lw      $t9, 0x0040($sp)           
/* 07294 808394A4 46809020 */  cvt.s.w $f0, $f18                  
/* 07298 808394A8 4600203C */  c.lt.s  $f4, $f0                   
/* 0729C 808394AC 00000000 */  nop
/* 072A0 808394B0 4503001B */  bc1tl   .L80839520                 
/* 072A4 808394B4 960B0088 */  lhu     $t3, 0x0088($s0)           ## 00000088
/* 072A8 808394B8 872800A4 */  lh      $t0, 0x00A4($t9)           ## 000000A4
/* 072AC 808394BC 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 072B0 808394C0 11010007 */  beq     $t0, $at, .L808394E0       
/* 072B4 808394C4 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 072B8 808394C8 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 072BC 808394CC 00000000 */  nop
/* 072C0 808394D0 4600303C */  c.lt.s  $f6, $f0                   
/* 072C4 808394D4 00000000 */  nop
/* 072C8 808394D8 45030011 */  bc1tl   .L80839520                 
/* 072CC 808394DC 960B0088 */  lhu     $t3, 0x0088($s0)           ## 00000088
.L808394E0:
/* 072D0 808394E0 8FB80040 */  lw      $t8, 0x0040($sp)           
/* 072D4 808394E4 2401001A */  addiu   $at, $zero, 0x001A         ## $at = 0000001A
/* 072D8 808394E8 870900A4 */  lh      $t1, 0x00A4($t8)           ## 000000A4
/* 072DC 808394EC 55210032 */  bnel    $t1, $at, .L808395B8       
/* 072E0 808394F0 4600148D */  trunc.w.s $f18, $f2                  
/* 072E4 808394F4 860A0896 */  lh      $t2, 0x0896($s0)           ## 00000896
/* 072E8 808394F8 3C0143A0 */  lui     $at, 0x43A0                ## $at = 43A00000
/* 072EC 808394FC 44814000 */  mtc1    $at, $f8                   ## $f8 = 320.00
/* 072F0 80839500 448A5000 */  mtc1    $t2, $f10                  ## $f10 = 0.00
/* 072F4 80839504 00000000 */  nop
/* 072F8 80839508 46805420 */  cvt.s.w $f16, $f10                 
/* 072FC 8083950C 4610403C */  c.lt.s  $f8, $f16                  
/* 07300 80839510 00000000 */  nop
/* 07304 80839514 45020028 */  bc1fl   .L808395B8                 
/* 07308 80839518 4600148D */  trunc.w.s $f18, $f2                  
/* 0730C 8083951C 960B0088 */  lhu     $t3, 0x0088($s0)           ## 00000088
.L80839520:
/* 07310 80839520 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 07314 80839524 316D0001 */  andi    $t5, $t3, 0x0001           ## $t5 = 00000000
/* 07318 80839528 11A00014 */  beq     $t5, $zero, .L8083957C     
/* 0731C 8083952C 00000000 */  nop
/* 07320 80839530 920C0A7A */  lbu     $t4, 0x0A7A($s0)           ## 00000A7A
/* 07324 80839534 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 07328 80839538 15810005 */  bne     $t4, $at, .L80839550       
/* 0732C 8083953C 00000000 */  nop
/* 07330 80839540 0C030322 */  jal     func_800C0C88              
/* 07334 80839544 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 07338 80839548 10000004 */  beq     $zero, $zero, .L8083955C   
/* 0733C 8083954C 8FAF0040 */  lw      $t7, 0x0040($sp)           
.L80839550:
/* 07340 80839550 0C0302D8 */  jal     func_800C0B60              
/* 07344 80839554 8FA40040 */  lw      $a0, 0x0040($sp)           
/* 07348 80839558 8FAF0040 */  lw      $t7, 0x0040($sp)           
.L8083955C:
/* 0734C 8083955C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 07350 80839560 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 07354 80839564 002F0821 */  addu    $at, $at, $t7              
/* 07358 80839568 A02E1E5E */  sb      $t6, 0x1E5E($at)           ## 00011E5E
/* 0735C 8083956C 0C01E221 */  jal     func_80078884              
/* 07360 80839570 24045801 */  addiu   $a0, $zero, 0x5801         ## $a0 = 00005801
/* 07364 80839574 1000000F */  beq     $zero, $zero, .L808395B4   
/* 07368 80839578 C6020028 */  lwc1    $f2, 0x0028($s0)           ## 00000028
.L8083957C:
/* 0736C 8083957C 0C20E3D7 */  jal     func_80838F5C              
/* 07370 80839580 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 07374 80839584 92080A7A */  lbu     $t0, 0x0A7A($s0)           ## 00000A7A
/* 07378 80839588 2419270F */  addiu   $t9, $zero, 0x270F         ## $t9 = 0000270F
/* 0737C 8083958C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 07380 80839590 15010005 */  bne     $t0, $at, .L808395A8       
/* 07384 80839594 A6190850 */  sh      $t9, 0x0850($s0)           ## 00000850
/* 07388 80839598 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 0738C 8083959C A218084F */  sb      $t8, 0x084F($s0)           ## 0000084F
/* 07390 808395A0 10000004 */  beq     $zero, $zero, .L808395B4   
/* 07394 808395A4 C6020028 */  lwc1    $f2, 0x0028($s0)           ## 00000028
.L808395A8:
/* 07398 808395A8 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 0739C 808395AC A209084F */  sb      $t1, 0x084F($s0)           ## 0000084F
/* 073A0 808395B0 C6020028 */  lwc1    $f2, 0x0028($s0)           ## 00000028
.L808395B4:
/* 073A4 808395B4 4600148D */  trunc.w.s $f18, $f2                  
.L808395B8:
/* 073A8 808395B8 440B9000 */  mfc1    $t3, $f18                  
/* 073AC 808395BC 00000000 */  nop
/* 073B0 808395C0 A60B0A84 */  sh      $t3, 0x0A84($s0)           ## 00000A84
/* 073B4 808395C4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L808395C8:
/* 073B8 808395C8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 073BC 808395CC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 073C0 808395D0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 073C4 808395D4 03E00008 */  jr      $ra                        
/* 073C8 808395D8 00000000 */  nop
