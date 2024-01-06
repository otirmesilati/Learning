// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   LESSON 01: CLASSES XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

// -> classes: 2
// 1. InlinePoint
// 2. BasePoint
// -> functions: 1
// 1. class_points_main
// 2. lecture_1_main

// ----------------------------------------- Simple Applicative examples ----------------------------------------

// ----------------------------------------------- Long examples ------------------------------------------------

#pragma once
#include <iostream>
using namespace std;



class Lecture1
{

public:

	class InlinePoint
	{

	public:

		bool set_x(int x_to_set) { x = x_to_set; return true; }
		bool set_y(int y_to_set) { y = y_to_set; return true; }

		int get_x() { return x; }
		int get_y() { return y; }

		bool show() { cout << "x = " << x << ", y = " << y << endl; return true; }

	private:

		int x;
		int y;

	};

	class BasePoint
	{

	public:

		bool set_x(int);
		bool set_y(int);

		int get_x();
		int get_y();

		bool show();

	private:

		int x, y;

	};
};


int class_points_main();
void lecture_1_main();


#include "Lecture1.h"

// Start: BasePoint

bool Lecture1::BasePoint::set_x(int x_to_set) { x = x_to_set; return true; }
bool Lecture1::BasePoint::set_y(int x_to_set) { y = x_to_set; return true; }

int Lecture1::BasePoint::get_x() { return x; }
int Lecture1::BasePoint::get_y() { return y; }

bool Lecture1::BasePoint::show() { cout << "x = " << x << ", y = " << y << endl; return true; }

// End: BasePoint


// An example with struct:
struct cPoint
{
	// ----------------------------------------- Simple Applicative examples ----------------------------------------
	int x;
	int y;
	// ----------------------------------------------- Long examples ------------------------------------------------

};

void test_Point_Struct()
{

	struct cPoint my_point;
	my_point.x = 5;
	my_point.y = 7;
	cout << "the structs attributes are x: " << my_point.x << " ,y:  " << my_point.y << endl;

}

int class_points_main()
{

	// same interface for both points:

	cout << "the classes' attributes are " << endl;

	Lecture1::InlinePoint p1;
	// p1.x; <-> comp. error: not visible //
	p1.set_x(15);
	p1.set_y(10);
	p1.show();

	Lecture1::BasePoint p2;
	p2.set_x(9);
	p2.set_y(6);
	p2.show();

	return 0;
}

void lecture_1_main()
{
	test_Point_Struct();
	int zero_holder = class_points_main();
}

//  --------------------------------------------------- Tests ---------------------------------------------------
