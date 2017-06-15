#include <iostream>
#include <cstdlib>
#include <string>
#include "TetrisLogic.h"

void PrintBoard()
{    
    std::cout << std::endl;
    std::cout << std::endl;
    std::cout << std::endl;
    std::cout << std::endl;
    std::cout << std::endl;
    std::cout << std::endl;
    
    std::cout << "    0  1  2  3  4  5" << std::endl;
    std::cout << "_____________________" << std::endl;
    for(char y = (TETRIS_BOARD_HEIGHT - 1); y >= 0; y--)
    {   
        if (y < 10)
        {
            std::cout << " ";
        }    
        std::cout << std::to_string(y) << ": ";

        for(unsigned char x = 0; x < TETRIS_BOARD_WIDTH; x++)
        {            
            if (TetrisLogic_GetBoardField(x, y))
            {
                std::cout << "1  ";
            }
            else
            {
                std::cout << "0  ";
            }
        }
        
        std::cout << std::endl;
    }
    
    std::cout << std::endl;
    std::cout << std::endl;
    std::cout << std::endl;
    std::cout << std::endl;
    std::cout << std::endl;
    std::cout << std::endl;
}

int main(int argc, char* argv[])
{
    TetrisLogic_Initialise();

    PrintBoard();
    for(unsigned char y = 0; y < TETRIS_BOARD_HEIGHT; y++)
    {
        for(unsigned char x = 0; x < TETRIS_BOARD_WIDTH; x++)
        {
            std::string action = "";
            std::getline(std::cin, action);
//             TetrisLogic_SetBoardField(x, y, 1);
            
            if (action == "a")
            {
                TetrisLogic_LeftButtonPressed();
            }
            else if (action == "s")
            {
                TetrisLogic_RightButtonPressed();
            }
            else if (action == "w")
            {
                TetrisLogic_RotateButtonPressed();
            }

            TetrisLogic_Step();
            
            PrintBoard();
        }
    }

    return EXIT_SUCCESS;
}
