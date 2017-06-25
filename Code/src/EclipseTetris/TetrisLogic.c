#ifndef EMBEDDED_IMPLEMENTATION
    #include <iostream>
    #include <cstdlib>
    #include <string>
    #include <cmath>
#else
    #include "../GlobalParameters.h"
    #include "../LCDInterface.h"
    #include "../LCDChars.h"
#endif


#define TETRIS_BOARD_WIDTH (6)   // Must be divisible by 3
#define TETRIS_BOARD_HEIGHT (16) // Must be divisible by 2

#define TETRIS_BOARD_GUARD_BORDER_WIDTH (1)

//#ifndef EMBEDDED_IMPLEMENTATION
//static unsigned char Tetris_Board[TETRIS_BOARD_HEIGHT + (TETRIS_BOARD_GUARD_BORDER_WIDTH * 2)][TETRIS_BOARD_WIDTH + (TETRIS_BOARD_GUARD_BORDER_WIDTH * 2)] =
//{
//    { 1, 1, 1, 1, 1, 1, 1, 1 },
//    { 1, 0, 0, 0, 0, 0, 0, 1 },
//    { 1, 0, 0, 0, 0, 0, 0, 1 },
//    { 1, 0, 0, 0, 0, 0, 0, 1 },
//    { 1, 0, 0, 0, 0, 0, 0, 1 },
//    { 1, 0, 0, 0, 0, 0, 0, 1 },
//    { 1, 0, 0, 0, 0, 0, 0, 1 },
//    { 1, 0, 0, 0, 0, 0, 0, 1 },
//    { 1, 0, 0, 0, 0, 0, 0, 1 },
//    { 1, 0, 0, 0, 0, 0, 0, 1 },
//    { 1, 0, 0, 0, 0, 0, 0, 1 },
//    { 1, 0, 0, 0, 0, 0, 0, 1 },
//    { 1, 0, 0, 0, 0, 0, 0, 1 },
//    { 1, 0, 0, 0, 0, 0, 0, 1 },
//    { 1, 0, 0, 0, 0, 0, 0, 1 },
//    { 1, 0, 0, 0, 0, 0, 0, 1 },
//    { 1, 0, 0, 0, 0, 0, 0, 1 },
//    { 1, 1, 1, 1, 1, 1, 1, 1 }
//};
//#else
static unsigned char Tetris_Board[((TETRIS_BOARD_HEIGHT + (TETRIS_BOARD_GUARD_BORDER_WIDTH * 2)) * (TETRIS_BOARD_WIDTH + (TETRIS_BOARD_GUARD_BORDER_WIDTH * 2)) + 1) / 8 ] =
{
    0b11111111,
    0b10000001,
    0b10000001,
    0b10000001,
    0b10000001,
    0b10000001,
    0b10000001,
    0b10000001,
    0b10000001,
    0b10000001,
    0b10000001,
    0b10000001,
    0b10000001,
    0b10000001,
    0b10000001,
    0b10000001,
    0b10000001,
    0b11111111
};
//#endif


void SetBoard(unsigned char x, unsigned char y, unsigned char set)
{
    if ((x < TETRIS_BOARD_WIDTH) && (y < TETRIS_BOARD_HEIGHT))
    {
        if (set)
        {
            Tetris_Board[y + 1] |= ((unsigned char)0x01 << (x + 1));
        }
        else
        {
            Tetris_Board[y + 1] &= ~((unsigned char)0x01 << (x + 1));
        }
    }
}

unsigned char GetBoard(unsigned char x, unsigned char y)
{
    if ((x < TETRIS_BOARD_WIDTH) && (y < TETRIS_BOARD_HEIGHT))
    {
        return ((Tetris_Board[y + 1] >> (x + 1)) & (unsigned char)0x01);
    }
    return 1;
}

void PrintBoard(unsigned char rows, unsigned char columns)
{
#ifndef EMBEDDED_IMPLEMENTATION
    if ((rows > 0) && (columns > 0))
    {
        const unsigned char maxLeftOffset = static_cast<unsigned char>(log10(rows - 1));

        std::cout << std::endl;
        std::cout << std::endl;

        for(size_t row = 0; row < rows; row++)
        {
            std::string s = "";
            const int diff = maxLeftOffset - static_cast<size_t>(log10(row));
            if (diff > 0)
            {
                for(size_t i = 0; i < static_cast<size_t>(diff); i++)
                {
                    s += " ";
                }
            }

            std::cout << s << std::to_string(row) << ": ";
            for(size_t col = 0; col < columns; col++)
            {
                std::cout << (GetBoard(col, row) ? "@" : "#") << "  ";
            }
            std::cout << std::endl;
        }

        std::cout << std::endl;
        std::cout << std::endl;
    }
#else
    if ((rows > 0) && (columns > 0))
    {
//        unsigned char part1 = GetBoard(0, 1);
//        unsigned char part2 = GetBoard(1, 1);
//        unsigned char part3 = GetBoard(2, 1);
//        unsigned char index = (((part3 & 0x01) << 2) | ((part2 & 0x01) << 1) | (part1 & 0x01));
//        LCD_CMD_SET_CURSOR(14, 0);
//        LCD_SEND_DATA(LCDCharIndicesMap[index]);
//
//        {
//            unsigned char part1 = GetBoard(3, 1);
//            unsigned char part2 = GetBoard(4, 1);
//            unsigned char part3 = GetBoard(5, 1);
//            unsigned char index = (((part3 & 0x01) << 2) | ((part2 & 0x01) << 1) | (part1 & 0x01));
//            LCD_CMD_SET_CURSOR(14, 1);
//            LCD_SEND_DATA(LCDCharIndicesMap[index]);
//        }



        unsigned char row;
        for(row = 0; row < rows; row++)
        {
            unsigned char col;
            for(col = 0; col < (columns / 3); col++)
            {
                //LCD_CMD_SET_CURSOR(15, 0);
                //LCD_SEND_DATA(LCD_CHAR_TOP_SHAPE_CHAR_INDEX);

                const unsigned char part1 = GetBoard((col * 3), row);
                const unsigned char part2 = GetBoard(((col * 3) + 1), row);
                const unsigned char part3 = GetBoard(((col * 3) + 2), row);
                const unsigned char index = (((part3 & 0x01) << 2) | ((part2 & 0x01) << 1) | (part1 & 0x01));
                LCD_CMD_SET_CURSOR(((rows - 1) - row), col);
                LCD_SEND_DATA(LCDCharIndicesMap[index]);
            }
        }
    }
#endif
}

static const unsigned char g_TetrisSchapesData[45] =
{
/*--------------------
TetrisChape_I

# # # #
@ @ @ @
# # # #
# # # #

# @ # #
# @ # #
# @ # #
# @ # #
--------------------*/
    2, // 0
    0b11110000, 0b00000000,
    0b00100010, 0b00100010,


/*--------------------
TetrisChape_T

# # # #
@ @ @ #
# @ # #
# # # #

# @ # #
@ @ # #
# @ # #
# # # #

# @ # #
@ @ @ #
# # # #
# # # #

# @ # #
# @ @ #
# @ # #
# # # #
--------------------*/
    4, // 5
    0b01110000, 0b00000010,
    0b00110010, 0b00000010,
    0b01110010, 0b00000000,
    0b01100010, 0b00000010,

/*--------------------
TetrisChape_J

# # # #
@ @ @ #
@ # # #
# # # #

@ @ # #
# @ # #
# @ # #
# # # #

# # @ #
@ @ @ #
# # # #
# # # #

# @ # #
# @ # #
# @ @ #
# # # #
--------------------*/
    4, // 14
    0b01110000, 0b00000001,
    0b00100011, 0b00000010,
    0b01110100, 0b00000000,
    0b00100010, 0b00000110,

/*--------------------
TetrisChape_L

@ # # #
@ @ @ #
# # # #
# # # #

# @ @ #
# @ # #
# @ # #
# # # #

# # # #
@ @ @ #
# # @ #
# # # #

# @ # #
# @ # #
@ @ # #
# # # #
--------------------*/
    4, // 23
    0b01110001, 0b00000000,
    0b00100110, 0b00000010,
    0b01110000, 0b00000100,
    0b00100010, 0b00000011,

/*--------------------
TetrisChape_Z

# # # #
@ @ # #
# @ @ #
# # # #

# # @ #
# @ @ #
# @ # #
# # # #
--------------------*/
    2, // 32
    0b00110000, 0b00000110,
    0b01100100, 0b00000010,

/*--------------------
TetrisChape_S

# # # #
# @ @ #
@ @ # #
# # # #

# @ # #
# @ @ #
# # @ #
# # # #
--------------------*/
    2, // 37
    0b01100000, 0b00000011,
    0b01100010, 0b00000100,

/*--------------------
TetrisChape_O

# @ @ #
# @ @ #
# # # #
# # # #
--------------------*/
    1, // 42
    0b01100110, 0b00000000
};

#define TETRIS_SHAPES_COUNT (7)
const unsigned char TetrisShapes[TETRIS_SHAPES_COUNT] = {0, 5, 14, 23, 32, 37, 42};
unsigned char g_ShapeX = 0;
unsigned char g_ShapeY = 0;
unsigned char g_ShapeType = 0;
unsigned char g_ShapeRotation = 0;

unsigned char GetShapeData(unsigned char x, unsigned char y)
{
    const unsigned shapeParts[2] =
    {
        g_TetrisSchapesData[TetrisShapes[g_ShapeType] + 1 + (g_ShapeRotation * 2)],
        g_TetrisSchapesData[TetrisShapes[g_ShapeType] + 1 + (g_ShapeRotation * 2) + 1]
    };

    if (y < 2)
    {
        return (unsigned char)0x01 & (shapeParts[0] >> (x + (y * 4)));
    }
    else
    {
        y -= 2;
        return (unsigned char)0x01 & (shapeParts[1] >> (x + (y * 4)));
    }
}

unsigned char CheckMoveAllowed(char newX, unsigned char newY)
{
    unsigned char retVal = 1;

    unsigned char y;
    for(y = 0; y < 4; y++)
    {
        unsigned char x;
        for(x = 0; x < 4; x++)
        {
            if(GetBoard((g_ShapeX + newX) + x, (g_ShapeY + newY) + y) && GetShapeData(x, y))
            {
                retVal = 0;
            }
        }
    }

    return retVal;
}

unsigned char CommitCurrentShapeToOrRemoveFromTheBoard(unsigned char commit)
{
    unsigned char retVal = 1;

    unsigned char y;
    for(y = 0; y < 4; y++)
    {
        unsigned char x;
        for(x = 0; x < 4; x++)
        {
            const unsigned char shapePoint = GetShapeData(x, y);
            if (shapePoint)
            {
                SetBoard(g_ShapeX + x, g_ShapeY + y, shapePoint & commit);
            }
        }
    }

    return retVal;
}

#ifndef EMBEDDED_IMPLEMENTATION
void PrintShape(unsigned char shapeType, unsigned char rotation)
{
    g_ShapeType = shapeType;
    g_ShapeRotation = rotation;

    std::cout << std::endl;
    for(unsigned char y = 0; y < 4; y++)
    {
        std::cout << std::endl;
        for(unsigned char x = 0; x < 4; x++)
        {
            std::cout << (GetShapeData(x, y) ? "@" : "#") << " ";
        }
    }
}
#endif

typedef unsigned char Button;
#define e_Button_Left (0)
#define e_Button_Right (1)
#define e_Button_Down  (2)
#define e_Button_Rotate (3)
#define e_Button_Skip (4)
#define e_Button_NoButton (5)
#define DEFAULT_FALL_INTERVAL_IN_MS (1000)
#define FAST_FALL_INTERVAL_IN_MS (100)
#define LEFT_RIGHT_BUTTONS_SAMPLING_INTERVAL_IN_MS (8)
#define BUTTON_STATE_HOLDING_INTERVAL_IN_MS (2)

static unsigned int g_PreviousTimeInMs = 0;
static unsigned short g_ButtonTime = 0;
static unsigned short g_FallTime = 0;
static unsigned short g_FallIntervalInMs = DEFAULT_FALL_INTERVAL_IN_MS;

#ifndef EMBEDDED_IMPLEMENTATION
static unsigned char g_GameOver = 0;
#else
static __bit g_GameOver = 0;
#endif


Button GetInput(unsigned char timeDeltaInMs)
{
    Button retVal = e_Button_NoButton;
#ifndef EMBEDDED_IMPLEMENTATION
    while (1)
    {
        std::string input = "";
        std::cout << "Move: ";
        std::getline(std::cin, input);

        if (input.length() == 1)
        {
            if (input[0] == 'a')
            {
                retVal = e_Button_Left;
            }
            else if (input[0] == 'd')
            {
                retVal = e_Button_Right;
            }
            else if (input[0] == 's')
            {
                retVal = e_Button_Down;
            }
            else if (input[0] == 'w')
            {
                retVal = e_Button_Rotate;
            }
            else if (input[0] == 'x')
            {
                retVal = e_Button_Skip;
            }

            break;
        }
    }
#else
    static __bit rotateButtonDown = 0;
    static __bit gameOverDetected = 0;
    static unsigned char rotateButtonActiveForMs = 0;
    static unsigned char leftButtonActiveForMs = 0;
    static unsigned char rightButtonActiveForMs = 0;
    static unsigned char downButtonActiveForMs = 0;
    static unsigned char gameOverDetectedForMs = 0;

    if (ROTATE_BUTTON)
    {
        rotateButtonActiveForMs += timeDeltaInMs;
    }
    else
    {
        rotateButtonActiveForMs = 0;

        if (LEFT_BUTTON)
        {
            leftButtonActiveForMs += timeDeltaInMs;
        }
        else
        {
            leftButtonActiveForMs = 0;
        }

        if (RIGHT_BUTTON)
        {
            rightButtonActiveForMs += timeDeltaInMs;
        }
        else
        {
            rightButtonActiveForMs = 0;
        }
    }

    if (DOWN_BUTTON)
    {
        downButtonActiveForMs += timeDeltaInMs;
    }
    else
    {
        downButtonActiveForMs = 0;
    }

    if (rotateButtonActiveForMs >= BUTTON_STATE_HOLDING_INTERVAL_IN_MS)
    {
        if (rotateButtonDown == 0)
        {
            retVal = e_Button_Rotate;
            rotateButtonDown = 1;
        }
    }
    else
    {

        if (g_ButtonTime >= LEFT_RIGHT_BUTTONS_SAMPLING_INTERVAL_IN_MS)
        {
            rotateButtonDown = 0;

            if (leftButtonActiveForMs >= BUTTON_STATE_HOLDING_INTERVAL_IN_MS)
            {
                retVal = e_Button_Left;
            }
            else if (rightButtonActiveForMs >= BUTTON_STATE_HOLDING_INTERVAL_IN_MS)
            {
                retVal = e_Button_Right;
            }
            g_ButtonTime = 0;
        }
    }

    if (downButtonActiveForMs >= BUTTON_STATE_HOLDING_INTERVAL_IN_MS)
    {
        g_FallIntervalInMs = FAST_FALL_INTERVAL_IN_MS;
        retVal = e_Button_Down;
        if (gameOverDetected == 1)
        {
            g_GameOver = 0;
            gameOverDetected = 0;
        }
    }
    else
    {
        if (g_GameOver == 1)
        {
            gameOverDetectedForMs += timeDeltaInMs;
        }

        if (gameOverDetectedForMs >= 100)
        {
            gameOverDetected = 1;
            gameOverDetectedForMs = 0;
        }

        g_FallIntervalInMs = DEFAULT_FALL_INTERVAL_IN_MS;
    }
#endif
    return retVal;
}

void NextShape()
{
    g_ShapeX = (TETRIS_BOARD_WIDTH / 4);
    g_ShapeY = 0;
    g_ShapeRotation = 0;

    g_ShapeType++;
    if (g_ShapeType >= TETRIS_SHAPES_COUNT)
    {
        g_ShapeType = 0;
    }
}

void ClearTheBoard()
{
    unsigned char i;
    for(i = 1; i <= TETRIS_BOARD_HEIGHT; i++)
    {
        Tetris_Board[i] = 0x00;
    }
}

void ShiftTheBoard()
{
    unsigned char linesToShift = 0;
    unsigned char i;
    unsigned char shiftStartPos = TETRIS_BOARD_HEIGHT;
    for(i = TETRIS_BOARD_HEIGHT; i > 0; i--)
    {
        if (Tetris_Board[i] == 0xFF)
        {
            linesToShift++;
            shiftStartPos = i;
        }
        else if (shiftStartPos != TETRIS_BOARD_HEIGHT)
        {
            break;
        }
    }

    CommitCurrentShapeToOrRemoveFromTheBoard(0);
    for(i = 0; i < (TETRIS_BOARD_HEIGHT - linesToShift); i++)
    {
        Tetris_Board[(TETRIS_BOARD_HEIGHT - (TETRIS_BOARD_HEIGHT - shiftStartPos)) - i] = Tetris_Board[((TETRIS_BOARD_HEIGHT - (TETRIS_BOARD_HEIGHT - shiftStartPos)) - linesToShift) - i];
    }

    for(i = 0; i < linesToShift; i++)
    {
        Tetris_Board[1 + i] = 0x00;
    }
    CommitCurrentShapeToOrRemoveFromTheBoard(1);
}

#ifndef EMBEDDED_IMPLEMENTATION
    unsigned int GetSystemTimeInMs()
    {
        return 0;
    }
#endif

void TetrisLogicLoop()
{
    NextShape();
    CommitCurrentShapeToOrRemoveFromTheBoard(1);
    PrintBoard(TETRIS_BOARD_HEIGHT, TETRIS_BOARD_WIDTH);

    while(1)
    {
        Button input;
        const unsigned int currentTimeInMs = GetSystemTimeInMs();
        input = GetInput((currentTimeInMs - g_PreviousTimeInMs));

        g_ButtonTime += (currentTimeInMs - g_PreviousTimeInMs);
        g_FallTime += (currentTimeInMs - g_PreviousTimeInMs);

        if (g_GameOver == 1)
        {
        }
        else
        {
            ShiftTheBoard();

            CommitCurrentShapeToOrRemoveFromTheBoard(0);

            if (input == e_Button_Rotate)
            {
                const unsigned char currentRotation = g_ShapeRotation;
                g_ShapeRotation++;
                if (g_ShapeRotation >= g_TetrisSchapesData[TetrisShapes[g_ShapeType]])
                {
                    g_ShapeRotation = 0;
                }

                if(!CheckMoveAllowed(0, 0))
                {
                    g_ShapeRotation = currentRotation;
                }
            }
            else if (input == e_Button_Left)
            {
                g_ShapeX -= CheckMoveAllowed(-1, 0);
            }
            else if (input == e_Button_Right)
            {
                g_ShapeX += CheckMoveAllowed(1, 0);
            }
    //        else if (input == e_Button_Down)
    //        {
    //
    //        }

            if (g_FallTime > g_FallIntervalInMs)
            {
                g_FallTime = 0;
                g_ShapeY += CheckMoveAllowed(0, 1);
            }

            if (!CheckMoveAllowed(0, 1))
            {
                CommitCurrentShapeToOrRemoveFromTheBoard(1);
                NextShape();

                if (!CheckMoveAllowed(0, 0) || !CheckMoveAllowed(0, 1))
                {
                    g_GameOver = 1;
                    ClearTheBoard();
#ifdef EMBEDDED_IMPLEMENTATION
                    LCD_CMD_CLEAR();
                    LCD_PRINT("Game Over", 0, 0);
#endif
                }
            }

            if (g_GameOver == 0)
            {
                CommitCurrentShapeToOrRemoveFromTheBoard(1);
                PrintBoard(TETRIS_BOARD_HEIGHT, TETRIS_BOARD_WIDTH);
            }
        }

#ifdef EMBEDDED_IMPLEMENTATION
        g_PreviousTimeInMs = currentTimeInMs;
        PCON |= IDL; // Tell the MCU to sleep till the next timer interrupt
#endif
    }
}
