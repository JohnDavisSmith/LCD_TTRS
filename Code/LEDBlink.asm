;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
; This file was generated Mon Jun 26 00:44:29 2017
;--------------------------------------------------------
	.module LEDBlink
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _TetrisShapes
	.globl _LCDCharIndicesMap
	.globl _LCDCharThreeShapeData
	.globl _LCDCharBottomTwoShapeData
	.globl _LCDCharTopAndBottomShapeData
	.globl _LCDCharBottomShapeData
	.globl _LCDCharTopTwoShapeData
	.globl _LCDCharMiddleShapeData
	.globl _LCDCharTopShapeData
	.globl _LCD_ROW_OFFSETS
	.globl _main
	.globl _TetrisLogicLoop
	.globl _ShiftTheBoard
	.globl _ClearTheBoard
	.globl _NextShape
	.globl _GetInput
	.globl _CommitCurrentShapeToOrRemoveFromTheBoard
	.globl _CheckMoveAllowed
	.globl _GetShapeData
	.globl _PrintBoard
	.globl _GetBoard
	.globl _SetBoard
	.globl _tm0_isr
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _P5M1
	.globl _P5M0
	.globl _P4M1
	.globl _P4M0
	.globl _P3M1
	.globl _P3M0
	.globl _P2M1
	.globl _P2M0
	.globl _P1M1
	.globl _P1M0
	.globl _P0M1
	.globl _P0M0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _AUXR
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _CheckMoveAllowed_PARM_2
	.globl _GetShapeData_PARM_2
	.globl _g_ShapeRotation
	.globl _g_ShapeType
	.globl _g_ShapeY
	.globl _g_ShapeX
	.globl _PrintBoard_PARM_2
	.globl _GetBoard_PARM_2
	.globl _SetBoard_PARM_3
	.globl _SetBoard_PARM_2
	.globl _LCD_PRINT_PARM_3
	.globl _LCD_PRINT_PARM_2
	.globl _LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2
	.globl _LCD_CMD_SET_CURSOR_PARM_2
	.globl _LCD_SEND_8BITS_PARM_2
	.globl _Delay1ms
	.globl _Start1MsSystemTimer
	.globl _GetSystemTimeInMs
	.globl _ShiftRegisterInit
	.globl _ShiftRegisterChangePinState
	.globl _LCD_SEND_4BITS
	.globl _LCD_SEND_8BITS
	.globl _LCD_CMD_CLEAR
	.globl _LCD_CMD_SET_CURSOR
	.globl _LCD_CMD_UPLOAD_CUSTOM_CHAR
	.globl _LCD_PRINT
	.globl _LCD_INIT
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0$0$0 == 0x0080
_P0	=	0x0080
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$TCON$0$0 == 0x0088
_TCON	=	0x0088
G$TMOD$0$0 == 0x0089
_TMOD	=	0x0089
G$TL0$0$0 == 0x008a
_TL0	=	0x008a
G$TL1$0$0 == 0x008b
_TL1	=	0x008b
G$TH0$0$0 == 0x008c
_TH0	=	0x008c
G$TH1$0$0 == 0x008d
_TH1	=	0x008d
G$AUXR$0$0 == 0x008e
_AUXR	=	0x008e
G$P1$0$0 == 0x0090
_P1	=	0x0090
G$SCON$0$0 == 0x0098
_SCON	=	0x0098
G$SBUF$0$0 == 0x0099
_SBUF	=	0x0099
G$P2$0$0 == 0x00a0
_P2	=	0x00a0
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$P3$0$0 == 0x00b0
_P3	=	0x00b0
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$P0M0$0$0 == 0x0094
_P0M0	=	0x0094
G$P0M1$0$0 == 0x0093
_P0M1	=	0x0093
G$P1M0$0$0 == 0x0092
_P1M0	=	0x0092
G$P1M1$0$0 == 0x0091
_P1M1	=	0x0091
G$P2M0$0$0 == 0x0096
_P2M0	=	0x0096
G$P2M1$0$0 == 0x0095
_P2M1	=	0x0095
G$P3M0$0$0 == 0x00b2
_P3M0	=	0x00b2
G$P3M1$0$0 == 0x00b1
_P3M1	=	0x00b1
G$P4M0$0$0 == 0x00b4
_P4M0	=	0x00b4
G$P4M1$0$0 == 0x00b3
_P4M1	=	0x00b3
G$P5M0$0$0 == 0x00ca
_P5M0	=	0x00ca
G$P5M1$0$0 == 0x00c9
_P5M1	=	0x00c9
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$P0_0$0$0 == 0x0080
_P0_0	=	0x0080
G$P0_1$0$0 == 0x0081
_P0_1	=	0x0081
G$P0_2$0$0 == 0x0082
_P0_2	=	0x0082
G$P0_3$0$0 == 0x0083
_P0_3	=	0x0083
G$P0_4$0$0 == 0x0084
_P0_4	=	0x0084
G$P0_5$0$0 == 0x0085
_P0_5	=	0x0085
G$P0_6$0$0 == 0x0086
_P0_6	=	0x0086
G$P0_7$0$0 == 0x0087
_P0_7	=	0x0087
G$IT0$0$0 == 0x0088
_IT0	=	0x0088
G$IE0$0$0 == 0x0089
_IE0	=	0x0089
G$IT1$0$0 == 0x008a
_IT1	=	0x008a
G$IE1$0$0 == 0x008b
_IE1	=	0x008b
G$TR0$0$0 == 0x008c
_TR0	=	0x008c
G$TF0$0$0 == 0x008d
_TF0	=	0x008d
G$TR1$0$0 == 0x008e
_TR1	=	0x008e
G$TF1$0$0 == 0x008f
_TF1	=	0x008f
G$P1_0$0$0 == 0x0090
_P1_0	=	0x0090
G$P1_1$0$0 == 0x0091
_P1_1	=	0x0091
G$P1_2$0$0 == 0x0092
_P1_2	=	0x0092
G$P1_3$0$0 == 0x0093
_P1_3	=	0x0093
G$P1_4$0$0 == 0x0094
_P1_4	=	0x0094
G$P1_5$0$0 == 0x0095
_P1_5	=	0x0095
G$P1_6$0$0 == 0x0096
_P1_6	=	0x0096
G$P1_7$0$0 == 0x0097
_P1_7	=	0x0097
G$RI$0$0 == 0x0098
_RI	=	0x0098
G$TI$0$0 == 0x0099
_TI	=	0x0099
G$RB8$0$0 == 0x009a
_RB8	=	0x009a
G$TB8$0$0 == 0x009b
_TB8	=	0x009b
G$REN$0$0 == 0x009c
_REN	=	0x009c
G$SM2$0$0 == 0x009d
_SM2	=	0x009d
G$SM1$0$0 == 0x009e
_SM1	=	0x009e
G$SM0$0$0 == 0x009f
_SM0	=	0x009f
G$P2_0$0$0 == 0x00a0
_P2_0	=	0x00a0
G$P2_1$0$0 == 0x00a1
_P2_1	=	0x00a1
G$P2_2$0$0 == 0x00a2
_P2_2	=	0x00a2
G$P2_3$0$0 == 0x00a3
_P2_3	=	0x00a3
G$P2_4$0$0 == 0x00a4
_P2_4	=	0x00a4
G$P2_5$0$0 == 0x00a5
_P2_5	=	0x00a5
G$P2_6$0$0 == 0x00a6
_P2_6	=	0x00a6
G$P2_7$0$0 == 0x00a7
_P2_7	=	0x00a7
G$EX0$0$0 == 0x00a8
_EX0	=	0x00a8
G$ET0$0$0 == 0x00a9
_ET0	=	0x00a9
G$EX1$0$0 == 0x00aa
_EX1	=	0x00aa
G$ET1$0$0 == 0x00ab
_ET1	=	0x00ab
G$ES$0$0 == 0x00ac
_ES	=	0x00ac
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$P3_0$0$0 == 0x00b0
_P3_0	=	0x00b0
G$P3_1$0$0 == 0x00b1
_P3_1	=	0x00b1
G$P3_2$0$0 == 0x00b2
_P3_2	=	0x00b2
G$P3_3$0$0 == 0x00b3
_P3_3	=	0x00b3
G$P3_4$0$0 == 0x00b4
_P3_4	=	0x00b4
G$P3_5$0$0 == 0x00b5
_P3_5	=	0x00b5
G$P3_6$0$0 == 0x00b6
_P3_6	=	0x00b6
G$P3_7$0$0 == 0x00b7
_P3_7	=	0x00b7
G$RXD$0$0 == 0x00b0
_RXD	=	0x00b0
G$TXD$0$0 == 0x00b1
_TXD	=	0x00b1
G$INT0$0$0 == 0x00b2
_INT0	=	0x00b2
G$INT1$0$0 == 0x00b3
_INT1	=	0x00b3
G$T0$0$0 == 0x00b4
_T0	=	0x00b4
G$T1$0$0 == 0x00b5
_T1	=	0x00b5
G$WR$0$0 == 0x00b6
_WR	=	0x00b6
G$RD$0$0 == 0x00b7
_RD	=	0x00b7
G$PX0$0$0 == 0x00b8
_PX0	=	0x00b8
G$PT0$0$0 == 0x00b9
_PT0	=	0x00b9
G$PX1$0$0 == 0x00ba
_PX1	=	0x00ba
G$PT1$0$0 == 0x00bb
_PT1	=	0x00bb
G$PS$0$0 == 0x00bc
_PS	=	0x00bc
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_1	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
FLEDBlink$SystemTimeInMs$0$0==.
_SystemTimeInMs:
	.ds 2
FLEDBlink$LCD_PINS_SHIFT_REG_VALUES$0$0==.
_LCD_PINS_SHIFT_REG_VALUES:
	.ds 1
LLEDBlink.LCD_SEND_8BITS$isCommand$1$56==.
_LCD_SEND_8BITS_PARM_2:
	.ds 1
LLEDBlink.LCD_CMD_SET_CURSOR$row$1$63==.
_LCD_CMD_SET_CURSOR_PARM_2:
	.ds 1
LLEDBlink.LCD_CMD_UPLOAD_CUSTOM_CHAR$charmap$1$66==.
_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2:
	.ds 3
LLEDBlink.LCD_PRINT$col$1$69==.
_LCD_PRINT_PARM_2:
	.ds 1
LLEDBlink.LCD_PRINT$row$1$69==.
_LCD_PRINT_PARM_3:
	.ds 1
FLEDBlink$Tetris_Board$0$0==.
_Tetris_Board:
	.ds 18
LLEDBlink.SetBoard$y$1$78==.
_SetBoard_PARM_2:
	.ds 1
LLEDBlink.SetBoard$set$1$78==.
_SetBoard_PARM_3:
	.ds 1
LLEDBlink.GetBoard$y$1$83==.
_GetBoard_PARM_2:
	.ds 1
LLEDBlink.PrintBoard$columns$1$86==.
_PrintBoard_PARM_2:
	.ds 1
LLEDBlink.PrintBoard$part1$4$90==.
_PrintBoard_part1_4_90:
	.ds 1
G$g_ShapeX$0$0==.
_g_ShapeX::
	.ds 1
G$g_ShapeY$0$0==.
_g_ShapeY::
	.ds 1
G$g_ShapeType$0$0==.
_g_ShapeType::
	.ds 1
G$g_ShapeRotation$0$0==.
_g_ShapeRotation::
	.ds 1
LLEDBlink.GetShapeData$y$1$91==.
_GetShapeData_PARM_2:
	.ds 1
LLEDBlink.GetShapeData$shapeParts$1$92==.
_GetShapeData_shapeParts_1_92:
	.ds 4
LLEDBlink.CheckMoveAllowed$newY$1$95==.
_CheckMoveAllowed_PARM_2:
	.ds 1
FLEDBlink$g_PreviousTimeInMs$0$0==.
_g_PreviousTimeInMs:
	.ds 2
FLEDBlink$g_ButtonTime$0$0==.
_g_ButtonTime:
	.ds 2
FLEDBlink$g_FallTime$0$0==.
_g_FallTime:
	.ds 2
FLEDBlink$g_FallIntervalInMs$0$0==.
_g_FallIntervalInMs:
	.ds 2
LLEDBlink.GetInput$rotateButtonActiveForMs$1$106==.
_GetInput_rotateButtonActiveForMs_1_106:
	.ds 1
LLEDBlink.GetInput$leftButtonActiveForMs$1$106==.
_GetInput_leftButtonActiveForMs_1_106:
	.ds 1
LLEDBlink.GetInput$rightButtonActiveForMs$1$106==.
_GetInput_rightButtonActiveForMs_1_106:
	.ds 1
LLEDBlink.GetInput$downButtonActiveForMs$1$106==.
_GetInput_downButtonActiveForMs_1_106:
	.ds 1
LLEDBlink.GetInput$gameOverDetectedForMs$1$106==.
_GetInput_gameOverDetectedForMs_1_106:
	.ds 1
LLEDBlink.ShiftTheBoard$linesToShift$1$130==.
_ShiftTheBoard_linesToShift_1_130:
	.ds 1
LLEDBlink.ShiftTheBoard$i$1$130==.
_ShiftTheBoard_i_1_130:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
FLEDBlink$g_GameOver$0$0==.
_g_GameOver:
	.ds 1
LLEDBlink.GetInput$rotateButtonDown$1$106==.
_GetInput_rotateButtonDown_1_106:
	.ds 1
LLEDBlink.GetInput$gameOverDetected$1$106==.
_GetInput_gameOverDetected_1_106:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_tm0_isr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;------------------------------------------------------------
;Allocation info for local variables in function 'GetInput'
;------------------------------------------------------------
;timeDeltaInMs             Allocated to registers r7 
;retVal                    Allocated to registers r6 
;rotateButtonActiveForMs   Allocated with name '_GetInput_rotateButtonActiveForMs_1_106'
;leftButtonActiveForMs     Allocated with name '_GetInput_leftButtonActiveForMs_1_106'
;rightButtonActiveForMs    Allocated with name '_GetInput_rightButtonActiveForMs_1_106'
;downButtonActiveForMs     Allocated with name '_GetInput_downButtonActiveForMs_1_106'
;gameOverDetectedForMs     Allocated with name '_GetInput_gameOverDetectedForMs_1_106'
;------------------------------------------------------------
	G$GetInput$0$0 ==.
	C$TetrisLogic.c$463$1$106 ==.
;	src/EclipseTetris/TetrisLogic.c:463: static __bit rotateButtonDown = 0;
	clr	_GetInput_rotateButtonDown_1_106
	C$TetrisLogic.c$464$1$106 ==.
;	src/EclipseTetris/TetrisLogic.c:464: static __bit gameOverDetected = 0;
	clr	_GetInput_gameOverDetected_1_106
	C$TetrisLogic.c$465$1$106 ==.
;	src/EclipseTetris/TetrisLogic.c:465: static unsigned char rotateButtonActiveForMs = 0;
	mov	_GetInput_rotateButtonActiveForMs_1_106,#0x00
	C$TetrisLogic.c$466$1$106 ==.
;	src/EclipseTetris/TetrisLogic.c:466: static unsigned char leftButtonActiveForMs = 0;
	mov	_GetInput_leftButtonActiveForMs_1_106,#0x00
	C$TetrisLogic.c$467$1$106 ==.
;	src/EclipseTetris/TetrisLogic.c:467: static unsigned char rightButtonActiveForMs = 0;
	mov	_GetInput_rightButtonActiveForMs_1_106,#0x00
	C$TetrisLogic.c$468$1$106 ==.
;	src/EclipseTetris/TetrisLogic.c:468: static unsigned char downButtonActiveForMs = 0;
	mov	_GetInput_downButtonActiveForMs_1_106,#0x00
	C$TetrisLogic.c$469$1$106 ==.
;	src/EclipseTetris/TetrisLogic.c:469: static unsigned char gameOverDetectedForMs = 0;
	mov	_GetInput_gameOverDetectedForMs_1_106,#0x00
	C$Timing.c$131$1$149 ==.
;	src/Timing.c:131: static volatile unsigned int SystemTimeInMs = 0;
	clr	a
	mov	_SystemTimeInMs,a
	mov	(_SystemTimeInMs + 1),a
	C$LCDInterface.c$6$1$149 ==.
;	src/LCDInterface.c:6: static unsigned char LCD_PINS_SHIFT_REG_VALUES = 0x00;
	mov	_LCD_PINS_SHIFT_REG_VALUES,#0x00
	C$TetrisLogic.c$41$1$149 ==.
;	src/EclipseTetris/TetrisLogic.c:41: static unsigned char Tetris_Board[((TETRIS_BOARD_HEIGHT + (TETRIS_BOARD_GUARD_BORDER_WIDTH * 2)) * (TETRIS_BOARD_WIDTH + (TETRIS_BOARD_GUARD_BORDER_WIDTH * 2)) + 1) / 8 ] =
	mov	_Tetris_Board,#0xFF
	mov	(_Tetris_Board + 0x0001),#0x81
	mov	(_Tetris_Board + 0x0002),#0x81
	mov	(_Tetris_Board + 0x0003),#0x81
	mov	(_Tetris_Board + 0x0004),#0x81
	mov	(_Tetris_Board + 0x0005),#0x81
	mov	(_Tetris_Board + 0x0006),#0x81
	mov	(_Tetris_Board + 0x0007),#0x81
	mov	(_Tetris_Board + 0x0008),#0x81
	mov	(_Tetris_Board + 0x0009),#0x81
	mov	(_Tetris_Board + 0x000a),#0x81
	mov	(_Tetris_Board + 0x000b),#0x81
	mov	(_Tetris_Board + 0x000c),#0x81
	mov	(_Tetris_Board + 0x000d),#0x81
	mov	(_Tetris_Board + 0x000e),#0x81
	mov	(_Tetris_Board + 0x000f),#0x81
	mov	(_Tetris_Board + 0x0010),#0x81
	mov	(_Tetris_Board + 0x0011),#0xFF
	C$TetrisLogic.c$319$1$149 ==.
;	src/EclipseTetris/TetrisLogic.c:319: unsigned char g_ShapeX = 0;
	mov	_g_ShapeX,#0x00
	C$TetrisLogic.c$320$1$149 ==.
;	src/EclipseTetris/TetrisLogic.c:320: unsigned char g_ShapeY = 0;
	mov	_g_ShapeY,#0x00
	C$TetrisLogic.c$321$1$149 ==.
;	src/EclipseTetris/TetrisLogic.c:321: unsigned char g_ShapeType = 0;
	mov	_g_ShapeType,#0x00
	C$TetrisLogic.c$322$1$149 ==.
;	src/EclipseTetris/TetrisLogic.c:322: unsigned char g_ShapeRotation = 0;
	mov	_g_ShapeRotation,#0x00
	C$TetrisLogic.c$414$1$149 ==.
;	src/EclipseTetris/TetrisLogic.c:414: static unsigned int g_PreviousTimeInMs = 0;
	clr	a
	mov	_g_PreviousTimeInMs,a
	mov	(_g_PreviousTimeInMs + 1),a
	C$TetrisLogic.c$415$1$149 ==.
;	src/EclipseTetris/TetrisLogic.c:415: static unsigned short g_ButtonTime = 0;
	clr	a
	mov	_g_ButtonTime,a
	mov	(_g_ButtonTime + 1),a
	C$TetrisLogic.c$416$1$149 ==.
;	src/EclipseTetris/TetrisLogic.c:416: static unsigned short g_FallTime = 0;
	clr	a
	mov	_g_FallTime,a
	mov	(_g_FallTime + 1),a
	C$TetrisLogic.c$417$1$149 ==.
;	src/EclipseTetris/TetrisLogic.c:417: static unsigned short g_FallIntervalInMs = DEFAULT_FALL_INTERVAL_IN_MS;
	mov	_g_FallIntervalInMs,#0xE8
	mov	(_g_FallIntervalInMs + 1),#0x03
	C$TetrisLogic.c$422$1$149 ==.
;	src/EclipseTetris/TetrisLogic.c:422: static __bit g_GameOver = 0;
	clr	_g_GameOver
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay1ms'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$Delay1ms$0$0 ==.
	C$Timing.c$7$0$0 ==.
;	src/Timing.c:7: void Delay1ms(void)
;	-----------------------------------------
;	 function Delay1ms
;	-----------------------------------------
_Delay1ms:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$Timing.c$10$1$2 ==.
;	src/Timing.c:10: for(i = 0; i < (CPU_FREQUENCY_IN_KHZ / 128); i++)
	mov	r6,#0x2B
	mov	r7,#0x00
00104$:
	C$Timing.c$13$2$3 ==.
;	src/Timing.c:13: __asm__("nop");
	nop
	C$Timing.c$14$2$3 ==.
;	src/Timing.c:14: __asm__("nop");
	nop
	C$Timing.c$15$2$3 ==.
;	src/Timing.c:15: __asm__("nop");
	nop
	C$Timing.c$16$2$3 ==.
;	src/Timing.c:16: __asm__("nop");
	nop
	C$Timing.c$17$2$3 ==.
;	src/Timing.c:17: __asm__("nop");
	nop
	C$Timing.c$18$2$3 ==.
;	src/Timing.c:18: __asm__("nop");
	nop
	C$Timing.c$19$2$3 ==.
;	src/Timing.c:19: __asm__("nop");
	nop
	C$Timing.c$20$2$3 ==.
;	src/Timing.c:20: __asm__("nop");
	nop
	C$Timing.c$21$2$3 ==.
;	src/Timing.c:21: __asm__("nop");
	nop
	C$Timing.c$22$2$3 ==.
;	src/Timing.c:22: __asm__("nop");
	nop
	C$Timing.c$23$2$3 ==.
;	src/Timing.c:23: __asm__("nop");
	nop
	C$Timing.c$24$2$3 ==.
;	src/Timing.c:24: __asm__("nop");
	nop
	C$Timing.c$25$2$3 ==.
;	src/Timing.c:25: __asm__("nop");
	nop
	C$Timing.c$26$2$3 ==.
;	src/Timing.c:26: __asm__("nop");
	nop
	C$Timing.c$27$2$3 ==.
;	src/Timing.c:27: __asm__("nop");
	nop
	C$Timing.c$28$2$3 ==.
;	src/Timing.c:28: __asm__("nop");
	nop
	C$Timing.c$29$2$3 ==.
;	src/Timing.c:29: __asm__("nop");
	nop
	C$Timing.c$30$2$3 ==.
;	src/Timing.c:30: __asm__("nop");
	nop
	C$Timing.c$31$2$3 ==.
;	src/Timing.c:31: __asm__("nop");
	nop
	C$Timing.c$32$2$3 ==.
;	src/Timing.c:32: __asm__("nop");
	nop
	C$Timing.c$33$2$3 ==.
;	src/Timing.c:33: __asm__("nop");
	nop
	C$Timing.c$34$2$3 ==.
;	src/Timing.c:34: __asm__("nop");
	nop
	C$Timing.c$35$2$3 ==.
;	src/Timing.c:35: __asm__("nop");
	nop
	C$Timing.c$36$2$3 ==.
;	src/Timing.c:36: __asm__("nop");
	nop
	C$Timing.c$37$2$3 ==.
;	src/Timing.c:37: __asm__("nop");
	nop
	C$Timing.c$38$2$3 ==.
;	src/Timing.c:38: __asm__("nop");
	nop
	C$Timing.c$39$2$3 ==.
;	src/Timing.c:39: __asm__("nop");
	nop
	C$Timing.c$40$2$3 ==.
;	src/Timing.c:40: __asm__("nop");
	nop
	C$Timing.c$41$2$3 ==.
;	src/Timing.c:41: __asm__("nop");
	nop
	C$Timing.c$42$2$3 ==.
;	src/Timing.c:42: __asm__("nop");
	nop
	C$Timing.c$43$2$3 ==.
;	src/Timing.c:43: __asm__("nop");
	nop
	C$Timing.c$44$2$3 ==.
;	src/Timing.c:44: __asm__("nop");
	nop
	C$Timing.c$45$2$3 ==.
;	src/Timing.c:45: __asm__("nop");
	nop
	C$Timing.c$46$2$3 ==.
;	src/Timing.c:46: __asm__("nop");
	nop
	C$Timing.c$47$2$3 ==.
;	src/Timing.c:47: __asm__("nop");
	nop
	C$Timing.c$48$2$3 ==.
;	src/Timing.c:48: __asm__("nop");
	nop
	C$Timing.c$49$2$3 ==.
;	src/Timing.c:49: __asm__("nop");
	nop
	C$Timing.c$50$2$3 ==.
;	src/Timing.c:50: __asm__("nop");
	nop
	C$Timing.c$51$2$3 ==.
;	src/Timing.c:51: __asm__("nop");
	nop
	C$Timing.c$52$2$3 ==.
;	src/Timing.c:52: __asm__("nop");
	nop
	C$Timing.c$53$2$3 ==.
;	src/Timing.c:53: __asm__("nop");
	nop
	C$Timing.c$54$2$3 ==.
;	src/Timing.c:54: __asm__("nop");
	nop
	C$Timing.c$55$2$3 ==.
;	src/Timing.c:55: __asm__("nop");
	nop
	C$Timing.c$56$2$3 ==.
;	src/Timing.c:56: __asm__("nop");
	nop
	C$Timing.c$57$2$3 ==.
;	src/Timing.c:57: __asm__("nop");
	nop
	C$Timing.c$58$2$3 ==.
;	src/Timing.c:58: __asm__("nop");
	nop
	C$Timing.c$59$2$3 ==.
;	src/Timing.c:59: __asm__("nop");
	nop
	C$Timing.c$60$2$3 ==.
;	src/Timing.c:60: __asm__("nop");
	nop
	C$Timing.c$61$2$3 ==.
;	src/Timing.c:61: __asm__("nop");
	nop
	C$Timing.c$62$2$3 ==.
;	src/Timing.c:62: __asm__("nop");
	nop
	C$Timing.c$63$2$3 ==.
;	src/Timing.c:63: __asm__("nop");
	nop
	C$Timing.c$64$2$3 ==.
;	src/Timing.c:64: __asm__("nop");
	nop
	C$Timing.c$65$2$3 ==.
;	src/Timing.c:65: __asm__("nop");
	nop
	C$Timing.c$66$2$3 ==.
;	src/Timing.c:66: __asm__("nop");
	nop
	C$Timing.c$67$2$3 ==.
;	src/Timing.c:67: __asm__("nop");
	nop
	C$Timing.c$68$2$3 ==.
;	src/Timing.c:68: __asm__("nop");
	nop
	C$Timing.c$69$2$3 ==.
;	src/Timing.c:69: __asm__("nop");
	nop
	C$Timing.c$70$2$3 ==.
;	src/Timing.c:70: __asm__("nop");
	nop
	C$Timing.c$71$2$3 ==.
;	src/Timing.c:71: __asm__("nop");
	nop
	C$Timing.c$72$2$3 ==.
;	src/Timing.c:72: __asm__("nop");
	nop
	C$Timing.c$73$2$3 ==.
;	src/Timing.c:73: __asm__("nop");
	nop
	C$Timing.c$74$2$3 ==.
;	src/Timing.c:74: __asm__("nop");
	nop
	C$Timing.c$75$2$3 ==.
;	src/Timing.c:75: __asm__("nop");
	nop
	C$Timing.c$76$2$3 ==.
;	src/Timing.c:76: __asm__("nop");
	nop
	C$Timing.c$77$2$3 ==.
;	src/Timing.c:77: __asm__("nop");
	nop
	C$Timing.c$78$2$3 ==.
;	src/Timing.c:78: __asm__("nop");
	nop
	C$Timing.c$79$2$3 ==.
;	src/Timing.c:79: __asm__("nop");
	nop
	C$Timing.c$80$2$3 ==.
;	src/Timing.c:80: __asm__("nop");
	nop
	C$Timing.c$81$2$3 ==.
;	src/Timing.c:81: __asm__("nop");
	nop
	C$Timing.c$82$2$3 ==.
;	src/Timing.c:82: __asm__("nop");
	nop
	C$Timing.c$83$2$3 ==.
;	src/Timing.c:83: __asm__("nop");
	nop
	C$Timing.c$84$2$3 ==.
;	src/Timing.c:84: __asm__("nop");
	nop
	C$Timing.c$85$2$3 ==.
;	src/Timing.c:85: __asm__("nop");
	nop
	C$Timing.c$86$2$3 ==.
;	src/Timing.c:86: __asm__("nop");
	nop
	C$Timing.c$87$2$3 ==.
;	src/Timing.c:87: __asm__("nop");
	nop
	C$Timing.c$88$2$3 ==.
;	src/Timing.c:88: __asm__("nop");
	nop
	C$Timing.c$89$2$3 ==.
;	src/Timing.c:89: __asm__("nop");
	nop
	C$Timing.c$90$2$3 ==.
;	src/Timing.c:90: __asm__("nop");
	nop
	C$Timing.c$91$2$3 ==.
;	src/Timing.c:91: __asm__("nop");
	nop
	C$Timing.c$92$2$3 ==.
;	src/Timing.c:92: __asm__("nop");
	nop
	C$Timing.c$93$2$3 ==.
;	src/Timing.c:93: __asm__("nop");
	nop
	C$Timing.c$94$2$3 ==.
;	src/Timing.c:94: __asm__("nop");
	nop
	C$Timing.c$95$2$3 ==.
;	src/Timing.c:95: __asm__("nop");
	nop
	C$Timing.c$96$2$3 ==.
;	src/Timing.c:96: __asm__("nop");
	nop
	C$Timing.c$97$2$3 ==.
;	src/Timing.c:97: __asm__("nop");
	nop
	C$Timing.c$98$2$3 ==.
;	src/Timing.c:98: __asm__("nop");
	nop
	C$Timing.c$99$2$3 ==.
;	src/Timing.c:99: __asm__("nop");
	nop
	C$Timing.c$100$2$3 ==.
;	src/Timing.c:100: __asm__("nop");
	nop
	C$Timing.c$101$2$3 ==.
;	src/Timing.c:101: __asm__("nop");
	nop
	C$Timing.c$102$2$3 ==.
;	src/Timing.c:102: __asm__("nop");
	nop
	C$Timing.c$103$2$3 ==.
;	src/Timing.c:103: __asm__("nop");
	nop
	C$Timing.c$104$2$3 ==.
;	src/Timing.c:104: __asm__("nop");
	nop
	C$Timing.c$105$2$3 ==.
;	src/Timing.c:105: __asm__("nop");
	nop
	C$Timing.c$106$2$3 ==.
;	src/Timing.c:106: __asm__("nop");
	nop
	C$Timing.c$107$2$3 ==.
;	src/Timing.c:107: __asm__("nop");
	nop
	C$Timing.c$108$2$3 ==.
;	src/Timing.c:108: __asm__("nop");
	nop
	C$Timing.c$109$2$3 ==.
;	src/Timing.c:109: __asm__("nop");
	nop
	C$Timing.c$110$2$3 ==.
;	src/Timing.c:110: __asm__("nop");
	nop
	C$Timing.c$111$2$3 ==.
;	src/Timing.c:111: __asm__("nop");
	nop
	C$Timing.c$112$2$3 ==.
;	src/Timing.c:112: __asm__("nop");
	nop
	C$Timing.c$113$2$3 ==.
;	src/Timing.c:113: __asm__("nop");
	nop
	C$Timing.c$114$2$3 ==.
;	src/Timing.c:114: __asm__("nop");
	nop
	C$Timing.c$115$2$3 ==.
;	src/Timing.c:115: __asm__("nop");
	nop
	C$Timing.c$116$2$3 ==.
;	src/Timing.c:116: __asm__("nop");
	nop
	C$Timing.c$117$2$3 ==.
;	src/Timing.c:117: __asm__("nop");
	nop
	C$Timing.c$118$2$3 ==.
;	src/Timing.c:118: __asm__("nop");
	nop
	C$Timing.c$119$2$3 ==.
;	src/Timing.c:119: __asm__("nop");
	nop
	C$Timing.c$120$2$3 ==.
;	src/Timing.c:120: __asm__("nop");
	nop
	C$Timing.c$121$2$3 ==.
;	src/Timing.c:121: __asm__("nop");
	nop
	C$Timing.c$122$2$3 ==.
;	src/Timing.c:122: __asm__("nop");
	nop
	C$Timing.c$123$2$3 ==.
;	src/Timing.c:123: __asm__("nop");
	nop
	C$Timing.c$124$2$3 ==.
;	src/Timing.c:124: __asm__("nop");
	nop
	C$Timing.c$125$2$3 ==.
;	src/Timing.c:125: __asm__("nop");
	nop
	C$Timing.c$126$2$3 ==.
;	src/Timing.c:126: __asm__("nop");
	nop
	C$Timing.c$127$2$3 ==.
;	src/Timing.c:127: __asm__("nop");
	nop
	dec	r6
	cjne	r6,#0xFF,00111$
	dec	r7
00111$:
	C$Timing.c$10$2$3 ==.
;	src/Timing.c:10: for(i = 0; i < (CPU_FREQUENCY_IN_KHZ / 128); i++)
	mov	a,r6
	orl	a,r7
	jnz	00104$
	C$Timing.c$129$1$2 ==.
	XG$Delay1ms$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'tm0_isr'
;------------------------------------------------------------
	G$tm0_isr$0$0 ==.
	C$Timing.c$133$1$2 ==.
;	src/Timing.c:133: void tm0_isr() __interrupt (1) __using (1)
;	-----------------------------------------
;	 function tm0_isr
;	-----------------------------------------
_tm0_isr:
	ar7 = 0x0F
	ar6 = 0x0E
	ar5 = 0x0D
	ar4 = 0x0C
	ar3 = 0x0B
	ar2 = 0x0A
	ar1 = 0x09
	ar0 = 0x08
	push	acc
	push	psw
	C$Timing.c$135$1$4 ==.
;	src/Timing.c:135: SystemTimeInMs++;
	mov	a,#0x01
	add	a,_SystemTimeInMs
	mov	_SystemTimeInMs,a
	clr	a
	addc	a,(_SystemTimeInMs + 1)
	mov	(_SystemTimeInMs + 1),a
	pop	psw
	pop	acc
	C$Timing.c$136$1$4 ==.
	XG$tm0_isr$0$0 ==.
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'Start1MsSystemTimer'
;------------------------------------------------------------
	G$Start1MsSystemTimer$0$0 ==.
	C$Timing.c$138$1$4 ==.
;	src/Timing.c:138: void Start1MsSystemTimer()
;	-----------------------------------------
;	 function Start1MsSystemTimer
;	-----------------------------------------
_Start1MsSystemTimer:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$Timing.c$142$1$5 ==.
;	src/Timing.c:142: AUXR |= 0x80;
	orl	_AUXR,#0x80
	C$Timing.c$143$1$5 ==.
;	src/Timing.c:143: TMOD = 0x00; // Set T0 as 16-bit auto-reload timer/counter
	mov	_TMOD,#0x00
	C$Timing.c$144$1$5 ==.
;	src/Timing.c:144: TL0 = T1MS;  // Initialize the timing value
	mov	_TL0,#0x66
	C$Timing.c$145$1$5 ==.
;	src/Timing.c:145: TH0 = (T1MS >> 8);  
	mov	_TH0,#0xEA
	C$Timing.c$146$1$5 ==.
;	src/Timing.c:146: TR0 = 1;     // Run T0
	setb	_TR0
	C$Timing.c$147$1$5 ==.
;	src/Timing.c:147: ET0 = 1;     // Enable T0 interrupt
	setb	_ET0
	C$Timing.c$148$1$5 ==.
;	src/Timing.c:148: EA = 1;
	setb	_EA
	C$Timing.c$149$1$5 ==.
	XG$Start1MsSystemTimer$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetSystemTimeInMs'
;------------------------------------------------------------
	G$GetSystemTimeInMs$0$0 ==.
	C$Timing.c$151$1$5 ==.
;	src/Timing.c:151: unsigned int GetSystemTimeInMs()
;	-----------------------------------------
;	 function GetSystemTimeInMs
;	-----------------------------------------
_GetSystemTimeInMs:
	C$Timing.c$153$1$6 ==.
;	src/Timing.c:153: return SystemTimeInMs;
	mov	dpl,_SystemTimeInMs
	mov	dph,(_SystemTimeInMs + 1)
	C$Timing.c$154$1$6 ==.
	XG$GetSystemTimeInMs$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ShiftRegisterInit'
;------------------------------------------------------------
;tempValReg0               Allocated to registers r7 
;tempValReg1               Allocated to registers r6 
;tempValReg0               Allocated to registers r7 
;tempValReg1               Allocated to registers r6 
;tempValReg0               Allocated to registers r7 
;tempValReg1               Allocated to registers r6 
;tempValReg0               Allocated to registers r7 
;tempValReg1               Allocated to registers r6 
;tempValReg0               Allocated to registers r7 
;tempValReg1               Allocated to registers r6 
;tempValReg0               Allocated to registers r7 
;tempValReg1               Allocated to registers r6 
;------------------------------------------------------------
	G$ShiftRegisterInit$0$0 ==.
	C$ShiftRegister.c$13$1$6 ==.
;	src/ShiftRegister.c:13: void ShiftRegisterInit()
;	-----------------------------------------
;	 function ShiftRegisterInit
;	-----------------------------------------
_ShiftRegisterInit:
	C$ShiftRegister.c$15$2$8 ==.
;	src/ShiftRegister.c:15: CONFIGURE_PORT3_PIN(2, PORT_PINT_CONFIG_INPUT_ONLY);
	mov	r7,_P3M0
	mov	r6,_P3M1
	mov	a,#0xFB
	anl	a,r7
	mov	_P3M0,a
	mov	ar7,r6
	mov	a,#0xFB
	anl	a,r7
	mov	r6,a
	mov	a,#0x04
	orl	a,r6
	mov	_P3M1,a
	C$ShiftRegister.c$16$2$8 ==.
;	src/ShiftRegister.c:16: CONFIGURE_PORT3_PIN(1, PORT_PINT_CONFIG_INPUT_ONLY);
	mov	r7,_P3M0
	mov	r6,_P3M1
	mov	a,#0xFD
	anl	a,r7
	mov	_P3M0,a
	mov	ar7,r6
	mov	a,#0xFD
	anl	a,r7
	mov	r6,a
	mov	a,#0x02
	orl	a,r6
	mov	_P3M1,a
	C$ShiftRegister.c$17$2$8 ==.
;	src/ShiftRegister.c:17: CONFIGURE_PORT3_PIN(0, PORT_PINT_CONFIG_INPUT_ONLY);
	mov	r7,_P3M0
	mov	r6,_P3M1
	mov	a,#0xFE
	anl	a,r7
	mov	_P3M0,a
	mov	ar7,r6
	mov	a,#0xFE
	anl	a,r7
	mov	r6,a
	mov	a,#0x01
	orl	a,r6
	mov	_P3M1,a
	C$ShiftRegister.c$18$2$8 ==.
;	src/ShiftRegister.c:18: CONFIGURE_PORT3_PIN(3, PORT_PINT_CONFIG_PUSH_PULL_OUTPUT);
	mov	r7,_P3M0
	mov	r6,_P3M1
	mov	ar5,r7
	mov	a,#0xF7
	anl	a,r5
	mov	r7,a
	mov	a,#0x08
	orl	a,r7
	mov	_P3M0,a
	mov	a,#0xF7
	anl	a,r6
	mov	_P3M1,a
	C$ShiftRegister.c$19$2$8 ==.
;	src/ShiftRegister.c:19: CONFIGURE_PORT3_PIN(4, PORT_PINT_CONFIG_PUSH_PULL_OUTPUT);
	mov	r7,_P3M0
	mov	r6,_P3M1
	mov	ar5,r7
	mov	a,#0xEF
	anl	a,r5
	mov	r7,a
	mov	a,#0x10
	orl	a,r7
	mov	_P3M0,a
	mov	a,#0xEF
	anl	a,r6
	mov	_P3M1,a
	C$ShiftRegister.c$20$2$8 ==.
;	src/ShiftRegister.c:20: CONFIGURE_PORT3_PIN(5, PORT_PINT_CONFIG_PUSH_PULL_OUTPUT);
	mov	r7,_P3M0
	mov	r6,_P3M1
	mov	ar5,r7
	mov	a,#0xDF
	anl	a,r5
	mov	r7,a
	mov	a,#0x20
	orl	a,r7
	mov	_P3M0,a
	mov	a,#0xDF
	anl	a,r6
	mov	_P3M1,a
	C$ShiftRegister.c$22$2$15 ==.
;	src/ShiftRegister.c:22: SET_PIN_LOW(SHIFT_REG_VALUE_PIN);
	clr	_P3_3
	nop
	nop
	nop
	nop
	nop
	C$ShiftRegister.c$23$2$17 ==.
;	src/ShiftRegister.c:23: SET_PIN_LOW(SHIFT_REG_CLOCK_PIN);
	clr	_P3_5
	nop
	nop
	nop
	nop
	nop
	C$ShiftRegister.c$24$2$19 ==.
;	src/ShiftRegister.c:24: SET_PIN_LOW(SHIFT_REG_CLOCK_PIN);
	clr	_P3_5
	nop
	nop
	nop
	nop
	nop
	C$ShiftRegister.c$26$1$8 ==.
;	src/ShiftRegister.c:26: ShiftRegisterChangePinState(0x00);
	mov	dpl,#0x00
	lcall	_ShiftRegisterChangePinState
	C$ShiftRegister.c$27$1$8 ==.
;	src/ShiftRegister.c:27: Delay1ms();
	lcall	_Delay1ms
	C$ShiftRegister.c$28$1$8 ==.
	XG$ShiftRegisterInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ShiftRegisterChangePinState'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
	G$ShiftRegisterChangePinState$0$0 ==.
	C$ShiftRegister.c$30$1$8 ==.
;	src/ShiftRegister.c:30: void ShiftRegisterChangePinState(unsigned char value)
;	-----------------------------------------
;	 function ShiftRegisterChangePinState
;	-----------------------------------------
_ShiftRegisterChangePinState:
	mov	r7,dpl
	C$ShiftRegister.c$33$1$22 ==.
;	src/ShiftRegister.c:33: for(i = 0; i < 8; i++)
	mov	r6,#0x00
00105$:
	C$ShiftRegister.c$36$2$23 ==.
;	src/ShiftRegister.c:36: if (((value >> (7 - i)) & (unsigned char)0x01))
	mov	ar4,r6
	mov	r5,#0x00
	mov	a,#0x07
	clr	c
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	mov	b,r4
	inc	b
	mov	a,r7
	sjmp	00119$
00118$:
	clr	c
	rrc	a
00119$:
	djnz	b,00118$
	jnb	acc.0,00102$
	C$ShiftRegister.c$38$4$25 ==.
;	src/ShiftRegister.c:38: SET_PIN_HIGH(SHIFT_REG_VALUE_PIN);
	setb	_P3_3
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	sjmp	00103$
00102$:
	C$ShiftRegister.c$42$4$27 ==.
;	src/ShiftRegister.c:42: SET_PIN_LOW(SHIFT_REG_VALUE_PIN);
	clr	_P3_3
	nop
	nop
	nop
	nop
	nop
00103$:
	C$ShiftRegister.c$46$3$29 ==.
;	src/ShiftRegister.c:46: SET_PIN_HIGH(SHIFT_REG_CLOCK_PIN);
	setb	_P3_5
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	C$ShiftRegister.c$47$3$30 ==.
;	src/ShiftRegister.c:47: SET_PIN_LOW(SHIFT_REG_CLOCK_PIN);
	clr	_P3_5
	nop
	nop
	nop
	nop
	nop
	C$ShiftRegister.c$33$1$22 ==.
;	src/ShiftRegister.c:33: for(i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x08,00121$
00121$:
	jc	00105$
	C$ShiftRegister.c$50$2$32 ==.
;	src/ShiftRegister.c:50: SET_PIN_LOW(SHIFT_REG_VALUE_PIN);
	clr	_P3_3
	nop
	nop
	nop
	nop
	nop
	C$ShiftRegister.c$53$2$34 ==.
;	src/ShiftRegister.c:53: SET_PIN_HIGH(STORE_REG_CLOCK_PIN);
	setb	_P3_4
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	nop
	C$ShiftRegister.c$54$2$35 ==.
;	src/ShiftRegister.c:54: SET_PIN_LOW(STORE_REG_CLOCK_PIN);
	clr	_P3_4
	nop
	nop
	nop
	nop
	nop
	C$ShiftRegister.c$55$3$36 ==.
	XG$ShiftRegisterChangePinState$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_PULSE_ENABLE_PIN'
;------------------------------------------------------------
	FLEDBlink$LCD_PULSE_ENABLE_PIN$0$0 ==.
	C$LCDInterface.c$35$3$36 ==.
;	src/LCDInterface.c:35: static void LCD_PULSE_ENABLE_PIN()
;	-----------------------------------------
;	 function LCD_PULSE_ENABLE_PIN
;	-----------------------------------------
_LCD_PULSE_ENABLE_PIN:
	C$LCDInterface.c$37$1$42 ==.
;	src/LCDInterface.c:37: LCD_CLEAR_E();
	mov	r7,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xFB
	anl	a,r7
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
	C$LCDInterface.c$38$1$42 ==.
;	src/LCDInterface.c:38: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
	lcall	_ShiftRegisterChangePinState
	C$LCDInterface.c$39$2$43 ==.
;	src/LCDInterface.c:39: Delay1us();
	nop
	nop
	nop
	nop
	nop
	C$LCDInterface.c$41$1$42 ==.
;	src/LCDInterface.c:41: LCD_SET_E();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x04
	C$LCDInterface.c$42$1$42 ==.
;	src/LCDInterface.c:42: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
	lcall	_ShiftRegisterChangePinState
	C$LCDInterface.c$43$2$44 ==.
;	src/LCDInterface.c:43: Delay1us();
	nop
	nop
	nop
	nop
	nop
	C$LCDInterface.c$45$1$42 ==.
;	src/LCDInterface.c:45: LCD_CLEAR_E();
	mov	r7,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xFB
	anl	a,r7
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
	C$LCDInterface.c$46$1$42 ==.
;	src/LCDInterface.c:46: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
	lcall	_ShiftRegisterChangePinState
	C$LCDInterface.c$47$2$45 ==.
;	src/LCDInterface.c:47: Delay1us();
	nop
	nop
	nop
	nop
	nop
	C$LCDInterface.c$48$2$45 ==.
	XFLEDBlink$LCD_PULSE_ENABLE_PIN$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_SEND_4BITS'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;------------------------------------------------------------
	G$LCD_SEND_4BITS$0$0 ==.
	C$LCDInterface.c$50$2$45 ==.
;	src/LCDInterface.c:50: void LCD_SEND_4BITS(unsigned char value)
;	-----------------------------------------
;	 function LCD_SEND_4BITS
;	-----------------------------------------
_LCD_SEND_4BITS:
	C$LCDInterface.c$52$1$47 ==.
;	src/LCDInterface.c:52: if ((value) & 0x01)
	mov	a,dpl
	mov	r7,a
	jnb	acc.0,00102$
	C$LCDInterface.c$54$2$48 ==.
;	src/LCDInterface.c:54: LCD_SET_D4();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x08
	sjmp	00103$
00102$:
	C$LCDInterface.c$58$2$49 ==.
;	src/LCDInterface.c:58: LCD_CLEAR_D4();
	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xF7
	anl	a,r6
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
00103$:
	C$LCDInterface.c$61$1$47 ==.
;	src/LCDInterface.c:61: if ((value) & 0x02)
	mov	a,r7
	jnb	acc.1,00105$
	C$LCDInterface.c$63$2$50 ==.
;	src/LCDInterface.c:63: LCD_SET_D5();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x10
	sjmp	00106$
00105$:
	C$LCDInterface.c$67$2$51 ==.
;	src/LCDInterface.c:67: LCD_CLEAR_D5();
	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xEF
	anl	a,r6
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
00106$:
	C$LCDInterface.c$70$1$47 ==.
;	src/LCDInterface.c:70: if ((value) & 0x04)
	mov	a,r7
	jnb	acc.2,00108$
	C$LCDInterface.c$72$2$52 ==.
;	src/LCDInterface.c:72: LCD_SET_D6();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x20
	sjmp	00109$
00108$:
	C$LCDInterface.c$76$2$53 ==.
;	src/LCDInterface.c:76: LCD_CLEAR_D6();
	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xDF
	anl	a,r6
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
00109$:
	C$LCDInterface.c$79$1$47 ==.
;	src/LCDInterface.c:79: if ((value) & 0x08)
	mov	a,r7
	jnb	acc.3,00111$
	C$LCDInterface.c$81$2$54 ==.
;	src/LCDInterface.c:81: LCD_SET_D7();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x40
	sjmp	00112$
00111$:
	C$LCDInterface.c$85$2$55 ==.
;	src/LCDInterface.c:85: LCD_CLEAR_D7();
	mov	r7,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xBF
	anl	a,r7
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
00112$:
	C$LCDInterface.c$88$1$47 ==.
;	src/LCDInterface.c:88: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
	lcall	_ShiftRegisterChangePinState
	C$LCDInterface.c$89$1$47 ==.
;	src/LCDInterface.c:89: LCD_PULSE_ENABLE_PIN();
	lcall	_LCD_PULSE_ENABLE_PIN
	C$LCDInterface.c$90$1$47 ==.
	XG$LCD_SEND_4BITS$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_SEND_8BITS'
;------------------------------------------------------------
;isCommand                 Allocated with name '_LCD_SEND_8BITS_PARM_2'
;value                     Allocated to registers r7 
;------------------------------------------------------------
	G$LCD_SEND_8BITS$0$0 ==.
	C$LCDInterface.c$92$1$47 ==.
;	src/LCDInterface.c:92: void LCD_SEND_8BITS(unsigned char value, unsigned char isCommand)
;	-----------------------------------------
;	 function LCD_SEND_8BITS
;	-----------------------------------------
_LCD_SEND_8BITS:
	mov	r7,dpl
	C$LCDInterface.c$94$1$57 ==.
;	src/LCDInterface.c:94: if (isCommand)
	mov	a,_LCD_SEND_8BITS_PARM_2
	jz	00102$
	C$LCDInterface.c$96$2$58 ==.
;	src/LCDInterface.c:96: LCD_CLEAR_RS();
	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xFD
	anl	a,r6
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
	sjmp	00103$
00102$:
	C$LCDInterface.c$100$2$59 ==.
;	src/LCDInterface.c:100: LCD_SET_RS();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x02
00103$:
	C$LCDInterface.c$102$1$57 ==.
;	src/LCDInterface.c:102: LCD_SEND_4BITS((unsigned char)(((value) >> 4) & 0x0F));
	mov	a,r7
	swap	a
	anl	a,#0x0F
	mov	r6,a
	mov	a,#0x0F
	anl	a,r6
	mov	dpl,a
	push	ar7
	lcall	_LCD_SEND_4BITS
	pop	ar7
	C$LCDInterface.c$103$1$57 ==.
;	src/LCDInterface.c:103: LCD_SEND_4BITS((unsigned char)((value) & 0x0F));
	mov	a,#0x0F
	anl	a,r7
	mov	dpl,a
	lcall	_LCD_SEND_4BITS
	C$LCDInterface.c$104$1$57 ==.
	XG$LCD_SEND_8BITS$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_CMD_CLEAR'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$LCD_CMD_CLEAR$0$0 ==.
	C$LCDInterface.c$106$1$57 ==.
;	src/LCDInterface.c:106: void LCD_CMD_CLEAR()
;	-----------------------------------------
;	 function LCD_CMD_CLEAR
;	-----------------------------------------
_LCD_CMD_CLEAR:
	C$LCDInterface.c$108$1$60 ==.
;	src/LCDInterface.c:108: LCD_SEND_COMMAND(LCD_CLEARDISPLAY);
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$110$2$61 ==.
;	src/LCDInterface.c:110: DelayMilliseconds(5);
	mov	r6,#0x05
	mov	r7,#0x00
00104$:
	push	ar7
	push	ar6
	lcall	_Delay1ms
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xFF,00111$
	dec	r7
00111$:
	mov	a,r6
	orl	a,r7
	jnz	00104$
	C$LCDInterface.c$111$2$61 ==.
	XG$LCD_CMD_CLEAR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_CMD_SET_CURSOR'
;------------------------------------------------------------
;row                       Allocated with name '_LCD_CMD_SET_CURSOR_PARM_2'
;col                       Allocated to registers r7 
;------------------------------------------------------------
	G$LCD_CMD_SET_CURSOR$0$0 ==.
	C$LCDInterface.c$113$2$61 ==.
;	src/LCDInterface.c:113: void LCD_CMD_SET_CURSOR(unsigned char col, unsigned char row)
;	-----------------------------------------
;	 function LCD_CMD_SET_CURSOR
;	-----------------------------------------
_LCD_CMD_SET_CURSOR:
	mov	r7,dpl
	C$LCDInterface.c$115$1$64 ==.
;	src/LCDInterface.c:115: if (row >= LCD_MAX_ROW_COUNT)
	mov	a,#0x100 - 0x04
	add	a,_LCD_CMD_SET_CURSOR_PARM_2
	jnc	00102$
	C$LCDInterface.c$117$2$65 ==.
;	src/LCDInterface.c:117: row = (LCD_MAX_ROW_COUNT - 1);
	mov	_LCD_CMD_SET_CURSOR_PARM_2,#0x03
00102$:
	C$LCDInterface.c$120$1$64 ==.
;	src/LCDInterface.c:120: LCD_SEND_COMMAND(LCD_SETDDRAMADDR | (col + LCD_ROW_OFFSETS[row]));
	mov	a,_LCD_CMD_SET_CURSOR_PARM_2
	mov	dptr,#_LCD_ROW_OFFSETS
	movc	a,@a+dptr
	add	a,r7
	orl	a,#0x80
	mov	dpl,a
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$121$1$64 ==.
	XG$LCD_CMD_SET_CURSOR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_CMD_UPLOAD_CUSTOM_CHAR'
;------------------------------------------------------------
;charmap                   Allocated with name '_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2'
;location                  Allocated to registers r7 
;i                         Allocated to registers r7 
;------------------------------------------------------------
	G$LCD_CMD_UPLOAD_CUSTOM_CHAR$0$0 ==.
	C$LCDInterface.c$125$1$64 ==.
;	src/LCDInterface.c:125: void LCD_CMD_UPLOAD_CUSTOM_CHAR(unsigned char location, unsigned char charmap[])
;	-----------------------------------------
;	 function LCD_CMD_UPLOAD_CUSTOM_CHAR
;	-----------------------------------------
_LCD_CMD_UPLOAD_CUSTOM_CHAR:
	C$LCDInterface.c$128$1$67 ==.
;	src/LCDInterface.c:128: location &= 0x7; // we only have 8 locations 0-7
	C$LCDInterface.c$129$1$67 ==.
;	src/LCDInterface.c:129: LCD_SEND_COMMAND(LCD_SETCGRAMADDR | (location << 3));
	mov	a,dpl
	anl	a,#0x07
	swap	a
	rr	a
	anl	a,#0xF8
	mov	r7,a
	mov	a,#0x40
	orl	a,r7
	mov	dpl,a
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$130$1$67 ==.
;	src/LCDInterface.c:130: for (i=0; i<8; i++)
	mov	r7,#0x00
00102$:
	C$LCDInterface.c$132$2$68 ==.
;	src/LCDInterface.c:132: LCD_SEND_DATA(charmap[i]);
	mov	a,r7
	add	a,_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2
	mov	r4,a
	clr	a
	addc	a,(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 1)
	mov	r5,a
	mov	r6,(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 2)
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r4,a
	mov	_LCD_SEND_8BITS_PARM_2,#0x00
	mov	dpl,r4
	push	ar7
	lcall	_LCD_SEND_8BITS
	pop	ar7
	C$LCDInterface.c$130$1$67 ==.
;	src/LCDInterface.c:130: for (i=0; i<8; i++)
	inc	r7
	cjne	r7,#0x08,00109$
00109$:
	jc	00102$
	C$LCDInterface.c$134$1$67 ==.
	XG$LCD_CMD_UPLOAD_CUSTOM_CHAR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_PRINT'
;------------------------------------------------------------
;col                       Allocated with name '_LCD_PRINT_PARM_2'
;row                       Allocated with name '_LCD_PRINT_PARM_3'
;str                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$LCD_PRINT$0$0 ==.
	C$LCDInterface.c$136$1$67 ==.
;	src/LCDInterface.c:136: void LCD_PRINT(unsigned char* str, unsigned char col, unsigned char row)
;	-----------------------------------------
;	 function LCD_PRINT
;	-----------------------------------------
_LCD_PRINT:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$LCDInterface.c$138$1$70 ==.
;	src/LCDInterface.c:138: while(*str)
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jz	00104$
	C$LCDInterface.c$140$2$71 ==.
;	src/LCDInterface.c:140: LCD_CMD_SET_CURSOR(col++, row);
	mov	a,_LCD_PRINT_PARM_2
	mov	r4,a
	inc	a
	mov	_LCD_PRINT_PARM_2,a
	mov	_LCD_CMD_SET_CURSOR_PARM_2,_LCD_PRINT_PARM_3
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_LCD_CMD_SET_CURSOR
	pop	ar5
	pop	ar6
	pop	ar7
	C$LCDInterface.c$141$2$71 ==.
;	src/LCDInterface.c:141: LCD_SEND_DATA(*str);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	_LCD_SEND_8BITS_PARM_2,#0x00
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_LCD_SEND_8BITS
	pop	ar5
	pop	ar6
	pop	ar7
	C$LCDInterface.c$142$2$71 ==.
;	src/LCDInterface.c:142: str++;
	sjmp	00101$
00104$:
	C$LCDInterface.c$144$1$70 ==.
	XG$LCD_PRINT$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_INIT'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$LCD_INIT$0$0 ==.
	C$LCDInterface.c$146$1$70 ==.
;	src/LCDInterface.c:146: void LCD_INIT()
;	-----------------------------------------
;	 function LCD_INIT
;	-----------------------------------------
_LCD_INIT:
	C$LCDInterface.c$151$2$73 ==.
;	src/LCDInterface.c:151: DelayMilliseconds(50)
	mov	r6,#0x32
	mov	r7,#0x00
00105$:
	push	ar7
	push	ar6
	lcall	_Delay1ms
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xFF,00123$
	dec	r7
00123$:
	mov	a,r6
	orl	a,r7
	C$LCDInterface.c$157$1$72 ==.
;	src/LCDInterface.c:157: LCD_CLEAR_E();
	C$LCDInterface.c$158$1$72 ==.
;	src/LCDInterface.c:158: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
	jnz	00105$
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
	mov	dpl,a
	lcall	_ShiftRegisterChangePinState
	C$LCDInterface.c$166$2$75 ==.
;	src/LCDInterface.c:166: LCD_SEND_4BITS(0x02);
	mov	dpl,#0x02
	lcall	_LCD_SEND_4BITS
	C$LCDInterface.c$167$3$76 ==.
;	src/LCDInterface.c:167: DelayMilliseconds(5); // wait min 4.1ms
	mov	r6,#0x05
	mov	r7,#0x00
00108$:
	push	ar7
	push	ar6
	lcall	_Delay1ms
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xFF,00125$
	dec	r7
00125$:
	mov	a,r6
	orl	a,r7
	jnz	00108$
	C$LCDInterface.c$218$1$72 ==.
;	src/LCDInterface.c:218: LCD_SEND_COMMAND(LCD_FUNCTIONSET | LCD_4BITMODE | LCD_2LINE | LCD_5x8DOTS);
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	mov	dpl,#0x28
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$219$1$72 ==.
;	src/LCDInterface.c:219: LCD_SEND_COMMAND(LCD_FUNCTIONSET | LCD_4BITMODE | LCD_2LINE | LCD_5x8DOTS);
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	mov	dpl,#0x28
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$222$1$72 ==.
;	src/LCDInterface.c:222: LCD_SEND_COMMAND(LCD_DISPLAYCONTROL | LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF);
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	mov	dpl,#0x0C
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$224$1$72 ==.
;	src/LCDInterface.c:224: LCD_CMD_CLEAR();
	lcall	_LCD_CMD_CLEAR
	C$LCDInterface.c$227$1$72 ==.
;	src/LCDInterface.c:227: LCD_SEND_COMMAND(LCD_ENTRYMODESET | LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT);
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	mov	dpl,#0x06
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$228$1$72 ==.
	XG$LCD_INIT$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SetBoard'
;------------------------------------------------------------
;y                         Allocated with name '_SetBoard_PARM_2'
;set                       Allocated with name '_SetBoard_PARM_3'
;x                         Allocated to registers r7 
;------------------------------------------------------------
	G$SetBoard$0$0 ==.
	C$TetrisLogic.c$65$1$72 ==.
;	src/EclipseTetris/TetrisLogic.c:65: void SetBoard(unsigned char x, unsigned char y, unsigned char set)
;	-----------------------------------------
;	 function SetBoard
;	-----------------------------------------
_SetBoard:
	mov	r7,dpl
	C$TetrisLogic.c$67$1$79 ==.
;	src/EclipseTetris/TetrisLogic.c:67: if ((x < TETRIS_BOARD_WIDTH) && (y < TETRIS_BOARD_HEIGHT))
	cjne	r7,#0x06,00118$
00118$:
	jnc	00107$
	mov	a,#0x100 - 0x10
	add	a,_SetBoard_PARM_2
	jc	00107$
	C$TetrisLogic.c$69$2$80 ==.
;	src/EclipseTetris/TetrisLogic.c:69: if (set)
	mov	a,_SetBoard_PARM_3
	jz	00102$
	C$TetrisLogic.c$71$3$81 ==.
;	src/EclipseTetris/TetrisLogic.c:71: Tetris_Board[y + 1] |= ((unsigned char)0x01 << (x + 1));
	mov	a,_SetBoard_PARM_2
	inc	a
	add	a,#_Tetris_Board
	mov	r1,a
	mov	ar6,@r1
	mov	a,r7
	inc	a
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00124$
00122$:
	add	a,acc
00124$:
	djnz	b,00122$
	mov	r5,a
	orl	a,r6
	mov	@r1,a
	sjmp	00107$
00102$:
	C$TetrisLogic.c$75$3$82 ==.
;	src/EclipseTetris/TetrisLogic.c:75: Tetris_Board[y + 1] &= ~((unsigned char)0x01 << (x + 1));
	mov	a,_SetBoard_PARM_2
	inc	a
	add	a,#_Tetris_Board
	mov	r1,a
	mov	ar6,@r1
	mov	a,r7
	inc	a
	mov	b,a
	inc	b
	mov	a,#0x01
	sjmp	00127$
00125$:
	add	a,acc
00127$:
	djnz	b,00125$
	cpl	a
	mov	r7,a
	anl	a,r6
	mov	@r1,a
00107$:
	C$TetrisLogic.c$78$1$79 ==.
	XG$SetBoard$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetBoard'
;------------------------------------------------------------
;y                         Allocated with name '_GetBoard_PARM_2'
;x                         Allocated to registers r7 
;------------------------------------------------------------
	G$GetBoard$0$0 ==.
	C$TetrisLogic.c$80$1$79 ==.
;	src/EclipseTetris/TetrisLogic.c:80: unsigned char GetBoard(unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function GetBoard
;	-----------------------------------------
_GetBoard:
	mov	r7,dpl
	C$TetrisLogic.c$82$1$84 ==.
;	src/EclipseTetris/TetrisLogic.c:82: if ((x < TETRIS_BOARD_WIDTH) && (y < TETRIS_BOARD_HEIGHT))
	cjne	r7,#0x06,00112$
00112$:
	jnc	00102$
	mov	a,#0x100 - 0x10
	add	a,_GetBoard_PARM_2
	jc	00102$
	C$TetrisLogic.c$84$2$85 ==.
;	src/EclipseTetris/TetrisLogic.c:84: return ((Tetris_Board[y + 1] >> (x + 1)) & (unsigned char)0x01);
	mov	a,_GetBoard_PARM_2
	inc	a
	add	a,#_Tetris_Board
	mov	r1,a
	mov	ar6,@r1
	mov	r5,#0x00
	inc	r7
	cjne	r7,#0x00,00115$
	inc	r5
00115$:
	mov	b,r7
	inc	b
	mov	a,r6
	sjmp	00117$
00116$:
	clr	c
	rrc	a
00117$:
	djnz	b,00116$
	anl	a,#0x01
	mov	dpl,a
	sjmp	00104$
00102$:
	C$TetrisLogic.c$86$1$84 ==.
;	src/EclipseTetris/TetrisLogic.c:86: return 1;
	mov	dpl,#0x01
00104$:
	C$TetrisLogic.c$87$1$84 ==.
	XG$GetBoard$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'PrintBoard'
;------------------------------------------------------------
;columns                   Allocated with name '_PrintBoard_PARM_2'
;rows                      Allocated to registers r7 
;row                       Allocated to registers r6 
;col                       Allocated to registers r3 
;part1                     Allocated with name '_PrintBoard_part1_4_90'
;part2                     Allocated to registers r0 
;part3                     Allocated to registers 
;index                     Allocated to registers r1 
;------------------------------------------------------------
	G$PrintBoard$0$0 ==.
	C$TetrisLogic.c$89$1$84 ==.
;	src/EclipseTetris/TetrisLogic.c:89: void PrintBoard(unsigned char rows, unsigned char columns)
;	-----------------------------------------
;	 function PrintBoard
;	-----------------------------------------
_PrintBoard:
	C$TetrisLogic.c$123$1$87 ==.
;	src/EclipseTetris/TetrisLogic.c:123: if ((rows > 0) && (columns > 0))
	mov	a,dpl
	mov	r7,a
	jnz	00132$
	ljmp	00112$
00132$:
	mov	a,_PrintBoard_PARM_2
	jnz	00133$
	ljmp	00112$
00133$:
	C$TetrisLogic.c$144$2$88 ==.
;	src/EclipseTetris/TetrisLogic.c:144: for(row = 0; row < rows; row++)
	mov	r6,#0x00
	mov	a,r7
	dec	a
	mov	r5,a
	mov	b,#0x03
	mov	a,_PrintBoard_PARM_2
	div	ab
	mov	r4,a
00110$:
	clr	c
	mov	a,r6
	subb	a,r7
	jc	00134$
	ljmp	00112$
00134$:
	C$TetrisLogic.c$147$3$89 ==.
;	src/EclipseTetris/TetrisLogic.c:147: for(col = 0; col < (columns / 3); col++)
	mov	r3,#0x00
	mov	a,r5
	clr	c
	subb	a,r6
	mov	r2,a
00107$:
	clr	c
	mov	a,r3
	subb	a,r4
	jc	00135$
	ljmp	00111$
00135$:
	C$TetrisLogic.c$152$4$90 ==.
;	src/EclipseTetris/TetrisLogic.c:152: const unsigned char part1 = GetBoard((col * 3), row);
	mov	a,r3
	mov	b,#0x03
	mul	ab
	mov	r1,a
	mov	_GetBoard_PARM_2,r6
	mov	dpl,r1
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_GetBoard
	mov	_PrintBoard_part1_4_90,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	C$TetrisLogic.c$153$4$90 ==.
;	src/EclipseTetris/TetrisLogic.c:153: const unsigned char part2 = GetBoard(((col * 3) + 1), row);
	mov	a,r1
	inc	a
	mov	dpl,a
	mov	_GetBoard_PARM_2,r6
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_GetBoard
	mov	r0,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	C$TetrisLogic.c$154$4$90 ==.
;	src/EclipseTetris/TetrisLogic.c:154: const unsigned char part3 = GetBoard(((col * 3) + 2), row);
	mov	a,#0x02
	add	a,r1
	mov	dpl,a
	mov	_GetBoard_PARM_2,r6
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar0
	lcall	_GetBoard
	mov	a,dpl
	pop	ar0
	pop	ar2
	pop	ar3
	C$TetrisLogic.c$155$4$90 ==.
;	src/EclipseTetris/TetrisLogic.c:155: const unsigned char index = (((part3 & 0x01) << 2) | ((part2 & 0x01) << 1) | (part1 & 0x01));
	anl	a,#0x01
	add	a,acc
	add	a,acc
	mov	r1,a
	anl	ar0,#0x01
	mov	a,r0
	add	a,r0
	orl	ar1,a
	mov	a,#0x01
	anl	a,_PrintBoard_part1_4_90
	orl	ar1,a
	C$TetrisLogic.c$156$4$90 ==.
;	src/EclipseTetris/TetrisLogic.c:156: LCD_CMD_SET_CURSOR(((rows - 1) - row), col);
	mov	_LCD_CMD_SET_CURSOR_PARM_2,r3
	mov	dpl,r2
	push	ar3
	push	ar2
	push	ar1
	lcall	_LCD_CMD_SET_CURSOR
	pop	ar1
	C$TetrisLogic.c$157$4$90 ==.
;	src/EclipseTetris/TetrisLogic.c:157: LCD_SEND_DATA(LCDCharIndicesMap[index]);
	mov	a,r1
	mov	dptr,#_LCDCharIndicesMap
	movc	a,@a+dptr
	mov	r1,a
	mov	_LCD_SEND_8BITS_PARM_2,#0x00
	mov	dpl,r1
	lcall	_LCD_SEND_8BITS
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$TetrisLogic.c$147$3$89 ==.
;	src/EclipseTetris/TetrisLogic.c:147: for(col = 0; col < (columns / 3); col++)
	inc	r3
	ljmp	00107$
00111$:
	C$TetrisLogic.c$144$2$88 ==.
;	src/EclipseTetris/TetrisLogic.c:144: for(row = 0; row < rows; row++)
	inc	r6
	ljmp	00110$
00112$:
	C$TetrisLogic.c$162$1$87 ==.
	XG$PrintBoard$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetShapeData'
;------------------------------------------------------------
;y                         Allocated with name '_GetShapeData_PARM_2'
;x                         Allocated to registers r7 
;shapeParts                Allocated with name '_GetShapeData_shapeParts_1_92'
;------------------------------------------------------------
	G$GetShapeData$0$0 ==.
	C$TetrisLogic.c$324$1$87 ==.
;	src/EclipseTetris/TetrisLogic.c:324: unsigned char GetShapeData(unsigned char x, unsigned char y)
;	-----------------------------------------
;	 function GetShapeData
;	-----------------------------------------
_GetShapeData:
	mov	r7,dpl
	C$TetrisLogic.c$326$1$87 ==.
;	src/EclipseTetris/TetrisLogic.c:326: const unsigned shapeParts[2] =
	mov	a,_g_ShapeType
	mov	dptr,#_TetrisShapes
	movc	a,@a+dptr
	mov	r6,a
	inc	r6
	mov	a,_g_ShapeRotation
	add	a,_g_ShapeRotation
	add	a,r6
	mov	dptr,#_g_TetrisSchapesData
	movc	a,@a+dptr
	mov	r6,a
	mov	r5,#0x00
	mov	(_GetShapeData_shapeParts_1_92 + 0),r6
	mov	(_GetShapeData_shapeParts_1_92 + 1),r5
	mov	a,_g_ShapeType
	mov	dptr,#_TetrisShapes
	movc	a,@a+dptr
	mov	r6,a
	mov	a,_g_ShapeRotation
	add	a,_g_ShapeRotation
	add	a,#0x02
	add	a,r6
	mov	dptr,#_g_TetrisSchapesData
	movc	a,@a+dptr
	mov	r6,a
	mov	r5,#0x00
	mov	((_GetShapeData_shapeParts_1_92 + 0x0002) + 0),r6
	mov	((_GetShapeData_shapeParts_1_92 + 0x0002) + 1),r5
	C$TetrisLogic.c$332$1$92 ==.
;	src/EclipseTetris/TetrisLogic.c:332: if (y < 2)
	mov	a,#0x100 - 0x02
	add	a,_GetShapeData_PARM_2
	jc	00102$
	C$TetrisLogic.c$334$2$93 ==.
;	src/EclipseTetris/TetrisLogic.c:334: return (unsigned char)0x01 & (shapeParts[0] >> (x + (y * 4)));
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,_GetShapeData_PARM_2
	mov	b,#0x04
	mul	ab
	add	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,b
	mov	b,r5
	inc	b
	mov	r5,_GetShapeData_shapeParts_1_92
	mov	r6,(_GetShapeData_shapeParts_1_92 + 1)
	sjmp	00111$
00110$:
	clr	c
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
00111$:
	djnz	b,00110$
	anl	ar5,#0x01
	mov	r6,#0x00
	mov	dpl,r5
	sjmp	00104$
00102$:
	C$TetrisLogic.c$338$2$94 ==.
;	src/EclipseTetris/TetrisLogic.c:338: y -= 2;
	dec	_GetShapeData_PARM_2
	dec	_GetShapeData_PARM_2
	C$TetrisLogic.c$339$2$94 ==.
;	src/EclipseTetris/TetrisLogic.c:339: return (unsigned char)0x01 & (shapeParts[1] >> (x + (y * 4)));
	mov	r6,#0x00
	mov	a,_GetShapeData_PARM_2
	mov	b,#0x04
	mul	ab
	add	a,r7
	mov	r7,a
	mov	a,r6
	addc	a,b
	mov	b,r7
	inc	b
	mov	r7,(_GetShapeData_shapeParts_1_92 + 0x0002)
	mov	r6,((_GetShapeData_shapeParts_1_92 + 0x0002) + 1)
	sjmp	00113$
00112$:
	clr	c
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r7
	rrc	a
	mov	r7,a
00113$:
	djnz	b,00112$
	anl	ar7,#0x01
	mov	r6,#0x00
	mov	dpl,r7
00104$:
	C$TetrisLogic.c$341$1$92 ==.
	XG$GetShapeData$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CheckMoveAllowed'
;------------------------------------------------------------
;newY                      Allocated with name '_CheckMoveAllowed_PARM_2'
;newX                      Allocated to registers r7 
;retVal                    Allocated to registers r6 
;y                         Allocated to registers r5 
;x                         Allocated to registers r4 
;------------------------------------------------------------
	G$CheckMoveAllowed$0$0 ==.
	C$TetrisLogic.c$343$1$92 ==.
;	src/EclipseTetris/TetrisLogic.c:343: unsigned char CheckMoveAllowed(char newX, unsigned char newY)
;	-----------------------------------------
;	 function CheckMoveAllowed
;	-----------------------------------------
_CheckMoveAllowed:
	mov	r7,dpl
	C$TetrisLogic.c$345$1$92 ==.
;	src/EclipseTetris/TetrisLogic.c:345: unsigned char retVal = 1;
	mov	r6,#0x01
	C$TetrisLogic.c$348$1$96 ==.
;	src/EclipseTetris/TetrisLogic.c:348: for(y = 0; y < 4; y++)
	mov	r5,#0x00
00108$:
	C$TetrisLogic.c$351$2$97 ==.
;	src/EclipseTetris/TetrisLogic.c:351: for(x = 0; x < 4; x++)
	mov	r4,#0x00
00106$:
	C$TetrisLogic.c$353$3$98 ==.
;	src/EclipseTetris/TetrisLogic.c:353: if(GetBoard((g_ShapeX + newX) + x, (g_ShapeY + newY) + y) && GetShapeData(x, y))
	mov	r3,_g_ShapeX
	mov	a,r7
	add	a,r3
	mov	r3,a
	mov	ar2,r4
	mov	a,r2
	add	a,r3
	mov	dpl,a
	mov	a,_CheckMoveAllowed_PARM_2
	add	a,_g_ShapeY
	add	a,r5
	mov	_GetBoard_PARM_2,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_GetBoard
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00107$
	mov	_GetShapeData_PARM_2,r5
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_GetShapeData
	mov	a,dpl
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	jz	00107$
	C$TetrisLogic.c$355$4$99 ==.
;	src/EclipseTetris/TetrisLogic.c:355: retVal = 0;
	mov	r6,#0x00
00107$:
	C$TetrisLogic.c$351$2$97 ==.
;	src/EclipseTetris/TetrisLogic.c:351: for(x = 0; x < 4; x++)
	inc	r4
	cjne	r4,#0x04,00132$
00132$:
	jc	00106$
	C$TetrisLogic.c$348$1$96 ==.
;	src/EclipseTetris/TetrisLogic.c:348: for(y = 0; y < 4; y++)
	inc	r5
	cjne	r5,#0x04,00134$
00134$:
	jc	00108$
	C$TetrisLogic.c$360$1$96 ==.
;	src/EclipseTetris/TetrisLogic.c:360: return retVal;
	mov	dpl,r6
	C$TetrisLogic.c$361$1$96 ==.
	XG$CheckMoveAllowed$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'CommitCurrentShapeToOrRemoveFromTheBoard'
;------------------------------------------------------------
;commit                    Allocated to registers r7 
;retVal                    Allocated to registers 
;y                         Allocated to registers r6 
;x                         Allocated to registers r5 
;shapePoint                Allocated to registers r4 
;------------------------------------------------------------
	G$CommitCurrentShapeToOrRemoveFromTheBoard$0$0 ==.
	C$TetrisLogic.c$363$1$96 ==.
;	src/EclipseTetris/TetrisLogic.c:363: unsigned char CommitCurrentShapeToOrRemoveFromTheBoard(unsigned char commit)
;	-----------------------------------------
;	 function CommitCurrentShapeToOrRemoveFromTheBoard
;	-----------------------------------------
_CommitCurrentShapeToOrRemoveFromTheBoard:
	mov	r7,dpl
	C$TetrisLogic.c$368$1$101 ==.
;	src/EclipseTetris/TetrisLogic.c:368: for(y = 0; y < 4; y++)
	mov	r6,#0x00
00107$:
	C$TetrisLogic.c$371$2$102 ==.
;	src/EclipseTetris/TetrisLogic.c:371: for(x = 0; x < 4; x++)
	mov	r5,#0x00
00105$:
	C$TetrisLogic.c$373$3$103 ==.
;	src/EclipseTetris/TetrisLogic.c:373: const unsigned char shapePoint = GetShapeData(x, y);
	mov	_GetShapeData_PARM_2,r6
	mov	dpl,r5
	push	ar7
	push	ar6
	push	ar5
	lcall	_GetShapeData
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	C$TetrisLogic.c$374$3$103 ==.
;	src/EclipseTetris/TetrisLogic.c:374: if (shapePoint)
	mov	a,r4
	jz	00106$
	C$TetrisLogic.c$376$4$104 ==.
;	src/EclipseTetris/TetrisLogic.c:376: SetBoard(g_ShapeX + x, g_ShapeY + y, shapePoint & commit);
	mov	a,r5
	add	a,_g_ShapeX
	mov	dpl,a
	mov	a,r6
	add	a,_g_ShapeY
	mov	_SetBoard_PARM_2,a
	mov	a,r7
	anl	a,r4
	mov	_SetBoard_PARM_3,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_SetBoard
	pop	ar5
	pop	ar6
	pop	ar7
00106$:
	C$TetrisLogic.c$371$2$102 ==.
;	src/EclipseTetris/TetrisLogic.c:371: for(x = 0; x < 4; x++)
	inc	r5
	cjne	r5,#0x04,00127$
00127$:
	jc	00105$
	C$TetrisLogic.c$368$1$101 ==.
;	src/EclipseTetris/TetrisLogic.c:368: for(y = 0; y < 4; y++)
	inc	r6
	cjne	r6,#0x04,00129$
00129$:
	jc	00107$
	C$TetrisLogic.c$381$1$101 ==.
;	src/EclipseTetris/TetrisLogic.c:381: return retVal;
	mov	dpl,#0x01
	C$TetrisLogic.c$382$1$101 ==.
	XG$CommitCurrentShapeToOrRemoveFromTheBoard$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'GetInput'
;------------------------------------------------------------
;timeDeltaInMs             Allocated to registers r7 
;retVal                    Allocated to registers r6 
;rotateButtonActiveForMs   Allocated with name '_GetInput_rotateButtonActiveForMs_1_106'
;leftButtonActiveForMs     Allocated with name '_GetInput_leftButtonActiveForMs_1_106'
;rightButtonActiveForMs    Allocated with name '_GetInput_rightButtonActiveForMs_1_106'
;downButtonActiveForMs     Allocated with name '_GetInput_downButtonActiveForMs_1_106'
;gameOverDetectedForMs     Allocated with name '_GetInput_gameOverDetectedForMs_1_106'
;------------------------------------------------------------
	G$GetInput$0$0 ==.
	C$TetrisLogic.c$426$1$101 ==.
;	src/EclipseTetris/TetrisLogic.c:426: Button GetInput(unsigned char timeDeltaInMs)
;	-----------------------------------------
;	 function GetInput
;	-----------------------------------------
_GetInput:
	mov	r7,dpl
	C$TetrisLogic.c$428$1$101 ==.
;	src/EclipseTetris/TetrisLogic.c:428: Button retVal = e_Button_NoButton;
	mov	r6,#0x05
	C$TetrisLogic.c$471$1$106 ==.
;	src/EclipseTetris/TetrisLogic.c:471: if (ROTATE_BUTTON)
	jnb	_P3_1,00108$
	jnb	_P3_2,00108$
	C$TetrisLogic.c$473$2$107 ==.
;	src/EclipseTetris/TetrisLogic.c:473: rotateButtonActiveForMs += timeDeltaInMs;
	mov	a,r7
	add	a,_GetInput_rotateButtonActiveForMs_1_106
	mov	_GetInput_rotateButtonActiveForMs_1_106,a
	sjmp	00109$
00108$:
	C$TetrisLogic.c$477$2$108 ==.
;	src/EclipseTetris/TetrisLogic.c:477: rotateButtonActiveForMs = 0;
	mov	_GetInput_rotateButtonActiveForMs_1_106,#0x00
	C$TetrisLogic.c$479$2$108 ==.
;	src/EclipseTetris/TetrisLogic.c:479: if (LEFT_BUTTON)
	jnb	_P3_1,00102$
	C$TetrisLogic.c$481$3$109 ==.
;	src/EclipseTetris/TetrisLogic.c:481: leftButtonActiveForMs += timeDeltaInMs;
	mov	a,r7
	add	a,_GetInput_leftButtonActiveForMs_1_106
	mov	_GetInput_leftButtonActiveForMs_1_106,a
	sjmp	00103$
00102$:
	C$TetrisLogic.c$485$3$110 ==.
;	src/EclipseTetris/TetrisLogic.c:485: leftButtonActiveForMs = 0;
	mov	_GetInput_leftButtonActiveForMs_1_106,#0x00
00103$:
	C$TetrisLogic.c$488$2$108 ==.
;	src/EclipseTetris/TetrisLogic.c:488: if (RIGHT_BUTTON)
	jnb	_P3_2,00105$
	C$TetrisLogic.c$490$3$111 ==.
;	src/EclipseTetris/TetrisLogic.c:490: rightButtonActiveForMs += timeDeltaInMs;
	mov	a,r7
	add	a,_GetInput_rightButtonActiveForMs_1_106
	mov	_GetInput_rightButtonActiveForMs_1_106,a
	sjmp	00109$
00105$:
	C$TetrisLogic.c$494$3$112 ==.
;	src/EclipseTetris/TetrisLogic.c:494: rightButtonActiveForMs = 0;
	mov	_GetInput_rightButtonActiveForMs_1_106,#0x00
00109$:
	C$TetrisLogic.c$498$1$106 ==.
;	src/EclipseTetris/TetrisLogic.c:498: if (DOWN_BUTTON)
	jnb	_P3_0,00112$
	C$TetrisLogic.c$500$2$113 ==.
;	src/EclipseTetris/TetrisLogic.c:500: downButtonActiveForMs += timeDeltaInMs;
	mov	a,r7
	add	a,_GetInput_downButtonActiveForMs_1_106
	mov	_GetInput_downButtonActiveForMs_1_106,a
	sjmp	00113$
00112$:
	C$TetrisLogic.c$504$2$114 ==.
;	src/EclipseTetris/TetrisLogic.c:504: downButtonActiveForMs = 0;
	mov	_GetInput_downButtonActiveForMs_1_106,#0x00
00113$:
	C$TetrisLogic.c$507$1$106 ==.
;	src/EclipseTetris/TetrisLogic.c:507: if (rotateButtonActiveForMs >= BUTTON_STATE_HOLDING_INTERVAL_IN_MS)
	mov	a,#0x100 - 0x02
	add	a,_GetInput_rotateButtonActiveForMs_1_106
	jnc	00124$
	C$TetrisLogic.c$509$2$115 ==.
;	src/EclipseTetris/TetrisLogic.c:509: if (rotateButtonDown == 0)
	jb	_GetInput_rotateButtonDown_1_106,00125$
	C$TetrisLogic.c$511$3$116 ==.
;	src/EclipseTetris/TetrisLogic.c:511: retVal = e_Button_Rotate;
	mov	r6,#0x03
	C$TetrisLogic.c$512$3$116 ==.
;	src/EclipseTetris/TetrisLogic.c:512: rotateButtonDown = 1;
	setb	_GetInput_rotateButtonDown_1_106
	sjmp	00125$
00124$:
	C$TetrisLogic.c$518$2$117 ==.
;	src/EclipseTetris/TetrisLogic.c:518: if (g_ButtonTime >= LEFT_RIGHT_BUTTONS_SAMPLING_INTERVAL_IN_MS)
	clr	c
	mov	a,_g_ButtonTime
	subb	a,#0x08
	mov	a,(_g_ButtonTime + 1)
	subb	a,#0x00
	jc	00125$
	C$TetrisLogic.c$520$3$118 ==.
;	src/EclipseTetris/TetrisLogic.c:520: rotateButtonDown = 0;
	clr	_GetInput_rotateButtonDown_1_106
	C$TetrisLogic.c$522$3$118 ==.
;	src/EclipseTetris/TetrisLogic.c:522: if (leftButtonActiveForMs >= BUTTON_STATE_HOLDING_INTERVAL_IN_MS)
	mov	a,#0x100 - 0x02
	add	a,_GetInput_leftButtonActiveForMs_1_106
	jnc	00119$
	C$TetrisLogic.c$524$4$119 ==.
;	src/EclipseTetris/TetrisLogic.c:524: retVal = e_Button_Left;
	mov	r6,#0x00
	sjmp	00120$
00119$:
	C$TetrisLogic.c$526$3$118 ==.
;	src/EclipseTetris/TetrisLogic.c:526: else if (rightButtonActiveForMs >= BUTTON_STATE_HOLDING_INTERVAL_IN_MS)
	mov	a,#0x100 - 0x02
	add	a,_GetInput_rightButtonActiveForMs_1_106
	jnc	00120$
	C$TetrisLogic.c$528$4$120 ==.
;	src/EclipseTetris/TetrisLogic.c:528: retVal = e_Button_Right;
	mov	r6,#0x01
00120$:
	C$TetrisLogic.c$530$3$118 ==.
;	src/EclipseTetris/TetrisLogic.c:530: g_ButtonTime = 0;
	clr	a
	mov	_g_ButtonTime,a
	mov	(_g_ButtonTime + 1),a
00125$:
	C$TetrisLogic.c$534$1$106 ==.
;	src/EclipseTetris/TetrisLogic.c:534: if (downButtonActiveForMs >= BUTTON_STATE_HOLDING_INTERVAL_IN_MS)
	mov	a,#0x100 - 0x02
	add	a,_GetInput_downButtonActiveForMs_1_106
	jnc	00133$
	C$TetrisLogic.c$536$2$121 ==.
;	src/EclipseTetris/TetrisLogic.c:536: g_FallIntervalInMs = FAST_FALL_INTERVAL_IN_MS;
	mov	_g_FallIntervalInMs,#0x64
	mov	(_g_FallIntervalInMs + 1),#0x00
	C$TetrisLogic.c$537$2$121 ==.
;	src/EclipseTetris/TetrisLogic.c:537: retVal = e_Button_Down;
	mov	r6,#0x02
	C$TetrisLogic.c$538$2$121 ==.
;	src/EclipseTetris/TetrisLogic.c:538: if (gameOverDetected == 1)
	jnb	_GetInput_gameOverDetected_1_106,00134$
	C$TetrisLogic.c$540$3$122 ==.
;	src/EclipseTetris/TetrisLogic.c:540: g_GameOver = 0;
	clr	_g_GameOver
	C$TetrisLogic.c$541$3$122 ==.
;	src/EclipseTetris/TetrisLogic.c:541: gameOverDetected = 0;
	clr	_GetInput_gameOverDetected_1_106
	sjmp	00134$
00133$:
	C$TetrisLogic.c$546$2$123 ==.
;	src/EclipseTetris/TetrisLogic.c:546: if (g_GameOver == 1)
	jnb	_g_GameOver,00129$
	C$TetrisLogic.c$548$3$124 ==.
;	src/EclipseTetris/TetrisLogic.c:548: gameOverDetectedForMs += timeDeltaInMs;
	mov	a,r7
	add	a,_GetInput_gameOverDetectedForMs_1_106
	mov	_GetInput_gameOverDetectedForMs_1_106,a
00129$:
	C$TetrisLogic.c$551$2$123 ==.
;	src/EclipseTetris/TetrisLogic.c:551: if (gameOverDetectedForMs >= 100)
	mov	a,#0x100 - 0x64
	add	a,_GetInput_gameOverDetectedForMs_1_106
	jnc	00131$
	C$TetrisLogic.c$553$3$125 ==.
;	src/EclipseTetris/TetrisLogic.c:553: gameOverDetected = 1;
	setb	_GetInput_gameOverDetected_1_106
	C$TetrisLogic.c$554$3$125 ==.
;	src/EclipseTetris/TetrisLogic.c:554: gameOverDetectedForMs = 0;
	mov	_GetInput_gameOverDetectedForMs_1_106,#0x00
00131$:
	C$TetrisLogic.c$557$2$123 ==.
;	src/EclipseTetris/TetrisLogic.c:557: g_FallIntervalInMs = DEFAULT_FALL_INTERVAL_IN_MS;
	mov	_g_FallIntervalInMs,#0xE8
	mov	(_g_FallIntervalInMs + 1),#0x03
00134$:
	C$TetrisLogic.c$560$1$106 ==.
;	src/EclipseTetris/TetrisLogic.c:560: return retVal;
	mov	dpl,r6
	C$TetrisLogic.c$561$1$106 ==.
	XG$GetInput$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'NextShape'
;------------------------------------------------------------
	G$NextShape$0$0 ==.
	C$TetrisLogic.c$563$1$106 ==.
;	src/EclipseTetris/TetrisLogic.c:563: void NextShape()
;	-----------------------------------------
;	 function NextShape
;	-----------------------------------------
_NextShape:
	C$TetrisLogic.c$565$1$126 ==.
;	src/EclipseTetris/TetrisLogic.c:565: g_ShapeX = (TETRIS_BOARD_WIDTH / 4);
	mov	_g_ShapeX,#0x01
	C$TetrisLogic.c$566$1$126 ==.
;	src/EclipseTetris/TetrisLogic.c:566: g_ShapeY = 0;
	mov	_g_ShapeY,#0x00
	C$TetrisLogic.c$567$1$126 ==.
;	src/EclipseTetris/TetrisLogic.c:567: g_ShapeRotation = 0;
	mov	_g_ShapeRotation,#0x00
	C$TetrisLogic.c$569$1$126 ==.
;	src/EclipseTetris/TetrisLogic.c:569: g_ShapeType++;
	inc	_g_ShapeType
	C$TetrisLogic.c$570$1$126 ==.
;	src/EclipseTetris/TetrisLogic.c:570: if (g_ShapeType >= TETRIS_SHAPES_COUNT)
	mov	a,#0x100 - 0x07
	add	a,_g_ShapeType
	jnc	00103$
	C$TetrisLogic.c$572$2$127 ==.
;	src/EclipseTetris/TetrisLogic.c:572: g_ShapeType = 0;
	mov	_g_ShapeType,#0x00
00103$:
	C$TetrisLogic.c$574$1$126 ==.
	XG$NextShape$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ClearTheBoard'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;------------------------------------------------------------
	G$ClearTheBoard$0$0 ==.
	C$TetrisLogic.c$576$1$126 ==.
;	src/EclipseTetris/TetrisLogic.c:576: void ClearTheBoard()
;	-----------------------------------------
;	 function ClearTheBoard
;	-----------------------------------------
_ClearTheBoard:
	C$TetrisLogic.c$579$1$128 ==.
;	src/EclipseTetris/TetrisLogic.c:579: for(i = 1; i <= TETRIS_BOARD_HEIGHT; i++)
	mov	r7,#0x01
00102$:
	C$TetrisLogic.c$581$2$129 ==.
;	src/EclipseTetris/TetrisLogic.c:581: Tetris_Board[i] = 0x00;
	mov	a,r7
	add	a,#_Tetris_Board
	mov	r0,a
	mov	@r0,#0x00
	C$TetrisLogic.c$579$1$128 ==.
;	src/EclipseTetris/TetrisLogic.c:579: for(i = 1; i <= TETRIS_BOARD_HEIGHT; i++)
	inc	r7
	mov	a,r7
	add	a,#0xff - 0x10
	jnc	00102$
	C$TetrisLogic.c$583$1$128 ==.
	XG$ClearTheBoard$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ShiftTheBoard'
;------------------------------------------------------------
;linesToShift              Allocated with name '_ShiftTheBoard_linesToShift_1_130'
;i                         Allocated with name '_ShiftTheBoard_i_1_130'
;shiftStartPos             Allocated to registers r6 
;------------------------------------------------------------
	G$ShiftTheBoard$0$0 ==.
	C$TetrisLogic.c$585$1$128 ==.
;	src/EclipseTetris/TetrisLogic.c:585: void ShiftTheBoard()
;	-----------------------------------------
;	 function ShiftTheBoard
;	-----------------------------------------
_ShiftTheBoard:
	C$TetrisLogic.c$587$1$128 ==.
;	src/EclipseTetris/TetrisLogic.c:587: unsigned char linesToShift = 0;
	mov	_ShiftTheBoard_linesToShift_1_130,#0x00
	C$TetrisLogic.c$589$1$128 ==.
;	src/EclipseTetris/TetrisLogic.c:589: unsigned char shiftStartPos = TETRIS_BOARD_HEIGHT;
	mov	r6,#0x10
	C$TetrisLogic.c$590$1$130 ==.
;	src/EclipseTetris/TetrisLogic.c:590: for(i = TETRIS_BOARD_HEIGHT; i > 0; i--)
	mov	_ShiftTheBoard_i_1_130,#0x10
00109$:
	C$TetrisLogic.c$592$2$131 ==.
;	src/EclipseTetris/TetrisLogic.c:592: if (Tetris_Board[i] == 0xFF)
	mov	a,_ShiftTheBoard_i_1_130
	add	a,#_Tetris_Board
	mov	r1,a
	mov	ar4,@r1
	cjne	r4,#0xFF,00104$
	C$TetrisLogic.c$594$3$132 ==.
;	src/EclipseTetris/TetrisLogic.c:594: linesToShift++;
	inc	_ShiftTheBoard_linesToShift_1_130
	C$TetrisLogic.c$595$3$132 ==.
;	src/EclipseTetris/TetrisLogic.c:595: shiftStartPos = i;
	mov	r6,_ShiftTheBoard_i_1_130
	sjmp	00110$
00104$:
	C$TetrisLogic.c$597$2$131 ==.
;	src/EclipseTetris/TetrisLogic.c:597: else if (shiftStartPos != TETRIS_BOARD_HEIGHT)
	cjne	r6,#0x10,00106$
	C$TetrisLogic.c$599$2$131 ==.
;	src/EclipseTetris/TetrisLogic.c:599: break;
00110$:
	C$TetrisLogic.c$590$1$130 ==.
;	src/EclipseTetris/TetrisLogic.c:590: for(i = TETRIS_BOARD_HEIGHT; i > 0; i--)
	djnz	_ShiftTheBoard_i_1_130,00109$
00106$:
	C$TetrisLogic.c$603$1$130 ==.
;	src/EclipseTetris/TetrisLogic.c:603: CommitCurrentShapeToOrRemoveFromTheBoard(0);
	mov	dpl,#0x00
	push	ar6
	lcall	_CommitCurrentShapeToOrRemoveFromTheBoard
	pop	ar6
	C$TetrisLogic.c$604$1$130 ==.
;	src/EclipseTetris/TetrisLogic.c:604: for(i = 0; i < (TETRIS_BOARD_HEIGHT - linesToShift); i++)
	mov	_ShiftTheBoard_i_1_130,#0x00
	mov	a,#0x10
	clr	c
	subb	a,r6
	setb	c
	subb	a,#0x10
	cpl	a
	mov	r6,a
	clr	c
	subb	a,_ShiftTheBoard_linesToShift_1_130
	mov	r4,a
00112$:
	mov	r2,_ShiftTheBoard_linesToShift_1_130
	mov	r3,#0x00
	mov	a,#0x10
	clr	c
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
	mov	r5,_ShiftTheBoard_i_1_130
	mov	r7,#0x00
	clr	c
	mov	a,r5
	subb	a,r2
	mov	a,r7
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
	C$TetrisLogic.c$606$2$134 ==.
;	src/EclipseTetris/TetrisLogic.c:606: Tetris_Board[(TETRIS_BOARD_HEIGHT - (TETRIS_BOARD_HEIGHT - shiftStartPos)) - i] = Tetris_Board[((TETRIS_BOARD_HEIGHT - (TETRIS_BOARD_HEIGHT - shiftStartPos)) - linesToShift) - i];
	mov	a,r6
	clr	c
	subb	a,_ShiftTheBoard_i_1_130
	add	a,#_Tetris_Board
	mov	r1,a
	mov	a,r4
	clr	c
	subb	a,_ShiftTheBoard_i_1_130
	add	a,#_Tetris_Board
	mov	r0,a
	mov	ar7,@r0
	mov	@r1,ar7
	C$TetrisLogic.c$604$1$130 ==.
;	src/EclipseTetris/TetrisLogic.c:604: for(i = 0; i < (TETRIS_BOARD_HEIGHT - linesToShift); i++)
	inc	_ShiftTheBoard_i_1_130
	sjmp	00112$
00107$:
	C$TetrisLogic.c$609$1$130 ==.
;	src/EclipseTetris/TetrisLogic.c:609: for(i = 0; i < linesToShift; i++)
	mov	_ShiftTheBoard_i_1_130,#0x00
00115$:
	clr	c
	mov	a,_ShiftTheBoard_i_1_130
	subb	a,_ShiftTheBoard_linesToShift_1_130
	jnc	00108$
	C$TetrisLogic.c$611$2$135 ==.
;	src/EclipseTetris/TetrisLogic.c:611: Tetris_Board[1 + i] = 0x00;
	mov	a,_ShiftTheBoard_i_1_130
	inc	a
	mov	r7,a
	add	a,#_Tetris_Board
	mov	r0,a
	mov	@r0,#0x00
	C$TetrisLogic.c$609$1$130 ==.
;	src/EclipseTetris/TetrisLogic.c:609: for(i = 0; i < linesToShift; i++)
	mov	_ShiftTheBoard_i_1_130,r7
	sjmp	00115$
00108$:
	C$TetrisLogic.c$613$1$130 ==.
;	src/EclipseTetris/TetrisLogic.c:613: CommitCurrentShapeToOrRemoveFromTheBoard(1);
	mov	dpl,#0x01
	lcall	_CommitCurrentShapeToOrRemoveFromTheBoard
	C$TetrisLogic.c$614$1$130 ==.
	XG$ShiftTheBoard$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TetrisLogicLoop'
;------------------------------------------------------------
;input                     Allocated to registers r5 
;currentTimeInMs           Allocated to registers r6 r7 
;currentRotation           Allocated to registers r4 
;------------------------------------------------------------
	G$TetrisLogicLoop$0$0 ==.
	C$TetrisLogic.c$623$1$130 ==.
;	src/EclipseTetris/TetrisLogic.c:623: void TetrisLogicLoop()
;	-----------------------------------------
;	 function TetrisLogicLoop
;	-----------------------------------------
_TetrisLogicLoop:
	C$TetrisLogic.c$625$1$136 ==.
;	src/EclipseTetris/TetrisLogic.c:625: NextShape();
	lcall	_NextShape
	C$TetrisLogic.c$626$1$136 ==.
;	src/EclipseTetris/TetrisLogic.c:626: CommitCurrentShapeToOrRemoveFromTheBoard(1);
	mov	dpl,#0x01
	lcall	_CommitCurrentShapeToOrRemoveFromTheBoard
	C$TetrisLogic.c$627$1$136 ==.
;	src/EclipseTetris/TetrisLogic.c:627: PrintBoard(TETRIS_BOARD_HEIGHT, TETRIS_BOARD_WIDTH);
	mov	_PrintBoard_PARM_2,#0x06
	mov	dpl,#0x10
	lcall	_PrintBoard
	C$TetrisLogic.c$629$1$136 ==.
;	src/EclipseTetris/TetrisLogic.c:629: while(1)
00126$:
	C$TetrisLogic.c$632$2$137 ==.
;	src/EclipseTetris/TetrisLogic.c:632: const unsigned int currentTimeInMs = GetSystemTimeInMs();
	lcall	_GetSystemTimeInMs
	mov	r6,dpl
	mov	r7,dph
	C$TetrisLogic.c$633$2$137 ==.
;	src/EclipseTetris/TetrisLogic.c:633: input = GetInput((currentTimeInMs - g_PreviousTimeInMs));
	mov	ar5,r6
	mov	r4,_g_PreviousTimeInMs
	mov	a,r5
	clr	c
	subb	a,r4
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_GetInput
	mov	r5,dpl
	pop	ar6
	pop	ar7
	C$TetrisLogic.c$635$2$137 ==.
;	src/EclipseTetris/TetrisLogic.c:635: g_ButtonTime += (currentTimeInMs - g_PreviousTimeInMs);
	mov	a,r6
	clr	c
	subb	a,_g_PreviousTimeInMs
	mov	r3,a
	mov	a,r7
	subb	a,(_g_PreviousTimeInMs + 1)
	mov	r4,a
	mov	a,r3
	add	a,_g_ButtonTime
	mov	_g_ButtonTime,a
	mov	a,r4
	addc	a,(_g_ButtonTime + 1)
	mov	(_g_ButtonTime + 1),a
	C$TetrisLogic.c$636$2$137 ==.
;	src/EclipseTetris/TetrisLogic.c:636: g_FallTime += (currentTimeInMs - g_PreviousTimeInMs);
	mov	a,r3
	add	a,_g_FallTime
	mov	_g_FallTime,a
	mov	a,r4
	addc	a,(_g_FallTime + 1)
	mov	(_g_FallTime + 1),a
	C$TetrisLogic.c$638$2$137 ==.
;	src/EclipseTetris/TetrisLogic.c:638: if (g_GameOver == 1)
	jnb	_g_GameOver,00163$
	ljmp	00124$
00163$:
	C$TetrisLogic.c$643$3$139 ==.
;	src/EclipseTetris/TetrisLogic.c:643: ShiftTheBoard();
	push	ar7
	push	ar6
	push	ar5
	lcall	_ShiftTheBoard
	C$TetrisLogic.c$645$3$139 ==.
;	src/EclipseTetris/TetrisLogic.c:645: CommitCurrentShapeToOrRemoveFromTheBoard(0);
	mov	dpl,#0x00
	lcall	_CommitCurrentShapeToOrRemoveFromTheBoard
	pop	ar5
	pop	ar6
	pop	ar7
	C$TetrisLogic.c$647$3$139 ==.
;	src/EclipseTetris/TetrisLogic.c:647: if (input == e_Button_Rotate)
	cjne	r5,#0x03,00111$
	C$TetrisLogic.c$649$4$139 ==.
;	src/EclipseTetris/TetrisLogic.c:649: const unsigned char currentRotation = g_ShapeRotation;
	mov	r4,_g_ShapeRotation
	C$TetrisLogic.c$650$4$140 ==.
;	src/EclipseTetris/TetrisLogic.c:650: g_ShapeRotation++;
	inc	_g_ShapeRotation
	C$TetrisLogic.c$651$4$140 ==.
;	src/EclipseTetris/TetrisLogic.c:651: if (g_ShapeRotation >= g_TetrisSchapesData[TetrisShapes[g_ShapeType]])
	mov	a,_g_ShapeType
	mov	dptr,#_TetrisShapes
	movc	a,@a+dptr
	mov	dptr,#_g_TetrisSchapesData
	movc	a,@a+dptr
	mov	r3,a
	clr	c
	mov	a,_g_ShapeRotation
	subb	a,r3
	jc	00102$
	C$TetrisLogic.c$653$5$141 ==.
;	src/EclipseTetris/TetrisLogic.c:653: g_ShapeRotation = 0;
	mov	_g_ShapeRotation,#0x00
00102$:
	C$TetrisLogic.c$656$4$140 ==.
;	src/EclipseTetris/TetrisLogic.c:656: if(!CheckMoveAllowed(0, 0))
	mov	_CheckMoveAllowed_PARM_2,#0x00
	mov	dpl,#0x00
	push	ar7
	push	ar6
	push	ar4
	lcall	_CheckMoveAllowed
	mov	a,dpl
	pop	ar4
	pop	ar6
	pop	ar7
	jnz	00112$
	C$TetrisLogic.c$658$5$142 ==.
;	src/EclipseTetris/TetrisLogic.c:658: g_ShapeRotation = currentRotation;
	mov	_g_ShapeRotation,r4
	sjmp	00112$
00111$:
	C$TetrisLogic.c$661$3$139 ==.
;	src/EclipseTetris/TetrisLogic.c:661: else if (input == e_Button_Left)
	mov	a,r5
	C$TetrisLogic.c$663$4$143 ==.
;	src/EclipseTetris/TetrisLogic.c:663: g_ShapeX -= CheckMoveAllowed(-1, 0);
	jnz	00108$
	mov	_CheckMoveAllowed_PARM_2,a
	mov	dpl,#0xFF
	push	ar7
	push	ar6
	lcall	_CheckMoveAllowed
	mov	r4,dpl
	pop	ar6
	pop	ar7
	mov	a,_g_ShapeX
	clr	c
	subb	a,r4
	mov	_g_ShapeX,a
	sjmp	00112$
00108$:
	C$TetrisLogic.c$665$3$139 ==.
;	src/EclipseTetris/TetrisLogic.c:665: else if (input == e_Button_Right)
	cjne	r5,#0x01,00112$
	C$TetrisLogic.c$667$4$144 ==.
;	src/EclipseTetris/TetrisLogic.c:667: g_ShapeX += CheckMoveAllowed(1, 0);
	mov	_CheckMoveAllowed_PARM_2,#0x00
	mov	dpl,#0x01
	push	ar7
	push	ar6
	lcall	_CheckMoveAllowed
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	a,r5
	add	a,_g_ShapeX
	mov	_g_ShapeX,a
00112$:
	C$TetrisLogic.c$674$3$139 ==.
;	src/EclipseTetris/TetrisLogic.c:674: if (g_FallTime > g_FallIntervalInMs)
	clr	c
	mov	a,_g_FallIntervalInMs
	subb	a,_g_FallTime
	mov	a,(_g_FallIntervalInMs + 1)
	subb	a,(_g_FallTime + 1)
	jnc	00114$
	C$TetrisLogic.c$676$4$145 ==.
;	src/EclipseTetris/TetrisLogic.c:676: g_FallTime = 0;
	clr	a
	mov	_g_FallTime,a
	mov	(_g_FallTime + 1),a
	C$TetrisLogic.c$677$4$145 ==.
;	src/EclipseTetris/TetrisLogic.c:677: g_ShapeY += CheckMoveAllowed(0, 1);
	mov	_CheckMoveAllowed_PARM_2,#0x01
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_CheckMoveAllowed
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	a,r5
	add	a,_g_ShapeY
	mov	_g_ShapeY,a
00114$:
	C$TetrisLogic.c$680$3$139 ==.
;	src/EclipseTetris/TetrisLogic.c:680: if (!CheckMoveAllowed(0, 1))
	mov	_CheckMoveAllowed_PARM_2,#0x01
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_CheckMoveAllowed
	mov	a,dpl
	pop	ar6
	pop	ar7
	jnz	00119$
	C$TetrisLogic.c$682$4$146 ==.
;	src/EclipseTetris/TetrisLogic.c:682: CommitCurrentShapeToOrRemoveFromTheBoard(1);
	mov	dpl,#0x01
	push	ar7
	push	ar6
	lcall	_CommitCurrentShapeToOrRemoveFromTheBoard
	C$TetrisLogic.c$683$4$146 ==.
;	src/EclipseTetris/TetrisLogic.c:683: NextShape();
	lcall	_NextShape
	C$TetrisLogic.c$685$4$146 ==.
;	src/EclipseTetris/TetrisLogic.c:685: if (!CheckMoveAllowed(0, 0) || !CheckMoveAllowed(0, 1))
	mov	_CheckMoveAllowed_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_CheckMoveAllowed
	mov	a,dpl
	pop	ar6
	pop	ar7
	jz	00115$
	mov	_CheckMoveAllowed_PARM_2,#0x01
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_CheckMoveAllowed
	mov	a,dpl
	pop	ar6
	pop	ar7
	jnz	00119$
00115$:
	C$TetrisLogic.c$687$5$147 ==.
;	src/EclipseTetris/TetrisLogic.c:687: g_GameOver = 1;
	setb	_g_GameOver
	C$TetrisLogic.c$688$5$147 ==.
;	src/EclipseTetris/TetrisLogic.c:688: ClearTheBoard();
	push	ar7
	push	ar6
	lcall	_ClearTheBoard
	C$TetrisLogic.c$690$5$147 ==.
;	src/EclipseTetris/TetrisLogic.c:690: LCD_CMD_CLEAR();
	lcall	_LCD_CMD_CLEAR
	C$TetrisLogic.c$691$5$147 ==.
;	src/EclipseTetris/TetrisLogic.c:691: LCD_PRINT("Game Over", 0, 0);
	mov	_LCD_PRINT_PARM_2,#0x00
	mov	_LCD_PRINT_PARM_3,#0x00
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_LCD_PRINT
	pop	ar6
	pop	ar7
00119$:
	C$TetrisLogic.c$696$3$139 ==.
;	src/EclipseTetris/TetrisLogic.c:696: if (g_GameOver == 0)
	jb	_g_GameOver,00124$
	C$TetrisLogic.c$698$4$148 ==.
;	src/EclipseTetris/TetrisLogic.c:698: CommitCurrentShapeToOrRemoveFromTheBoard(1);
	mov	dpl,#0x01
	push	ar7
	push	ar6
	lcall	_CommitCurrentShapeToOrRemoveFromTheBoard
	C$TetrisLogic.c$699$4$148 ==.
;	src/EclipseTetris/TetrisLogic.c:699: PrintBoard(TETRIS_BOARD_HEIGHT, TETRIS_BOARD_WIDTH);
	mov	_PrintBoard_PARM_2,#0x06
	mov	dpl,#0x10
	lcall	_PrintBoard
	pop	ar6
	pop	ar7
00124$:
	C$TetrisLogic.c$704$2$137 ==.
;	src/EclipseTetris/TetrisLogic.c:704: g_PreviousTimeInMs = currentTimeInMs;
	mov	_g_PreviousTimeInMs,r6
	mov	(_g_PreviousTimeInMs + 1),r7
	C$TetrisLogic.c$705$2$137 ==.
;	src/EclipseTetris/TetrisLogic.c:705: PCON |= IDL; // Tell the MCU to sleep till the next timer interrupt
	orl	_PCON,#0x01
	ljmp	00126$
	C$TetrisLogic.c$708$1$136 ==.
	XG$TetrisLogicLoop$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;buttonPressed             Allocated to registers 
;------------------------------------------------------------
	G$main$0$0 ==.
	C$LEDBlink.c$80$1$136 ==.
;	LEDBlink.c:80: int main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$LEDBlink.c$87$1$149 ==.
;	LEDBlink.c:87: ShiftRegisterInit();
	lcall	_ShiftRegisterInit
	C$LEDBlink.c$89$1$149 ==.
;	LEDBlink.c:89: LCD_INIT();
	lcall	_LCD_INIT
	C$LEDBlink.c$90$1$149 ==.
;	LEDBlink.c:90: LCD_INIT();
	lcall	_LCD_INIT
	C$LEDBlink.c$91$1$149 ==.
;	LEDBlink.c:91: LCD_INIT();
	lcall	_LCD_INIT
	C$LEDBlink.c$92$1$149 ==.
;	LEDBlink.c:92: LCD_CMD_SET_CURSOR(0, 0);
	mov	_LCD_CMD_SET_CURSOR_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_LCD_CMD_SET_CURSOR
	C$LEDBlink.c$93$1$149 ==.
;	LEDBlink.c:93: LCD_CMD_CLEAR();
	lcall	_LCD_CMD_CLEAR
	C$LEDBlink.c$96$1$149 ==.
;	LEDBlink.c:96: LCD_CMD_UPLOAD_CUSTOM_CHAR(LCD_CHAR_TOP_SHAPE_CHAR_INDEX, LCDCharTopShapeData);
	mov	_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2,#_LCDCharTopShapeData
	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 1),#(_LCDCharTopShapeData >> 8)
	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 2),#0x80
	mov	dpl,#0x00
	lcall	_LCD_CMD_UPLOAD_CUSTOM_CHAR
	C$LEDBlink.c$97$1$149 ==.
;	LEDBlink.c:97: LCD_CMD_UPLOAD_CUSTOM_CHAR(LCD_CHAR_MIDDLE_SHAPE_CHAR_INDEX, LCDCharMiddleShapeData);
	mov	_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2,#_LCDCharMiddleShapeData
	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 1),#(_LCDCharMiddleShapeData >> 8)
	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 2),#0x80
	mov	dpl,#0x01
	lcall	_LCD_CMD_UPLOAD_CUSTOM_CHAR
	C$LEDBlink.c$98$1$149 ==.
;	LEDBlink.c:98: LCD_CMD_UPLOAD_CUSTOM_CHAR(LCD_CHAR_TOP_TWO_SHAPE_CHAR_INDEX, LCDCharTopTwoShapeData);
	mov	_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2,#_LCDCharTopTwoShapeData
	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 1),#(_LCDCharTopTwoShapeData >> 8)
	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 2),#0x80
	mov	dpl,#0x02
	lcall	_LCD_CMD_UPLOAD_CUSTOM_CHAR
	C$LEDBlink.c$99$1$149 ==.
;	LEDBlink.c:99: LCD_CMD_UPLOAD_CUSTOM_CHAR(LCD_CHAR_BOTTOM_SHAPE_CHAR_INDEX, LCDCharBottomShapeData);
	mov	_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2,#_LCDCharBottomShapeData
	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 1),#(_LCDCharBottomShapeData >> 8)
	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 2),#0x80
	mov	dpl,#0x03
	lcall	_LCD_CMD_UPLOAD_CUSTOM_CHAR
	C$LEDBlink.c$100$1$149 ==.
;	LEDBlink.c:100: LCD_CMD_UPLOAD_CUSTOM_CHAR(LCD_CHAR_TOP_AND_BOTTOM_SHAPE_CHAR_INDEX, LCDCharTopAndBottomShapeData);
	mov	_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2,#_LCDCharTopAndBottomShapeData
	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 1),#(_LCDCharTopAndBottomShapeData >> 8)
	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 2),#0x80
	mov	dpl,#0x04
	lcall	_LCD_CMD_UPLOAD_CUSTOM_CHAR
	C$LEDBlink.c$101$1$149 ==.
;	LEDBlink.c:101: LCD_CMD_UPLOAD_CUSTOM_CHAR(LCD_CHAR_BOTTOM_TWO_SHAPE_CHAR_INDEX, LCDCharBottomTwoShapeData);
	mov	_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2,#_LCDCharBottomTwoShapeData
	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 1),#(_LCDCharBottomTwoShapeData >> 8)
	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 2),#0x80
	mov	dpl,#0x05
	lcall	_LCD_CMD_UPLOAD_CUSTOM_CHAR
	C$LEDBlink.c$102$1$149 ==.
;	LEDBlink.c:102: LCD_CMD_UPLOAD_CUSTOM_CHAR(LCD_CHAR_THREE_SHAPE_CHAR_INDEX, LCDCharThreeShapeData);
	mov	_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2,#_LCDCharThreeShapeData
	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 1),#(_LCDCharThreeShapeData >> 8)
	mov	(_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2 + 2),#0x80
	mov	dpl,#0x06
	lcall	_LCD_CMD_UPLOAD_CUSTOM_CHAR
	C$LEDBlink.c$113$1$149 ==.
;	LEDBlink.c:113: Start1MsSystemTimer();
	lcall	_Start1MsSystemTimer
	C$LEDBlink.c$115$1$149 ==.
;	LEDBlink.c:115: TetrisLogicLoop();
	lcall	_TetrisLogicLoop
	C$LEDBlink.c$118$1$149 ==.
;	LEDBlink.c:118: while(1)
00106$:
	C$LEDBlink.c$133$2$150 ==.
;	LEDBlink.c:133: if (LEFT_BUTTON && RIGHT_BUTTON)
	jnb	_P3_1,00102$
	jnb	_P3_2,00102$
	C$LEDBlink.c$135$3$151 ==.
;	LEDBlink.c:135: LCD_CMD_CLEAR();
	lcall	_LCD_CMD_CLEAR
	C$LEDBlink.c$136$3$151 ==.
;	LEDBlink.c:136: LCD_SEND_DATA('1');
	mov	_LCD_SEND_8BITS_PARM_2,#0x00
	mov	dpl,#0x31
	lcall	_LCD_SEND_8BITS
	sjmp	00106$
00102$:
	C$LEDBlink.c$145$2$150 ==.
;	LEDBlink.c:145: else if (LEFT_BUTTON)
	mov	c,_P3_1
	C$LEDBlink.c$186$1$149 ==.
;	LEDBlink.c:186: return 0;
	sjmp	00106$
	C$LEDBlink.c$187$1$149 ==.
	XG$main$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$LCD_ROW_OFFSETS$0$0 == .
_LCD_ROW_OFFSETS:
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x10	; 16
	.db #0x50	; 80	'P'
G$LCDCharTopShapeData$0$0 == .
_LCDCharTopShapeData:
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
G$LCDCharMiddleShapeData$0$0 == .
_LCDCharMiddleShapeData:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
G$LCDCharTopTwoShapeData$0$0 == .
_LCDCharTopTwoShapeData:
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
G$LCDCharBottomShapeData$0$0 == .
_LCDCharBottomShapeData:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x1F	; 31
G$LCDCharTopAndBottomShapeData$0$0 == .
_LCDCharTopAndBottomShapeData:
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x1F	; 31
G$LCDCharBottomTwoShapeData$0$0 == .
_LCDCharBottomTwoShapeData:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x1F	; 31
G$LCDCharThreeShapeData$0$0 == .
_LCDCharThreeShapeData:
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x1F	; 31
	.db #0x00	; 0
	.db #0x1F	; 31
	.db #0x1F	; 31
G$LCDCharIndicesMap$0$0 == .
_LCDCharIndicesMap:
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
FLEDBlink$g_TetrisSchapesData$0$0 == .
_g_TetrisSchapesData:
	.db #0x02	; 2
	.db #0xF0	; 240
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x04	; 4
	.db #0x70	; 112	'p'
	.db #0x02	; 2
	.db #0x32	; 50	'2'
	.db #0x02	; 2
	.db #0x72	; 114	'r'
	.db #0x00	; 0
	.db #0x62	; 98	'b'
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x70	; 112	'p'
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x02	; 2
	.db #0x74	; 116	't'
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x71	; 113	'q'
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x02	; 2
	.db #0x70	; 112	'p'
	.db #0x04	; 4
	.db #0x22	; 34
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x30	; 48	'0'
	.db #0x06	; 6
	.db #0x64	; 100	'd'
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x60	; 96
	.db #0x03	; 3
	.db #0x62	; 98	'b'
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x66	; 102	'f'
	.db #0x00	; 0
G$TetrisShapes$0$0 == .
_TetrisShapes:
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x0E	; 14
	.db #0x17	; 23
	.db #0x20	; 32
	.db #0x25	; 37
	.db #0x2A	; 42
FLEDBlink$_str_0$0$0 == .
__str_0:
	.ascii "Game Over"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
