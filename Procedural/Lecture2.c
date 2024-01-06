#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

// prototypes here //
void constant_functionality();
int enum_implementation();
void playing_with_conversions();
int playing_with_control_flow();

// ----------------------------------------- Simple Applicative examples ----------------------------------------

int main()
{
	constant_functionality();
	return 0;
}

void constant_functionality()
{
#define PI 3.145
#define MAX_SIZE 10
#define CLASS1 20

	// run time constants: //

	const int max_grade = 100;
	const char end_char = '\0'; // the same as using NULL //
	const class2 = 14;

	// compile time constants //

	// constexpr float e_number = 2.17  note: keyword not recognized //

	printf("first: %d, second: %d", CLASS1 ,  class2);

}

int enum_implementation()
{
#define NO_ERROR 0

	enum boolean {NO, YES};
	typedef enum { JAN = 1, FEB, MAR, APR, MAY, JUN, JUL, AUG, SEP, OCT, NOV, DEC } month;
	enum month feb_holding_variable = FEB;
	enum month mar_holding_variable = MAR;

	enum day {SUN = 1, MON, TUE, WED, THU, FRI, SAT};
	enum day day_1 = SUN, day_2;
	day_2 = TUE;

	// what here ?? //

	return NO_ERROR;
}

// ----------------------------------------------- Long examples ------------------------------------------------

void playing_with_conversions()
{
	/* conversion cases:
	1. promotion to enable operations IF one is different
	2. promotion/demotion to the type assigned
	*/

	double d_var_1 = 12.5;
	int i_var_1 = 3, i_var_2 = 4;
	i_var_1 = i_var_2 + d_var_1; // int assignment: converts the int to double through temps //
	i_var_1 = (float)i_var_1 / i_var_2; // int assigment + divide operation: explicit and implicit conversions //

	// more conversions and prints //
	int i_var_3 = 3, i_var_4 = 15;
	float f_var_1 = 5.7, f_var_2;

	printf("value=%f\n", f_var_1);
	printf("value=%d\n", f_var_1); // * wrong format //
	f_var_1 = (int)13.2; // ** converting explicitly , *** implicitly : assignment //
	printf("value=%f\n", f_var_1);
	f_var_1 = (int)5.7 + 13.2; // ** converting explicitly , implicitly : adding operation //
	printf("value=%f\n", f_var_1);

	f_var_2 = i_var_1 / i_var_2;
	printf("value=%f\n", f_var_2);
	printf("value=%d\n", f_var_2); // * wrong format //
	printf("value=%f\n", (int)f_var_2); // converting explicitly //

}


int playing_with_control_flow()
{
	int var = 5;
    printf("%d",var++); // printing, and then incrementing //
	printf("%d",++var); // incrementing, and then printing //

	int x = 2, y = (x > 5) + 1 ,a = 2,b ;
	printf(((b = 2) == a)); // boolean expressions built on assigment gets false if the assigned is 0, else 1 //


	int val_1 = 0, val_2 = 2;
	printf("the first value is %d\n", val_1);

	{
		// lexical scope the outside value, and show that the local scope is over //
		// double d_1;
		// printf("local variable: , non-local variable: ", );
	}
	// printf(); <-> show here that local variable is not accessable //

	return NULL;
}

// switch case here //

// TODO: make a main and call all the functions for tests //
