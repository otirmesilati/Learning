// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   LESSON 08: EXCEPTIONS   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

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
#include <fstream>
using namespace std;



#ifndef MY_ERROR
#ifndef FILE_ERROR
#ifndef FILE_HANDLER

#define MY_ERROR
#define FILE_ERROR
#define FILE_HANDLER



class MyError
{

public:

	MyError(): error_message(nullptr), message_length(NULL) {}
	MyError(const MyError& other_error): error_message(nullptr) , message_length(other_error.message_length)
	{
		if (message_length)
		{
			error_message = new char[message_length];
			for (int copy_index = 0; copy_index < message_length; ++copy_index) error_message[copy_index] = other_error.error_message[copy_index];
		}
	}
	MyError(const char* input_error_message): error_message(nullptr), message_length(NULL)
	{
		if (input_error_message)
		{
			message_length = strlen(input_error_message) + 1;
			error_message = new char[message_length];
			strcpy_s(error_message, message_length * sizeof(char), input_error_message);
		}
	}

	~MyError() { delete[] error_message; }

	MyError& operator=(const MyError& other_error)
	{
		if (this != &other_error)
		{
			message_length = NULL;
			delete error_message;
			if (other_error.error_message)
			{
				message_length = other_error.message_length;
				error_message = new char[message_length];
				for (int copy_index = 0; copy_index < message_length; ++copy_index) error_message[copy_index] = other_error.error_message[copy_index];
			}
		}
		return *this;
	}

	void print() const {cout << error_message << endl;}

private:

	char* error_message;
	int message_length;

};

class MyFileError
{

public:

	// FIXME: finish the methods //

	MyFileError(): file_name(nullptr) {}
	MyFileError(const MyFileError& other_file_error): file_name(nullptr)
	{
		if (other_file_error.file_name)
		{
			int name_length = strlen(other_file_error.file_name) + 1;
			file_name = new char[name_length];
			strcpy_s(file_name, name_length * sizeof(char), other_file_error.file_name);
		}
	}
	MyFileError(const char* error_message): file_name(nullptr)
	{
		if (error_message)
		{
			int name_length = strlen(error_message) + 1;
			file_name = new char[name_length];
			strcpy_s(file_name, name_length * sizeof(char), error_message);
		}
	}

	~MyFileError() { delete [] file_name; }

	MyFileError& operator=(const MyFileError& other_file_error)
	{
		if (this == &other_file_error)
		{
			delete[] file_name;
			file_name = nullptr;
			if (other_file_error.file_name)
			{
				int name_length = strlen(other_file_error.file_name) + 1;
				file_name = new char[name_length];
				strcpy_s(file_name, name_length*sizeof(char), other_file_error.file_name);
			}
		}
		return *this;
	}

	virtual const char* get_name()const { return file_name; }

private:

	char* file_name;

};

class FileHandler
{

public:

	FileHandler() throw (MyFileError)
	{
		first_file.open("my_first_file.txt");
		if (!first_file)  throw MyFileError("my_first_file.txt");
		second_file.open("my_second_file.txt");
		if (second_file)
		{
			first_file.close();
			throw MyFileError("my_first_file.txt");
		}
	}
	FileHandler(const FileHandler&) {} // finish this ater lecture 10 //

	~FileHandler() { first_file.close(), second_file.close(); }

	FileHandler& operator=(const FileHandler&) {} // finish this after the cc'tor //

private:

	ofstream first_file, second_file;

};

int divide_by_zero_with_throw(int, int);
void zero_division_handler();
void throwing_function();
void throwing_and_catching_self_made_error();
void my_error_handler();
void open_all_files() throw (MyFileError);
void file_error_testing_function();

// ----------------------------------------------- Long examples ------------------------------------------------

#ifndef ERROR_CLASS_1
#ifndef ERROR_CLASS_2
#ifndef ERROR_CLASS_3

#define ERROR_CLASS_1
#define ERROR_CLASS_2
#define ERROR_CLASS_3



class ErrorClass1
{

public:

	ErrorClass1() {}
	ErrorClass1(const ErrorClass1&) {}

	~ErrorClass1() {}

	ErrorClass1 operator=(const ErrorClass1&) {}

	virtual void print() { cout << "inner error" << endl; }

private:

};

class ErrorClass2: public ErrorClass1
{

public:


	ErrorClass2(): ErrorClass1() {}
	ErrorClass2(const ErrorClass2& other_error_2): ErrorClass1(other_error_2) {}

	~ErrorClass2() {}

	ErrorClass2& operator=(const ErrorClass2& other_error_2) { (ErrorClass1&)*this = other_error_2; }

	virtual void print() { cout << "error" << endl; }

private:

};

class ErrorClass3: public ErrorClass2
{

public:

	ErrorClass3(): ErrorClass2() {}
	ErrorClass3(const ErrorClass3& other_error_3): ErrorClass2(other_error_3) {}

	~ErrorClass3() {}

	ErrorClass3& operator=(const ErrorClass3& other_error_3) { (ErrorClass2)*this = other_error_3; }

	virtual void print() { cout << "outer error" << endl; }

private:

};

class Lecture8{};


void inheritted_error_testing();
void lecture_8_main();



#endif // !ERROR_CLASS_3
#endif // !ERROR_CLASS_2
#endif // !ERROR_CLASS_1
#endif // !FILE_HANDLER
#endif // !FILE_ERROR
#endif // !MY_ERROR
