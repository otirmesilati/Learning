#pragma once
#include <iostream>
#define BOARD_LENGTH 3
#define BOARD_WIDTH 3

using namespace std;

// TODO: 1's done, remaining are 2, 3 and 4


void show_board(char game_board[BOARD_LENGTH][BOARD_WIDTH])
{
    for(int board_row_index = 0; board_row_index < BOARD_LENGTH;)
    {
        for(int board_column_index = 0; board_column_index < BOARD_WIDTH ; ++board_column_index){
            cout << game_board[board_column_index][board_row_index];
        }
    }
}

bool win_condition_check()
{

    // check row lines

    // check column lines

    return false; // placeholder
}

// 2. a function for setting the board

// 3. a function for checking if the winner won

// 4. a function for playing the game

int main()
{
    // call game function
    return NULL;
}
