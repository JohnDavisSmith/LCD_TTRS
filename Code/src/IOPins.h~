#ifndef IO_PINS_H_INCLUDED
#define IO_PINS_H_INCLUDED

#include "GlobalParameters.h"
#include <STC15_8051.h>

#define SET_PIN_HIGH(pin)\
{\
    (pin) = LOGIC_HIGH_VALUE;\
    __asm__("nop");\
    __asm__("nop");\
    __asm__("nop");\
    __asm__("nop");\
    __asm__("nop");\
    __asm__("nop");\
    __asm__("nop");\
    __asm__("nop");\
    __asm__("nop");\
}

#define SET_PIN_LOW(pin)\
{\
    (pin) = LOGIC_LOW_VALUE;\
    Delay1us();\
}

#endif // IO_PINS_H_INCLUDED
