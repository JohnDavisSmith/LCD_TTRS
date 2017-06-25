#ifndef TETRIS_LOGIC_H_INCLUDED
#define TETRIS_LOGIC_H_INCLUDED

#ifdef __cplusplus
    typedef unsigned char __bit;
#endif

#define TETRIS_BOARD_WIDTH (6)   // Must be divisible by 3
#define TETRIS_BOARD_HEIGHT (16) // Must be divisible by 2

void TetrisLogic_SetBoardField(unsigned char x, unsigned char y, __bit value);
__bit TetrisLogic_GetBoardField(unsigned char x, unsigned char y);

void TetrisLogic_Initialise(void);
void TetrisLogic_LeftButtonPressed(void);
void TetrisLogic_RightButtonPressed(void);
void TetrisLogic_RotateButtonPressed(void);
void TetrisLogic_Step(void);

#endif // TETRIS_LOGIC_H_INCLUDED
