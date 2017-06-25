#include "Timing.h"
#include "GlobalParameters.h"

/**
 * One instruction is one clock cycle. (CPU_CLOCK / 1000) nop instructions in one millisecond
 */
void Delay1ms(void)
{
    unsigned short i = 0;
    for(i = 0; i < (CPU_FREQUENCY_IN_KHZ / 128); i++)
    {
        // 115 nop instructions below. Its not 128 as expected, because instructions take a little bit longer to execute than expected
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    	__asm__("nop");
    }
}

static volatile unsigned int SystemTimeInMs = 0;

void tm0_isr() __interrupt (1) __using (1)
{
    SystemTimeInMs++;
}

void Start1MsSystemTimer()
{
    #define T1MS (65536-CPU_FREQUENCY_IN_KHZ) // 1T mode, 18.432KHz

    AUXR |= 0x80;
    TMOD = 0x00; // Set T0 as 16-bit auto-reload timer/counter
    TL0 = T1MS;  // Initialize the timing value
    TH0 = (T1MS >> 8);  
    TR0 = 1;     // Run T0
    ET0 = 1;     // Enable T0 interrupt
    EA = 1;
}

unsigned int GetSystemTimeInMs()
{
    return SystemTimeInMs;
}