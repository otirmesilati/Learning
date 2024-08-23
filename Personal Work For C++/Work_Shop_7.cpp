#pragma once
#include <iostream>
using namespace std;

// https://www.tutorialspoint.com/cplusplus/cpp_comments.htm
// next : signed, unsigned, short long notation with u/l/ll in the end 
// data types, syno: theres a lot of types, they have modifiers, from "The size of variables..."" 

// where to put bitmasking?

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

void fun_literals(){
//   & & & & & & Literals & & & & & &

// https://web.archive.org/web/20130807052041/http://cpp.comsci.us/etymology/literals.html


//   ^ ^ ^ ^ ^ Integers ^ ^ ^ ^ ^
123;
// no underscore format! 
-34;


//  ^ ^ ^ ^ Integers: Type Modifiers ^ ^ ^ ^

0xF5;
012; // octal literals written without o //
0b110;

}

//   & Types & (finish this)

// ^ ^ ^ ^ ^ Type Modifiers ^ ^ ^ ^ ^
// sign, unsign, short, long

//   & & & & & & Operators & & & & & &

//   & & & & & & String Formatting & & & & & &

//   & & & & & & Conditional Statements & & & & & &

//   & & & & & & Loops & & & & & &
