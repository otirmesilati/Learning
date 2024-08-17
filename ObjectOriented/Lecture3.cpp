// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   LESSON 03: STATIC/TEMP/CONST   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

// -> classes: 4
// 1. MyString2
// 2. MyPoint3
// 3. ConstantString
// 4. Student1
// -> functions: 5
// 1. lecture_2_main
// TODO: finish this!

// ----------------------------------------- Simple Applicative examples ----------------------------------------
// ref cube and procedure in main here //
// ----------------------------------------------- Long examples ------------------------------------------------

#pragma once
#include <iostream>
using namespace std;

#ifndef MY_STRING_2
#ifndef MY_POINT_3
#ifndef MY_STRING_3
#ifndef STUDENT_1
#ifndef MY_STRING

#define MY_STRING_2
#define MY_POINT_3
#define MY_STRING_3
#define STUDENT_1
#define MY_STRING



class MyString2
{

public:

	MyString2(const char* str = NULL);

	~MyString2();

	void print_string();

private:

	char* m_str;            // pointer implementation
	char array_str[250];    // array implementation

};


class MyPoint3
{

public:

	// NOTE: no ctors handling the name, just accessors //
	MyPoint3();
	MyPoint3(int, int);
	MyPoint3(const MyPoint3&);

	~MyPoint3();

	bool set_x(const int); // same as int in principle (local scope denies the change)
	bool set_y(int);
	bool set_name(const char*);

	 int get_x ()const;
	 int get_y ()const;
	 const char* get_name()const;

	void print_point();

private:

	int x, y;
	char name [30] ;

};


class ConstantString
{

public:

	ConstantString(char const * = NULL);

	~ConstantString();

	bool set_string(char const *);

	char const* get_string() const;

	void reverse() {}
	bool find(char)const;
	bool print_string();

	char operator[] (int)const;  // the compiler diffrentiates between the two signatures through the use of assignment
	char& operator[](int) ;

private:

	char my_string[300];
	int string_length;
};


class Student1
{

public:

	Student1(int = max_grade);
	Student1(const Student1&);

	~Student1();

	static int get_max_grade();

	bool print();

	const int student_grade;
	static int number_of_students;

private:

	static int max_grade;
	static Student1* impressive_student;

};


class Lecture3 {};


void string_2_testing();
void point_3_testing();
void constant_string_testing();
void student_static_testing();
void lecture_3_main();


#endif // !My_STRING
#endif // !STUDENT_1
#endif // !MY_STRING_3
#endif // My_POINT_3
#endif // !MY_STRING_2



// #include "Lecture3.h"

// Start: MyString2

MyString2::MyString2(const char* str) : m_str(nullptr) , array_str() // initiating an array in init list - empty parantheses
{
	/* TWO ways of initialization:
	* 1. using strcopy
	* 2. using a loop
	*/
	if (str) // checking for non-empty string input , T => , F => it's already null, so nothing more //
	{
		m_str = new char[(int)(strlen(str) + 1)];
		strcpy_s(m_str, ((int)(strlen(str) + 1)) * sizeof(char) , str);

		for(int array_index = 0; array_index < (int)strlen(str) && array_index < 250 ; ++array_index)
		{
			array_str[array_index] = str[array_index];
		}
	}
}

MyString2::~MyString2()
{
	if (m_str) { delete[] m_str; } // no need for deletion of array (statically allocated) //
	m_str = nullptr;
}

void MyString2::print_string()
{
	int print_length = (int)strlen(m_str);
	if (print_length > 249) print_length = 249;

	cout << "The string is: ";
	for (int print_index = 0; print_index < print_length; ++print_index)
	{
		cout << m_str[print_index];
	}
	cout << endl << endl;
}

// End: MyString2


// Start: MyPoint3

MyPoint3::MyPoint3(): x(0), y(0), name() { }
MyPoint3::MyPoint3(int x, int y) : x(x), y(y), name() {} // not inputting anything in the init list => zero!
MyPoint3::MyPoint3(const MyPoint3& point_to_copy) : x(point_to_copy.x), y(point_to_copy.y) , name(){}

MyPoint3::~MyPoint3() {}

bool MyPoint3::set_x(int x) { this->x = x; return true; }
bool MyPoint3::set_y(int y) { this->y = y; return true; }
bool MyPoint3::set_name(const char* str_to_set)
{
	int setting_length = (int)(strlen(str_to_set) + 1);
	if (setting_length > 30) setting_length = 30;

	// strcpy_s(name, setting_length * sizeof(char), str_to_set);    can also be done with strcopy //

	for (int setting_index = 0; setting_index < setting_length; ++setting_index)
	{
		name[setting_index] = str_to_set[setting_index];
	}
	return true;
}

int MyPoint3::get_x() const { return x; }
int MyPoint3::get_y() const { return y; }
const char * MyPoint3::get_name() const { return name; }

void MyPoint3::print_point() { cout << "(" << x << "," << y << ")" << endl << name << endl; }

// End: MyPoint3


// Start: ConstantString

// NOTE: the length field COUNTS the null as the last cell //
ConstantString::ConstantString(char const* string_to_assign) : my_string(), string_length()
{
	if (string_to_assign)
	{
		string_length = (int)strlen(string_to_assign) + 1;
		if (string_length > 300) string_length = 300;
	}
	else string_length = 0;



	if (string_to_assign) for (int assign_index = 0; assign_index < string_length; ++assign_index) my_string[assign_index] = string_to_assign[assign_index];
}

ConstantString::~ConstantString() {} // for static allocation (arrays) => empty, for dynamic (pointers) => delete [] //

bool ConstantString::set_string(char const * string_to_set)
{
	if (string_to_set)
	{
		if (string_length > (int)strlen(string_to_set) + 1) string_length = (int)strlen(string_to_set) + 1;
		strcpy_s(my_string, (int)((double)string_length + 1) * sizeof(char), string_to_set);
	}

	else { string_length = 0; for (int init_index = 0; init_index < 300; ++init_index) my_string[init_index] = '\0'; }


	return true;
}

char const* ConstantString::get_string()const { return my_string; }

// reverse here //
bool ConstantString::find(char key_to_find) const
{
	bool result = false;
	for (int finding_index = 0; finding_index < string_length - 1; ++finding_index)
		if (my_string[finding_index] == key_to_find)
		{
			result = true;
			break;
		}
	return result;
}

char ConstantString::operator[] (int char_index) const
{
	if (char_index < 0 || char_index > string_length - 1 || !my_string) return '\0';
	else return my_string[char_index];
}
char& ConstantString::operator[] (int char_index)
{
	if (char_index < 0 || char_index > string_length - 1 || !my_string)
	{
		char& cell_reference = my_string[0];
		return cell_reference;
	}
	else
	{
		char& cell_reference = my_string[char_index];
		return cell_reference;
	}
}


bool ConstantString::print_string()
{
	if (string_length) { cout << '\n' << "The string is: " << my_string << endl; return true; }
	else  cout << "There is no string" << endl;
	return false;
}

// End: ConstantString


// Start: Student1

Student1* Student1::impressive_student = nullptr;
int Student1::max_grade = 0;
int Student1::number_of_students = 0;

Student1::Student1(int grade): student_grade(grade)
{
	if (grade > max_grade)
	{
		max_grade = grade;
		impressive_student = this;
	}
	++number_of_students;
}
Student1::Student1(const Student1& other_student) : student_grade(other_student.student_grade){++number_of_students;}

Student1::~Student1() {}

int Student1::get_max_grade() { return max_grade; }

bool Student1::print() { cout << endl << "the student's grade is : "<< student_grade << endl; return true; }

// End: Student1


void string_2_testing()
{
	/* checking the 250 letter boundary in the string implementation :
	* 1. a char array with 270 cells (my_str)
	* 2. trying to copy into a char array with 250 cells (m_s)
	*/

	char* my_str = new char[270];
	for (int index = 0; index < 270; ++index)
	{
		my_str[index] = 'i';
		if (index == 268) { my_str[index] = 'o'; }
	}
	my_str[269] = '\0';

	MyString2 m_s(my_str);
	m_s.print_string();
}
void point_3_testing()
{
	// playing with a point that has a char array as a field //

	MyPoint3 p_1(1, 2);
	p_1.print_point();
	char points_name[10] = "moshe";
	p_1.set_name(points_name);
	p_1.print_point();

}
void constant_string_testing()
{
	ConstantString c_s_1;
	char const* str_1 = "first sentence";
	ConstantString c_s_2(str_1);
	c_s_1.print_string();
	c_s_2.print_string();
	char* str_2 = new char[20];
	str_2[0] = 's'; str_2[1] = 'e'; str_2[2] = 'c'; str_2[3] = 'o'; str_2[4] = 'n'; str_2[5] = 'd'; str_2[6] = ' ';
	str_2[7] = 's'; str_2[8] = 'e'; str_2[9] = 'n'; str_2[10] = 't'; str_2[11] = 'e'; str_2[12] = 'n'; str_2[13] = 'c'; str_2[14] = 'e';
	str_2[15] = '\0'; str_2[16] = '\0'; str_2[17] = '\0'; str_2[18] = '\0'; str_2[19] = '\0';

	// CONCLUSION: no API is really horrible here //

	cout << endl << endl << str_2;
	c_s_2.set_string(str_2);
	c_s_2.print_string();
	cout << endl << endl << "is n in there? let's find out: " << endl << c_s_2.find('n') << endl << endl;
	cout << endl << endl << "the third indexed character is: " << c_s_2[2] << endl << endl;
	cout << endl << "Lets change the eighth cell" << endl;
	c_s_2[7] = 'M';
	cout << endl << "it is now changed to: " << c_s_2[7] << endl;
	str_2 = nullptr;
	c_s_2.set_string(str_2);
	c_s_2.print_string();

}
void student_static_testing()
{
	Student1 rafi;
	Student1 moshe(97);
	Student1 avi(89);
	cout << rafi.number_of_students << endl;
	cout << Student1::number_of_students << endl;
	cout << "The max grade: " << Student1::get_max_grade();
}
void lecture_3_main()
{
	string_2_testing();
	point_3_testing();
	constant_string_testing();
	student_static_testing();
}

