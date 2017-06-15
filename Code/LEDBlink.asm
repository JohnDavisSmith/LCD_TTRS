;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
; This file was generated Sun May 28 20:21:58 2017
;--------------------------------------------------------
	.module LEDBlink
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _LCDCharThreeShapeData
	.globl _LCDCharBottomTwoShapeData
	.globl _LCDCharTopTwoShapeData
	.globl _LCDCharBottomShapeData
	.globl _LCDCharMiddleShapeData
	.globl _LCDCharTopShapeData
	.globl _LCD_ROW_OFFSETS
	.globl _main
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
	.globl _LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2
	.globl _LCD_CMD_SET_CURSOR_PARM_2
	.globl _LCD_SEND_8BITS_PARM_2
	.globl _Delay1ms
	.globl _ShiftRegisterInit
	.globl _ShiftRegisterChangePinState
	.globl _LCD_SEND_4BITS
	.globl _LCD_SEND_8BITS
	.globl _LCD_CMD_CLEAR
	.globl _LCD_CMD_SET_CURSOR
	.globl _LCD_CMD_UPLOAD_CUSTOM_CHAR
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
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
FLEDBlink$LCD_PINS_SHIFT_REG_VALUES$0$0==.
_LCD_PINS_SHIFT_REG_VALUES:
	.ds 1
LLEDBlink.LCD_SEND_8BITS$isCommand$1$52==.
_LCD_SEND_8BITS_PARM_2:
	.ds 1
LLEDBlink.LCD_CMD_SET_CURSOR$row$1$59==.
_LCD_CMD_SET_CURSOR_PARM_2:
	.ds 1
LLEDBlink.LCD_CMD_UPLOAD_CUSTOM_CHAR$charmap$1$62==.
_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2:
	.ds 3
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
	C$LCDInterface.c$6$1$74 ==.
;	src/LCDInterface.c:6: static unsigned char LCD_PINS_SHIFT_REG_VALUES = 0x00;
	mov	_LCD_PINS_SHIFT_REG_VALUES,#0x00
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
	C$ShiftRegister.c$13$1$2 ==.
;	src/ShiftRegister.c:13: void ShiftRegisterInit()
;	-----------------------------------------
;	 function ShiftRegisterInit
;	-----------------------------------------
_ShiftRegisterInit:
	C$ShiftRegister.c$15$2$5 ==.
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
	C$ShiftRegister.c$16$2$5 ==.
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
	C$ShiftRegister.c$17$2$5 ==.
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
	C$ShiftRegister.c$18$2$5 ==.
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
	C$ShiftRegister.c$19$2$5 ==.
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
	C$ShiftRegister.c$20$2$5 ==.
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
	C$ShiftRegister.c$22$2$12 ==.
;	src/ShiftRegister.c:22: SET_PIN_LOW(SHIFT_REG_VALUE_PIN);
	clr	_P3_3
	nop
	nop
	nop
	nop
	nop
	C$ShiftRegister.c$23$2$14 ==.
;	src/ShiftRegister.c:23: SET_PIN_LOW(SHIFT_REG_CLOCK_PIN);
	clr	_P3_4
	nop
	nop
	nop
	nop
	nop
	C$ShiftRegister.c$24$2$16 ==.
;	src/ShiftRegister.c:24: SET_PIN_LOW(SHIFT_REG_CLOCK_PIN);
	clr	_P3_4
	nop
	nop
	nop
	nop
	nop
	C$ShiftRegister.c$26$1$5 ==.
;	src/ShiftRegister.c:26: ShiftRegisterChangePinState(0x00);
	mov	dpl,#0x00
	lcall	_ShiftRegisterChangePinState
	C$ShiftRegister.c$27$1$5 ==.
;	src/ShiftRegister.c:27: Delay1ms();
	lcall	_Delay1ms
	C$ShiftRegister.c$28$1$5 ==.
	XG$ShiftRegisterInit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ShiftRegisterChangePinState'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
	G$ShiftRegisterChangePinState$0$0 ==.
	C$ShiftRegister.c$30$1$5 ==.
;	src/ShiftRegister.c:30: void ShiftRegisterChangePinState(unsigned char value)
;	-----------------------------------------
;	 function ShiftRegisterChangePinState
;	-----------------------------------------
_ShiftRegisterChangePinState:
	mov	r7,dpl
	C$ShiftRegister.c$33$1$19 ==.
;	src/ShiftRegister.c:33: for(i = 0; i < 8; i++)
	mov	r6,#0x00
00105$:
	C$ShiftRegister.c$36$2$20 ==.
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
	C$ShiftRegister.c$38$4$22 ==.
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
	C$ShiftRegister.c$42$4$24 ==.
;	src/ShiftRegister.c:42: SET_PIN_LOW(SHIFT_REG_VALUE_PIN);
	clr	_P3_3
	nop
	nop
	nop
	nop
	nop
00103$:
	C$ShiftRegister.c$46$3$26 ==.
;	src/ShiftRegister.c:46: SET_PIN_HIGH(SHIFT_REG_CLOCK_PIN);
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
	C$ShiftRegister.c$47$3$27 ==.
;	src/ShiftRegister.c:47: SET_PIN_LOW(SHIFT_REG_CLOCK_PIN);
	clr	_P3_4
	nop
	nop
	nop
	nop
	nop
	C$ShiftRegister.c$33$1$19 ==.
;	src/ShiftRegister.c:33: for(i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x08,00121$
00121$:
	jc	00105$
	C$ShiftRegister.c$50$2$29 ==.
;	src/ShiftRegister.c:50: SET_PIN_LOW(SHIFT_REG_VALUE_PIN);
	clr	_P3_3
	nop
	nop
	nop
	nop
	nop
	C$ShiftRegister.c$53$2$31 ==.
;	src/ShiftRegister.c:53: SET_PIN_HIGH(STORE_REG_CLOCK_PIN);
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
	C$ShiftRegister.c$54$2$32 ==.
;	src/ShiftRegister.c:54: SET_PIN_LOW(STORE_REG_CLOCK_PIN);
	clr	_P3_5
	nop
	nop
	nop
	nop
	nop
	C$ShiftRegister.c$55$3$33 ==.
	XG$ShiftRegisterChangePinState$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_PULSE_ENABLE_PIN'
;------------------------------------------------------------
	FLEDBlink$LCD_PULSE_ENABLE_PIN$0$0 ==.
	C$LCDInterface.c$35$3$33 ==.
;	src/LCDInterface.c:35: static void LCD_PULSE_ENABLE_PIN()
;	-----------------------------------------
;	 function LCD_PULSE_ENABLE_PIN
;	-----------------------------------------
_LCD_PULSE_ENABLE_PIN:
	C$LCDInterface.c$37$1$38 ==.
;	src/LCDInterface.c:37: LCD_CLEAR_E();
	mov	r7,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xFB
	anl	a,r7
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
	C$LCDInterface.c$38$1$38 ==.
;	src/LCDInterface.c:38: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
	lcall	_ShiftRegisterChangePinState
	C$LCDInterface.c$39$2$39 ==.
;	src/LCDInterface.c:39: Delay1us();
	nop
	nop
	nop
	nop
	nop
	C$LCDInterface.c$41$1$38 ==.
;	src/LCDInterface.c:41: LCD_SET_E();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x04
	C$LCDInterface.c$42$1$38 ==.
;	src/LCDInterface.c:42: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
	lcall	_ShiftRegisterChangePinState
	C$LCDInterface.c$43$2$40 ==.
;	src/LCDInterface.c:43: Delay1us();
	nop
	nop
	nop
	nop
	nop
	C$LCDInterface.c$45$1$38 ==.
;	src/LCDInterface.c:45: LCD_CLEAR_E();
	mov	r7,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xFB
	anl	a,r7
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
	C$LCDInterface.c$46$1$38 ==.
;	src/LCDInterface.c:46: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
	lcall	_ShiftRegisterChangePinState
	C$LCDInterface.c$47$2$41 ==.
;	src/LCDInterface.c:47: Delay1us();
	nop
	nop
	nop
	nop
	nop
	C$LCDInterface.c$48$2$41 ==.
	XFLEDBlink$LCD_PULSE_ENABLE_PIN$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_SEND_4BITS'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;------------------------------------------------------------
	G$LCD_SEND_4BITS$0$0 ==.
	C$LCDInterface.c$50$2$41 ==.
;	src/LCDInterface.c:50: void LCD_SEND_4BITS(unsigned char value)
;	-----------------------------------------
;	 function LCD_SEND_4BITS
;	-----------------------------------------
_LCD_SEND_4BITS:
	C$LCDInterface.c$52$1$43 ==.
;	src/LCDInterface.c:52: if ((value) & 0x01)
	mov	a,dpl
	mov	r7,a
	jnb	acc.0,00102$
	C$LCDInterface.c$54$2$44 ==.
;	src/LCDInterface.c:54: LCD_SET_D4();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x08
	sjmp	00103$
00102$:
	C$LCDInterface.c$58$2$45 ==.
;	src/LCDInterface.c:58: LCD_CLEAR_D4();
	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xF7
	anl	a,r6
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
00103$:
	C$LCDInterface.c$61$1$43 ==.
;	src/LCDInterface.c:61: if ((value) & 0x02)
	mov	a,r7
	jnb	acc.1,00105$
	C$LCDInterface.c$63$2$46 ==.
;	src/LCDInterface.c:63: LCD_SET_D5();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x10
	sjmp	00106$
00105$:
	C$LCDInterface.c$67$2$47 ==.
;	src/LCDInterface.c:67: LCD_CLEAR_D5();
	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xEF
	anl	a,r6
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
00106$:
	C$LCDInterface.c$70$1$43 ==.
;	src/LCDInterface.c:70: if ((value) & 0x04)
	mov	a,r7
	jnb	acc.2,00108$
	C$LCDInterface.c$72$2$48 ==.
;	src/LCDInterface.c:72: LCD_SET_D6();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x20
	sjmp	00109$
00108$:
	C$LCDInterface.c$76$2$49 ==.
;	src/LCDInterface.c:76: LCD_CLEAR_D6();
	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xDF
	anl	a,r6
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
00109$:
	C$LCDInterface.c$79$1$43 ==.
;	src/LCDInterface.c:79: if ((value) & 0x08)
	mov	a,r7
	jnb	acc.3,00111$
	C$LCDInterface.c$81$2$50 ==.
;	src/LCDInterface.c:81: LCD_SET_D7();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x40
	sjmp	00112$
00111$:
	C$LCDInterface.c$85$2$51 ==.
;	src/LCDInterface.c:85: LCD_CLEAR_D7();
	mov	r7,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xBF
	anl	a,r7
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
00112$:
	C$LCDInterface.c$88$1$43 ==.
;	src/LCDInterface.c:88: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
	lcall	_ShiftRegisterChangePinState
	C$LCDInterface.c$89$1$43 ==.
;	src/LCDInterface.c:89: LCD_PULSE_ENABLE_PIN();
	lcall	_LCD_PULSE_ENABLE_PIN
	C$LCDInterface.c$90$1$43 ==.
	XG$LCD_SEND_4BITS$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_SEND_8BITS'
;------------------------------------------------------------
;isCommand                 Allocated with name '_LCD_SEND_8BITS_PARM_2'
;value                     Allocated to registers r7 
;------------------------------------------------------------
	G$LCD_SEND_8BITS$0$0 ==.
	C$LCDInterface.c$92$1$43 ==.
;	src/LCDInterface.c:92: void LCD_SEND_8BITS(unsigned char value, unsigned char isCommand)
;	-----------------------------------------
;	 function LCD_SEND_8BITS
;	-----------------------------------------
_LCD_SEND_8BITS:
	mov	r7,dpl
	C$LCDInterface.c$94$1$53 ==.
;	src/LCDInterface.c:94: if (isCommand)
	mov	a,_LCD_SEND_8BITS_PARM_2
	jz	00102$
	C$LCDInterface.c$96$2$54 ==.
;	src/LCDInterface.c:96: LCD_CLEAR_RS();
	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xFD
	anl	a,r6
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
	sjmp	00103$
00102$:
	C$LCDInterface.c$100$2$55 ==.
;	src/LCDInterface.c:100: LCD_SET_RS();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x02
00103$:
	C$LCDInterface.c$102$1$53 ==.
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
	C$LCDInterface.c$103$1$53 ==.
;	src/LCDInterface.c:103: LCD_SEND_4BITS((unsigned char)((value) & 0x0F));
	mov	a,#0x0F
	anl	a,r7
	mov	dpl,a
	lcall	_LCD_SEND_4BITS
	C$LCDInterface.c$104$1$53 ==.
	XG$LCD_SEND_8BITS$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_CMD_CLEAR'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$LCD_CMD_CLEAR$0$0 ==.
	C$LCDInterface.c$106$1$53 ==.
;	src/LCDInterface.c:106: void LCD_CMD_CLEAR()
;	-----------------------------------------
;	 function LCD_CMD_CLEAR
;	-----------------------------------------
_LCD_CMD_CLEAR:
	C$LCDInterface.c$108$1$56 ==.
;	src/LCDInterface.c:108: LCD_SEND_COMMAND(LCD_CLEARDISPLAY);
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$110$2$57 ==.
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
	C$LCDInterface.c$111$2$57 ==.
	XG$LCD_CMD_CLEAR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_CMD_SET_CURSOR'
;------------------------------------------------------------
;row                       Allocated with name '_LCD_CMD_SET_CURSOR_PARM_2'
;col                       Allocated to registers r7 
;------------------------------------------------------------
	G$LCD_CMD_SET_CURSOR$0$0 ==.
	C$LCDInterface.c$113$2$57 ==.
;	src/LCDInterface.c:113: void LCD_CMD_SET_CURSOR(unsigned char col, unsigned char row)
;	-----------------------------------------
;	 function LCD_CMD_SET_CURSOR
;	-----------------------------------------
_LCD_CMD_SET_CURSOR:
	mov	r7,dpl
	C$LCDInterface.c$115$1$60 ==.
;	src/LCDInterface.c:115: if (row >= LCD_MAX_ROW_COUNT)
	mov	a,#0x100 - 0x04
	add	a,_LCD_CMD_SET_CURSOR_PARM_2
	jnc	00102$
	C$LCDInterface.c$117$2$61 ==.
;	src/LCDInterface.c:117: row = (LCD_MAX_ROW_COUNT - 1);
	mov	_LCD_CMD_SET_CURSOR_PARM_2,#0x03
00102$:
	C$LCDInterface.c$120$1$60 ==.
;	src/LCDInterface.c:120: LCD_SEND_COMMAND(LCD_SETDDRAMADDR | (col + LCD_ROW_OFFSETS[row]));
	mov	a,_LCD_CMD_SET_CURSOR_PARM_2
	mov	dptr,#_LCD_ROW_OFFSETS
	movc	a,@a+dptr
	add	a,r7
	orl	a,#0x80
	mov	dpl,a
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$121$1$60 ==.
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
	C$LCDInterface.c$125$1$60 ==.
;	src/LCDInterface.c:125: void LCD_CMD_UPLOAD_CUSTOM_CHAR(unsigned char location, unsigned char charmap[])
;	-----------------------------------------
;	 function LCD_CMD_UPLOAD_CUSTOM_CHAR
;	-----------------------------------------
_LCD_CMD_UPLOAD_CUSTOM_CHAR:
	C$LCDInterface.c$128$1$63 ==.
;	src/LCDInterface.c:128: location &= 0x7; // we only have 8 locations 0-7
	C$LCDInterface.c$129$1$63 ==.
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
	C$LCDInterface.c$130$1$63 ==.
;	src/LCDInterface.c:130: for (i=0; i<8; i++)
	mov	r7,#0x00
00102$:
	C$LCDInterface.c$132$2$64 ==.
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
	C$LCDInterface.c$130$1$63 ==.
;	src/LCDInterface.c:130: for (i=0; i<8; i++)
	inc	r7
	cjne	r7,#0x08,00109$
00109$:
	jc	00102$
	C$LCDInterface.c$134$1$63 ==.
	XG$LCD_CMD_UPLOAD_CUSTOM_CHAR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_INIT'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$LCD_INIT$0$0 ==.
	C$LCDInterface.c$136$1$63 ==.
;	src/LCDInterface.c:136: void LCD_INIT()
;	-----------------------------------------
;	 function LCD_INIT
;	-----------------------------------------
_LCD_INIT:
	C$LCDInterface.c$141$2$66 ==.
;	src/LCDInterface.c:141: DelayMilliseconds(50)
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
	C$LCDInterface.c$147$1$65 ==.
;	src/LCDInterface.c:147: LCD_CLEAR_E();
	C$LCDInterface.c$148$1$65 ==.
;	src/LCDInterface.c:148: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
	jnz	00105$
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
	mov	dpl,a
	lcall	_ShiftRegisterChangePinState
	C$LCDInterface.c$156$2$68 ==.
;	src/LCDInterface.c:156: LCD_SEND_4BITS(0x02);
	mov	dpl,#0x02
	lcall	_LCD_SEND_4BITS
	C$LCDInterface.c$157$3$69 ==.
;	src/LCDInterface.c:157: DelayMilliseconds(5); // wait min 4.1ms
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
	C$LCDInterface.c$208$1$65 ==.
;	src/LCDInterface.c:208: LCD_SEND_COMMAND(LCD_FUNCTIONSET | LCD_4BITMODE | LCD_2LINE | LCD_5x8DOTS);
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	mov	dpl,#0x28
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$209$1$65 ==.
;	src/LCDInterface.c:209: LCD_SEND_COMMAND(LCD_FUNCTIONSET | LCD_4BITMODE | LCD_2LINE | LCD_5x8DOTS);
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	mov	dpl,#0x28
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$212$1$65 ==.
;	src/LCDInterface.c:212: LCD_SEND_COMMAND(LCD_DISPLAYCONTROL | LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF);
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	mov	dpl,#0x0C
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$214$1$65 ==.
;	src/LCDInterface.c:214: LCD_CMD_CLEAR();
	lcall	_LCD_CMD_CLEAR
	C$LCDInterface.c$217$1$65 ==.
;	src/LCDInterface.c:217: LCD_SEND_COMMAND(LCD_ENTRYMODESET | LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT);
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	mov	dpl,#0x06
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$218$1$65 ==.
	XG$LCD_INIT$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Print'
;------------------------------------------------------------
;str                       Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	FLEDBlink$Print$0$0 ==.
	C$LEDBlink.c$28$1$65 ==.
;	LEDBlink.c:28: static void Print(unsigned char* str)
;	-----------------------------------------
;	 function Print
;	-----------------------------------------
_Print:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$LEDBlink.c$30$1$72 ==.
;	LEDBlink.c:30: while(*str)
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
	C$LEDBlink.c$32$2$73 ==.
;	LEDBlink.c:32: LCD_SEND_DATA(*str);
	mov	_LCD_SEND_8BITS_PARM_2,#0x00
	mov	dpl,r4
	push	ar7
	push	ar6
	push	ar5
	lcall	_LCD_SEND_8BITS
	pop	ar5
	pop	ar6
	pop	ar7
	C$LEDBlink.c$33$2$73 ==.
;	LEDBlink.c:33: str++;
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00104$:
	C$LEDBlink.c$35$1$72 ==.
	XFLEDBlink$Print$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;buttonPressed             Allocated to registers 
;------------------------------------------------------------
	G$main$0$0 ==.
	C$LEDBlink.c$90$1$72 ==.
;	LEDBlink.c:90: int main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	C$LEDBlink.c$97$1$74 ==.
;	LEDBlink.c:97: ShiftRegisterInit();
	lcall	_ShiftRegisterInit
	C$LEDBlink.c$99$1$74 ==.
;	LEDBlink.c:99: LCD_INIT();
	lcall	_LCD_INIT
	C$LEDBlink.c$100$1$74 ==.
;	LEDBlink.c:100: LCD_INIT();
	lcall	_LCD_INIT
	C$LEDBlink.c$101$1$74 ==.
;	LEDBlink.c:101: LCD_INIT();
	lcall	_LCD_INIT
	C$LEDBlink.c$102$1$74 ==.
;	LEDBlink.c:102: LCD_CMD_SET_CURSOR(0, 0);
	mov	_LCD_CMD_SET_CURSOR_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_LCD_CMD_SET_CURSOR
	C$LEDBlink.c$103$1$74 ==.
;	LEDBlink.c:103: LCD_SEND_DATA('A');
	mov	_LCD_SEND_8BITS_PARM_2,#0x00
	mov	dpl,#0x41
	lcall	_LCD_SEND_8BITS
	C$LEDBlink.c$122$1$74 ==.
;	LEDBlink.c:122: while(1)
00107$:
	C$LEDBlink.c$137$2$75 ==.
;	LEDBlink.c:137: if (LEFT_BUTTON)
	jb	_P3_2,00107$
	C$LEDBlink.c$164$2$75 ==.
;	LEDBlink.c:164: else if (ROTATE_BUTTON)
	jnb	_P3_0,00107$
	C$LEDBlink.c$166$3$77 ==.
;	LEDBlink.c:166: LCD_CMD_CLEAR();
	lcall	_LCD_CMD_CLEAR
	C$LEDBlink.c$185$1$74 ==.
;	LEDBlink.c:185: return 0;
	sjmp	00107$
	C$LEDBlink.c$186$1$74 ==.
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
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
