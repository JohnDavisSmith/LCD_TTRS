#ifndef GLOBAL_PARAMETERS_H_INCLUDED
#define GLOBAL_PARAMETERS_H_INCLUDED

#define CPU_FREQUENCY_IN_KHZ (5530u)

#define LOGIC_HIGH_VALUE 1 /* Set to 0 when using inverted logic, set to 1 when using normal logic */
#define LOGIC_LOW_VALUE  0 /* Set to 1 when using inverted logic, set to 0 when using normal logic */

//////////////////////////////////////////////////////////
//                LCD CONFIG PARAMETERS                 //
//////////////////////////////////////////////////////////
#define LCD_CONFIG_DISPLAY_FORMAT (LCD_CONFIG_DISPLAY_FORMAT_TYPE_5x8)
#define LCD_CONFIG_DISPLAY_LINE_COUNT (2)
//////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////
//                    INPUT PINS' IDS                   //
//////////////////////////////////////////////////////////
#define LEFT_BUTTON   P3_2
#define RIGHT_BUTTON  P3_1
#define ROTATE_BUTTON P3_0
//////////////////////////////////////////////////////////

#endif // GLOBAL_PARAMETERS_H_INCLUDED