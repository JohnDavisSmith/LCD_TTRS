#include "ShiftRegister.h"
#include "IOPins.h"
#include "Timing.h"

//////////////////////////////////////////////////////////
//              SHIFT REGISTER OUTPUT PINS              //
//////////////////////////////////////////////////////////
#define SHIFT_REG_CLOCK_PIN P3_5
#define SHIFT_REG_VALUE_PIN P3_3
#define STORE_REG_CLOCK_PIN P3_4
//////////////////////////////////////////////////////////

void ShiftRegisterInit()
{
    CONFIGURE_PORT3_PIN(2, PORT_PINT_CONFIG_INPUT_ONLY);
    CONFIGURE_PORT3_PIN(1, PORT_PINT_CONFIG_INPUT_ONLY);
    CONFIGURE_PORT3_PIN(0, PORT_PINT_CONFIG_INPUT_ONLY);
    CONFIGURE_PORT3_PIN(3, PORT_PINT_CONFIG_PUSH_PULL_OUTPUT);
    CONFIGURE_PORT3_PIN(4, PORT_PINT_CONFIG_PUSH_PULL_OUTPUT);
	CONFIGURE_PORT3_PIN(5, PORT_PINT_CONFIG_PUSH_PULL_OUTPUT);

    SET_PIN_LOW(SHIFT_REG_VALUE_PIN);
    SET_PIN_LOW(SHIFT_REG_CLOCK_PIN);
    SET_PIN_LOW(SHIFT_REG_CLOCK_PIN);

    ShiftRegisterChangePinState(0x00);
    Delay1ms();
}

void ShiftRegisterChangePinState(unsigned char value)
{
    unsigned char i;
    for(i = 0; i < 8; i++)
    {
        // Set the bit value to be clocked in
        if (((value >> (7 - i)) & (unsigned char)0x01))
        {
            SET_PIN_HIGH(SHIFT_REG_VALUE_PIN);
        }
        else
        {
            SET_PIN_LOW(SHIFT_REG_VALUE_PIN);
        }

        // Clock in the bit value
        SET_PIN_HIGH(SHIFT_REG_CLOCK_PIN);
        SET_PIN_LOW(SHIFT_REG_CLOCK_PIN);
    }

    SET_PIN_LOW(SHIFT_REG_VALUE_PIN);

    // Transfer shift register to the store register (i.e. make the chip output the new values)
    SET_PIN_HIGH(STORE_REG_CLOCK_PIN);
    SET_PIN_LOW(STORE_REG_CLOCK_PIN);
}