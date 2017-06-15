                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
                              4 ; This file was generated Sun May 28 20:21:58 2017
                              5 ;--------------------------------------------------------
                              6 	.module LEDBlink
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _LCDCharThreeShapeData
                             13 	.globl _LCDCharBottomTwoShapeData
                             14 	.globl _LCDCharTopTwoShapeData
                             15 	.globl _LCDCharBottomShapeData
                             16 	.globl _LCDCharMiddleShapeData
                             17 	.globl _LCDCharTopShapeData
                             18 	.globl _LCD_ROW_OFFSETS
                             19 	.globl _main
                             20 	.globl _CY
                             21 	.globl _AC
                             22 	.globl _F0
                             23 	.globl _RS1
                             24 	.globl _RS0
                             25 	.globl _OV
                             26 	.globl _F1
                             27 	.globl _P
                             28 	.globl _PS
                             29 	.globl _PT1
                             30 	.globl _PX1
                             31 	.globl _PT0
                             32 	.globl _PX0
                             33 	.globl _RD
                             34 	.globl _WR
                             35 	.globl _T1
                             36 	.globl _T0
                             37 	.globl _INT1
                             38 	.globl _INT0
                             39 	.globl _TXD
                             40 	.globl _RXD
                             41 	.globl _P3_7
                             42 	.globl _P3_6
                             43 	.globl _P3_5
                             44 	.globl _P3_4
                             45 	.globl _P3_3
                             46 	.globl _P3_2
                             47 	.globl _P3_1
                             48 	.globl _P3_0
                             49 	.globl _EA
                             50 	.globl _ES
                             51 	.globl _ET1
                             52 	.globl _EX1
                             53 	.globl _ET0
                             54 	.globl _EX0
                             55 	.globl _P2_7
                             56 	.globl _P2_6
                             57 	.globl _P2_5
                             58 	.globl _P2_4
                             59 	.globl _P2_3
                             60 	.globl _P2_2
                             61 	.globl _P2_1
                             62 	.globl _P2_0
                             63 	.globl _SM0
                             64 	.globl _SM1
                             65 	.globl _SM2
                             66 	.globl _REN
                             67 	.globl _TB8
                             68 	.globl _RB8
                             69 	.globl _TI
                             70 	.globl _RI
                             71 	.globl _P1_7
                             72 	.globl _P1_6
                             73 	.globl _P1_5
                             74 	.globl _P1_4
                             75 	.globl _P1_3
                             76 	.globl _P1_2
                             77 	.globl _P1_1
                             78 	.globl _P1_0
                             79 	.globl _TF1
                             80 	.globl _TR1
                             81 	.globl _TF0
                             82 	.globl _TR0
                             83 	.globl _IE1
                             84 	.globl _IT1
                             85 	.globl _IE0
                             86 	.globl _IT0
                             87 	.globl _P0_7
                             88 	.globl _P0_6
                             89 	.globl _P0_5
                             90 	.globl _P0_4
                             91 	.globl _P0_3
                             92 	.globl _P0_2
                             93 	.globl _P0_1
                             94 	.globl _P0_0
                             95 	.globl _P5M1
                             96 	.globl _P5M0
                             97 	.globl _P4M1
                             98 	.globl _P4M0
                             99 	.globl _P3M1
                            100 	.globl _P3M0
                            101 	.globl _P2M1
                            102 	.globl _P2M0
                            103 	.globl _P1M1
                            104 	.globl _P1M0
                            105 	.globl _P0M1
                            106 	.globl _P0M0
                            107 	.globl _B
                            108 	.globl _ACC
                            109 	.globl _PSW
                            110 	.globl _IP
                            111 	.globl _P3
                            112 	.globl _IE
                            113 	.globl _P2
                            114 	.globl _SBUF
                            115 	.globl _SCON
                            116 	.globl _P1
                            117 	.globl _TH1
                            118 	.globl _TH0
                            119 	.globl _TL1
                            120 	.globl _TL0
                            121 	.globl _TMOD
                            122 	.globl _TCON
                            123 	.globl _PCON
                            124 	.globl _DPH
                            125 	.globl _DPL
                            126 	.globl _SP
                            127 	.globl _P0
                            128 	.globl _LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2
                            129 	.globl _LCD_CMD_SET_CURSOR_PARM_2
                            130 	.globl _LCD_SEND_8BITS_PARM_2
                            131 	.globl _Delay1ms
                            132 	.globl _ShiftRegisterInit
                            133 	.globl _ShiftRegisterChangePinState
                            134 	.globl _LCD_SEND_4BITS
                            135 	.globl _LCD_SEND_8BITS
                            136 	.globl _LCD_CMD_CLEAR
                            137 	.globl _LCD_CMD_SET_CURSOR
                            138 	.globl _LCD_CMD_UPLOAD_CUSTOM_CHAR
                            139 	.globl _LCD_INIT
                            140 ;--------------------------------------------------------
                            141 ; special function registers
                            142 ;--------------------------------------------------------
                            143 	.area RSEG    (ABS,DATA)
   0000                     144 	.org 0x0000
                     0080   145 G$P0$0$0 == 0x0080
                     0080   146 _P0	=	0x0080
                     0081   147 G$SP$0$0 == 0x0081
                     0081   148 _SP	=	0x0081
                     0082   149 G$DPL$0$0 == 0x0082
                     0082   150 _DPL	=	0x0082
                     0083   151 G$DPH$0$0 == 0x0083
                     0083   152 _DPH	=	0x0083
                     0087   153 G$PCON$0$0 == 0x0087
                     0087   154 _PCON	=	0x0087
                     0088   155 G$TCON$0$0 == 0x0088
                     0088   156 _TCON	=	0x0088
                     0089   157 G$TMOD$0$0 == 0x0089
                     0089   158 _TMOD	=	0x0089
                     008A   159 G$TL0$0$0 == 0x008a
                     008A   160 _TL0	=	0x008a
                     008B   161 G$TL1$0$0 == 0x008b
                     008B   162 _TL1	=	0x008b
                     008C   163 G$TH0$0$0 == 0x008c
                     008C   164 _TH0	=	0x008c
                     008D   165 G$TH1$0$0 == 0x008d
                     008D   166 _TH1	=	0x008d
                     0090   167 G$P1$0$0 == 0x0090
                     0090   168 _P1	=	0x0090
                     0098   169 G$SCON$0$0 == 0x0098
                     0098   170 _SCON	=	0x0098
                     0099   171 G$SBUF$0$0 == 0x0099
                     0099   172 _SBUF	=	0x0099
                     00A0   173 G$P2$0$0 == 0x00a0
                     00A0   174 _P2	=	0x00a0
                     00A8   175 G$IE$0$0 == 0x00a8
                     00A8   176 _IE	=	0x00a8
                     00B0   177 G$P3$0$0 == 0x00b0
                     00B0   178 _P3	=	0x00b0
                     00B8   179 G$IP$0$0 == 0x00b8
                     00B8   180 _IP	=	0x00b8
                     00D0   181 G$PSW$0$0 == 0x00d0
                     00D0   182 _PSW	=	0x00d0
                     00E0   183 G$ACC$0$0 == 0x00e0
                     00E0   184 _ACC	=	0x00e0
                     00F0   185 G$B$0$0 == 0x00f0
                     00F0   186 _B	=	0x00f0
                     0094   187 G$P0M0$0$0 == 0x0094
                     0094   188 _P0M0	=	0x0094
                     0093   189 G$P0M1$0$0 == 0x0093
                     0093   190 _P0M1	=	0x0093
                     0092   191 G$P1M0$0$0 == 0x0092
                     0092   192 _P1M0	=	0x0092
                     0091   193 G$P1M1$0$0 == 0x0091
                     0091   194 _P1M1	=	0x0091
                     0096   195 G$P2M0$0$0 == 0x0096
                     0096   196 _P2M0	=	0x0096
                     0095   197 G$P2M1$0$0 == 0x0095
                     0095   198 _P2M1	=	0x0095
                     00B2   199 G$P3M0$0$0 == 0x00b2
                     00B2   200 _P3M0	=	0x00b2
                     00B1   201 G$P3M1$0$0 == 0x00b1
                     00B1   202 _P3M1	=	0x00b1
                     00B4   203 G$P4M0$0$0 == 0x00b4
                     00B4   204 _P4M0	=	0x00b4
                     00B3   205 G$P4M1$0$0 == 0x00b3
                     00B3   206 _P4M1	=	0x00b3
                     00CA   207 G$P5M0$0$0 == 0x00ca
                     00CA   208 _P5M0	=	0x00ca
                     00C9   209 G$P5M1$0$0 == 0x00c9
                     00C9   210 _P5M1	=	0x00c9
                            211 ;--------------------------------------------------------
                            212 ; special function bits
                            213 ;--------------------------------------------------------
                            214 	.area RSEG    (ABS,DATA)
   0000                     215 	.org 0x0000
                     0080   216 G$P0_0$0$0 == 0x0080
                     0080   217 _P0_0	=	0x0080
                     0081   218 G$P0_1$0$0 == 0x0081
                     0081   219 _P0_1	=	0x0081
                     0082   220 G$P0_2$0$0 == 0x0082
                     0082   221 _P0_2	=	0x0082
                     0083   222 G$P0_3$0$0 == 0x0083
                     0083   223 _P0_3	=	0x0083
                     0084   224 G$P0_4$0$0 == 0x0084
                     0084   225 _P0_4	=	0x0084
                     0085   226 G$P0_5$0$0 == 0x0085
                     0085   227 _P0_5	=	0x0085
                     0086   228 G$P0_6$0$0 == 0x0086
                     0086   229 _P0_6	=	0x0086
                     0087   230 G$P0_7$0$0 == 0x0087
                     0087   231 _P0_7	=	0x0087
                     0088   232 G$IT0$0$0 == 0x0088
                     0088   233 _IT0	=	0x0088
                     0089   234 G$IE0$0$0 == 0x0089
                     0089   235 _IE0	=	0x0089
                     008A   236 G$IT1$0$0 == 0x008a
                     008A   237 _IT1	=	0x008a
                     008B   238 G$IE1$0$0 == 0x008b
                     008B   239 _IE1	=	0x008b
                     008C   240 G$TR0$0$0 == 0x008c
                     008C   241 _TR0	=	0x008c
                     008D   242 G$TF0$0$0 == 0x008d
                     008D   243 _TF0	=	0x008d
                     008E   244 G$TR1$0$0 == 0x008e
                     008E   245 _TR1	=	0x008e
                     008F   246 G$TF1$0$0 == 0x008f
                     008F   247 _TF1	=	0x008f
                     0090   248 G$P1_0$0$0 == 0x0090
                     0090   249 _P1_0	=	0x0090
                     0091   250 G$P1_1$0$0 == 0x0091
                     0091   251 _P1_1	=	0x0091
                     0092   252 G$P1_2$0$0 == 0x0092
                     0092   253 _P1_2	=	0x0092
                     0093   254 G$P1_3$0$0 == 0x0093
                     0093   255 _P1_3	=	0x0093
                     0094   256 G$P1_4$0$0 == 0x0094
                     0094   257 _P1_4	=	0x0094
                     0095   258 G$P1_5$0$0 == 0x0095
                     0095   259 _P1_5	=	0x0095
                     0096   260 G$P1_6$0$0 == 0x0096
                     0096   261 _P1_6	=	0x0096
                     0097   262 G$P1_7$0$0 == 0x0097
                     0097   263 _P1_7	=	0x0097
                     0098   264 G$RI$0$0 == 0x0098
                     0098   265 _RI	=	0x0098
                     0099   266 G$TI$0$0 == 0x0099
                     0099   267 _TI	=	0x0099
                     009A   268 G$RB8$0$0 == 0x009a
                     009A   269 _RB8	=	0x009a
                     009B   270 G$TB8$0$0 == 0x009b
                     009B   271 _TB8	=	0x009b
                     009C   272 G$REN$0$0 == 0x009c
                     009C   273 _REN	=	0x009c
                     009D   274 G$SM2$0$0 == 0x009d
                     009D   275 _SM2	=	0x009d
                     009E   276 G$SM1$0$0 == 0x009e
                     009E   277 _SM1	=	0x009e
                     009F   278 G$SM0$0$0 == 0x009f
                     009F   279 _SM0	=	0x009f
                     00A0   280 G$P2_0$0$0 == 0x00a0
                     00A0   281 _P2_0	=	0x00a0
                     00A1   282 G$P2_1$0$0 == 0x00a1
                     00A1   283 _P2_1	=	0x00a1
                     00A2   284 G$P2_2$0$0 == 0x00a2
                     00A2   285 _P2_2	=	0x00a2
                     00A3   286 G$P2_3$0$0 == 0x00a3
                     00A3   287 _P2_3	=	0x00a3
                     00A4   288 G$P2_4$0$0 == 0x00a4
                     00A4   289 _P2_4	=	0x00a4
                     00A5   290 G$P2_5$0$0 == 0x00a5
                     00A5   291 _P2_5	=	0x00a5
                     00A6   292 G$P2_6$0$0 == 0x00a6
                     00A6   293 _P2_6	=	0x00a6
                     00A7   294 G$P2_7$0$0 == 0x00a7
                     00A7   295 _P2_7	=	0x00a7
                     00A8   296 G$EX0$0$0 == 0x00a8
                     00A8   297 _EX0	=	0x00a8
                     00A9   298 G$ET0$0$0 == 0x00a9
                     00A9   299 _ET0	=	0x00a9
                     00AA   300 G$EX1$0$0 == 0x00aa
                     00AA   301 _EX1	=	0x00aa
                     00AB   302 G$ET1$0$0 == 0x00ab
                     00AB   303 _ET1	=	0x00ab
                     00AC   304 G$ES$0$0 == 0x00ac
                     00AC   305 _ES	=	0x00ac
                     00AF   306 G$EA$0$0 == 0x00af
                     00AF   307 _EA	=	0x00af
                     00B0   308 G$P3_0$0$0 == 0x00b0
                     00B0   309 _P3_0	=	0x00b0
                     00B1   310 G$P3_1$0$0 == 0x00b1
                     00B1   311 _P3_1	=	0x00b1
                     00B2   312 G$P3_2$0$0 == 0x00b2
                     00B2   313 _P3_2	=	0x00b2
                     00B3   314 G$P3_3$0$0 == 0x00b3
                     00B3   315 _P3_3	=	0x00b3
                     00B4   316 G$P3_4$0$0 == 0x00b4
                     00B4   317 _P3_4	=	0x00b4
                     00B5   318 G$P3_5$0$0 == 0x00b5
                     00B5   319 _P3_5	=	0x00b5
                     00B6   320 G$P3_6$0$0 == 0x00b6
                     00B6   321 _P3_6	=	0x00b6
                     00B7   322 G$P3_7$0$0 == 0x00b7
                     00B7   323 _P3_7	=	0x00b7
                     00B0   324 G$RXD$0$0 == 0x00b0
                     00B0   325 _RXD	=	0x00b0
                     00B1   326 G$TXD$0$0 == 0x00b1
                     00B1   327 _TXD	=	0x00b1
                     00B2   328 G$INT0$0$0 == 0x00b2
                     00B2   329 _INT0	=	0x00b2
                     00B3   330 G$INT1$0$0 == 0x00b3
                     00B3   331 _INT1	=	0x00b3
                     00B4   332 G$T0$0$0 == 0x00b4
                     00B4   333 _T0	=	0x00b4
                     00B5   334 G$T1$0$0 == 0x00b5
                     00B5   335 _T1	=	0x00b5
                     00B6   336 G$WR$0$0 == 0x00b6
                     00B6   337 _WR	=	0x00b6
                     00B7   338 G$RD$0$0 == 0x00b7
                     00B7   339 _RD	=	0x00b7
                     00B8   340 G$PX0$0$0 == 0x00b8
                     00B8   341 _PX0	=	0x00b8
                     00B9   342 G$PT0$0$0 == 0x00b9
                     00B9   343 _PT0	=	0x00b9
                     00BA   344 G$PX1$0$0 == 0x00ba
                     00BA   345 _PX1	=	0x00ba
                     00BB   346 G$PT1$0$0 == 0x00bb
                     00BB   347 _PT1	=	0x00bb
                     00BC   348 G$PS$0$0 == 0x00bc
                     00BC   349 _PS	=	0x00bc
                     00D0   350 G$P$0$0 == 0x00d0
                     00D0   351 _P	=	0x00d0
                     00D1   352 G$F1$0$0 == 0x00d1
                     00D1   353 _F1	=	0x00d1
                     00D2   354 G$OV$0$0 == 0x00d2
                     00D2   355 _OV	=	0x00d2
                     00D3   356 G$RS0$0$0 == 0x00d3
                     00D3   357 _RS0	=	0x00d3
                     00D4   358 G$RS1$0$0 == 0x00d4
                     00D4   359 _RS1	=	0x00d4
                     00D5   360 G$F0$0$0 == 0x00d5
                     00D5   361 _F0	=	0x00d5
                     00D6   362 G$AC$0$0 == 0x00d6
                     00D6   363 _AC	=	0x00d6
                     00D7   364 G$CY$0$0 == 0x00d7
                     00D7   365 _CY	=	0x00d7
                            366 ;--------------------------------------------------------
                            367 ; overlayable register banks
                            368 ;--------------------------------------------------------
                            369 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     370 	.ds 8
                            371 ;--------------------------------------------------------
                            372 ; internal ram data
                            373 ;--------------------------------------------------------
                            374 	.area DSEG    (DATA)
                     0000   375 FLEDBlink$LCD_PINS_SHIFT_REG_VALUES$0$0==.
   0008                     376 _LCD_PINS_SHIFT_REG_VALUES:
   0008                     377 	.ds 1
                     0001   378 LLEDBlink.LCD_SEND_8BITS$isCommand$1$52==.
   0009                     379 _LCD_SEND_8BITS_PARM_2:
   0009                     380 	.ds 1
                     0002   381 LLEDBlink.LCD_CMD_SET_CURSOR$row$1$59==.
   000A                     382 _LCD_CMD_SET_CURSOR_PARM_2:
   000A                     383 	.ds 1
                     0003   384 LLEDBlink.LCD_CMD_UPLOAD_CUSTOM_CHAR$charmap$1$62==.
   000B                     385 _LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2:
   000B                     386 	.ds 3
                            387 ;--------------------------------------------------------
                            388 ; overlayable items in internal ram 
                            389 ;--------------------------------------------------------
                            390 ;--------------------------------------------------------
                            391 ; Stack segment in internal ram 
                            392 ;--------------------------------------------------------
                            393 	.area	SSEG	(DATA)
   000E                     394 __start__stack:
   000E                     395 	.ds	1
                            396 
                            397 ;--------------------------------------------------------
                            398 ; indirectly addressable internal ram data
                            399 ;--------------------------------------------------------
                            400 	.area ISEG    (DATA)
                            401 ;--------------------------------------------------------
                            402 ; absolute internal ram data
                            403 ;--------------------------------------------------------
                            404 	.area IABS    (ABS,DATA)
                            405 	.area IABS    (ABS,DATA)
                            406 ;--------------------------------------------------------
                            407 ; bit data
                            408 ;--------------------------------------------------------
                            409 	.area BSEG    (BIT)
                            410 ;--------------------------------------------------------
                            411 ; paged external ram data
                            412 ;--------------------------------------------------------
                            413 	.area PSEG    (PAG,XDATA)
                            414 ;--------------------------------------------------------
                            415 ; external ram data
                            416 ;--------------------------------------------------------
                            417 	.area XSEG    (XDATA)
                            418 ;--------------------------------------------------------
                            419 ; absolute external ram data
                            420 ;--------------------------------------------------------
                            421 	.area XABS    (ABS,XDATA)
                            422 ;--------------------------------------------------------
                            423 ; external initialized ram data
                            424 ;--------------------------------------------------------
                            425 	.area XISEG   (XDATA)
                            426 	.area HOME    (CODE)
                            427 	.area GSINIT0 (CODE)
                            428 	.area GSINIT1 (CODE)
                            429 	.area GSINIT2 (CODE)
                            430 	.area GSINIT3 (CODE)
                            431 	.area GSINIT4 (CODE)
                            432 	.area GSINIT5 (CODE)
                            433 	.area GSINIT  (CODE)
                            434 	.area GSFINAL (CODE)
                            435 	.area CSEG    (CODE)
                            436 ;--------------------------------------------------------
                            437 ; interrupt vector 
                            438 ;--------------------------------------------------------
                            439 	.area HOME    (CODE)
   0000                     440 __interrupt_vect:
   0000 02 00 06      [24]  441 	ljmp	__sdcc_gsinit_startup
                            442 ;--------------------------------------------------------
                            443 ; global & static initialisations
                            444 ;--------------------------------------------------------
                            445 	.area HOME    (CODE)
                            446 	.area GSINIT  (CODE)
                            447 	.area GSFINAL (CODE)
                            448 	.area GSINIT  (CODE)
                            449 	.globl __sdcc_gsinit_startup
                            450 	.globl __sdcc_program_startup
                            451 	.globl __start__stack
                            452 	.globl __mcs51_genXINIT
                            453 	.globl __mcs51_genXRAMCLEAR
                            454 	.globl __mcs51_genRAMCLEAR
                     0000   455 	C$LCDInterface.c$6$1$74 ==.
                            456 ;	src/LCDInterface.c:6: static unsigned char LCD_PINS_SHIFT_REG_VALUES = 0x00;
   005F 75 08 00      [24]  457 	mov	_LCD_PINS_SHIFT_REG_VALUES,#0x00
                            458 	.area GSFINAL (CODE)
   0062 02 00 03      [24]  459 	ljmp	__sdcc_program_startup
                            460 ;--------------------------------------------------------
                            461 ; Home
                            462 ;--------------------------------------------------------
                            463 	.area HOME    (CODE)
                            464 	.area HOME    (CODE)
   0003                     465 __sdcc_program_startup:
   0003 02 03 9C      [24]  466 	ljmp	_main
                            467 ;	return from main will return to caller
                            468 ;--------------------------------------------------------
                            469 ; code
                            470 ;--------------------------------------------------------
                            471 	.area CSEG    (CODE)
                            472 ;------------------------------------------------------------
                            473 ;Allocation info for local variables in function 'Delay1ms'
                            474 ;------------------------------------------------------------
                            475 ;i                         Allocated to registers r6 r7 
                            476 ;------------------------------------------------------------
                     0000   477 	G$Delay1ms$0$0 ==.
                     0000   478 	C$Timing.c$7$0$0 ==.
                            479 ;	src/Timing.c:7: void Delay1ms(void)
                            480 ;	-----------------------------------------
                            481 ;	 function Delay1ms
                            482 ;	-----------------------------------------
   0065                     483 _Delay1ms:
                     0007   484 	ar7 = 0x07
                     0006   485 	ar6 = 0x06
                     0005   486 	ar5 = 0x05
                     0004   487 	ar4 = 0x04
                     0003   488 	ar3 = 0x03
                     0002   489 	ar2 = 0x02
                     0001   490 	ar1 = 0x01
                     0000   491 	ar0 = 0x00
                     0000   492 	C$Timing.c$10$1$2 ==.
                            493 ;	src/Timing.c:10: for(i = 0; i < (CPU_FREQUENCY_IN_KHZ / 128); i++)
   0065 7E 2B         [12]  494 	mov	r6,#0x2B
   0067 7F 00         [12]  495 	mov	r7,#0x00
   0069                     496 00104$:
                     0004   497 	C$Timing.c$13$2$3 ==.
                            498 ;	src/Timing.c:13: __asm__("nop");
   0069 00            [12]  499 	nop
                     0005   500 	C$Timing.c$14$2$3 ==.
                            501 ;	src/Timing.c:14: __asm__("nop");
   006A 00            [12]  502 	nop
                     0006   503 	C$Timing.c$15$2$3 ==.
                            504 ;	src/Timing.c:15: __asm__("nop");
   006B 00            [12]  505 	nop
                     0007   506 	C$Timing.c$16$2$3 ==.
                            507 ;	src/Timing.c:16: __asm__("nop");
   006C 00            [12]  508 	nop
                     0008   509 	C$Timing.c$17$2$3 ==.
                            510 ;	src/Timing.c:17: __asm__("nop");
   006D 00            [12]  511 	nop
                     0009   512 	C$Timing.c$18$2$3 ==.
                            513 ;	src/Timing.c:18: __asm__("nop");
   006E 00            [12]  514 	nop
                     000A   515 	C$Timing.c$19$2$3 ==.
                            516 ;	src/Timing.c:19: __asm__("nop");
   006F 00            [12]  517 	nop
                     000B   518 	C$Timing.c$20$2$3 ==.
                            519 ;	src/Timing.c:20: __asm__("nop");
   0070 00            [12]  520 	nop
                     000C   521 	C$Timing.c$21$2$3 ==.
                            522 ;	src/Timing.c:21: __asm__("nop");
   0071 00            [12]  523 	nop
                     000D   524 	C$Timing.c$22$2$3 ==.
                            525 ;	src/Timing.c:22: __asm__("nop");
   0072 00            [12]  526 	nop
                     000E   527 	C$Timing.c$23$2$3 ==.
                            528 ;	src/Timing.c:23: __asm__("nop");
   0073 00            [12]  529 	nop
                     000F   530 	C$Timing.c$24$2$3 ==.
                            531 ;	src/Timing.c:24: __asm__("nop");
   0074 00            [12]  532 	nop
                     0010   533 	C$Timing.c$25$2$3 ==.
                            534 ;	src/Timing.c:25: __asm__("nop");
   0075 00            [12]  535 	nop
                     0011   536 	C$Timing.c$26$2$3 ==.
                            537 ;	src/Timing.c:26: __asm__("nop");
   0076 00            [12]  538 	nop
                     0012   539 	C$Timing.c$27$2$3 ==.
                            540 ;	src/Timing.c:27: __asm__("nop");
   0077 00            [12]  541 	nop
                     0013   542 	C$Timing.c$28$2$3 ==.
                            543 ;	src/Timing.c:28: __asm__("nop");
   0078 00            [12]  544 	nop
                     0014   545 	C$Timing.c$29$2$3 ==.
                            546 ;	src/Timing.c:29: __asm__("nop");
   0079 00            [12]  547 	nop
                     0015   548 	C$Timing.c$30$2$3 ==.
                            549 ;	src/Timing.c:30: __asm__("nop");
   007A 00            [12]  550 	nop
                     0016   551 	C$Timing.c$31$2$3 ==.
                            552 ;	src/Timing.c:31: __asm__("nop");
   007B 00            [12]  553 	nop
                     0017   554 	C$Timing.c$32$2$3 ==.
                            555 ;	src/Timing.c:32: __asm__("nop");
   007C 00            [12]  556 	nop
                     0018   557 	C$Timing.c$33$2$3 ==.
                            558 ;	src/Timing.c:33: __asm__("nop");
   007D 00            [12]  559 	nop
                     0019   560 	C$Timing.c$34$2$3 ==.
                            561 ;	src/Timing.c:34: __asm__("nop");
   007E 00            [12]  562 	nop
                     001A   563 	C$Timing.c$35$2$3 ==.
                            564 ;	src/Timing.c:35: __asm__("nop");
   007F 00            [12]  565 	nop
                     001B   566 	C$Timing.c$36$2$3 ==.
                            567 ;	src/Timing.c:36: __asm__("nop");
   0080 00            [12]  568 	nop
                     001C   569 	C$Timing.c$37$2$3 ==.
                            570 ;	src/Timing.c:37: __asm__("nop");
   0081 00            [12]  571 	nop
                     001D   572 	C$Timing.c$38$2$3 ==.
                            573 ;	src/Timing.c:38: __asm__("nop");
   0082 00            [12]  574 	nop
                     001E   575 	C$Timing.c$39$2$3 ==.
                            576 ;	src/Timing.c:39: __asm__("nop");
   0083 00            [12]  577 	nop
                     001F   578 	C$Timing.c$40$2$3 ==.
                            579 ;	src/Timing.c:40: __asm__("nop");
   0084 00            [12]  580 	nop
                     0020   581 	C$Timing.c$41$2$3 ==.
                            582 ;	src/Timing.c:41: __asm__("nop");
   0085 00            [12]  583 	nop
                     0021   584 	C$Timing.c$42$2$3 ==.
                            585 ;	src/Timing.c:42: __asm__("nop");
   0086 00            [12]  586 	nop
                     0022   587 	C$Timing.c$43$2$3 ==.
                            588 ;	src/Timing.c:43: __asm__("nop");
   0087 00            [12]  589 	nop
                     0023   590 	C$Timing.c$44$2$3 ==.
                            591 ;	src/Timing.c:44: __asm__("nop");
   0088 00            [12]  592 	nop
                     0024   593 	C$Timing.c$45$2$3 ==.
                            594 ;	src/Timing.c:45: __asm__("nop");
   0089 00            [12]  595 	nop
                     0025   596 	C$Timing.c$46$2$3 ==.
                            597 ;	src/Timing.c:46: __asm__("nop");
   008A 00            [12]  598 	nop
                     0026   599 	C$Timing.c$47$2$3 ==.
                            600 ;	src/Timing.c:47: __asm__("nop");
   008B 00            [12]  601 	nop
                     0027   602 	C$Timing.c$48$2$3 ==.
                            603 ;	src/Timing.c:48: __asm__("nop");
   008C 00            [12]  604 	nop
                     0028   605 	C$Timing.c$49$2$3 ==.
                            606 ;	src/Timing.c:49: __asm__("nop");
   008D 00            [12]  607 	nop
                     0029   608 	C$Timing.c$50$2$3 ==.
                            609 ;	src/Timing.c:50: __asm__("nop");
   008E 00            [12]  610 	nop
                     002A   611 	C$Timing.c$51$2$3 ==.
                            612 ;	src/Timing.c:51: __asm__("nop");
   008F 00            [12]  613 	nop
                     002B   614 	C$Timing.c$52$2$3 ==.
                            615 ;	src/Timing.c:52: __asm__("nop");
   0090 00            [12]  616 	nop
                     002C   617 	C$Timing.c$53$2$3 ==.
                            618 ;	src/Timing.c:53: __asm__("nop");
   0091 00            [12]  619 	nop
                     002D   620 	C$Timing.c$54$2$3 ==.
                            621 ;	src/Timing.c:54: __asm__("nop");
   0092 00            [12]  622 	nop
                     002E   623 	C$Timing.c$55$2$3 ==.
                            624 ;	src/Timing.c:55: __asm__("nop");
   0093 00            [12]  625 	nop
                     002F   626 	C$Timing.c$56$2$3 ==.
                            627 ;	src/Timing.c:56: __asm__("nop");
   0094 00            [12]  628 	nop
                     0030   629 	C$Timing.c$57$2$3 ==.
                            630 ;	src/Timing.c:57: __asm__("nop");
   0095 00            [12]  631 	nop
                     0031   632 	C$Timing.c$58$2$3 ==.
                            633 ;	src/Timing.c:58: __asm__("nop");
   0096 00            [12]  634 	nop
                     0032   635 	C$Timing.c$59$2$3 ==.
                            636 ;	src/Timing.c:59: __asm__("nop");
   0097 00            [12]  637 	nop
                     0033   638 	C$Timing.c$60$2$3 ==.
                            639 ;	src/Timing.c:60: __asm__("nop");
   0098 00            [12]  640 	nop
                     0034   641 	C$Timing.c$61$2$3 ==.
                            642 ;	src/Timing.c:61: __asm__("nop");
   0099 00            [12]  643 	nop
                     0035   644 	C$Timing.c$62$2$3 ==.
                            645 ;	src/Timing.c:62: __asm__("nop");
   009A 00            [12]  646 	nop
                     0036   647 	C$Timing.c$63$2$3 ==.
                            648 ;	src/Timing.c:63: __asm__("nop");
   009B 00            [12]  649 	nop
                     0037   650 	C$Timing.c$64$2$3 ==.
                            651 ;	src/Timing.c:64: __asm__("nop");
   009C 00            [12]  652 	nop
                     0038   653 	C$Timing.c$65$2$3 ==.
                            654 ;	src/Timing.c:65: __asm__("nop");
   009D 00            [12]  655 	nop
                     0039   656 	C$Timing.c$66$2$3 ==.
                            657 ;	src/Timing.c:66: __asm__("nop");
   009E 00            [12]  658 	nop
                     003A   659 	C$Timing.c$67$2$3 ==.
                            660 ;	src/Timing.c:67: __asm__("nop");
   009F 00            [12]  661 	nop
                     003B   662 	C$Timing.c$68$2$3 ==.
                            663 ;	src/Timing.c:68: __asm__("nop");
   00A0 00            [12]  664 	nop
                     003C   665 	C$Timing.c$69$2$3 ==.
                            666 ;	src/Timing.c:69: __asm__("nop");
   00A1 00            [12]  667 	nop
                     003D   668 	C$Timing.c$70$2$3 ==.
                            669 ;	src/Timing.c:70: __asm__("nop");
   00A2 00            [12]  670 	nop
                     003E   671 	C$Timing.c$71$2$3 ==.
                            672 ;	src/Timing.c:71: __asm__("nop");
   00A3 00            [12]  673 	nop
                     003F   674 	C$Timing.c$72$2$3 ==.
                            675 ;	src/Timing.c:72: __asm__("nop");
   00A4 00            [12]  676 	nop
                     0040   677 	C$Timing.c$73$2$3 ==.
                            678 ;	src/Timing.c:73: __asm__("nop");
   00A5 00            [12]  679 	nop
                     0041   680 	C$Timing.c$74$2$3 ==.
                            681 ;	src/Timing.c:74: __asm__("nop");
   00A6 00            [12]  682 	nop
                     0042   683 	C$Timing.c$75$2$3 ==.
                            684 ;	src/Timing.c:75: __asm__("nop");
   00A7 00            [12]  685 	nop
                     0043   686 	C$Timing.c$76$2$3 ==.
                            687 ;	src/Timing.c:76: __asm__("nop");
   00A8 00            [12]  688 	nop
                     0044   689 	C$Timing.c$77$2$3 ==.
                            690 ;	src/Timing.c:77: __asm__("nop");
   00A9 00            [12]  691 	nop
                     0045   692 	C$Timing.c$78$2$3 ==.
                            693 ;	src/Timing.c:78: __asm__("nop");
   00AA 00            [12]  694 	nop
                     0046   695 	C$Timing.c$79$2$3 ==.
                            696 ;	src/Timing.c:79: __asm__("nop");
   00AB 00            [12]  697 	nop
                     0047   698 	C$Timing.c$80$2$3 ==.
                            699 ;	src/Timing.c:80: __asm__("nop");
   00AC 00            [12]  700 	nop
                     0048   701 	C$Timing.c$81$2$3 ==.
                            702 ;	src/Timing.c:81: __asm__("nop");
   00AD 00            [12]  703 	nop
                     0049   704 	C$Timing.c$82$2$3 ==.
                            705 ;	src/Timing.c:82: __asm__("nop");
   00AE 00            [12]  706 	nop
                     004A   707 	C$Timing.c$83$2$3 ==.
                            708 ;	src/Timing.c:83: __asm__("nop");
   00AF 00            [12]  709 	nop
                     004B   710 	C$Timing.c$84$2$3 ==.
                            711 ;	src/Timing.c:84: __asm__("nop");
   00B0 00            [12]  712 	nop
                     004C   713 	C$Timing.c$85$2$3 ==.
                            714 ;	src/Timing.c:85: __asm__("nop");
   00B1 00            [12]  715 	nop
                     004D   716 	C$Timing.c$86$2$3 ==.
                            717 ;	src/Timing.c:86: __asm__("nop");
   00B2 00            [12]  718 	nop
                     004E   719 	C$Timing.c$87$2$3 ==.
                            720 ;	src/Timing.c:87: __asm__("nop");
   00B3 00            [12]  721 	nop
                     004F   722 	C$Timing.c$88$2$3 ==.
                            723 ;	src/Timing.c:88: __asm__("nop");
   00B4 00            [12]  724 	nop
                     0050   725 	C$Timing.c$89$2$3 ==.
                            726 ;	src/Timing.c:89: __asm__("nop");
   00B5 00            [12]  727 	nop
                     0051   728 	C$Timing.c$90$2$3 ==.
                            729 ;	src/Timing.c:90: __asm__("nop");
   00B6 00            [12]  730 	nop
                     0052   731 	C$Timing.c$91$2$3 ==.
                            732 ;	src/Timing.c:91: __asm__("nop");
   00B7 00            [12]  733 	nop
                     0053   734 	C$Timing.c$92$2$3 ==.
                            735 ;	src/Timing.c:92: __asm__("nop");
   00B8 00            [12]  736 	nop
                     0054   737 	C$Timing.c$93$2$3 ==.
                            738 ;	src/Timing.c:93: __asm__("nop");
   00B9 00            [12]  739 	nop
                     0055   740 	C$Timing.c$94$2$3 ==.
                            741 ;	src/Timing.c:94: __asm__("nop");
   00BA 00            [12]  742 	nop
                     0056   743 	C$Timing.c$95$2$3 ==.
                            744 ;	src/Timing.c:95: __asm__("nop");
   00BB 00            [12]  745 	nop
                     0057   746 	C$Timing.c$96$2$3 ==.
                            747 ;	src/Timing.c:96: __asm__("nop");
   00BC 00            [12]  748 	nop
                     0058   749 	C$Timing.c$97$2$3 ==.
                            750 ;	src/Timing.c:97: __asm__("nop");
   00BD 00            [12]  751 	nop
                     0059   752 	C$Timing.c$98$2$3 ==.
                            753 ;	src/Timing.c:98: __asm__("nop");
   00BE 00            [12]  754 	nop
                     005A   755 	C$Timing.c$99$2$3 ==.
                            756 ;	src/Timing.c:99: __asm__("nop");
   00BF 00            [12]  757 	nop
                     005B   758 	C$Timing.c$100$2$3 ==.
                            759 ;	src/Timing.c:100: __asm__("nop");
   00C0 00            [12]  760 	nop
                     005C   761 	C$Timing.c$101$2$3 ==.
                            762 ;	src/Timing.c:101: __asm__("nop");
   00C1 00            [12]  763 	nop
                     005D   764 	C$Timing.c$102$2$3 ==.
                            765 ;	src/Timing.c:102: __asm__("nop");
   00C2 00            [12]  766 	nop
                     005E   767 	C$Timing.c$103$2$3 ==.
                            768 ;	src/Timing.c:103: __asm__("nop");
   00C3 00            [12]  769 	nop
                     005F   770 	C$Timing.c$104$2$3 ==.
                            771 ;	src/Timing.c:104: __asm__("nop");
   00C4 00            [12]  772 	nop
                     0060   773 	C$Timing.c$105$2$3 ==.
                            774 ;	src/Timing.c:105: __asm__("nop");
   00C5 00            [12]  775 	nop
                     0061   776 	C$Timing.c$106$2$3 ==.
                            777 ;	src/Timing.c:106: __asm__("nop");
   00C6 00            [12]  778 	nop
                     0062   779 	C$Timing.c$107$2$3 ==.
                            780 ;	src/Timing.c:107: __asm__("nop");
   00C7 00            [12]  781 	nop
                     0063   782 	C$Timing.c$108$2$3 ==.
                            783 ;	src/Timing.c:108: __asm__("nop");
   00C8 00            [12]  784 	nop
                     0064   785 	C$Timing.c$109$2$3 ==.
                            786 ;	src/Timing.c:109: __asm__("nop");
   00C9 00            [12]  787 	nop
                     0065   788 	C$Timing.c$110$2$3 ==.
                            789 ;	src/Timing.c:110: __asm__("nop");
   00CA 00            [12]  790 	nop
                     0066   791 	C$Timing.c$111$2$3 ==.
                            792 ;	src/Timing.c:111: __asm__("nop");
   00CB 00            [12]  793 	nop
                     0067   794 	C$Timing.c$112$2$3 ==.
                            795 ;	src/Timing.c:112: __asm__("nop");
   00CC 00            [12]  796 	nop
                     0068   797 	C$Timing.c$113$2$3 ==.
                            798 ;	src/Timing.c:113: __asm__("nop");
   00CD 00            [12]  799 	nop
                     0069   800 	C$Timing.c$114$2$3 ==.
                            801 ;	src/Timing.c:114: __asm__("nop");
   00CE 00            [12]  802 	nop
                     006A   803 	C$Timing.c$115$2$3 ==.
                            804 ;	src/Timing.c:115: __asm__("nop");
   00CF 00            [12]  805 	nop
                     006B   806 	C$Timing.c$116$2$3 ==.
                            807 ;	src/Timing.c:116: __asm__("nop");
   00D0 00            [12]  808 	nop
                     006C   809 	C$Timing.c$117$2$3 ==.
                            810 ;	src/Timing.c:117: __asm__("nop");
   00D1 00            [12]  811 	nop
                     006D   812 	C$Timing.c$118$2$3 ==.
                            813 ;	src/Timing.c:118: __asm__("nop");
   00D2 00            [12]  814 	nop
                     006E   815 	C$Timing.c$119$2$3 ==.
                            816 ;	src/Timing.c:119: __asm__("nop");
   00D3 00            [12]  817 	nop
                     006F   818 	C$Timing.c$120$2$3 ==.
                            819 ;	src/Timing.c:120: __asm__("nop");
   00D4 00            [12]  820 	nop
                     0070   821 	C$Timing.c$121$2$3 ==.
                            822 ;	src/Timing.c:121: __asm__("nop");
   00D5 00            [12]  823 	nop
                     0071   824 	C$Timing.c$122$2$3 ==.
                            825 ;	src/Timing.c:122: __asm__("nop");
   00D6 00            [12]  826 	nop
                     0072   827 	C$Timing.c$123$2$3 ==.
                            828 ;	src/Timing.c:123: __asm__("nop");
   00D7 00            [12]  829 	nop
                     0073   830 	C$Timing.c$124$2$3 ==.
                            831 ;	src/Timing.c:124: __asm__("nop");
   00D8 00            [12]  832 	nop
                     0074   833 	C$Timing.c$125$2$3 ==.
                            834 ;	src/Timing.c:125: __asm__("nop");
   00D9 00            [12]  835 	nop
                     0075   836 	C$Timing.c$126$2$3 ==.
                            837 ;	src/Timing.c:126: __asm__("nop");
   00DA 00            [12]  838 	nop
                     0076   839 	C$Timing.c$127$2$3 ==.
                            840 ;	src/Timing.c:127: __asm__("nop");
   00DB 00            [12]  841 	nop
   00DC 1E            [12]  842 	dec	r6
   00DD BE FF 01      [24]  843 	cjne	r6,#0xFF,00111$
   00E0 1F            [12]  844 	dec	r7
   00E1                     845 00111$:
                     007C   846 	C$Timing.c$10$2$3 ==.
                            847 ;	src/Timing.c:10: for(i = 0; i < (CPU_FREQUENCY_IN_KHZ / 128); i++)
   00E1 EE            [12]  848 	mov	a,r6
   00E2 4F            [12]  849 	orl	a,r7
   00E3 70 84         [24]  850 	jnz	00104$
                     0080   851 	C$Timing.c$129$1$2 ==.
                     0080   852 	XG$Delay1ms$0$0 ==.
   00E5 22            [24]  853 	ret
                            854 ;------------------------------------------------------------
                            855 ;Allocation info for local variables in function 'ShiftRegisterInit'
                            856 ;------------------------------------------------------------
                            857 ;tempValReg0               Allocated to registers r7 
                            858 ;tempValReg1               Allocated to registers r6 
                            859 ;tempValReg0               Allocated to registers r7 
                            860 ;tempValReg1               Allocated to registers r6 
                            861 ;tempValReg0               Allocated to registers r7 
                            862 ;tempValReg1               Allocated to registers r6 
                            863 ;tempValReg0               Allocated to registers r7 
                            864 ;tempValReg1               Allocated to registers r6 
                            865 ;tempValReg0               Allocated to registers r7 
                            866 ;tempValReg1               Allocated to registers r6 
                            867 ;tempValReg0               Allocated to registers r7 
                            868 ;tempValReg1               Allocated to registers r6 
                            869 ;------------------------------------------------------------
                     0081   870 	G$ShiftRegisterInit$0$0 ==.
                     0081   871 	C$ShiftRegister.c$13$1$2 ==.
                            872 ;	src/ShiftRegister.c:13: void ShiftRegisterInit()
                            873 ;	-----------------------------------------
                            874 ;	 function ShiftRegisterInit
                            875 ;	-----------------------------------------
   00E6                     876 _ShiftRegisterInit:
                     0081   877 	C$ShiftRegister.c$15$2$5 ==.
                            878 ;	src/ShiftRegister.c:15: CONFIGURE_PORT3_PIN(2, PORT_PINT_CONFIG_INPUT_ONLY);
   00E6 AF B2         [24]  879 	mov	r7,_P3M0
   00E8 AE B1         [24]  880 	mov	r6,_P3M1
   00EA 74 FB         [12]  881 	mov	a,#0xFB
   00EC 5F            [12]  882 	anl	a,r7
   00ED F5 B2         [12]  883 	mov	_P3M0,a
   00EF 8E 07         [24]  884 	mov	ar7,r6
   00F1 74 FB         [12]  885 	mov	a,#0xFB
   00F3 5F            [12]  886 	anl	a,r7
   00F4 FE            [12]  887 	mov	r6,a
   00F5 74 04         [12]  888 	mov	a,#0x04
   00F7 4E            [12]  889 	orl	a,r6
   00F8 F5 B1         [12]  890 	mov	_P3M1,a
                     0095   891 	C$ShiftRegister.c$16$2$5 ==.
                            892 ;	src/ShiftRegister.c:16: CONFIGURE_PORT3_PIN(1, PORT_PINT_CONFIG_INPUT_ONLY);
   00FA AF B2         [24]  893 	mov	r7,_P3M0
   00FC AE B1         [24]  894 	mov	r6,_P3M1
   00FE 74 FD         [12]  895 	mov	a,#0xFD
   0100 5F            [12]  896 	anl	a,r7
   0101 F5 B2         [12]  897 	mov	_P3M0,a
   0103 8E 07         [24]  898 	mov	ar7,r6
   0105 74 FD         [12]  899 	mov	a,#0xFD
   0107 5F            [12]  900 	anl	a,r7
   0108 FE            [12]  901 	mov	r6,a
   0109 74 02         [12]  902 	mov	a,#0x02
   010B 4E            [12]  903 	orl	a,r6
   010C F5 B1         [12]  904 	mov	_P3M1,a
                     00A9   905 	C$ShiftRegister.c$17$2$5 ==.
                            906 ;	src/ShiftRegister.c:17: CONFIGURE_PORT3_PIN(0, PORT_PINT_CONFIG_INPUT_ONLY);
   010E AF B2         [24]  907 	mov	r7,_P3M0
   0110 AE B1         [24]  908 	mov	r6,_P3M1
   0112 74 FE         [12]  909 	mov	a,#0xFE
   0114 5F            [12]  910 	anl	a,r7
   0115 F5 B2         [12]  911 	mov	_P3M0,a
   0117 8E 07         [24]  912 	mov	ar7,r6
   0119 74 FE         [12]  913 	mov	a,#0xFE
   011B 5F            [12]  914 	anl	a,r7
   011C FE            [12]  915 	mov	r6,a
   011D 74 01         [12]  916 	mov	a,#0x01
   011F 4E            [12]  917 	orl	a,r6
   0120 F5 B1         [12]  918 	mov	_P3M1,a
                     00BD   919 	C$ShiftRegister.c$18$2$5 ==.
                            920 ;	src/ShiftRegister.c:18: CONFIGURE_PORT3_PIN(3, PORT_PINT_CONFIG_PUSH_PULL_OUTPUT);
   0122 AF B2         [24]  921 	mov	r7,_P3M0
   0124 AE B1         [24]  922 	mov	r6,_P3M1
   0126 8F 05         [24]  923 	mov	ar5,r7
   0128 74 F7         [12]  924 	mov	a,#0xF7
   012A 5D            [12]  925 	anl	a,r5
   012B FF            [12]  926 	mov	r7,a
   012C 74 08         [12]  927 	mov	a,#0x08
   012E 4F            [12]  928 	orl	a,r7
   012F F5 B2         [12]  929 	mov	_P3M0,a
   0131 74 F7         [12]  930 	mov	a,#0xF7
   0133 5E            [12]  931 	anl	a,r6
   0134 F5 B1         [12]  932 	mov	_P3M1,a
                     00D1   933 	C$ShiftRegister.c$19$2$5 ==.
                            934 ;	src/ShiftRegister.c:19: CONFIGURE_PORT3_PIN(4, PORT_PINT_CONFIG_PUSH_PULL_OUTPUT);
   0136 AF B2         [24]  935 	mov	r7,_P3M0
   0138 AE B1         [24]  936 	mov	r6,_P3M1
   013A 8F 05         [24]  937 	mov	ar5,r7
   013C 74 EF         [12]  938 	mov	a,#0xEF
   013E 5D            [12]  939 	anl	a,r5
   013F FF            [12]  940 	mov	r7,a
   0140 74 10         [12]  941 	mov	a,#0x10
   0142 4F            [12]  942 	orl	a,r7
   0143 F5 B2         [12]  943 	mov	_P3M0,a
   0145 74 EF         [12]  944 	mov	a,#0xEF
   0147 5E            [12]  945 	anl	a,r6
   0148 F5 B1         [12]  946 	mov	_P3M1,a
                     00E5   947 	C$ShiftRegister.c$20$2$5 ==.
                            948 ;	src/ShiftRegister.c:20: CONFIGURE_PORT3_PIN(5, PORT_PINT_CONFIG_PUSH_PULL_OUTPUT);
   014A AF B2         [24]  949 	mov	r7,_P3M0
   014C AE B1         [24]  950 	mov	r6,_P3M1
   014E 8F 05         [24]  951 	mov	ar5,r7
   0150 74 DF         [12]  952 	mov	a,#0xDF
   0152 5D            [12]  953 	anl	a,r5
   0153 FF            [12]  954 	mov	r7,a
   0154 74 20         [12]  955 	mov	a,#0x20
   0156 4F            [12]  956 	orl	a,r7
   0157 F5 B2         [12]  957 	mov	_P3M0,a
   0159 74 DF         [12]  958 	mov	a,#0xDF
   015B 5E            [12]  959 	anl	a,r6
   015C F5 B1         [12]  960 	mov	_P3M1,a
                     00F9   961 	C$ShiftRegister.c$22$2$12 ==.
                            962 ;	src/ShiftRegister.c:22: SET_PIN_LOW(SHIFT_REG_VALUE_PIN);
   015E C2 B3         [12]  963 	clr	_P3_3
   0160 00            [12]  964 	nop
   0161 00            [12]  965 	nop
   0162 00            [12]  966 	nop
   0163 00            [12]  967 	nop
   0164 00            [12]  968 	nop
                     0100   969 	C$ShiftRegister.c$23$2$14 ==.
                            970 ;	src/ShiftRegister.c:23: SET_PIN_LOW(SHIFT_REG_CLOCK_PIN);
   0165 C2 B4         [12]  971 	clr	_P3_4
   0167 00            [12]  972 	nop
   0168 00            [12]  973 	nop
   0169 00            [12]  974 	nop
   016A 00            [12]  975 	nop
   016B 00            [12]  976 	nop
                     0107   977 	C$ShiftRegister.c$24$2$16 ==.
                            978 ;	src/ShiftRegister.c:24: SET_PIN_LOW(SHIFT_REG_CLOCK_PIN);
   016C C2 B4         [12]  979 	clr	_P3_4
   016E 00            [12]  980 	nop
   016F 00            [12]  981 	nop
   0170 00            [12]  982 	nop
   0171 00            [12]  983 	nop
   0172 00            [12]  984 	nop
                     010E   985 	C$ShiftRegister.c$26$1$5 ==.
                            986 ;	src/ShiftRegister.c:26: ShiftRegisterChangePinState(0x00);
   0173 75 82 00      [24]  987 	mov	dpl,#0x00
   0176 12 01 7D      [24]  988 	lcall	_ShiftRegisterChangePinState
                     0114   989 	C$ShiftRegister.c$27$1$5 ==.
                            990 ;	src/ShiftRegister.c:27: Delay1ms();
   0179 12 00 65      [24]  991 	lcall	_Delay1ms
                     0117   992 	C$ShiftRegister.c$28$1$5 ==.
                     0117   993 	XG$ShiftRegisterInit$0$0 ==.
   017C 22            [24]  994 	ret
                            995 ;------------------------------------------------------------
                            996 ;Allocation info for local variables in function 'ShiftRegisterChangePinState'
                            997 ;------------------------------------------------------------
                            998 ;value                     Allocated to registers r7 
                            999 ;i                         Allocated to registers r6 
                           1000 ;------------------------------------------------------------
                     0118  1001 	G$ShiftRegisterChangePinState$0$0 ==.
                     0118  1002 	C$ShiftRegister.c$30$1$5 ==.
                           1003 ;	src/ShiftRegister.c:30: void ShiftRegisterChangePinState(unsigned char value)
                           1004 ;	-----------------------------------------
                           1005 ;	 function ShiftRegisterChangePinState
                           1006 ;	-----------------------------------------
   017D                    1007 _ShiftRegisterChangePinState:
   017D AF 82         [24] 1008 	mov	r7,dpl
                     011A  1009 	C$ShiftRegister.c$33$1$19 ==.
                           1010 ;	src/ShiftRegister.c:33: for(i = 0; i < 8; i++)
   017F 7E 00         [12] 1011 	mov	r6,#0x00
   0181                    1012 00105$:
                     011C  1013 	C$ShiftRegister.c$36$2$20 ==.
                           1014 ;	src/ShiftRegister.c:36: if (((value >> (7 - i)) & (unsigned char)0x01))
   0181 8E 04         [24] 1015 	mov	ar4,r6
   0183 7D 00         [12] 1016 	mov	r5,#0x00
   0185 74 07         [12] 1017 	mov	a,#0x07
   0187 C3            [12] 1018 	clr	c
   0188 9C            [12] 1019 	subb	a,r4
   0189 FC            [12] 1020 	mov	r4,a
   018A E4            [12] 1021 	clr	a
   018B 9D            [12] 1022 	subb	a,r5
   018C FD            [12] 1023 	mov	r5,a
   018D 8C F0         [24] 1024 	mov	b,r4
   018F 05 F0         [12] 1025 	inc	b
   0191 EF            [12] 1026 	mov	a,r7
   0192 80 02         [24] 1027 	sjmp	00119$
   0194                    1028 00118$:
   0194 C3            [12] 1029 	clr	c
   0195 13            [12] 1030 	rrc	a
   0196                    1031 00119$:
   0196 D5 F0 FB      [24] 1032 	djnz	b,00118$
   0199 30 E0 0D      [24] 1033 	jnb	acc.0,00102$
                     0137  1034 	C$ShiftRegister.c$38$4$22 ==.
                           1035 ;	src/ShiftRegister.c:38: SET_PIN_HIGH(SHIFT_REG_VALUE_PIN);
   019C D2 B3         [12] 1036 	setb	_P3_3
   019E 00            [12] 1037 	nop
   019F 00            [12] 1038 	nop
   01A0 00            [12] 1039 	nop
   01A1 00            [12] 1040 	nop
   01A2 00            [12] 1041 	nop
   01A3 00            [12] 1042 	nop
   01A4 00            [12] 1043 	nop
   01A5 00            [12] 1044 	nop
   01A6 00            [12] 1045 	nop
   01A7 80 07         [24] 1046 	sjmp	00103$
   01A9                    1047 00102$:
                     0144  1048 	C$ShiftRegister.c$42$4$24 ==.
                           1049 ;	src/ShiftRegister.c:42: SET_PIN_LOW(SHIFT_REG_VALUE_PIN);
   01A9 C2 B3         [12] 1050 	clr	_P3_3
   01AB 00            [12] 1051 	nop
   01AC 00            [12] 1052 	nop
   01AD 00            [12] 1053 	nop
   01AE 00            [12] 1054 	nop
   01AF 00            [12] 1055 	nop
   01B0                    1056 00103$:
                     014B  1057 	C$ShiftRegister.c$46$3$26 ==.
                           1058 ;	src/ShiftRegister.c:46: SET_PIN_HIGH(SHIFT_REG_CLOCK_PIN);
   01B0 D2 B4         [12] 1059 	setb	_P3_4
   01B2 00            [12] 1060 	nop
   01B3 00            [12] 1061 	nop
   01B4 00            [12] 1062 	nop
   01B5 00            [12] 1063 	nop
   01B6 00            [12] 1064 	nop
   01B7 00            [12] 1065 	nop
   01B8 00            [12] 1066 	nop
   01B9 00            [12] 1067 	nop
   01BA 00            [12] 1068 	nop
                     0156  1069 	C$ShiftRegister.c$47$3$27 ==.
                           1070 ;	src/ShiftRegister.c:47: SET_PIN_LOW(SHIFT_REG_CLOCK_PIN);
   01BB C2 B4         [12] 1071 	clr	_P3_4
   01BD 00            [12] 1072 	nop
   01BE 00            [12] 1073 	nop
   01BF 00            [12] 1074 	nop
   01C0 00            [12] 1075 	nop
   01C1 00            [12] 1076 	nop
                     015D  1077 	C$ShiftRegister.c$33$1$19 ==.
                           1078 ;	src/ShiftRegister.c:33: for(i = 0; i < 8; i++)
   01C2 0E            [12] 1079 	inc	r6
   01C3 BE 08 00      [24] 1080 	cjne	r6,#0x08,00121$
   01C6                    1081 00121$:
   01C6 40 B9         [24] 1082 	jc	00105$
                     0163  1083 	C$ShiftRegister.c$50$2$29 ==.
                           1084 ;	src/ShiftRegister.c:50: SET_PIN_LOW(SHIFT_REG_VALUE_PIN);
   01C8 C2 B3         [12] 1085 	clr	_P3_3
   01CA 00            [12] 1086 	nop
   01CB 00            [12] 1087 	nop
   01CC 00            [12] 1088 	nop
   01CD 00            [12] 1089 	nop
   01CE 00            [12] 1090 	nop
                     016A  1091 	C$ShiftRegister.c$53$2$31 ==.
                           1092 ;	src/ShiftRegister.c:53: SET_PIN_HIGH(STORE_REG_CLOCK_PIN);
   01CF D2 B5         [12] 1093 	setb	_P3_5
   01D1 00            [12] 1094 	nop
   01D2 00            [12] 1095 	nop
   01D3 00            [12] 1096 	nop
   01D4 00            [12] 1097 	nop
   01D5 00            [12] 1098 	nop
   01D6 00            [12] 1099 	nop
   01D7 00            [12] 1100 	nop
   01D8 00            [12] 1101 	nop
   01D9 00            [12] 1102 	nop
                     0175  1103 	C$ShiftRegister.c$54$2$32 ==.
                           1104 ;	src/ShiftRegister.c:54: SET_PIN_LOW(STORE_REG_CLOCK_PIN);
   01DA C2 B5         [12] 1105 	clr	_P3_5
   01DC 00            [12] 1106 	nop
   01DD 00            [12] 1107 	nop
   01DE 00            [12] 1108 	nop
   01DF 00            [12] 1109 	nop
   01E0 00            [12] 1110 	nop
                     017C  1111 	C$ShiftRegister.c$55$3$33 ==.
                     017C  1112 	XG$ShiftRegisterChangePinState$0$0 ==.
   01E1 22            [24] 1113 	ret
                           1114 ;------------------------------------------------------------
                           1115 ;Allocation info for local variables in function 'LCD_PULSE_ENABLE_PIN'
                           1116 ;------------------------------------------------------------
                     017D  1117 	FLEDBlink$LCD_PULSE_ENABLE_PIN$0$0 ==.
                     017D  1118 	C$LCDInterface.c$35$3$33 ==.
                           1119 ;	src/LCDInterface.c:35: static void LCD_PULSE_ENABLE_PIN()
                           1120 ;	-----------------------------------------
                           1121 ;	 function LCD_PULSE_ENABLE_PIN
                           1122 ;	-----------------------------------------
   01E2                    1123 _LCD_PULSE_ENABLE_PIN:
                     017D  1124 	C$LCDInterface.c$37$1$38 ==.
                           1125 ;	src/LCDInterface.c:37: LCD_CLEAR_E();
   01E2 AF 08         [24] 1126 	mov	r7,_LCD_PINS_SHIFT_REG_VALUES
   01E4 74 FB         [12] 1127 	mov	a,#0xFB
   01E6 5F            [12] 1128 	anl	a,r7
   01E7 F5 08         [12] 1129 	mov	_LCD_PINS_SHIFT_REG_VALUES,a
                     0184  1130 	C$LCDInterface.c$38$1$38 ==.
                           1131 ;	src/LCDInterface.c:38: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
   01E9 85 08 82      [24] 1132 	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
   01EC 12 01 7D      [24] 1133 	lcall	_ShiftRegisterChangePinState
                     018A  1134 	C$LCDInterface.c$39$2$39 ==.
                           1135 ;	src/LCDInterface.c:39: Delay1us();
   01EF 00            [12] 1136 	nop
   01F0 00            [12] 1137 	nop
   01F1 00            [12] 1138 	nop
   01F2 00            [12] 1139 	nop
   01F3 00            [12] 1140 	nop
                     018F  1141 	C$LCDInterface.c$41$1$38 ==.
                           1142 ;	src/LCDInterface.c:41: LCD_SET_E();
   01F4 43 08 04      [24] 1143 	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x04
                     0192  1144 	C$LCDInterface.c$42$1$38 ==.
                           1145 ;	src/LCDInterface.c:42: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
   01F7 85 08 82      [24] 1146 	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
   01FA 12 01 7D      [24] 1147 	lcall	_ShiftRegisterChangePinState
                     0198  1148 	C$LCDInterface.c$43$2$40 ==.
                           1149 ;	src/LCDInterface.c:43: Delay1us();
   01FD 00            [12] 1150 	nop
   01FE 00            [12] 1151 	nop
   01FF 00            [12] 1152 	nop
   0200 00            [12] 1153 	nop
   0201 00            [12] 1154 	nop
                     019D  1155 	C$LCDInterface.c$45$1$38 ==.
                           1156 ;	src/LCDInterface.c:45: LCD_CLEAR_E();
   0202 AF 08         [24] 1157 	mov	r7,_LCD_PINS_SHIFT_REG_VALUES
   0204 74 FB         [12] 1158 	mov	a,#0xFB
   0206 5F            [12] 1159 	anl	a,r7
   0207 F5 08         [12] 1160 	mov	_LCD_PINS_SHIFT_REG_VALUES,a
                     01A4  1161 	C$LCDInterface.c$46$1$38 ==.
                           1162 ;	src/LCDInterface.c:46: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
   0209 85 08 82      [24] 1163 	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
   020C 12 01 7D      [24] 1164 	lcall	_ShiftRegisterChangePinState
                     01AA  1165 	C$LCDInterface.c$47$2$41 ==.
                           1166 ;	src/LCDInterface.c:47: Delay1us();
   020F 00            [12] 1167 	nop
   0210 00            [12] 1168 	nop
   0211 00            [12] 1169 	nop
   0212 00            [12] 1170 	nop
   0213 00            [12] 1171 	nop
                     01AF  1172 	C$LCDInterface.c$48$2$41 ==.
                     01AF  1173 	XFLEDBlink$LCD_PULSE_ENABLE_PIN$0$0 ==.
   0214 22            [24] 1174 	ret
                           1175 ;------------------------------------------------------------
                           1176 ;Allocation info for local variables in function 'LCD_SEND_4BITS'
                           1177 ;------------------------------------------------------------
                           1178 ;value                     Allocated to registers r7 
                           1179 ;------------------------------------------------------------
                     01B0  1180 	G$LCD_SEND_4BITS$0$0 ==.
                     01B0  1181 	C$LCDInterface.c$50$2$41 ==.
                           1182 ;	src/LCDInterface.c:50: void LCD_SEND_4BITS(unsigned char value)
                           1183 ;	-----------------------------------------
                           1184 ;	 function LCD_SEND_4BITS
                           1185 ;	-----------------------------------------
   0215                    1186 _LCD_SEND_4BITS:
                     01B0  1187 	C$LCDInterface.c$52$1$43 ==.
                           1188 ;	src/LCDInterface.c:52: if ((value) & 0x01)
   0215 E5 82         [12] 1189 	mov	a,dpl
   0217 FF            [12] 1190 	mov	r7,a
   0218 30 E0 05      [24] 1191 	jnb	acc.0,00102$
                     01B6  1192 	C$LCDInterface.c$54$2$44 ==.
                           1193 ;	src/LCDInterface.c:54: LCD_SET_D4();
   021B 43 08 08      [24] 1194 	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x08
   021E 80 07         [24] 1195 	sjmp	00103$
   0220                    1196 00102$:
                     01BB  1197 	C$LCDInterface.c$58$2$45 ==.
                           1198 ;	src/LCDInterface.c:58: LCD_CLEAR_D4();
   0220 AE 08         [24] 1199 	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
   0222 74 F7         [12] 1200 	mov	a,#0xF7
   0224 5E            [12] 1201 	anl	a,r6
   0225 F5 08         [12] 1202 	mov	_LCD_PINS_SHIFT_REG_VALUES,a
   0227                    1203 00103$:
                     01C2  1204 	C$LCDInterface.c$61$1$43 ==.
                           1205 ;	src/LCDInterface.c:61: if ((value) & 0x02)
   0227 EF            [12] 1206 	mov	a,r7
   0228 30 E1 05      [24] 1207 	jnb	acc.1,00105$
                     01C6  1208 	C$LCDInterface.c$63$2$46 ==.
                           1209 ;	src/LCDInterface.c:63: LCD_SET_D5();
   022B 43 08 10      [24] 1210 	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x10
   022E 80 07         [24] 1211 	sjmp	00106$
   0230                    1212 00105$:
                     01CB  1213 	C$LCDInterface.c$67$2$47 ==.
                           1214 ;	src/LCDInterface.c:67: LCD_CLEAR_D5();
   0230 AE 08         [24] 1215 	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
   0232 74 EF         [12] 1216 	mov	a,#0xEF
   0234 5E            [12] 1217 	anl	a,r6
   0235 F5 08         [12] 1218 	mov	_LCD_PINS_SHIFT_REG_VALUES,a
   0237                    1219 00106$:
                     01D2  1220 	C$LCDInterface.c$70$1$43 ==.
                           1221 ;	src/LCDInterface.c:70: if ((value) & 0x04)
   0237 EF            [12] 1222 	mov	a,r7
   0238 30 E2 05      [24] 1223 	jnb	acc.2,00108$
                     01D6  1224 	C$LCDInterface.c$72$2$48 ==.
                           1225 ;	src/LCDInterface.c:72: LCD_SET_D6();
   023B 43 08 20      [24] 1226 	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x20
   023E 80 07         [24] 1227 	sjmp	00109$
   0240                    1228 00108$:
                     01DB  1229 	C$LCDInterface.c$76$2$49 ==.
                           1230 ;	src/LCDInterface.c:76: LCD_CLEAR_D6();
   0240 AE 08         [24] 1231 	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
   0242 74 DF         [12] 1232 	mov	a,#0xDF
   0244 5E            [12] 1233 	anl	a,r6
   0245 F5 08         [12] 1234 	mov	_LCD_PINS_SHIFT_REG_VALUES,a
   0247                    1235 00109$:
                     01E2  1236 	C$LCDInterface.c$79$1$43 ==.
                           1237 ;	src/LCDInterface.c:79: if ((value) & 0x08)
   0247 EF            [12] 1238 	mov	a,r7
   0248 30 E3 05      [24] 1239 	jnb	acc.3,00111$
                     01E6  1240 	C$LCDInterface.c$81$2$50 ==.
                           1241 ;	src/LCDInterface.c:81: LCD_SET_D7();
   024B 43 08 40      [24] 1242 	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x40
   024E 80 07         [24] 1243 	sjmp	00112$
   0250                    1244 00111$:
                     01EB  1245 	C$LCDInterface.c$85$2$51 ==.
                           1246 ;	src/LCDInterface.c:85: LCD_CLEAR_D7();
   0250 AF 08         [24] 1247 	mov	r7,_LCD_PINS_SHIFT_REG_VALUES
   0252 74 BF         [12] 1248 	mov	a,#0xBF
   0254 5F            [12] 1249 	anl	a,r7
   0255 F5 08         [12] 1250 	mov	_LCD_PINS_SHIFT_REG_VALUES,a
   0257                    1251 00112$:
                     01F2  1252 	C$LCDInterface.c$88$1$43 ==.
                           1253 ;	src/LCDInterface.c:88: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
   0257 85 08 82      [24] 1254 	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
   025A 12 01 7D      [24] 1255 	lcall	_ShiftRegisterChangePinState
                     01F8  1256 	C$LCDInterface.c$89$1$43 ==.
                           1257 ;	src/LCDInterface.c:89: LCD_PULSE_ENABLE_PIN();
   025D 12 01 E2      [24] 1258 	lcall	_LCD_PULSE_ENABLE_PIN
                     01FB  1259 	C$LCDInterface.c$90$1$43 ==.
                     01FB  1260 	XG$LCD_SEND_4BITS$0$0 ==.
   0260 22            [24] 1261 	ret
                           1262 ;------------------------------------------------------------
                           1263 ;Allocation info for local variables in function 'LCD_SEND_8BITS'
                           1264 ;------------------------------------------------------------
                           1265 ;isCommand                 Allocated with name '_LCD_SEND_8BITS_PARM_2'
                           1266 ;value                     Allocated to registers r7 
                           1267 ;------------------------------------------------------------
                     01FC  1268 	G$LCD_SEND_8BITS$0$0 ==.
                     01FC  1269 	C$LCDInterface.c$92$1$43 ==.
                           1270 ;	src/LCDInterface.c:92: void LCD_SEND_8BITS(unsigned char value, unsigned char isCommand)
                           1271 ;	-----------------------------------------
                           1272 ;	 function LCD_SEND_8BITS
                           1273 ;	-----------------------------------------
   0261                    1274 _LCD_SEND_8BITS:
   0261 AF 82         [24] 1275 	mov	r7,dpl
                     01FE  1276 	C$LCDInterface.c$94$1$53 ==.
                           1277 ;	src/LCDInterface.c:94: if (isCommand)
   0263 E5 09         [12] 1278 	mov	a,_LCD_SEND_8BITS_PARM_2
   0265 60 09         [24] 1279 	jz	00102$
                     0202  1280 	C$LCDInterface.c$96$2$54 ==.
                           1281 ;	src/LCDInterface.c:96: LCD_CLEAR_RS();
   0267 AE 08         [24] 1282 	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
   0269 74 FD         [12] 1283 	mov	a,#0xFD
   026B 5E            [12] 1284 	anl	a,r6
   026C F5 08         [12] 1285 	mov	_LCD_PINS_SHIFT_REG_VALUES,a
   026E 80 03         [24] 1286 	sjmp	00103$
   0270                    1287 00102$:
                     020B  1288 	C$LCDInterface.c$100$2$55 ==.
                           1289 ;	src/LCDInterface.c:100: LCD_SET_RS();
   0270 43 08 02      [24] 1290 	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x02
   0273                    1291 00103$:
                     020E  1292 	C$LCDInterface.c$102$1$53 ==.
                           1293 ;	src/LCDInterface.c:102: LCD_SEND_4BITS((unsigned char)(((value) >> 4) & 0x0F));
   0273 EF            [12] 1294 	mov	a,r7
   0274 C4            [12] 1295 	swap	a
   0275 54 0F         [12] 1296 	anl	a,#0x0F
   0277 FE            [12] 1297 	mov	r6,a
   0278 74 0F         [12] 1298 	mov	a,#0x0F
   027A 5E            [12] 1299 	anl	a,r6
   027B F5 82         [12] 1300 	mov	dpl,a
   027D C0 07         [24] 1301 	push	ar7
   027F 12 02 15      [24] 1302 	lcall	_LCD_SEND_4BITS
   0282 D0 07         [24] 1303 	pop	ar7
                     021F  1304 	C$LCDInterface.c$103$1$53 ==.
                           1305 ;	src/LCDInterface.c:103: LCD_SEND_4BITS((unsigned char)((value) & 0x0F));
   0284 74 0F         [12] 1306 	mov	a,#0x0F
   0286 5F            [12] 1307 	anl	a,r7
   0287 F5 82         [12] 1308 	mov	dpl,a
   0289 12 02 15      [24] 1309 	lcall	_LCD_SEND_4BITS
                     0227  1310 	C$LCDInterface.c$104$1$53 ==.
                     0227  1311 	XG$LCD_SEND_8BITS$0$0 ==.
   028C 22            [24] 1312 	ret
                           1313 ;------------------------------------------------------------
                           1314 ;Allocation info for local variables in function 'LCD_CMD_CLEAR'
                           1315 ;------------------------------------------------------------
                           1316 ;i                         Allocated to registers r6 r7 
                           1317 ;------------------------------------------------------------
                     0228  1318 	G$LCD_CMD_CLEAR$0$0 ==.
                     0228  1319 	C$LCDInterface.c$106$1$53 ==.
                           1320 ;	src/LCDInterface.c:106: void LCD_CMD_CLEAR()
                           1321 ;	-----------------------------------------
                           1322 ;	 function LCD_CMD_CLEAR
                           1323 ;	-----------------------------------------
   028D                    1324 _LCD_CMD_CLEAR:
                     0228  1325 	C$LCDInterface.c$108$1$56 ==.
                           1326 ;	src/LCDInterface.c:108: LCD_SEND_COMMAND(LCD_CLEARDISPLAY);
   028D 75 09 01      [24] 1327 	mov	_LCD_SEND_8BITS_PARM_2,#0x01
   0290 75 82 01      [24] 1328 	mov	dpl,#0x01
   0293 12 02 61      [24] 1329 	lcall	_LCD_SEND_8BITS
                     0231  1330 	C$LCDInterface.c$110$2$57 ==.
                           1331 ;	src/LCDInterface.c:110: DelayMilliseconds(5);
   0296 7E 05         [12] 1332 	mov	r6,#0x05
   0298 7F 00         [12] 1333 	mov	r7,#0x00
   029A                    1334 00104$:
   029A C0 07         [24] 1335 	push	ar7
   029C C0 06         [24] 1336 	push	ar6
   029E 12 00 65      [24] 1337 	lcall	_Delay1ms
   02A1 D0 06         [24] 1338 	pop	ar6
   02A3 D0 07         [24] 1339 	pop	ar7
   02A5 1E            [12] 1340 	dec	r6
   02A6 BE FF 01      [24] 1341 	cjne	r6,#0xFF,00111$
   02A9 1F            [12] 1342 	dec	r7
   02AA                    1343 00111$:
   02AA EE            [12] 1344 	mov	a,r6
   02AB 4F            [12] 1345 	orl	a,r7
   02AC 70 EC         [24] 1346 	jnz	00104$
                     0249  1347 	C$LCDInterface.c$111$2$57 ==.
                     0249  1348 	XG$LCD_CMD_CLEAR$0$0 ==.
   02AE 22            [24] 1349 	ret
                           1350 ;------------------------------------------------------------
                           1351 ;Allocation info for local variables in function 'LCD_CMD_SET_CURSOR'
                           1352 ;------------------------------------------------------------
                           1353 ;row                       Allocated with name '_LCD_CMD_SET_CURSOR_PARM_2'
                           1354 ;col                       Allocated to registers r7 
                           1355 ;------------------------------------------------------------
                     024A  1356 	G$LCD_CMD_SET_CURSOR$0$0 ==.
                     024A  1357 	C$LCDInterface.c$113$2$57 ==.
                           1358 ;	src/LCDInterface.c:113: void LCD_CMD_SET_CURSOR(unsigned char col, unsigned char row)
                           1359 ;	-----------------------------------------
                           1360 ;	 function LCD_CMD_SET_CURSOR
                           1361 ;	-----------------------------------------
   02AF                    1362 _LCD_CMD_SET_CURSOR:
   02AF AF 82         [24] 1363 	mov	r7,dpl
                     024C  1364 	C$LCDInterface.c$115$1$60 ==.
                           1365 ;	src/LCDInterface.c:115: if (row >= LCD_MAX_ROW_COUNT)
   02B1 74 FC         [12] 1366 	mov	a,#0x100 - 0x04
   02B3 25 0A         [12] 1367 	add	a,_LCD_CMD_SET_CURSOR_PARM_2
   02B5 50 03         [24] 1368 	jnc	00102$
                     0252  1369 	C$LCDInterface.c$117$2$61 ==.
                           1370 ;	src/LCDInterface.c:117: row = (LCD_MAX_ROW_COUNT - 1);
   02B7 75 0A 03      [24] 1371 	mov	_LCD_CMD_SET_CURSOR_PARM_2,#0x03
   02BA                    1372 00102$:
                     0255  1373 	C$LCDInterface.c$120$1$60 ==.
                           1374 ;	src/LCDInterface.c:120: LCD_SEND_COMMAND(LCD_SETDDRAMADDR | (col + LCD_ROW_OFFSETS[row]));
   02BA E5 0A         [12] 1375 	mov	a,_LCD_CMD_SET_CURSOR_PARM_2
   02BC 90 03 E6      [24] 1376 	mov	dptr,#_LCD_ROW_OFFSETS
   02BF 93            [24] 1377 	movc	a,@a+dptr
   02C0 2F            [12] 1378 	add	a,r7
   02C1 44 80         [12] 1379 	orl	a,#0x80
   02C3 F5 82         [12] 1380 	mov	dpl,a
   02C5 75 09 01      [24] 1381 	mov	_LCD_SEND_8BITS_PARM_2,#0x01
   02C8 12 02 61      [24] 1382 	lcall	_LCD_SEND_8BITS
                     0266  1383 	C$LCDInterface.c$121$1$60 ==.
                     0266  1384 	XG$LCD_CMD_SET_CURSOR$0$0 ==.
   02CB 22            [24] 1385 	ret
                           1386 ;------------------------------------------------------------
                           1387 ;Allocation info for local variables in function 'LCD_CMD_UPLOAD_CUSTOM_CHAR'
                           1388 ;------------------------------------------------------------
                           1389 ;charmap                   Allocated with name '_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2'
                           1390 ;location                  Allocated to registers r7 
                           1391 ;i                         Allocated to registers r7 
                           1392 ;------------------------------------------------------------
                     0267  1393 	G$LCD_CMD_UPLOAD_CUSTOM_CHAR$0$0 ==.
                     0267  1394 	C$LCDInterface.c$125$1$60 ==.
                           1395 ;	src/LCDInterface.c:125: void LCD_CMD_UPLOAD_CUSTOM_CHAR(unsigned char location, unsigned char charmap[])
                           1396 ;	-----------------------------------------
                           1397 ;	 function LCD_CMD_UPLOAD_CUSTOM_CHAR
                           1398 ;	-----------------------------------------
   02CC                    1399 _LCD_CMD_UPLOAD_CUSTOM_CHAR:
                     0267  1400 	C$LCDInterface.c$128$1$63 ==.
                           1401 ;	src/LCDInterface.c:128: location &= 0x7; // we only have 8 locations 0-7
                     0267  1402 	C$LCDInterface.c$129$1$63 ==.
                           1403 ;	src/LCDInterface.c:129: LCD_SEND_COMMAND(LCD_SETCGRAMADDR | (location << 3));
   02CC E5 82         [12] 1404 	mov	a,dpl
   02CE 54 07         [12] 1405 	anl	a,#0x07
   02D0 C4            [12] 1406 	swap	a
   02D1 03            [12] 1407 	rr	a
   02D2 54 F8         [12] 1408 	anl	a,#0xF8
   02D4 FF            [12] 1409 	mov	r7,a
   02D5 74 40         [12] 1410 	mov	a,#0x40
   02D7 4F            [12] 1411 	orl	a,r7
   02D8 F5 82         [12] 1412 	mov	dpl,a
   02DA 75 09 01      [24] 1413 	mov	_LCD_SEND_8BITS_PARM_2,#0x01
   02DD 12 02 61      [24] 1414 	lcall	_LCD_SEND_8BITS
                     027B  1415 	C$LCDInterface.c$130$1$63 ==.
                           1416 ;	src/LCDInterface.c:130: for (i=0; i<8; i++)
   02E0 7F 00         [12] 1417 	mov	r7,#0x00
   02E2                    1418 00102$:
                     027D  1419 	C$LCDInterface.c$132$2$64 ==.
                           1420 ;	src/LCDInterface.c:132: LCD_SEND_DATA(charmap[i]);
   02E2 EF            [12] 1421 	mov	a,r7
   02E3 25 0B         [12] 1422 	add	a,_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2
   02E5 FC            [12] 1423 	mov	r4,a
   02E6 E4            [12] 1424 	clr	a
   02E7 35 0C         [12] 1425 	addc	a,(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 1)
   02E9 FD            [12] 1426 	mov	r5,a
   02EA AE 0D         [24] 1427 	mov	r6,(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 2)
   02EC 8C 82         [24] 1428 	mov	dpl,r4
   02EE 8D 83         [24] 1429 	mov	dph,r5
   02F0 8E F0         [24] 1430 	mov	b,r6
   02F2 12 03 C6      [24] 1431 	lcall	__gptrget
   02F5 FC            [12] 1432 	mov	r4,a
   02F6 75 09 00      [24] 1433 	mov	_LCD_SEND_8BITS_PARM_2,#0x00
   02F9 8C 82         [24] 1434 	mov	dpl,r4
   02FB C0 07         [24] 1435 	push	ar7
   02FD 12 02 61      [24] 1436 	lcall	_LCD_SEND_8BITS
   0300 D0 07         [24] 1437 	pop	ar7
                     029D  1438 	C$LCDInterface.c$130$1$63 ==.
                           1439 ;	src/LCDInterface.c:130: for (i=0; i<8; i++)
   0302 0F            [12] 1440 	inc	r7
   0303 BF 08 00      [24] 1441 	cjne	r7,#0x08,00109$
   0306                    1442 00109$:
   0306 40 DA         [24] 1443 	jc	00102$
                     02A3  1444 	C$LCDInterface.c$134$1$63 ==.
                     02A3  1445 	XG$LCD_CMD_UPLOAD_CUSTOM_CHAR$0$0 ==.
   0308 22            [24] 1446 	ret
                           1447 ;------------------------------------------------------------
                           1448 ;Allocation info for local variables in function 'LCD_INIT'
                           1449 ;------------------------------------------------------------
                           1450 ;i                         Allocated to registers r6 r7 
                           1451 ;i                         Allocated to registers r6 r7 
                           1452 ;------------------------------------------------------------
                     02A4  1453 	G$LCD_INIT$0$0 ==.
                     02A4  1454 	C$LCDInterface.c$136$1$63 ==.
                           1455 ;	src/LCDInterface.c:136: void LCD_INIT()
                           1456 ;	-----------------------------------------
                           1457 ;	 function LCD_INIT
                           1458 ;	-----------------------------------------
   0309                    1459 _LCD_INIT:
                     02A4  1460 	C$LCDInterface.c$141$2$66 ==.
                           1461 ;	src/LCDInterface.c:141: DelayMilliseconds(50)
   0309 7E 32         [12] 1462 	mov	r6,#0x32
   030B 7F 00         [12] 1463 	mov	r7,#0x00
   030D                    1464 00105$:
   030D C0 07         [24] 1465 	push	ar7
   030F C0 06         [24] 1466 	push	ar6
   0311 12 00 65      [24] 1467 	lcall	_Delay1ms
   0314 D0 06         [24] 1468 	pop	ar6
   0316 D0 07         [24] 1469 	pop	ar7
   0318 1E            [12] 1470 	dec	r6
   0319 BE FF 01      [24] 1471 	cjne	r6,#0xFF,00123$
   031C 1F            [12] 1472 	dec	r7
   031D                    1473 00123$:
   031D EE            [12] 1474 	mov	a,r6
   031E 4F            [12] 1475 	orl	a,r7
                     02BA  1476 	C$LCDInterface.c$147$1$65 ==.
                           1477 ;	src/LCDInterface.c:147: LCD_CLEAR_E();
                     02BA  1478 	C$LCDInterface.c$148$1$65 ==.
                           1479 ;	src/LCDInterface.c:148: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
   031F 70 EC         [24] 1480 	jnz	00105$
   0321 F5 08         [12] 1481 	mov	_LCD_PINS_SHIFT_REG_VALUES,a
   0323 F5 82         [12] 1482 	mov	dpl,a
   0325 12 01 7D      [24] 1483 	lcall	_ShiftRegisterChangePinState
                     02C3  1484 	C$LCDInterface.c$156$2$68 ==.
                           1485 ;	src/LCDInterface.c:156: LCD_SEND_4BITS(0x02);
   0328 75 82 02      [24] 1486 	mov	dpl,#0x02
   032B 12 02 15      [24] 1487 	lcall	_LCD_SEND_4BITS
                     02C9  1488 	C$LCDInterface.c$157$3$69 ==.
                           1489 ;	src/LCDInterface.c:157: DelayMilliseconds(5); // wait min 4.1ms
   032E 7E 05         [12] 1490 	mov	r6,#0x05
   0330 7F 00         [12] 1491 	mov	r7,#0x00
   0332                    1492 00108$:
   0332 C0 07         [24] 1493 	push	ar7
   0334 C0 06         [24] 1494 	push	ar6
   0336 12 00 65      [24] 1495 	lcall	_Delay1ms
   0339 D0 06         [24] 1496 	pop	ar6
   033B D0 07         [24] 1497 	pop	ar7
   033D 1E            [12] 1498 	dec	r6
   033E BE FF 01      [24] 1499 	cjne	r6,#0xFF,00125$
   0341 1F            [12] 1500 	dec	r7
   0342                    1501 00125$:
   0342 EE            [12] 1502 	mov	a,r6
   0343 4F            [12] 1503 	orl	a,r7
   0344 70 EC         [24] 1504 	jnz	00108$
                     02E1  1505 	C$LCDInterface.c$208$1$65 ==.
                           1506 ;	src/LCDInterface.c:208: LCD_SEND_COMMAND(LCD_FUNCTIONSET | LCD_4BITMODE | LCD_2LINE | LCD_5x8DOTS);
   0346 75 09 01      [24] 1507 	mov	_LCD_SEND_8BITS_PARM_2,#0x01
   0349 75 82 28      [24] 1508 	mov	dpl,#0x28
   034C 12 02 61      [24] 1509 	lcall	_LCD_SEND_8BITS
                     02EA  1510 	C$LCDInterface.c$209$1$65 ==.
                           1511 ;	src/LCDInterface.c:209: LCD_SEND_COMMAND(LCD_FUNCTIONSET | LCD_4BITMODE | LCD_2LINE | LCD_5x8DOTS);
   034F 75 09 01      [24] 1512 	mov	_LCD_SEND_8BITS_PARM_2,#0x01
   0352 75 82 28      [24] 1513 	mov	dpl,#0x28
   0355 12 02 61      [24] 1514 	lcall	_LCD_SEND_8BITS
                     02F3  1515 	C$LCDInterface.c$212$1$65 ==.
                           1516 ;	src/LCDInterface.c:212: LCD_SEND_COMMAND(LCD_DISPLAYCONTROL | LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF);
   0358 75 09 01      [24] 1517 	mov	_LCD_SEND_8BITS_PARM_2,#0x01
   035B 75 82 0C      [24] 1518 	mov	dpl,#0x0C
   035E 12 02 61      [24] 1519 	lcall	_LCD_SEND_8BITS
                     02FC  1520 	C$LCDInterface.c$214$1$65 ==.
                           1521 ;	src/LCDInterface.c:214: LCD_CMD_CLEAR();
   0361 12 02 8D      [24] 1522 	lcall	_LCD_CMD_CLEAR
                     02FF  1523 	C$LCDInterface.c$217$1$65 ==.
                           1524 ;	src/LCDInterface.c:217: LCD_SEND_COMMAND(LCD_ENTRYMODESET | LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT);
   0364 75 09 01      [24] 1525 	mov	_LCD_SEND_8BITS_PARM_2,#0x01
   0367 75 82 06      [24] 1526 	mov	dpl,#0x06
   036A 12 02 61      [24] 1527 	lcall	_LCD_SEND_8BITS
                     0308  1528 	C$LCDInterface.c$218$1$65 ==.
                     0308  1529 	XG$LCD_INIT$0$0 ==.
   036D 22            [24] 1530 	ret
                           1531 ;------------------------------------------------------------
                           1532 ;Allocation info for local variables in function 'Print'
                           1533 ;------------------------------------------------------------
                           1534 ;str                       Allocated to registers r5 r6 r7 
                           1535 ;------------------------------------------------------------
                     0309  1536 	FLEDBlink$Print$0$0 ==.
                     0309  1537 	C$LEDBlink.c$28$1$65 ==.
                           1538 ;	LEDBlink.c:28: static void Print(unsigned char* str)
                           1539 ;	-----------------------------------------
                           1540 ;	 function Print
                           1541 ;	-----------------------------------------
   036E                    1542 _Print:
   036E AD 82         [24] 1543 	mov	r5,dpl
   0370 AE 83         [24] 1544 	mov	r6,dph
   0372 AF F0         [24] 1545 	mov	r7,b
                     030F  1546 	C$LEDBlink.c$30$1$72 ==.
                           1547 ;	LEDBlink.c:30: while(*str)
   0374                    1548 00101$:
   0374 8D 82         [24] 1549 	mov	dpl,r5
   0376 8E 83         [24] 1550 	mov	dph,r6
   0378 8F F0         [24] 1551 	mov	b,r7
   037A 12 03 C6      [24] 1552 	lcall	__gptrget
   037D FC            [12] 1553 	mov	r4,a
   037E 60 1B         [24] 1554 	jz	00104$
                     031B  1555 	C$LEDBlink.c$32$2$73 ==.
                           1556 ;	LEDBlink.c:32: LCD_SEND_DATA(*str);
   0380 75 09 00      [24] 1557 	mov	_LCD_SEND_8BITS_PARM_2,#0x00
   0383 8C 82         [24] 1558 	mov	dpl,r4
   0385 C0 07         [24] 1559 	push	ar7
   0387 C0 06         [24] 1560 	push	ar6
   0389 C0 05         [24] 1561 	push	ar5
   038B 12 02 61      [24] 1562 	lcall	_LCD_SEND_8BITS
   038E D0 05         [24] 1563 	pop	ar5
   0390 D0 06         [24] 1564 	pop	ar6
   0392 D0 07         [24] 1565 	pop	ar7
                     032F  1566 	C$LEDBlink.c$33$2$73 ==.
                           1567 ;	LEDBlink.c:33: str++;
   0394 0D            [12] 1568 	inc	r5
   0395 BD 00 DC      [24] 1569 	cjne	r5,#0x00,00101$
   0398 0E            [12] 1570 	inc	r6
   0399 80 D9         [24] 1571 	sjmp	00101$
   039B                    1572 00104$:
                     0336  1573 	C$LEDBlink.c$35$1$72 ==.
                     0336  1574 	XFLEDBlink$Print$0$0 ==.
   039B 22            [24] 1575 	ret
                           1576 ;------------------------------------------------------------
                           1577 ;Allocation info for local variables in function 'main'
                           1578 ;------------------------------------------------------------
                           1579 ;buttonPressed             Allocated to registers 
                           1580 ;------------------------------------------------------------
                     0337  1581 	G$main$0$0 ==.
                     0337  1582 	C$LEDBlink.c$90$1$72 ==.
                           1583 ;	LEDBlink.c:90: int main()
                           1584 ;	-----------------------------------------
                           1585 ;	 function main
                           1586 ;	-----------------------------------------
   039C                    1587 _main:
                     0337  1588 	C$LEDBlink.c$97$1$74 ==.
                           1589 ;	LEDBlink.c:97: ShiftRegisterInit();
   039C 12 00 E6      [24] 1590 	lcall	_ShiftRegisterInit
                     033A  1591 	C$LEDBlink.c$99$1$74 ==.
                           1592 ;	LEDBlink.c:99: LCD_INIT();
   039F 12 03 09      [24] 1593 	lcall	_LCD_INIT
                     033D  1594 	C$LEDBlink.c$100$1$74 ==.
                           1595 ;	LEDBlink.c:100: LCD_INIT();
   03A2 12 03 09      [24] 1596 	lcall	_LCD_INIT
                     0340  1597 	C$LEDBlink.c$101$1$74 ==.
                           1598 ;	LEDBlink.c:101: LCD_INIT();
   03A5 12 03 09      [24] 1599 	lcall	_LCD_INIT
                     0343  1600 	C$LEDBlink.c$102$1$74 ==.
                           1601 ;	LEDBlink.c:102: LCD_CMD_SET_CURSOR(0, 0);
   03A8 75 0A 00      [24] 1602 	mov	_LCD_CMD_SET_CURSOR_PARM_2,#0x00
   03AB 75 82 00      [24] 1603 	mov	dpl,#0x00
   03AE 12 02 AF      [24] 1604 	lcall	_LCD_CMD_SET_CURSOR
                     034C  1605 	C$LEDBlink.c$103$1$74 ==.
                           1606 ;	LEDBlink.c:103: LCD_SEND_DATA('A');
   03B1 75 09 00      [24] 1607 	mov	_LCD_SEND_8BITS_PARM_2,#0x00
   03B4 75 82 41      [24] 1608 	mov	dpl,#0x41
   03B7 12 02 61      [24] 1609 	lcall	_LCD_SEND_8BITS
                     0355  1610 	C$LEDBlink.c$122$1$74 ==.
                           1611 ;	LEDBlink.c:122: while(1)
   03BA                    1612 00107$:
                     0355  1613 	C$LEDBlink.c$137$2$75 ==.
                           1614 ;	LEDBlink.c:137: if (LEFT_BUTTON)
   03BA 20 B2 FD      [24] 1615 	jb	_P3_2,00107$
                     0358  1616 	C$LEDBlink.c$164$2$75 ==.
                           1617 ;	LEDBlink.c:164: else if (ROTATE_BUTTON)
   03BD 30 B0 FA      [24] 1618 	jnb	_P3_0,00107$
                     035B  1619 	C$LEDBlink.c$166$3$77 ==.
                           1620 ;	LEDBlink.c:166: LCD_CMD_CLEAR();
   03C0 12 02 8D      [24] 1621 	lcall	_LCD_CMD_CLEAR
                     035E  1622 	C$LEDBlink.c$185$1$74 ==.
                           1623 ;	LEDBlink.c:185: return 0;
   03C3 80 F5         [24] 1624 	sjmp	00107$
                     0360  1625 	C$LEDBlink.c$186$1$74 ==.
                     0360  1626 	XG$main$0$0 ==.
   03C5 22            [24] 1627 	ret
                           1628 	.area CSEG    (CODE)
                           1629 	.area CONST   (CODE)
                     0000  1630 G$LCD_ROW_OFFSETS$0$0 == .
   03E6                    1631 _LCD_ROW_OFFSETS:
   03E6 00                 1632 	.db #0x00	; 0
   03E7 40                 1633 	.db #0x40	; 64
   03E8 10                 1634 	.db #0x10	; 16
   03E9 50                 1635 	.db #0x50	; 80	'P'
                     0004  1636 G$LCDCharTopShapeData$0$0 == .
   03EA                    1637 _LCDCharTopShapeData:
   03EA 1F                 1638 	.db #0x1F	; 31
   03EB 1F                 1639 	.db #0x1F	; 31
   03EC 00                 1640 	.db #0x00	; 0
   03ED 00                 1641 	.db #0x00	; 0
   03EE 00                 1642 	.db #0x00	; 0
   03EF 00                 1643 	.db #0x00	; 0
   03F0 00                 1644 	.db #0x00	; 0
   03F1 00                 1645 	.db #0x00	; 0
                     000C  1646 G$LCDCharMiddleShapeData$0$0 == .
   03F2                    1647 _LCDCharMiddleShapeData:
   03F2 00                 1648 	.db #0x00	; 0
   03F3 00                 1649 	.db #0x00	; 0
   03F4 00                 1650 	.db #0x00	; 0
   03F5 1F                 1651 	.db #0x1F	; 31
   03F6 1F                 1652 	.db #0x1F	; 31
   03F7 00                 1653 	.db #0x00	; 0
   03F8 00                 1654 	.db #0x00	; 0
   03F9 00                 1655 	.db #0x00	; 0
                     0014  1656 G$LCDCharBottomShapeData$0$0 == .
   03FA                    1657 _LCDCharBottomShapeData:
   03FA 00                 1658 	.db #0x00	; 0
   03FB 00                 1659 	.db #0x00	; 0
   03FC 00                 1660 	.db #0x00	; 0
   03FD 00                 1661 	.db #0x00	; 0
   03FE 00                 1662 	.db #0x00	; 0
   03FF 00                 1663 	.db #0x00	; 0
   0400 1F                 1664 	.db #0x1F	; 31
   0401 1F                 1665 	.db #0x1F	; 31
                     001C  1666 G$LCDCharTopTwoShapeData$0$0 == .
   0402                    1667 _LCDCharTopTwoShapeData:
   0402 1F                 1668 	.db #0x1F	; 31
   0403 1F                 1669 	.db #0x1F	; 31
   0404 00                 1670 	.db #0x00	; 0
   0405 1F                 1671 	.db #0x1F	; 31
   0406 1F                 1672 	.db #0x1F	; 31
   0407 00                 1673 	.db #0x00	; 0
   0408 00                 1674 	.db #0x00	; 0
   0409 00                 1675 	.db #0x00	; 0
                     0024  1676 G$LCDCharBottomTwoShapeData$0$0 == .
   040A                    1677 _LCDCharBottomTwoShapeData:
   040A 00                 1678 	.db #0x00	; 0
   040B 00                 1679 	.db #0x00	; 0
   040C 00                 1680 	.db #0x00	; 0
   040D 1F                 1681 	.db #0x1F	; 31
   040E 1F                 1682 	.db #0x1F	; 31
   040F 00                 1683 	.db #0x00	; 0
   0410 1F                 1684 	.db #0x1F	; 31
   0411 1F                 1685 	.db #0x1F	; 31
                     002C  1686 G$LCDCharThreeShapeData$0$0 == .
   0412                    1687 _LCDCharThreeShapeData:
   0412 1F                 1688 	.db #0x1F	; 31
   0413 1F                 1689 	.db #0x1F	; 31
   0414 00                 1690 	.db #0x00	; 0
   0415 1F                 1691 	.db #0x1F	; 31
   0416 1F                 1692 	.db #0x1F	; 31
   0417 00                 1693 	.db #0x00	; 0
   0418 1F                 1694 	.db #0x1F	; 31
   0419 1F                 1695 	.db #0x1F	; 31
                           1696 	.area XINIT   (CODE)
                           1697 	.area CABS    (ABS,CODE)
