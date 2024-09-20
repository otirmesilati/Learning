# Python online emulator: https://www.programiz.com/python-programming/online-compiler/ 









#    < < < < < < < <   Language Principles   > > > > > > > >   









#   & & & & & & Libraries & & & & & & 
#   Standard Library is built in, not need to be imported
# GUI? 








#   & & & & & & Comments & & & & & & 


# Single Line comments


# No multi line comments 
# So we just concat single line comments


""" 
Documentation
Annotation
"""









#   & & & & & & Literals & & & & & & 


def fun_literals():
    

#   ^ ^ ^ ^ ^ Integers ^ ^ ^ ^ ^
    
    123
    1_234
    -123
    1 +2j # There are also complex number "Integers"!
    pass



#   ^ ^ ^ ^ Coding Modifiers ^ ^ ^ ^

#   ^ ^ ^ Radixed modifier ^ ^ ^

    0x12AB
    0o12
    0b110011

#   No Integer Suffix Operators in python 

#   ^ ^ ^ ^ ^ Floats ^ ^ ^ ^ ^

    1.2
    -3.4

#   ^ ^ ^ ^ Scientific Notation Encoding ^ ^ ^ ^

    1e2
    1e-3









#   & & & & & & String Formatting & & & & & &

def fun_string_formats():
    
    number = 1
    d_number = 2.344444
    ami_name = "Ami"

    # Alternative 1

    number_formatting = f"result: {20}"
    string_formatting = f"name is {ami_name}"
    
    # Alternative 2

    number_formatting = "result: {}".format(20)
    string_formatting = "name is {}".format(ami_name)

    # Alternative 3

    number_formatting = "result: %d" % (20)
    string_formatting = "name is %s" % (ami_name)
    
#   ^ ^ ^ ^ ^ Format Specifiers ^ ^ ^ ^ ^

# flags? width? length? type? custom?

#   ^ ^ ^ ^ Precision ^ ^ ^ ^ 
    
    print(f"{number} {d_number:.2f}")
    # to the right of the decimal point? 









#   & & & & & & Operators & & & & & & 
# lvalue? rvalue? more values?

def fun_operators():
    pass

#   ^ ^ ^ ^ ^ Binding operator ^ ^ ^ ^ ^

first = 1

#   ^ ^ ^ ^ ^ Arithmetical Operators ^ ^ ^ ^

first = first + 3
first += 3
# no INC unary operator :(

#   ^ ^ ^ ^ Order of operations (Arith) ^ ^ ^ ^
# general case?


"""


//   ^ ^ ^ ^ Prefix vs Postfix ^ ^ ^ ^
first_check = 1;
first_check = second_check++; // first_check = 1, second_check = 2 
first_check = ++second_check; // first_check = second_check = 3


//   ^ ^ ^ ^ Multiple Assignment ^ ^ ^ ^
first_multi_assign = second_multi_assign = 1;


//   ^ ^ ^ ^ Arithmetical Operators: Narrowing/Widening type Casting ^ ^ ^ ^


//   ^ ^ ^ type casting/C-casting ^ ^ ^

// No Automatic casting to wide in c++? a set of rules: https://www.youtube.com/watch?v=uI10H1jzw00
// lecture's coverage: not a good one, skipped over the literal subject and jumped into combining both casting and not even mentioning it!!!! 
// includes: implicit conversion of assigning a narrowed type (double) <- (int), and arithmetic conversion (double)/(int)
// what it should be like: exp cast 2/2(double);    imp cast 2/2.000 (was that so hard lecturer?????)
//   ^ ^ temps ^ ^ 
// a tool used in type cast
// putting wrong format variable type in printf/scanf WILL NOT GIVE TEMPS! It's undefined behaviour!
// Make temp variable arithmetic in tablet and map building upon these scenarios: 
/*double a = 12.5;
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


// More Material: 
// map from this more about casts: https://stackoverflow.com/questions/28002/regular-cast-vs-static-cast-vs-dynamic-cast


//   ^ ^ ^ ^ ^ Logical Operators ^ ^ ^ ^ ^
// order of operations?
// == and != are the least in the order of operations, maybe finish the operations order ladder?
// false and true are exactly 0 and 1
// int five = 5, three = 3, zero = 0;
// five != 2;
// (three < five || three < zero) && five < zero;

// combining logical and arith: (arithmetic operators take precedence)
lecture's example:
int x = 2;
int y = (x > 5) + 1; // (x > 5) -> 0 -> 0 + 1 = 1

int a = 2, b;
((b = 2) == a) // (b = 2) -> (2) -> 2 == 2 -> 1, trick question: a wierd behaviour of c family languages - assignment returns the assign value, acts as arithmetic

*/

//   Overloading literal operators: https://en.cppreference.com/w/cpp/language/user_literal


}










//   & & & & & & Variables & & & & & &


void fun_variables()
{


// unsigned short cap: 65535
unsigned short hi = 65000; // 65,00
unsigned short hi = 66000; // 464 (Got back to zero going up)

// signed short cap: 32767
short hi = 32000; // 32000
short hi = 35000; // -30536 (Got to -32767 going to zero)


//   ^ ^ ^ ^ ^ Scope Sharing ^ ^ ^ ^ ^
//   ^ ^ ^ ^ Global Variables ^ ^ ^ ^
/* Lecture coverage: 
1. Example one: changing global value in main

#include <stdio.h>

int my_glob = 4;

int main()
{

printf("num: %d", my_glob);
my_glob = 7;
printf("num now: %d", my_glob);

return 0;

}
*/ 


//   ^ ^ ^ ^ Static Variables ^ ^ ^ ^
/* Lecture's Coverage:
1. Example one: scoping inside a function

#include <stdio.h>

void func();

int main()
{

for(int i = 0; i < 3; ++i) func();

return 0;

}

void func()
{

static int my_stat;
int local = 0;
++my_stat;
++local;
printf("%d %d",my_stat, local);

return;

}

*/

/* Example 1: function local variables - not changing the original values

#include <stdio.h>

void swap(int, int);

int main()
{

int n1 = 1, int n2 = 2;

printf("%d %d\n", n1, n2);
swap(n1, n2)
printf("%d %d\n", n1, n2)

return 0;

}

void swap(int f, int s)
{

int temp = f;
f = s;
s = temp;

}

Example 2: block local variables - not changing the original values

#include <stdio.h>

int main()
{

int x = 1; 
int y = 2;

{

x = 3;
printf("%d\n", x);

}

printf("%d\n", x);

return 0;

}

*/

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



//   ^ ^ ^ ^ ^ Constants ^ ^ ^ ^ ^

//   ^ ^ ^ ^ Pre-Processor Macros ^ ^ ^ ^
//   ^ ^ ^ defines ^ ^ ^
// lecture's coverage:
//   ^ ^ ^ Enums(Almost pre-processor) ^ ^ ^
// lecture's coverage: 
/*
Example 1: Making a boolean logic
enum boolean {NO, YES};

Example 2: Days without typedef (typing enum more than once)
enum Day {SUN = 1, MON, TUE, WED, THU, FRI, SAT};

int main() 
{

enum Day d1,d2; // the second  enum is here 
d1 = SUN;
d2 = THU;

}

Example 3: Days with typedef (typing enum once)

typedef enum {SUN = 1, MON, TUE, WED, THU, FRI, SAT} Day;

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


}









//   & & & & & & Flow Control & & & & & &


void fun_flow_control()
{


//   ^ ^ ^ ^ ^ Statements ^ ^ ^ ^ ^
//   ^ ^ ^ ^ Blocks ^ ^ ^ ^ 

//   ^ ^ ^ ^ ^ Conditional Statements & & & & & &
//   ^ ^ ^ ^ If & Else ^ ^ ^ ^ ^
// map to the tablet - new skill for relations, building a graph under constraints (number of maximum relation checks on members, like finding the max of 3 numbers(linear relation) in no more than 3 tries)
// and also - mapping the control flow diagram - a straight line digram that splits whenever theres a conditional statement:
//             - - - - - - - -
//    - - - - -| condition 1  | - - - - - (when theres else-if the split is more than two - 3 + )
//             - - - - - - - - 
// lecture's coverage:
/*

Example one: digit checking
int main()
{
char input;

printf("digit plz: %c \n", );

scanf("%c", &input)

if(input >= '0' %% input <= '9')
{
printf("yes");
}

print

return 0;
}

//   ^ ^ ^ ^ Nested Ifs(and If-Else) ^ ^ ^ ^ ^

Example two: bigger number finding:
int main()
{

int n1, n2;
printf("2 ints: \n");
scanf(" %d %d ", &n1, &n2);
print("bigger: \n")
if(n1 > n2) printf("n1 \n");
else printf("n2 \n");

return 0;

}

Example three: three digit number checking

#include <stdio.h>
#define LOW_LIMIT 100
#define HIGH_LIMIT 999

int main()
{
int input;
printf("num please");
scanf("%d", &input);
if(((input >= LOW_LIMIT) && (input <= HIGH_LIMIT)) && (input >= -1*HIGHER_LIMIT) && (input <= -1*LOW_LIMIT))) printf("3 digits");
if(input >= 0) printf("positive");
else printf("negative");

return 0;
}

Example four: biggest number out of three

#include <stdio.h>

int main()
{
int n1, n2, n3;
printf("Enter 3 nums\n");
scanf("%d %d %d", &n1, &n2, &n3);
printf("biggest");

if(n1 > n2)
{
if(n1 > n3) printf("n1");
else printf("n3");
}
else
{
if(n2 > n3) printf("n2");
else printf("n3")
}

return 0;
}



//   ^ ^ ^ ^ Switch ^ ^ ^ ^ ^

Example five: printing one/two/three/four according to the input

main()
{

int num;
printf("num pls")
scanf("%d", &num);
switch(num)
{
case 1: printf("one\n"); break;
case 2: printf("two\n"); break;
case 3: printf("three\n"); break;
case 4: printf("four\n"); break;

default: printf("another value\n"); break;

}

return 0;

}

Example six: +/-/* calculator

#include <stdio.h>
typedef enum {ADD = 'A', ADD_S = 'a', SUB = 'S', SUB_S = 's',  MUL = 'M', MUL_S = "m"} Operator;

int main()
{

// inputs

printf("two nums\n");
scanf("%d %d", &n1, %n2);
printf("operator now\n");

switch()
// finish this 

return 0;
}


//   ^ ^ ^ ^ ^ Loops ^ ^ ^ ^ ^ 

//   ^ ^ ^ ^ For Loops ^ ^ ^ ^


//   ^ ^ ^ ^ Empty portions in for loop ^ ^ ^ ^
// no init? not condition? no counter?


//   ^ ^ ^ Up-Counter For loops ^ ^ ^
Lectures example:
1. Example one: printing hello world with iteration number three times

int main()
{

for(int i = 0; i < 3; ++i) printf("Hello world, Iteration: %d \n", i+1);

return 0;

}

2. Example two: summing number from 10 to 150 through iterations

int main()
{

for (int i = 10; sum = 0; i <= 150 ; sum += i ; ++i ) {} 

}

3. Example three: 

//   ^ ^ ^ Halving Counter For loops ^ ^ ^
4. Example four printing the powers of 2 from 32 to 1
 int main()
{

printf("The twos power from 32 to 1 are:\n")
for (int i = 32; i >= 1 ; i/2) print("%d \n", &d);

return 0;

}

//   ^ ^ ^ ^ While Loops ^ ^ ^ ^

Lecture examples
1. Example one inputting a name:

#include <stdio.h>

int main()
{

char input;
printf("enter it")
scanf("%c", &input)
while(input != ' ')
{

printf("%c", input);
scanf("%c", &input);

}

return 0;
}

1. Example two - average grade calculation:

int main()
{

int sum = 0, counter = 0, grade; 
float average;
printf("grade\n")
scanf("%d", &grade)
while(grade != -1)
{
sum += grade;
++counter;
scanf("%d", &grade)
}

avg = (float)sum / counter;
printf("%f\n", avg);

return 0;

}

//   ^ ^ ^ Do-While Loops ^ ^ ^
Example three - finding the maximum number

#include 

int main()
{

int num;
int max = 0;
do
{
printf("num");
scanf("%d", &num);
if(num > max) max = num;
}
while(num != -1);
printf("max: %d\n", max);

return 0;

}
*/

//   ^ ^ ^ ^ ^ Functions ^ ^ ^ ^ ^ 
// add to tablet: 1. static stack segment layout (building the stack) + dynamic stack segment allocation in function calls (changing the values and releasing the layout parts) 
// Lecture's coverage:
/*
1. Example one:
*/

//   ^ ^ ^ ^ Function prototyping ^ ^ ^ ^
// Lecture's coverage: 
/*
1. Example one : powered numbers

#include <stdio.h>

int power(int, int);

int main()
{

int n = 5;
int r1 = power(2, n);
int r2 = power(3, n);

printf("results %d %d\n", r1, r2);

return 0;

}

int power(int base, int exp)
{

int pow_num = base;

for(int i = 1; i <= exp; ++i) pow_num = pow_num *= base;

return pow_num;

}

Example two: printing stars
#include <stdio.h>

void print_stars(int, int)

int main()
{

int len, wid;
printf("%d %d\n", len, wid);
scanf("%d %d", &wid, &len);
print_stars();
return 0;

}

void print_stars(int w, int l)
{

for(int i=0; i < l; ++i) {

for(int j=0; j < w; ++j) printf("*");
printf("\n");

}

return;

}

3. Example Three: summing two numbers

#include <stdio.h>

sum_two(int, int);

main
{

int n1 = 3, n2 = 4, adding;
adding = sum_two(n1, n2);
return 0;

}


sum_two (int d1, int d2)
{

int sum = d1 + d2;
return sum;

}

4. Example four: multiplying function

#include <stdio.h>

int multiply(int, int);

int main()
{

int n1 = 2, int n2 = 3;
print("%d", multiply(n1, n2));
int n1 = 3, int n2 = 4;
print("%d", multiply(n1, n2));

return 0;

}

int multiply(int f, int s)
return f*s;

5. Example five:  
#include <stdio.h>




*/

//   ^ ^ ^ ^ Recursive Functions ^ ^ ^ ^

//inlining functions

//   ^ ^ ^ ^ ^ Function Overloading


}



//   & & & & & & Structs & & & & & &

//   & & & & & & Classes & & & & & &


/*   < < < < < < < <   Design Principles   > > > > > > > >   */

//   & & & & & & Procedural Design & & & & & &  

//   ^ ^ ^ ^ ^ Procedures: Implemented as Functions ^ ^ ^ ^ ^
//   ^ ^ ^ ^ ^ Sequence/Execution control: Control Flow section's tools (if,else-if, for etc...) ^ ^ ^ ^ ^
//   ^ ^ ^ ^ ^ Scope Modularity(?): Each function variable has a local scope ^ ^ ^ ^ ^ 
//   ^ ^ ^ ^ ^ Single Responsibility Modularity: one function takes care of one functional requirement ^ ^ ^ ^ ^
//   ^ ^ ^ ^ ^ Message Passing: Function invocation ^ ^ ^ ^ ^
//   ^ ^ ^ ^ ^ Abstraction: each function invocation is a black box ^ ^ ^ ^ ^
//   ^ ^ ^ ^ ^ Supports TDD: using the function, and then impementing



"""
