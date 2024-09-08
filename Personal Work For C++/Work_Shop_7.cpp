#pragma once
#include <iostream>
using namespace std;


//   & & & & & & Libraries & & & & & &
// iostream?
// pragma once? namespace ? (finish mapping this)

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



//   & & & & & & Operators & & & & & &
// need to touch on lvalue, rvalue, gvalue: 
// for the wiki tldr: https://en.wikipedia.org/wiki/Value_(computer_science)
// for the famous lval/rval/gval/xval graph: https://stackoverflow.com/questions/3601602/what-are-rvalues-lvalues-xvalues-glvalues-and-prvalues
// lecture's coverage: lval is left and changing, and rval is right, WOW!

//   ^ ^ ^ ^ ^ Assignment Operators ^ ^ ^ ^ ^
// lecture's coverage: int x = 5;
// x = x + 2; x += 2
//   ^ ^ ^ ^ ^ Arithmetical Operators ^ ^ ^ ^ ^
// x + 2;
// x++;
// ++x;
/* Lecture's example: 
int a = 5, b;
b = ++a; // a = b = 6;
b = a++; // a = 6, b = 5

*/

//   ^ ^ ^ ^ Arithmetical Operators: Narrowing/Widening type Casting ^ ^ ^ ^
//   ^ ^ ^ type casting ^ ^ ^
// No Automatic casting to wide in c++? a set of rules: https://www.youtube.com/watch?v=uI10H1jzw00
// lecture's coverage: not a good one, skipped over the literal subject and jumped into combining both casting and not even mentioning it!!!! 
// includes: implicit conversion of assigning a narrowed type (double) <- (int), and arithmetic conversion (double)/(int)
// what it should be like: exp cast 2/2(double);    imp cast 2/2.000 (was that so hard lecturer?????)
//   ^ ^ temps ^ ^ 
// a tool used in type cast
// putting wrong format variable type in printf/scanf WILL NOT GIVE TEMPS! It's undefined behaviour!
// Make temp variable arithmetic in tablet and map building upon these scenarios: 
/* double a = 12.5;
int b = 3, c = 4;
c = a + b;
The question to be asked in temp variable arithmetic is: how much temps in here? same or demotion or promotion temps? and who are they? answer: b' - promotion, (a + b')' - same, ((a + b')')' - demotion  

//   ^ ^ ^ Object Cast ^ ^ ^ 
// up casting
// down casting

same procedure for the following code:
int a = 3, b = 4;
int result;
result = (float) a/b;
answer: a' b' (a'/b')', ((a'/b')')'

trick long question (becuase it has undefined behaviour in it once):
int main() {
int n1 = 3;
int n2 = 15;
float n3 = 5.7;
float n4;

print(" %f \n", n3); // no temps, 5.700000 is the correct answer
print(" %d \n", n3); // unmatched format specifier - undefined behaviour, underfined answer
sum = (int)13.2; // (13.2)' -> ((13.2)')'
print(" %f \n", n3); //  13.00000 is the correct answer
sum = (int)5.7 + 13.2; 
print(" %f\n", n3); // this is a bit complicated: 5.7 -> 5 -> 5.0 -> 5.0 + 13.2 -> 18.2 is the correct answer

n4 = n2; / n1; // 15 -> 15.0, 3 -> 3.0, 15.0 / 3.0 -> 5.0
printf(" %f \n", n4); // 5.00000 is the correct answer
printf(" %d \n", n4); // unmatched format specifier - undefined behaviour, underfined answer
printf(" %d \n", (int)n4); // 5.0 -> 5, 5 is the correct answer

n4 = 
printf(" \n");

n4 = 
printf(" \n");
n4 = 
printf(" \n");

return 0;

}

*/
//   ^ ^ ^ ^ ^ Logical Operators ^ ^ ^ ^ ^
// == and != are the least in the order of operations, maybe finish the operations order ladder?
// false and true are exactly 0 and 1
// int five = 5, three = 3, zero = 0;
// five != 2;
// (three < five || three < zero) && five < zero;

// combining logical and arith: (arithmetic operators take precedence)
/* lecture's example:
int x = 2;
int y = (x > 5) + 1; // (x > 5) -> 0 -> 0 + 1 = 1

int a = 2, b;
((b = 2) == a) // (b = 2) -> (2) -> 2 == 2 -> 1, trick question: a wierd behaviour of c family languages - assignment returns the assign value, acts as arithmetic

*/

//   Overloading literal operators: https://en.cppreference.com/w/cpp/language/user_literal

// complete this section from here: https://en.wikipedia.org/wiki/Printf 

//   & & & & & & Variables 

//   ^ ^ ^ ^ ^ Constants

//   ^ ^ ^ ^ Constants: Pre-Processor Macros 
//   ^ ^ ^ defines ^ ^ ^
// lecture's coverage:
//   ^ ^ ^ Almost pre-processor: enums ^ ^ ^
// lecture's coverage: 
/*
Example 1: Making a boolean logic
enum boolean {NO, YES}

Example 2: Days without typedef (typing enum more than once)
enum Day {SUN = 1, MON, TUE, WED, THU, FRI, SAT};

int main() 
{

enum Day d1,d2; // the second  enum is here 
d1 = SUN;
d2 = THU;

}

Example 3: Days with typedef (typing enum once)

typedef enum Day {SUN = 1, MON, TUE, WED, THU, FRI, SAT};

int main() 
{

Day d1,d2;
d1 = SUN;
d2 = THU;

return 0;

}


*/ 

//   ^ ^ ^ ^ Constants: Immutables 
// highlight the difference of const (run time) vs constexpr (compile time)

//   & & & & & & Flow Control & & & & & &

//   ^ ^ ^ ^ ^ Statements ^ ^ ^ ^ ^
//   ^ ^ ^ ^ Blocks ^ ^ ^ ^ 
//   ^ ^ ^ Blocks: Variable Scope ^ ^ ^

//   ^ ^ Global: relative to and environment variables ^ ^
//   lecture's coverage: global relative to inner blocks
/*

int main()
{
int relat_glob = 1;
{
int relat_loc = 2;
printf("can print both here");
}
printf("can print only one here");

return 0;
}

*/

//


//   ^ ^ ^ Blocks: Variable Life-Time ^ ^ ^

//   ^ ^ ^ ^ ^ Conditional Statements & & & & & &
// map to the tablet - new skill for relations, building a graph under constraints (number of maximum relation checks on members, like finding the max of 3 numbers(linear relation) in no more than 3 tries)
// and also - mapping the control flow diagram - a straight line digram that splits whenever theres a conditional statement:
//             - - - - - - - -
//    - - - - -| condition 1  | - - - - - (when theres else-if the split is more than two - 3 + )
//             - - - - - - - - 
//   ^ ^ ^ ^ ^ Flo : loops


//   & & & & & & Functions & & & & & & 

//   ^ ^ ^ ^ ^ Prototyping 

//inlining functions

//   ^ ^ ^ ^ ^ Function Overloading
