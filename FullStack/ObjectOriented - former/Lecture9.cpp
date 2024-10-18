 // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   LESSON 09: FILES   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

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
#include <iomanip>
#include <iostream>
#include <stdlib.h>
#include <fstream>
#include <string>
using namespace std;



void reading_and_writing_to_a_file_function();

// ----------------------------------------------- Long examples ------------------------------------------------

#ifndef STUDENT_WITH_FILE

#define STUDENT_WITH_FILE



class StudentWithFile
{

public:

	// patch this up //

	StudentWithFile(): student_name(""), student_average(100) {}
	StudentWithFile(const char* name, float average): student_name(name), student_average(average) {}
	StudentWithFile(const StudentWithFile& other_student): student_name(other_student.student_name), student_average(other_student.student_average) {}

	~StudentWithFile() {}

	StudentWithFile& operator=(const StudentWithFile& other_student)
	{
		if (this != &other_student)
		{
			student_name = other_student.student_name;
			student_average = other_student.student_average;
		}
	}

	bool operator==(const StudentWithFile& other_student)
	{
		if (this != &other_student) { return student_name == other_student.student_name && other_student.student_average; }
		else return true;
	}
	friend ostream& operator<<(ostream&, const StudentWithFile&);
	friend istream& operator>>(istream&, StudentWithFile&);

private:

	string student_name;
	float student_average;

};

class Lecture9{};



void student_file_class_testing();
void student_binary_file_testing();
void lecture_9_main();



#endif // !STUDENT_WITH_FILE


// #include "Lecture9.h"

// Start: StudentWithFile //
// check out the additions //
ostream& operator<<(ostream& os, const StudentWithFile& st)
{
	os.setf(ios::left);
	os.width(15); os << st.student_name;
	os.width(15); os << st.student_average;
	os << endl;
	return os;
}

istream& operator>>(istream& is, StudentWithFile& st) {return is >> st.student_name >> st.student_average;}
// End: StudentWithFile //

void reading_and_writing_to_a_file_function()
{
	// writing part: //
	ofstream my_file_to_write;
	my_file_to_write.open("test1.txt", ios::out);
	if (my_file_to_write.is_open())
	{
		my_file_to_write << "first line." << endl;
		my_file_to_write << "second line." << endl;
	}
	my_file_to_write.close();

	// reading part: //
	ifstream my_file_to_read("test1.txt", ios::in);
	if (my_file_to_read.is_open())
	{// reading two words //
		string first_word, second_word;
		my_file_to_read >> first_word >> second_word;
		cout << "first word: " << first_word << endl << second_word << "second word: " << endl;
	}
	// searching part: //

	ifstream another_buffer_for_reading("test1.txt");
	if (another_buffer_for_reading.is_open())
	{
		cout << endl << endl;
		string current_word;
		while (another_buffer_for_reading >> current_word)
		{
			cout << current_word << "\t";
			if (current_word.find('.') != string::npos)
				cout << endl;
		}
	}

	my_file_to_read.close();

}

void student_file_class_testing()
{
	ofstream student_db("binary_student_db_file.bin", ios::binary | ios::app);
	StudentWithFile* my_students[3] = { new StudentWithFile("Avi", 95), new StudentWithFile("Benny", 100), new StudentWithFile("Cadi", 92) };
	for (int w_to_file_index = 0; w_to_file_index < 3; ++w_to_file_index)
	{
			student_db.write(reinterpret_cast<const char*>(my_students[w_to_file_index]), sizeof(StudentWithFile));
	}
	student_db.close();
	ifstream reading_db_buffer("binary_student_db_file.bin", ios::binary);
	if (!reading_db_buffer) { cerr << "error"; exit(1); }
	StudentWithFile student_to_find("Benny", 100), current_student;
	streampos file_index;
    for (int searching_index = 1; reading_db_buffer.read(reinterpret_cast<char*>(&current_student), sizeof(StudentWithFile));searching_index++)
	{
		if (student_to_find == current_student)
		{
			cout << "Found the student: " << current_student << endl;
			file_index = reading_db_buffer.tellg();
			cout << "in line number: " << file_index << endl;
		}
	}

	reading_db_buffer.seekg(file_index, ios::beg); // the same with using ios::beg, starting from the previous student's end place //
	reading_db_buffer.read(reinterpret_cast<char*>(&current_student), sizeof(StudentWithFile));
	cout << current_student;
	reading_db_buffer.close();
	}


void student_binary_file_testing()
{
	fstream student_db;
	student_db.open("student_db_file.txt", ios::out);
	if (student_db.is_open())
	{
		student_db << endl;
		StudentWithFile* my_students[3] = { new StudentWithFile("Avi", 95), new StudentWithFile("Benny", 100), new StudentWithFile("Cadi", 92) };
		for (int w_to_file_index = 0; w_to_file_index < 3; ++w_to_file_index)
		{
			student_db << *my_students[w_to_file_index];
			student_db << endl;
		}
		student_db << endl;
		for (int deleting_index = 0; deleting_index < 3; ++deleting_index) { delete my_students[deleting_index]; }
	}
	student_db.close();

	fstream reading_db_buffer("student_db_file.txt", ios::in);
	StudentWithFile student_to_find("Benny", 100), current_student;
	int finding_flag = -1;
	streampos file_index;
	if (!reading_db_buffer) { cerr << "error"; exit(1); }
	else
	{

		for (int searching_index = 0; reading_db_buffer >> current_student; ++searching_index)
		{
			if (current_student == student_to_find)
			{
				finding_flag = 1;
				file_index = reading_db_buffer.tellg();
				cout << "found, line: " << searching_index << endl << "the student's information is:" << endl << current_student;
			}
		}
	}
	if (finding_flag == -1) cerr << " student not found";
	else
	{
		reading_db_buffer.seekg(file_index); // the same with using ios::beg, starting from the previous student's end place //
		reading_db_buffer >> current_student;
		cout << "next student's information is " << endl << current_student;
	}
	reading_db_buffer.close();
}

void lecture_9_main()
{
	reading_and_writing_to_a_file_function();
	student_file_class_testing();
	student_binary_file_testing();
}


