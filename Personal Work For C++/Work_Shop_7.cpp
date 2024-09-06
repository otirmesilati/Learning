#pragma once
#include <iostream>
using namespace std;


//   & & & & & & Libraries & & & & & &
// ?

//   & & & & & Comments & & & & &

// where to put bitmasking? watch video below:
// https://www.youtube.com/watch?v=wvtFGa6XJDU
//   & & & & & & Comments & & & & & &

// Single Line comment

/* multiple line
comments
*/

/* Nested
// Single line one kind //
and multi line 
for other kind of comments */

void fun_hi(){cout << "Hi" /* Comments within statemenets */ << "bye";}

//   & & & & & & Literals (defined literal operators) & & & & & &


void fun_literals(){ // Literals dependent on scopes within function

// Going over the available space for literals will have a reseting effect:
// unsigned short cap: 65535
unsigned short hi = 65000; // 65,00
unsigned short hi = 66000; // 464 (Got back to zero going up)

// signed short cap: 32767
short hi = 32000; // 32000
short hi = 35000; // -30536 (Got to -32767 going to zero)

// https://web.archive.org/web/20130807052041/http://cpp.comsci.us/etymology/literals.html


//   ^ ^ ^ ^ ^ Integers ^ ^ ^ ^ ^
123;
// no underscore format! 
-34;


//  ^ ^ ^ ^ Integers: Coding Modifiers ^ ^ ^ ^

0xF5;
012; // octal literals written without o //
0b110;

//  ^ ^ ^ ^ Integers: Signed/Long Conding Modifying Suffixes  ^ ^ ^ ^

1u;
-2U; // will work sometimes and sometimes not: will be translated: 2's complement on the value -> new unsigned value
3l;
-4L;
5ll;
6LL;

//   ^ ^ ^ ^ ^ Floats ^ ^ ^ ^ ^

//   ^ ^ ^ ^ Floats: Sceientific Notation Encoding  ^ ^ ^ ^
1e2;
1e-3;

// can combine exponent and long encondings //
1e2l;



// https://en.cppreference.com/w/cpp/language/floating_literal //

}


//   & & & & & & Operators & & & & & &
//   Overloading literal operators: https://en.cppreference.com/w/cpp/language/user_literal


//   & & & & & & String Formatting & & & & & &
//   ^ ^ ^ ^ ^ Format Specifiers ^ ^ ^ ^ ^
//   ^ ^ ^ ^ Format Specifiers: parameter ^ ^ ^ ^ ^
//   flags
//   width
//   precision (the .2f goes here )
//   length field
//   type field
//   custom field 
/* The lecture's coverage: formatting to two places after the dot:
int main()
{

int number = 3;
double dvalue = 2.3484444;
printf("The first value %d, second value %.2lf.")

}

*/

// complete this section from here: https://en.wikipedia.org/wiki/Printf 

//   & & & & & & Conditional Statements & & & & & &

//   & & & & & & Loops & & & & & &
