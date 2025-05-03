// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   LESSON 06: MULTI-INHERITANCE/POLYMORPHISM   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

// -> classes: 15
// 1. BaseClass
// 2. DerivedFromBaseClass1
// 3. DerivedFromBaseClass2
// 4. DerivedFromBoth
// 5. MyShape
// 6. MyRectangle
// 7. MyCircle
// 8. FirstLongExampleA
// 9. FirstLongExampleB
// 10. FirstLongExampleC
// 11. SecondLongExampleA
// 12. SecondLongExampleB
// 13. SecondLongExampleC
// 14. SecondLongExampleD
// 15. Lecture6
// -> functions: 1
// 1. lecture_2_main

// TODO: finish the functions //

// ----------------------------------------- Simple Applicative examples ----------------------------------------
#include <iostream>
using namespace std;
#pragma once



#ifndef BASE_CLASS
#ifndef DERIVED_FROM_BASE_CLASS_1
#ifndef DERIVED_FROM_BASE_CLASS_2
#ifndef DERIVED_FROM_BOTH
#ifndef VIRTUAL_DERIVED_1
#ifndef VIRTUAL_DERIVED_2
#ifndef VIRTUAL_DERIVED_BOTH
#ifndef MY_SHAPE
#ifndef MY_TRIANGLE
#ifndef MY_RECTANGLE
#ifndef MY_TRAPEZOID
#ifndef MY_SHAPE_FACTORY
#ifndef ABSTRACT_A
#ifndef ABSTRACT_B

#define BASE_CLASS
#define DERIVED_FROM_BASE_CLASS_1
#define DERIVED_FROM_BASE_CLASS_2
#define DERIVED_FROM_BOTH
#define MY_SHAPE
#define MY_TRIANGLE
#define MY_RECTANGLE
#define MY_TRAPEZOID
#define MY_SHAPE_FACTORY
#define ABSTRACT_A
#define ABSTRACT_B



class BaseClass
{

public:

	int base_i_field;

	BaseClass() : base_i_field(NULL) {}
	BaseClass(const BaseClass& other_base) : base_i_field(other_base.base_i_field) {}

	~BaseClass() {}

	BaseClass& operator=(const BaseClass& other_base)
	{
		if (this != &other_base)  base_i_field = other_base.base_i_field;
		return *this;
	}

private:

};

class DerivedFromBaseClass1 : public BaseClass
{

public:

	DerivedFromBaseClass1(): BaseClass(), first_derived_i_field(NULL) {}
	DerivedFromBaseClass1(const DerivedFromBaseClass1& other_derived_1): BaseClass(other_derived_1) ,first_derived_i_field(other_derived_1.first_derived_i_field) {}

	~DerivedFromBaseClass1() {}

	DerivedFromBaseClass1& operator=(const DerivedFromBaseClass1 other_derived_1)
	{
		if (this != &other_derived_1)
		{
			(BaseClass)*this = other_derived_1;
			first_derived_i_field = other_derived_1.first_derived_i_field;
		}
		return *this;
	}

private:

	int first_derived_i_field;

};

class DerivedFromBaseClass2 : public BaseClass
{

public:

	DerivedFromBaseClass2(): BaseClass() ,second_derived_i_field(NULL) {}
	DerivedFromBaseClass2(const DerivedFromBaseClass2& other_derived_2): BaseClass(other_derived_2) ,second_derived_i_field(other_derived_2.second_derived_i_field) {}

	~DerivedFromBaseClass2() {}

	DerivedFromBaseClass2& operator=(const DerivedFromBaseClass2 other_derived_2)
	{
		if (this != &other_derived_2)
		{
			(BaseClass)*this = other_derived_2;
			second_derived_i_field = other_derived_2.second_derived_i_field;
		}
		return *this;
	}

private:

	int second_derived_i_field;

};

class DerivedFromBoth : public DerivedFromBaseClass1, DerivedFromBaseClass2// make sure to show the compilation error from init list + maybe ambigious not only for field but for method ? //
{

public:

	DerivedFromBoth(): DerivedFromBaseClass1(), DerivedFromBaseClass2(), closing_diamond_i_field(NULL) {}
	DerivedFromBoth(const DerivedFromBoth& other_closing_derived): DerivedFromBaseClass1(other_closing_derived), DerivedFromBaseClass2(other_closing_derived), closing_diamond_i_field(other_closing_derived.closing_diamond_i_field) {}

	~DerivedFromBoth() {}

	DerivedFromBoth& operator=(const DerivedFromBoth other_closing_derived)
	{
		if (this != &other_closing_derived)
		{
			(DerivedFromBaseClass1)*this = other_closing_derived;
			(DerivedFromBaseClass2)*this = other_closing_derived;
			closing_diamond_i_field = other_closing_derived.closing_diamond_i_field;
		}
	}

private:

	int closing_diamond_i_field;

};

class VirtualDerived1 : virtual public BaseClass
{

public:

	VirtualDerived1(): BaseClass(), i_der_1_field(NULL) {}
	VirtualDerived1(const VirtualDerived1& other_der_1): BaseClass(other_der_1), i_der_1_field(other_der_1.i_der_1_field){}

	~VirtualDerived1() {} // here can be a virtual d'tor //

	VirtualDerived1& operator=(const VirtualDerived1 other_der_1)
	{
		if (this != &other_der_1) i_der_1_field = other_der_1.i_der_1_field;
		return *this;
	}

private:

	int i_der_1_field;

};

class VirtualDerived2 : virtual public BaseClass
{

public:

	VirtualDerived2(): BaseClass(), i_der_2_field(NULL) {}
	VirtualDerived2(const VirtualDerived2& other_der_2): BaseClass(other_der_2), i_der_2_field(other_der_2.i_der_2_field) {}

	~VirtualDerived2() {}

	VirtualDerived2& operator=(const VirtualDerived2& other_der_2) { if (this != &other_der_2) i_der_2_field = other_der_2.i_der_2_field; }

private:

	int i_der_2_field;

};

class VirtualBothDerive : public VirtualDerived1, VirtualDerived2
{

public:

	VirtualBothDerive(): BaseClass(), VirtualDerived1(), VirtualDerived2(), i_both_der(NULL) {} // activating the root of the virtual inheritance ct'or first //
	VirtualBothDerive(const VirtualBothDerive& other_both):BaseClass(other_both), VirtualDerived1(), VirtualDerived2(), i_both_der(other_both.i_both_der) {}

	~VirtualBothDerive() {}

	VirtualBothDerive& operator=(const VirtualBothDerive other_both)
	{
		if (this != &other_both) i_both_der = other_both.i_both_der;
		return *this;
	}

private:

	int i_both_der;

};

class MyShape
{

public:

	MyShape() {}
	MyShape(const MyShape&) {}

	~MyShape() {}

	MyShape& operator=(const MyShape&) {}

	virtual void my_draw() {}

private:

};

class MyTriangle: public MyShape
{

public:

	MyTriangle(): MyShape() {}
	MyTriangle(const MyTriangle& other): MyShape(other) {}

	~MyTriangle() {}

	MyTriangle& operator=(const MyTriangle& other) {}

	void my_draw() {cout << endl << "  /\\" << endl << " /  \\" << endl << "/____\\" << endl;}

private:

};

class MyRectangle: public MyShape
{

public:

	MyRectangle() {}
	MyRectangle(const MyRectangle&) {}

	~MyRectangle() {}

	MyRectangle operator=(const MyRectangle&) {}

	void my_draw() { cout << endl << " _____" << endl << "|     |" << endl << "|     |" << endl << "|_____|" << endl; }

private:

};

class MyTrapezoid: public MyShape
{

public:

	MyTrapezoid() {}
	MyTrapezoid(const MyTrapezoid&) {}

	~MyTrapezoid() {}

	MyTrapezoid& operator=(const MyTrapezoid&) {}

	void my_draw() {cout << endl << "    ____ " << endl << "   /    \\" << endl << "  /      \\" << endl << " /________\\" << endl;}

private:

};

class MyShapeFactory
{

public:

	static int number_of_factory_shapes;
	static MyShape** factory_shapes;

	// get instance //
	static MyShape* get_shape();
	static void return_shapes();

private:

};

void playing_with_diamond_inheritance();

// ----------------------------------------------- Long examples ------------------------------------------------

class MyPet
{

public:

	MyPet() {}

	virtual ~MyPet() = 0 {}

	virtual void eat() {}
	virtual void sleep() {}
	virtual void make_sound() {}
	virtual void clean() {}

private:

};

class Lecture6 {};


void playing_with_diamond_inheritance();
void playing_with_factory_shape();
void lecture_6_main();



#endif // !MY_PET
#endif // !ABSTRACT_B
#endif // !ABSTRACT_A
#endif // !MY_FACOTRY_SHAPE
#endif // !MY_TRAPEZOID
#endif // !MY_RECTANGLE
#endif // !MY_TRIANGLE
#endif // !MY_SHAPE
#endif // !SECOND_LONG_EXAMPLE_D
#endif // !SECOND_LONG_EXAMPLE_C
#endif // !SECOND_LONG_EXAMPLE_B
#endif // !SECOND_LONG_EXAMPLE_A
#endif // !FIRST_LONG_EXAMPLE_C
#endif // !FIRST_LONG_EXAMPLE_B


// #include "Lecture6.h"

// Start: MyShapeFactory //
int MyShapeFactory::number_of_factory_shapes = 0;
MyShape** MyShapeFactory::factory_shapes = nullptr;
MyShape* MyShapeFactory::get_shape()
{
	MyShape** new_shape_array = new MyShape * [number_of_factory_shapes + (size_t)1];
	if (number_of_factory_shapes != 0)
	{
		for (int copy_pointers_index = 0; copy_pointers_index < number_of_factory_shapes; ++copy_pointers_index) new_shape_array[copy_pointers_index] = factory_shapes[copy_pointers_index];
		delete[] factory_shapes;
	}

	factory_shapes = new_shape_array;
	++number_of_factory_shapes;
	new_shape_array = nullptr; // end of scope could have taken care of the dual pointing two //

	srand(time(NULL)); // seed for random //

	int shape_pick = rand() % 3;
	if (shape_pick == 0) factory_shapes[number_of_factory_shapes - 1] = new MyTriangle();
	else if (shape_pick == 1) factory_shapes[number_of_factory_shapes - 1] = new MyRectangle();
	else if (shape_pick == 2) factory_shapes[number_of_factory_shapes - 1] = new MyTrapezoid();

	return factory_shapes[number_of_factory_shapes - 1];
}

void MyShapeFactory::return_shapes()
{
	if (number_of_factory_shapes != 0) for (int erase_index = 0; erase_index < number_of_factory_shapes - 1; ++erase_index) delete factory_shapes[erase_index];
	delete[] factory_shapes;
	factory_shapes = nullptr;
	number_of_factory_shapes = 0;
}
 //End: MyShapeFactory

void playing_with_diamond_inheritance()
{
	// regular diamond inheritance //
	BaseClass b_1;
	DerivedFromBaseClass1 d_1;
	DerivedFromBaseClass2 d_2;
	DerivedFromBoth d_b;

	b_1.base_i_field = 1;
	d_1.base_i_field = 1;
	d_2.base_i_field = 1;
	// d_b.base_i_field = 1; is an ambigious request //

	BaseClass* p_b = &b_1;
	BaseClass* p_d_1 = &d_1;
	BaseClass* p_d_2 = &d_2;
	// BaseClass* p_d_b = &d_b; also an ambigious request in up-casting //

	// virtual diamond inheritance: no ambigious problem anymore //
	BaseClass b_2;
	VirtualDerived1 vd_1;
	VirtualDerived2 vd_2;
	VirtualBothDerive vd_b;

	b_2.base_i_field = 2;
	vd_1.base_i_field = 2;
	vd_2.base_i_field = 2;
	vd_b.base_i_field = 2; // only one copy after dynamic allocation, works also in up-casting //

	cout << "------------------playing with diamond inheritance section end-----------------" << endl << endl;

}
void playing_with_factory_shape()
{
	MyShape* random_generated_shape = MyShapeFactory::get_shape();
	random_generated_shape->my_draw();
	MyShapeFactory::return_shapes();
}
void lecture_6_main()
{

	playing_with_diamond_inheritance();
	playing_with_factory_shape();

}


