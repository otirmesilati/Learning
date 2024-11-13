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

bool win_condition_check(char game_board[BOARD_LENGTH][BOARD_WIDTH])
{
    // a for loop for checking the lines
    for(int linex_index = 0; linex_index < BOARD_LENGTH; ++linex_index)
    {
        if(game_board[linex_index][0] == game_board[linex_index][1] == game_board[linex_index][2]) 
        return true;
    }

    // a for loop for checking the rows
    for(int row_index = 0; row_index < BOARD_WIDTH; ++row_index) 
    {
        if(game_board[0][row_index] == game_board[1][row_index] == game_board[2][row_index]) // finish this
        return true;
    }

    // a for loop for checking the diagonals
    for(int diagonal_index = 0; diagonal_index < BOARD_LENGTH; ++diagonal_index)
    {
        
    } 

    return false; 
}

// 2. a function for setting the board

// 3. a function for checking if the winner won

// 4. a function for playing the game

int main()
{
    // call game function
    return NULL;
}
