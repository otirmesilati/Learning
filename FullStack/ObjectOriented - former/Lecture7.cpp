// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX   LESSON 07: REAL-TIME-TYPE-INFORMATION   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

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



#ifndef FIRST_CLASS
#ifndef THIRD_CLASS
#ifndef SECOND_CLASS
#ifndef MY_PET_2
#ifndef MY_CAT
#ifndef My_DOG

#define FIRST_CLASS
#define SECOND_CLASS
#define THIRD_CLASS
#define MY_PET_2
#define MY_CAT
#define MY_DOG



class FirstClass
{

public:

	FirstClass() {}
	FirstClass(const FirstClass& other_first) {}

	~FirstClass() {}

	FirstClass& operator=(const FirstClass& other_first) { return *this; }

	virtual void just_for_enabling_dynamic_cast() {}

private:

};

class SecondClass: public FirstClass
{

public:

	SecondClass(): FirstClass() {}
	SecondClass(const SecondClass& other_second) : FirstClass(other_second) {}

	~SecondClass() {}

	SecondClass& operator=(const SecondClass& other_second) { (FirstClass)*this = other_second; return *this; }

private:

};

class ThirdClass : public SecondClass
{

public:

	ThirdClass(): SecondClass() {}
	ThirdClass(const ThirdClass& other_third) : SecondClass(other_third) {}

	~ThirdClass() {}

	ThirdClass& operator=(const ThirdClass& other_third) { (SecondClass)*this = other_third; return *this; }

private:

};

class MyPet2
{

public:

	MyPet2() {}
	MyPet2(const MyPet2&) {}

	virtual ~MyPet2()=0 {}

	MyPet2& operator=(const MyPet2&) {}

private:

};

class MyCat: public MyPet2
{

public:

	MyCat(): MyPet2() {}
	MyCat(const MyCat& other_cat): MyPet2(other_cat) {}

	virtual ~MyCat()=0 {}

	MyCat& operator=(const MyCat& other_cat) { (MyPet2&)*this = other_cat; }

private:
};

class MyDog: public MyPet2
{

public:

	MyDog(): MyPet2() {}
	MyDog(const MyDog& other_dog): MyPet2(other_dog) {}

	~MyDog() {}

	MyDog& operator=(const MyDog& other_dog) {}

private:

};

void static_conversion_example();
void playing_with_dynamic_cast();

// ----------------------------------------------- Long examples ------------------------------------------------

#ifndef MY_GRAND
#ifndef MY_SUPERB
#ifndef MY_MAGNIFICENT

#define MY_GRAND
#define MY_SUPERB
#define MY_MAGNIFICENT


// grand superb and magnificent example here //

class Grand
{

public:

	Grand(int h=0): hold(h) {}
	virtual void speak() const {cout << "grand class" << endl; }
	virtual int value() const { return hold; }

private:

	int hold;

};

class SuperB: public Grand
{

public:

	SuperB(int h = 0): Grand(h) {}
	virtual void speak() const {cout << "superb class" << endl;}
	virtual void say() const {cout << "superb value: " << value() << endl;}

private:

};

class Magnificent: public SuperB
{

public:

	Magnificent(int h=0, char c='A'): SuperB(h), c(c) {}
	virtual void speak() const {cout << "magnificent class" << endl; }
	virtual void say() const {cout << "magnificent values: " << c << " , " << value() << endl; }

private:

	char c;

};


void grand_superb_magnificent_testing();
void lecture_7_main();

class Lecture7{};


#endif // !MY_MAGNIFICENT
#endif // !MY_SUPERB
#endif // !MY_GRAND
#endif // !MY_DOG
#endif // !MY_CAT
#endif // !MY_PET_2
#endif // !THIRD_CLASS
#endif // !SECOND_CLASS
#endif // !FIRST_CLASS


// #include "Lecture7.h"
#include <typeinfo>

void static_conversion_example()
{
	FirstClass* a_pointer = new FirstClass;
	FirstClass* b_pointer = new SecondClass;
	FirstClass* c_pointer = new ThirdClass;

	// static casting: //
	SecondClass* another_b_pointer = (ThirdClass*)c_pointer;
	another_b_pointer = static_cast<ThirdClass*>(c_pointer);
	FirstClass* another_c_pointer = (ThirdClass*)b_pointer; // unlike first thoughts, this didn't cause RT error, just up-casted to lowest (descendant) possible pointer //
	another_c_pointer = dynamic_cast<ThirdClass*>(a_pointer);

	SecondClass& b_reference = (ThirdClass&)*c_pointer;
	b_reference = static_cast<ThirdClass&>(*c_pointer);
	FirstClass& c_reference = (ThirdClass&)*b_pointer; // comparison to pointers in debug - instead of First{*Second}: First{&Second}
	// c_reference = dynamic_cast<ThirdClass&>(*a_pointer);  this invokes a bad cast exception //

	if (!another_c_pointer) cout << endl << "the other c pointer is null!" << endl << endl;
}

void playing_with_dynamic_cast()
{
	MyPet2* p_pet = new MyDog;
	MyCat* p_cat = dynamic_cast<MyCat*>(p_pet);
	MyDog* p_dog = dynamic_cast<MyDog*>(p_pet);
	cout << "p_cat: " <<(long)p_cat << endl; // not a cat: 0
	cout << "p_dog: " <<(long)p_dog << endl; // returns a long conversion of the pointer adress
}

void grand_superb_magnificent_testing()
{
	srand(time(NULL));
	cout << rand() % 3 << endl << endl;
	Grand* g_p = new Grand; // this is only to avoid unwanted dereferencing NULL warning (causing to add delete to each switch case) //

	SuperB* s_p;
	for (int printing_index = 0; printing_index < 5; ++printing_index)
	{
		// this can be moduled outside //
		switch (rand() % 3)
		{
		case 0: delete g_p; g_p = new Grand(rand() % 100); break;
		case 1: delete g_p; g_p = new SuperB(rand() % 100); break;
		default: delete g_p; g_p = new Magnificent(rand() % 100, 'A' + rand() % 26); break;
		}

		cout << "loading class: " << typeid(*g_p).name() << endl;
		g_p->speak();
		if (s_p = dynamic_cast<SuperB*>(g_p)) s_p->say();
		if (typeid(*g_p) == typeid(Magnificent)) cout << endl << "Yes, you're really magnificent.\n";
	}
}

void lecture_7_main()
{
	static_conversion_example();
	playing_with_dynamic_cast();
	grand_superb_magnificent_testing();
}

