/*
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   WORKSHOP 1 : Small Calculator    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   LANGUAGE: C                      XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   Date: 04/01/2024                 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   Author: Otir Mesilati            XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

NOTES: very fragile switch logic :( , if the input isn't a/s/m/d, pop goes the error!

-> Functions: 4

Function Specifications:

1. add_Two_Numbers: " + " Calculator function
   IN:   2 natural numbers to add.
   OUT:  sum of the 2 numbers.

2. subtract_Two_Numbers: " - " Calculator function
   IN:   2 natural numbers to subtract.
   OUT:  difference of the 2 numbers.

3. multiply_Two_Numbers: " × " Calculator function
   IN:   2 natural numbers to multiply.
   OUT:  mutiplication of the 2 numbers.

4. divide_Two_Numbers: " ÷ " Calculator function
   IN:   2 natural numbers to divide.
   OUT:  division of the 2 numbers.

->> Main function: TBD

*/


#define _CRT_SECURE_NO_WARNINGS // use this in case of unwanted scanf_s and not needed warnings //
#include <stdio.h> // Standard C Library Usage for input and output //


typedef enum {ADD = 'a', SUB = 's', MUL = 'm', DIV = 'd' };


// main function act's as a 1 to 4 Switch for each Arithmetic operation //
int main()
{
	/* Variables & Scope:
	first_Number, second_Number, result: Three main - local variables for calculator operations
	space_cleaner = meant to handle the spacing problem in char inputting through scanf
	scanf_return_success: Success flag counter for scanf success
	NOTE: this variable is the fragile point!! hazards if not inputting a/s/m/d.
	calculator_function_switch: Main local variable for deciding the operation
	*/
	int first_Number = 0, second_Number = 0, calculation_result = 0;
	int scanf_return_success = 0;
	char space_cleaner = NULL, calculator_function_switch_key = 'a';


	printf("Please enter two natural numbers:\n\n");
	if (scanf("%d", &first_Number)) { ++scanf_return_success; }
	if (scanf("%d", &second_Number)) { ++scanf_return_success; }
	printf("\n\n");

	printf("Please enter the operation you would like to make:\n");
	printf(" 1. 'a' for addition \n");
	printf(" 2. 's' for subtraction \n");
	printf(" 3. 'm' for multiplication \n"); //
	printf(" 4. 'd' for division \n\n"); //

	if (scanf("%c", &space_cleaner)) { ++scanf_return_success; } // catching the pesky '\n';
	if (scanf("%c", &calculator_function_switch_key)) { ++scanf_return_success; }

	printf("\n\n");

	switch (calculator_function_switch_key)
	{
	case ADD:
		calculation_result = add_Two_Numbers(first_Number, second_Number);
		printf("The summation of the two numbers is: %d\n\n", calculation_result);
		break;

	case SUB:
		calculation_result = subtract_Two_Numbers(first_Number, second_Number);
		printf("The difference of the two numbers is: %d\n\n", calculation_result);
		break;

	case MUL:
		calculation_result = multiply_Two_Numbers(first_Number, second_Number);
		printf("The multiplication of the two numbers is: %d\n\n", calculation_result);
		break;
	case DIV:
		calculation_result = divide_Two_Numbers(first_Number, second_Number);
		printf("The division of the two numbers is: %d\n\n", calculation_result);
		break;
	default:
		break;
	}



	return 0;
}


// Calculator functions prototypes(headers) //
int add_Two_Numbers(summand, addend); // " + " Function //
int subtract_Two_Numbers(minuend, subtrahend); // " - " Function //
int multiply_Two_Numbers(multiplier, multiplicand); // " × " Function //
int divide_Two_Numbers(dividend, divisor); // " ÷ " Function //


// Calculator functions implementation //
int add_Two_Numbers(summand, addend) { return summand + addend; }

int subtract_Two_Numbers(minuend, subtrahend) { return minuend - subtrahend; }

int multiply_Two_Numbers(multiplier, multiplicand) { return multiplier * multiplicand; }

int divide_Two_Numbers(dividend, divisor) { return dividend / divisor; }


