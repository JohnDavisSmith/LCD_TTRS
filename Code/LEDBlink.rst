                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
                              4 ; This file was generated Mon Jun 26 00:44:29 2017
                              5 ;--------------------------------------------------------
                              6 	.module LEDBlink
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _TetrisShapes
                             13 	.globl _LCDCharIndicesMap
                             14 	.globl _LCDCharThreeShapeData
                             15 	.globl _LCDCharBottomTwoShapeData
                             16 	.globl _LCDCharTopAndBottomShapeData
                             17 	.globl _LCDCharBottomShapeData
                             18 	.globl _LCDCharTopTwoShapeData
                             19 	.globl _LCDCharMiddleShapeData
                             20 	.globl _LCDCharTopShapeData
                             21 	.globl _LCD_ROW_OFFSETS
                             22 	.globl _main
                             23 	.globl _TetrisLogicLoop
                             24 	.globl _ShiftTheBoard
                             25 	.globl _ClearTheBoard
                             26 	.globl _NextShape
                             27 	.globl _GetInput
                             28 	.globl _CommitCurrentShapeToOrRemoveFromTheBoard
                             29 	.globl _CheckMoveAllowed
                             30 	.globl _GetShapeData
                             31 	.globl _PrintBoard
                             32 	.globl _GetBoard
                             33 	.globl _SetBoard
                             34 	.globl _tm0_isr
                             35 	.globl _CY
                             36 	.globl _AC
                             37 	.globl _F0
                             38 	.globl _RS1
                             39 	.globl _RS0
                             40 	.globl _OV
                             41 	.globl _F1
                             42 	.globl _P
                             43 	.globl _PS
                             44 	.globl _PT1
                             45 	.globl _PX1
                             46 	.globl _PT0
                             47 	.globl _PX0
                             48 	.globl _RD
                             49 	.globl _WR
                             50 	.globl _T1
                             51 	.globl _T0
                             52 	.globl _INT1
                             53 	.globl _INT0
                             54 	.globl _TXD
                             55 	.globl _RXD
                             56 	.globl _P3_7
                             57 	.globl _P3_6
                             58 	.globl _P3_5
                             59 	.globl _P3_4
                             60 	.globl _P3_3
                             61 	.globl _P3_2
                             62 	.globl _P3_1
                             63 	.globl _P3_0
                             64 	.globl _EA
                             65 	.globl _ES
                             66 	.globl _ET1
                             67 	.globl _EX1
                             68 	.globl _ET0
                             69 	.globl _EX0
                             70 	.globl _P2_7
                             71 	.globl _P2_6
                             72 	.globl _P2_5
                             73 	.globl _P2_4
                             74 	.globl _P2_3
                             75 	.globl _P2_2
                             76 	.globl _P2_1
                             77 	.globl _P2_0
                             78 	.globl _SM0
                             79 	.globl _SM1
                             80 	.globl _SM2
                             81 	.globl _REN
                             82 	.globl _TB8
                             83 	.globl _RB8
                             84 	.globl _TI
                             85 	.globl _RI
                             86 	.globl _P1_7
                             87 	.globl _P1_6
                             88 	.globl _P1_5
                             89 	.globl _P1_4
                             90 	.globl _P1_3
                             91 	.globl _P1_2
                             92 	.globl _P1_1
                             93 	.globl _P1_0
                             94 	.globl _TF1
                             95 	.globl _TR1
                             96 	.globl _TF0
                             97 	.globl _TR0
                             98 	.globl _IE1
                             99 	.globl _IT1
                            100 	.globl _IE0
                            101 	.globl _IT0
                            102 	.globl _P0_7
                            103 	.globl _P0_6
                            104 	.globl _P0_5
                            105 	.globl _P0_4
                            106 	.globl _P0_3
                            107 	.globl _P0_2
                            108 	.globl _P0_1
                            109 	.globl _P0_0
                            110 	.globl _P5M1
                            111 	.globl _P5M0
                            112 	.globl _P4M1
                            113 	.globl _P4M0
                            114 	.globl _P3M1
                            115 	.globl _P3M0
                            116 	.globl _P2M1
                            117 	.globl _P2M0
                            118 	.globl _P1M1
                            119 	.globl _P1M0
                            120 	.globl _P0M1
                            121 	.globl _P0M0
                            122 	.globl _B
                            123 	.globl _ACC
                            124 	.globl _PSW
                            125 	.globl _IP
                            126 	.globl _P3
                            127 	.globl _IE
                            128 	.globl _P2
                            129 	.globl _SBUF
                            130 	.globl _SCON
                            131 	.globl _P1
                            132 	.globl _AUXR
                            133 	.globl _TH1
                            134 	.globl _TH0
                            135 	.globl _TL1
                            136 	.globl _TL0
                            137 	.globl _TMOD
                            138 	.globl _TCON
                            139 	.globl _PCON
                            140 	.globl _DPH
                            141 	.globl _DPL
                            142 	.globl _SP
                            143 	.globl _P0
                            144 	.globl _CheckMoveAllowed_PARM_2
                            145 	.globl _GetShapeData_PARM_2
                            146 	.globl _g_ShapeRotation
                            147 	.globl _g_ShapeType
                            148 	.globl _g_ShapeY
                            149 	.globl _g_ShapeX
                            150 	.globl _PrintBoard_PARM_2
                            151 	.globl _GetBoard_PARM_2
                            152 	.globl _SetBoard_PARM_3
                            153 	.globl _SetBoard_PARM_2
                            154 	.globl _LCD_PRINT_PARM_3
                            155 	.globl _LCD_PRINT_PARM_2
                            156 	.globl _LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2
                            157 	.globl _LCD_CMD_SET_CURSOR_PARM_2
                            158 	.globl _LCD_SEND_8BITS_PARM_2
                            159 	.globl _Delay1ms
                            160 	.globl _Start1MsSystemTimer
                            161 	.globl _GetSystemTimeInMs
                            162 	.globl _ShiftRegisterInit
                            163 	.globl _ShiftRegisterChangePinState
                            164 	.globl _LCD_SEND_4BITS
                            165 	.globl _LCD_SEND_8BITS
                            166 	.globl _LCD_CMD_CLEAR
                            167 	.globl _LCD_CMD_SET_CURSOR
                            168 	.globl _LCD_CMD_UPLOAD_CUSTOM_CHAR
                            169 	.globl _LCD_PRINT
                            170 	.globl _LCD_INIT
                            171 ;--------------------------------------------------------
                            172 ; special function registers
                            173 ;--------------------------------------------------------
                            174 	.area RSEG    (ABS,DATA)
   0000                     175 	.org 0x0000
                     0080   176 G$P0$0$0 == 0x0080
                     0080   177 _P0	=	0x0080
                     0081   178 G$SP$0$0 == 0x0081
                     0081   179 _SP	=	0x0081
                     0082   180 G$DPL$0$0 == 0x0082
                     0082   181 _DPL	=	0x0082
                     0083   182 G$DPH$0$0 == 0x0083
                     0083   183 _DPH	=	0x0083
                     0087   184 G$PCON$0$0 == 0x0087
                     0087   185 _PCON	=	0x0087
                     0088   186 G$TCON$0$0 == 0x0088
                     0088   187 _TCON	=	0x0088
                     0089   188 G$TMOD$0$0 == 0x0089
                     0089   189 _TMOD	=	0x0089
                     008A   190 G$TL0$0$0 == 0x008a
                     008A   191 _TL0	=	0x008a
                     008B   192 G$TL1$0$0 == 0x008b
                     008B   193 _TL1	=	0x008b
                     008C   194 G$TH0$0$0 == 0x008c
                     008C   195 _TH0	=	0x008c
                     008D   196 G$TH1$0$0 == 0x008d
                     008D   197 _TH1	=	0x008d
                     008E   198 G$AUXR$0$0 == 0x008e
                     008E   199 _AUXR	=	0x008e
                     0090   200 G$P1$0$0 == 0x0090
                     0090   201 _P1	=	0x0090
                     0098   202 G$SCON$0$0 == 0x0098
                     0098   203 _SCON	=	0x0098
                     0099   204 G$SBUF$0$0 == 0x0099
                     0099   205 _SBUF	=	0x0099
                     00A0   206 G$P2$0$0 == 0x00a0
                     00A0   207 _P2	=	0x00a0
                     00A8   208 G$IE$0$0 == 0x00a8
                     00A8   209 _IE	=	0x00a8
                     00B0   210 G$P3$0$0 == 0x00b0
                     00B0   211 _P3	=	0x00b0
                     00B8   212 G$IP$0$0 == 0x00b8
                     00B8   213 _IP	=	0x00b8
                     00D0   214 G$PSW$0$0 == 0x00d0
                     00D0   215 _PSW	=	0x00d0
                     00E0   216 G$ACC$0$0 == 0x00e0
                     00E0   217 _ACC	=	0x00e0
                     00F0   218 G$B$0$0 == 0x00f0
                     00F0   219 _B	=	0x00f0
                     0094   220 G$P0M0$0$0 == 0x0094
                     0094   221 _P0M0	=	0x0094
                     0093   222 G$P0M1$0$0 == 0x0093
                     0093   223 _P0M1	=	0x0093
                     0092   224 G$P1M0$0$0 == 0x0092
                     0092   225 _P1M0	=	0x0092
                     0091   226 G$P1M1$0$0 == 0x0091
                     0091   227 _P1M1	=	0x0091
                     0096   228 G$P2M0$0$0 == 0x0096
                     0096   229 _P2M0	=	0x0096
                     0095   230 G$P2M1$0$0 == 0x0095
                     0095   231 _P2M1	=	0x0095
                     00B2   232 G$P3M0$0$0 == 0x00b2
                     00B2   233 _P3M0	=	0x00b2
                     00B1   234 G$P3M1$0$0 == 0x00b1
                     00B1   235 _P3M1	=	0x00b1
                     00B4   236 G$P4M0$0$0 == 0x00b4
                     00B4   237 _P4M0	=	0x00b4
                     00B3   238 G$P4M1$0$0 == 0x00b3
                     00B3   239 _P4M1	=	0x00b3
                     00CA   240 G$P5M0$0$0 == 0x00ca
                     00CA   241 _P5M0	=	0x00ca
                     00C9   242 G$P5M1$0$0 == 0x00c9
                     00C9   243 _P5M1	=	0x00c9
                            244 ;--------------------------------------------------------
                            245 ; special function bits
                            246 ;--------------------------------------------------------
                            247 	.area RSEG    (ABS,DATA)
   0000                     248 	.org 0x0000
                     0080   249 G$P0_0$0$0 == 0x0080
                     0080   250 _P0_0	=	0x0080
                     0081   251 G$P0_1$0$0 == 0x0081
                     0081   252 _P0_1	=	0x0081
                     0082   253 G$P0_2$0$0 == 0x0082
                     0082   254 _P0_2	=	0x0082
                     0083   255 G$P0_3$0$0 == 0x0083
                     0083   256 _P0_3	=	0x0083
                     0084   257 G$P0_4$0$0 == 0x0084
                     0084   258 _P0_4	=	0x0084
                     0085   259 G$P0_5$0$0 == 0x0085
                     0085   260 _P0_5	=	0x0085
                     0086   261 G$P0_6$0$0 == 0x0086
                     0086   262 _P0_6	=	0x0086
                     0087   263 G$P0_7$0$0 == 0x0087
                     0087   264 _P0_7	=	0x0087
                     0088   265 G$IT0$0$0 == 0x0088
                     0088   266 _IT0	=	0x0088
                     0089   267 G$IE0$0$0 == 0x0089
                     0089   268 _IE0	=	0x0089
                     008A   269 G$IT1$0$0 == 0x008a
                     008A   270 _IT1	=	0x008a
                     008B   271 G$IE1$0$0 == 0x008b
                     008B   272 _IE1	=	0x008b
                     008C   273 G$TR0$0$0 == 0x008c
                     008C   274 _TR0	=	0x008c
                     008D   275 G$TF0$0$0 == 0x008d
                     008D   276 _TF0	=	0x008d
                     008E   277 G$TR1$0$0 == 0x008e
                     008E   278 _TR1	=	0x008e
                     008F   279 G$TF1$0$0 == 0x008f
                     008F   280 _TF1	=	0x008f
                     0090   281 G$P1_0$0$0 == 0x0090
                     0090   282 _P1_0	=	0x0090
                     0091   283 G$P1_1$0$0 == 0x0091
                     0091   284 _P1_1	=	0x0091
                     0092   285 G$P1_2$0$0 == 0x0092
                     0092   286 _P1_2	=	0x0092
                     0093   287 G$P1_3$0$0 == 0x0093
                     0093   288 _P1_3	=	0x0093
                     0094   289 G$P1_4$0$0 == 0x0094
                     0094   290 _P1_4	=	0x0094
                     0095   291 G$P1_5$0$0 == 0x0095
                     0095   292 _P1_5	=	0x0095
                     0096   293 G$P1_6$0$0 == 0x0096
                     0096   294 _P1_6	=	0x0096
                     0097   295 G$P1_7$0$0 == 0x0097
                     0097   296 _P1_7	=	0x0097
                     0098   297 G$RI$0$0 == 0x0098
                     0098   298 _RI	=	0x0098
                     0099   299 G$TI$0$0 == 0x0099
                     0099   300 _TI	=	0x0099
                     009A   301 G$RB8$0$0 == 0x009a
                     009A   302 _RB8	=	0x009a
                     009B   303 G$TB8$0$0 == 0x009b
                     009B   304 _TB8	=	0x009b
                     009C   305 G$REN$0$0 == 0x009c
                     009C   306 _REN	=	0x009c
                     009D   307 G$SM2$0$0 == 0x009d
                     009D   308 _SM2	=	0x009d
                     009E   309 G$SM1$0$0 == 0x009e
                     009E   310 _SM1	=	0x009e
                     009F   311 G$SM0$0$0 == 0x009f
                     009F   312 _SM0	=	0x009f
                     00A0   313 G$P2_0$0$0 == 0x00a0
                     00A0   314 _P2_0	=	0x00a0
                     00A1   315 G$P2_1$0$0 == 0x00a1
                     00A1   316 _P2_1	=	0x00a1
                     00A2   317 G$P2_2$0$0 == 0x00a2
                     00A2   318 _P2_2	=	0x00a2
                     00A3   319 G$P2_3$0$0 == 0x00a3
                     00A3   320 _P2_3	=	0x00a3
                     00A4   321 G$P2_4$0$0 == 0x00a4
                     00A4   322 _P2_4	=	0x00a4
                     00A5   323 G$P2_5$0$0 == 0x00a5
                     00A5   324 _P2_5	=	0x00a5
                     00A6   325 G$P2_6$0$0 == 0x00a6
                     00A6   326 _P2_6	=	0x00a6
                     00A7   327 G$P2_7$0$0 == 0x00a7
                     00A7   328 _P2_7	=	0x00a7
                     00A8   329 G$EX0$0$0 == 0x00a8
                     00A8   330 _EX0	=	0x00a8
                     00A9   331 G$ET0$0$0 == 0x00a9
                     00A9   332 _ET0	=	0x00a9
                     00AA   333 G$EX1$0$0 == 0x00aa
                     00AA   334 _EX1	=	0x00aa
                     00AB   335 G$ET1$0$0 == 0x00ab
                     00AB   336 _ET1	=	0x00ab
                     00AC   337 G$ES$0$0 == 0x00ac
                     00AC   338 _ES	=	0x00ac
                     00AF   339 G$EA$0$0 == 0x00af
                     00AF   340 _EA	=	0x00af
                     00B0   341 G$P3_0$0$0 == 0x00b0
                     00B0   342 _P3_0	=	0x00b0
                     00B1   343 G$P3_1$0$0 == 0x00b1
                     00B1   344 _P3_1	=	0x00b1
                     00B2   345 G$P3_2$0$0 == 0x00b2
                     00B2   346 _P3_2	=	0x00b2
                     00B3   347 G$P3_3$0$0 == 0x00b3
                     00B3   348 _P3_3	=	0x00b3
                     00B4   349 G$P3_4$0$0 == 0x00b4
                     00B4   350 _P3_4	=	0x00b4
                     00B5   351 G$P3_5$0$0 == 0x00b5
                     00B5   352 _P3_5	=	0x00b5
                     00B6   353 G$P3_6$0$0 == 0x00b6
                     00B6   354 _P3_6	=	0x00b6
                     00B7   355 G$P3_7$0$0 == 0x00b7
                     00B7   356 _P3_7	=	0x00b7
                     00B0   357 G$RXD$0$0 == 0x00b0
                     00B0   358 _RXD	=	0x00b0
                     00B1   359 G$TXD$0$0 == 0x00b1
                     00B1   360 _TXD	=	0x00b1
                     00B2   361 G$INT0$0$0 == 0x00b2
                     00B2   362 _INT0	=	0x00b2
                     00B3   363 G$INT1$0$0 == 0x00b3
                     00B3   364 _INT1	=	0x00b3
                     00B4   365 G$T0$0$0 == 0x00b4
                     00B4   366 _T0	=	0x00b4
                     00B5   367 G$T1$0$0 == 0x00b5
                     00B5   368 _T1	=	0x00b5
                     00B6   369 G$WR$0$0 == 0x00b6
                     00B6   370 _WR	=	0x00b6
                     00B7   371 G$RD$0$0 == 0x00b7
                     00B7   372 _RD	=	0x00b7
                     00B8   373 G$PX0$0$0 == 0x00b8
                     00B8   374 _PX0	=	0x00b8
                     00B9   375 G$PT0$0$0 == 0x00b9
                     00B9   376 _PT0	=	0x00b9
                     00BA   377 G$PX1$0$0 == 0x00ba
                     00BA   378 _PX1	=	0x00ba
                     00BB   379 G$PT1$0$0 == 0x00bb
                     00BB   380 _PT1	=	0x00bb
                     00BC   381 G$PS$0$0 == 0x00bc
                     00BC   382 _PS	=	0x00bc
                     00D0   383 G$P$0$0 == 0x00d0
                     00D0   384 _P	=	0x00d0
                     00D1   385 G$F1$0$0 == 0x00d1
                     00D1   386 _F1	=	0x00d1
                     00D2   387 G$OV$0$0 == 0x00d2
                     00D2   388 _OV	=	0x00d2
                     00D3   389 G$RS0$0$0 == 0x00d3
                     00D3   390 _RS0	=	0x00d3
                     00D4   391 G$RS1$0$0 == 0x00d4
                     00D4   392 _RS1	=	0x00d4
                     00D5   393 G$F0$0$0 == 0x00d5
                     00D5   394 _F0	=	0x00d5
                     00D6   395 G$AC$0$0 == 0x00d6
                     00D6   396 _AC	=	0x00d6
                     00D7   397 G$CY$0$0 == 0x00d7
                     00D7   398 _CY	=	0x00d7
                            399 ;--------------------------------------------------------
                            400 ; overlayable register banks
                            401 ;--------------------------------------------------------
                            402 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     403 	.ds 8
                            404 	.area REG_BANK_1	(REL,OVR,DATA)
   0008                     405 	.ds 8
                            406 ;--------------------------------------------------------
                            407 ; internal ram data
                            408 ;--------------------------------------------------------
                            409 	.area DSEG    (DATA)
                     0000   410 FLEDBlink$SystemTimeInMs$0$0==.
   0021                     411 _SystemTimeInMs:
   0021                     412 	.ds 2
                     0002   413 FLEDBlink$LCD_PINS_SHIFT_REG_VALUES$0$0==.
   0023                     414 _LCD_PINS_SHIFT_REG_VALUES:
   0023                     415 	.ds 1
                     0003   416 LLEDBlink.LCD_SEND_8BITS$isCommand$1$56==.
   0024                     417 _LCD_SEND_8BITS_PARM_2:
   0024                     418 	.ds 1
                     0004   419 LLEDBlink.LCD_CMD_SET_CURSOR$row$1$63==.
   0025                     420 _LCD_CMD_SET_CURSOR_PARM_2:
   0025                     421 	.ds 1
                     0005   422 LLEDBlink.LCD_CMD_UPLOAD_CUSTOM_CHAR$charmap$1$66==.
   0026                     423 _LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2:
   0026                     424 	.ds 3
                     0008   425 LLEDBlink.LCD_PRINT$col$1$69==.
   0029                     426 _LCD_PRINT_PARM_2:
   0029                     427 	.ds 1
                     0009   428 LLEDBlink.LCD_PRINT$row$1$69==.
   002A                     429 _LCD_PRINT_PARM_3:
   002A                     430 	.ds 1
                     000A   431 FLEDBlink$Tetris_Board$0$0==.
   002B                     432 _Tetris_Board:
   002B                     433 	.ds 18
                     001C   434 LLEDBlink.SetBoard$y$1$78==.
   003D                     435 _SetBoard_PARM_2:
   003D                     436 	.ds 1
                     001D   437 LLEDBlink.SetBoard$set$1$78==.
   003E                     438 _SetBoard_PARM_3:
   003E                     439 	.ds 1
                     001E   440 LLEDBlink.GetBoard$y$1$83==.
   003F                     441 _GetBoard_PARM_2:
   003F                     442 	.ds 1
                     001F   443 LLEDBlink.PrintBoard$columns$1$86==.
   0040                     444 _PrintBoard_PARM_2:
   0040                     445 	.ds 1
                     0020   446 LLEDBlink.PrintBoard$part1$4$90==.
   0041                     447 _PrintBoard_part1_4_90:
   0041                     448 	.ds 1
                     0021   449 G$g_ShapeX$0$0==.
   0042                     450 _g_ShapeX::
   0042                     451 	.ds 1
                     0022   452 G$g_ShapeY$0$0==.
   0043                     453 _g_ShapeY::
   0043                     454 	.ds 1
                     0023   455 G$g_ShapeType$0$0==.
   0044                     456 _g_ShapeType::
   0044                     457 	.ds 1
                     0024   458 G$g_ShapeRotation$0$0==.
   0045                     459 _g_ShapeRotation::
   0045                     460 	.ds 1
                     0025   461 LLEDBlink.GetShapeData$y$1$91==.
   0046                     462 _GetShapeData_PARM_2:
   0046                     463 	.ds 1
                     0026   464 LLEDBlink.GetShapeData$shapeParts$1$92==.
   0047                     465 _GetShapeData_shapeParts_1_92:
   0047                     466 	.ds 4
                     002A   467 LLEDBlink.CheckMoveAllowed$newY$1$95==.
   004B                     468 _CheckMoveAllowed_PARM_2:
   004B                     469 	.ds 1
                     002B   470 FLEDBlink$g_PreviousTimeInMs$0$0==.
   004C                     471 _g_PreviousTimeInMs:
   004C                     472 	.ds 2
                     002D   473 FLEDBlink$g_ButtonTime$0$0==.
   004E                     474 _g_ButtonTime:
   004E                     475 	.ds 2
                     002F   476 FLEDBlink$g_FallTime$0$0==.
   0050                     477 _g_FallTime:
   0050                     478 	.ds 2
                     0031   479 FLEDBlink$g_FallIntervalInMs$0$0==.
   0052                     480 _g_FallIntervalInMs:
   0052                     481 	.ds 2
                     0033   482 LLEDBlink.GetInput$rotateButtonActiveForMs$1$106==.
   0054                     483 _GetInput_rotateButtonActiveForMs_1_106:
   0054                     484 	.ds 1
                     0034   485 LLEDBlink.GetInput$leftButtonActiveForMs$1$106==.
   0055                     486 _GetInput_leftButtonActiveForMs_1_106:
   0055                     487 	.ds 1
                     0035   488 LLEDBlink.GetInput$rightButtonActiveForMs$1$106==.
   0056                     489 _GetInput_rightButtonActiveForMs_1_106:
   0056                     490 	.ds 1
                     0036   491 LLEDBlink.GetInput$downButtonActiveForMs$1$106==.
   0057                     492 _GetInput_downButtonActiveForMs_1_106:
   0057                     493 	.ds 1
                     0037   494 LLEDBlink.GetInput$gameOverDetectedForMs$1$106==.
   0058                     495 _GetInput_gameOverDetectedForMs_1_106:
   0058                     496 	.ds 1
                     0038   497 LLEDBlink.ShiftTheBoard$linesToShift$1$130==.
   0059                     498 _ShiftTheBoard_linesToShift_1_130:
   0059                     499 	.ds 1
                     0039   500 LLEDBlink.ShiftTheBoard$i$1$130==.
   005A                     501 _ShiftTheBoard_i_1_130:
   005A                     502 	.ds 1
                            503 ;--------------------------------------------------------
                            504 ; overlayable items in internal ram 
                            505 ;--------------------------------------------------------
                            506 ;--------------------------------------------------------
                            507 ; Stack segment in internal ram 
                            508 ;--------------------------------------------------------
                            509 	.area	SSEG	(DATA)
   005B                     510 __start__stack:
   005B                     511 	.ds	1
                            512 
                            513 ;--------------------------------------------------------
                            514 ; indirectly addressable internal ram data
                            515 ;--------------------------------------------------------
                            516 	.area ISEG    (DATA)
                            517 ;--------------------------------------------------------
                            518 ; absolute internal ram data
                            519 ;--------------------------------------------------------
                            520 	.area IABS    (ABS,DATA)
                            521 	.area IABS    (ABS,DATA)
                            522 ;--------------------------------------------------------
                            523 ; bit data
                            524 ;--------------------------------------------------------
                            525 	.area BSEG    (BIT)
                     0000   526 FLEDBlink$g_GameOver$0$0==.
   0000                     527 _g_GameOver:
   0000                     528 	.ds 1
                     0001   529 LLEDBlink.GetInput$rotateButtonDown$1$106==.
   0001                     530 _GetInput_rotateButtonDown_1_106:
   0001                     531 	.ds 1
                     0002   532 LLEDBlink.GetInput$gameOverDetected$1$106==.
   0002                     533 _GetInput_gameOverDetected_1_106:
   0002                     534 	.ds 1
                            535 ;--------------------------------------------------------
                            536 ; paged external ram data
                            537 ;--------------------------------------------------------
                            538 	.area PSEG    (PAG,XDATA)
                            539 ;--------------------------------------------------------
                            540 ; external ram data
                            541 ;--------------------------------------------------------
                            542 	.area XSEG    (XDATA)
                            543 ;--------------------------------------------------------
                            544 ; absolute external ram data
                            545 ;--------------------------------------------------------
                            546 	.area XABS    (ABS,XDATA)
                            547 ;--------------------------------------------------------
                            548 ; external initialized ram data
                            549 ;--------------------------------------------------------
                            550 	.area XISEG   (XDATA)
                            551 	.area HOME    (CODE)
                            552 	.area GSINIT0 (CODE)
                            553 	.area GSINIT1 (CODE)
                            554 	.area GSINIT2 (CODE)
                            555 	.area GSINIT3 (CODE)
                            556 	.area GSINIT4 (CODE)
                            557 	.area GSINIT5 (CODE)
                            558 	.area GSINIT  (CODE)
                            559 	.area GSFINAL (CODE)
                            560 	.area CSEG    (CODE)
                            561 ;--------------------------------------------------------
                            562 ; interrupt vector 
                            563 ;--------------------------------------------------------
                            564 	.area HOME    (CODE)
   0000                     565 __interrupt_vect:
   0000 02 00 11      [24]  566 	ljmp	__sdcc_gsinit_startup
   0003 32            [24]  567 	reti
   0004                     568 	.ds	7
   000B 02 01 62      [24]  569 	ljmp	_tm0_isr
                            570 ;--------------------------------------------------------
                            571 ; global & static initialisations
                            572 ;--------------------------------------------------------
                            573 	.area HOME    (CODE)
                            574 	.area GSINIT  (CODE)
                            575 	.area GSFINAL (CODE)
                            576 	.area GSINIT  (CODE)
                            577 	.globl __sdcc_gsinit_startup
                            578 	.globl __sdcc_program_startup
                            579 	.globl __start__stack
                            580 	.globl __mcs51_genXINIT
                            581 	.globl __mcs51_genXRAMCLEAR
                            582 	.globl __mcs51_genRAMCLEAR
                            583 ;------------------------------------------------------------
                            584 ;Allocation info for local variables in function 'GetInput'
                            585 ;------------------------------------------------------------
                            586 ;timeDeltaInMs             Allocated to registers r7 
                            587 ;retVal                    Allocated to registers r6 
                            588 ;rotateButtonActiveForMs   Allocated with name '_GetInput_rotateButtonActiveForMs_1_106'
                            589 ;leftButtonActiveForMs     Allocated with name '_GetInput_leftButtonActiveForMs_1_106'
                            590 ;rightButtonActiveForMs    Allocated with name '_GetInput_rightButtonActiveForMs_1_106'
                            591 ;downButtonActiveForMs     Allocated with name '_GetInput_downButtonActiveForMs_1_106'
                            592 ;gameOverDetectedForMs     Allocated with name '_GetInput_gameOverDetectedForMs_1_106'
                            593 ;------------------------------------------------------------
                     0000   594 	G$GetInput$0$0 ==.
                     0000   595 	C$TetrisLogic.c$463$1$106 ==.
                            596 ;	src/EclipseTetris/TetrisLogic.c:463: static __bit rotateButtonDown = 0;
   006A C2 01         [12]  597 	clr	_GetInput_rotateButtonDown_1_106
                     0002   598 	C$TetrisLogic.c$464$1$106 ==.
                            599 ;	src/EclipseTetris/TetrisLogic.c:464: static __bit gameOverDetected = 0;
   006C C2 02         [12]  600 	clr	_GetInput_gameOverDetected_1_106
                     0004   601 	C$TetrisLogic.c$465$1$106 ==.
                            602 ;	src/EclipseTetris/TetrisLogic.c:465: static unsigned char rotateButtonActiveForMs = 0;
   006E 75 54 00      [24]  603 	mov	_GetInput_rotateButtonActiveForMs_1_106,#0x00
                     0007   604 	C$TetrisLogic.c$466$1$106 ==.
                            605 ;	src/EclipseTetris/TetrisLogic.c:466: static unsigned char leftButtonActiveForMs = 0;
   0071 75 55 00      [24]  606 	mov	_GetInput_leftButtonActiveForMs_1_106,#0x00
                     000A   607 	C$TetrisLogic.c$467$1$106 ==.
                            608 ;	src/EclipseTetris/TetrisLogic.c:467: static unsigned char rightButtonActiveForMs = 0;
   0074 75 56 00      [24]  609 	mov	_GetInput_rightButtonActiveForMs_1_106,#0x00
                     000D   610 	C$TetrisLogic.c$468$1$106 ==.
                            611 ;	src/EclipseTetris/TetrisLogic.c:468: static unsigned char downButtonActiveForMs = 0;
   0077 75 57 00      [24]  612 	mov	_GetInput_downButtonActiveForMs_1_106,#0x00
                     0010   613 	C$TetrisLogic.c$469$1$106 ==.
                            614 ;	src/EclipseTetris/TetrisLogic.c:469: static unsigned char gameOverDetectedForMs = 0;
   007A 75 58 00      [24]  615 	mov	_GetInput_gameOverDetectedForMs_1_106,#0x00
                     0013   616 	C$Timing.c$131$1$149 ==.
                            617 ;	src/Timing.c:131: static volatile unsigned int SystemTimeInMs = 0;
   007D E4            [12]  618 	clr	a
   007E F5 21         [12]  619 	mov	_SystemTimeInMs,a
   0080 F5 22         [12]  620 	mov	(_SystemTimeInMs + 1),a
                     0018   621 	C$LCDInterface.c$6$1$149 ==.
                            622 ;	src/LCDInterface.c:6: static unsigned char LCD_PINS_SHIFT_REG_VALUES = 0x00;
   0082 75 23 00      [24]  623 	mov	_LCD_PINS_SHIFT_REG_VALUES,#0x00
                     001B   624 	C$TetrisLogic.c$41$1$149 ==.
                            625 ;	src/EclipseTetris/TetrisLogic.c:41: static unsigned char Tetris_Board[((TETRIS_BOARD_HEIGHT + (TETRIS_BOARD_GUARD_BORDER_WIDTH * 2)) * (TETRIS_BOARD_WIDTH + (TETRIS_BOARD_GUARD_BORDER_WIDTH * 2)) + 1) / 8 ] =
   0085 75 2B FF      [24]  626 	mov	_Tetris_Board,#0xFF
   0088 75 2C 81      [24]  627 	mov	(_Tetris_Board + 0x0001),#0x81
   008B 75 2D 81      [24]  628 	mov	(_Tetris_Board + 0x0002),#0x81
   008E 75 2E 81      [24]  629 	mov	(_Tetris_Board + 0x0003),#0x81
   0091 75 2F 81      [24]  630 	mov	(_Tetris_Board + 0x0004),#0x81
   0094 75 30 81      [24]  631 	mov	(_Tetris_Board + 0x0005),#0x81
   0097 75 31 81      [24]  632 	mov	(_Tetris_Board + 0x0006),#0x81
   009A 75 32 81      [24]  633 	mov	(_Tetris_Board + 0x0007),#0x81
   009D 75 33 81      [24]  634 	mov	(_Tetris_Board + 0x0008),#0x81
   00A0 75 34 81      [24]  635 	mov	(_Tetris_Board + 0x0009),#0x81
   00A3 75 35 81      [24]  636 	mov	(_Tetris_Board + 0x000a),#0x81
   00A6 75 36 81      [24]  637 	mov	(_Tetris_Board + 0x000b),#0x81
   00A9 75 37 81      [24]  638 	mov	(_Tetris_Board + 0x000c),#0x81
   00AC 75 38 81      [24]  639 	mov	(_Tetris_Board + 0x000d),#0x81
   00AF 75 39 81      [24]  640 	mov	(_Tetris_Board + 0x000e),#0x81
   00B2 75 3A 81      [24]  641 	mov	(_Tetris_Board + 0x000f),#0x81
   00B5 75 3B 81      [24]  642 	mov	(_Tetris_Board + 0x0010),#0x81
   00B8 75 3C FF      [24]  643 	mov	(_Tetris_Board + 0x0011),#0xFF
                     0051   644 	C$TetrisLogic.c$319$1$149 ==.
                            645 ;	src/EclipseTetris/TetrisLogic.c:319: unsigned char g_ShapeX = 0;
   00BB 75 42 00      [24]  646 	mov	_g_ShapeX,#0x00
                     0054   647 	C$TetrisLogic.c$320$1$149 ==.
                            648 ;	src/EclipseTetris/TetrisLogic.c:320: unsigned char g_ShapeY = 0;
   00BE 75 43 00      [24]  649 	mov	_g_ShapeY,#0x00
                     0057   650 	C$TetrisLogic.c$321$1$149 ==.
                            651 ;	src/EclipseTetris/TetrisLogic.c:321: unsigned char g_ShapeType = 0;
   00C1 75 44 00      [24]  652 	mov	_g_ShapeType,#0x00
                     005A   653 	C$TetrisLogic.c$322$1$149 ==.
                            654 ;	src/EclipseTetris/TetrisLogic.c:322: unsigned char g_ShapeRotation = 0;
   00C4 75 45 00      [24]  655 	mov	_g_ShapeRotation,#0x00
                     005D   656 	C$TetrisLogic.c$414$1$149 ==.
                            657 ;	src/EclipseTetris/TetrisLogic.c:414: static unsigned int g_PreviousTimeInMs = 0;
   00C7 E4            [12]  658 	clr	a
   00C8 F5 4C         [12]  659 	mov	_g_PreviousTimeInMs,a
   00CA F5 4D         [12]  660 	mov	(_g_PreviousTimeInMs + 1),a
                     0062   661 	C$TetrisLogic.c$415$1$149 ==.
                            662 ;	src/EclipseTetris/TetrisLogic.c:415: static unsigned short g_ButtonTime = 0;
   00CC E4            [12]  663 	clr	a
   00CD F5 4E         [12]  664 	mov	_g_ButtonTime,a
   00CF F5 4F         [12]  665 	mov	(_g_ButtonTime + 1),a
                     0067   666 	C$TetrisLogic.c$416$1$149 ==.
                            667 ;	src/EclipseTetris/TetrisLogic.c:416: static unsigned short g_FallTime = 0;
   00D1 E4            [12]  668 	clr	a
   00D2 F5 50         [12]  669 	mov	_g_FallTime,a
   00D4 F5 51         [12]  670 	mov	(_g_FallTime + 1),a
                     006C   671 	C$TetrisLogic.c$417$1$149 ==.
                            672 ;	src/EclipseTetris/TetrisLogic.c:417: static unsigned short g_FallIntervalInMs = DEFAULT_FALL_INTERVAL_IN_MS;
   00D6 75 52 E8      [24]  673 	mov	_g_FallIntervalInMs,#0xE8
   00D9 75 53 03      [24]  674 	mov	(_g_FallIntervalInMs + 1),#0x03
                     0072   675 	C$TetrisLogic.c$422$1$149 ==.
                            676 ;	src/EclipseTetris/TetrisLogic.c:422: static __bit g_GameOver = 0;
   00DC C2 00         [12]  677 	clr	_g_GameOver
                            678 	.area GSFINAL (CODE)
   00DE 02 00 0E      [24]  679 	ljmp	__sdcc_program_startup
                            680 ;--------------------------------------------------------
                            681 ; Home
                            682 ;--------------------------------------------------------
                            683 	.area HOME    (CODE)
                            684 	.area HOME    (CODE)
   000E                     685 __sdcc_program_startup:
   000E 02 09 DB      [24]  686 	ljmp	_main
                            687 ;	return from main will return to caller
                            688 ;--------------------------------------------------------
                            689 ; code
                            690 ;--------------------------------------------------------
                            691 	.area CSEG    (CODE)
                            692 ;------------------------------------------------------------
                            693 ;Allocation info for local variables in function 'Delay1ms'
                            694 ;------------------------------------------------------------
                            695 ;i                         Allocated to registers r6 r7 
                            696 ;------------------------------------------------------------
                     0000   697 	G$Delay1ms$0$0 ==.
                     0000   698 	C$Timing.c$7$0$0 ==.
                            699 ;	src/Timing.c:7: void Delay1ms(void)
                            700 ;	-----------------------------------------
                            701 ;	 function Delay1ms
                            702 ;	-----------------------------------------
   00E1                     703 _Delay1ms:
                     0007   704 	ar7 = 0x07
                     0006   705 	ar6 = 0x06
                     0005   706 	ar5 = 0x05
                     0004   707 	ar4 = 0x04
                     0003   708 	ar3 = 0x03
                     0002   709 	ar2 = 0x02
                     0001   710 	ar1 = 0x01
                     0000   711 	ar0 = 0x00
                     0000   712 	C$Timing.c$10$1$2 ==.
                            713 ;	src/Timing.c:10: for(i = 0; i < (CPU_FREQUENCY_IN_KHZ / 128); i++)
   00E1 7E 2B         [12]  714 	mov	r6,#0x2B
   00E3 7F 00         [12]  715 	mov	r7,#0x00
   00E5                     716 00104$:
                     0004   717 	C$Timing.c$13$2$3 ==.
                            718 ;	src/Timing.c:13: __asm__("nop");
   00E5 00            [12]  719 	nop
                     0005   720 	C$Timing.c$14$2$3 ==.
                            721 ;	src/Timing.c:14: __asm__("nop");
   00E6 00            [12]  722 	nop
                     0006   723 	C$Timing.c$15$2$3 ==.
                            724 ;	src/Timing.c:15: __asm__("nop");
   00E7 00            [12]  725 	nop
                     0007   726 	C$Timing.c$16$2$3 ==.
                            727 ;	src/Timing.c:16: __asm__("nop");
   00E8 00            [12]  728 	nop
                     0008   729 	C$Timing.c$17$2$3 ==.
                            730 ;	src/Timing.c:17: __asm__("nop");
   00E9 00            [12]  731 	nop
                     0009   732 	C$Timing.c$18$2$3 ==.
                            733 ;	src/Timing.c:18: __asm__("nop");
   00EA 00            [12]  734 	nop
                     000A   735 	C$Timing.c$19$2$3 ==.
                            736 ;	src/Timing.c:19: __asm__("nop");
   00EB 00            [12]  737 	nop
                     000B   738 	C$Timing.c$20$2$3 ==.
                            739 ;	src/Timing.c:20: __asm__("nop");
   00EC 00            [12]  740 	nop
                     000C   741 	C$Timing.c$21$2$3 ==.
                            742 ;	src/Timing.c:21: __asm__("nop");
   00ED 00            [12]  743 	nop
                     000D   744 	C$Timing.c$22$2$3 ==.
                            745 ;	src/Timing.c:22: __asm__("nop");
   00EE 00            [12]  746 	nop
                     000E   747 	C$Timing.c$23$2$3 ==.
                            748 ;	src/Timing.c:23: __asm__("nop");
   00EF 00            [12]  749 	nop
                     000F   750 	C$Timing.c$24$2$3 ==.
                            751 ;	src/Timing.c:24: __asm__("nop");
   00F0 00            [12]  752 	nop
                     0010   753 	C$Timing.c$25$2$3 ==.
                            754 ;	src/Timing.c:25: __asm__("nop");
   00F1 00            [12]  755 	nop
                     0011   756 	C$Timing.c$26$2$3 ==.
                            757 ;	src/Timing.c:26: __asm__("nop");
   00F2 00            [12]  758 	nop
                     0012   759 	C$Timing.c$27$2$3 ==.
                            760 ;	src/Timing.c:27: __asm__("nop");
   00F3 00            [12]  761 	nop
                     0013   762 	C$Timing.c$28$2$3 ==.
                            763 ;	src/Timing.c:28: __asm__("nop");
   00F4 00            [12]  764 	nop
                     0014   765 	C$Timing.c$29$2$3 ==.
                            766 ;	src/Timing.c:29: __asm__("nop");
   00F5 00            [12]  767 	nop
                     0015   768 	C$Timing.c$30$2$3 ==.
                            769 ;	src/Timing.c:30: __asm__("nop");
   00F6 00            [12]  770 	nop
                     0016   771 	C$Timing.c$31$2$3 ==.
                            772 ;	src/Timing.c:31: __asm__("nop");
   00F7 00            [12]  773 	nop
                     0017   774 	C$Timing.c$32$2$3 ==.
                            775 ;	src/Timing.c:32: __asm__("nop");
   00F8 00            [12]  776 	nop
                     0018   777 	C$Timing.c$33$2$3 ==.
                            778 ;	src/Timing.c:33: __asm__("nop");
   00F9 00            [12]  779 	nop
                     0019   780 	C$Timing.c$34$2$3 ==.
                            781 ;	src/Timing.c:34: __asm__("nop");
   00FA 00            [12]  782 	nop
                     001A   783 	C$Timing.c$35$2$3 ==.
                            784 ;	src/Timing.c:35: __asm__("nop");
   00FB 00            [12]  785 	nop
                     001B   786 	C$Timing.c$36$2$3 ==.
                            787 ;	src/Timing.c:36: __asm__("nop");
   00FC 00            [12]  788 	nop
                     001C   789 	C$Timing.c$37$2$3 ==.
                            790 ;	src/Timing.c:37: __asm__("nop");
   00FD 00            [12]  791 	nop
                     001D   792 	C$Timing.c$38$2$3 ==.
                            793 ;	src/Timing.c:38: __asm__("nop");
   00FE 00            [12]  794 	nop
                     001E   795 	C$Timing.c$39$2$3 ==.
                            796 ;	src/Timing.c:39: __asm__("nop");
   00FF 00            [12]  797 	nop
                     001F   798 	C$Timing.c$40$2$3 ==.
                            799 ;	src/Timing.c:40: __asm__("nop");
   0100 00            [12]  800 	nop
                     0020   801 	C$Timing.c$41$2$3 ==.
                            802 ;	src/Timing.c:41: __asm__("nop");
   0101 00            [12]  803 	nop
                     0021   804 	C$Timing.c$42$2$3 ==.
                            805 ;	src/Timing.c:42: __asm__("nop");
   0102 00            [12]  806 	nop
                     0022   807 	C$Timing.c$43$2$3 ==.
                            808 ;	src/Timing.c:43: __asm__("nop");
   0103 00            [12]  809 	nop
                     0023   810 	C$Timing.c$44$2$3 ==.
                            811 ;	src/Timing.c:44: __asm__("nop");
   0104 00            [12]  812 	nop
                     0024   813 	C$Timing.c$45$2$3 ==.
                            814 ;	src/Timing.c:45: __asm__("nop");
   0105 00            [12]  815 	nop
                     0025   816 	C$Timing.c$46$2$3 ==.
                            817 ;	src/Timing.c:46: __asm__("nop");
   0106 00            [12]  818 	nop
                     0026   819 	C$Timing.c$47$2$3 ==.
                            820 ;	src/Timing.c:47: __asm__("nop");
   0107 00            [12]  821 	nop
                     0027   822 	C$Timing.c$48$2$3 ==.
                            823 ;	src/Timing.c:48: __asm__("nop");
   0108 00            [12]  824 	nop
                     0028   825 	C$Timing.c$49$2$3 ==.
                            826 ;	src/Timing.c:49: __asm__("nop");
   0109 00            [12]  827 	nop
                     0029   828 	C$Timing.c$50$2$3 ==.
                            829 ;	src/Timing.c:50: __asm__("nop");
   010A 00            [12]  830 	nop
                     002A   831 	C$Timing.c$51$2$3 ==.
                            832 ;	src/Timing.c:51: __asm__("nop");
   010B 00            [12]  833 	nop
                     002B   834 	C$Timing.c$52$2$3 ==.
                            835 ;	src/Timing.c:52: __asm__("nop");
   010C 00            [12]  836 	nop
                     002C   837 	C$Timing.c$53$2$3 ==.
                            838 ;	src/Timing.c:53: __asm__("nop");
   010D 00            [12]  839 	nop
                     002D   840 	C$Timing.c$54$2$3 ==.
                            841 ;	src/Timing.c:54: __asm__("nop");
   010E 00            [12]  842 	nop
                     002E   843 	C$Timing.c$55$2$3 ==.
                            844 ;	src/Timing.c:55: __asm__("nop");
   010F 00            [12]  845 	nop
                     002F   846 	C$Timing.c$56$2$3 ==.
                            847 ;	src/Timing.c:56: __asm__("nop");
   0110 00            [12]  848 	nop
                     0030   849 	C$Timing.c$57$2$3 ==.
                            850 ;	src/Timing.c:57: __asm__("nop");
   0111 00            [12]  851 	nop
                     0031   852 	C$Timing.c$58$2$3 ==.
                            853 ;	src/Timing.c:58: __asm__("nop");
   0112 00            [12]  854 	nop
                     0032   855 	C$Timing.c$59$2$3 ==.
                            856 ;	src/Timing.c:59: __asm__("nop");
   0113 00            [12]  857 	nop
                     0033   858 	C$Timing.c$60$2$3 ==.
                            859 ;	src/Timing.c:60: __asm__("nop");
   0114 00            [12]  860 	nop
                     0034   861 	C$Timing.c$61$2$3 ==.
                            862 ;	src/Timing.c:61: __asm__("nop");
   0115 00            [12]  863 	nop
                     0035   864 	C$Timing.c$62$2$3 ==.
                            865 ;	src/Timing.c:62: __asm__("nop");
   0116 00            [12]  866 	nop
                     0036   867 	C$Timing.c$63$2$3 ==.
                            868 ;	src/Timing.c:63: __asm__("nop");
   0117 00            [12]  869 	nop
                     0037   870 	C$Timing.c$64$2$3 ==.
                            871 ;	src/Timing.c:64: __asm__("nop");
   0118 00            [12]  872 	nop
                     0038   873 	C$Timing.c$65$2$3 ==.
                            874 ;	src/Timing.c:65: __asm__("nop");
   0119 00            [12]  875 	nop
                     0039   876 	C$Timing.c$66$2$3 ==.
                            877 ;	src/Timing.c:66: __asm__("nop");
   011A 00            [12]  878 	nop
                     003A   879 	C$Timing.c$67$2$3 ==.
                            880 ;	src/Timing.c:67: __asm__("nop");
   011B 00            [12]  881 	nop
                     003B   882 	C$Timing.c$68$2$3 ==.
                            883 ;	src/Timing.c:68: __asm__("nop");
   011C 00            [12]  884 	nop
                     003C   885 	C$Timing.c$69$2$3 ==.
                            886 ;	src/Timing.c:69: __asm__("nop");
   011D 00            [12]  887 	nop
                     003D   888 	C$Timing.c$70$2$3 ==.
                            889 ;	src/Timing.c:70: __asm__("nop");
   011E 00            [12]  890 	nop
                     003E   891 	C$Timing.c$71$2$3 ==.
                            892 ;	src/Timing.c:71: __asm__("nop");
   011F 00            [12]  893 	nop
                     003F   894 	C$Timing.c$72$2$3 ==.
                            895 ;	src/Timing.c:72: __asm__("nop");
   0120 00            [12]  896 	nop
                     0040   897 	C$Timing.c$73$2$3 ==.
                            898 ;	src/Timing.c:73: __asm__("nop");
   0121 00            [12]  899 	nop
                     0041   900 	C$Timing.c$74$2$3 ==.
                            901 ;	src/Timing.c:74: __asm__("nop");
   0122 00            [12]  902 	nop
                     0042   903 	C$Timing.c$75$2$3 ==.
                            904 ;	src/Timing.c:75: __asm__("nop");
   0123 00            [12]  905 	nop
                     0043   906 	C$Timing.c$76$2$3 ==.
                            907 ;	src/Timing.c:76: __asm__("nop");
   0124 00            [12]  908 	nop
                     0044   909 	C$Timing.c$77$2$3 ==.
                            910 ;	src/Timing.c:77: __asm__("nop");
   0125 00            [12]  911 	nop
                     0045   912 	C$Timing.c$78$2$3 ==.
                            913 ;	src/Timing.c:78: __asm__("nop");
   0126 00            [12]  914 	nop
                     0046   915 	C$Timing.c$79$2$3 ==.
                            916 ;	src/Timing.c:79: __asm__("nop");
   0127 00            [12]  917 	nop
                     0047   918 	C$Timing.c$80$2$3 ==.
                            919 ;	src/Timing.c:80: __asm__("nop");
   0128 00            [12]  920 	nop
                     0048   921 	C$Timing.c$81$2$3 ==.
                            922 ;	src/Timing.c:81: __asm__("nop");
   0129 00            [12]  923 	nop
                     0049   924 	C$Timing.c$82$2$3 ==.
                            925 ;	src/Timing.c:82: __asm__("nop");
   012A 00            [12]  926 	nop
                     004A   927 	C$Timing.c$83$2$3 ==.
                            928 ;	src/Timing.c:83: __asm__("nop");
   012B 00            [12]  929 	nop
                     004B   930 	C$Timing.c$84$2$3 ==.
                            931 ;	src/Timing.c:84: __asm__("nop");
   012C 00            [12]  932 	nop
                     004C   933 	C$Timing.c$85$2$3 ==.
                            934 ;	src/Timing.c:85: __asm__("nop");
   012D 00            [12]  935 	nop
                     004D   936 	C$Timing.c$86$2$3 ==.
                            937 ;	src/Timing.c:86: __asm__("nop");
   012E 00            [12]  938 	nop
                     004E   939 	C$Timing.c$87$2$3 ==.
                            940 ;	src/Timing.c:87: __asm__("nop");
   012F 00            [12]  941 	nop
                     004F   942 	C$Timing.c$88$2$3 ==.
                            943 ;	src/Timing.c:88: __asm__("nop");
   0130 00            [12]  944 	nop
                     0050   945 	C$Timing.c$89$2$3 ==.
                            946 ;	src/Timing.c:89: __asm__("nop");
   0131 00            [12]  947 	nop
                     0051   948 	C$Timing.c$90$2$3 ==.
                            949 ;	src/Timing.c:90: __asm__("nop");
   0132 00            [12]  950 	nop
                     0052   951 	C$Timing.c$91$2$3 ==.
                            952 ;	src/Timing.c:91: __asm__("nop");
   0133 00            [12]  953 	nop
                     0053   954 	C$Timing.c$92$2$3 ==.
                            955 ;	src/Timing.c:92: __asm__("nop");
   0134 00            [12]  956 	nop
                     0054   957 	C$Timing.c$93$2$3 ==.
                            958 ;	src/Timing.c:93: __asm__("nop");
   0135 00            [12]  959 	nop
                     0055   960 	C$Timing.c$94$2$3 ==.
                            961 ;	src/Timing.c:94: __asm__("nop");
   0136 00            [12]  962 	nop
                     0056   963 	C$Timing.c$95$2$3 ==.
                            964 ;	src/Timing.c:95: __asm__("nop");
   0137 00            [12]  965 	nop
                     0057   966 	C$Timing.c$96$2$3 ==.
                            967 ;	src/Timing.c:96: __asm__("nop");
   0138 00            [12]  968 	nop
                     0058   969 	C$Timing.c$97$2$3 ==.
                            970 ;	src/Timing.c:97: __asm__("nop");
   0139 00            [12]  971 	nop
                     0059   972 	C$Timing.c$98$2$3 ==.
                            973 ;	src/Timing.c:98: __asm__("nop");
   013A 00            [12]  974 	nop
                     005A   975 	C$Timing.c$99$2$3 ==.
                            976 ;	src/Timing.c:99: __asm__("nop");
   013B 00            [12]  977 	nop
                     005B   978 	C$Timing.c$100$2$3 ==.
                            979 ;	src/Timing.c:100: __asm__("nop");
   013C 00            [12]  980 	nop
                     005C   981 	C$Timing.c$101$2$3 ==.
                            982 ;	src/Timing.c:101: __asm__("nop");
   013D 00            [12]  983 	nop
                     005D   984 	C$Timing.c$102$2$3 ==.
                            985 ;	src/Timing.c:102: __asm__("nop");
   013E 00            [12]  986 	nop
                     005E   987 	C$Timing.c$103$2$3 ==.
                            988 ;	src/Timing.c:103: __asm__("nop");
   013F 00            [12]  989 	nop
                     005F   990 	C$Timing.c$104$2$3 ==.
                            991 ;	src/Timing.c:104: __asm__("nop");
   0140 00            [12]  992 	nop
                     0060   993 	C$Timing.c$105$2$3 ==.
                            994 ;	src/Timing.c:105: __asm__("nop");
   0141 00            [12]  995 	nop
                     0061   996 	C$Timing.c$106$2$3 ==.
                            997 ;	src/Timing.c:106: __asm__("nop");
   0142 00            [12]  998 	nop
                     0062   999 	C$Timing.c$107$2$3 ==.
                           1000 ;	src/Timing.c:107: __asm__("nop");
   0143 00            [12] 1001 	nop
                     0063  1002 	C$Timing.c$108$2$3 ==.
                           1003 ;	src/Timing.c:108: __asm__("nop");
   0144 00            [12] 1004 	nop
                     0064  1005 	C$Timing.c$109$2$3 ==.
                           1006 ;	src/Timing.c:109: __asm__("nop");
   0145 00            [12] 1007 	nop
                     0065  1008 	C$Timing.c$110$2$3 ==.
                           1009 ;	src/Timing.c:110: __asm__("nop");
   0146 00            [12] 1010 	nop
                     0066  1011 	C$Timing.c$111$2$3 ==.
                           1012 ;	src/Timing.c:111: __asm__("nop");
   0147 00            [12] 1013 	nop
                     0067  1014 	C$Timing.c$112$2$3 ==.
                           1015 ;	src/Timing.c:112: __asm__("nop");
   0148 00            [12] 1016 	nop
                     0068  1017 	C$Timing.c$113$2$3 ==.
                           1018 ;	src/Timing.c:113: __asm__("nop");
   0149 00            [12] 1019 	nop
                     0069  1020 	C$Timing.c$114$2$3 ==.
                           1021 ;	src/Timing.c:114: __asm__("nop");
   014A 00            [12] 1022 	nop
                     006A  1023 	C$Timing.c$115$2$3 ==.
                           1024 ;	src/Timing.c:115: __asm__("nop");
   014B 00            [12] 1025 	nop
                     006B  1026 	C$Timing.c$116$2$3 ==.
                           1027 ;	src/Timing.c:116: __asm__("nop");
   014C 00            [12] 1028 	nop
                     006C  1029 	C$Timing.c$117$2$3 ==.
                           1030 ;	src/Timing.c:117: __asm__("nop");
   014D 00            [12] 1031 	nop
                     006D  1032 	C$Timing.c$118$2$3 ==.
                           1033 ;	src/Timing.c:118: __asm__("nop");
   014E 00            [12] 1034 	nop
                     006E  1035 	C$Timing.c$119$2$3 ==.
                           1036 ;	src/Timing.c:119: __asm__("nop");
   014F 00            [12] 1037 	nop
                     006F  1038 	C$Timing.c$120$2$3 ==.
                           1039 ;	src/Timing.c:120: __asm__("nop");
   0150 00            [12] 1040 	nop
                     0070  1041 	C$Timing.c$121$2$3 ==.
                           1042 ;	src/Timing.c:121: __asm__("nop");
   0151 00            [12] 1043 	nop
                     0071  1044 	C$Timing.c$122$2$3 ==.
                           1045 ;	src/Timing.c:122: __asm__("nop");
   0152 00            [12] 1046 	nop
                     0072  1047 	C$Timing.c$123$2$3 ==.
                           1048 ;	src/Timing.c:123: __asm__("nop");
   0153 00            [12] 1049 	nop
                     0073  1050 	C$Timing.c$124$2$3 ==.
                           1051 ;	src/Timing.c:124: __asm__("nop");
   0154 00            [12] 1052 	nop
                     0074  1053 	C$Timing.c$125$2$3 ==.
                           1054 ;	src/Timing.c:125: __asm__("nop");
   0155 00            [12] 1055 	nop
                     0075  1056 	C$Timing.c$126$2$3 ==.
                           1057 ;	src/Timing.c:126: __asm__("nop");
   0156 00            [12] 1058 	nop
                     0076  1059 	C$Timing.c$127$2$3 ==.
                           1060 ;	src/Timing.c:127: __asm__("nop");
   0157 00            [12] 1061 	nop
   0158 1E            [12] 1062 	dec	r6
   0159 BE FF 01      [24] 1063 	cjne	r6,#0xFF,00111$
   015C 1F            [12] 1064 	dec	r7
   015D                    1065 00111$:
                     007C  1066 	C$Timing.c$10$2$3 ==.
                           1067 ;	src/Timing.c:10: for(i = 0; i < (CPU_FREQUENCY_IN_KHZ / 128); i++)
   015D EE            [12] 1068 	mov	a,r6
   015E 4F            [12] 1069 	orl	a,r7
   015F 70 84         [24] 1070 	jnz	00104$
                     0080  1071 	C$Timing.c$129$1$2 ==.
                     0080  1072 	XG$Delay1ms$0$0 ==.
   0161 22            [24] 1073 	ret
                           1074 ;------------------------------------------------------------
                           1075 ;Allocation info for local variables in function 'tm0_isr'
                           1076 ;------------------------------------------------------------
                     0081  1077 	G$tm0_isr$0$0 ==.
                     0081  1078 	C$Timing.c$133$1$2 ==.
                           1079 ;	src/Timing.c:133: void tm0_isr() __interrupt (1) __using (1)
                           1080 ;	-----------------------------------------
                           1081 ;	 function tm0_isr
                           1082 ;	-----------------------------------------
   0162                    1083 _tm0_isr:
                     000F  1084 	ar7 = 0x0F
                     000E  1085 	ar6 = 0x0E
                     000D  1086 	ar5 = 0x0D
                     000C  1087 	ar4 = 0x0C
                     000B  1088 	ar3 = 0x0B
                     000A  1089 	ar2 = 0x0A
                     0009  1090 	ar1 = 0x09
                     0008  1091 	ar0 = 0x08
   0162 C0 E0         [24] 1092 	push	acc
   0164 C0 D0         [24] 1093 	push	psw
                     0085  1094 	C$Timing.c$135$1$4 ==.
                           1095 ;	src/Timing.c:135: SystemTimeInMs++;
   0166 74 01         [12] 1096 	mov	a,#0x01
   0168 25 21         [12] 1097 	add	a,_SystemTimeInMs
   016A F5 21         [12] 1098 	mov	_SystemTimeInMs,a
   016C E4            [12] 1099 	clr	a
   016D 35 22         [12] 1100 	addc	a,(_SystemTimeInMs + 1)
   016F F5 22         [12] 1101 	mov	(_SystemTimeInMs + 1),a
   0171 D0 D0         [24] 1102 	pop	psw
   0173 D0 E0         [24] 1103 	pop	acc
                     0094  1104 	C$Timing.c$136$1$4 ==.
                     0094  1105 	XG$tm0_isr$0$0 ==.
   0175 32            [24] 1106 	reti
                           1107 ;	eliminated unneeded mov psw,# (no regs used in bank)
                           1108 ;	eliminated unneeded push/pop dpl
                           1109 ;	eliminated unneeded push/pop dph
                           1110 ;	eliminated unneeded push/pop b
                           1111 ;------------------------------------------------------------
                           1112 ;Allocation info for local variables in function 'Start1MsSystemTimer'
                           1113 ;------------------------------------------------------------
                     0095  1114 	G$Start1MsSystemTimer$0$0 ==.
                     0095  1115 	C$Timing.c$138$1$4 ==.
                           1116 ;	src/Timing.c:138: void Start1MsSystemTimer()
                           1117 ;	-----------------------------------------
                           1118 ;	 function Start1MsSystemTimer
                           1119 ;	-----------------------------------------
   0176                    1120 _Start1MsSystemTimer:
                     0007  1121 	ar7 = 0x07
                     0006  1122 	ar6 = 0x06
                     0005  1123 	ar5 = 0x05
                     0004  1124 	ar4 = 0x04
                     0003  1125 	ar3 = 0x03
                     0002  1126 	ar2 = 0x02
                     0001  1127 	ar1 = 0x01
                     0000  1128 	ar0 = 0x00
                     0095  1129 	C$Timing.c$142$1$5 ==.
                           1130 ;	src/Timing.c:142: AUXR |= 0x80;
   0176 43 8E 80      [24] 1131 	orl	_AUXR,#0x80
                     0098  1132 	C$Timing.c$143$1$5 ==.
                           1133 ;	src/Timing.c:143: TMOD = 0x00; // Set T0 as 16-bit auto-reload timer/counter
   0179 75 89 00      [24] 1134 	mov	_TMOD,#0x00
                     009B  1135 	C$Timing.c$144$1$5 ==.
                           1136 ;	src/Timing.c:144: TL0 = T1MS;  // Initialize the timing value
   017C 75 8A 66      [24] 1137 	mov	_TL0,#0x66
                     009E  1138 	C$Timing.c$145$1$5 ==.
                           1139 ;	src/Timing.c:145: TH0 = (T1MS >> 8);  
   017F 75 8C EA      [24] 1140 	mov	_TH0,#0xEA
                     00A1  1141 	C$Timing.c$146$1$5 ==.
                           1142 ;	src/Timing.c:146: TR0 = 1;     // Run T0
   0182 D2 8C         [12] 1143 	setb	_TR0
                     00A3  1144 	C$Timing.c$147$1$5 ==.
                           1145 ;	src/Timing.c:147: ET0 = 1;     // Enable T0 interrupt
   0184 D2 A9         [12] 1146 	setb	_ET0
                     00A5  1147 	C$Timing.c$148$1$5 ==.
                           1148 ;	src/Timing.c:148: EA = 1;
   0186 D2 AF         [12] 1149 	setb	_EA
                     00A7  1150 	C$Timing.c$149$1$5 ==.
                     00A7  1151 	XG$Start1MsSystemTimer$0$0 ==.
   0188 22            [24] 1152 	ret
                           1153 ;------------------------------------------------------------
                           1154 ;Allocation info for local variables in function 'GetSystemTimeInMs'
                           1155 ;------------------------------------------------------------
                     00A8  1156 	G$GetSystemTimeInMs$0$0 ==.
                     00A8  1157 	C$Timing.c$151$1$5 ==.
                           1158 ;	src/Timing.c:151: unsigned int GetSystemTimeInMs()
                           1159 ;	-----------------------------------------
                           1160 ;	 function GetSystemTimeInMs
                           1161 ;	-----------------------------------------
   0189                    1162 _GetSystemTimeInMs:
                     00A8  1163 	C$Timing.c$153$1$6 ==.
                           1164 ;	src/Timing.c:153: return SystemTimeInMs;
   0189 85 21 82      [24] 1165 	mov	dpl,_SystemTimeInMs
   018C 85 22 83      [24] 1166 	mov	dph,(_SystemTimeInMs + 1)
                     00AE  1167 	C$Timing.c$154$1$6 ==.
                     00AE  1168 	XG$GetSystemTimeInMs$0$0 ==.
   018F 22            [24] 1169 	ret
                           1170 ;------------------------------------------------------------
                           1171 ;Allocation info for local variables in function 'ShiftRegisterInit'
                           1172 ;------------------------------------------------------------
                           1173 ;tempValReg0               Allocated to registers r7 
                           1174 ;tempValReg1               Allocated to registers r6 
                           1175 ;tempValReg0               Allocated to registers r7 
                           1176 ;tempValReg1               Allocated to registers r6 
                           1177 ;tempValReg0               Allocated to registers r7 
                           1178 ;tempValReg1               Allocated to registers r6 
                           1179 ;tempValReg0               Allocated to registers r7 
                           1180 ;tempValReg1               Allocated to registers r6 
                           1181 ;tempValReg0               Allocated to registers r7 
                           1182 ;tempValReg1               Allocated to registers r6 
                           1183 ;tempValReg0               Allocated to registers r7 
                           1184 ;tempValReg1               Allocated to registers r6 
                           1185 ;------------------------------------------------------------
                     00AF  1186 	G$ShiftRegisterInit$0$0 ==.
                     00AF  1187 	C$ShiftRegister.c$13$1$6 ==.
                           1188 ;	src/ShiftRegister.c:13: void ShiftRegisterInit()
                           1189 ;	-----------------------------------------
                           1190 ;	 function ShiftRegisterInit
                           1191 ;	-----------------------------------------
   0190                    1192 _ShiftRegisterInit:
                     00AF  1193 	C$ShiftRegister.c$15$2$8 ==.
                           1194 ;	src/ShiftRegister.c:15: CONFIGURE_PORT3_PIN(2, PORT_PINT_CONFIG_INPUT_ONLY);
   0190 AF B2         [24] 1195 	mov	r7,_P3M0
   0192 AE B1         [24] 1196 	mov	r6,_P3M1
   0194 74 FB         [12] 1197 	mov	a,#0xFB
   0196 5F            [12] 1198 	anl	a,r7
   0197 F5 B2         [12] 1199 	mov	_P3M0,a
   0199 8E 07         [24] 1200 	mov	ar7,r6
   019B 74 FB         [12] 1201 	mov	a,#0xFB
   019D 5F            [12] 1202 	anl	a,r7
   019E FE            [12] 1203 	mov	r6,a
   019F 74 04         [12] 1204 	mov	a,#0x04
   01A1 4E            [12] 1205 	orl	a,r6
   01A2 F5 B1         [12] 1206 	mov	_P3M1,a
                     00C3  1207 	C$ShiftRegister.c$16$2$8 ==.
                           1208 ;	src/ShiftRegister.c:16: CONFIGURE_PORT3_PIN(1, PORT_PINT_CONFIG_INPUT_ONLY);
   01A4 AF B2         [24] 1209 	mov	r7,_P3M0
   01A6 AE B1         [24] 1210 	mov	r6,_P3M1
   01A8 74 FD         [12] 1211 	mov	a,#0xFD
   01AA 5F            [12] 1212 	anl	a,r7
   01AB F5 B2         [12] 1213 	mov	_P3M0,a
   01AD 8E 07         [24] 1214 	mov	ar7,r6
   01AF 74 FD         [12] 1215 	mov	a,#0xFD
   01B1 5F            [12] 1216 	anl	a,r7
   01B2 FE            [12] 1217 	mov	r6,a
   01B3 74 02         [12] 1218 	mov	a,#0x02
   01B5 4E            [12] 1219 	orl	a,r6
   01B6 F5 B1         [12] 1220 	mov	_P3M1,a
                     00D7  1221 	C$ShiftRegister.c$17$2$8 ==.
                           1222 ;	src/ShiftRegister.c:17: CONFIGURE_PORT3_PIN(0, PORT_PINT_CONFIG_INPUT_ONLY);
   01B8 AF B2         [24] 1223 	mov	r7,_P3M0
   01BA AE B1         [24] 1224 	mov	r6,_P3M1
   01BC 74 FE         [12] 1225 	mov	a,#0xFE
   01BE 5F            [12] 1226 	anl	a,r7
   01BF F5 B2         [12] 1227 	mov	_P3M0,a
   01C1 8E 07         [24] 1228 	mov	ar7,r6
   01C3 74 FE         [12] 1229 	mov	a,#0xFE
   01C5 5F            [12] 1230 	anl	a,r7
   01C6 FE            [12] 1231 	mov	r6,a
   01C7 74 01         [12] 1232 	mov	a,#0x01
   01C9 4E            [12] 1233 	orl	a,r6
   01CA F5 B1         [12] 1234 	mov	_P3M1,a
                     00EB  1235 	C$ShiftRegister.c$18$2$8 ==.
                           1236 ;	src/ShiftRegister.c:18: CONFIGURE_PORT3_PIN(3, PORT_PINT_CONFIG_PUSH_PULL_OUTPUT);
   01CC AF B2         [24] 1237 	mov	r7,_P3M0
   01CE AE B1         [24] 1238 	mov	r6,_P3M1
   01D0 8F 05         [24] 1239 	mov	ar5,r7
   01D2 74 F7         [12] 1240 	mov	a,#0xF7
   01D4 5D            [12] 1241 	anl	a,r5
   01D5 FF            [12] 1242 	mov	r7,a
   01D6 74 08         [12] 1243 	mov	a,#0x08
   01D8 4F            [12] 1244 	orl	a,r7
   01D9 F5 B2         [12] 1245 	mov	_P3M0,a
   01DB 74 F7         [12] 1246 	mov	a,#0xF7
   01DD 5E            [12] 1247 	anl	a,r6
   01DE F5 B1         [12] 1248 	mov	_P3M1,a
                     00FF  1249 	C$ShiftRegister.c$19$2$8 ==.
                           1250 ;	src/ShiftRegister.c:19: CONFIGURE_PORT3_PIN(4, PORT_PINT_CONFIG_PUSH_PULL_OUTPUT);
   01E0 AF B2         [24] 1251 	mov	r7,_P3M0
   01E2 AE B1         [24] 1252 	mov	r6,_P3M1
   01E4 8F 05         [24] 1253 	mov	ar5,r7
   01E6 74 EF         [12] 1254 	mov	a,#0xEF
   01E8 5D            [12] 1255 	anl	a,r5
   01E9 FF            [12] 1256 	mov	r7,a
   01EA 74 10         [12] 1257 	mov	a,#0x10
   01EC 4F            [12] 1258 	orl	a,r7
   01ED F5 B2         [12] 1259 	mov	_P3M0,a
   01EF 74 EF         [12] 1260 	mov	a,#0xEF
   01F1 5E            [12] 1261 	anl	a,r6
   01F2 F5 B1         [12] 1262 	mov	_P3M1,a
                     0113  1263 	C$ShiftRegister.c$20$2$8 ==.
                           1264 ;	src/ShiftRegister.c:20: CONFIGURE_PORT3_PIN(5, PORT_PINT_CONFIG_PUSH_PULL_OUTPUT);
   01F4 AF B2         [24] 1265 	mov	r7,_P3M0
   01F6 AE B1         [24] 1266 	mov	r6,_P3M1
   01F8 8F 05         [24] 1267 	mov	ar5,r7
   01FA 74 DF         [12] 1268 	mov	a,#0xDF
   01FC 5D            [12] 1269 	anl	a,r5
   01FD FF            [12] 1270 	mov	r7,a
   01FE 74 20         [12] 1271 	mov	a,#0x20
   0200 4F            [12] 1272 	orl	a,r7
   0201 F5 B2         [12] 1273 	mov	_P3M0,a
   0203 74 DF         [12] 1274 	mov	a,#0xDF
   0205 5E            [12] 1275 	anl	a,r6
   0206 F5 B1         [12] 1276 	mov	_P3M1,a
                     0127  1277 	C$ShiftRegister.c$22$2$15 ==.
                           1278 ;	src/ShiftRegister.c:22: SET_PIN_LOW(SHIFT_REG_VALUE_PIN);
   0208 C2 B3         [12] 1279 	clr	_P3_3
   020A 00            [12] 1280 	nop
   020B 00            [12] 1281 	nop
   020C 00            [12] 1282 	nop
   020D 00            [12] 1283 	nop
   020E 00            [12] 1284 	nop
                     012E  1285 	C$ShiftRegister.c$23$2$17 ==.
                           1286 ;	src/ShiftRegister.c:23: SET_PIN_LOW(SHIFT_REG_CLOCK_PIN);
   020F C2 B5         [12] 1287 	clr	_P3_5
   0211 00            [12] 1288 	nop
   0212 00            [12] 1289 	nop
   0213 00            [12] 1290 	nop
   0214 00            [12] 1291 	nop
   0215 00            [12] 1292 	nop
                     0135  1293 	C$ShiftRegister.c$24$2$19 ==.
                           1294 ;	src/ShiftRegister.c:24: SET_PIN_LOW(SHIFT_REG_CLOCK_PIN);
   0216 C2 B5         [12] 1295 	clr	_P3_5
   0218 00            [12] 1296 	nop
   0219 00            [12] 1297 	nop
   021A 00            [12] 1298 	nop
   021B 00            [12] 1299 	nop
   021C 00            [12] 1300 	nop
                     013C  1301 	C$ShiftRegister.c$26$1$8 ==.
                           1302 ;	src/ShiftRegister.c:26: ShiftRegisterChangePinState(0x00);
   021D 75 82 00      [24] 1303 	mov	dpl,#0x00
   0220 12 02 27      [24] 1304 	lcall	_ShiftRegisterChangePinState
                     0142  1305 	C$ShiftRegister.c$27$1$8 ==.
                           1306 ;	src/ShiftRegister.c:27: Delay1ms();
   0223 12 00 E1      [24] 1307 	lcall	_Delay1ms
                     0145  1308 	C$ShiftRegister.c$28$1$8 ==.
                     0145  1309 	XG$ShiftRegisterInit$0$0 ==.
   0226 22            [24] 1310 	ret
                           1311 ;------------------------------------------------------------
                           1312 ;Allocation info for local variables in function 'ShiftRegisterChangePinState'
                           1313 ;------------------------------------------------------------
                           1314 ;value                     Allocated to registers r7 
                           1315 ;i                         Allocated to registers r6 
                           1316 ;------------------------------------------------------------
                     0146  1317 	G$ShiftRegisterChangePinState$0$0 ==.
                     0146  1318 	C$ShiftRegister.c$30$1$8 ==.
                           1319 ;	src/ShiftRegister.c:30: void ShiftRegisterChangePinState(unsigned char value)
                           1320 ;	-----------------------------------------
                           1321 ;	 function ShiftRegisterChangePinState
                           1322 ;	-----------------------------------------
   0227                    1323 _ShiftRegisterChangePinState:
   0227 AF 82         [24] 1324 	mov	r7,dpl
                     0148  1325 	C$ShiftRegister.c$33$1$22 ==.
                           1326 ;	src/ShiftRegister.c:33: for(i = 0; i < 8; i++)
   0229 7E 00         [12] 1327 	mov	r6,#0x00
   022B                    1328 00105$:
                     014A  1329 	C$ShiftRegister.c$36$2$23 ==.
                           1330 ;	src/ShiftRegister.c:36: if (((value >> (7 - i)) & (unsigned char)0x01))
   022B 8E 04         [24] 1331 	mov	ar4,r6
   022D 7D 00         [12] 1332 	mov	r5,#0x00
   022F 74 07         [12] 1333 	mov	a,#0x07
   0231 C3            [12] 1334 	clr	c
   0232 9C            [12] 1335 	subb	a,r4
   0233 FC            [12] 1336 	mov	r4,a
   0234 E4            [12] 1337 	clr	a
   0235 9D            [12] 1338 	subb	a,r5
   0236 FD            [12] 1339 	mov	r5,a
   0237 8C F0         [24] 1340 	mov	b,r4
   0239 05 F0         [12] 1341 	inc	b
   023B EF            [12] 1342 	mov	a,r7
   023C 80 02         [24] 1343 	sjmp	00119$
   023E                    1344 00118$:
   023E C3            [12] 1345 	clr	c
   023F 13            [12] 1346 	rrc	a
   0240                    1347 00119$:
   0240 D5 F0 FB      [24] 1348 	djnz	b,00118$
   0243 30 E0 0D      [24] 1349 	jnb	acc.0,00102$
                     0165  1350 	C$ShiftRegister.c$38$4$25 ==.
                           1351 ;	src/ShiftRegister.c:38: SET_PIN_HIGH(SHIFT_REG_VALUE_PIN);
   0246 D2 B3         [12] 1352 	setb	_P3_3
   0248 00            [12] 1353 	nop
   0249 00            [12] 1354 	nop
   024A 00            [12] 1355 	nop
   024B 00            [12] 1356 	nop
   024C 00            [12] 1357 	nop
   024D 00            [12] 1358 	nop
   024E 00            [12] 1359 	nop
   024F 00            [12] 1360 	nop
   0250 00            [12] 1361 	nop
   0251 80 07         [24] 1362 	sjmp	00103$
   0253                    1363 00102$:
                     0172  1364 	C$ShiftRegister.c$42$4$27 ==.
                           1365 ;	src/ShiftRegister.c:42: SET_PIN_LOW(SHIFT_REG_VALUE_PIN);
   0253 C2 B3         [12] 1366 	clr	_P3_3
   0255 00            [12] 1367 	nop
   0256 00            [12] 1368 	nop
   0257 00            [12] 1369 	nop
   0258 00            [12] 1370 	nop
   0259 00            [12] 1371 	nop
   025A                    1372 00103$:
                     0179  1373 	C$ShiftRegister.c$46$3$29 ==.
                           1374 ;	src/ShiftRegister.c:46: SET_PIN_HIGH(SHIFT_REG_CLOCK_PIN);
   025A D2 B5         [12] 1375 	setb	_P3_5
   025C 00            [12] 1376 	nop
   025D 00            [12] 1377 	nop
   025E 00            [12] 1378 	nop
   025F 00            [12] 1379 	nop
   0260 00            [12] 1380 	nop
   0261 00            [12] 1381 	nop
   0262 00            [12] 1382 	nop
   0263 00            [12] 1383 	nop
   0264 00            [12] 1384 	nop
                     0184  1385 	C$ShiftRegister.c$47$3$30 ==.
                           1386 ;	src/ShiftRegister.c:47: SET_PIN_LOW(SHIFT_REG_CLOCK_PIN);
   0265 C2 B5         [12] 1387 	clr	_P3_5
   0267 00            [12] 1388 	nop
   0268 00            [12] 1389 	nop
   0269 00            [12] 1390 	nop
   026A 00            [12] 1391 	nop
   026B 00            [12] 1392 	nop
                     018B  1393 	C$ShiftRegister.c$33$1$22 ==.
                           1394 ;	src/ShiftRegister.c:33: for(i = 0; i < 8; i++)
   026C 0E            [12] 1395 	inc	r6
   026D BE 08 00      [24] 1396 	cjne	r6,#0x08,00121$
   0270                    1397 00121$:
   0270 40 B9         [24] 1398 	jc	00105$
                     0191  1399 	C$ShiftRegister.c$50$2$32 ==.
                           1400 ;	src/ShiftRegister.c:50: SET_PIN_LOW(SHIFT_REG_VALUE_PIN);
   0272 C2 B3         [12] 1401 	clr	_P3_3
   0274 00            [12] 1402 	nop
   0275 00            [12] 1403 	nop
   0276 00            [12] 1404 	nop
   0277 00            [12] 1405 	nop
   0278 00            [12] 1406 	nop
                     0198  1407 	C$ShiftRegister.c$53$2$34 ==.
                           1408 ;	src/ShiftRegister.c:53: SET_PIN_HIGH(STORE_REG_CLOCK_PIN);
   0279 D2 B4         [12] 1409 	setb	_P3_4
   027B 00            [12] 1410 	nop
   027C 00            [12] 1411 	nop
   027D 00            [12] 1412 	nop
   027E 00            [12] 1413 	nop
   027F 00            [12] 1414 	nop
   0280 00            [12] 1415 	nop
   0281 00            [12] 1416 	nop
   0282 00            [12] 1417 	nop
   0283 00            [12] 1418 	nop
                     01A3  1419 	C$ShiftRegister.c$54$2$35 ==.
                           1420 ;	src/ShiftRegister.c:54: SET_PIN_LOW(STORE_REG_CLOCK_PIN);
   0284 C2 B4         [12] 1421 	clr	_P3_4
   0286 00            [12] 1422 	nop
   0287 00            [12] 1423 	nop
   0288 00            [12] 1424 	nop
   0289 00            [12] 1425 	nop
   028A 00            [12] 1426 	nop
                     01AA  1427 	C$ShiftRegister.c$55$3$36 ==.
                     01AA  1428 	XG$ShiftRegisterChangePinState$0$0 ==.
   028B 22            [24] 1429 	ret
                           1430 ;------------------------------------------------------------
                           1431 ;Allocation info for local variables in function 'LCD_PULSE_ENABLE_PIN'
                           1432 ;------------------------------------------------------------
                     01AB  1433 	FLEDBlink$LCD_PULSE_ENABLE_PIN$0$0 ==.
                     01AB  1434 	C$LCDInterface.c$35$3$36 ==.
                           1435 ;	src/LCDInterface.c:35: static void LCD_PULSE_ENABLE_PIN()
                           1436 ;	-----------------------------------------
                           1437 ;	 function LCD_PULSE_ENABLE_PIN
                           1438 ;	-----------------------------------------
   028C                    1439 _LCD_PULSE_ENABLE_PIN:
                     01AB  1440 	C$LCDInterface.c$37$1$42 ==.
                           1441 ;	src/LCDInterface.c:37: LCD_CLEAR_E();
   028C AF 23         [24] 1442 	mov	r7,_LCD_PINS_SHIFT_REG_VALUES
   028E 74 FB         [12] 1443 	mov	a,#0xFB
   0290 5F            [12] 1444 	anl	a,r7
   0291 F5 23         [12] 1445 	mov	_LCD_PINS_SHIFT_REG_VALUES,a
                     01B2  1446 	C$LCDInterface.c$38$1$42 ==.
                           1447 ;	src/LCDInterface.c:38: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
   0293 85 23 82      [24] 1448 	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
   0296 12 02 27      [24] 1449 	lcall	_ShiftRegisterChangePinState
                     01B8  1450 	C$LCDInterface.c$39$2$43 ==.
                           1451 ;	src/LCDInterface.c:39: Delay1us();
   0299 00            [12] 1452 	nop
   029A 00            [12] 1453 	nop
   029B 00            [12] 1454 	nop
   029C 00            [12] 1455 	nop
   029D 00            [12] 1456 	nop
                     01BD  1457 	C$LCDInterface.c$41$1$42 ==.
                           1458 ;	src/LCDInterface.c:41: LCD_SET_E();
   029E 43 23 04      [24] 1459 	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x04
                     01C0  1460 	C$LCDInterface.c$42$1$42 ==.
                           1461 ;	src/LCDInterface.c:42: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
   02A1 85 23 82      [24] 1462 	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
   02A4 12 02 27      [24] 1463 	lcall	_ShiftRegisterChangePinState
                     01C6  1464 	C$LCDInterface.c$43$2$44 ==.
                           1465 ;	src/LCDInterface.c:43: Delay1us();
   02A7 00            [12] 1466 	nop
   02A8 00            [12] 1467 	nop
   02A9 00            [12] 1468 	nop
   02AA 00            [12] 1469 	nop
   02AB 00            [12] 1470 	nop
                     01CB  1471 	C$LCDInterface.c$45$1$42 ==.
                           1472 ;	src/LCDInterface.c:45: LCD_CLEAR_E();
   02AC AF 23         [24] 1473 	mov	r7,_LCD_PINS_SHIFT_REG_VALUES
   02AE 74 FB         [12] 1474 	mov	a,#0xFB
   02B0 5F            [12] 1475 	anl	a,r7
   02B1 F5 23         [12] 1476 	mov	_LCD_PINS_SHIFT_REG_VALUES,a
                     01D2  1477 	C$LCDInterface.c$46$1$42 ==.
                           1478 ;	src/LCDInterface.c:46: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
   02B3 85 23 82      [24] 1479 	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
   02B6 12 02 27      [24] 1480 	lcall	_ShiftRegisterChangePinState
                     01D8  1481 	C$LCDInterface.c$47$2$45 ==.
                           1482 ;	src/LCDInterface.c:47: Delay1us();
   02B9 00            [12] 1483 	nop
   02BA 00            [12] 1484 	nop
   02BB 00            [12] 1485 	nop
   02BC 00            [12] 1486 	nop
   02BD 00            [12] 1487 	nop
                     01DD  1488 	C$LCDInterface.c$48$2$45 ==.
                     01DD  1489 	XFLEDBlink$LCD_PULSE_ENABLE_PIN$0$0 ==.
   02BE 22            [24] 1490 	ret
                           1491 ;------------------------------------------------------------
                           1492 ;Allocation info for local variables in function 'LCD_SEND_4BITS'
                           1493 ;------------------------------------------------------------
                           1494 ;value                     Allocated to registers r7 
                           1495 ;------------------------------------------------------------
                     01DE  1496 	G$LCD_SEND_4BITS$0$0 ==.
                     01DE  1497 	C$LCDInterface.c$50$2$45 ==.
                           1498 ;	src/LCDInterface.c:50: void LCD_SEND_4BITS(unsigned char value)
                           1499 ;	-----------------------------------------
                           1500 ;	 function LCD_SEND_4BITS
                           1501 ;	-----------------------------------------
   02BF                    1502 _LCD_SEND_4BITS:
                     01DE  1503 	C$LCDInterface.c$52$1$47 ==.
                           1504 ;	src/LCDInterface.c:52: if ((value) & 0x01)
   02BF E5 82         [12] 1505 	mov	a,dpl
   02C1 FF            [12] 1506 	mov	r7,a
   02C2 30 E0 05      [24] 1507 	jnb	acc.0,00102$
                     01E4  1508 	C$LCDInterface.c$54$2$48 ==.
                           1509 ;	src/LCDInterface.c:54: LCD_SET_D4();
   02C5 43 23 08      [24] 1510 	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x08
   02C8 80 07         [24] 1511 	sjmp	00103$
   02CA                    1512 00102$:
                     01E9  1513 	C$LCDInterface.c$58$2$49 ==.
                           1514 ;	src/LCDInterface.c:58: LCD_CLEAR_D4();
   02CA AE 23         [24] 1515 	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
   02CC 74 F7         [12] 1516 	mov	a,#0xF7
   02CE 5E            [12] 1517 	anl	a,r6
   02CF F5 23         [12] 1518 	mov	_LCD_PINS_SHIFT_REG_VALUES,a
   02D1                    1519 00103$:
                     01F0  1520 	C$LCDInterface.c$61$1$47 ==.
                           1521 ;	src/LCDInterface.c:61: if ((value) & 0x02)
   02D1 EF            [12] 1522 	mov	a,r7
   02D2 30 E1 05      [24] 1523 	jnb	acc.1,00105$
                     01F4  1524 	C$LCDInterface.c$63$2$50 ==.
                           1525 ;	src/LCDInterface.c:63: LCD_SET_D5();
   02D5 43 23 10      [24] 1526 	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x10
   02D8 80 07         [24] 1527 	sjmp	00106$
   02DA                    1528 00105$:
                     01F9  1529 	C$LCDInterface.c$67$2$51 ==.
                           1530 ;	src/LCDInterface.c:67: LCD_CLEAR_D5();
   02DA AE 23         [24] 1531 	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
   02DC 74 EF         [12] 1532 	mov	a,#0xEF
   02DE 5E            [12] 1533 	anl	a,r6
   02DF F5 23         [12] 1534 	mov	_LCD_PINS_SHIFT_REG_VALUES,a
   02E1                    1535 00106$:
                     0200  1536 	C$LCDInterface.c$70$1$47 ==.
                           1537 ;	src/LCDInterface.c:70: if ((value) & 0x04)
   02E1 EF            [12] 1538 	mov	a,r7
   02E2 30 E2 05      [24] 1539 	jnb	acc.2,00108$
                     0204  1540 	C$LCDInterface.c$72$2$52 ==.
                           1541 ;	src/LCDInterface.c:72: LCD_SET_D6();
   02E5 43 23 20      [24] 1542 	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x20
   02E8 80 07         [24] 1543 	sjmp	00109$
   02EA                    1544 00108$:
                     0209  1545 	C$LCDInterface.c$76$2$53 ==.
                           1546 ;	src/LCDInterface.c:76: LCD_CLEAR_D6();
   02EA AE 23         [24] 1547 	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
   02EC 74 DF         [12] 1548 	mov	a,#0xDF
   02EE 5E            [12] 1549 	anl	a,r6
   02EF F5 23         [12] 1550 	mov	_LCD_PINS_SHIFT_REG_VALUES,a
   02F1                    1551 00109$:
                     0210  1552 	C$LCDInterface.c$79$1$47 ==.
                           1553 ;	src/LCDInterface.c:79: if ((value) & 0x08)
   02F1 EF            [12] 1554 	mov	a,r7
   02F2 30 E3 05      [24] 1555 	jnb	acc.3,00111$
                     0214  1556 	C$LCDInterface.c$81$2$54 ==.
                           1557 ;	src/LCDInterface.c:81: LCD_SET_D7();
   02F5 43 23 40      [24] 1558 	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x40
   02F8 80 07         [24] 1559 	sjmp	00112$
   02FA                    1560 00111$:
                     0219  1561 	C$LCDInterface.c$85$2$55 ==.
                           1562 ;	src/LCDInterface.c:85: LCD_CLEAR_D7();
   02FA AF 23         [24] 1563 	mov	r7,_LCD_PINS_SHIFT_REG_VALUES
   02FC 74 BF         [12] 1564 	mov	a,#0xBF
   02FE 5F            [12] 1565 	anl	a,r7
   02FF F5 23         [12] 1566 	mov	_LCD_PINS_SHIFT_REG_VALUES,a
   0301                    1567 00112$:
                     0220  1568 	C$LCDInterface.c$88$1$47 ==.
                           1569 ;	src/LCDInterface.c:88: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
   0301 85 23 82      [24] 1570 	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
   0304 12 02 27      [24] 1571 	lcall	_ShiftRegisterChangePinState
                     0226  1572 	C$LCDInterface.c$89$1$47 ==.
                           1573 ;	src/LCDInterface.c:89: LCD_PULSE_ENABLE_PIN();
   0307 12 02 8C      [24] 1574 	lcall	_LCD_PULSE_ENABLE_PIN
                     0229  1575 	C$LCDInterface.c$90$1$47 ==.
                     0229  1576 	XG$LCD_SEND_4BITS$0$0 ==.
   030A 22            [24] 1577 	ret
                           1578 ;------------------------------------------------------------
                           1579 ;Allocation info for local variables in function 'LCD_SEND_8BITS'
                           1580 ;------------------------------------------------------------
                           1581 ;isCommand                 Allocated with name '_LCD_SEND_8BITS_PARM_2'
                           1582 ;value                     Allocated to registers r7 
                           1583 ;------------------------------------------------------------
                     022A  1584 	G$LCD_SEND_8BITS$0$0 ==.
                     022A  1585 	C$LCDInterface.c$92$1$47 ==.
                           1586 ;	src/LCDInterface.c:92: void LCD_SEND_8BITS(unsigned char value, unsigned char isCommand)
                           1587 ;	-----------------------------------------
                           1588 ;	 function LCD_SEND_8BITS
                           1589 ;	-----------------------------------------
   030B                    1590 _LCD_SEND_8BITS:
   030B AF 82         [24] 1591 	mov	r7,dpl
                     022C  1592 	C$LCDInterface.c$94$1$57 ==.
                           1593 ;	src/LCDInterface.c:94: if (isCommand)
   030D E5 24         [12] 1594 	mov	a,_LCD_SEND_8BITS_PARM_2
   030F 60 09         [24] 1595 	jz	00102$
                     0230  1596 	C$LCDInterface.c$96$2$58 ==.
                           1597 ;	src/LCDInterface.c:96: LCD_CLEAR_RS();
   0311 AE 23         [24] 1598 	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
   0313 74 FD         [12] 1599 	mov	a,#0xFD
   0315 5E            [12] 1600 	anl	a,r6
   0316 F5 23         [12] 1601 	mov	_LCD_PINS_SHIFT_REG_VALUES,a
   0318 80 03         [24] 1602 	sjmp	00103$
   031A                    1603 00102$:
                     0239  1604 	C$LCDInterface.c$100$2$59 ==.
                           1605 ;	src/LCDInterface.c:100: LCD_SET_RS();
   031A 43 23 02      [24] 1606 	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x02
   031D                    1607 00103$:
                     023C  1608 	C$LCDInterface.c$102$1$57 ==.
                           1609 ;	src/LCDInterface.c:102: LCD_SEND_4BITS((unsigned char)(((value) >> 4) & 0x0F));
   031D EF            [12] 1610 	mov	a,r7
   031E C4            [12] 1611 	swap	a
   031F 54 0F         [12] 1612 	anl	a,#0x0F
   0321 FE            [12] 1613 	mov	r6,a
   0322 74 0F         [12] 1614 	mov	a,#0x0F
   0324 5E            [12] 1615 	anl	a,r6
   0325 F5 82         [12] 1616 	mov	dpl,a
   0327 C0 07         [24] 1617 	push	ar7
   0329 12 02 BF      [24] 1618 	lcall	_LCD_SEND_4BITS
   032C D0 07         [24] 1619 	pop	ar7
                     024D  1620 	C$LCDInterface.c$103$1$57 ==.
                           1621 ;	src/LCDInterface.c:103: LCD_SEND_4BITS((unsigned char)((value) & 0x0F));
   032E 74 0F         [12] 1622 	mov	a,#0x0F
   0330 5F            [12] 1623 	anl	a,r7
   0331 F5 82         [12] 1624 	mov	dpl,a
   0333 12 02 BF      [24] 1625 	lcall	_LCD_SEND_4BITS
                     0255  1626 	C$LCDInterface.c$104$1$57 ==.
                     0255  1627 	XG$LCD_SEND_8BITS$0$0 ==.
   0336 22            [24] 1628 	ret
                           1629 ;------------------------------------------------------------
                           1630 ;Allocation info for local variables in function 'LCD_CMD_CLEAR'
                           1631 ;------------------------------------------------------------
                           1632 ;i                         Allocated to registers r6 r7 
                           1633 ;------------------------------------------------------------
                     0256  1634 	G$LCD_CMD_CLEAR$0$0 ==.
                     0256  1635 	C$LCDInterface.c$106$1$57 ==.
                           1636 ;	src/LCDInterface.c:106: void LCD_CMD_CLEAR()
                           1637 ;	-----------------------------------------
                           1638 ;	 function LCD_CMD_CLEAR
                           1639 ;	-----------------------------------------
   0337                    1640 _LCD_CMD_CLEAR:
                     0256  1641 	C$LCDInterface.c$108$1$60 ==.
                           1642 ;	src/LCDInterface.c:108: LCD_SEND_COMMAND(LCD_CLEARDISPLAY);
   0337 75 24 01      [24] 1643 	mov	_LCD_SEND_8BITS_PARM_2,#0x01
   033A 75 82 01      [24] 1644 	mov	dpl,#0x01
   033D 12 03 0B      [24] 1645 	lcall	_LCD_SEND_8BITS
                     025F  1646 	C$LCDInterface.c$110$2$61 ==.
                           1647 ;	src/LCDInterface.c:110: DelayMilliseconds(5);
   0340 7E 05         [12] 1648 	mov	r6,#0x05
   0342 7F 00         [12] 1649 	mov	r7,#0x00
   0344                    1650 00104$:
   0344 C0 07         [24] 1651 	push	ar7
   0346 C0 06         [24] 1652 	push	ar6
   0348 12 00 E1      [24] 1653 	lcall	_Delay1ms
   034B D0 06         [24] 1654 	pop	ar6
   034D D0 07         [24] 1655 	pop	ar7
   034F 1E            [12] 1656 	dec	r6
   0350 BE FF 01      [24] 1657 	cjne	r6,#0xFF,00111$
   0353 1F            [12] 1658 	dec	r7
   0354                    1659 00111$:
   0354 EE            [12] 1660 	mov	a,r6
   0355 4F            [12] 1661 	orl	a,r7
   0356 70 EC         [24] 1662 	jnz	00104$
                     0277  1663 	C$LCDInterface.c$111$2$61 ==.
                     0277  1664 	XG$LCD_CMD_CLEAR$0$0 ==.
   0358 22            [24] 1665 	ret
                           1666 ;------------------------------------------------------------
                           1667 ;Allocation info for local variables in function 'LCD_CMD_SET_CURSOR'
                           1668 ;------------------------------------------------------------
                           1669 ;row                       Allocated with name '_LCD_CMD_SET_CURSOR_PARM_2'
                           1670 ;col                       Allocated to registers r7 
                           1671 ;------------------------------------------------------------
                     0278  1672 	G$LCD_CMD_SET_CURSOR$0$0 ==.
                     0278  1673 	C$LCDInterface.c$113$2$61 ==.
                           1674 ;	src/LCDInterface.c:113: void LCD_CMD_SET_CURSOR(unsigned char col, unsigned char row)
                           1675 ;	-----------------------------------------
                           1676 ;	 function LCD_CMD_SET_CURSOR
                           1677 ;	-----------------------------------------
   0359                    1678 _LCD_CMD_SET_CURSOR:
   0359 AF 82         [24] 1679 	mov	r7,dpl
                     027A  1680 	C$LCDInterface.c$115$1$64 ==.
                           1681 ;	src/LCDInterface.c:115: if (row >= LCD_MAX_ROW_COUNT)
   035B 74 FC         [12] 1682 	mov	a,#0x100 - 0x04
   035D 25 25         [12] 1683 	add	a,_LCD_CMD_SET_CURSOR_PARM_2
   035F 50 03         [24] 1684 	jnc	00102$
                     0280  1685 	C$LCDInterface.c$117$2$65 ==.
                           1686 ;	src/LCDInterface.c:117: row = (LCD_MAX_ROW_COUNT - 1);
   0361 75 25 03      [24] 1687 	mov	_LCD_CMD_SET_CURSOR_PARM_2,#0x03
   0364                    1688 00102$:
                     0283  1689 	C$LCDInterface.c$120$1$64 ==.
                           1690 ;	src/LCDInterface.c:120: LCD_SEND_COMMAND(LCD_SETDDRAMADDR | (col + LCD_ROW_OFFSETS[row]));
   0364 E5 25         [12] 1691 	mov	a,_LCD_CMD_SET_CURSOR_PARM_2
   0366 90 0A 9B      [24] 1692 	mov	dptr,#_LCD_ROW_OFFSETS
   0369 93            [24] 1693 	movc	a,@a+dptr
   036A 2F            [12] 1694 	add	a,r7
   036B 44 80         [12] 1695 	orl	a,#0x80
   036D F5 82         [12] 1696 	mov	dpl,a
   036F 75 24 01      [24] 1697 	mov	_LCD_SEND_8BITS_PARM_2,#0x01
   0372 12 03 0B      [24] 1698 	lcall	_LCD_SEND_8BITS
                     0294  1699 	C$LCDInterface.c$121$1$64 ==.
                     0294  1700 	XG$LCD_CMD_SET_CURSOR$0$0 ==.
   0375 22            [24] 1701 	ret
                           1702 ;------------------------------------------------------------
                           1703 ;Allocation info for local variables in function 'LCD_CMD_UPLOAD_CUSTOM_CHAR'
                           1704 ;------------------------------------------------------------
                           1705 ;charmap                   Allocated with name '_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2'
                           1706 ;location                  Allocated to registers r7 
                           1707 ;i                         Allocated to registers r7 
                           1708 ;------------------------------------------------------------
                     0295  1709 	G$LCD_CMD_UPLOAD_CUSTOM_CHAR$0$0 ==.
                     0295  1710 	C$LCDInterface.c$125$1$64 ==.
                           1711 ;	src/LCDInterface.c:125: void LCD_CMD_UPLOAD_CUSTOM_CHAR(unsigned char location, unsigned char charmap[])
                           1712 ;	-----------------------------------------
                           1713 ;	 function LCD_CMD_UPLOAD_CUSTOM_CHAR
                           1714 ;	-----------------------------------------
   0376                    1715 _LCD_CMD_UPLOAD_CUSTOM_CHAR:
                     0295  1716 	C$LCDInterface.c$128$1$67 ==.
                           1717 ;	src/LCDInterface.c:128: location &= 0x7; // we only have 8 locations 0-7
                     0295  1718 	C$LCDInterface.c$129$1$67 ==.
                           1719 ;	src/LCDInterface.c:129: LCD_SEND_COMMAND(LCD_SETCGRAMADDR | (location << 3));
   0376 E5 82         [12] 1720 	mov	a,dpl
   0378 54 07         [12] 1721 	anl	a,#0x07
   037A C4            [12] 1722 	swap	a
   037B 03            [12] 1723 	rr	a
   037C 54 F8         [12] 1724 	anl	a,#0xF8
   037E FF            [12] 1725 	mov	r7,a
   037F 74 40         [12] 1726 	mov	a,#0x40
   0381 4F            [12] 1727 	orl	a,r7
   0382 F5 82         [12] 1728 	mov	dpl,a
   0384 75 24 01      [24] 1729 	mov	_LCD_SEND_8BITS_PARM_2,#0x01
   0387 12 03 0B      [24] 1730 	lcall	_LCD_SEND_8BITS
                     02A9  1731 	C$LCDInterface.c$130$1$67 ==.
                           1732 ;	src/LCDInterface.c:130: for (i=0; i<8; i++)
   038A 7F 00         [12] 1733 	mov	r7,#0x00
   038C                    1734 00102$:
                     02AB  1735 	C$LCDInterface.c$132$2$68 ==.
                           1736 ;	src/LCDInterface.c:132: LCD_SEND_DATA(charmap[i]);
   038C EF            [12] 1737 	mov	a,r7
   038D 25 26         [12] 1738 	add	a,_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2
   038F FC            [12] 1739 	mov	r4,a
   0390 E4            [12] 1740 	clr	a
   0391 35 27         [12] 1741 	addc	a,(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 1)
   0393 FD            [12] 1742 	mov	r5,a
   0394 AE 28         [24] 1743 	mov	r6,(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 2)
   0396 8C 82         [24] 1744 	mov	dpl,r4
   0398 8D 83         [24] 1745 	mov	dph,r5
   039A 8E F0         [24] 1746 	mov	b,r6
   039C 12 0A 7B      [24] 1747 	lcall	__gptrget
   039F FC            [12] 1748 	mov	r4,a
   03A0 75 24 00      [24] 1749 	mov	_LCD_SEND_8BITS_PARM_2,#0x00
   03A3 8C 82         [24] 1750 	mov	dpl,r4
   03A5 C0 07         [24] 1751 	push	ar7
   03A7 12 03 0B      [24] 1752 	lcall	_LCD_SEND_8BITS
   03AA D0 07         [24] 1753 	pop	ar7
                     02CB  1754 	C$LCDInterface.c$130$1$67 ==.
                           1755 ;	src/LCDInterface.c:130: for (i=0; i<8; i++)
   03AC 0F            [12] 1756 	inc	r7
   03AD BF 08 00      [24] 1757 	cjne	r7,#0x08,00109$
   03B0                    1758 00109$:
   03B0 40 DA         [24] 1759 	jc	00102$
                     02D1  1760 	C$LCDInterface.c$134$1$67 ==.
                     02D1  1761 	XG$LCD_CMD_UPLOAD_CUSTOM_CHAR$0$0 ==.
   03B2 22            [24] 1762 	ret
                           1763 ;------------------------------------------------------------
                           1764 ;Allocation info for local variables in function 'LCD_PRINT'
                           1765 ;------------------------------------------------------------
                           1766 ;col                       Allocated with name '_LCD_PRINT_PARM_2'
                           1767 ;row                       Allocated with name '_LCD_PRINT_PARM_3'
                           1768 ;str                       Allocated to registers r5 r6 r7 
                           1769 ;------------------------------------------------------------
                     02D2  1770 	G$LCD_PRINT$0$0 ==.
                     02D2  1771 	C$LCDInterface.c$136$1$67 ==.
                           1772 ;	src/LCDInterface.c:136: void LCD_PRINT(unsigned char* str, unsigned char col, unsigned char row)
                           1773 ;	-----------------------------------------
                           1774 ;	 function LCD_PRINT
                           1775 ;	-----------------------------------------
   03B3                    1776 _LCD_PRINT:
   03B3 AD 82         [24] 1777 	mov	r5,dpl
   03B5 AE 83         [24] 1778 	mov	r6,dph
   03B7 AF F0         [24] 1779 	mov	r7,b
                     02D8  1780 	C$LCDInterface.c$138$1$70 ==.
                           1781 ;	src/LCDInterface.c:138: while(*str)
   03B9                    1782 00101$:
   03B9 8D 82         [24] 1783 	mov	dpl,r5
   03BB 8E 83         [24] 1784 	mov	dph,r6
   03BD 8F F0         [24] 1785 	mov	b,r7
   03BF 12 0A 7B      [24] 1786 	lcall	__gptrget
   03C2 60 3F         [24] 1787 	jz	00104$
                     02E3  1788 	C$LCDInterface.c$140$2$71 ==.
                           1789 ;	src/LCDInterface.c:140: LCD_CMD_SET_CURSOR(col++, row);
   03C4 E5 29         [12] 1790 	mov	a,_LCD_PRINT_PARM_2
   03C6 FC            [12] 1791 	mov	r4,a
   03C7 04            [12] 1792 	inc	a
   03C8 F5 29         [12] 1793 	mov	_LCD_PRINT_PARM_2,a
   03CA 85 2A 25      [24] 1794 	mov	_LCD_CMD_SET_CURSOR_PARM_2,_LCD_PRINT_PARM_3
   03CD 8C 82         [24] 1795 	mov	dpl,r4
   03CF C0 07         [24] 1796 	push	ar7
   03D1 C0 06         [24] 1797 	push	ar6
   03D3 C0 05         [24] 1798 	push	ar5
   03D5 12 03 59      [24] 1799 	lcall	_LCD_CMD_SET_CURSOR
   03D8 D0 05         [24] 1800 	pop	ar5
   03DA D0 06         [24] 1801 	pop	ar6
   03DC D0 07         [24] 1802 	pop	ar7
                     02FD  1803 	C$LCDInterface.c$141$2$71 ==.
                           1804 ;	src/LCDInterface.c:141: LCD_SEND_DATA(*str);
   03DE 8D 82         [24] 1805 	mov	dpl,r5
   03E0 8E 83         [24] 1806 	mov	dph,r6
   03E2 8F F0         [24] 1807 	mov	b,r7
   03E4 12 0A 7B      [24] 1808 	lcall	__gptrget
   03E7 FC            [12] 1809 	mov	r4,a
   03E8 A3            [24] 1810 	inc	dptr
   03E9 AD 82         [24] 1811 	mov	r5,dpl
   03EB AE 83         [24] 1812 	mov	r6,dph
   03ED 75 24 00      [24] 1813 	mov	_LCD_SEND_8BITS_PARM_2,#0x00
   03F0 8C 82         [24] 1814 	mov	dpl,r4
   03F2 C0 07         [24] 1815 	push	ar7
   03F4 C0 06         [24] 1816 	push	ar6
   03F6 C0 05         [24] 1817 	push	ar5
   03F8 12 03 0B      [24] 1818 	lcall	_LCD_SEND_8BITS
   03FB D0 05         [24] 1819 	pop	ar5
   03FD D0 06         [24] 1820 	pop	ar6
   03FF D0 07         [24] 1821 	pop	ar7
                     0320  1822 	C$LCDInterface.c$142$2$71 ==.
                           1823 ;	src/LCDInterface.c:142: str++;
   0401 80 B6         [24] 1824 	sjmp	00101$
   0403                    1825 00104$:
                     0322  1826 	C$LCDInterface.c$144$1$70 ==.
                     0322  1827 	XG$LCD_PRINT$0$0 ==.
   0403 22            [24] 1828 	ret
                           1829 ;------------------------------------------------------------
                           1830 ;Allocation info for local variables in function 'LCD_INIT'
                           1831 ;------------------------------------------------------------
                           1832 ;i                         Allocated to registers r6 r7 
                           1833 ;i                         Allocated to registers r6 r7 
                           1834 ;------------------------------------------------------------
                     0323  1835 	G$LCD_INIT$0$0 ==.
                     0323  1836 	C$LCDInterface.c$146$1$70 ==.
                           1837 ;	src/LCDInterface.c:146: void LCD_INIT()
                           1838 ;	-----------------------------------------
                           1839 ;	 function LCD_INIT
                           1840 ;	-----------------------------------------
   0404                    1841 _LCD_INIT:
                     0323  1842 	C$LCDInterface.c$151$2$73 ==.
                           1843 ;	src/LCDInterface.c:151: DelayMilliseconds(50)
   0404 7E 32         [12] 1844 	mov	r6,#0x32
   0406 7F 00         [12] 1845 	mov	r7,#0x00
   0408                    1846 00105$:
   0408 C0 07         [24] 1847 	push	ar7
   040A C0 06         [24] 1848 	push	ar6
   040C 12 00 E1      [24] 1849 	lcall	_Delay1ms
   040F D0 06         [24] 1850 	pop	ar6
   0411 D0 07         [24] 1851 	pop	ar7
   0413 1E            [12] 1852 	dec	r6
   0414 BE FF 01      [24] 1853 	cjne	r6,#0xFF,00123$
   0417 1F            [12] 1854 	dec	r7
   0418                    1855 00123$:
   0418 EE            [12] 1856 	mov	a,r6
   0419 4F            [12] 1857 	orl	a,r7
                     0339  1858 	C$LCDInterface.c$157$1$72 ==.
                           1859 ;	src/LCDInterface.c:157: LCD_CLEAR_E();
                     0339  1860 	C$LCDInterface.c$158$1$72 ==.
                           1861 ;	src/LCDInterface.c:158: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
   041A 70 EC         [24] 1862 	jnz	00105$
   041C F5 23         [12] 1863 	mov	_LCD_PINS_SHIFT_REG_VALUES,a
   041E F5 82         [12] 1864 	mov	dpl,a
   0420 12 02 27      [24] 1865 	lcall	_ShiftRegisterChangePinState
                     0342  1866 	C$LCDInterface.c$166$2$75 ==.
                           1867 ;	src/LCDInterface.c:166: LCD_SEND_4BITS(0x02);
   0423 75 82 02      [24] 1868 	mov	dpl,#0x02
   0426 12 02 BF      [24] 1869 	lcall	_LCD_SEND_4BITS
                     0348  1870 	C$LCDInterface.c$167$3$76 ==.
                           1871 ;	src/LCDInterface.c:167: DelayMilliseconds(5); // wait min 4.1ms
   0429 7E 05         [12] 1872 	mov	r6,#0x05
   042B 7F 00         [12] 1873 	mov	r7,#0x00
   042D                    1874 00108$:
   042D C0 07         [24] 1875 	push	ar7
   042F C0 06         [24] 1876 	push	ar6
   0431 12 00 E1      [24] 1877 	lcall	_Delay1ms
   0434 D0 06         [24] 1878 	pop	ar6
   0436 D0 07         [24] 1879 	pop	ar7
   0438 1E            [12] 1880 	dec	r6
   0439 BE FF 01      [24] 1881 	cjne	r6,#0xFF,00125$
   043C 1F            [12] 1882 	dec	r7
   043D                    1883 00125$:
   043D EE            [12] 1884 	mov	a,r6
   043E 4F            [12] 1885 	orl	a,r7
   043F 70 EC         [24] 1886 	jnz	00108$
                     0360  1887 	C$LCDInterface.c$218$1$72 ==.
                           1888 ;	src/LCDInterface.c:218: LCD_SEND_COMMAND(LCD_FUNCTIONSET | LCD_4BITMODE | LCD_2LINE | LCD_5x8DOTS);
   0441 75 24 01      [24] 1889 	mov	_LCD_SEND_8BITS_PARM_2,#0x01
   0444 75 82 28      [24] 1890 	mov	dpl,#0x28
   0447 12 03 0B      [24] 1891 	lcall	_LCD_SEND_8BITS
                     0369  1892 	C$LCDInterface.c$219$1$72 ==.
                           1893 ;	src/LCDInterface.c:219: LCD_SEND_COMMAND(LCD_FUNCTIONSET | LCD_4BITMODE | LCD_2LINE | LCD_5x8DOTS);
   044A 75 24 01      [24] 1894 	mov	_LCD_SEND_8BITS_PARM_2,#0x01
   044D 75 82 28      [24] 1895 	mov	dpl,#0x28
   0450 12 03 0B      [24] 1896 	lcall	_LCD_SEND_8BITS
                     0372  1897 	C$LCDInterface.c$222$1$72 ==.
                           1898 ;	src/LCDInterface.c:222: LCD_SEND_COMMAND(LCD_DISPLAYCONTROL | LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF);
   0453 75 24 01      [24] 1899 	mov	_LCD_SEND_8BITS_PARM_2,#0x01
   0456 75 82 0C      [24] 1900 	mov	dpl,#0x0C
   0459 12 03 0B      [24] 1901 	lcall	_LCD_SEND_8BITS
                     037B  1902 	C$LCDInterface.c$224$1$72 ==.
                           1903 ;	src/LCDInterface.c:224: LCD_CMD_CLEAR();
   045C 12 03 37      [24] 1904 	lcall	_LCD_CMD_CLEAR
                     037E  1905 	C$LCDInterface.c$227$1$72 ==.
                           1906 ;	src/LCDInterface.c:227: LCD_SEND_COMMAND(LCD_ENTRYMODESET | LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT);
   045F 75 24 01      [24] 1907 	mov	_LCD_SEND_8BITS_PARM_2,#0x01
   0462 75 82 06      [24] 1908 	mov	dpl,#0x06
   0465 12 03 0B      [24] 1909 	lcall	_LCD_SEND_8BITS
                     0387  1910 	C$LCDInterface.c$228$1$72 ==.
                     0387  1911 	XG$LCD_INIT$0$0 ==.
   0468 22            [24] 1912 	ret
                           1913 ;------------------------------------------------------------
                           1914 ;Allocation info for local variables in function 'SetBoard'
                           1915 ;------------------------------------------------------------
                           1916 ;y                         Allocated with name '_SetBoard_PARM_2'
                           1917 ;set                       Allocated with name '_SetBoard_PARM_3'
                           1918 ;x                         Allocated to registers r7 
                           1919 ;------------------------------------------------------------
                     0388  1920 	G$SetBoard$0$0 ==.
                     0388  1921 	C$TetrisLogic.c$65$1$72 ==.
                           1922 ;	src/EclipseTetris/TetrisLogic.c:65: void SetBoard(unsigned char x, unsigned char y, unsigned char set)
                           1923 ;	-----------------------------------------
                           1924 ;	 function SetBoard
                           1925 ;	-----------------------------------------
   0469                    1926 _SetBoard:
   0469 AF 82         [24] 1927 	mov	r7,dpl
                     038A  1928 	C$TetrisLogic.c$67$1$79 ==.
                           1929 ;	src/EclipseTetris/TetrisLogic.c:67: if ((x < TETRIS_BOARD_WIDTH) && (y < TETRIS_BOARD_HEIGHT))
   046B BF 06 00      [24] 1930 	cjne	r7,#0x06,00118$
   046E                    1931 00118$:
   046E 50 41         [24] 1932 	jnc	00107$
   0470 74 F0         [12] 1933 	mov	a,#0x100 - 0x10
   0472 25 3D         [12] 1934 	add	a,_SetBoard_PARM_2
   0474 40 3B         [24] 1935 	jc	00107$
                     0395  1936 	C$TetrisLogic.c$69$2$80 ==.
                           1937 ;	src/EclipseTetris/TetrisLogic.c:69: if (set)
   0476 E5 3E         [12] 1938 	mov	a,_SetBoard_PARM_3
   0478 60 1C         [24] 1939 	jz	00102$
                     0399  1940 	C$TetrisLogic.c$71$3$81 ==.
                           1941 ;	src/EclipseTetris/TetrisLogic.c:71: Tetris_Board[y + 1] |= ((unsigned char)0x01 << (x + 1));
   047A E5 3D         [12] 1942 	mov	a,_SetBoard_PARM_2
   047C 04            [12] 1943 	inc	a
   047D 24 2B         [12] 1944 	add	a,#_Tetris_Board
   047F F9            [12] 1945 	mov	r1,a
   0480 87 06         [24] 1946 	mov	ar6,@r1
   0482 EF            [12] 1947 	mov	a,r7
   0483 04            [12] 1948 	inc	a
   0484 F5 F0         [12] 1949 	mov	b,a
   0486 05 F0         [12] 1950 	inc	b
   0488 74 01         [12] 1951 	mov	a,#0x01
   048A 80 02         [24] 1952 	sjmp	00124$
   048C                    1953 00122$:
   048C 25 E0         [12] 1954 	add	a,acc
   048E                    1955 00124$:
   048E D5 F0 FB      [24] 1956 	djnz	b,00122$
   0491 FD            [12] 1957 	mov	r5,a
   0492 4E            [12] 1958 	orl	a,r6
   0493 F7            [12] 1959 	mov	@r1,a
   0494 80 1B         [24] 1960 	sjmp	00107$
   0496                    1961 00102$:
                     03B5  1962 	C$TetrisLogic.c$75$3$82 ==.
                           1963 ;	src/EclipseTetris/TetrisLogic.c:75: Tetris_Board[y + 1] &= ~((unsigned char)0x01 << (x + 1));
   0496 E5 3D         [12] 1964 	mov	a,_SetBoard_PARM_2
   0498 04            [12] 1965 	inc	a
   0499 24 2B         [12] 1966 	add	a,#_Tetris_Board
   049B F9            [12] 1967 	mov	r1,a
   049C 87 06         [24] 1968 	mov	ar6,@r1
   049E EF            [12] 1969 	mov	a,r7
   049F 04            [12] 1970 	inc	a
   04A0 F5 F0         [12] 1971 	mov	b,a
   04A2 05 F0         [12] 1972 	inc	b
   04A4 74 01         [12] 1973 	mov	a,#0x01
   04A6 80 02         [24] 1974 	sjmp	00127$
   04A8                    1975 00125$:
   04A8 25 E0         [12] 1976 	add	a,acc
   04AA                    1977 00127$:
   04AA D5 F0 FB      [24] 1978 	djnz	b,00125$
   04AD F4            [12] 1979 	cpl	a
   04AE FF            [12] 1980 	mov	r7,a
   04AF 5E            [12] 1981 	anl	a,r6
   04B0 F7            [12] 1982 	mov	@r1,a
   04B1                    1983 00107$:
                     03D0  1984 	C$TetrisLogic.c$78$1$79 ==.
                     03D0  1985 	XG$SetBoard$0$0 ==.
   04B1 22            [24] 1986 	ret
                           1987 ;------------------------------------------------------------
                           1988 ;Allocation info for local variables in function 'GetBoard'
                           1989 ;------------------------------------------------------------
                           1990 ;y                         Allocated with name '_GetBoard_PARM_2'
                           1991 ;x                         Allocated to registers r7 
                           1992 ;------------------------------------------------------------
                     03D1  1993 	G$GetBoard$0$0 ==.
                     03D1  1994 	C$TetrisLogic.c$80$1$79 ==.
                           1995 ;	src/EclipseTetris/TetrisLogic.c:80: unsigned char GetBoard(unsigned char x, unsigned char y)
                           1996 ;	-----------------------------------------
                           1997 ;	 function GetBoard
                           1998 ;	-----------------------------------------
   04B2                    1999 _GetBoard:
   04B2 AF 82         [24] 2000 	mov	r7,dpl
                     03D3  2001 	C$TetrisLogic.c$82$1$84 ==.
                           2002 ;	src/EclipseTetris/TetrisLogic.c:82: if ((x < TETRIS_BOARD_WIDTH) && (y < TETRIS_BOARD_HEIGHT))
   04B4 BF 06 00      [24] 2003 	cjne	r7,#0x06,00112$
   04B7                    2004 00112$:
   04B7 50 27         [24] 2005 	jnc	00102$
   04B9 74 F0         [12] 2006 	mov	a,#0x100 - 0x10
   04BB 25 3F         [12] 2007 	add	a,_GetBoard_PARM_2
   04BD 40 21         [24] 2008 	jc	00102$
                     03DE  2009 	C$TetrisLogic.c$84$2$85 ==.
                           2010 ;	src/EclipseTetris/TetrisLogic.c:84: return ((Tetris_Board[y + 1] >> (x + 1)) & (unsigned char)0x01);
   04BF E5 3F         [12] 2011 	mov	a,_GetBoard_PARM_2
   04C1 04            [12] 2012 	inc	a
   04C2 24 2B         [12] 2013 	add	a,#_Tetris_Board
   04C4 F9            [12] 2014 	mov	r1,a
   04C5 87 06         [24] 2015 	mov	ar6,@r1
   04C7 7D 00         [12] 2016 	mov	r5,#0x00
   04C9 0F            [12] 2017 	inc	r7
   04CA BF 00 01      [24] 2018 	cjne	r7,#0x00,00115$
   04CD 0D            [12] 2019 	inc	r5
   04CE                    2020 00115$:
   04CE 8F F0         [24] 2021 	mov	b,r7
   04D0 05 F0         [12] 2022 	inc	b
   04D2 EE            [12] 2023 	mov	a,r6
   04D3 80 02         [24] 2024 	sjmp	00117$
   04D5                    2025 00116$:
   04D5 C3            [12] 2026 	clr	c
   04D6 13            [12] 2027 	rrc	a
   04D7                    2028 00117$:
   04D7 D5 F0 FB      [24] 2029 	djnz	b,00116$
   04DA 54 01         [12] 2030 	anl	a,#0x01
   04DC F5 82         [12] 2031 	mov	dpl,a
   04DE 80 03         [24] 2032 	sjmp	00104$
   04E0                    2033 00102$:
                     03FF  2034 	C$TetrisLogic.c$86$1$84 ==.
                           2035 ;	src/EclipseTetris/TetrisLogic.c:86: return 1;
   04E0 75 82 01      [24] 2036 	mov	dpl,#0x01
   04E3                    2037 00104$:
                     0402  2038 	C$TetrisLogic.c$87$1$84 ==.
                     0402  2039 	XG$GetBoard$0$0 ==.
   04E3 22            [24] 2040 	ret
                           2041 ;------------------------------------------------------------
                           2042 ;Allocation info for local variables in function 'PrintBoard'
                           2043 ;------------------------------------------------------------
                           2044 ;columns                   Allocated with name '_PrintBoard_PARM_2'
                           2045 ;rows                      Allocated to registers r7 
                           2046 ;row                       Allocated to registers r6 
                           2047 ;col                       Allocated to registers r3 
                           2048 ;part1                     Allocated with name '_PrintBoard_part1_4_90'
                           2049 ;part2                     Allocated to registers r0 
                           2050 ;part3                     Allocated to registers 
                           2051 ;index                     Allocated to registers r1 
                           2052 ;------------------------------------------------------------
                     0403  2053 	G$PrintBoard$0$0 ==.
                     0403  2054 	C$TetrisLogic.c$89$1$84 ==.
                           2055 ;	src/EclipseTetris/TetrisLogic.c:89: void PrintBoard(unsigned char rows, unsigned char columns)
                           2056 ;	-----------------------------------------
                           2057 ;	 function PrintBoard
                           2058 ;	-----------------------------------------
   04E4                    2059 _PrintBoard:
                     0403  2060 	C$TetrisLogic.c$123$1$87 ==.
                           2061 ;	src/EclipseTetris/TetrisLogic.c:123: if ((rows > 0) && (columns > 0))
   04E4 E5 82         [12] 2062 	mov	a,dpl
   04E6 FF            [12] 2063 	mov	r7,a
   04E7 70 03         [24] 2064 	jnz	00132$
   04E9 02 05 C5      [24] 2065 	ljmp	00112$
   04EC                    2066 00132$:
   04EC E5 40         [12] 2067 	mov	a,_PrintBoard_PARM_2
   04EE 70 03         [24] 2068 	jnz	00133$
   04F0 02 05 C5      [24] 2069 	ljmp	00112$
   04F3                    2070 00133$:
                     0412  2071 	C$TetrisLogic.c$144$2$88 ==.
                           2072 ;	src/EclipseTetris/TetrisLogic.c:144: for(row = 0; row < rows; row++)
   04F3 7E 00         [12] 2073 	mov	r6,#0x00
   04F5 EF            [12] 2074 	mov	a,r7
   04F6 14            [12] 2075 	dec	a
   04F7 FD            [12] 2076 	mov	r5,a
   04F8 75 F0 03      [24] 2077 	mov	b,#0x03
   04FB E5 40         [12] 2078 	mov	a,_PrintBoard_PARM_2
   04FD 84            [48] 2079 	div	ab
   04FE FC            [12] 2080 	mov	r4,a
   04FF                    2081 00110$:
   04FF C3            [12] 2082 	clr	c
   0500 EE            [12] 2083 	mov	a,r6
   0501 9F            [12] 2084 	subb	a,r7
   0502 40 03         [24] 2085 	jc	00134$
   0504 02 05 C5      [24] 2086 	ljmp	00112$
   0507                    2087 00134$:
                     0426  2088 	C$TetrisLogic.c$147$3$89 ==.
                           2089 ;	src/EclipseTetris/TetrisLogic.c:147: for(col = 0; col < (columns / 3); col++)
   0507 7B 00         [12] 2090 	mov	r3,#0x00
   0509 ED            [12] 2091 	mov	a,r5
   050A C3            [12] 2092 	clr	c
   050B 9E            [12] 2093 	subb	a,r6
   050C FA            [12] 2094 	mov	r2,a
   050D                    2095 00107$:
   050D C3            [12] 2096 	clr	c
   050E EB            [12] 2097 	mov	a,r3
   050F 9C            [12] 2098 	subb	a,r4
   0510 40 03         [24] 2099 	jc	00135$
   0512 02 05 C1      [24] 2100 	ljmp	00111$
   0515                    2101 00135$:
                     0434  2102 	C$TetrisLogic.c$152$4$90 ==.
                           2103 ;	src/EclipseTetris/TetrisLogic.c:152: const unsigned char part1 = GetBoard((col * 3), row);
   0515 EB            [12] 2104 	mov	a,r3
   0516 75 F0 03      [24] 2105 	mov	b,#0x03
   0519 A4            [48] 2106 	mul	ab
   051A F9            [12] 2107 	mov	r1,a
   051B 8E 3F         [24] 2108 	mov	_GetBoard_PARM_2,r6
   051D 89 82         [24] 2109 	mov	dpl,r1
   051F C0 07         [24] 2110 	push	ar7
   0521 C0 06         [24] 2111 	push	ar6
   0523 C0 05         [24] 2112 	push	ar5
   0525 C0 04         [24] 2113 	push	ar4
   0527 C0 03         [24] 2114 	push	ar3
   0529 C0 02         [24] 2115 	push	ar2
   052B C0 01         [24] 2116 	push	ar1
   052D 12 04 B2      [24] 2117 	lcall	_GetBoard
   0530 85 82 41      [24] 2118 	mov	_PrintBoard_part1_4_90,dpl
   0533 D0 01         [24] 2119 	pop	ar1
   0535 D0 02         [24] 2120 	pop	ar2
   0537 D0 03         [24] 2121 	pop	ar3
   0539 D0 04         [24] 2122 	pop	ar4
   053B D0 05         [24] 2123 	pop	ar5
   053D D0 06         [24] 2124 	pop	ar6
                     045E  2125 	C$TetrisLogic.c$153$4$90 ==.
                           2126 ;	src/EclipseTetris/TetrisLogic.c:153: const unsigned char part2 = GetBoard(((col * 3) + 1), row);
   053F E9            [12] 2127 	mov	a,r1
   0540 04            [12] 2128 	inc	a
   0541 F5 82         [12] 2129 	mov	dpl,a
   0543 8E 3F         [24] 2130 	mov	_GetBoard_PARM_2,r6
   0545 C0 06         [24] 2131 	push	ar6
   0547 C0 05         [24] 2132 	push	ar5
   0549 C0 04         [24] 2133 	push	ar4
   054B C0 03         [24] 2134 	push	ar3
   054D C0 02         [24] 2135 	push	ar2
   054F C0 01         [24] 2136 	push	ar1
   0551 12 04 B2      [24] 2137 	lcall	_GetBoard
   0554 A8 82         [24] 2138 	mov	r0,dpl
   0556 D0 01         [24] 2139 	pop	ar1
   0558 D0 02         [24] 2140 	pop	ar2
   055A D0 03         [24] 2141 	pop	ar3
   055C D0 04         [24] 2142 	pop	ar4
   055E D0 05         [24] 2143 	pop	ar5
   0560 D0 06         [24] 2144 	pop	ar6
                     0481  2145 	C$TetrisLogic.c$154$4$90 ==.
                           2146 ;	src/EclipseTetris/TetrisLogic.c:154: const unsigned char part3 = GetBoard(((col * 3) + 2), row);
   0562 74 02         [12] 2147 	mov	a,#0x02
   0564 29            [12] 2148 	add	a,r1
   0565 F5 82         [12] 2149 	mov	dpl,a
   0567 8E 3F         [24] 2150 	mov	_GetBoard_PARM_2,r6
   0569 C0 06         [24] 2151 	push	ar6
   056B C0 05         [24] 2152 	push	ar5
   056D C0 04         [24] 2153 	push	ar4
   056F C0 03         [24] 2154 	push	ar3
   0571 C0 02         [24] 2155 	push	ar2
   0573 C0 00         [24] 2156 	push	ar0
   0575 12 04 B2      [24] 2157 	lcall	_GetBoard
   0578 E5 82         [12] 2158 	mov	a,dpl
   057A D0 00         [24] 2159 	pop	ar0
   057C D0 02         [24] 2160 	pop	ar2
   057E D0 03         [24] 2161 	pop	ar3
                     049F  2162 	C$TetrisLogic.c$155$4$90 ==.
                           2163 ;	src/EclipseTetris/TetrisLogic.c:155: const unsigned char index = (((part3 & 0x01) << 2) | ((part2 & 0x01) << 1) | (part1 & 0x01));
   0580 54 01         [12] 2164 	anl	a,#0x01
   0582 25 E0         [12] 2165 	add	a,acc
   0584 25 E0         [12] 2166 	add	a,acc
   0586 F9            [12] 2167 	mov	r1,a
   0587 53 00 01      [24] 2168 	anl	ar0,#0x01
   058A E8            [12] 2169 	mov	a,r0
   058B 28            [12] 2170 	add	a,r0
   058C 42 01         [12] 2171 	orl	ar1,a
   058E 74 01         [12] 2172 	mov	a,#0x01
   0590 55 41         [12] 2173 	anl	a,_PrintBoard_part1_4_90
   0592 42 01         [12] 2174 	orl	ar1,a
                     04B3  2175 	C$TetrisLogic.c$156$4$90 ==.
                           2176 ;	src/EclipseTetris/TetrisLogic.c:156: LCD_CMD_SET_CURSOR(((rows - 1) - row), col);
   0594 8B 25         [24] 2177 	mov	_LCD_CMD_SET_CURSOR_PARM_2,r3
   0596 8A 82         [24] 2178 	mov	dpl,r2
   0598 C0 03         [24] 2179 	push	ar3
   059A C0 02         [24] 2180 	push	ar2
   059C C0 01         [24] 2181 	push	ar1
   059E 12 03 59      [24] 2182 	lcall	_LCD_CMD_SET_CURSOR
   05A1 D0 01         [24] 2183 	pop	ar1
                     04C2  2184 	C$TetrisLogic.c$157$4$90 ==.
                           2185 ;	src/EclipseTetris/TetrisLogic.c:157: LCD_SEND_DATA(LCDCharIndicesMap[index]);
   05A3 E9            [12] 2186 	mov	a,r1
   05A4 90 0A D7      [24] 2187 	mov	dptr,#_LCDCharIndicesMap
   05A7 93            [24] 2188 	movc	a,@a+dptr
   05A8 F9            [12] 2189 	mov	r1,a
   05A9 75 24 00      [24] 2190 	mov	_LCD_SEND_8BITS_PARM_2,#0x00
   05AC 89 82         [24] 2191 	mov	dpl,r1
   05AE 12 03 0B      [24] 2192 	lcall	_LCD_SEND_8BITS
   05B1 D0 02         [24] 2193 	pop	ar2
   05B3 D0 03         [24] 2194 	pop	ar3
   05B5 D0 04         [24] 2195 	pop	ar4
   05B7 D0 05         [24] 2196 	pop	ar5
   05B9 D0 06         [24] 2197 	pop	ar6
   05BB D0 07         [24] 2198 	pop	ar7
                     04DC  2199 	C$TetrisLogic.c$147$3$89 ==.
                           2200 ;	src/EclipseTetris/TetrisLogic.c:147: for(col = 0; col < (columns / 3); col++)
   05BD 0B            [12] 2201 	inc	r3
   05BE 02 05 0D      [24] 2202 	ljmp	00107$
   05C1                    2203 00111$:
                     04E0  2204 	C$TetrisLogic.c$144$2$88 ==.
                           2205 ;	src/EclipseTetris/TetrisLogic.c:144: for(row = 0; row < rows; row++)
   05C1 0E            [12] 2206 	inc	r6
   05C2 02 04 FF      [24] 2207 	ljmp	00110$
   05C5                    2208 00112$:
                     04E4  2209 	C$TetrisLogic.c$162$1$87 ==.
                     04E4  2210 	XG$PrintBoard$0$0 ==.
   05C5 22            [24] 2211 	ret
                           2212 ;------------------------------------------------------------
                           2213 ;Allocation info for local variables in function 'GetShapeData'
                           2214 ;------------------------------------------------------------
                           2215 ;y                         Allocated with name '_GetShapeData_PARM_2'
                           2216 ;x                         Allocated to registers r7 
                           2217 ;shapeParts                Allocated with name '_GetShapeData_shapeParts_1_92'
                           2218 ;------------------------------------------------------------
                     04E5  2219 	G$GetShapeData$0$0 ==.
                     04E5  2220 	C$TetrisLogic.c$324$1$87 ==.
                           2221 ;	src/EclipseTetris/TetrisLogic.c:324: unsigned char GetShapeData(unsigned char x, unsigned char y)
                           2222 ;	-----------------------------------------
                           2223 ;	 function GetShapeData
                           2224 ;	-----------------------------------------
   05C6                    2225 _GetShapeData:
   05C6 AF 82         [24] 2226 	mov	r7,dpl
                     04E7  2227 	C$TetrisLogic.c$326$1$87 ==.
                           2228 ;	src/EclipseTetris/TetrisLogic.c:326: const unsigned shapeParts[2] =
   05C8 E5 44         [12] 2229 	mov	a,_g_ShapeType
   05CA 90 0B 0C      [24] 2230 	mov	dptr,#_TetrisShapes
   05CD 93            [24] 2231 	movc	a,@a+dptr
   05CE FE            [12] 2232 	mov	r6,a
   05CF 0E            [12] 2233 	inc	r6
   05D0 E5 45         [12] 2234 	mov	a,_g_ShapeRotation
   05D2 25 45         [12] 2235 	add	a,_g_ShapeRotation
   05D4 2E            [12] 2236 	add	a,r6
   05D5 90 0A DF      [24] 2237 	mov	dptr,#_g_TetrisSchapesData
   05D8 93            [24] 2238 	movc	a,@a+dptr
   05D9 FE            [12] 2239 	mov	r6,a
   05DA 7D 00         [12] 2240 	mov	r5,#0x00
   05DC 8E 47         [24] 2241 	mov	(_GetShapeData_shapeParts_1_92 + 0),r6
   05DE 8D 48         [24] 2242 	mov	(_GetShapeData_shapeParts_1_92 + 1),r5
   05E0 E5 44         [12] 2243 	mov	a,_g_ShapeType
   05E2 90 0B 0C      [24] 2244 	mov	dptr,#_TetrisShapes
   05E5 93            [24] 2245 	movc	a,@a+dptr
   05E6 FE            [12] 2246 	mov	r6,a
   05E7 E5 45         [12] 2247 	mov	a,_g_ShapeRotation
   05E9 25 45         [12] 2248 	add	a,_g_ShapeRotation
   05EB 24 02         [12] 2249 	add	a,#0x02
   05ED 2E            [12] 2250 	add	a,r6
   05EE 90 0A DF      [24] 2251 	mov	dptr,#_g_TetrisSchapesData
   05F1 93            [24] 2252 	movc	a,@a+dptr
   05F2 FE            [12] 2253 	mov	r6,a
   05F3 7D 00         [12] 2254 	mov	r5,#0x00
   05F5 8E 49         [24] 2255 	mov	((_GetShapeData_shapeParts_1_92 + 0x0002) + 0),r6
   05F7 8D 4A         [24] 2256 	mov	((_GetShapeData_shapeParts_1_92 + 0x0002) + 1),r5
                     0518  2257 	C$TetrisLogic.c$332$1$92 ==.
                           2258 ;	src/EclipseTetris/TetrisLogic.c:332: if (y < 2)
   05F9 74 FE         [12] 2259 	mov	a,#0x100 - 0x02
   05FB 25 46         [12] 2260 	add	a,_GetShapeData_PARM_2
   05FD 40 2C         [24] 2261 	jc	00102$
                     051E  2262 	C$TetrisLogic.c$334$2$93 ==.
                           2263 ;	src/EclipseTetris/TetrisLogic.c:334: return (unsigned char)0x01 & (shapeParts[0] >> (x + (y * 4)));
   05FF 8F 05         [24] 2264 	mov	ar5,r7
   0601 7E 00         [12] 2265 	mov	r6,#0x00
   0603 E5 46         [12] 2266 	mov	a,_GetShapeData_PARM_2
   0605 75 F0 04      [24] 2267 	mov	b,#0x04
   0608 A4            [48] 2268 	mul	ab
   0609 2D            [12] 2269 	add	a,r5
   060A FD            [12] 2270 	mov	r5,a
   060B EE            [12] 2271 	mov	a,r6
   060C 35 F0         [12] 2272 	addc	a,b
   060E 8D F0         [24] 2273 	mov	b,r5
   0610 05 F0         [12] 2274 	inc	b
   0612 AD 47         [24] 2275 	mov	r5,_GetShapeData_shapeParts_1_92
   0614 AE 48         [24] 2276 	mov	r6,(_GetShapeData_shapeParts_1_92 + 1)
   0616 80 07         [24] 2277 	sjmp	00111$
   0618                    2278 00110$:
   0618 C3            [12] 2279 	clr	c
   0619 EE            [12] 2280 	mov	a,r6
   061A 13            [12] 2281 	rrc	a
   061B FE            [12] 2282 	mov	r6,a
   061C ED            [12] 2283 	mov	a,r5
   061D 13            [12] 2284 	rrc	a
   061E FD            [12] 2285 	mov	r5,a
   061F                    2286 00111$:
   061F D5 F0 F6      [24] 2287 	djnz	b,00110$
   0622 53 05 01      [24] 2288 	anl	ar5,#0x01
   0625 7E 00         [12] 2289 	mov	r6,#0x00
   0627 8D 82         [24] 2290 	mov	dpl,r5
   0629 80 2C         [24] 2291 	sjmp	00104$
   062B                    2292 00102$:
                     054A  2293 	C$TetrisLogic.c$338$2$94 ==.
                           2294 ;	src/EclipseTetris/TetrisLogic.c:338: y -= 2;
   062B 15 46         [12] 2295 	dec	_GetShapeData_PARM_2
   062D 15 46         [12] 2296 	dec	_GetShapeData_PARM_2
                     054E  2297 	C$TetrisLogic.c$339$2$94 ==.
                           2298 ;	src/EclipseTetris/TetrisLogic.c:339: return (unsigned char)0x01 & (shapeParts[1] >> (x + (y * 4)));
   062F 7E 00         [12] 2299 	mov	r6,#0x00
   0631 E5 46         [12] 2300 	mov	a,_GetShapeData_PARM_2
   0633 75 F0 04      [24] 2301 	mov	b,#0x04
   0636 A4            [48] 2302 	mul	ab
   0637 2F            [12] 2303 	add	a,r7
   0638 FF            [12] 2304 	mov	r7,a
   0639 EE            [12] 2305 	mov	a,r6
   063A 35 F0         [12] 2306 	addc	a,b
   063C 8F F0         [24] 2307 	mov	b,r7
   063E 05 F0         [12] 2308 	inc	b
   0640 AF 49         [24] 2309 	mov	r7,(_GetShapeData_shapeParts_1_92 + 0x0002)
   0642 AE 4A         [24] 2310 	mov	r6,((_GetShapeData_shapeParts_1_92 + 0x0002) + 1)
   0644 80 07         [24] 2311 	sjmp	00113$
   0646                    2312 00112$:
   0646 C3            [12] 2313 	clr	c
   0647 EE            [12] 2314 	mov	a,r6
   0648 13            [12] 2315 	rrc	a
   0649 FE            [12] 2316 	mov	r6,a
   064A EF            [12] 2317 	mov	a,r7
   064B 13            [12] 2318 	rrc	a
   064C FF            [12] 2319 	mov	r7,a
   064D                    2320 00113$:
   064D D5 F0 F6      [24] 2321 	djnz	b,00112$
   0650 53 07 01      [24] 2322 	anl	ar7,#0x01
   0653 7E 00         [12] 2323 	mov	r6,#0x00
   0655 8F 82         [24] 2324 	mov	dpl,r7
   0657                    2325 00104$:
                     0576  2326 	C$TetrisLogic.c$341$1$92 ==.
                     0576  2327 	XG$GetShapeData$0$0 ==.
   0657 22            [24] 2328 	ret
                           2329 ;------------------------------------------------------------
                           2330 ;Allocation info for local variables in function 'CheckMoveAllowed'
                           2331 ;------------------------------------------------------------
                           2332 ;newY                      Allocated with name '_CheckMoveAllowed_PARM_2'
                           2333 ;newX                      Allocated to registers r7 
                           2334 ;retVal                    Allocated to registers r6 
                           2335 ;y                         Allocated to registers r5 
                           2336 ;x                         Allocated to registers r4 
                           2337 ;------------------------------------------------------------
                     0577  2338 	G$CheckMoveAllowed$0$0 ==.
                     0577  2339 	C$TetrisLogic.c$343$1$92 ==.
                           2340 ;	src/EclipseTetris/TetrisLogic.c:343: unsigned char CheckMoveAllowed(char newX, unsigned char newY)
                           2341 ;	-----------------------------------------
                           2342 ;	 function CheckMoveAllowed
                           2343 ;	-----------------------------------------
   0658                    2344 _CheckMoveAllowed:
   0658 AF 82         [24] 2345 	mov	r7,dpl
                     0579  2346 	C$TetrisLogic.c$345$1$92 ==.
                           2347 ;	src/EclipseTetris/TetrisLogic.c:345: unsigned char retVal = 1;
   065A 7E 01         [12] 2348 	mov	r6,#0x01
                     057B  2349 	C$TetrisLogic.c$348$1$96 ==.
                           2350 ;	src/EclipseTetris/TetrisLogic.c:348: for(y = 0; y < 4; y++)
   065C 7D 00         [12] 2351 	mov	r5,#0x00
   065E                    2352 00108$:
                     057D  2353 	C$TetrisLogic.c$351$2$97 ==.
                           2354 ;	src/EclipseTetris/TetrisLogic.c:351: for(x = 0; x < 4; x++)
   065E 7C 00         [12] 2355 	mov	r4,#0x00
   0660                    2356 00106$:
                     057F  2357 	C$TetrisLogic.c$353$3$98 ==.
                           2358 ;	src/EclipseTetris/TetrisLogic.c:353: if(GetBoard((g_ShapeX + newX) + x, (g_ShapeY + newY) + y) && GetShapeData(x, y))
   0660 AB 42         [24] 2359 	mov	r3,_g_ShapeX
   0662 EF            [12] 2360 	mov	a,r7
   0663 2B            [12] 2361 	add	a,r3
   0664 FB            [12] 2362 	mov	r3,a
   0665 8C 02         [24] 2363 	mov	ar2,r4
   0667 EA            [12] 2364 	mov	a,r2
   0668 2B            [12] 2365 	add	a,r3
   0669 F5 82         [12] 2366 	mov	dpl,a
   066B E5 4B         [12] 2367 	mov	a,_CheckMoveAllowed_PARM_2
   066D 25 43         [12] 2368 	add	a,_g_ShapeY
   066F 2D            [12] 2369 	add	a,r5
   0670 F5 3F         [12] 2370 	mov	_GetBoard_PARM_2,a
   0672 C0 07         [24] 2371 	push	ar7
   0674 C0 06         [24] 2372 	push	ar6
   0676 C0 05         [24] 2373 	push	ar5
   0678 C0 04         [24] 2374 	push	ar4
   067A 12 04 B2      [24] 2375 	lcall	_GetBoard
   067D E5 82         [12] 2376 	mov	a,dpl
   067F D0 04         [24] 2377 	pop	ar4
   0681 D0 05         [24] 2378 	pop	ar5
   0683 D0 06         [24] 2379 	pop	ar6
   0685 D0 07         [24] 2380 	pop	ar7
   0687 60 1D         [24] 2381 	jz	00107$
   0689 8D 46         [24] 2382 	mov	_GetShapeData_PARM_2,r5
   068B 8C 82         [24] 2383 	mov	dpl,r4
   068D C0 07         [24] 2384 	push	ar7
   068F C0 06         [24] 2385 	push	ar6
   0691 C0 05         [24] 2386 	push	ar5
   0693 C0 04         [24] 2387 	push	ar4
   0695 12 05 C6      [24] 2388 	lcall	_GetShapeData
   0698 E5 82         [12] 2389 	mov	a,dpl
   069A D0 04         [24] 2390 	pop	ar4
   069C D0 05         [24] 2391 	pop	ar5
   069E D0 06         [24] 2392 	pop	ar6
   06A0 D0 07         [24] 2393 	pop	ar7
   06A2 60 02         [24] 2394 	jz	00107$
                     05C3  2395 	C$TetrisLogic.c$355$4$99 ==.
                           2396 ;	src/EclipseTetris/TetrisLogic.c:355: retVal = 0;
   06A4 7E 00         [12] 2397 	mov	r6,#0x00
   06A6                    2398 00107$:
                     05C5  2399 	C$TetrisLogic.c$351$2$97 ==.
                           2400 ;	src/EclipseTetris/TetrisLogic.c:351: for(x = 0; x < 4; x++)
   06A6 0C            [12] 2401 	inc	r4
   06A7 BC 04 00      [24] 2402 	cjne	r4,#0x04,00132$
   06AA                    2403 00132$:
   06AA 40 B4         [24] 2404 	jc	00106$
                     05CB  2405 	C$TetrisLogic.c$348$1$96 ==.
                           2406 ;	src/EclipseTetris/TetrisLogic.c:348: for(y = 0; y < 4; y++)
   06AC 0D            [12] 2407 	inc	r5
   06AD BD 04 00      [24] 2408 	cjne	r5,#0x04,00134$
   06B0                    2409 00134$:
   06B0 40 AC         [24] 2410 	jc	00108$
                     05D1  2411 	C$TetrisLogic.c$360$1$96 ==.
                           2412 ;	src/EclipseTetris/TetrisLogic.c:360: return retVal;
   06B2 8E 82         [24] 2413 	mov	dpl,r6
                     05D3  2414 	C$TetrisLogic.c$361$1$96 ==.
                     05D3  2415 	XG$CheckMoveAllowed$0$0 ==.
   06B4 22            [24] 2416 	ret
                           2417 ;------------------------------------------------------------
                           2418 ;Allocation info for local variables in function 'CommitCurrentShapeToOrRemoveFromTheBoard'
                           2419 ;------------------------------------------------------------
                           2420 ;commit                    Allocated to registers r7 
                           2421 ;retVal                    Allocated to registers 
                           2422 ;y                         Allocated to registers r6 
                           2423 ;x                         Allocated to registers r5 
                           2424 ;shapePoint                Allocated to registers r4 
                           2425 ;------------------------------------------------------------
                     05D4  2426 	G$CommitCurrentShapeToOrRemoveFromTheBoard$0$0 ==.
                     05D4  2427 	C$TetrisLogic.c$363$1$96 ==.
                           2428 ;	src/EclipseTetris/TetrisLogic.c:363: unsigned char CommitCurrentShapeToOrRemoveFromTheBoard(unsigned char commit)
                           2429 ;	-----------------------------------------
                           2430 ;	 function CommitCurrentShapeToOrRemoveFromTheBoard
                           2431 ;	-----------------------------------------
   06B5                    2432 _CommitCurrentShapeToOrRemoveFromTheBoard:
   06B5 AF 82         [24] 2433 	mov	r7,dpl
                     05D6  2434 	C$TetrisLogic.c$368$1$101 ==.
                           2435 ;	src/EclipseTetris/TetrisLogic.c:368: for(y = 0; y < 4; y++)
   06B7 7E 00         [12] 2436 	mov	r6,#0x00
   06B9                    2437 00107$:
                     05D8  2438 	C$TetrisLogic.c$371$2$102 ==.
                           2439 ;	src/EclipseTetris/TetrisLogic.c:371: for(x = 0; x < 4; x++)
   06B9 7D 00         [12] 2440 	mov	r5,#0x00
   06BB                    2441 00105$:
                     05DA  2442 	C$TetrisLogic.c$373$3$103 ==.
                           2443 ;	src/EclipseTetris/TetrisLogic.c:373: const unsigned char shapePoint = GetShapeData(x, y);
   06BB 8E 46         [24] 2444 	mov	_GetShapeData_PARM_2,r6
   06BD 8D 82         [24] 2445 	mov	dpl,r5
   06BF C0 07         [24] 2446 	push	ar7
   06C1 C0 06         [24] 2447 	push	ar6
   06C3 C0 05         [24] 2448 	push	ar5
   06C5 12 05 C6      [24] 2449 	lcall	_GetShapeData
   06C8 AC 82         [24] 2450 	mov	r4,dpl
   06CA D0 05         [24] 2451 	pop	ar5
   06CC D0 06         [24] 2452 	pop	ar6
   06CE D0 07         [24] 2453 	pop	ar7
                     05EF  2454 	C$TetrisLogic.c$374$3$103 ==.
                           2455 ;	src/EclipseTetris/TetrisLogic.c:374: if (shapePoint)
   06D0 EC            [12] 2456 	mov	a,r4
   06D1 60 1D         [24] 2457 	jz	00106$
                     05F2  2458 	C$TetrisLogic.c$376$4$104 ==.
                           2459 ;	src/EclipseTetris/TetrisLogic.c:376: SetBoard(g_ShapeX + x, g_ShapeY + y, shapePoint & commit);
   06D3 ED            [12] 2460 	mov	a,r5
   06D4 25 42         [12] 2461 	add	a,_g_ShapeX
   06D6 F5 82         [12] 2462 	mov	dpl,a
   06D8 EE            [12] 2463 	mov	a,r6
   06D9 25 43         [12] 2464 	add	a,_g_ShapeY
   06DB F5 3D         [12] 2465 	mov	_SetBoard_PARM_2,a
   06DD EF            [12] 2466 	mov	a,r7
   06DE 5C            [12] 2467 	anl	a,r4
   06DF F5 3E         [12] 2468 	mov	_SetBoard_PARM_3,a
   06E1 C0 07         [24] 2469 	push	ar7
   06E3 C0 06         [24] 2470 	push	ar6
   06E5 C0 05         [24] 2471 	push	ar5
   06E7 12 04 69      [24] 2472 	lcall	_SetBoard
   06EA D0 05         [24] 2473 	pop	ar5
   06EC D0 06         [24] 2474 	pop	ar6
   06EE D0 07         [24] 2475 	pop	ar7
   06F0                    2476 00106$:
                     060F  2477 	C$TetrisLogic.c$371$2$102 ==.
                           2478 ;	src/EclipseTetris/TetrisLogic.c:371: for(x = 0; x < 4; x++)
   06F0 0D            [12] 2479 	inc	r5
   06F1 BD 04 00      [24] 2480 	cjne	r5,#0x04,00127$
   06F4                    2481 00127$:
   06F4 40 C5         [24] 2482 	jc	00105$
                     0615  2483 	C$TetrisLogic.c$368$1$101 ==.
                           2484 ;	src/EclipseTetris/TetrisLogic.c:368: for(y = 0; y < 4; y++)
   06F6 0E            [12] 2485 	inc	r6
   06F7 BE 04 00      [24] 2486 	cjne	r6,#0x04,00129$
   06FA                    2487 00129$:
   06FA 40 BD         [24] 2488 	jc	00107$
                     061B  2489 	C$TetrisLogic.c$381$1$101 ==.
                           2490 ;	src/EclipseTetris/TetrisLogic.c:381: return retVal;
   06FC 75 82 01      [24] 2491 	mov	dpl,#0x01
                     061E  2492 	C$TetrisLogic.c$382$1$101 ==.
                     061E  2493 	XG$CommitCurrentShapeToOrRemoveFromTheBoard$0$0 ==.
   06FF 22            [24] 2494 	ret
                           2495 ;------------------------------------------------------------
                           2496 ;Allocation info for local variables in function 'GetInput'
                           2497 ;------------------------------------------------------------
                           2498 ;timeDeltaInMs             Allocated to registers r7 
                           2499 ;retVal                    Allocated to registers r6 
                           2500 ;rotateButtonActiveForMs   Allocated with name '_GetInput_rotateButtonActiveForMs_1_106'
                           2501 ;leftButtonActiveForMs     Allocated with name '_GetInput_leftButtonActiveForMs_1_106'
                           2502 ;rightButtonActiveForMs    Allocated with name '_GetInput_rightButtonActiveForMs_1_106'
                           2503 ;downButtonActiveForMs     Allocated with name '_GetInput_downButtonActiveForMs_1_106'
                           2504 ;gameOverDetectedForMs     Allocated with name '_GetInput_gameOverDetectedForMs_1_106'
                           2505 ;------------------------------------------------------------
                     061F  2506 	G$GetInput$0$0 ==.
                     061F  2507 	C$TetrisLogic.c$426$1$101 ==.
                           2508 ;	src/EclipseTetris/TetrisLogic.c:426: Button GetInput(unsigned char timeDeltaInMs)
                           2509 ;	-----------------------------------------
                           2510 ;	 function GetInput
                           2511 ;	-----------------------------------------
   0700                    2512 _GetInput:
   0700 AF 82         [24] 2513 	mov	r7,dpl
                     0621  2514 	C$TetrisLogic.c$428$1$101 ==.
                           2515 ;	src/EclipseTetris/TetrisLogic.c:428: Button retVal = e_Button_NoButton;
   0702 7E 05         [12] 2516 	mov	r6,#0x05
                     0623  2517 	C$TetrisLogic.c$471$1$106 ==.
                           2518 ;	src/EclipseTetris/TetrisLogic.c:471: if (ROTATE_BUTTON)
   0704 30 B1 0A      [24] 2519 	jnb	_P3_1,00108$
   0707 30 B2 07      [24] 2520 	jnb	_P3_2,00108$
                     0629  2521 	C$TetrisLogic.c$473$2$107 ==.
                           2522 ;	src/EclipseTetris/TetrisLogic.c:473: rotateButtonActiveForMs += timeDeltaInMs;
   070A EF            [12] 2523 	mov	a,r7
   070B 25 54         [12] 2524 	add	a,_GetInput_rotateButtonActiveForMs_1_106
   070D F5 54         [12] 2525 	mov	_GetInput_rotateButtonActiveForMs_1_106,a
   070F 80 1D         [24] 2526 	sjmp	00109$
   0711                    2527 00108$:
                     0630  2528 	C$TetrisLogic.c$477$2$108 ==.
                           2529 ;	src/EclipseTetris/TetrisLogic.c:477: rotateButtonActiveForMs = 0;
   0711 75 54 00      [24] 2530 	mov	_GetInput_rotateButtonActiveForMs_1_106,#0x00
                     0633  2531 	C$TetrisLogic.c$479$2$108 ==.
                           2532 ;	src/EclipseTetris/TetrisLogic.c:479: if (LEFT_BUTTON)
   0714 30 B1 07      [24] 2533 	jnb	_P3_1,00102$
                     0636  2534 	C$TetrisLogic.c$481$3$109 ==.
                           2535 ;	src/EclipseTetris/TetrisLogic.c:481: leftButtonActiveForMs += timeDeltaInMs;
   0717 EF            [12] 2536 	mov	a,r7
   0718 25 55         [12] 2537 	add	a,_GetInput_leftButtonActiveForMs_1_106
   071A F5 55         [12] 2538 	mov	_GetInput_leftButtonActiveForMs_1_106,a
   071C 80 03         [24] 2539 	sjmp	00103$
   071E                    2540 00102$:
                     063D  2541 	C$TetrisLogic.c$485$3$110 ==.
                           2542 ;	src/EclipseTetris/TetrisLogic.c:485: leftButtonActiveForMs = 0;
   071E 75 55 00      [24] 2543 	mov	_GetInput_leftButtonActiveForMs_1_106,#0x00
   0721                    2544 00103$:
                     0640  2545 	C$TetrisLogic.c$488$2$108 ==.
                           2546 ;	src/EclipseTetris/TetrisLogic.c:488: if (RIGHT_BUTTON)
   0721 30 B2 07      [24] 2547 	jnb	_P3_2,00105$
                     0643  2548 	C$TetrisLogic.c$490$3$111 ==.
                           2549 ;	src/EclipseTetris/TetrisLogic.c:490: rightButtonActiveForMs += timeDeltaInMs;
   0724 EF            [12] 2550 	mov	a,r7
   0725 25 56         [12] 2551 	add	a,_GetInput_rightButtonActiveForMs_1_106
   0727 F5 56         [12] 2552 	mov	_GetInput_rightButtonActiveForMs_1_106,a
   0729 80 03         [24] 2553 	sjmp	00109$
   072B                    2554 00105$:
                     064A  2555 	C$TetrisLogic.c$494$3$112 ==.
                           2556 ;	src/EclipseTetris/TetrisLogic.c:494: rightButtonActiveForMs = 0;
   072B 75 56 00      [24] 2557 	mov	_GetInput_rightButtonActiveForMs_1_106,#0x00
   072E                    2558 00109$:
                     064D  2559 	C$TetrisLogic.c$498$1$106 ==.
                           2560 ;	src/EclipseTetris/TetrisLogic.c:498: if (DOWN_BUTTON)
   072E 30 B0 07      [24] 2561 	jnb	_P3_0,00112$
                     0650  2562 	C$TetrisLogic.c$500$2$113 ==.
                           2563 ;	src/EclipseTetris/TetrisLogic.c:500: downButtonActiveForMs += timeDeltaInMs;
   0731 EF            [12] 2564 	mov	a,r7
   0732 25 57         [12] 2565 	add	a,_GetInput_downButtonActiveForMs_1_106
   0734 F5 57         [12] 2566 	mov	_GetInput_downButtonActiveForMs_1_106,a
   0736 80 03         [24] 2567 	sjmp	00113$
   0738                    2568 00112$:
                     0657  2569 	C$TetrisLogic.c$504$2$114 ==.
                           2570 ;	src/EclipseTetris/TetrisLogic.c:504: downButtonActiveForMs = 0;
   0738 75 57 00      [24] 2571 	mov	_GetInput_downButtonActiveForMs_1_106,#0x00
   073B                    2572 00113$:
                     065A  2573 	C$TetrisLogic.c$507$1$106 ==.
                           2574 ;	src/EclipseTetris/TetrisLogic.c:507: if (rotateButtonActiveForMs >= BUTTON_STATE_HOLDING_INTERVAL_IN_MS)
   073B 74 FE         [12] 2575 	mov	a,#0x100 - 0x02
   073D 25 54         [12] 2576 	add	a,_GetInput_rotateButtonActiveForMs_1_106
   073F 50 09         [24] 2577 	jnc	00124$
                     0660  2578 	C$TetrisLogic.c$509$2$115 ==.
                           2579 ;	src/EclipseTetris/TetrisLogic.c:509: if (rotateButtonDown == 0)
   0741 20 01 2A      [24] 2580 	jb	_GetInput_rotateButtonDown_1_106,00125$
                     0663  2581 	C$TetrisLogic.c$511$3$116 ==.
                           2582 ;	src/EclipseTetris/TetrisLogic.c:511: retVal = e_Button_Rotate;
   0744 7E 03         [12] 2583 	mov	r6,#0x03
                     0665  2584 	C$TetrisLogic.c$512$3$116 ==.
                           2585 ;	src/EclipseTetris/TetrisLogic.c:512: rotateButtonDown = 1;
   0746 D2 01         [12] 2586 	setb	_GetInput_rotateButtonDown_1_106
   0748 80 24         [24] 2587 	sjmp	00125$
   074A                    2588 00124$:
                     0669  2589 	C$TetrisLogic.c$518$2$117 ==.
                           2590 ;	src/EclipseTetris/TetrisLogic.c:518: if (g_ButtonTime >= LEFT_RIGHT_BUTTONS_SAMPLING_INTERVAL_IN_MS)
   074A C3            [12] 2591 	clr	c
   074B E5 4E         [12] 2592 	mov	a,_g_ButtonTime
   074D 94 08         [12] 2593 	subb	a,#0x08
   074F E5 4F         [12] 2594 	mov	a,(_g_ButtonTime + 1)
   0751 94 00         [12] 2595 	subb	a,#0x00
   0753 40 19         [24] 2596 	jc	00125$
                     0674  2597 	C$TetrisLogic.c$520$3$118 ==.
                           2598 ;	src/EclipseTetris/TetrisLogic.c:520: rotateButtonDown = 0;
   0755 C2 01         [12] 2599 	clr	_GetInput_rotateButtonDown_1_106
                     0676  2600 	C$TetrisLogic.c$522$3$118 ==.
                           2601 ;	src/EclipseTetris/TetrisLogic.c:522: if (leftButtonActiveForMs >= BUTTON_STATE_HOLDING_INTERVAL_IN_MS)
   0757 74 FE         [12] 2602 	mov	a,#0x100 - 0x02
   0759 25 55         [12] 2603 	add	a,_GetInput_leftButtonActiveForMs_1_106
   075B 50 04         [24] 2604 	jnc	00119$
                     067C  2605 	C$TetrisLogic.c$524$4$119 ==.
                           2606 ;	src/EclipseTetris/TetrisLogic.c:524: retVal = e_Button_Left;
   075D 7E 00         [12] 2607 	mov	r6,#0x00
   075F 80 08         [24] 2608 	sjmp	00120$
   0761                    2609 00119$:
                     0680  2610 	C$TetrisLogic.c$526$3$118 ==.
                           2611 ;	src/EclipseTetris/TetrisLogic.c:526: else if (rightButtonActiveForMs >= BUTTON_STATE_HOLDING_INTERVAL_IN_MS)
   0761 74 FE         [12] 2612 	mov	a,#0x100 - 0x02
   0763 25 56         [12] 2613 	add	a,_GetInput_rightButtonActiveForMs_1_106
   0765 50 02         [24] 2614 	jnc	00120$
                     0686  2615 	C$TetrisLogic.c$528$4$120 ==.
                           2616 ;	src/EclipseTetris/TetrisLogic.c:528: retVal = e_Button_Right;
   0767 7E 01         [12] 2617 	mov	r6,#0x01
   0769                    2618 00120$:
                     0688  2619 	C$TetrisLogic.c$530$3$118 ==.
                           2620 ;	src/EclipseTetris/TetrisLogic.c:530: g_ButtonTime = 0;
   0769 E4            [12] 2621 	clr	a
   076A F5 4E         [12] 2622 	mov	_g_ButtonTime,a
   076C F5 4F         [12] 2623 	mov	(_g_ButtonTime + 1),a
   076E                    2624 00125$:
                     068D  2625 	C$TetrisLogic.c$534$1$106 ==.
                           2626 ;	src/EclipseTetris/TetrisLogic.c:534: if (downButtonActiveForMs >= BUTTON_STATE_HOLDING_INTERVAL_IN_MS)
   076E 74 FE         [12] 2627 	mov	a,#0x100 - 0x02
   0770 25 57         [12] 2628 	add	a,_GetInput_downButtonActiveForMs_1_106
   0772 50 11         [24] 2629 	jnc	00133$
                     0693  2630 	C$TetrisLogic.c$536$2$121 ==.
                           2631 ;	src/EclipseTetris/TetrisLogic.c:536: g_FallIntervalInMs = FAST_FALL_INTERVAL_IN_MS;
   0774 75 52 64      [24] 2632 	mov	_g_FallIntervalInMs,#0x64
   0777 75 53 00      [24] 2633 	mov	(_g_FallIntervalInMs + 1),#0x00
                     0699  2634 	C$TetrisLogic.c$537$2$121 ==.
                           2635 ;	src/EclipseTetris/TetrisLogic.c:537: retVal = e_Button_Down;
   077A 7E 02         [12] 2636 	mov	r6,#0x02
                     069B  2637 	C$TetrisLogic.c$538$2$121 ==.
                           2638 ;	src/EclipseTetris/TetrisLogic.c:538: if (gameOverDetected == 1)
   077C 30 02 1F      [24] 2639 	jnb	_GetInput_gameOverDetected_1_106,00134$
                     069E  2640 	C$TetrisLogic.c$540$3$122 ==.
                           2641 ;	src/EclipseTetris/TetrisLogic.c:540: g_GameOver = 0;
   077F C2 00         [12] 2642 	clr	_g_GameOver
                     06A0  2643 	C$TetrisLogic.c$541$3$122 ==.
                           2644 ;	src/EclipseTetris/TetrisLogic.c:541: gameOverDetected = 0;
   0781 C2 02         [12] 2645 	clr	_GetInput_gameOverDetected_1_106
   0783 80 19         [24] 2646 	sjmp	00134$
   0785                    2647 00133$:
                     06A4  2648 	C$TetrisLogic.c$546$2$123 ==.
                           2649 ;	src/EclipseTetris/TetrisLogic.c:546: if (g_GameOver == 1)
   0785 30 00 05      [24] 2650 	jnb	_g_GameOver,00129$
                     06A7  2651 	C$TetrisLogic.c$548$3$124 ==.
                           2652 ;	src/EclipseTetris/TetrisLogic.c:548: gameOverDetectedForMs += timeDeltaInMs;
   0788 EF            [12] 2653 	mov	a,r7
   0789 25 58         [12] 2654 	add	a,_GetInput_gameOverDetectedForMs_1_106
   078B F5 58         [12] 2655 	mov	_GetInput_gameOverDetectedForMs_1_106,a
   078D                    2656 00129$:
                     06AC  2657 	C$TetrisLogic.c$551$2$123 ==.
                           2658 ;	src/EclipseTetris/TetrisLogic.c:551: if (gameOverDetectedForMs >= 100)
   078D 74 9C         [12] 2659 	mov	a,#0x100 - 0x64
   078F 25 58         [12] 2660 	add	a,_GetInput_gameOverDetectedForMs_1_106
   0791 50 05         [24] 2661 	jnc	00131$
                     06B2  2662 	C$TetrisLogic.c$553$3$125 ==.
                           2663 ;	src/EclipseTetris/TetrisLogic.c:553: gameOverDetected = 1;
   0793 D2 02         [12] 2664 	setb	_GetInput_gameOverDetected_1_106
                     06B4  2665 	C$TetrisLogic.c$554$3$125 ==.
                           2666 ;	src/EclipseTetris/TetrisLogic.c:554: gameOverDetectedForMs = 0;
   0795 75 58 00      [24] 2667 	mov	_GetInput_gameOverDetectedForMs_1_106,#0x00
   0798                    2668 00131$:
                     06B7  2669 	C$TetrisLogic.c$557$2$123 ==.
                           2670 ;	src/EclipseTetris/TetrisLogic.c:557: g_FallIntervalInMs = DEFAULT_FALL_INTERVAL_IN_MS;
   0798 75 52 E8      [24] 2671 	mov	_g_FallIntervalInMs,#0xE8
   079B 75 53 03      [24] 2672 	mov	(_g_FallIntervalInMs + 1),#0x03
   079E                    2673 00134$:
                     06BD  2674 	C$TetrisLogic.c$560$1$106 ==.
                           2675 ;	src/EclipseTetris/TetrisLogic.c:560: return retVal;
   079E 8E 82         [24] 2676 	mov	dpl,r6
                     06BF  2677 	C$TetrisLogic.c$561$1$106 ==.
                     06BF  2678 	XG$GetInput$0$0 ==.
   07A0 22            [24] 2679 	ret
                           2680 ;------------------------------------------------------------
                           2681 ;Allocation info for local variables in function 'NextShape'
                           2682 ;------------------------------------------------------------
                     06C0  2683 	G$NextShape$0$0 ==.
                     06C0  2684 	C$TetrisLogic.c$563$1$106 ==.
                           2685 ;	src/EclipseTetris/TetrisLogic.c:563: void NextShape()
                           2686 ;	-----------------------------------------
                           2687 ;	 function NextShape
                           2688 ;	-----------------------------------------
   07A1                    2689 _NextShape:
                     06C0  2690 	C$TetrisLogic.c$565$1$126 ==.
                           2691 ;	src/EclipseTetris/TetrisLogic.c:565: g_ShapeX = (TETRIS_BOARD_WIDTH / 4);
   07A1 75 42 01      [24] 2692 	mov	_g_ShapeX,#0x01
                     06C3  2693 	C$TetrisLogic.c$566$1$126 ==.
                           2694 ;	src/EclipseTetris/TetrisLogic.c:566: g_ShapeY = 0;
   07A4 75 43 00      [24] 2695 	mov	_g_ShapeY,#0x00
                     06C6  2696 	C$TetrisLogic.c$567$1$126 ==.
                           2697 ;	src/EclipseTetris/TetrisLogic.c:567: g_ShapeRotation = 0;
   07A7 75 45 00      [24] 2698 	mov	_g_ShapeRotation,#0x00
                     06C9  2699 	C$TetrisLogic.c$569$1$126 ==.
                           2700 ;	src/EclipseTetris/TetrisLogic.c:569: g_ShapeType++;
   07AA 05 44         [12] 2701 	inc	_g_ShapeType
                     06CB  2702 	C$TetrisLogic.c$570$1$126 ==.
                           2703 ;	src/EclipseTetris/TetrisLogic.c:570: if (g_ShapeType >= TETRIS_SHAPES_COUNT)
   07AC 74 F9         [12] 2704 	mov	a,#0x100 - 0x07
   07AE 25 44         [12] 2705 	add	a,_g_ShapeType
   07B0 50 03         [24] 2706 	jnc	00103$
                     06D1  2707 	C$TetrisLogic.c$572$2$127 ==.
                           2708 ;	src/EclipseTetris/TetrisLogic.c:572: g_ShapeType = 0;
   07B2 75 44 00      [24] 2709 	mov	_g_ShapeType,#0x00
   07B5                    2710 00103$:
                     06D4  2711 	C$TetrisLogic.c$574$1$126 ==.
                     06D4  2712 	XG$NextShape$0$0 ==.
   07B5 22            [24] 2713 	ret
                           2714 ;------------------------------------------------------------
                           2715 ;Allocation info for local variables in function 'ClearTheBoard'
                           2716 ;------------------------------------------------------------
                           2717 ;i                         Allocated to registers r7 
                           2718 ;------------------------------------------------------------
                     06D5  2719 	G$ClearTheBoard$0$0 ==.
                     06D5  2720 	C$TetrisLogic.c$576$1$126 ==.
                           2721 ;	src/EclipseTetris/TetrisLogic.c:576: void ClearTheBoard()
                           2722 ;	-----------------------------------------
                           2723 ;	 function ClearTheBoard
                           2724 ;	-----------------------------------------
   07B6                    2725 _ClearTheBoard:
                     06D5  2726 	C$TetrisLogic.c$579$1$128 ==.
                           2727 ;	src/EclipseTetris/TetrisLogic.c:579: for(i = 1; i <= TETRIS_BOARD_HEIGHT; i++)
   07B6 7F 01         [12] 2728 	mov	r7,#0x01
   07B8                    2729 00102$:
                     06D7  2730 	C$TetrisLogic.c$581$2$129 ==.
                           2731 ;	src/EclipseTetris/TetrisLogic.c:581: Tetris_Board[i] = 0x00;
   07B8 EF            [12] 2732 	mov	a,r7
   07B9 24 2B         [12] 2733 	add	a,#_Tetris_Board
   07BB F8            [12] 2734 	mov	r0,a
   07BC 76 00         [12] 2735 	mov	@r0,#0x00
                     06DD  2736 	C$TetrisLogic.c$579$1$128 ==.
                           2737 ;	src/EclipseTetris/TetrisLogic.c:579: for(i = 1; i <= TETRIS_BOARD_HEIGHT; i++)
   07BE 0F            [12] 2738 	inc	r7
   07BF EF            [12] 2739 	mov	a,r7
   07C0 24 EF         [12] 2740 	add	a,#0xff - 0x10
   07C2 50 F4         [24] 2741 	jnc	00102$
                     06E3  2742 	C$TetrisLogic.c$583$1$128 ==.
                     06E3  2743 	XG$ClearTheBoard$0$0 ==.
   07C4 22            [24] 2744 	ret
                           2745 ;------------------------------------------------------------
                           2746 ;Allocation info for local variables in function 'ShiftTheBoard'
                           2747 ;------------------------------------------------------------
                           2748 ;linesToShift              Allocated with name '_ShiftTheBoard_linesToShift_1_130'
                           2749 ;i                         Allocated with name '_ShiftTheBoard_i_1_130'
                           2750 ;shiftStartPos             Allocated to registers r6 
                           2751 ;------------------------------------------------------------
                     06E4  2752 	G$ShiftTheBoard$0$0 ==.
                     06E4  2753 	C$TetrisLogic.c$585$1$128 ==.
                           2754 ;	src/EclipseTetris/TetrisLogic.c:585: void ShiftTheBoard()
                           2755 ;	-----------------------------------------
                           2756 ;	 function ShiftTheBoard
                           2757 ;	-----------------------------------------
   07C5                    2758 _ShiftTheBoard:
                     06E4  2759 	C$TetrisLogic.c$587$1$128 ==.
                           2760 ;	src/EclipseTetris/TetrisLogic.c:587: unsigned char linesToShift = 0;
   07C5 75 59 00      [24] 2761 	mov	_ShiftTheBoard_linesToShift_1_130,#0x00
                     06E7  2762 	C$TetrisLogic.c$589$1$128 ==.
                           2763 ;	src/EclipseTetris/TetrisLogic.c:589: unsigned char shiftStartPos = TETRIS_BOARD_HEIGHT;
   07C8 7E 10         [12] 2764 	mov	r6,#0x10
                     06E9  2765 	C$TetrisLogic.c$590$1$130 ==.
                           2766 ;	src/EclipseTetris/TetrisLogic.c:590: for(i = TETRIS_BOARD_HEIGHT; i > 0; i--)
   07CA 75 5A 10      [24] 2767 	mov	_ShiftTheBoard_i_1_130,#0x10
   07CD                    2768 00109$:
                     06EC  2769 	C$TetrisLogic.c$592$2$131 ==.
                           2770 ;	src/EclipseTetris/TetrisLogic.c:592: if (Tetris_Board[i] == 0xFF)
   07CD E5 5A         [12] 2771 	mov	a,_ShiftTheBoard_i_1_130
   07CF 24 2B         [12] 2772 	add	a,#_Tetris_Board
   07D1 F9            [12] 2773 	mov	r1,a
   07D2 87 04         [24] 2774 	mov	ar4,@r1
   07D4 BC FF 06      [24] 2775 	cjne	r4,#0xFF,00104$
                     06F6  2776 	C$TetrisLogic.c$594$3$132 ==.
                           2777 ;	src/EclipseTetris/TetrisLogic.c:594: linesToShift++;
   07D7 05 59         [12] 2778 	inc	_ShiftTheBoard_linesToShift_1_130
                     06F8  2779 	C$TetrisLogic.c$595$3$132 ==.
                           2780 ;	src/EclipseTetris/TetrisLogic.c:595: shiftStartPos = i;
   07D9 AE 5A         [24] 2781 	mov	r6,_ShiftTheBoard_i_1_130
   07DB 80 03         [24] 2782 	sjmp	00110$
   07DD                    2783 00104$:
                     06FC  2784 	C$TetrisLogic.c$597$2$131 ==.
                           2785 ;	src/EclipseTetris/TetrisLogic.c:597: else if (shiftStartPos != TETRIS_BOARD_HEIGHT)
   07DD BE 10 03      [24] 2786 	cjne	r6,#0x10,00106$
                     06FF  2787 	C$TetrisLogic.c$599$2$131 ==.
                           2788 ;	src/EclipseTetris/TetrisLogic.c:599: break;
   07E0                    2789 00110$:
                     06FF  2790 	C$TetrisLogic.c$590$1$130 ==.
                           2791 ;	src/EclipseTetris/TetrisLogic.c:590: for(i = TETRIS_BOARD_HEIGHT; i > 0; i--)
   07E0 D5 5A EA      [24] 2792 	djnz	_ShiftTheBoard_i_1_130,00109$
   07E3                    2793 00106$:
                     0702  2794 	C$TetrisLogic.c$603$1$130 ==.
                           2795 ;	src/EclipseTetris/TetrisLogic.c:603: CommitCurrentShapeToOrRemoveFromTheBoard(0);
   07E3 75 82 00      [24] 2796 	mov	dpl,#0x00
   07E6 C0 06         [24] 2797 	push	ar6
   07E8 12 06 B5      [24] 2798 	lcall	_CommitCurrentShapeToOrRemoveFromTheBoard
   07EB D0 06         [24] 2799 	pop	ar6
                     070C  2800 	C$TetrisLogic.c$604$1$130 ==.
                           2801 ;	src/EclipseTetris/TetrisLogic.c:604: for(i = 0; i < (TETRIS_BOARD_HEIGHT - linesToShift); i++)
   07ED 75 5A 00      [24] 2802 	mov	_ShiftTheBoard_i_1_130,#0x00
   07F0 74 10         [12] 2803 	mov	a,#0x10
   07F2 C3            [12] 2804 	clr	c
   07F3 9E            [12] 2805 	subb	a,r6
   07F4 D3            [12] 2806 	setb	c
   07F5 94 10         [12] 2807 	subb	a,#0x10
   07F7 F4            [12] 2808 	cpl	a
   07F8 FE            [12] 2809 	mov	r6,a
   07F9 C3            [12] 2810 	clr	c
   07FA 95 59         [12] 2811 	subb	a,_ShiftTheBoard_linesToShift_1_130
   07FC FC            [12] 2812 	mov	r4,a
   07FD                    2813 00112$:
   07FD AA 59         [24] 2814 	mov	r2,_ShiftTheBoard_linesToShift_1_130
   07FF 7B 00         [12] 2815 	mov	r3,#0x00
   0801 74 10         [12] 2816 	mov	a,#0x10
   0803 C3            [12] 2817 	clr	c
   0804 9A            [12] 2818 	subb	a,r2
   0805 FA            [12] 2819 	mov	r2,a
   0806 E4            [12] 2820 	clr	a
   0807 9B            [12] 2821 	subb	a,r3
   0808 FB            [12] 2822 	mov	r3,a
   0809 AD 5A         [24] 2823 	mov	r5,_ShiftTheBoard_i_1_130
   080B 7F 00         [12] 2824 	mov	r7,#0x00
   080D C3            [12] 2825 	clr	c
   080E ED            [12] 2826 	mov	a,r5
   080F 9A            [12] 2827 	subb	a,r2
   0810 EF            [12] 2828 	mov	a,r7
   0811 64 80         [12] 2829 	xrl	a,#0x80
   0813 8B F0         [24] 2830 	mov	b,r3
   0815 63 F0 80      [24] 2831 	xrl	b,#0x80
   0818 95 F0         [12] 2832 	subb	a,b
   081A 50 16         [24] 2833 	jnc	00107$
                     073B  2834 	C$TetrisLogic.c$606$2$134 ==.
                           2835 ;	src/EclipseTetris/TetrisLogic.c:606: Tetris_Board[(TETRIS_BOARD_HEIGHT - (TETRIS_BOARD_HEIGHT - shiftStartPos)) - i] = Tetris_Board[((TETRIS_BOARD_HEIGHT - (TETRIS_BOARD_HEIGHT - shiftStartPos)) - linesToShift) - i];
   081C EE            [12] 2836 	mov	a,r6
   081D C3            [12] 2837 	clr	c
   081E 95 5A         [12] 2838 	subb	a,_ShiftTheBoard_i_1_130
   0820 24 2B         [12] 2839 	add	a,#_Tetris_Board
   0822 F9            [12] 2840 	mov	r1,a
   0823 EC            [12] 2841 	mov	a,r4
   0824 C3            [12] 2842 	clr	c
   0825 95 5A         [12] 2843 	subb	a,_ShiftTheBoard_i_1_130
   0827 24 2B         [12] 2844 	add	a,#_Tetris_Board
   0829 F8            [12] 2845 	mov	r0,a
   082A 86 07         [24] 2846 	mov	ar7,@r0
   082C A7 07         [24] 2847 	mov	@r1,ar7
                     074D  2848 	C$TetrisLogic.c$604$1$130 ==.
                           2849 ;	src/EclipseTetris/TetrisLogic.c:604: for(i = 0; i < (TETRIS_BOARD_HEIGHT - linesToShift); i++)
   082E 05 5A         [12] 2850 	inc	_ShiftTheBoard_i_1_130
   0830 80 CB         [24] 2851 	sjmp	00112$
   0832                    2852 00107$:
                     0751  2853 	C$TetrisLogic.c$609$1$130 ==.
                           2854 ;	src/EclipseTetris/TetrisLogic.c:609: for(i = 0; i < linesToShift; i++)
   0832 75 5A 00      [24] 2855 	mov	_ShiftTheBoard_i_1_130,#0x00
   0835                    2856 00115$:
   0835 C3            [12] 2857 	clr	c
   0836 E5 5A         [12] 2858 	mov	a,_ShiftTheBoard_i_1_130
   0838 95 59         [12] 2859 	subb	a,_ShiftTheBoard_linesToShift_1_130
   083A 50 0D         [24] 2860 	jnc	00108$
                     075B  2861 	C$TetrisLogic.c$611$2$135 ==.
                           2862 ;	src/EclipseTetris/TetrisLogic.c:611: Tetris_Board[1 + i] = 0x00;
   083C E5 5A         [12] 2863 	mov	a,_ShiftTheBoard_i_1_130
   083E 04            [12] 2864 	inc	a
   083F FF            [12] 2865 	mov	r7,a
   0840 24 2B         [12] 2866 	add	a,#_Tetris_Board
   0842 F8            [12] 2867 	mov	r0,a
   0843 76 00         [12] 2868 	mov	@r0,#0x00
                     0764  2869 	C$TetrisLogic.c$609$1$130 ==.
                           2870 ;	src/EclipseTetris/TetrisLogic.c:609: for(i = 0; i < linesToShift; i++)
   0845 8F 5A         [24] 2871 	mov	_ShiftTheBoard_i_1_130,r7
   0847 80 EC         [24] 2872 	sjmp	00115$
   0849                    2873 00108$:
                     0768  2874 	C$TetrisLogic.c$613$1$130 ==.
                           2875 ;	src/EclipseTetris/TetrisLogic.c:613: CommitCurrentShapeToOrRemoveFromTheBoard(1);
   0849 75 82 01      [24] 2876 	mov	dpl,#0x01
   084C 12 06 B5      [24] 2877 	lcall	_CommitCurrentShapeToOrRemoveFromTheBoard
                     076E  2878 	C$TetrisLogic.c$614$1$130 ==.
                     076E  2879 	XG$ShiftTheBoard$0$0 ==.
   084F 22            [24] 2880 	ret
                           2881 ;------------------------------------------------------------
                           2882 ;Allocation info for local variables in function 'TetrisLogicLoop'
                           2883 ;------------------------------------------------------------
                           2884 ;input                     Allocated to registers r5 
                           2885 ;currentTimeInMs           Allocated to registers r6 r7 
                           2886 ;currentRotation           Allocated to registers r4 
                           2887 ;------------------------------------------------------------
                     076F  2888 	G$TetrisLogicLoop$0$0 ==.
                     076F  2889 	C$TetrisLogic.c$623$1$130 ==.
                           2890 ;	src/EclipseTetris/TetrisLogic.c:623: void TetrisLogicLoop()
                           2891 ;	-----------------------------------------
                           2892 ;	 function TetrisLogicLoop
                           2893 ;	-----------------------------------------
   0850                    2894 _TetrisLogicLoop:
                     076F  2895 	C$TetrisLogic.c$625$1$136 ==.
                           2896 ;	src/EclipseTetris/TetrisLogic.c:625: NextShape();
   0850 12 07 A1      [24] 2897 	lcall	_NextShape
                     0772  2898 	C$TetrisLogic.c$626$1$136 ==.
                           2899 ;	src/EclipseTetris/TetrisLogic.c:626: CommitCurrentShapeToOrRemoveFromTheBoard(1);
   0853 75 82 01      [24] 2900 	mov	dpl,#0x01
   0856 12 06 B5      [24] 2901 	lcall	_CommitCurrentShapeToOrRemoveFromTheBoard
                     0778  2902 	C$TetrisLogic.c$627$1$136 ==.
                           2903 ;	src/EclipseTetris/TetrisLogic.c:627: PrintBoard(TETRIS_BOARD_HEIGHT, TETRIS_BOARD_WIDTH);
   0859 75 40 06      [24] 2904 	mov	_PrintBoard_PARM_2,#0x06
   085C 75 82 10      [24] 2905 	mov	dpl,#0x10
   085F 12 04 E4      [24] 2906 	lcall	_PrintBoard
                     0781  2907 	C$TetrisLogic.c$629$1$136 ==.
                           2908 ;	src/EclipseTetris/TetrisLogic.c:629: while(1)
   0862                    2909 00126$:
                     0781  2910 	C$TetrisLogic.c$632$2$137 ==.
                           2911 ;	src/EclipseTetris/TetrisLogic.c:632: const unsigned int currentTimeInMs = GetSystemTimeInMs();
   0862 12 01 89      [24] 2912 	lcall	_GetSystemTimeInMs
   0865 AE 82         [24] 2913 	mov	r6,dpl
   0867 AF 83         [24] 2914 	mov	r7,dph
                     0788  2915 	C$TetrisLogic.c$633$2$137 ==.
                           2916 ;	src/EclipseTetris/TetrisLogic.c:633: input = GetInput((currentTimeInMs - g_PreviousTimeInMs));
   0869 8E 05         [24] 2917 	mov	ar5,r6
   086B AC 4C         [24] 2918 	mov	r4,_g_PreviousTimeInMs
   086D ED            [12] 2919 	mov	a,r5
   086E C3            [12] 2920 	clr	c
   086F 9C            [12] 2921 	subb	a,r4
   0870 F5 82         [12] 2922 	mov	dpl,a
   0872 C0 07         [24] 2923 	push	ar7
   0874 C0 06         [24] 2924 	push	ar6
   0876 12 07 00      [24] 2925 	lcall	_GetInput
   0879 AD 82         [24] 2926 	mov	r5,dpl
   087B D0 06         [24] 2927 	pop	ar6
   087D D0 07         [24] 2928 	pop	ar7
                     079E  2929 	C$TetrisLogic.c$635$2$137 ==.
                           2930 ;	src/EclipseTetris/TetrisLogic.c:635: g_ButtonTime += (currentTimeInMs - g_PreviousTimeInMs);
   087F EE            [12] 2931 	mov	a,r6
   0880 C3            [12] 2932 	clr	c
   0881 95 4C         [12] 2933 	subb	a,_g_PreviousTimeInMs
   0883 FB            [12] 2934 	mov	r3,a
   0884 EF            [12] 2935 	mov	a,r7
   0885 95 4D         [12] 2936 	subb	a,(_g_PreviousTimeInMs + 1)
   0887 FC            [12] 2937 	mov	r4,a
   0888 EB            [12] 2938 	mov	a,r3
   0889 25 4E         [12] 2939 	add	a,_g_ButtonTime
   088B F5 4E         [12] 2940 	mov	_g_ButtonTime,a
   088D EC            [12] 2941 	mov	a,r4
   088E 35 4F         [12] 2942 	addc	a,(_g_ButtonTime + 1)
   0890 F5 4F         [12] 2943 	mov	(_g_ButtonTime + 1),a
                     07B1  2944 	C$TetrisLogic.c$636$2$137 ==.
                           2945 ;	src/EclipseTetris/TetrisLogic.c:636: g_FallTime += (currentTimeInMs - g_PreviousTimeInMs);
   0892 EB            [12] 2946 	mov	a,r3
   0893 25 50         [12] 2947 	add	a,_g_FallTime
   0895 F5 50         [12] 2948 	mov	_g_FallTime,a
   0897 EC            [12] 2949 	mov	a,r4
   0898 35 51         [12] 2950 	addc	a,(_g_FallTime + 1)
   089A F5 51         [12] 2951 	mov	(_g_FallTime + 1),a
                     07BB  2952 	C$TetrisLogic.c$638$2$137 ==.
                           2953 ;	src/EclipseTetris/TetrisLogic.c:638: if (g_GameOver == 1)
   089C 30 00 03      [24] 2954 	jnb	_g_GameOver,00163$
   089F 02 09 D0      [24] 2955 	ljmp	00124$
   08A2                    2956 00163$:
                     07C1  2957 	C$TetrisLogic.c$643$3$139 ==.
                           2958 ;	src/EclipseTetris/TetrisLogic.c:643: ShiftTheBoard();
   08A2 C0 07         [24] 2959 	push	ar7
   08A4 C0 06         [24] 2960 	push	ar6
   08A6 C0 05         [24] 2961 	push	ar5
   08A8 12 07 C5      [24] 2962 	lcall	_ShiftTheBoard
                     07CA  2963 	C$TetrisLogic.c$645$3$139 ==.
                           2964 ;	src/EclipseTetris/TetrisLogic.c:645: CommitCurrentShapeToOrRemoveFromTheBoard(0);
   08AB 75 82 00      [24] 2965 	mov	dpl,#0x00
   08AE 12 06 B5      [24] 2966 	lcall	_CommitCurrentShapeToOrRemoveFromTheBoard
   08B1 D0 05         [24] 2967 	pop	ar5
   08B3 D0 06         [24] 2968 	pop	ar6
   08B5 D0 07         [24] 2969 	pop	ar7
                     07D6  2970 	C$TetrisLogic.c$647$3$139 ==.
                           2971 ;	src/EclipseTetris/TetrisLogic.c:647: if (input == e_Button_Rotate)
   08B7 BD 03 35      [24] 2972 	cjne	r5,#0x03,00111$
                     07D9  2973 	C$TetrisLogic.c$649$4$139 ==.
                           2974 ;	src/EclipseTetris/TetrisLogic.c:649: const unsigned char currentRotation = g_ShapeRotation;
   08BA AC 45         [24] 2975 	mov	r4,_g_ShapeRotation
                     07DB  2976 	C$TetrisLogic.c$650$4$140 ==.
                           2977 ;	src/EclipseTetris/TetrisLogic.c:650: g_ShapeRotation++;
   08BC 05 45         [12] 2978 	inc	_g_ShapeRotation
                     07DD  2979 	C$TetrisLogic.c$651$4$140 ==.
                           2980 ;	src/EclipseTetris/TetrisLogic.c:651: if (g_ShapeRotation >= g_TetrisSchapesData[TetrisShapes[g_ShapeType]])
   08BE E5 44         [12] 2981 	mov	a,_g_ShapeType
   08C0 90 0B 0C      [24] 2982 	mov	dptr,#_TetrisShapes
   08C3 93            [24] 2983 	movc	a,@a+dptr
   08C4 90 0A DF      [24] 2984 	mov	dptr,#_g_TetrisSchapesData
   08C7 93            [24] 2985 	movc	a,@a+dptr
   08C8 FB            [12] 2986 	mov	r3,a
   08C9 C3            [12] 2987 	clr	c
   08CA E5 45         [12] 2988 	mov	a,_g_ShapeRotation
   08CC 9B            [12] 2989 	subb	a,r3
   08CD 40 03         [24] 2990 	jc	00102$
                     07EE  2991 	C$TetrisLogic.c$653$5$141 ==.
                           2992 ;	src/EclipseTetris/TetrisLogic.c:653: g_ShapeRotation = 0;
   08CF 75 45 00      [24] 2993 	mov	_g_ShapeRotation,#0x00
   08D2                    2994 00102$:
                     07F1  2995 	C$TetrisLogic.c$656$4$140 ==.
                           2996 ;	src/EclipseTetris/TetrisLogic.c:656: if(!CheckMoveAllowed(0, 0))
   08D2 75 4B 00      [24] 2997 	mov	_CheckMoveAllowed_PARM_2,#0x00
   08D5 75 82 00      [24] 2998 	mov	dpl,#0x00
   08D8 C0 07         [24] 2999 	push	ar7
   08DA C0 06         [24] 3000 	push	ar6
   08DC C0 04         [24] 3001 	push	ar4
   08DE 12 06 58      [24] 3002 	lcall	_CheckMoveAllowed
   08E1 E5 82         [12] 3003 	mov	a,dpl
   08E3 D0 04         [24] 3004 	pop	ar4
   08E5 D0 06         [24] 3005 	pop	ar6
   08E7 D0 07         [24] 3006 	pop	ar7
   08E9 70 3C         [24] 3007 	jnz	00112$
                     080A  3008 	C$TetrisLogic.c$658$5$142 ==.
                           3009 ;	src/EclipseTetris/TetrisLogic.c:658: g_ShapeRotation = currentRotation;
   08EB 8C 45         [24] 3010 	mov	_g_ShapeRotation,r4
   08ED 80 38         [24] 3011 	sjmp	00112$
   08EF                    3012 00111$:
                     080E  3013 	C$TetrisLogic.c$661$3$139 ==.
                           3014 ;	src/EclipseTetris/TetrisLogic.c:661: else if (input == e_Button_Left)
   08EF ED            [12] 3015 	mov	a,r5
                     080F  3016 	C$TetrisLogic.c$663$4$143 ==.
                           3017 ;	src/EclipseTetris/TetrisLogic.c:663: g_ShapeX -= CheckMoveAllowed(-1, 0);
   08F0 70 1A         [24] 3018 	jnz	00108$
   08F2 F5 4B         [12] 3019 	mov	_CheckMoveAllowed_PARM_2,a
   08F4 75 82 FF      [24] 3020 	mov	dpl,#0xFF
   08F7 C0 07         [24] 3021 	push	ar7
   08F9 C0 06         [24] 3022 	push	ar6
   08FB 12 06 58      [24] 3023 	lcall	_CheckMoveAllowed
   08FE AC 82         [24] 3024 	mov	r4,dpl
   0900 D0 06         [24] 3025 	pop	ar6
   0902 D0 07         [24] 3026 	pop	ar7
   0904 E5 42         [12] 3027 	mov	a,_g_ShapeX
   0906 C3            [12] 3028 	clr	c
   0907 9C            [12] 3029 	subb	a,r4
   0908 F5 42         [12] 3030 	mov	_g_ShapeX,a
   090A 80 1B         [24] 3031 	sjmp	00112$
   090C                    3032 00108$:
                     082B  3033 	C$TetrisLogic.c$665$3$139 ==.
                           3034 ;	src/EclipseTetris/TetrisLogic.c:665: else if (input == e_Button_Right)
   090C BD 01 18      [24] 3035 	cjne	r5,#0x01,00112$
                     082E  3036 	C$TetrisLogic.c$667$4$144 ==.
                           3037 ;	src/EclipseTetris/TetrisLogic.c:667: g_ShapeX += CheckMoveAllowed(1, 0);
   090F 75 4B 00      [24] 3038 	mov	_CheckMoveAllowed_PARM_2,#0x00
   0912 75 82 01      [24] 3039 	mov	dpl,#0x01
   0915 C0 07         [24] 3040 	push	ar7
   0917 C0 06         [24] 3041 	push	ar6
   0919 12 06 58      [24] 3042 	lcall	_CheckMoveAllowed
   091C AD 82         [24] 3043 	mov	r5,dpl
   091E D0 06         [24] 3044 	pop	ar6
   0920 D0 07         [24] 3045 	pop	ar7
   0922 ED            [12] 3046 	mov	a,r5
   0923 25 42         [12] 3047 	add	a,_g_ShapeX
   0925 F5 42         [12] 3048 	mov	_g_ShapeX,a
   0927                    3049 00112$:
                     0846  3050 	C$TetrisLogic.c$674$3$139 ==.
                           3051 ;	src/EclipseTetris/TetrisLogic.c:674: if (g_FallTime > g_FallIntervalInMs)
   0927 C3            [12] 3052 	clr	c
   0928 E5 52         [12] 3053 	mov	a,_g_FallIntervalInMs
   092A 95 50         [12] 3054 	subb	a,_g_FallTime
   092C E5 53         [12] 3055 	mov	a,(_g_FallIntervalInMs + 1)
   092E 95 51         [12] 3056 	subb	a,(_g_FallTime + 1)
   0930 50 1D         [24] 3057 	jnc	00114$
                     0851  3058 	C$TetrisLogic.c$676$4$145 ==.
                           3059 ;	src/EclipseTetris/TetrisLogic.c:676: g_FallTime = 0;
   0932 E4            [12] 3060 	clr	a
   0933 F5 50         [12] 3061 	mov	_g_FallTime,a
   0935 F5 51         [12] 3062 	mov	(_g_FallTime + 1),a
                     0856  3063 	C$TetrisLogic.c$677$4$145 ==.
                           3064 ;	src/EclipseTetris/TetrisLogic.c:677: g_ShapeY += CheckMoveAllowed(0, 1);
   0937 75 4B 01      [24] 3065 	mov	_CheckMoveAllowed_PARM_2,#0x01
   093A 75 82 00      [24] 3066 	mov	dpl,#0x00
   093D C0 07         [24] 3067 	push	ar7
   093F C0 06         [24] 3068 	push	ar6
   0941 12 06 58      [24] 3069 	lcall	_CheckMoveAllowed
   0944 AD 82         [24] 3070 	mov	r5,dpl
   0946 D0 06         [24] 3071 	pop	ar6
   0948 D0 07         [24] 3072 	pop	ar7
   094A ED            [12] 3073 	mov	a,r5
   094B 25 43         [12] 3074 	add	a,_g_ShapeY
   094D F5 43         [12] 3075 	mov	_g_ShapeY,a
   094F                    3076 00114$:
                     086E  3077 	C$TetrisLogic.c$680$3$139 ==.
                           3078 ;	src/EclipseTetris/TetrisLogic.c:680: if (!CheckMoveAllowed(0, 1))
   094F 75 4B 01      [24] 3079 	mov	_CheckMoveAllowed_PARM_2,#0x01
   0952 75 82 00      [24] 3080 	mov	dpl,#0x00
   0955 C0 07         [24] 3081 	push	ar7
   0957 C0 06         [24] 3082 	push	ar6
   0959 12 06 58      [24] 3083 	lcall	_CheckMoveAllowed
   095C E5 82         [12] 3084 	mov	a,dpl
   095E D0 06         [24] 3085 	pop	ar6
   0960 D0 07         [24] 3086 	pop	ar7
   0962 70 52         [24] 3087 	jnz	00119$
                     0883  3088 	C$TetrisLogic.c$682$4$146 ==.
                           3089 ;	src/EclipseTetris/TetrisLogic.c:682: CommitCurrentShapeToOrRemoveFromTheBoard(1);
   0964 75 82 01      [24] 3090 	mov	dpl,#0x01
   0967 C0 07         [24] 3091 	push	ar7
   0969 C0 06         [24] 3092 	push	ar6
   096B 12 06 B5      [24] 3093 	lcall	_CommitCurrentShapeToOrRemoveFromTheBoard
                     088D  3094 	C$TetrisLogic.c$683$4$146 ==.
                           3095 ;	src/EclipseTetris/TetrisLogic.c:683: NextShape();
   096E 12 07 A1      [24] 3096 	lcall	_NextShape
                     0890  3097 	C$TetrisLogic.c$685$4$146 ==.
                           3098 ;	src/EclipseTetris/TetrisLogic.c:685: if (!CheckMoveAllowed(0, 0) || !CheckMoveAllowed(0, 1))
   0971 75 4B 00      [24] 3099 	mov	_CheckMoveAllowed_PARM_2,#0x00
   0974 75 82 00      [24] 3100 	mov	dpl,#0x00
   0977 12 06 58      [24] 3101 	lcall	_CheckMoveAllowed
   097A E5 82         [12] 3102 	mov	a,dpl
   097C D0 06         [24] 3103 	pop	ar6
   097E D0 07         [24] 3104 	pop	ar7
   0980 60 15         [24] 3105 	jz	00115$
   0982 75 4B 01      [24] 3106 	mov	_CheckMoveAllowed_PARM_2,#0x01
   0985 75 82 00      [24] 3107 	mov	dpl,#0x00
   0988 C0 07         [24] 3108 	push	ar7
   098A C0 06         [24] 3109 	push	ar6
   098C 12 06 58      [24] 3110 	lcall	_CheckMoveAllowed
   098F E5 82         [12] 3111 	mov	a,dpl
   0991 D0 06         [24] 3112 	pop	ar6
   0993 D0 07         [24] 3113 	pop	ar7
   0995 70 1F         [24] 3114 	jnz	00119$
   0997                    3115 00115$:
                     08B6  3116 	C$TetrisLogic.c$687$5$147 ==.
                           3117 ;	src/EclipseTetris/TetrisLogic.c:687: g_GameOver = 1;
   0997 D2 00         [12] 3118 	setb	_g_GameOver
                     08B8  3119 	C$TetrisLogic.c$688$5$147 ==.
                           3120 ;	src/EclipseTetris/TetrisLogic.c:688: ClearTheBoard();
   0999 C0 07         [24] 3121 	push	ar7
   099B C0 06         [24] 3122 	push	ar6
   099D 12 07 B6      [24] 3123 	lcall	_ClearTheBoard
                     08BF  3124 	C$TetrisLogic.c$690$5$147 ==.
                           3125 ;	src/EclipseTetris/TetrisLogic.c:690: LCD_CMD_CLEAR();
   09A0 12 03 37      [24] 3126 	lcall	_LCD_CMD_CLEAR
                     08C2  3127 	C$TetrisLogic.c$691$5$147 ==.
                           3128 ;	src/EclipseTetris/TetrisLogic.c:691: LCD_PRINT("Game Over", 0, 0);
   09A3 75 29 00      [24] 3129 	mov	_LCD_PRINT_PARM_2,#0x00
   09A6 75 2A 00      [24] 3130 	mov	_LCD_PRINT_PARM_3,#0x00
   09A9 90 0B 13      [24] 3131 	mov	dptr,#__str_0
   09AC 75 F0 80      [24] 3132 	mov	b,#0x80
   09AF 12 03 B3      [24] 3133 	lcall	_LCD_PRINT
   09B2 D0 06         [24] 3134 	pop	ar6
   09B4 D0 07         [24] 3135 	pop	ar7
   09B6                    3136 00119$:
                     08D5  3137 	C$TetrisLogic.c$696$3$139 ==.
                           3138 ;	src/EclipseTetris/TetrisLogic.c:696: if (g_GameOver == 0)
   09B6 20 00 17      [24] 3139 	jb	_g_GameOver,00124$
                     08D8  3140 	C$TetrisLogic.c$698$4$148 ==.
                           3141 ;	src/EclipseTetris/TetrisLogic.c:698: CommitCurrentShapeToOrRemoveFromTheBoard(1);
   09B9 75 82 01      [24] 3142 	mov	dpl,#0x01
   09BC C0 07         [24] 3143 	push	ar7
   09BE C0 06         [24] 3144 	push	ar6
   09C0 12 06 B5      [24] 3145 	lcall	_CommitCurrentShapeToOrRemoveFromTheBoard
                     08E2  3146 	C$TetrisLogic.c$699$4$148 ==.
                           3147 ;	src/EclipseTetris/TetrisLogic.c:699: PrintBoard(TETRIS_BOARD_HEIGHT, TETRIS_BOARD_WIDTH);
   09C3 75 40 06      [24] 3148 	mov	_PrintBoard_PARM_2,#0x06
   09C6 75 82 10      [24] 3149 	mov	dpl,#0x10
   09C9 12 04 E4      [24] 3150 	lcall	_PrintBoard
   09CC D0 06         [24] 3151 	pop	ar6
   09CE D0 07         [24] 3152 	pop	ar7
   09D0                    3153 00124$:
                     08EF  3154 	C$TetrisLogic.c$704$2$137 ==.
                           3155 ;	src/EclipseTetris/TetrisLogic.c:704: g_PreviousTimeInMs = currentTimeInMs;
   09D0 8E 4C         [24] 3156 	mov	_g_PreviousTimeInMs,r6
   09D2 8F 4D         [24] 3157 	mov	(_g_PreviousTimeInMs + 1),r7
                     08F3  3158 	C$TetrisLogic.c$705$2$137 ==.
                           3159 ;	src/EclipseTetris/TetrisLogic.c:705: PCON |= IDL; // Tell the MCU to sleep till the next timer interrupt
   09D4 43 87 01      [24] 3160 	orl	_PCON,#0x01
   09D7 02 08 62      [24] 3161 	ljmp	00126$
                     08F9  3162 	C$TetrisLogic.c$708$1$136 ==.
                     08F9  3163 	XG$TetrisLogicLoop$0$0 ==.
   09DA 22            [24] 3164 	ret
                           3165 ;------------------------------------------------------------
                           3166 ;Allocation info for local variables in function 'main'
                           3167 ;------------------------------------------------------------
                           3168 ;buttonPressed             Allocated to registers 
                           3169 ;------------------------------------------------------------
                     08FA  3170 	G$main$0$0 ==.
                     08FA  3171 	C$LEDBlink.c$80$1$136 ==.
                           3172 ;	LEDBlink.c:80: int main()
                           3173 ;	-----------------------------------------
                           3174 ;	 function main
                           3175 ;	-----------------------------------------
   09DB                    3176 _main:
                     08FA  3177 	C$LEDBlink.c$87$1$149 ==.
                           3178 ;	LEDBlink.c:87: ShiftRegisterInit();
   09DB 12 01 90      [24] 3179 	lcall	_ShiftRegisterInit
                     08FD  3180 	C$LEDBlink.c$89$1$149 ==.
                           3181 ;	LEDBlink.c:89: LCD_INIT();
   09DE 12 04 04      [24] 3182 	lcall	_LCD_INIT
                     0900  3183 	C$LEDBlink.c$90$1$149 ==.
                           3184 ;	LEDBlink.c:90: LCD_INIT();
   09E1 12 04 04      [24] 3185 	lcall	_LCD_INIT
                     0903  3186 	C$LEDBlink.c$91$1$149 ==.
                           3187 ;	LEDBlink.c:91: LCD_INIT();
   09E4 12 04 04      [24] 3188 	lcall	_LCD_INIT
                     0906  3189 	C$LEDBlink.c$92$1$149 ==.
                           3190 ;	LEDBlink.c:92: LCD_CMD_SET_CURSOR(0, 0);
   09E7 75 25 00      [24] 3191 	mov	_LCD_CMD_SET_CURSOR_PARM_2,#0x00
   09EA 75 82 00      [24] 3192 	mov	dpl,#0x00
   09ED 12 03 59      [24] 3193 	lcall	_LCD_CMD_SET_CURSOR
                     090F  3194 	C$LEDBlink.c$93$1$149 ==.
                           3195 ;	LEDBlink.c:93: LCD_CMD_CLEAR();
   09F0 12 03 37      [24] 3196 	lcall	_LCD_CMD_CLEAR
                     0912  3197 	C$LEDBlink.c$96$1$149 ==.
                           3198 ;	LEDBlink.c:96: LCD_CMD_UPLOAD_CUSTOM_CHAR(LCD_CHAR_TOP_SHAPE_CHAR_INDEX, LCDCharTopShapeData);
   09F3 75 26 9F      [24] 3199 	mov	_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2,#_LCDCharTopShapeData
   09F6 75 27 0A      [24] 3200 	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 1),#(_LCDCharTopShapeData >> 8)
   09F9 75 28 80      [24] 3201 	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 2),#0x80
   09FC 75 82 00      [24] 3202 	mov	dpl,#0x00
   09FF 12 03 76      [24] 3203 	lcall	_LCD_CMD_UPLOAD_CUSTOM_CHAR
                     0921  3204 	C$LEDBlink.c$97$1$149 ==.
                           3205 ;	LEDBlink.c:97: LCD_CMD_UPLOAD_CUSTOM_CHAR(LCD_CHAR_MIDDLE_SHAPE_CHAR_INDEX, LCDCharMiddleShapeData);
   0A02 75 26 A7      [24] 3206 	mov	_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2,#_LCDCharMiddleShapeData
   0A05 75 27 0A      [24] 3207 	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 1),#(_LCDCharMiddleShapeData >> 8)
   0A08 75 28 80      [24] 3208 	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 2),#0x80
   0A0B 75 82 01      [24] 3209 	mov	dpl,#0x01
   0A0E 12 03 76      [24] 3210 	lcall	_LCD_CMD_UPLOAD_CUSTOM_CHAR
                     0930  3211 	C$LEDBlink.c$98$1$149 ==.
                           3212 ;	LEDBlink.c:98: LCD_CMD_UPLOAD_CUSTOM_CHAR(LCD_CHAR_TOP_TWO_SHAPE_CHAR_INDEX, LCDCharTopTwoShapeData);
   0A11 75 26 AF      [24] 3213 	mov	_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2,#_LCDCharTopTwoShapeData
   0A14 75 27 0A      [24] 3214 	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 1),#(_LCDCharTopTwoShapeData >> 8)
   0A17 75 28 80      [24] 3215 	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 2),#0x80
   0A1A 75 82 02      [24] 3216 	mov	dpl,#0x02
   0A1D 12 03 76      [24] 3217 	lcall	_LCD_CMD_UPLOAD_CUSTOM_CHAR
                     093F  3218 	C$LEDBlink.c$99$1$149 ==.
                           3219 ;	LEDBlink.c:99: LCD_CMD_UPLOAD_CUSTOM_CHAR(LCD_CHAR_BOTTOM_SHAPE_CHAR_INDEX, LCDCharBottomShapeData);
   0A20 75 26 B7      [24] 3220 	mov	_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2,#_LCDCharBottomShapeData
   0A23 75 27 0A      [24] 3221 	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 1),#(_LCDCharBottomShapeData >> 8)
   0A26 75 28 80      [24] 3222 	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 2),#0x80
   0A29 75 82 03      [24] 3223 	mov	dpl,#0x03
   0A2C 12 03 76      [24] 3224 	lcall	_LCD_CMD_UPLOAD_CUSTOM_CHAR
                     094E  3225 	C$LEDBlink.c$100$1$149 ==.
                           3226 ;	LEDBlink.c:100: LCD_CMD_UPLOAD_CUSTOM_CHAR(LCD_CHAR_TOP_AND_BOTTOM_SHAPE_CHAR_INDEX, LCDCharTopAndBottomShapeData);
   0A2F 75 26 BF      [24] 3227 	mov	_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2,#_LCDCharTopAndBottomShapeData
   0A32 75 27 0A      [24] 3228 	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 1),#(_LCDCharTopAndBottomShapeData >> 8)
   0A35 75 28 80      [24] 3229 	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 2),#0x80
   0A38 75 82 04      [24] 3230 	mov	dpl,#0x04
   0A3B 12 03 76      [24] 3231 	lcall	_LCD_CMD_UPLOAD_CUSTOM_CHAR
                     095D  3232 	C$LEDBlink.c$101$1$149 ==.
                           3233 ;	LEDBlink.c:101: LCD_CMD_UPLOAD_CUSTOM_CHAR(LCD_CHAR_BOTTOM_TWO_SHAPE_CHAR_INDEX, LCDCharBottomTwoShapeData);
   0A3E 75 26 C7      [24] 3234 	mov	_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2,#_LCDCharBottomTwoShapeData
   0A41 75 27 0A      [24] 3235 	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 1),#(_LCDCharBottomTwoShapeData >> 8)
   0A44 75 28 80      [24] 3236 	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 2),#0x80
   0A47 75 82 05      [24] 3237 	mov	dpl,#0x05
   0A4A 12 03 76      [24] 3238 	lcall	_LCD_CMD_UPLOAD_CUSTOM_CHAR
                     096C  3239 	C$LEDBlink.c$102$1$149 ==.
                           3240 ;	LEDBlink.c:102: LCD_CMD_UPLOAD_CUSTOM_CHAR(LCD_CHAR_THREE_SHAPE_CHAR_INDEX, LCDCharThreeShapeData);
   0A4D 75 26 CF      [24] 3241 	mov	_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2,#_LCDCharThreeShapeData
   0A50 75 27 0A      [24] 3242 	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 1),#(_LCDCharThreeShapeData >> 8)
   0A53 75 28 80      [24] 3243 	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 2),#0x80
   0A56 75 82 06      [24] 3244 	mov	dpl,#0x06
   0A59 12 03 76      [24] 3245 	lcall	_LCD_CMD_UPLOAD_CUSTOM_CHAR
                     097B  3246 	C$LEDBlink.c$113$1$149 ==.
                           3247 ;	LEDBlink.c:113: Start1MsSystemTimer();
   0A5C 12 01 76      [24] 3248 	lcall	_Start1MsSystemTimer
                     097E  3249 	C$LEDBlink.c$115$1$149 ==.
                           3250 ;	LEDBlink.c:115: TetrisLogicLoop();
   0A5F 12 08 50      [24] 3251 	lcall	_TetrisLogicLoop
                     0981  3252 	C$LEDBlink.c$118$1$149 ==.
                           3253 ;	LEDBlink.c:118: while(1)
   0A62                    3254 00106$:
                     0981  3255 	C$LEDBlink.c$133$2$150 ==.
                           3256 ;	LEDBlink.c:133: if (LEFT_BUTTON && RIGHT_BUTTON)
   0A62 30 B1 11      [24] 3257 	jnb	_P3_1,00102$
   0A65 30 B2 0E      [24] 3258 	jnb	_P3_2,00102$
                     0987  3259 	C$LEDBlink.c$135$3$151 ==.
                           3260 ;	LEDBlink.c:135: LCD_CMD_CLEAR();
   0A68 12 03 37      [24] 3261 	lcall	_LCD_CMD_CLEAR
                     098A  3262 	C$LEDBlink.c$136$3$151 ==.
                           3263 ;	LEDBlink.c:136: LCD_SEND_DATA('1');
   0A6B 75 24 00      [24] 3264 	mov	_LCD_SEND_8BITS_PARM_2,#0x00
   0A6E 75 82 31      [24] 3265 	mov	dpl,#0x31
   0A71 12 03 0B      [24] 3266 	lcall	_LCD_SEND_8BITS
   0A74 80 EC         [24] 3267 	sjmp	00106$
   0A76                    3268 00102$:
                     0995  3269 	C$LEDBlink.c$145$2$150 ==.
                           3270 ;	LEDBlink.c:145: else if (LEFT_BUTTON)
   0A76 A2 B1         [12] 3271 	mov	c,_P3_1
                     0997  3272 	C$LEDBlink.c$186$1$149 ==.
                           3273 ;	LEDBlink.c:186: return 0;
   0A78 80 E8         [24] 3274 	sjmp	00106$
                     0999  3275 	C$LEDBlink.c$187$1$149 ==.
                     0999  3276 	XG$main$0$0 ==.
   0A7A 22            [24] 3277 	ret
                           3278 	.area CSEG    (CODE)
                           3279 	.area CONST   (CODE)
                     0000  3280 G$LCD_ROW_OFFSETS$0$0 == .
   0A9B                    3281 _LCD_ROW_OFFSETS:
   0A9B 00                 3282 	.db #0x00	; 0
   0A9C 40                 3283 	.db #0x40	; 64
   0A9D 10                 3284 	.db #0x10	; 16
   0A9E 50                 3285 	.db #0x50	; 80	'P'
                     0004  3286 G$LCDCharTopShapeData$0$0 == .
   0A9F                    3287 _LCDCharTopShapeData:
   0A9F 1F                 3288 	.db #0x1F	; 31
   0AA0 1F                 3289 	.db #0x1F	; 31
   0AA1 00                 3290 	.db #0x00	; 0
   0AA2 00                 3291 	.db #0x00	; 0
   0AA3 00                 3292 	.db #0x00	; 0
   0AA4 00                 3293 	.db #0x00	; 0
   0AA5 00                 3294 	.db #0x00	; 0
   0AA6 00                 3295 	.db #0x00	; 0
                     000C  3296 G$LCDCharMiddleShapeData$0$0 == .
   0AA7                    3297 _LCDCharMiddleShapeData:
   0AA7 00                 3298 	.db #0x00	; 0
   0AA8 00                 3299 	.db #0x00	; 0
   0AA9 00                 3300 	.db #0x00	; 0
   0AAA 1F                 3301 	.db #0x1F	; 31
   0AAB 1F                 3302 	.db #0x1F	; 31
   0AAC 00                 3303 	.db #0x00	; 0
   0AAD 00                 3304 	.db #0x00	; 0
   0AAE 00                 3305 	.db #0x00	; 0
                     0014  3306 G$LCDCharTopTwoShapeData$0$0 == .
   0AAF                    3307 _LCDCharTopTwoShapeData:
   0AAF 1F                 3308 	.db #0x1F	; 31
   0AB0 1F                 3309 	.db #0x1F	; 31
   0AB1 00                 3310 	.db #0x00	; 0
   0AB2 1F                 3311 	.db #0x1F	; 31
   0AB3 1F                 3312 	.db #0x1F	; 31
   0AB4 00                 3313 	.db #0x00	; 0
   0AB5 00                 3314 	.db #0x00	; 0
   0AB6 00                 3315 	.db #0x00	; 0
                     001C  3316 G$LCDCharBottomShapeData$0$0 == .
   0AB7                    3317 _LCDCharBottomShapeData:
   0AB7 00                 3318 	.db #0x00	; 0
   0AB8 00                 3319 	.db #0x00	; 0
   0AB9 00                 3320 	.db #0x00	; 0
   0ABA 00                 3321 	.db #0x00	; 0
   0ABB 00                 3322 	.db #0x00	; 0
   0ABC 00                 3323 	.db #0x00	; 0
   0ABD 1F                 3324 	.db #0x1F	; 31
   0ABE 1F                 3325 	.db #0x1F	; 31
                     0024  3326 G$LCDCharTopAndBottomShapeData$0$0 == .
   0ABF                    3327 _LCDCharTopAndBottomShapeData:
   0ABF 1F                 3328 	.db #0x1F	; 31
   0AC0 1F                 3329 	.db #0x1F	; 31
   0AC1 00                 3330 	.db #0x00	; 0
   0AC2 00                 3331 	.db #0x00	; 0
   0AC3 00                 3332 	.db #0x00	; 0
   0AC4 00                 3333 	.db #0x00	; 0
   0AC5 1F                 3334 	.db #0x1F	; 31
   0AC6 1F                 3335 	.db #0x1F	; 31
                     002C  3336 G$LCDCharBottomTwoShapeData$0$0 == .
   0AC7                    3337 _LCDCharBottomTwoShapeData:
   0AC7 00                 3338 	.db #0x00	; 0
   0AC8 00                 3339 	.db #0x00	; 0
   0AC9 00                 3340 	.db #0x00	; 0
   0ACA 1F                 3341 	.db #0x1F	; 31
   0ACB 1F                 3342 	.db #0x1F	; 31
   0ACC 00                 3343 	.db #0x00	; 0
   0ACD 1F                 3344 	.db #0x1F	; 31
   0ACE 1F                 3345 	.db #0x1F	; 31
                     0034  3346 G$LCDCharThreeShapeData$0$0 == .
   0ACF                    3347 _LCDCharThreeShapeData:
   0ACF 1F                 3348 	.db #0x1F	; 31
   0AD0 1F                 3349 	.db #0x1F	; 31
   0AD1 00                 3350 	.db #0x00	; 0
   0AD2 1F                 3351 	.db #0x1F	; 31
   0AD3 1F                 3352 	.db #0x1F	; 31
   0AD4 00                 3353 	.db #0x00	; 0
   0AD5 1F                 3354 	.db #0x1F	; 31
   0AD6 1F                 3355 	.db #0x1F	; 31
                     003C  3356 G$LCDCharIndicesMap$0$0 == .
   0AD7                    3357 _LCDCharIndicesMap:
   0AD7 20                 3358 	.db #0x20	; 32
   0AD8 00                 3359 	.db #0x00	; 0
   0AD9 01                 3360 	.db #0x01	; 1
   0ADA 02                 3361 	.db #0x02	; 2
   0ADB 03                 3362 	.db #0x03	; 3
   0ADC 04                 3363 	.db #0x04	; 4
   0ADD 05                 3364 	.db #0x05	; 5
   0ADE 06                 3365 	.db #0x06	; 6
                     0044  3366 FLEDBlink$g_TetrisSchapesData$0$0 == .
   0ADF                    3367 _g_TetrisSchapesData:
   0ADF 02                 3368 	.db #0x02	; 2
   0AE0 F0                 3369 	.db #0xF0	; 240
   0AE1 00                 3370 	.db #0x00	; 0
   0AE2 22                 3371 	.db #0x22	; 34
   0AE3 22                 3372 	.db #0x22	; 34
   0AE4 04                 3373 	.db #0x04	; 4
   0AE5 70                 3374 	.db #0x70	; 112	'p'
   0AE6 02                 3375 	.db #0x02	; 2
   0AE7 32                 3376 	.db #0x32	; 50	'2'
   0AE8 02                 3377 	.db #0x02	; 2
   0AE9 72                 3378 	.db #0x72	; 114	'r'
   0AEA 00                 3379 	.db #0x00	; 0
   0AEB 62                 3380 	.db #0x62	; 98	'b'
   0AEC 02                 3381 	.db #0x02	; 2
   0AED 04                 3382 	.db #0x04	; 4
   0AEE 70                 3383 	.db #0x70	; 112	'p'
   0AEF 01                 3384 	.db #0x01	; 1
   0AF0 23                 3385 	.db #0x23	; 35
   0AF1 02                 3386 	.db #0x02	; 2
   0AF2 74                 3387 	.db #0x74	; 116	't'
   0AF3 00                 3388 	.db #0x00	; 0
   0AF4 22                 3389 	.db #0x22	; 34
   0AF5 06                 3390 	.db #0x06	; 6
   0AF6 04                 3391 	.db #0x04	; 4
   0AF7 71                 3392 	.db #0x71	; 113	'q'
   0AF8 00                 3393 	.db #0x00	; 0
   0AF9 26                 3394 	.db #0x26	; 38
   0AFA 02                 3395 	.db #0x02	; 2
   0AFB 70                 3396 	.db #0x70	; 112	'p'
   0AFC 04                 3397 	.db #0x04	; 4
   0AFD 22                 3398 	.db #0x22	; 34
   0AFE 03                 3399 	.db #0x03	; 3
   0AFF 02                 3400 	.db #0x02	; 2
   0B00 30                 3401 	.db #0x30	; 48	'0'
   0B01 06                 3402 	.db #0x06	; 6
   0B02 64                 3403 	.db #0x64	; 100	'd'
   0B03 02                 3404 	.db #0x02	; 2
   0B04 02                 3405 	.db #0x02	; 2
   0B05 60                 3406 	.db #0x60	; 96
   0B06 03                 3407 	.db #0x03	; 3
   0B07 62                 3408 	.db #0x62	; 98	'b'
   0B08 04                 3409 	.db #0x04	; 4
   0B09 01                 3410 	.db #0x01	; 1
   0B0A 66                 3411 	.db #0x66	; 102	'f'
   0B0B 00                 3412 	.db #0x00	; 0
                     0071  3413 G$TetrisShapes$0$0 == .
   0B0C                    3414 _TetrisShapes:
   0B0C 00                 3415 	.db #0x00	; 0
   0B0D 05                 3416 	.db #0x05	; 5
   0B0E 0E                 3417 	.db #0x0E	; 14
   0B0F 17                 3418 	.db #0x17	; 23
   0B10 20                 3419 	.db #0x20	; 32
   0B11 25                 3420 	.db #0x25	; 37
   0B12 2A                 3421 	.db #0x2A	; 42
                     0078  3422 FLEDBlink$_str_0$0$0 == .
   0B13                    3423 __str_0:
   0B13 47 61 6D 65 20 4F  3424 	.ascii "Game Over"
        76 65 72
   0B1C 00                 3425 	.db 0x00
                           3426 	.area XINIT   (CODE)
                           3427 	.area CABS    (ABS,CODE)
