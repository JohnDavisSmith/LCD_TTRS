#ifndef TIMING_H_INCLUDED
#define TIMING_H_INCLUDED

void Delay1ms();

#define Delay1us()\
{\
    __asm__("nop");\
    __asm__("nop");\
    __asm__("nop");\
    __asm__("nop");\
    __asm__("nop");\
}

#define DelayMilliseconds(N)\
{\
    unsigned short i;\
    for(i = 0; i < (N); i++)\
    {\
        Delay1ms();\
    }\
}

#endif // TIMING_H_INCLUDED