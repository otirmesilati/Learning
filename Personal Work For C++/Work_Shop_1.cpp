/*
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   WORKSHOP 1 : String    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   LANGUAGE: C++          XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   Date: 04/01/2024       XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   Author: Otir Mesilati  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

-> Functions: 5

Function Specifications:

1. first_Worsk_Shop_Main: the main function of this file
   IN: Non.
   OUT: Non.

Method Specifications:

2. Simple_String: C'tor
   IN:  char Array
   OUT:  Simple_String Instance

3. get_Simple_String: getter for the char Array
   IN:   Simple_String Instance
   OUT:  char Array

4. simple_Reverse: Reversing the characters in the array
   IN:   Non.
   OUT:  Non.

5. simple_String_Find: Character checking function in a Simple_String instance
   IN: char to find
   OUT: SUCCESSFUL -> index of the character, FAIL -> -1

->> Classes: 1

Class Specifications:

*/


#pragma once
#include <iostream>
using namespace std;


// inner functions headers and inlines //
//main function header//


// class members, headers, inlines //
class Simple_String
{
	Simple_String(const char*);
	const char* get_Simple_String(Simple_String) const;
	void simple_Reverse();
	int simple_String_Find();

};

void first_Work_Shop_Main();

class Personal_Works_1{};

