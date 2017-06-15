;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
; This file was generated Sun Apr  9 21:41:56 2017
;--------------------------------------------------------
	.module Timing
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Delay1ms
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
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
;	Timing.c:7: void Delay1ms(void)
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
;	Timing.c:10: for(i = 0; i < (CPU_FREQUENCY_IN_KHZ / 128); i++)
	mov	r6,#0x2B
	mov	r7,#0x00
00104$:
	C$Timing.c$13$2$3 ==.
;	Timing.c:13: __asm__("nop");
	nop
	C$Timing.c$14$2$3 ==.
;	Timing.c:14: __asm__("nop");
	nop
	C$Timing.c$15$2$3 ==.
;	Timing.c:15: __asm__("nop");
	nop
	C$Timing.c$16$2$3 ==.
;	Timing.c:16: __asm__("nop");
	nop
	C$Timing.c$17$2$3 ==.
;	Timing.c:17: __asm__("nop");
	nop
	C$Timing.c$18$2$3 ==.
;	Timing.c:18: __asm__("nop");
	nop
	C$Timing.c$19$2$3 ==.
;	Timing.c:19: __asm__("nop");
	nop
	C$Timing.c$20$2$3 ==.
;	Timing.c:20: __asm__("nop");
	nop
	C$Timing.c$21$2$3 ==.
;	Timing.c:21: __asm__("nop");
	nop
	C$Timing.c$22$2$3 ==.
;	Timing.c:22: __asm__("nop");
	nop
	C$Timing.c$23$2$3 ==.
;	Timing.c:23: __asm__("nop");
	nop
	C$Timing.c$24$2$3 ==.
;	Timing.c:24: __asm__("nop");
	nop
	C$Timing.c$25$2$3 ==.
;	Timing.c:25: __asm__("nop");
	nop
	C$Timing.c$26$2$3 ==.
;	Timing.c:26: __asm__("nop");
	nop
	C$Timing.c$27$2$3 ==.
;	Timing.c:27: __asm__("nop");
	nop
	C$Timing.c$28$2$3 ==.
;	Timing.c:28: __asm__("nop");
	nop
	C$Timing.c$29$2$3 ==.
;	Timing.c:29: __asm__("nop");
	nop
	C$Timing.c$30$2$3 ==.
;	Timing.c:30: __asm__("nop");
	nop
	C$Timing.c$31$2$3 ==.
;	Timing.c:31: __asm__("nop");
	nop
	C$Timing.c$32$2$3 ==.
;	Timing.c:32: __asm__("nop");
	nop
	C$Timing.c$33$2$3 ==.
;	Timing.c:33: __asm__("nop");
	nop
	C$Timing.c$34$2$3 ==.
;	Timing.c:34: __asm__("nop");
	nop
	C$Timing.c$35$2$3 ==.
;	Timing.c:35: __asm__("nop");
	nop
	C$Timing.c$36$2$3 ==.
;	Timing.c:36: __asm__("nop");
	nop
	C$Timing.c$37$2$3 ==.
;	Timing.c:37: __asm__("nop");
	nop
	C$Timing.c$38$2$3 ==.
;	Timing.c:38: __asm__("nop");
	nop
	C$Timing.c$39$2$3 ==.
;	Timing.c:39: __asm__("nop");
	nop
	C$Timing.c$40$2$3 ==.
;	Timing.c:40: __asm__("nop");
	nop
	C$Timing.c$41$2$3 ==.
;	Timing.c:41: __asm__("nop");
	nop
	C$Timing.c$42$2$3 ==.
;	Timing.c:42: __asm__("nop");
	nop
	C$Timing.c$43$2$3 ==.
;	Timing.c:43: __asm__("nop");
	nop
	C$Timing.c$44$2$3 ==.
;	Timing.c:44: __asm__("nop");
	nop
	C$Timing.c$45$2$3 ==.
;	Timing.c:45: __asm__("nop");
	nop
	C$Timing.c$46$2$3 ==.
;	Timing.c:46: __asm__("nop");
	nop
	C$Timing.c$47$2$3 ==.
;	Timing.c:47: __asm__("nop");
	nop
	C$Timing.c$48$2$3 ==.
;	Timing.c:48: __asm__("nop");
	nop
	C$Timing.c$49$2$3 ==.
;	Timing.c:49: __asm__("nop");
	nop
	C$Timing.c$50$2$3 ==.
;	Timing.c:50: __asm__("nop");
	nop
	C$Timing.c$51$2$3 ==.
;	Timing.c:51: __asm__("nop");
	nop
	C$Timing.c$52$2$3 ==.
;	Timing.c:52: __asm__("nop");
	nop
	C$Timing.c$53$2$3 ==.
;	Timing.c:53: __asm__("nop");
	nop
	C$Timing.c$54$2$3 ==.
;	Timing.c:54: __asm__("nop");
	nop
	C$Timing.c$55$2$3 ==.
;	Timing.c:55: __asm__("nop");
	nop
	C$Timing.c$56$2$3 ==.
;	Timing.c:56: __asm__("nop");
	nop
	C$Timing.c$57$2$3 ==.
;	Timing.c:57: __asm__("nop");
	nop
	C$Timing.c$58$2$3 ==.
;	Timing.c:58: __asm__("nop");
	nop
	C$Timing.c$59$2$3 ==.
;	Timing.c:59: __asm__("nop");
	nop
	C$Timing.c$60$2$3 ==.
;	Timing.c:60: __asm__("nop");
	nop
	C$Timing.c$61$2$3 ==.
;	Timing.c:61: __asm__("nop");
	nop
	C$Timing.c$62$2$3 ==.
;	Timing.c:62: __asm__("nop");
	nop
	C$Timing.c$63$2$3 ==.
;	Timing.c:63: __asm__("nop");
	nop
	C$Timing.c$64$2$3 ==.
;	Timing.c:64: __asm__("nop");
	nop
	C$Timing.c$65$2$3 ==.
;	Timing.c:65: __asm__("nop");
	nop
	C$Timing.c$66$2$3 ==.
;	Timing.c:66: __asm__("nop");
	nop
	C$Timing.c$67$2$3 ==.
;	Timing.c:67: __asm__("nop");
	nop
	C$Timing.c$68$2$3 ==.
;	Timing.c:68: __asm__("nop");
	nop
	C$Timing.c$69$2$3 ==.
;	Timing.c:69: __asm__("nop");
	nop
	C$Timing.c$70$2$3 ==.
;	Timing.c:70: __asm__("nop");
	nop
	C$Timing.c$71$2$3 ==.
;	Timing.c:71: __asm__("nop");
	nop
	C$Timing.c$72$2$3 ==.
;	Timing.c:72: __asm__("nop");
	nop
	C$Timing.c$73$2$3 ==.
;	Timing.c:73: __asm__("nop");
	nop
	C$Timing.c$74$2$3 ==.
;	Timing.c:74: __asm__("nop");
	nop
	C$Timing.c$75$2$3 ==.
;	Timing.c:75: __asm__("nop");
	nop
	C$Timing.c$76$2$3 ==.
;	Timing.c:76: __asm__("nop");
	nop
	C$Timing.c$77$2$3 ==.
;	Timing.c:77: __asm__("nop");
	nop
	C$Timing.c$78$2$3 ==.
;	Timing.c:78: __asm__("nop");
	nop
	C$Timing.c$79$2$3 ==.
;	Timing.c:79: __asm__("nop");
	nop
	C$Timing.c$80$2$3 ==.
;	Timing.c:80: __asm__("nop");
	nop
	C$Timing.c$81$2$3 ==.
;	Timing.c:81: __asm__("nop");
	nop
	C$Timing.c$82$2$3 ==.
;	Timing.c:82: __asm__("nop");
	nop
	C$Timing.c$83$2$3 ==.
;	Timing.c:83: __asm__("nop");
	nop
	C$Timing.c$84$2$3 ==.
;	Timing.c:84: __asm__("nop");
	nop
	C$Timing.c$85$2$3 ==.
;	Timing.c:85: __asm__("nop");
	nop
	C$Timing.c$86$2$3 ==.
;	Timing.c:86: __asm__("nop");
	nop
	C$Timing.c$87$2$3 ==.
;	Timing.c:87: __asm__("nop");
	nop
	C$Timing.c$88$2$3 ==.
;	Timing.c:88: __asm__("nop");
	nop
	C$Timing.c$89$2$3 ==.
;	Timing.c:89: __asm__("nop");
	nop
	C$Timing.c$90$2$3 ==.
;	Timing.c:90: __asm__("nop");
	nop
	C$Timing.c$91$2$3 ==.
;	Timing.c:91: __asm__("nop");
	nop
	C$Timing.c$92$2$3 ==.
;	Timing.c:92: __asm__("nop");
	nop
	C$Timing.c$93$2$3 ==.
;	Timing.c:93: __asm__("nop");
	nop
	C$Timing.c$94$2$3 ==.
;	Timing.c:94: __asm__("nop");
	nop
	C$Timing.c$95$2$3 ==.
;	Timing.c:95: __asm__("nop");
	nop
	C$Timing.c$96$2$3 ==.
;	Timing.c:96: __asm__("nop");
	nop
	C$Timing.c$97$2$3 ==.
;	Timing.c:97: __asm__("nop");
	nop
	C$Timing.c$98$2$3 ==.
;	Timing.c:98: __asm__("nop");
	nop
	C$Timing.c$99$2$3 ==.
;	Timing.c:99: __asm__("nop");
	nop
	C$Timing.c$100$2$3 ==.
;	Timing.c:100: __asm__("nop");
	nop
	C$Timing.c$101$2$3 ==.
;	Timing.c:101: __asm__("nop");
	nop
	C$Timing.c$102$2$3 ==.
;	Timing.c:102: __asm__("nop");
	nop
	C$Timing.c$103$2$3 ==.
;	Timing.c:103: __asm__("nop");
	nop
	C$Timing.c$104$2$3 ==.
;	Timing.c:104: __asm__("nop");
	nop
	C$Timing.c$105$2$3 ==.
;	Timing.c:105: __asm__("nop");
	nop
	C$Timing.c$106$2$3 ==.
;	Timing.c:106: __asm__("nop");
	nop
	C$Timing.c$107$2$3 ==.
;	Timing.c:107: __asm__("nop");
	nop
	C$Timing.c$108$2$3 ==.
;	Timing.c:108: __asm__("nop");
	nop
	C$Timing.c$109$2$3 ==.
;	Timing.c:109: __asm__("nop");
	nop
	C$Timing.c$110$2$3 ==.
;	Timing.c:110: __asm__("nop");
	nop
	C$Timing.c$111$2$3 ==.
;	Timing.c:111: __asm__("nop");
	nop
	C$Timing.c$112$2$3 ==.
;	Timing.c:112: __asm__("nop");
	nop
	C$Timing.c$113$2$3 ==.
;	Timing.c:113: __asm__("nop");
	nop
	C$Timing.c$114$2$3 ==.
;	Timing.c:114: __asm__("nop");
	nop
	C$Timing.c$115$2$3 ==.
;	Timing.c:115: __asm__("nop");
	nop
	C$Timing.c$116$2$3 ==.
;	Timing.c:116: __asm__("nop");
	nop
	C$Timing.c$117$2$3 ==.
;	Timing.c:117: __asm__("nop");
	nop
	C$Timing.c$118$2$3 ==.
;	Timing.c:118: __asm__("nop");
	nop
	C$Timing.c$119$2$3 ==.
;	Timing.c:119: __asm__("nop");
	nop
	C$Timing.c$120$2$3 ==.
;	Timing.c:120: __asm__("nop");
	nop
	C$Timing.c$121$2$3 ==.
;	Timing.c:121: __asm__("nop");
	nop
	C$Timing.c$122$2$3 ==.
;	Timing.c:122: __asm__("nop");
	nop
	C$Timing.c$123$2$3 ==.
;	Timing.c:123: __asm__("nop");
	nop
	C$Timing.c$124$2$3 ==.
;	Timing.c:124: __asm__("nop");
	nop
	C$Timing.c$125$2$3 ==.
;	Timing.c:125: __asm__("nop");
	nop
	C$Timing.c$126$2$3 ==.
;	Timing.c:126: __asm__("nop");
	nop
	C$Timing.c$127$2$3 ==.
;	Timing.c:127: __asm__("nop");
	nop
	dec	r6
	cjne	r6,#0xFF,00111$
	dec	r7
00111$:
	C$Timing.c$10$2$3 ==.
;	Timing.c:10: for(i = 0; i < (CPU_FREQUENCY_IN_KHZ / 128); i++)
	mov	a,r6
	orl	a,r7
	jnz	00104$
	C$Timing.c$129$1$2 ==.
	XG$Delay1ms$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
