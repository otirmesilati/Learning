// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   LESSON 02: CTOR DTOR CCTOR   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

// -> classes: 7
// 1. TwoDigits
// 2. NoDefualtPoint
// 3. MyPoint
// 4. MyLine
// 5. OnlyCtorString
// 6. MyStack
// 7. MyLinkedList
// -> functions: 1
// 1. lecture_2_main

// ----------------------------------------- Simple Applicative examples ----------------------------------------

// ----------------------------------------------- Long examples ------------------------------------------------

#pragma once
#include <iostream>
using namespace std;



#ifndef LECTURE_2
#ifndef NO_DEF_POINT
#ifndef TWO_DIG
#ifndef MY_POINT
#ifndef MY_LINE
#ifndef ONLY_CTOR_STRING
#ifndef STACK_H
#ifndef MY_LINKED_LIST

#define LECTURE_2
#define NO_DEF_POINT
#define TWO_DIG
#define MY_POINT
#define MY_LINE
#define ONLY_CTOR_STRING
#define STACK_H
#define MY_LINKED_LIST



void lecture_2_main();

class TwoDigits
{

public:

	// inline implemntation: //
	void set_f(char first) { tens = first; }
	void set_s(char second) { ones = second; }

	void show(); // this will be explicit inline //

private:

	char tens, ones;
};

inline void TwoDigits::show() { cout << "The number is: " << tens << ones << endl << endl; }


class NoDefualtPoint
{

public:

	NoDefualtPoint(int x_to_input, int y_to_input) { x = x_to_input, y = y_to_input; }

	void show() { cout << "(" << x << "," << y << ")" << endl << endl; }

private:

	int x, y;

};

class MyPoint
{

public:

	MyPoint();
	MyPoint(int, int);

	~MyPoint();

	void set_x(int);
	void set_y(int);

	int get_x();
	int get_y();

	void show();

private:

	int x;
	int y;

};

class MyLine  // change this according to point //
{

public:

	MyLine();
	MyLine(int, int, int, int);
	MyLine(const MyPoint&,const MyPoint&);

	~MyLine();

	void set_line(int, int, int, int);
	void set_line(const MyPoint& ,const MyPoint&);

	void show();

private:

	MyPoint p1, p2;

};

inline void MyLine::show() { p1.show(); cout << endl;  p2.show(); cout << endl << endl; }


// inline partial string implementation //
class OnlyCtorString
{

public:

	// strcpy_s(chArray, phrase.size()+1, phrase.c_str());
	OnlyCtorString(const char* str = NULL) { current_str = new char[strlen(str) + 1]; strcpy_s(current_str, (strlen(str) + 1) * sizeof(char) ,str); }
	OnlyCtorString(const OnlyCtorString& str) { current_str = nullptr; }

	~OnlyCtorString() {}

private:

	char* current_str;

};


// implementation's empty
class MyStack
{

public:

	bool push(const int& element) { return true; }
	bool pop() { return true; }
	bool top_return(const int& element) { return true; }

	int count() { return NULL; }

private:

	int* stacks_array;
	int top;
	int max_capacity;

};

class MyLinkedList
{

public:

	bool insert() { return true; }
	bool remove() { return true; }

private:

	class LinkedListNode
	{

	public:

		int get_value() { return NULL; }

	private:

		int node_value;
		LinkedListNode* next;

	};

};

class Lecture2 {};


void lecture_2_main();



#endif // !MY_LINKED_LIST
#endif // STACK_H
#endif // !ONLY_CTOR_STRING
#endif // !MY_LINE
#endif // MY_POINT
#endif // NO_DEF_POINT
#endif // !TWO_DIG
#endif // !LECTURE 2


#include "Lecture2.h"

// point section //

// Start: MyPoint

MyPoint::MyPoint(): x(0), y(0) {}
MyPoint::MyPoint(int x, int y) { this->x = x; this->y = y; }

MyPoint::~MyPoint() {}

void MyPoint::set_x(int x) { this->x = x; }
void MyPoint::set_y(int y) { this->y = y; }

int MyPoint::get_x() { return x; }
int MyPoint::get_y() { return y; }

void MyPoint::show() { cout << "(" << x << "," << y << ")" << endl; }

// End: BasePoint


// Start: MyLine

MyLine::MyLine() { p1; p2; } // defualt Ctor
MyLine::MyLine(int x_1, int x_2, int y_1, int y_2) { p1.set_x(x_1); p2.set_x(x_2); p1.set_y(y_1); p2.set_y(y_2); }
MyLine::MyLine(const MyPoint& p1_copy, const MyPoint& p2_copy) { p1 = p1_copy; p2 = p2_copy; } // defualt copy constructor

MyLine::~MyLine() {}

void MyLine::set_line(int x_1, int y_1, int x_2, int y_2) { p1.set_x(x_1); p2.set_x(x_2); p1.set_y(y_1); p2.set_y(y_2); }
void MyLine::set_line(const MyPoint& p1_copy, const MyPoint& p2_copy) { p1 = p1_copy; p2 = p2_copy; }

// End: MyLine


void lecture_2_main()
{
	TwoDigits td_1;
	td_1.set_f('5'), td_1.set_s('4');
	td_1.show();


	// NoDefualtPoint p3; // compilation error : no defualt constructor exists for class "NoDefualtPoint" //
	NoDefualtPoint p4(15, 12);
	p4.show();

	MyPoint p1, p2; // defualt Ctor
	p1.set_x(15), p1.set_y(10);
	p2.set_x(0); p2.set_y(0);

	MyLine l1, l2; // defualt Ctor debug this to check for def ctors
	l1.set_line(15, 10, 7, 6);
	l1.show();
	l2.set_line(p1, p2);
	l2.show();

}

