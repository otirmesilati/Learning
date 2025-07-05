// C++ Online Emulator: https://www.programiz.com/cpp-programming/online-compiler/ 









//   & & & & & & Language Ecosystem: Rich API, Libraries, and Frameworks & & & & & &

//   ^ ^ ^ ^ ^ Static Libraries ^ ^ ^ ^ ^

#pragma once // have the header included once at maximum
#include <iostream> // standard IO Streams Library  
#include <fstream> // File Streaming Library 
#include <string> // string type Library
using namespace std;

//   ^ ^ ^ ^ ^ Shared Libraries ^ ^ ^ ^ ^


// iostream? iostream? typeinfo? GUI libraries? libraries database?
// pragma once? namespace ? (finish mapping this)
// rich API? primitives and objects API? collections?









//   < < < < < < < <   Language Principles   > > > > > > > >   //
//   < < < < < < < <   Procedural Principles   > > > > > > > >   
//   < < < < < < < <   Generic Principles   > > > > > > > >   









//   & & & & & & Comments & & & & & &

// Single Line comment

/* multiple line
comments
*/

/* Nested
// Comments //
are available */

//docs? logs?










//   & & & & & & Data Streaming & & & & & & 

//   ^ ^ ^ ^ ^ Data input ^ ^ ^ ^ ^

//   ^ ^ ^ ^ ^ Data Output ^ ^ ^ ^ ^ 









//   & & & & & & Literals (+ defined unary literal operators) & & & & & &
// strings and chars?

//   ^ ^ ^ ^ ^ Expressions ^ ^ ^ ^ ^ //


void fun_literals(){ 


//   ^ ^ ^ ^ ^ Integers ^ ^ ^ ^ ^

123;
// no underscore format for numbers like 1,234! 
-123;


//  ^ ^ ^ ^ Coding Modifiers ^ ^ ^ ^

//  ^ ^ ^ Radixed modifier ^ ^ ^

0x12AB;
012; // octal literals written without o //
0b110011;

//   ^ ^ ^ Un-Signed Modifier Suffix operators ^ ^ ^

1u;
-2U; // will work sometimes and sometimes not: will be translated: 2's complement on the value -> new unsigned value

//   ^ ^ ^ Long Modifier Suffix operators

1l;
-2L;
3ll;
4LL;

//   ^ ^ ^ ^ ^ Floats ^ ^ ^ ^ ^
// add f suffix //
1.2;
-3.4;

//   ^ ^ ^ ^ Sceientific Notation Encoding  ^ ^ ^ ^

1e2;
1e-3;
1e4L;   // combining //

}





// More Material:
// https://web.archive.org/web/20130807052041/http://cpp.comsci.us/etymology/literals.html
// https://en.cppreference.com/w/cpp/language/floating_literal //









//   & & & & & & String Formatting & & & & & &



void fun_string_formats(){

int number = 1;
double dvalue = 2.344444;
int undef_behav = 4;


//   ^ ^ ^ ^ ^ Format Specifier Fields ^ ^ ^ ^ ^

//   ^ ^ ^ ^ Flags ^ ^ ^ ^



//   ^ ^ ^ ^ Precision ^ ^ ^ ^

// Only in C++20+
// cout << std::format("%d %.2lf", number, dvalue);     two digits left of decimal point

//   width
//   ^ ^ ^ ^ Length ^ ^ ^ ^

// cout << std::format("%ld", 1);
// cout << std::format("%lf", 2.34);

//   ^ ^ ^ ^ Types ^ ^ ^ ^

// cout << std::format("%c", 'a');
// cout << std::format("%d", 1);
// cout << std::format("%f", 2.3);

// cout << std::format("%c", undef_behav);  wrong type field - undefined behaviour!

//   custom field 

}


// More Material: 
// complete this section from here: https://en.wikipedia.org/wiki/Printf 









//   & & & & & & Operators & & & & & &
// which operations are available? one what types? categories : numbers, string operators...


void fun_operators()
{
int first_check, second_check;
int first_temp = 1;
double sum_temps, second_temp = 2.00;
int five = 5, three = 3, zero = 0;

int first_explicit_conv, second_explicit_conv;
int explicit_conv_assignment;


// need to touch on lvalue, rvalue, gvalue: 
// lecture's coverage: lval is left and changing, and rval is right, WOW!



// More Material:
// for the wiki tldr: https://en.wikipedia.org/wiki/Value_(computer_science)
// for the famous lval/rval/gval/xval graph: https://stackoverflow.com/questions/3601602/what-are-rvalues-lvalues-xvalues-glvalues-and-prvalues



//   ^ ^ ^ ^ ^ Assignment Operators ^ ^ ^ ^ ^

int first; // declaration
int second, third; // multi-line operations one-lining

first = 1;
int fourth = 2;

//   ^ ^ ^ Multiple Assignment ^ ^ ^

int first_multi_assign, second_multi_assign; // multiple declaration
first_multi_assign = second_multi_assign = 1; // chain assignment



//   ^ ^ ^ ^ ^ Arithmetical Operators ^ ^ ^ ^ ^

first = first + 3;
first += 3;
first = first + 1;
first++;
++first;


//   ^ ^ ^ ^ Order of operations (Arith) ^ ^ ^ ^ 
// what here ? what comes before what? * before / in C?  


//   ^ ^ ^ ^ Prefix vs Postfix inc/dec operator ^ ^ ^ ^
first_check = 1;
first_check = second_check++; // first_check = 1, second_check = 2 
first_check = ++second_check; // first_check = second_check = 3



//   ^ ^ ^ ^ Arithmetical Operators: Narrowing/Widening type Casting ^ ^ ^ ^


//   ^ ^ Implicit conversion - mismatching variables in opeartion ^ ^

first_temp + second_temp; // first is promoted to double in widening implicit c type conversion

//   ^ ^ Explicit conversion - assigned to different type OR different type written in parantheses ^ ^ 

first_explicit_conv = 3, second_explicit_conv = 4;
explicit_conv_assignment = (float)(first_explicit_conv / second_explicit_conv); // both exp conv scenarios, order: 1. int result temp 2. float result temp, 3. int assignment temp





// More Material: 
// map from this more about casts: https://stackoverflow.com/questions/28002/regular-cast-vs-static-cast-vs-dynamic-cast
// No Automatic casting to wide in c++? a set of rules: https://www.youtube.com/watch?v=uI10H1jzw00
// Make temp variable arithmetic in tablet and map building upon these scenarios: 
// answer: b' - promotion, (a + b')' - same, ((a + b')')' - demotion  









//   ^ ^ ^ ^ ^ Logical Operators ^ ^ ^ ^ ^
// order of operations ?
// == and != are the least in the order of operations, maybe finish the operations order ladder?
// false and true are exactly 0 and 1

five == 2;
(three < five || three < zero);

// combining logical and arith: (arithmetic operators take precedence)
/*
lecture's example:
int x = 2;
int y = (x > 5) + 1; // (x > 5) -> 0 -> 0 + 1 = 1

int a = 2, b;
((b = 2) == a) // (b = 2) -> (2) -> 2 == 2 -> 1, trick question: a wierd behaviour of c family languages - assignment returns the assign value, acts as arithmetic

*/

//   Overloading literal operators: https://en.cppreference.com/w/cpp/language/user_literal

//   ^ ^ ^ ^ ^ Pointer Operators ^ ^ ^ ^ ^

int ptr_value_1 = 0;


int* ptr_address_1 = &ptr_value_1; // address operator
ptr_value_1 = *ptr_address_1; // indirection operator

// in one line(int + int* init in same line):
int ptr_value_2 = 1, * ptr_address_2 = &ptr_value_2, ptr_value_2 = *ptr_address_2;


}










//   & & & & & & Variables & & & & & &
// type hinting? (static - no, dynamic - yes)


void fun_variables()
{

//   ^ ^ ^ ^ ^ Data Type ^ ^ ^ ^ ^

bool my_bool;
char my_char;
wchar_t my_wchar;
int my_int;
long my_long;
float my_float;
double my_double;
int imagine_this_is_out_of_any_function_global = 0;


//   ^ ^ ^ ^ Data Collection Type - Array ^ ^ ^ ^ 

bool my_bool_array[1];
char my_char_array[2];
wchar_t my_wchar_array[3];
int my_int_array[4];
long my_long_array[5];
float my_float_array[6];
double my_double_array[7];


// unsigned short cap: 65535
unsigned short hi = 65000; // 65,00
unsigned short hi = 66000; // 464 (Got back to zero going up)

// signed short cap: 32767
short hi = 32000; // 32000
short hi = 35000; // -30536 (Got to -32767 going to zero)


//   ^ ^ ^ ^ ^ Scope Sharing ^ ^ ^ ^ ^

//   ^ ^ ^ ^ Global & Static Variables ^ ^ ^ ^
// Both default value if not initialized : 0

imagine_this_is_out_of_any_function_global = 4;

{ // imagine this is void function my_func

    // change to cout : printf("global is accessible: %d", imagine_this_is_out_of_any_function_global);    
    imagine_this_is_out_of_any_function_global = 7; // and mutable //
    static int my_static = 0; // static variable accessible in my_func
}  

// but even though it's lifetime is the same as the global variable - trying to access the static variable from main - is a compilation error


//   ^ ^ ^ ^ Block Nesting : Scope levels, Data Hiding and Shadowing ^ ^ ^ ^

int first_level_local = 1;
int this_wont_be_changed_local = 2;
{ 

    int second_level_local = 3;
    int this_wont_be_changed_local = 4;

    {
        int third_level_local = 5;
    }

}

first_level_local = 3;
// second_level_local = 4; -> not possible, it's local to the block
// this_wont_be_changed_local -> 2, the one with the 4 value was a different variable


//   ^ ^ ^ ^ ^ Constants ^ ^ ^ ^ ^

//   ^ ^ ^ ^ Pre-Processor Macros ^ ^ ^ ^

//   ^ ^ ^ Defines ^ ^ ^

#define CRT_SECURE_NO_WARNINGS
#define ZERO 0
#define PI 3.1415


//   ^ ^ ^ Enums(Almost pre-processor) ^ ^ ^

enum boolean {NO, YES};
typedef enum {TRUE = 1, FALSE = 0} Boolean;


//   ^ ^ ^ ^ Constants: Immutables 

//   ^ ^ ^ ConstExpr : Compile Time Immutable ^ ^ ^ 

//constexpr int static_time_const = 0;


//   ^ ^ ^ Const : Run Time Immutable ^ ^ ^

const int dynamic_time_const = 1;

//   ^ ^ Pointer Const ^ ^

int mutable_value = 0;
int immutable_value = 1;
int immutable_value_and_adress = 2;

const int* const_pointer_to_int = &immutable_value;
int* const const_pointer_to_int = &mutable_value;
const int* const const_pointer_to_int = &immutable_value_and_adress;

//   ^ ^ Reference Const ^ ^ 

const int& const_ref_to_int = immutable_value;

//   ^ ^ ^ ^ ^ Pointers ^ ^ ^ ^ ^

char* my_char_pointer;
int* my_int_pointer;
long* my_long_pointer;
float* my_float_pointer;
double* my_double_pointer;

//   ^ ^ ^ ^ Static Allocation ^ ^ ^ ^

my_char_pointer = &my_char;
my_int_pointer = &my_int;
my_long_pointer = &my_long;
my_float_pointer = &my_float;
my_double_pointer = &my_double;

//   ^ ^ ^ ^ Dynamic Allocation ^ ^ ^

//   ^ ^ ^ Heap Byte Allocation: Malloc ^ ^ ^

my_char_pointer = new char;
my_int_pointer = new int;
my_long_pointer = new long;
my_float_pointer = new float;

//   ^ ^ ^ Heap Memory De-Allocation ^ ^ ^

delete my_char_pointer;
delete my_int_pointer;
delete my_long_pointer;
delete my_float_pointer;
delete my_double_pointer;

//   ^ ^ ^ ^ Void (Generaic) Pointers ^ ^ ^ ^

void* my_generic_pointer;

char* my_generic_pointer_converted_to_char_pointer;
int* my_generic_pointer_converted_to_int_pointer;
long* my_generic_pointer_converted_to_long_pointer;
float* my_generic_pointer_converted_to_float_pointer;
double* my_generic_pointer_converted_to_double_pointer;

my_generic_pointer_converted_to_char_pointer = (char*)my_generic_pointer;
my_generic_pointer_converted_to_int_pointer = (int*)my_generic_pointer;
my_generic_pointer_converted_to_long_pointer = (long*)my_generic_pointer;
my_generic_pointer_converted_to_float_pointer = (float*)my_generic_pointer;
my_generic_pointer_converted_to_double_pointer = (double*)my_generic_pointer;


//   ^ ^ ^ ^ Array Handling ^ ^ ^ ^ 

//   ^ ^ ^ Allocation ^ ^ ^

//   ^ ^ static array allocation - using init list ^ ^ 

int static_allocation[1] = {0};
int not_mentioning_size_in_static_allocation_is_inferred_through_number_of_elements_in_brackets[] = {'a','b','c'}; // size inferring: 3 elements -> 3
int and_not_mentioning_all_element_values_will_init_the_rest_to_0[3] = {2, 1}; // no last value mentioned -> inited to 0: {2, 1, 0}

int nested_static_allocation[2][3] = {{4, 5, 6} , {7, 8, 9}};
int same_nested_allocation_different_writing[2][3] = {4, 5, 6, 7, 8, 9};
int inferring_and_non_mentioned_value_initiation_also_happens_in_nested_arrays[][2] = {{1, 2}, {3}}; // 1. size inferring: 2, last value init -> {{1, 2}, {3, 0}} 
// Though - lowest level size mentioning is a MUST for the inferring to happen


//   ^ ^ dynamic array allocation ?

// No List Comprehension in C++

// strings?


//   ^ ^ ^ ^ ^ References ^ ^ ^ ^ ^

int& my_reference = mutable_value;

}









//   & & & & & & Flow Control & & & & & &


void fun_flow_control()
{

int condition = 1;
int outer_condition = 0;
int elif_condition = 1;
int if_condition = 0; int elseif_condition = 1;
int switch_key = 2;


//   ^ ^ ^ ^ ^ Statements ^ ^ ^ ^ ^ 

//   ^ ^ ^ ^ ^ Procedure labels & GoTo ^ ^ ^ ^ ^

procedure_1_label:
// first procedure  //

goto procedure_2_label;

procedure_2_label:
// second procedure //

// More Material: https://www.geeksforgeeks.org/local-labels-in-c/


//   ^ ^ ^ ^ ^ Conditional Statements & & & & & &

//   ^ ^ ^ ^ If & Else ^ ^ ^ ^ ^

if(condition)
{
    // condition TRUE -> first procedure
}

else
{
    // condition FALSE -> second procedure
}


//   ^ ^ ^ Null Checks ^ ^ ^

int val_of_ptr = 0;
int* ptr_to_check = &val_of_ptr;

// Alternative 1 - using 0 representations

if (ptr_to_check!= 0) {}
if (ptr_to_check!= NULL) {} 
if (ptr_to_check!= '\0') {}

// Alternative 2 - using zero equating

if (ptr_to_check) {}


//   ^ ^ ^ Nested Ifs ^ ^ ^

if(outer_condition)
{
    // first procedure
}
else
{
    if(elif_condition) // else if logic , same as the else if example below
    {
        // second procedure
    }
}


//   ^ ^ ^ Else-If ^ ^ ^ 

if(if_condition)
{
    // first procedure
}
else if(elseif_condition) // same as the example above
{
    // second procedure
}


// map to the tablet - new skill for relations, building a "order relation" graph under constraints (number of maximum relation checks on members, like finding the max of 3 numbers(linear relation) in no more than 3 tries)
// and also - mapping the control flow diagram - a straight line digram that splits whenever theres a conditional statement:
//             - - - - - - - -
//    - - - - -| condition 1  | - - - - - (when theres else-if the split is more than two - 3 + )
//             - - - - - - - - 

//   ^ ^ ^ ^ Switch ^ ^ ^ ^ ^

switch (switch_key)
{

case 1: // first procedure
    break;

case 2: // second procedure
    break;

case 3: // third procedure
    break;

default: // fourth procedure
    break;

}


//   ^ ^ ^ ^ ^ Loops ^ ^ ^ ^ ^ 

// break? continue?

//   ^ ^ ^ ^ While Loops ^ ^ ^ ^

int while_index = 0;
while(while_index <= 5) // condition checking BEFORE the procedure ran
{
    ++while_index;
    // while procedure
}

//   ^ ^ ^ Do-While Loops ^ ^ ^

int do_while_index = -1;
do
{
    ++do_while_index;
    // do-while procedure
} while(do_while_index <= 5); //condition checking AFTER the procedure ran


//   ^ ^ ^ ^ For Loops ^ ^ ^ ^

for(int for_index = 0; for_index <= 5 ; ++for_index) // same as above examples
{
    // for procedure
}



//   ^ ^ ^ ^ Empty portions in for loop ^ ^ ^ ^
// no init? not condition? no counter?

// for(;;)
// for(;;)
// for(;;)

}

//   ^ ^ ^ ^ ^ Functions ^ ^ ^ ^ ^ 

int int_return_function(){}
// also_int_return_function(){} // defualt int type - though may cause a warning

//   ^ ^ ^ ^ Function prototyping ^ ^ ^ ^

void void_prtp_func_1(); // function declaration
void void_prtp_func_2();
// main procedure
void void_prtp_func_1(){ return; } // function definition
void void_prtp_func_2(){} // in void functions - the return statement may be omitted and the function will return in closing block

// add to tablet: 1. static stack segment layout (building the stack) + dynamic stack segment allocation in function calls (changing the values and releasing the layout parts) 


//   ^ ^ ^ ^  Argument Passing ^ ^ ^ ^ 

//   ^ ^ ^ Passing By Value ^ ^ ^

void pass_by_value(int val){}


//   ^ ^ ^ Passing By Adress ^ ^ ^

void pass_by_adress(int* adr){}
void pass_array_basically_const_address(int arr[]){}

//   ^ ^ ^ Passing By Reference ^ ^ ^

void pass_by_reference(int& ref){}

// anon function? from version 11? what's the syntax?

//   ^ ^ ^ ^ Recursive Functions ^ ^ ^ ^

void rec_func(){rec_func();} // infinite loop logic


//   ^ ^ ^ ^ Pointer (Generic) Functions ^ ^ ^ ^
// finish this from lecture 12

//   ^ ^ ^ ^ Function Overloading ^ ^ ^ ^

int overloaded_func(int val){}
int overloaded_func(float val){} // function overloading - same function name but different parameters
int overloaded_func(int val1, float val2){} // function overloading - same function name but different parameters

//   ^ ^ ^ ^ Defualt Argument Function Overloading ^ ^ ^ ^

int int_overloaded_func(int val1 = NULL, float val2 = NULL){} 
// int overloaded_func(int val1, float val2 = NULL){} - part defaulting is possible
// int overloaded_func(int val1, float val2 = NULL){} - this is not, the order must be from the right to left

//   ^ ^ ^ ^ Function Templates ^ ^ ^ ^









//   & & & & & & Classes & & & & & &


/*   < < < < < < < <   Design Principles   > > > > > > > >   */

//   & & & & & & Procedural Design & & & & & &  

//   ^ ^ ^ ^ ^ Procedures: Implemented as Functions ^ ^ ^ ^ ^
//   ^ ^ ^ ^ ^ Sequence/Execution control: Control Flow section's tools (if,else-if, for etc...) ^ ^ ^ ^ ^
//   ^ ^ ^ ^ ^ Scope Modularity(?): Each function variable has a local scope ^ ^ ^ ^ ^ 
//   ^ ^ ^ ^ ^ Single Responsibility Modularity: one function takes care of one functional requirement ^ ^ ^ ^ ^
//   ^ ^ ^ ^ ^ Message Passing: Function invocation ^ ^ ^ ^ ^
//   ^ ^ ^ ^ ^ Abstraction: each function invocation is a black box ^ ^ ^ ^ ^
//   ^ ^ ^ ^ ^ Supports TDD: using the function, and then impementing


// -------------------------------------------//









/*   < < < < < < < <   Object Oriented Principles   > > > > > > > >   */









//   & & & & & & Structs & & & & & &




//   & & & & & & Classes & & & & & &
// Add function overloading (defaukt values? and the not possible case when playing with their order?) above after updating to the latest C Patch,
// planning an object and UMLing skills to tablet
//   ^ ^ ^ ^ ^ Include's Double Code Generation Avoidance ^ ^ ^ ^ ^ 

#ifndef MY_CLASS

#define MY_CLASS
// my class decleration here

#endif
 

//   ^ ^ ^ ^ ^ Class decleration ^ ^ ^ ^ ^

class My_class
{

//   ^ ^ ^ ^ Class Level Access modifiers (only level in C++) ^ ^ ^ ^

// private unless stated otherwise

public:
private:
protected:

};


//   ^ ^ ^ ^ Class Attributes/Fields ^ ^ ^ ^

class My_fields_1
{

    char char_field;
	int int_field;
	long long_field;
	float float_field;
	double double_field;

};


//   ^ ^ ^ ^ Static Attributes ^ ^ ^ ^

//   ^ ^ ^ Static Attribute Declaration

class My_fields_2_with_static
{

	int regular_int_field;
	static int static_int_field;

};


// My_fields_2_with_static::static_int_field = 0;


// these two classes will be used for the multi inheritance example
class My_inhereted
{
public:

	My_inhereted()
	{
		prmitive_field = 0;
	}
	My_inhereted(int pf)
	{
		prmitive_field = pf;	
	}

	int prmitive_field;
};

class Another_inhereted
{
	public:
	Another_inhereted(){another_primitive = 0;}
	Another_inhereted(int ani){another_primitive = ani;}
	int another_primitive;
};


//   ^ ^ ^ ^ ^ Methods ^ ^ ^ ^ ^

//   ^ ^ ^ ^ Virtual Methods ^ ^ ^ ^

class My_vritual_methods
{
	public:

	void function_not_to_override(){}
	virtual void virtual_function_to_overide(){}
	virtual void virtual_function_to_overide_and_use(){}
	virtual void virtual_function_to_hide(int hide_this){}
	
	private:

	int int_to_hide;
};

class witness_virtual_method_use : public My_vritual_methods
{
	public:

	virtual void virtual_function_to_override(){}
	virtual void virtual_function_to_overide_and_use(){virtual_function_to_overide_and_use();}
	virtual void virtual_function_to_hide() {} // function_to_hide(); will call inherntee's function //
	
};

//   ^ ^ ^ Polymorphic methods ^ ^ ^   //

class poly_methods_inherited // 1st requirement: inherited has virtual method
{
	public:

	virtual void my_virtual_polymorphic_method(){}
};

class poly_methods_inheritee : public poly_methods_inherited 
{
	public: 

	virtual void my_virtual_polymorphic_method(){} // 2nd requirement: inheritee overrides 
};

class ploy_methods_upcasting 
{
// what here? note the three requirements?
};


//   ^ ^ ^ ^ Constructor ^ ^ ^ ^   //

class My_methods : public My_inhereted
{

 

//   ^ ^ ^ Init List ^ ^ ^
My_methods(int pri_f_1, int pri_f_2, int* poi_f_1) 

: 

primitive_field_1(NULL),
primitive_field_2(NULL),
pointer_field_1(nullptr)

{

}


//   ^ ^ ^ Default Constructor ^ ^ ^   //

My_methods()

{
	primitive_field_1 = NULL;
    primitive_field_2 = NULL;
    pointer_field_1 = nullptr;

//   ^ ^ Object Relations (through initiation)

	// imagine the following pointer is passed as an argument..
	int a = 5;
	int* a_p = &a; 

	pointer_field_1; // My_methods uses object
	pointer_field_1 = new int; // My_methods responsible for object's lifetime
	pointer_field_1 = a_p; // My_methods is not responsible for the object's lifetime 

}


//   ^ ^ ^ C'tor Delegation ^ ^ ^

My_methods(int pri_f_1)

:

My_methods(pri_f_1, NULL, nullptr) // delegating work for the C'tor mentioned in the init list portion

{

}


//   ^ ^ ^ Copy Constructor ^ ^ ^  //

My_methods(const My_methods& other_obj)

: 

My_methods() // def c'tor delgation for initialization 

{
	
	primitive_field_1 = other_obj.primitive_field_1;
	primitive_field_2 = other_obj.primitive_field_2;
	pointer_field_1 = other_obj.pointer_field_1;

}


//   ^ ^ ^ Super C'tor inocation ^ ^ ^

My_methods(int pf_1, int pf_2)
:
My_inhereted(pf_1)
{
	primitive_field_1 = pf_1;
    primitive_field_2 = pf_2;
    pointer_field_1 = nullptr;
}


//   ^ ^ ^ ^ Destructor ^ ^ ^ ^ //

~My_methods()
{
	delete pointer_field_1;
}

//  ^ ^ ^ Virtual Destructor ^ ^ ^ //
// No Virtual C'tor! C++ Is statically typed -> space allocated needs to be known at compile time //
virtual ~My_methods() = 0; 

//   ^ ^ ^ ^ Assignment operator ^ ^ ^ ^ //

My_methods& operator=(const My_methods& other_obj) // by reference return type - to enable piping assigntment/multi assignment
{
	if (this!= &other_obj) // checking for double pointing
    {
        delete pointer_field_1; // wipe out existing data

        // do the deep copy //
        pointer_field_1 = new int; // do the deep copy //
        *pointer_field_1 = *other_obj.pointer_field_1;
    }

    return *this; 
}


//   ^ ^ ^ ^ Friend relations ^ ^ ^ ^

	friend bool equals(const My_methods&); // a method that has "private modifier" access
	friend class My_inherited; // a class that has "private modifier" access

	int primitive_field_1, primitive_field_2;
	int* pointer_field_1;


};


//   ^ ^ ^ ^ ^ Inheritance ^ ^ ^ ^ ^ 

//   ^ ^ ^ ^ Multi Inheritance ^ ^ ^ ^
// add to tablet the skill of graphing creation and destruction of objects, especially with virtual inheritance

class My_diamond_inheritance: public My_inhereted, Another_inhereted // diamond inheritance
{

};


//   ^ ^ ^ ^ Virtual Inheritance ^ ^ ^ ^

class My_base_inherited{};
class My_first_virt_inherited : public virtual My_base_inherited{};
class My_second_virt_inherited : public virtual My_base_inherited{};
class My_inheriting : public My_first_virt_inherited, My_second_virt_inherited{}; // looks like regular multi inheritance from here
//here inheriting's c'tor can invoke base c'tor: My_inhereting(const My_inhereting& other) : My_base_inherited(other) .... unlike in the non virtual diamond case 


//   ^ ^ ^ ^ ^ DownCasting : Static & Dynamic Cast As RTTI ^ ^ ^ ^ ^

class A_Class{};
class B_Class : public A_Class{};
class C_Class : public B_Class{};

A_Class* a_pointer = new A_Class();
C_Class* c_pointer = new C_Class();

B_Class* b_pointer_c_type_cast_to_show_similarity_in_syntax = (C_Class*)c_pointer;
B_Class* b_pointer_that_shows_similarity_in_syntax = static_cast<C_Class*>(c_pointer); // Down-Casting using static-cast -> virtual-inh base class cant be down-casted this way -> no complete object in compile time
B_Class* another_b_pointer_also_similar_in_syntax = dynamic_cast<C_Class*>(c_pointer);

//   ^ ^ ^ ^ Referential Dynamic Cast ^ ^ ^ ^   //

B_Class& b_reference = (C_Class&)*c_pointer;
B_Class& static_b_reference = static_cast<C_Class&>(*c_pointer);  
B_Class& dynamic_b_reference = dynamic_cast<C_Class&>(*c_pointer);


//   ^ ^ ^ ^ Slicing ^ ^ ^ ^

A_Class slice_this_from_b_to_a = B_Class(); 


//   ^ ^ ^ ^ ^ Reflection ^ ^ ^ ^ ^   //
// typeinfo? typeid?
 
//   ^ ^ ^ ^ ^ Inlining methods ^ ^ ^ ^ ^   //

class My_inline
{
	void implicit_inline(){}
	void explicit_inline(); // declaration
};

inline void My_inline::explicit_inline(){} // definition

// template classes? 
// reflections 









// Runtime Environment interaction (correct number of  < or & at the start and end here to make it synced to the DFS of the subject)



//   & & & & & &  File handling & & & & & & 

ofstream file_object;

//   ^ ^ ^ ^ Modes ^ ^ ^ ^

ifstream in_file("in_file.txt", ios::in); // for input from a file
ofstream out_file("out_file.txt", ios::out); // for output to a file
ofstream trunc_mode_file("trunc_mode_file.txt", ios::trunc); // discard previous contents


//   ^ ^ ^ ^ ^ File API ^ ^ ^ ^ ^ 

class File_class // file handler as a class - needed to wrap this to use open without comp errors
{

File_class(){my_file.open("file_name.txt");}
~File_class(){my_file.close();}

//   ^ ^ ^ ^ Read ^ ^ ^ ^

void read_to_file()
{
	string var_to_in;
	in_file >> var_to_in;
}

//   ^ ^ ^ ^ Write ^ ^ ^ ^

void write_to_file()
{
	out_file << "hi";
}

//   ^ ^ ^ ^ Seekers ^ ^ ^ ^

void get_seeking()
{
	my_second_file.seekg(0, ios::beg); // go to the beginning of the file
    my_second_file.seekg(10, ios::cur); // go 10 positions from the current position
    my_second_file.seekg(0, ios::end); // go to the end of the file
}

void put_seeking()
{
	my_file.seekp(0, ios::beg); // go to the beginning of the file
	my_file.seekp(10, ios::cur); // go 10 positions from the current position
	my_file.seekp(0, ios::end); // go to the end of the file
}
// put -out, 
// beg - def, cur, end, 

ofstream my_file; 
ifstream my_second_file;


// stopped at tell, what about binary files?

};









//   & & & & & & Error Handling & & & & & & 

//   ^ ^ ^ ^ ^ Throw ^ ^ ^ ^ ^ 

class Error_Handling
{

	void throw_error()
	{
		throw std::runtime_error("An error occurred");
	}
	
	void try_error()
	{
		try
        {
            throw_error();
        }
        catch(const std::exception& e)
        {
            std::cerr << "Caught exception: " << e.what() << '\n';
        }
	}

};





// for the java glossary (delete this from here later) - package hirerchy? are there complex relations?
