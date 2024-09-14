// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   LESSON 05: INHERITANCE   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

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



#ifndef DATE_H
#ifndef EMPLOYEE_1
#ifndef MANAGER_1
#ifndef CLASS_A
#ifndef CLASS_B

#define DATE_H
#define EMPLOYEE_1
#define MANAGER_1
#define CLASS_A
#define CLASS_B



class My_Date
{

public:

	My_Date(): year(2020), month(2), day (2) {}
	My_Date(int year, int month, int day): year(year), month(month), day(day) {}
	My_Date(const My_Date& other_date): year(other_date.year), month(other_date.month), day(other_date.day) {}

	~My_Date() {}

	My_Date& operator=(const My_Date& other_date)
	{
		if (this != &other_date)
		{
			year = other_date.year;
			month = other_date.month;
			day = other_date.day;
		}
		return *this;
	}

private:

	int year, month, day;

};

class Employee1
{

public:

	Employee1(): full_name(nullptr), hiring_date(), id(NULL), department_id(NULL) {}
	Employee1(const Employee1& other_employee) : full_name(nullptr), hiring_date(other_employee.hiring_date), id(other_employee.id), department_id(other_employee.department_id)
	{
		if (other_employee.full_name)
		{
			int name_length = 0;
			while (other_employee.full_name[name_length] != '\0') ++name_length;
			full_name = new char[name_length];
			for (int init_index = 0; init_index < name_length; ++init_index) full_name[init_index] = other_employee.full_name[init_index];
		}
	}

	~Employee1() { delete full_name; }

	Employee1 operator=(const Employee1& other_employee)
	{
		if (this != &other_employee)
		{
			delete full_name;
			if (other_employee.full_name)
			{
				int name_length = 0;
				while (other_employee.full_name[name_length] != '\0') ++name_length;
				full_name = new char[name_length];
				for (int copy_index = 0; copy_index < name_length; ++copy_index) full_name[copy_index] = other_employee.full_name[copy_index];
			}
		}
		return *this;
	}

	void set_hiring_date(int y, int m, int d) { hiring_date = My_Date(y,m,d); }
	void set_department(short dep_id) { department_id = dep_id; }

private:

	char* full_name;
	My_Date hiring_date;
	int id;
	short department_id;

};

class Manager1 // : public Employee1 to inherit from empoyee
{

public:

	Manager1(): emp_part(), workers(nullptr), number_of_workers(NULL)  {}
	Manager1(const Manager1& other_manager): emp_part(other_manager.emp_part), workers(nullptr), number_of_workers(other_manager.number_of_workers)
	{
		if (other_manager.workers)
		{
			workers = new Employee1[number_of_workers];
			for (int init_index = 0; init_index < number_of_workers; ++init_index) workers[init_index] = other_manager.workers[init_index];
		}
	}

	~Manager1() { delete workers; }

	Manager1& operator=(const Manager1& other_manager)
	{
		if (this != &other_manager)
		{
			delete workers;
			if (other_manager.workers)
			{
				number_of_workers = other_manager.number_of_workers;
				workers = new Employee1[number_of_workers];
				for (int copy_index = 0; copy_index < number_of_workers; ++copy_index) workers[copy_index] = other_manager.workers[copy_index];
			}
		}
		return *this;
	}

private:

	Employee1 emp_part;
	Employee1* workers;
	int number_of_workers;

};

class ClassA
{

public:

	ClassA(): i_field_1(NULL) {}
	ClassA(const ClassA& other_a): i_field_1(other_a.i_field_1) {}

	~ClassA() {}

	void function_not_to_override() {}
	void function_to_override() {}
	void function_to_override_and_use() {}
	void function_to_hide(int hide_this) {}

	ClassA& operator=(const ClassA& other_a) { i_field_1 = other_a.i_field_1; return *this; }

private:

	int i_field_1;

};

class ClassB : public ClassA
{

public:

	ClassB(): ClassA(), i_field_2(NULL) {}
	ClassB(const ClassB& other_b): ClassA(other_b), i_field_2(other_b.i_field_2) {}

	~ClassB() {}

	ClassB& operator=(const ClassB& other_b) { (ClassA&)*this = other_b; i_field_2 = other_b.i_field_2; } // ClassA::operator=(other_b); is the classic //

	void function_to_override() {}
	void function_to_override_and_use() { function_to_override_and_use(); }
	void function_to_hide() {} // function_to_hide(); will call B's function //

private:

	int i_field_2;

};

// employee + manager (before inheritance) here //
// class A and class B examples (first and hiding exmples) //
// ----------------------------------------------- Long examples ------------------------------------------------

class Lecture5{};


void general_employee_pair(const Employee1& emloyee_to_add, const Manager1& manager_to_add);
void lecture_5_main();


#endif // !CLASS_B
#endif // !CLASS_A
#endif // !MANAGER_1
#endif // !EMPLOYEE_1
#endif // !DATE_H


// #include "Lecture5.h"

void general_employee_pair(const Employee1& emloyee_to_add, const Manager1& manager_to_add)
{
	// what here ?? //
	Employee1* my_pair = new Employee1[2];
	my_pair[0] = emloyee_to_add;
	// my_pair[1] = manager_to_add;   when manager inherits from employee //
}

void lecture_5_main()
{
	Employee1 my_employee;
	Manager1 my_manager;
	general_employee_pair(my_employee, my_manager);
}
