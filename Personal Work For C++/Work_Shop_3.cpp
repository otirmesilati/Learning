/*
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   WORKSHOP 3 : Playing around with the language   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   LANGUAGE: C++                                   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   Date: 13/02/2024                                XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   Author: Otir Mesilati                           XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX





--->> Constraints & dependencies:

Dependencies: (1)
1. inputting and outputting to the console.

Constraints:
1. C++ Standard library:
1.1. Namespace std:
1.1.1. IOStream Stream section





--->> Structure & Procedures

Function Specifications: (1)

1. first_Worsk_Shop_Main: the main function of this file
   IN: Non.
   OUT: Non.

2. add: A function for adding two integers
   IN(2): int Summand and int Addend
   OUT(1): int Summation

3. add: A function for adding three integers
   IN(3): three integers
   OUT(1): int Summation

4. add: A function for adding two float
   IN(2): float Summand and float Addend
   OUT(1): float Summation

5. add: A function for adding two integers
   IN(2): Summand and Addend
   OUT(1): Summation

Method Specifications: (1)

2. Simple_String: C'tor
   IN:  char Array
   OUT:  Simple_String Instance





--->> Classes and Objects

Class Specifications: 1 In total

Design TODOs:
1. Basic arithmetic functions
2. develop from there to more functions
3.

*/



#pragma once
#include <iostream>
using namespace std;



int add(int, int);
int add(int, int, int);
float add(float, float);
float add(float, float, float);
double add(double, double);
double add(double, double, double);
int sub(int, int);
int sub(int, int, int);
float sub(float, float);
float sub(float, float, float);
double sub(double, double);
double sub(double, double, double);
float div(float, float);
double div(double, double);
int sum(int);
int termial(int);
int prod(int);
int fact(int);



int add(int augend, int summand) { return augend + summand; }
int add(int addend_1, int addend_2, int addend_3) { return addend_1 + addend_2 + addend_3; }
float add(float augend, float summand) { return augend + summand; }
float add(float addend_1, float addend_2, float addend_3) { return addend_1 + addend_2 + addend_3; }
double add(double augend, double summand) { return augend + summand; }
double add(double addend_1, double addend_2, double addend_3) { return addend_1 + addend_2 + addend_3; }
int sub(int minuend, int subtrahend) { return minuend - subtrahend; }
int sub(int minuend, int subtrahend_1, int subtrahend_2) { return minuend - subtrahend_1 - subtrahend_2; }
float sub(float minuend, float subtrahend) { return minuend - subtrahend; }
float sub(float minuend, float subtrahend_1, float subtrahend_2) { return minuend - subtrahend_1 - subtrahend_2; }
float div(float dividend, float divisor) { return dividend / divisor; }
double div(double dividend, double divisor) { return dividend / divisor; }


int first_Worsk_Shop_Main() { return 0; }

/* Implementation TODOs:
1. Add macros
2.
*/
