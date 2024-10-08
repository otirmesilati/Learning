// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   LESSON 10: TEMPLATES   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

// -> classes: 6
// 1. TwoDigits
// 2. NoDefualtPoint
// 3. MyPoint
// 4. MyLine
// 5. OnlyCtorString
// 6. MyStack
// -> functions: 1
// 1. lecture_2_main

// TODO: tight up this file

// ----------------------------------------- Simple Applicative examples ----------------------------------------
#pragma once
#include <iostream>
using namespace std;



template <class MyType>
bool type_swap(MyType& first_variable, MyType& second_variable)
{
	MyType temporary_type = first_variable;
	first_variable = second_variable;
	second_variable = temporary_type;
	return true;
}

template <typename MyType>
void print_array(MyType array_to_print[], int array_length)
{
	cout << "The array elements are:\t";
	for (int printing_index = 0; printing_index < array_length; ++printing_index) cout << array_to_print[printing_index] << "\t";
	cout << endl;
}

template <class MyType>
void type_bubble_sort(MyType array_to_sort[], int array_length)
{
	for (int sorting_index = array_length - 1; sorting_index >= 1; --sorting_index)
	{
		for (int inner_sorting_index = 0; inner_sorting_index < sorting_index; ++inner_sorting_index)
		{
			if (array_to_sort[inner_sorting_index] < array_to_sort[inner_sorting_index + 1])
			{
				type_swap<MyType>(array_to_sort[inner_sorting_index], array_to_sort[inner_sorting_index + 1]);
			}
		}
	}
}

template<class MyType>
const MyType& type_max(const MyType& left_operand, const MyType& right_operand) {return left_operand > right_operand ? left_operand : right_operand;}

template<class MyType>
const MyType& type_min(const MyType& left_operand, const MyType& right_operand) { return left_operand < right_operand ? left_operand : right_operand;}

// two ways of definition specializing: overloaded style or templated style, needs to be inlined! //
//const int& type_min(const int& left_operand, const int& right_operand) { return left_operand > right_operand ? right_operand : left_operand; }
template<>
inline const int& type_min<int>(const int& left_operand, const int& right_operand) { return left_operand > right_operand ? right_operand : left_operand; }


void swap_function_template_testing();
void array_sorting_testing();
void min_max_specification_testing();

// ----------------------------------------------- Long examples ------------------------------------------------

#ifndef STACK_TEMPLATE
#ifndef ARRAY_TEMPLATE
#ifndef CONTAINER_TEMPLATE

#define STACK_TEMPLATE
#define ARRAY_TEMPLATE
#define CONTAINER_TEMPLATE


template <typename MyType>
class MyStack
{

public:

	MyStack(int = 10);

	~MyStack() {}

	bool push(const MyType&);
	bool pop(MyType&);

private:

	bool is_empty() { return top - 1; }
	bool is_full() { return top == size - 1; }

	MyType* stack_pointer;
	int top;
	int size;

};

template <class MyType>
class MyArray
{

public:

	MyArray(int size): array_size(size), array_pointer(new MyType[array_size]) {}

	~MyArray() { delete[] array_pointer; }

	MyType& operator[] (int index) { return array_pointer[index]; }

	void print() const;

protected:

	MyType* array_pointer;
	int array_size;

};

template<class MyType, int input_size>
class ConstArray
{

public:

	ConstArray(): m_size(input_size), m_array() {}
	MyType operator[](int index_to_retrieve) { return m_array[index_to_retrieve]; }

private:

	MyType m_array[input_size];
	const int m_size;

};

template <typename MyType>
class MyContainer
{

public:

	MyContainer(MyType value) : value(value) {}
	MyType increase() { return ++value;  }

private:

	MyType value;

};

template <> class MyContainer<char>
{

public:

	MyContainer(char value): value(value) {}
	char upper_case();

private:

	char value;

};

class Lecture10 {};

template<class MyType>
MyStack<MyType>::MyStack(int size)
{
	this->size = size > 0 ? size : 10;
	top = 1;
	stack_pointer = new MyType[size];
}

template <class MyType>
bool MyStack<MyType>::push(const MyType& element_to_add)
{
	if (!is_full())
	{
		stack_pointer[++top] = element_to_add;
		return true;
	}
	return false;
}


template <class MyType>
bool MyStack<MyType>::pop(MyType& popped_value)
{
	if (!is_empty())
	{
		popped_value = stack_pointer[--top];
		return true;
	}
	return false;
}

template<typename MyType>
void MyArray<MyType>::print() const
{ cout << "printing array elements: " << endl;
  for (int printing_index = 0; printing_index < array_size; ++printing_index) cout << array_pointer[printing_index] << "\t";
  cout << endl;
}

template <class MyType>


void class_templates_testing();
void lecture_10_main();

#endif // !CONTAINER_TEMPLATE
#endif // !ARRAY_TEMPLATE
#endif // !STACK_TEMPLATE

// #include "Lecture10.h"

void swap_function_template_testing()
{
	int i_var_1 = 1, i_var_2 = 2;
    float f_var_1 = 3.0, f_var_2 = 4.0;
	char c_var_1 = '5', c_var_2 = '6';

	// swapping two ints //
	cout << endl << "The first variable: " << i_var_1 << endl << "The second variable: " << i_var_2 << endl;
	type_swap(i_var_1, i_var_2);
	cout << endl << "The first variable: " << i_var_1 << endl << "The second variable: " << i_var_2 << endl;

	// swapping two floats //
	cout << endl << "The first variable: " << i_var_1 << endl << "The second variable: " << i_var_2 << endl;
	type_swap(f_var_1, f_var_2);
	cout << endl << "The first variable: " << i_var_1 << endl << "The second variable: " << i_var_2 << endl;

	// swapping two characters //
	cout << endl << "The first variable: " << i_var_1 << endl << "The second variable: " << i_var_2 << endl;
	type_swap(c_var_1, c_var_2);
	cout << endl << "The first variable: " << i_var_1 << endl << "The second variable: " << i_var_2 << endl;

}

void array_sorting_testing()
{
	const int arrays_length = 4;
	int my_int_array[arrays_length] = { 21,12,31,4 };
	float my_float_array[arrays_length] = { 14.5f, 7.8f, 23.2f, 45.0f};
	char my_char_array[arrays_length] = { 'f','b','k','e' };

	// swapping int arrays //
	print_array(my_int_array, arrays_length);
	type_bubble_sort<int>(my_int_array, arrays_length); // <> is part of the function name, though can be filled automatically //
	print_array(my_int_array, arrays_length);

	// swapping float arrays //
	print_array(my_float_array, arrays_length);
	type_bubble_sort(my_float_array, arrays_length); // omitting the type to be filled automatically //
	print_array(my_float_array, arrays_length);

	// swapping characters arrays //
	print_array(my_char_array, arrays_length);
	type_bubble_sort<char>(my_char_array, arrays_length);
	print_array(my_char_array, arrays_length);
}

void min_max_specification_testing()
{
	// specifications through calls //
	int i_var = 3;
	double d_var = 1.2;
	cout << endl << "The maximum value of the two variables i_var(3) and d_var(1.2) is: " << type_max<double>(i_var, d_var) << endl;
}

char MyContainer<char>::upper_case()
{

	if (value >= 'a' && value <= 'z') value += ('A' - 'a');
	return value;

}

void class_templates_testing()
{
	// array specialization //
	MyStack<int> my_int_stack;
	ConstArray<int, 5> i_5_array;
	ConstArray<float, 100> f_100_array;

	// container specialization //
	MyContainer<int> cont_1(7);
	MyContainer<char> cont_2('j');
	cout << cont_1.increase() << endl;
	cout << cont_2.upper_case() << endl;

}

void lecture_10_main()
{
	 swap_function_template_testing();
	 array_sorting_testing();
	 min_max_specification_testing();
	 class_templates_testing();
}
