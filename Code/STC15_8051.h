#ifndef REG8051_H_INCLUDED
#define REG8051_H_INCLUDED

/*  BYTE Register  */
__sfr __at (0x80) P0   ;
__sfr __at (0x81) SP   ;
__sfr __at (0x82) DPL  ;
__sfr __at (0x83) DPH  ;
__sfr __at (0x87) PCON ;
__sfr __at (0x88) TCON ;
__sfr __at (0x89) TMOD ;
__sfr __at (0x8A) TL0  ;
__sfr __at (0x8B) TL1  ;
__sfr __at (0x8C) TH0  ;
__sfr __at (0x8D) TH1  ;
__sfr __at (0x90) P1   ;
__sfr __at (0x98) SCON ;
__sfr __at (0x99) SBUF ;
__sfr __at (0xA0) P2   ;
__sfr __at (0xA8) IE   ;
__sfr __at (0xB0) P3   ;
__sfr __at (0xB8) IP   ;
__sfr __at (0xD0) PSW  ;
__sfr __at (0xE0) ACC  ;
__sfr __at (0xF0) B    ;


/* I/O Ports Configuration BYTE Register */
__sfr __at (0x94) P0M0 ;
__sfr __at (0x93) P0M1 ;
__sfr __at (0x92) P1M0 ;
__sfr __at (0x91) P1M1 ;
__sfr __at (0x96) P2M0 ;
__sfr __at (0x95) P2M1 ;
__sfr __at (0xB2) P3M0 ;
__sfr __at (0xB1) P3M1 ;
__sfr __at (0xB4) P4M0 ;
__sfr __at (0xB3) P4M1 ;
__sfr __at (0xCA) P5M0 ;
__sfr __at (0xC9) P5M1 ;

#define PORT_PINT_CONFIG_QUASI_BIDIRECTIONAL (0x00)
#define PORT_PINT_CONFIG_PUSH_PULL_OUTPUT (0x01)
#define PORT_PINT_CONFIG_INPUT_ONLY (0x10)
#define PORT_PINT_CONFIG_OPEN_DRAIN (0x11)

#define VARIABLE 3
#define PORT_PIN_CFG_REG_NAME_PASTER(x,y) P ## x ## M ## y
#define PORT_PIN_CFG_REG_NAME_EVALUATOR(portID,pinID)  PORT_PIN_CFG_REG_NAME_PASTER(portID,pinID)
#define NAME(fun) EVALUATOR(fun, VARIABLE)

#define CONFIGURE_PORT_PIN(portID, pinID, configValue)\
{\
unsigned char tempValReg0 = PORT_PIN_CFG_REG_NAME_EVALUATOR(portID, 0);\
unsigned char tempValReg1 = PORT_PIN_CFG_REG_NAME_EVALUATOR(portID, 1);\
tempValReg0 &= ~((unsigned char)1 << pinID);\
tempValReg0 |= (unsigned char)((unsigned char)(configValue & 0x01u) << pinID);\
tempValReg1 &= ~((unsigned char)1 << pinID);\
tempValReg1 |= (unsigned char)((unsigned char)((configValue >> 4) & 0x01u) << pinID);\
PORT_PIN_CFG_REG_NAME_EVALUATOR(portID, 0) = tempValReg0;\
PORT_PIN_CFG_REG_NAME_EVALUATOR(portID, 1) = tempValReg1;\
}

#define CONFIGURE_PORT0_PIN(pinID, configValue) CONFIGURE_PORT_PIN(0, pinID, configValue)
#define CONFIGURE_PORT1_PIN(pinID, configValue) CONFIGURE_PORT_PIN(1, pinID, configValue)
#define CONFIGURE_PORT2_PIN(pinID, configValue) CONFIGURE_PORT_PIN(2, pinID, configValue)
#define CONFIGURE_PORT3_PIN(pinID, configValue) CONFIGURE_PORT_PIN(3, pinID, configValue)
#define CONFIGURE_PORT4_PIN(pinID, configValue) CONFIGURE_PORT_PIN(4, pinID, configValue)
#define CONFIGURE_PORT5_PIN(pinID, configValue) CONFIGURE_PORT_PIN(5, pinID, configValue)

/*  BIT Register  */
/* P0 */
__sbit __at (0x80) P0_0 ;
__sbit __at (0x81) P0_1 ;
__sbit __at (0x82) P0_2 ;
__sbit __at (0x83) P0_3 ;
__sbit __at (0x84) P0_4 ;
__sbit __at (0x85) P0_5 ;
__sbit __at (0x86) P0_6 ;
__sbit __at (0x87) P0_7 ;

/*  TCON  */
__sbit __at (0x88) IT0  ;
__sbit __at (0x89) IE0  ;
__sbit __at (0x8A) IT1  ;
__sbit __at (0x8B) IE1  ;
__sbit __at (0x8C) TR0  ;
__sbit __at (0x8D) TF0  ;
__sbit __at (0x8E) TR1  ;
__sbit __at (0x8F) TF1  ;

/* P1 */
__sbit __at (0x90) P1_0 ;
__sbit __at (0x91) P1_1 ;
__sbit __at (0x92) P1_2 ;
__sbit __at (0x93) P1_3 ;
__sbit __at (0x94) P1_4 ;
__sbit __at (0x95) P1_5 ;
__sbit __at (0x96) P1_6 ;
__sbit __at (0x97) P1_7 ;

/*  SCON  */
__sbit __at (0x98) RI   ;
__sbit __at (0x99) TI   ;
__sbit __at (0x9A) RB8  ;
__sbit __at (0x9B) TB8  ;
__sbit __at (0x9C) REN  ;
__sbit __at (0x9D) SM2  ;
__sbit __at (0x9E) SM1  ;
__sbit __at (0x9F) SM0  ;

/* P2 */
__sbit __at (0xA0) P2_0 ;
__sbit __at (0xA1) P2_1 ;
__sbit __at (0xA2) P2_2 ;
__sbit __at (0xA3) P2_3 ;
__sbit __at (0xA4) P2_4 ;
__sbit __at (0xA5) P2_5 ;
__sbit __at (0xA6) P2_6 ;
__sbit __at (0xA7) P2_7 ;

/*  IE   */
__sbit __at (0xA8) EX0  ;
__sbit __at (0xA9) ET0  ;
__sbit __at (0xAA) EX1  ;
__sbit __at (0xAB) ET1  ;
__sbit __at (0xAC) ES   ;
__sbit __at (0xAF) EA   ;

/*  P3  */
__sbit __at (0xB0) P3_0 ;
__sbit __at (0xB1) P3_1 ;
__sbit __at (0xB2) P3_2 ;
__sbit __at (0xB3) P3_3 ;
__sbit __at (0xB4) P3_4 ;
__sbit __at (0xB5) P3_5 ;
__sbit __at (0xB6) P3_6 ;
__sbit __at (0xB7) P3_7 ;

__sbit __at (0xB0) RXD  ;
__sbit __at (0xB1) TXD  ;
__sbit __at (0xB2) INT0 ;
__sbit __at (0xB3) INT1 ;
__sbit __at (0xB4) T0   ;
__sbit __at (0xB5) T1   ;
__sbit __at (0xB6) WR   ;
__sbit __at (0xB7) RD   ;

/*  IP   */
__sbit __at (0xB8) PX0  ;
__sbit __at (0xB9) PT0  ;
__sbit __at (0xBA) PX1  ;
__sbit __at (0xBB) PT1  ;
__sbit __at (0xBC) PS   ;

/*  PSW   */
__sbit __at (0xD0) P    ;
__sbit __at (0xD1) F1   ;
__sbit __at (0xD2) OV   ;
__sbit __at (0xD3) RS0  ;
__sbit __at (0xD4) RS1  ;
__sbit __at (0xD5) F0   ;
__sbit __at (0xD6) AC   ;
__sbit __at (0xD7) CY   ;

/* BIT definitions for bits that are not directly accessible */
/* PCON bits */
#define IDL             0x01
#define PD              0x02
#define GF0             0x04
#define GF1             0x08
#define SMOD            0x80

/* TMOD bits */
#define T0_M0           0x01
#define T0_M1           0x02
#define T0_CT           0x04
#define T0_GATE         0x08
#define T1_M0           0x10
#define T1_M1           0x20
#define T1_CT           0x40
#define T1_GATE         0x80

#define T0_MASK         0x0F
#define T1_MASK         0xF0

/* Interrupt numbers: address = (number * 8) + 3 */
#define IE0_VECTOR      0       /* 0x03 external interrupt 0 */
#define TF0_VECTOR      1       /* 0x0b timer 0 */
#define IE1_VECTOR      2       /* 0x13 external interrupt 1 */
#define TF1_VECTOR      3       /* 0x1b timer 1 */
#define SI0_VECTOR      4       /* 0x23 serial port 0 */

#endif // REG8051_H_INCLUDED