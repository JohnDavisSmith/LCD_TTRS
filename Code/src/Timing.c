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