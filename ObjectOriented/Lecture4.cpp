// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   LESSON 04: FRIEND/OPERATORS   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

// -> classes: 6
// 1. TwoDigits
// 2. NoDefualtPoint
// 3. MyPoint
// 4. MyLine
// 5. OnlyCtorString
// 6. MyStack
// -> functions: 1
// 1. lecture_2_main

// ----------------------------------------- Simple Applicative examples ----------------------------------------

#pragma once
#include <iostream>
using namespace std;


#ifndef CLASS_ONE
#ifndef CLASS_TWO
#ifndef MY_POINT_4
#ifndef  MY_LINE_2
#ifndef MY_ARRAY

#define CLASS_ONE
#define CLASS_TWO
#define MY_POINT_4
#define MY_LINE_2
#define MY_ARRAY



class Y
{
public:
	Y(int i) { c = nullptr; }
	Y(const char* n, int j = 0) { c = nullptr; }
private:
	int a, b;
	char* c;
};

// TODO: finish the examples //

class ClassOne
{

public:

	ClassOne(): i_field(0) {}
	// ClassOne(const ClassTwo&) { i_field = 5; }
	ClassOne(int i_var): i_field(i_var) {}

	~ClassOne() {}

	operator int() { return i_field; }
	operator double() { return (double)i_field; }

private:

	int i_field;

};

class ClassTwo
{

public:

	ClassTwo(int i_var) : i_field(i_var) {}

	operator ClassOne() const { return ClassOne(i_field); }

private:

	int i_field;

};


void playing_with_self_made_conversions();


// ----------------------------------------------- Long examples ------------------------------------------------

void lecture_4_main();

class Lecture4{};


class MyPoint4
{

public:

	MyPoint4(int x=NULL, int y=NULL): x(x), y(y) {}
	MyPoint4(const MyPoint4& other_point):MyPoint4(other_point.x, other_point.y) {}

	~MyPoint4() {}

	friend bool equals(const MyPoint4&, const MyPoint4&);
	friend class MyLine2;

	void print() { cout << "(" << x << "," << y << ")"; }

private:

	int x, y;

};

// a friend function can access the private areas: //
inline bool equals(const MyPoint4& first_point, const MyPoint4& second_point) { return first_point.x == second_point.x && first_point.y == second_point.y; } // no validity check //

class MyLine2
{

public:

	MyLine2(): starting_point(), ending_point() { }
	MyLine2(const MyPoint4& first_point, const MyPoint4& second_point): starting_point(first_point), ending_point(second_point) {}

	~MyLine2() {}

	void shrink(); // a function for setting the to point to be duplicate as from point //

	void print() { cout << "( "; starting_point.print(); cout << " , "; ending_point.print(); cout << " )" << endl; }

private:

	MyPoint4 starting_point, ending_point;

};

inline void MyLine2::shrink()
{
	ending_point.x = starting_point.x;
	ending_point.y = starting_point.y;
}

class MyArray
{
public:

	MyArray(): elements(nullptr), array_length(NULL){}
	MyArray(int* other_array, int size) : MyArray() // using the defualt C'tor for the first allocation handling //
	{
		if (other_array)
		{
			array_length = size;
			elements = new int[array_length];
			for (int init_index = 0; init_index < array_length; ++init_index) this->elements[init_index] = other_array[init_index];
		}
	}
	MyArray(const MyArray& other_array): MyArray(other_array.elements, other_array.array_length){}

	~MyArray() { delete elements; }

	MyArray& operator=(const MyArray& other_array)
	{
		if (this != &other_array)
		{
			array_length = other_array.array_length;
			delete elements;
			elements = new int[array_length];
			for (int copy_index = 0; copy_index < array_length; ++copy_index) elements[copy_index] = other_array.elements[copy_index];
		}
		return *this;
	}

	void print() { cout << "array is: "; for (int printing_index = 0; printing_index < array_length; ++printing_index) { cout << elements[printing_index] << " "; } cout << endl; }

private:

	int* elements;
	int array_length;

};

void get_y_as_parameter(Y);
void get_y_as_parameter_2(Y&);
void get_y_as_parameter_3(const Y&);
void func(const ClassOne&);
void playing_with_lines();
void playing_with_arrays(); // try to check the copy ctor //
void lecture_4_main();


#endif // !CLASS_TWO
#endif // !CLASS_ONE
#endif // !MY_ARRAY
#endif // ! MY_LINE_2
#endif // MY_POINT_$

//  --------------------------------------------------- Tests ---------------------------------------------------


// #include "Lecture4.h"

void playing_with_lines()
{
	MyPoint4 p_1(1, 2), p_2(3, 4);
	MyLine2 l_1(p_1, p_2);
	l_1.print();
	l_1.shrink();
	l_1.print();
	cout << endl << "---------------finish playing with lines function--------------" << endl;
}

void playing_with_arrays()
{
	// basic API check:
	int* first_array = new int[3];
	first_array[0] = 1; first_array[1] = 2; first_array[2] = 3;
	MyArray m_a_1(first_array, 3);
	first_array[0] = 4; first_array[1] = 5; first_array[2] = 6;
	MyArray m_a_2(first_array, 3);
	cout << "first "; m_a_1.print();
	cout << "second "; m_a_2.print();
	m_a_2 = m_a_1;
	cout << "first "; m_a_1.print();
	cout << "second "; m_a_2.print();
	// concatenation check:
	int arr_to_concat[3] = { 7,8,9 };
	MyArray temp(arr_to_concat, 3);
	m_a_1 = temp = m_a_2;
	cout << "first "; m_a_1.print();
	cout << "second "; m_a_2.print();
	cout << "third "; temp.print();

	cout << endl << "---------------finish playing with arrays function--------------" << endl;
}

void playing_with_self_made_conversions()
{
	Y y_obj = 2; // conversion ctor activation //
	Y y_obj_1 = "something"; // conversions ctor activation //
	y_obj = 7; // conversion ctor + cctor activation //
	get_y_as_parameter(5);
	// get_y_as_parameter_2(5); is a comp error (temp object is constant) //
	get_y_as_parameter_3(5);

	int intVal = 5;
	ClassOne exObject = intVal; // ctor
	ClassOne ctr(5);
	int intVal2 = ctr; // int operator conversion
	double dVal = ctr; // double operator conversion

	ClassTwo t(1);
	func(t); // ambigious user defined conversion leads to comp. error! //
	func(1);


	cout << endl << "---------------finish playing with self made conversions function--------------" << endl;
}

void func(const ClassOne& one) {}

void get_y_as_parameter(Y) {}
void get_y_as_parameter_2(Y&) {}
void get_y_as_parameter_3(const Y&) {}


void lecture_4_main()
{
	playing_with_lines();
	playing_with_arrays();
	playing_with_self_made_conversions();
}
