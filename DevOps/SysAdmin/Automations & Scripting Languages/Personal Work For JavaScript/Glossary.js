// JavaScript Online Emulator: https://www.programiz.com/javascript/online-compiler/

//   < < < < < < < <   Language Principles   > > > > > > > >   //

//   < < < < < < < <   Procedural Principles  > > > > > > > > >   //

//   & & & & & & Libraries & & & & & &   //

//   ^ ^ ^ ^ ^ Static Libraries ^ ^ ^ ^ ^
// gui? library databases?

//   ^ ^ ^ ^ ^ Shared Libraries ^ ^ ^ ^ ^

//   & & & & & & Comments & & & & & &

// Single Line comment

/* multiple line
comments
*/

/* Nested
// Comments //
are available */

//   & & & & & & Data Streaming & & & & & &

//   ^ ^ ^ ^ ^ Variable input ^ ^ ^ ^ ^

//   ^ ^ ^ ^ ^ Console Output ^ ^ ^ ^ ^

//   & & & & & & Literals (+ defined unary literal operators) & & & & & &

//   ^ ^ ^ ^ ^ Expressions ^ ^ ^ ^ ^ //
// strings and chars?

function fun_literals() {
  //   ^ ^ ^ ^ ^ Integers ^ ^ ^ ^ ^

  123;
  1_234;
  12_34; // wierd syntax behavior but it works
  -123;

  //  ^ ^ ^ ^ Coding Modifiers ^ ^ ^ ^

  //  ^ ^ ^ Radixed modifier ^ ^ ^

  0x12ab;
  0o12;
  0b110011;

  // There are no Unsigned and no Long types.

  //   ^ ^ ^ ^ ^ Floats ^ ^ ^ ^ ^
  1.2;
  -3.4;

  //   ^ ^ ^ ^ Sceientific Notation Encoding  ^ ^ ^ ^
  1e2;
  1e-3;
}

//   & & & & & & String Formatting & & & & & &

function fun_string_formats() {
  var number = 1;
  var dvalue = 2.344444;

  //   ^ ^ ^ ^ ^ Format Specifier Fields ^ ^ ^ ^ ^

  console.log(`number: ${number}\n`); // appostrophe to enable escape characters

  // No Flags - though precision behaviour is decoupled from string formatting:

  formattedPrice = dvalue.toFixed(2); // two digits left of decimal point //
}

//   & & & & & & Operators & & & & & &
// which operations are available? one what types? categories : numbers, string operators...

function fun_operators() {
  var first_check; // Declarations without assignments - undefined values
  var second_check;

  var sum_temps;
  var five = 5,
    three = 3,
    zero = 0;

  var first_explicit_conv, second_explicit_conv;
  var explicit_conv_assignment;

  //   ^ ^ ^ ^ ^ Expression Values ^ ^ ^ ^ ^

  //   ^ ^ ^ ^ (g-value)l-values : memory allocated and mutable terms ^ ^ ^ ^

  var my_lvalue;

  //   ^ ^ ^ ^ (g-value)r-values : NOT lvals, no persistent memory -> temporary ^ ^ ^ ^

  0;
  ("1");
  // {'m', 'y', '_', 'r', 'v', 'a', 'l', 'u', 'e'};
  // no pointers for the rval of literals (like &10)

  1 + 2; // No Identity : p(ure)-rval

  //   ^ ^ ^ ^ x-values : about to be moved from scope ^ ^ ^ ^

  // function x_val_func(int my_xval)
  // {
  //    return my_xval;
  //}

  //   ^ ^ ^ ^ ^ Assignment Operators ^ ^ ^ ^ ^

  var first = 1;
  first = 2;

  //   ^ ^ ^ Multiple Assignment ^ ^ ^

  var first_multi_assign, second_multi_assign;
  first_multi_assign = second_multi_assign = 1; // chain assignment

  //   ^ ^ ^ ^ ^ Arithmetical Operators ^ ^ ^ ^ ^

  first = first + 3;
  first += 3;
  first = first + 1;
  first++;
  ++first;

  //   ^ ^ ^ ^ ^ Casting Operators ^ ^ ^ ^ ^

  //   ^ ^ ^ ^ Implicit Conversion : Type Coercion ^ ^ ^ ^

  var one = 1;
  var str_five = "5";
  var fifty_one = str_five + one; // result will be a string
  var four = str_five - one; // result will be a number

  //   ^ ^ ^ ^ Explicit type Conversion ^ ^ ^ ^

  explicit_conv_assignment = Number(first_explicit_conv / second_explicit_conv); // both exp conv scenarios, order: 1. int result temp 2. float result temp, 3. int assignment temp

  //   ^ ^ ^ ^ ^ Arithmetical Operators (And a bit of operation piping) ^ ^ ^ ^ ^

  //   ^ ^ ^ ^ Addition ^ ^ ^ ^

  (first = first + 0), (first += 1);

  //   ^ ^ ^ ^ Prefix vs Postfix inc/dec operator ^ ^ ^ ^

  first_check = 1;
  first_check = second_check++; // first_check = 1, second_check = 2
  first_check = ++second_check; // first_check = second_check = 3

  //   ^ ^ ^ ^ Subtraction ^ ^ ^ ^

  var second;
  (second = second - 2), (second -= 3);

  //   ^ ^ ^ ^ Multiplication ^ ^ ^ ^

  var third;
  (third = third * 4), (third *= 5);

  //   ^ ^ ^ ^ Exponantiation ^ ^ ^ ^

  var fourth;
  (fourth = fourth ** 6), (fourth **= 7);

  //   ^ ^ ^ ^ Division ^ ^ ^ ^

  var fifth;
  (fifth = fifth / 8), (fifth /= 9);

  //   ^ ^ ^ ^ Modulo ^ ^ ^ ^

  var sixth;
  (sixth = sixth % 10), (sixth %= 11);

  //   ^ ^ ^ ^ Order of operations (Arith) ^ ^ ^ ^
  // what here ? what comes before what? * before / in C?

  // More Material:
  // map from this more about casts: https://stackoverflow.com/questions/28002/regular-cast-vs-static-cast-vs-dynamic-cast
  // No Automatic casting to wide in c++? a set of rules: https://www.youtube.com/watch?v=uI10H1jzw00
  // Make temp variable arithmetic in tablet and map building upon these scenarios:
  // answer: b' - promotion, (a + b')' - same, ((a + b')')' - demotion

  //   ^ ^ ^ ^ ^ Logical Operators ^ ^ ^ ^ ^
  // order of operations ?
  // == and != are the least in the order of operations, maybe finish the operations order ladder?
  // false and true are exactly 0 and 1
  // five == 2;
  // three < five || three < zero;
  // combining logical and arith: (arithmetic operators take precedence)
  // lecture's example:
  // int x = 2;
  // int y = (x > 5) + 1; // (x > 5) -> 0 -> 0 + 1 = 1
  // int a = 2, b;
  // ((b = 2) == a) // (b = 2) -> (2) -> 2 == 2 -> 1, trick question: a wierd behaviour of c family languages - assignment returns the assign value, acts as arithmetic
  //   Overloading literal operators: https://en.cppreference.com/w/cpp/language/user_literal
  // No Pointer Operators in JavaScript
}

//   & & & & & & Variables & & & & & &
// type hinting? (static - no, dynamic - yes)

function fun_variables() {
  Object(); // null (and probably undefined) go here
  Boolean(false);
  Number(-1.2);
  String("");
  // Symbol("Abc")

  // Leaving the type hinting to TS!

  var imagine_this_is_out_of_any_function_global = 0;

  //   ^ ^ ^ ^ Data Collection Type - Array ^ ^ ^ ^

  var my_char_array = [1, "2"];
  // Dynamic type checking - no need for different types in declaration

  // No cap-counter for Integers in JavaScript

  //   ^ ^ ^ ^ ^ Scope Sharing ^ ^ ^ ^ ^

  //   ^ ^ ^ ^ Global & Static Variables ^ ^ ^ ^
  // var value if not inited: undefined, in let and const it will throw an exception

  imagine_this_is_out_of_any_function_global = 4;

  {
    // imagine this is void function my_func
    console.log(
      "global is accessible:",
      imagine_this_is_out_of_any_function_global
    );
    imagine_this_is_out_of_any_function_global = 7; // and mutable //
    // No Static variables in JS
  }

  //   ^ ^ ^ ^ Block Nesting : Scope levels, Data Hiding and Shadowing ^ ^ ^ ^

  var first_level_local = 1;
  var this_wont_be_changed_local = 2;
  {
    var second_level_local = 3; // Variable Hiding in local scope level
    var this_wont_be_changed_local = 4; // Variable Shadowing (a new variable!) locally scoped

    {
      var third_level_local = 5;
    }
  }

  first_level_local = 3;
  // second_level_local = 4; -> not possible, it's local to the block
  // this_wont_be_changed_local -> 2, the one with the 4 value was a different variable

  //   ^ ^ ^ ^ ^ Constants ^ ^ ^ ^ ^

  // No Pre-Processor directives and Enums in JavaScript

  //   ^ ^ ^ ^ Constants: Immutables

  // No constexpr as of the dynamic typability of the language

  //   ^ ^ ^ Const : immutable primitives and constant pointer for data collections ^ ^ ^

  const dynamic_time_const = 1;
  const mutable_array = [2, 3, 4];

  //   No Pointers & References in JavaScript
}

//   & & & & & & Flow Control & & & & & &

function fun_flow_control() {
  var condition = 1;
  var outer_condition = 0;
  var elif_condition = 1;
  var if_condition = 0;
  var elseif_condition = 1;
  var switch_key = 2;

  //   ^ ^ ^ ^ ^ Statements ^ ^ ^ ^ ^

  //   ^ ^ ^ ^ ^ Labels (no GoTo in JavaScript) ^ ^ ^ ^ ^

  labels_are_only_before_for_loops: for (let i = 0; i < 3; i++) {
    for (let j = 0; j < 3; j++) {
      if (i === 1 && j === 1) {
        console.log("Breaking out of the outer loop");
        break labels_are_only_before_for_loops; // Breaks the outer loop, not just the inner one
      }
      console.log(`i = ${i}, j = ${j}`);
    }
  }

  //   ^ ^ ^ ^ ^ Conditional Statements & & & & & &

  //   ^ ^ ^ ^ If & Else ^ ^ ^ ^ ^

  if (condition) {
    // condition TRUE -> first procedure
  } else {
    // condition FALSE -> second procedure
  }

  //   ^ ^ ^ Null Checks ^ ^ ^

  // Alternative 1 - using 0 representations

  if (ptr_to_check != 0) {
  }
  if (ptr_to_check != NULL) {
  }
  if (ptr_to_check != "\0") {
  }

  // Alternative 2 - using zero equating

  if (ptr_to_check) {
  }

  //   ^ ^ ^ Nested Ifs ^ ^ ^

  if (outer_condition) {
    // first procedure
  } else {
    if (elif_condition) {
      // else if logic , same as the else if example below
      // second procedure
    }
  }

  //   ^ ^ ^ Else-If ^ ^ ^

  if (if_condition) {
    // first procedure
  } else if (elseif_condition) {
    // same as the example above
    // second procedure
  }
}

// map to the tablet - new skill for relations, building a "order relation" graph under constraints (number of maximum relation checks on members, like finding the max of 3 numbers(linear relation) in no more than 3 tries)
// and also - mapping the control flow diagram - a straight line digram that splits whenever theres a conditional statement:
//             - - - - - - - -
//    - - - - -| condition 1  | - - - - - (when theres else-if the split is more than two - 3 + )
//             - - - - - - - -

//   ^ ^ ^ ^ Switch ^ ^ ^ ^ ^

switch (switch_key) {
  case 1: // first procedure
    break;

  case 2: // second procedure
    break;

  case 3: // third procedure
    break;

  default: // fourth procedure
    break;

    //   ^ ^ ^ ^ ^ Loops ^ ^ ^ ^ ^

    // break? continue?

    //   ^ ^ ^ ^ While Loops ^ ^ ^ ^

    var while_index = 0;
    while (while_index <= 5) {
      // condition checking BEFORE the procedure ran
      ++while_index;
      // while procedure
    }

    //   ^ ^ ^ Do-While Loops ^ ^ ^

    var do_while_index = -1;
    do {
      ++do_while_index;
      // do-while procedure
    } while (do_while_index <= 5); //condition checking AFTER the procedure ran

    //   ^ ^ ^ ^ For Loops ^ ^ ^ ^

    for (
      var for_index = 0;
      for_index <= 5;
      ++for_index // same as above examples
    ) {
      // for procedure
    }

  //   ^ ^ ^ ^ Empty portions in for loop ^ ^ ^ ^
  // no init? not condition? no counter?

  // for(;;)
  // for(;;)
  // for(;;)
}

//   ^ ^ ^ ^ ^ Functions ^ ^ ^ ^ ^

function my_function() {}

//   ^ ^ ^ ^ Function hoisting - ReWrites Functions at the Top ^ ^ ^ ^

void_hoist_func();
function void_hoist_func() {} // function declaration comes after - gets rewritten before

//   ^ ^ ^ ^  Argument Passing ^ ^ ^ ^

//   No type passing, primitives passed by value, objects by reference

function pass_by_value(val) {}

// anon function? from version 11? what's the syntax?

//   ^ ^ ^ ^ Recursive Functions ^ ^ ^ ^

function rec_func() {
  rec_func();
} // infinite loop logic

//   ^ ^ ^ ^ Pointer Functions ^ ^ ^ ^
// finish this from lecture 12

//   ^ ^ ^ ^ Function Overloading ^ ^ ^ ^
/*
int overloaded_func(int val){}
int overloaded_func(float val){} // function overloading - same function name but different parameters
int overloaded_func(int val1, float val2){} // function overloading - same function name but different parameters

//   ^ ^ ^ ^ Defualt Argument Function Overloading ^ ^ ^ ^

int int_overloaded_func(int val1 = NULL, float val2 = NULL){} 
// int overloaded_func(int val1, float val2 = NULL){} - part defaulting is possible
// int overloaded_func(int val1, float val2 = NULL){} - this is not, the order must be from the right to left

//   ^ ^ ^ ^ Function Templates ^ ^ ^ ^





//   & & & & & & Structs & & & & & &

// files? 

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

/*

//   & & & & & & Classes & & & & & &
// Add function overloading above after updating to the latest C Patch
//   ^ ^ ^ ^ ^ Include's Double Code Generation Avoidance ^ ^ ^ ^ ^ 

#ifndef MY_CLASS

#define MY_CLASS
// my class decleration here

#endif

//   ^ ^ ^ ^ ^ Class decleration ^ ^ ^ ^ ^

class My_class
{

//   ^ ^ ^ ^ Class Level (only level in C++) Access modifiers ^ ^ ^ ^

// private unless stated otherwise

public:
private:
protected:

};

// friend? inheritance? virtual?

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

//   ^ ^ ^ ^ ^ Methods ^ ^ ^ ^ ^

class My_methods
{

//   ^ ^ ^ ^ Constructor ^ ^ ^ ^   // 
// ctor? ag/asoc/comp?

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
}

//   ^ ^ ^ C'tor Delegation ^ ^ ^

My_methods(int pri_f_1)

:

My_methods(pri_f_1, NULL, nullptr) // delegating work for the C'tor mentioned in the init list portion

{

}

//   ^ ^ ^ Copy Constructor ^ ^ ^  //

My_methods(const My_methods&)

: 

My_methods() // def c'tor delgation for initialization 

{
	// check null pointer - do later
	// dynamic allocation - do later
}


// super?
//   ^ ^ ^ ^ Destructor ^ ^ ^ ^ //


	My_methods();

	int primitive_field_1, primitive_field_2;
	int* pointer_field_1;
	
	//=

};

//inline 

// template classes? 









// < - - - - - Header file - - - - - > //
// Three class dependency: Line --[Friends + Composites]--> point
class MyPoint4
{

public:

    // API mentioned in the header file: 4 C'tors, included: default C'tor and a CC'tor + 1 D'tor

 	MyPoint4(int x=NULL, int y=NULL): x(x), y(y) {} // 3 function overloads (includes def C'tor)
	MyPoint4(const MyPoint4& other_point):MyPoint4(other_point.x, other_point.y) {} // no dynamic allcation: Shallow copy(using C'tor delegation)

	~MyPoint4() {} // no dynamic allocation: empty D'tor

	void print() { cout << "(" << x << "," << y << ")"; }  // Implicitly inlining the print function

	friend bool equals(const MyPoint4&, const MyPoint4&); // delegating permissions to equlas function
	friend class MyLine2;  // Delegating Permissions to the my line class

private: // Data encapsulation: Abstraction + Access strict Message Passing

	int x, y;

};

// Explicit inline the equals implementation
inline bool equals(const MyPoint4& first_point, const MyPoint4& second_point) { return first_point.x == second_point.x && first_point.y == second_point.y; }

// < - - - - - Cpp file - - - - - > //

// empty! //


// < - - - - - Header file - - - - - > //

// a friend function can access the private areas: //
class MyLine2
{

public:

	MyLine2(): starting_point(), ending_point() { }
	MyLine2(const MyPoint4& first_point, const MyPoint4& second_point): starting_point(first_point), ending_point(second_point) {} // Composed points - tight copled to the class, when the object releases, so do they // 

	~MyLine2() {}

	void shrink(); 

	void print() { cout << "( "; starting_point.print(); cout << " , "; ending_point.print(); cout << " )" << endl; }

private:

	MyPoint4 starting_point, ending_point;

};

inline void MyLine2::shrink()
{
	ending_point.x = starting_point.x; // Has access to the private point data
	ending_point.y = starting_point.y; // Has access to the private point data
}


// < - - - - - Cpp file - - - - - > //

// empty! //


// < - - - - - Header file - - - - - > //

class MyArray
{
public:

	MyArray(): elements(nullptr), array_length(NULL){} // pointers: init list to null (avoid dangling pointers)
    // NULL = 0, nullptr has a std::nullptr_t type, it's implicitly convertible to any pointer type
	MyArray(int* other_array, int size) : MyArray() // C'tor delegation/chaining: invoking the default C'tor as a "cleanup" procedure //
	{
		if (other_array) // checking either the other array is empty (null pointer check) or not
		{
            // entered -> there is an array -> go over and copy the int elements
			array_length = size; // updating the size //
			elements = new int[array_length]; // appropriate dynamic memory allocation //
			for (int init_index = 0; init_index < array_length; ++init_index) this->elements[init_index] = other_array[init_index]; // deep copy the elements
		}
	}
	MyArray(const MyArray& other_array): MyArray(other_array.elements, other_array.array_length){} // C'tor delegation/chaining again

	~MyArray() { delete elements; } // D'tor deletes - there are dynamic allocations

	MyArray& operator=(const MyArray& other_array) // same with CC'tor - Deep copy required
	{
		if (this != &other_array) // checking for double pointing  
		{
            // first part - wipe out existing data
			array_length = other_array.array_length;
			delete elements;

            // second part - do the deep copy
			elements = new int[array_length];
			for (int copy_index = 0; copy_index < array_length; ++copy_index) elements[copy_index] = other_array.elements[copy_index];
		}

		return *this; // return the value -> can allow for multi assignment (pipeline behaviour)
	}

	void print() { cout << "array is: "; for (int printing_index = 0; printing_index < array_length; ++printing_index) { cout << elements[printing_index] << " "; } cout << endl; }

private:

	int* elements; // a dynamically meant to be allocated element - can be either AGGREGATED or COMPOSED
	int array_length;

};


// < - - - - - Cpp file - - - - - > //

// empty! //


// < - - - - - Header file - - - - - > //

// tablet skills: add OO graphing? probably it has something to do with behavioral UML?
// Three class dependency: Manager --[inherits]--> Employee --[composites]--> Date
class My_Date
{

public:

	My_Date(): year(2020), month(2), day (2) {}
	My_Date(int year, int month, int day): year(year), month(month), day(day) {}
	My_Date(const My_Date& other_date): My_Date(other_date.year, other_date.month, other_date.day){} // C'tor delegation / chaining 

	~My_Date() {} // no dynamically allocated attributes

	My_Date& operator=(const My_Date& other_date)
	{
		if (this != &other_date) // checking for double pointing
		{
            // Shallow copy, no need for deep copy : primitive attributes
			year = other_date.year;
			month = other_date.month;
			day = other_date.day;
		}

		return *this; // pipeline of multi-asignment
	}

private:

	int year, month, day;

};


// < - - - - - CPP file - - - - - > //

// empty! //

// < - - - - - Header file - - - - - > //


class Employee1
{

public:

	Employee1(): full_name(nullptr), hiring_date(), id(NULL), department_id(NULL) {} // attribute cleanup //

    // No delegation C'tor? :'(

	Employee1(const Employee1& other_employee) : full_name(nullptr), hiring_date(other_employee.hiring_date), id(other_employee.id), department_id(other_employee.department_id) // dangling pointer handling //
	{
		if (other_employee.full_name) // null pointer check
		{
            // Deep copy: find the length through while (don't know how long is name is), and of course copy cells //
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
	My_Date hiring_date; // compose/agregate/associate relation (dependent on C'tors mostly)
	int id;
	short department_id;

};


// < - - - - - CPP file - - - - - > //


// < - - - - - Header file - - - - - > //


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



//   & & & & & & Object Oriented Design & & & & & &  
// what would replace the below ?
// for the java glossary (delete this from here later) - package hirerchy? are there complex relations?




















































































































// https://www.w3schools.com/js/js_syntax.asp
// Syntax (rolling message: redo HOME to output sections later after to connect js to HTML and CSS)

//   & & & & & & Comments & & & & & & //

// Single Line comments //

/* Multi Line
    Comments
 */

//   & & & & & & Literals (Values in javaScript) & & & & & &   //

//   ^ ^ ^ ^ ^ Integers ^ ^ ^ ^ ^

// no literals in js, only assigment values

// 123;
//-34;

//  ^ ^ ^ ^ Integers: Suffix Modifier Encodings ^ ^ ^ ^

// 0xF5;
// 0o12;
// 0b110;

// No signed/unsigned shenanigans

//   & & & & & & Operators & & & & & &

//   & & & & & & String Formatting & & & & & &

//   & & & & & & Conditional Statements & & & & & &

//   & & & & & & Loops & & & & & &

/* multi- line comments */

// from javascript tutorial:
// machine percision
// - 0.1 + 0.2 -> 0.3000...04??
// -- how to trigger machine precision?
// -- it's a floating point algoritm built in "bug"
// order of operations
// - brackets for order
// - wierd Arith behaviour
// --
//
// control flow
// Libraries
// - Math Library
// -- Math.round function - what kind of rounding is it?

/*
TechWorld With Nana:
5 main types:
- number:
-- whole numbers are INTEGER
-- decimal numbers are DECIMAL
- string - quotes (single or double):
-- character
-- letters
-- symbols
-- escape characters
-boolean:
--true
--false
-array (with round brackets)
-object (with curly brackets), list of key-value pairs

operators + - / *
string concat + 

variables:



dev tools:
right clikc -> inspet
go to console -> write javascript

*/

// JSX?
