;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
; This file was generated Tue May  9 00:25:24 2017
;--------------------------------------------------------
	.module LCDInterface
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _LCD_ROW_OFFSETS
	.globl _Delay1ms
	.globl _ShiftRegisterChangePinState
	.globl _LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2
	.globl _LCD_CMD_SET_CURSOR_PARM_2
	.globl _LCD_SEND_8BITS_PARM_2
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
FLCDInterface$LCD_PINS_SHIFT_REG_VALUES$0$0==.
_LCD_PINS_SHIFT_REG_VALUES:
	.ds 1
LLCDInterface.LCD_SEND_8BITS$isCommand$1$20==.
_LCD_SEND_8BITS_PARM_2:
	.ds 1
LLCDInterface.LCD_CMD_SET_CURSOR$row$1$27==.
_LCD_CMD_SET_CURSOR_PARM_2:
	.ds 1
LLCDInterface.LCD_CMD_UPLOAD_CUSTOM_CHAR$charmap$1$30==.
_LCD_CMD_UPLOAD_CUSTOM_CHAR_PARM_2:
	.ds 3
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
	C$LCDInterface.c$6$1$33 ==.
;	LCDInterface.c:6: static unsigned char LCD_PINS_SHIFT_REG_VALUES = 0x00;
	mov	_LCD_PINS_SHIFT_REG_VALUES,#0x00
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
;Allocation info for local variables in function 'LCD_PULSE_ENABLE_PIN'
;------------------------------------------------------------
	FLCDInterface$LCD_PULSE_ENABLE_PIN$0$0 ==.
	C$LCDInterface.c$35$0$0 ==.
;	LCDInterface.c:35: static void LCD_PULSE_ENABLE_PIN()
;	-----------------------------------------
;	 function LCD_PULSE_ENABLE_PIN
;	-----------------------------------------
_LCD_PULSE_ENABLE_PIN:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$LCDInterface.c$37$1$6 ==.
;	LCDInterface.c:37: LCD_CLEAR_E();
	mov	r7,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xFB
	anl	a,r7
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
	C$LCDInterface.c$38$1$6 ==.
;	LCDInterface.c:38: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
	lcall	_ShiftRegisterChangePinState
	C$LCDInterface.c$39$2$7 ==.
;	LCDInterface.c:39: Delay1us();
	nop
	nop
	nop
	nop
	nop
	C$LCDInterface.c$41$1$6 ==.
;	LCDInterface.c:41: LCD_SET_E();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x04
	C$LCDInterface.c$42$1$6 ==.
;	LCDInterface.c:42: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
	lcall	_ShiftRegisterChangePinState
	C$LCDInterface.c$43$2$8 ==.
;	LCDInterface.c:43: Delay1us();
	nop
	nop
	nop
	nop
	nop
	C$LCDInterface.c$45$1$6 ==.
;	LCDInterface.c:45: LCD_CLEAR_E();
	mov	r7,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xFB
	anl	a,r7
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
	C$LCDInterface.c$46$1$6 ==.
;	LCDInterface.c:46: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
	lcall	_ShiftRegisterChangePinState
	C$LCDInterface.c$47$2$9 ==.
;	LCDInterface.c:47: Delay1us();
	nop
	nop
	nop
	nop
	nop
	C$LCDInterface.c$48$2$9 ==.
	XFLCDInterface$LCD_PULSE_ENABLE_PIN$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_SEND_4BITS'
;------------------------------------------------------------
;value                     Allocated to registers r7 
;------------------------------------------------------------
	G$LCD_SEND_4BITS$0$0 ==.
	C$LCDInterface.c$50$2$9 ==.
;	LCDInterface.c:50: void LCD_SEND_4BITS(unsigned char value)
;	-----------------------------------------
;	 function LCD_SEND_4BITS
;	-----------------------------------------
_LCD_SEND_4BITS:
	C$LCDInterface.c$52$1$11 ==.
;	LCDInterface.c:52: if ((value) & 0x01)
	mov	a,dpl
	mov	r7,a
	jnb	acc.0,00102$
	C$LCDInterface.c$54$2$12 ==.
;	LCDInterface.c:54: LCD_SET_D4();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x08
	sjmp	00103$
00102$:
	C$LCDInterface.c$58$2$13 ==.
;	LCDInterface.c:58: LCD_CLEAR_D4();
	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xF7
	anl	a,r6
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
00103$:
	C$LCDInterface.c$61$1$11 ==.
;	LCDInterface.c:61: if ((value) & 0x02)
	mov	a,r7
	jnb	acc.1,00105$
	C$LCDInterface.c$63$2$14 ==.
;	LCDInterface.c:63: LCD_SET_D5();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x10
	sjmp	00106$
00105$:
	C$LCDInterface.c$67$2$15 ==.
;	LCDInterface.c:67: LCD_CLEAR_D5();
	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xEF
	anl	a,r6
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
00106$:
	C$LCDInterface.c$70$1$11 ==.
;	LCDInterface.c:70: if ((value) & 0x04)
	mov	a,r7
	jnb	acc.2,00108$
	C$LCDInterface.c$72$2$16 ==.
;	LCDInterface.c:72: LCD_SET_D6();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x20
	sjmp	00109$
00108$:
	C$LCDInterface.c$76$2$17 ==.
;	LCDInterface.c:76: LCD_CLEAR_D6();
	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xDF
	anl	a,r6
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
00109$:
	C$LCDInterface.c$79$1$11 ==.
;	LCDInterface.c:79: if ((value) & 0x08)
	mov	a,r7
	jnb	acc.3,00111$
	C$LCDInterface.c$81$2$18 ==.
;	LCDInterface.c:81: LCD_SET_D7();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x40
	sjmp	00112$
00111$:
	C$LCDInterface.c$85$2$19 ==.
;	LCDInterface.c:85: LCD_CLEAR_D7();
	mov	r7,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xBF
	anl	a,r7
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
00112$:
	C$LCDInterface.c$88$1$11 ==.
;	LCDInterface.c:88: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
	mov	dpl,_LCD_PINS_SHIFT_REG_VALUES
	lcall	_ShiftRegisterChangePinState
	C$LCDInterface.c$89$1$11 ==.
;	LCDInterface.c:89: LCD_PULSE_ENABLE_PIN();
	lcall	_LCD_PULSE_ENABLE_PIN
	C$LCDInterface.c$90$1$11 ==.
	XG$LCD_SEND_4BITS$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_SEND_8BITS'
;------------------------------------------------------------
;isCommand                 Allocated with name '_LCD_SEND_8BITS_PARM_2'
;value                     Allocated to registers r7 
;------------------------------------------------------------
	G$LCD_SEND_8BITS$0$0 ==.
	C$LCDInterface.c$92$1$11 ==.
;	LCDInterface.c:92: void LCD_SEND_8BITS(unsigned char value, unsigned char isCommand)
;	-----------------------------------------
;	 function LCD_SEND_8BITS
;	-----------------------------------------
_LCD_SEND_8BITS:
	mov	r7,dpl
	C$LCDInterface.c$94$1$21 ==.
;	LCDInterface.c:94: if (isCommand)
	mov	a,_LCD_SEND_8BITS_PARM_2
	jz	00102$
	C$LCDInterface.c$96$2$22 ==.
;	LCDInterface.c:96: LCD_CLEAR_RS();
	mov	r6,_LCD_PINS_SHIFT_REG_VALUES
	mov	a,#0xFD
	anl	a,r6
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
	sjmp	00103$
00102$:
	C$LCDInterface.c$100$2$23 ==.
;	LCDInterface.c:100: LCD_SET_RS();
	orl	_LCD_PINS_SHIFT_REG_VALUES,#0x02
00103$:
	C$LCDInterface.c$102$1$21 ==.
;	LCDInterface.c:102: LCD_SEND_4BITS((unsigned char)(((value) >> 4) & 0x0F));
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
	C$LCDInterface.c$103$1$21 ==.
;	LCDInterface.c:103: LCD_SEND_4BITS((unsigned char)((value) & 0x0F));
	mov	a,#0x0F
	anl	a,r7
	mov	dpl,a
	lcall	_LCD_SEND_4BITS
	C$LCDInterface.c$104$1$21 ==.
	XG$LCD_SEND_8BITS$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_CMD_CLEAR'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$LCD_CMD_CLEAR$0$0 ==.
	C$LCDInterface.c$106$1$21 ==.
;	LCDInterface.c:106: void LCD_CMD_CLEAR()
;	-----------------------------------------
;	 function LCD_CMD_CLEAR
;	-----------------------------------------
_LCD_CMD_CLEAR:
	C$LCDInterface.c$108$1$24 ==.
;	LCDInterface.c:108: LCD_SEND_COMMAND(LCD_CLEARDISPLAY);
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$110$2$25 ==.
;	LCDInterface.c:110: DelayMilliseconds(5);
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
	C$LCDInterface.c$111$2$25 ==.
	XG$LCD_CMD_CLEAR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_CMD_SET_CURSOR'
;------------------------------------------------------------
;row                       Allocated with name '_LCD_CMD_SET_CURSOR_PARM_2'
;col                       Allocated to registers r7 
;------------------------------------------------------------
	G$LCD_CMD_SET_CURSOR$0$0 ==.
	C$LCDInterface.c$113$2$25 ==.
;	LCDInterface.c:113: void LCD_CMD_SET_CURSOR(unsigned char col, unsigned char row)
;	-----------------------------------------
;	 function LCD_CMD_SET_CURSOR
;	-----------------------------------------
_LCD_CMD_SET_CURSOR:
	mov	r7,dpl
	C$LCDInterface.c$115$1$28 ==.
;	LCDInterface.c:115: if (row >= LCD_MAX_ROW_COUNT)
	mov	a,#0x100 - 0x04
	add	a,_LCD_CMD_SET_CURSOR_PARM_2
	jnc	00102$
	C$LCDInterface.c$117$2$29 ==.
;	LCDInterface.c:117: row = (LCD_MAX_ROW_COUNT - 1);
	mov	_LCD_CMD_SET_CURSOR_PARM_2,#0x03
00102$:
	C$LCDInterface.c$120$1$28 ==.
;	LCDInterface.c:120: LCD_SEND_COMMAND(LCD_SETDDRAMADDR | (col + LCD_ROW_OFFSETS[row]));
	mov	a,_LCD_CMD_SET_CURSOR_PARM_2
	mov	dptr,#_LCD_ROW_OFFSETS
	movc	a,@a+dptr
	add	a,r7
	orl	a,#0x80
	mov	dpl,a
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$121$1$28 ==.
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
	C$LCDInterface.c$125$1$28 ==.
;	LCDInterface.c:125: void LCD_CMD_UPLOAD_CUSTOM_CHAR(unsigned char location, unsigned char charmap[])
;	-----------------------------------------
;	 function LCD_CMD_UPLOAD_CUSTOM_CHAR
;	-----------------------------------------
_LCD_CMD_UPLOAD_CUSTOM_CHAR:
	C$LCDInterface.c$128$1$31 ==.
;	LCDInterface.c:128: location &= 0x7; // we only have 8 locations 0-7
	C$LCDInterface.c$129$1$31 ==.
;	LCDInterface.c:129: LCD_SEND_COMMAND(LCD_SETCGRAMADDR | (location << 3));
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
	C$LCDInterface.c$130$1$31 ==.
;	LCDInterface.c:130: for (i=0; i<8; i++)
	mov	r7,#0x00
00102$:
	C$LCDInterface.c$132$2$32 ==.
;	LCDInterface.c:132: LCD_SEND_DATA(charmap[i]);
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
	C$LCDInterface.c$130$1$31 ==.
;	LCDInterface.c:130: for (i=0; i<8; i++)
	inc	r7
	cjne	r7,#0x08,00109$
00109$:
	jc	00102$
	C$LCDInterface.c$134$1$31 ==.
	XG$LCD_CMD_UPLOAD_CUSTOM_CHAR$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'LCD_INIT'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;i                         Allocated to registers r6 r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
	G$LCD_INIT$0$0 ==.
	C$LCDInterface.c$136$1$31 ==.
;	LCDInterface.c:136: void LCD_INIT()
;	-----------------------------------------
;	 function LCD_INIT
;	-----------------------------------------
_LCD_INIT:
	C$LCDInterface.c$141$2$34 ==.
;	LCDInterface.c:141: DelayMilliseconds(70)
	mov	r6,#0x46
	mov	r7,#0x00
00106$:
	push	ar7
	push	ar6
	lcall	_Delay1ms
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xFF,00133$
	dec	r7
00133$:
	mov	a,r6
	orl	a,r7
	C$LCDInterface.c$147$1$33 ==.
;	LCDInterface.c:147: LCD_CLEAR_E();
	C$LCDInterface.c$148$1$33 ==.
;	LCDInterface.c:148: ShiftRegisterChangePinState(LCD_PINS_SHIFT_REG_VALUES);
	jnz	00106$
	mov	_LCD_PINS_SHIFT_REG_VALUES,a
	mov	dpl,a
	lcall	_ShiftRegisterChangePinState
	C$LCDInterface.c$154$2$36 ==.
;	LCDInterface.c:154: LCD_SEND_4BITS(0x03);
	mov	dpl,#0x03
	lcall	_LCD_SEND_4BITS
	C$LCDInterface.c$155$3$37 ==.
;	LCDInterface.c:155: DelayMilliseconds(5); // wait min 4.1ms
	mov	r6,#0x05
	mov	r7,#0x00
00109$:
	push	ar7
	push	ar6
	lcall	_Delay1ms
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xFF,00135$
	dec	r7
00135$:
	mov	a,r6
	orl	a,r7
	jnz	00109$
	C$LCDInterface.c$158$2$36 ==.
;	LCDInterface.c:158: LCD_SEND_4BITS(0x03);
	mov	dpl,#0x03
	lcall	_LCD_SEND_4BITS
	C$LCDInterface.c$159$3$39 ==.
;	LCDInterface.c:159: DelayMilliseconds(5); // wait min 4.1ms
	mov	r6,#0x05
	mov	r7,#0x00
00112$:
	push	ar7
	push	ar6
	lcall	_Delay1ms
	pop	ar6
	pop	ar7
	dec	r6
	cjne	r6,#0xFF,00137$
	dec	r7
00137$:
	mov	a,r6
	orl	a,r7
	jnz	00112$
	C$LCDInterface.c$162$2$36 ==.
;	LCDInterface.c:162: LCD_SEND_4BITS(0x03);
	mov	dpl,#0x03
	lcall	_LCD_SEND_4BITS
	C$LCDInterface.c$163$2$36 ==.
;	LCDInterface.c:163: Delay1ms();
	lcall	_Delay1ms
	C$LCDInterface.c$166$2$36 ==.
;	LCDInterface.c:166: LCD_SEND_4BITS(0x02);
	mov	dpl,#0x02
	lcall	_LCD_SEND_4BITS
	C$LCDInterface.c$170$1$33 ==.
;	LCDInterface.c:170: LCD_SEND_COMMAND(LCD_FUNCTIONSET | LCD_4BITMODE | LCD_2LINE | LCD_5x8DOTS);
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	mov	dpl,#0x28
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$173$1$33 ==.
;	LCDInterface.c:173: LCD_SEND_COMMAND(LCD_DISPLAYCONTROL | LCD_DISPLAYON | LCD_CURSOROFF | LCD_BLINKOFF);
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	mov	dpl,#0x0C
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$175$1$33 ==.
;	LCDInterface.c:175: LCD_CMD_CLEAR();
	lcall	_LCD_CMD_CLEAR
	C$LCDInterface.c$178$1$33 ==.
;	LCDInterface.c:178: LCD_SEND_COMMAND(LCD_ENTRYMODESET | LCD_ENTRYLEFT | LCD_ENTRYSHIFTDECREMENT);
	mov	_LCD_SEND_8BITS_PARM_2,#0x01
	mov	dpl,#0x06
	lcall	_LCD_SEND_8BITS
	C$LCDInterface.c$179$1$33 ==.
	XG$LCD_INIT$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
G$LCD_ROW_OFFSETS$0$0 == .
_LCD_ROW_OFFSETS:
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x10	; 16
	.db #0x50	; 80	'P'
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
