// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   LESSON 01: CLASSES XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

// -> functions: 1
// 1. class_points_main
// 2. lecture_1_main

// ----------------------------------------- Simple Applicative examples ----------------------------------------
# define _CRT_SECURE_NO_WARNINGS // use this in case of unwanted scanf_s and not needed warnings //
#include <stdio.h>

void input_main();
int float_format_cutting();
void variables_input_and_output();
void up_casted_conversions();

int lecture_1_main()
{
	// variable decleration (and non relevant value automatic assignment)
	int x;
	int i, j, k;
	char c1, c2;
	double _d1;

	printf("hello world");
	printf("hm?");

	// variable assignment and inititation/ class instantiation //
	c1 = 'A';
	char c3 = 51; // the same as up above //
	double pi_two_places = 3.14;
	input_main();

	int return_value_1 = float_format_cutting();
	printf("%c",c3);
	variables_input_and_output();
	up_casted_conversions();

	return 0;
}
// ----------------------------------------------- Long examples ------------------------------------------------

void input_main()
{
	// declaring variables //
	int x, success;
	float y;
	char z;

	// input values //
	success = scanf("%d", &x);
	success = getchar();
	success = scanf("%f", &y);
	success = getchar();
	success = scanf("%c", &z);
	success = getchar();

	// output values //
	success = printf("x=%d, y=%f, z=%c \n", x, y, z);
}


int float_format_cutting()
{
	int first_number = 3;
	float second_number = 2.34848484;

	printf("The first number is %d, and the second number is%.2lf", first_number, second_number);
	printf("hello");

	return 0;
}

void variables_input_and_output()
{
	// declaring the variables //
	int v_1;
	double v_2;
	char v_3;

	// getting the input from the user //
	printf("please enter an integer, a rational and a character \n");
	int success = scanf("%d", &v_1);
	success = getchar();
	success = scanf("%lf", &v_2);
	success = getchar();
	success = scanf("%c", &v_3);

	// printing the results //
	printf("The inputs are: %d %.3lf %c", v_1, v_2, v_3);

}

void up_casted_conversions()
{
	int val_1 = 5;
	double val_2 = val_1;

	// and then math operators for conversions //
	val_1 = val_1 / 2;
	val_2 = val_2 / 2;

	printf("the numbers:\nfirst is %d\nsecond is %.4lf", val_1, val_2);
}
