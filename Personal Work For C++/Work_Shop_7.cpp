#pragma once
#include <iostream>
using namespace std;

// https://www.tutorialspoint.com/cplusplus/cpp_comments.htm 
// syno: theres a lot of types, they have modifiers, from "The size of variables..."" 

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

//   & & & & & & Literals & & & & & &

// Literals dependent on scopes within function
void fun_literals(){


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
-2U; // will be translated: 2's complement on the value -> new unsigned value
3l;
-4L;
5ll;
6LL;


//   ^ ^ ^ ^ ^ Floats ^ ^ ^ ^ ^

//   ^ ^ ^ ^ ^ Exponents ^ ^ ^ ^ ^
1e2;
1e-3;

// Let's combine type modifyers and exponents! //

// https://en.cppreference.com/w/cpp/language/floating_literal //

}


//   & Types & (finish this)

// ^ ^ ^ ^ ^ Type Modifiers ^ ^ ^ ^ ^
// sign, unsign, short, long

//   & & & & & & Operators & & & & & &

//   & & & & & & String Formatting & & & & & &

//   & & & & & & Conditional Statements & & & & & &

//   & & & & & & Loops & & & & & &
