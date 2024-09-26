// Rust Online Emulator: https://www.programiz.com/rust/online-compiler/









/*   < < < < < < < <   Language Principles   > > > > > > > >   */









//   & & & & & & Libraries & & & & & &
// stndard lib? GUI? rich api?








//   & & & & & & Comments & & & & & &

// Single line comment

/* 
Multi Line 
Comment
 */


/* Nested
// Comments //
are available */







//   & & & & & & Literals (+ defined unary literal operators) & & & & & &

//   ^ ^ ^ ^ ^ Expressions ^ ^ ^ ^ ^ //

fn fun_literals()
{

//   ^ ^ ^ ^ ^ Integers ^ ^ ^ ^ ^
    
    123;
    1_234;
    12_34; // wierd syntax behavior but it works
    -123;
    


}

/* 
void fun_literals(){ 
    
    
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
    
    
    
    
*/








/* 

//  ^ ^ ^ ^ Integers: Type Modifiers ^ ^ ^ ^

0xF5;
0o12;
0b110;


//   ^ ^ ^ ^  Integers: Unsigned  ^ ^ ^ ^ 

11u8;
12u16;
13u32;
14u64;
15u128;
16usize;

//   ^ ^ ^ ^ Integers: Signed ^ ^ ^ ^

// ?

// floating point
// bools
// chars

12;
45.6;
"Hi";
true;
(1u32, 2u32, 4.3f32, 5.4f32);

//   & & & & & & Operators & & & & & &  

3.4 + 5.6;
true && false;

//   & & & & & & String Formatting & & & & & &   // 
// - Note the printing is MACRO based, :o/b/x for diffrent radixes //

println!("first: {}", my_tuple.0);

//   & & & & & & Conditional Statements & & & & & &   // 

//   & & & & & & Loops & & & & & &   //

//
fn main()
{
    // literals:
    
    // tuples:
    
    let my_tuple = (1u32, 2u32, 3u32, 4.3f32, 5.4f32);     
    
    

    // incremental //
    print!("{0}, this is {1}. {1}, this is {0}", "Alice", "Bob")
    
    // no order significance //
    println!("{subject} {verb} {object}", object = "the lazy dog", subject = "the quick brown fox", verb = "jumps over")

    println!("decimal: {}", 1234);
    println!("hexa: {:x}", 1234);
    println("octal: {:o}", 1234);
    println!("binary: {:b}", 1234);
    // paragraphing - justifying and adding zeros //

    println!("{number:>5}", number = 2); // right justify by 4 places (the last taken by the 2) //
    // left justifying is like printing regularly //
    println!("{number:0>5}", number = 2); // justify right with zeros //
    println!("{number:0<5}", number = 2); // justify left with zeros //
    println!("{number:0>width$}", number = 2, width = 5);

    // immutable variables //
    
    let number : f64 = 2.0;
    let width : usize = 5;
    println!("{number:>width$}"); // right justify with zeros and limit decimal places //

    let fir_var = true;
    let fir_var: bool = false; // type annotation
    let sec_var: f64 = 4.5; // type annotation
    let third_var = 5i32; // sufixed type annotation
    let fist_tuple = ("hi", "bye");
    
    // mutable variables //

    let mut fort_var: f64 = 67.23;
    fort_var = 25.47f64; 

    // operators and literals

    println!("{}", 1u32 + 2);
    println!("{}", 1i32 - 2);
    println!("{}", 1e4);
    println!("{}", 1e5 - 1e4);

} 





















































//   & & & & & & String Formatting & & & & & &



void fun_string_formats(){

int number = 1;
double dvalue = 2.344444;
int undef_behav = 4;


//   ^ ^ ^ ^ ^ Format Specifier Fields ^ ^ ^ ^ ^

//   ^ ^ ^ ^ Flags ^ ^ ^ ^



//   ^ ^ ^ ^ Precision ^ ^ ^ ^

printf("%d %.2lf", number, dvalue); // two digits left of decimal point 
// what about two digits to the right? 


//   width
//   ^ ^ ^ ^ Length ^ ^ ^ ^

printf("%ld", 1); // long
printf("%lf", 2.34); // double

//   ^ ^ ^ ^ Types ^ ^ ^ ^

printf("%c", 'a'); // char
printf("%d", 1); // int
printf("%f", 2.3); // float



printf("%c", undef_behav); // wrong type field - undefined behaviour!

//   custom field 

}


// More Material: 
// complete this section from here: https://en.wikipedia.org/wiki/Printf 









//   & & & & & & Operators & & & & & &
// which operations are available? one what types? categories : numbers, string operators...


void fun_operators()
{
int first_check, second_check;
int first_multi_assign, second_multi_assign;
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
int first = 1;
first = 2;


//   ^ ^ ^ Multiple Assignment ^ ^ ^

first_multi_assign = second_multi_assign = 1;


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


//   ^ ^ ^ type casting/C-casting ^ ^ ^

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


void fun_variables()
{

char my_char;
int my_int;
long my_long;
float my_float;
double my_double;
int imagine_this_is_out_of_any_function_global = 0;

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

    printf("global is accessible: %d", imagine_this_is_out_of_any_function_global);    
    imagine_this_is_out_of_any_function_global = 7; // and mutable //
    static int my_static = 0; // static variable accessible in my_func
}  

// but even though it's lifetime is the same as the global variable - trying to access the static variable from main - is a compilation error


//   ^ ^ ^ ^ Local variables ^ ^ ^ ^

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

// break? continue?

//   ^ ^ ^ Heap Byte Allocation: Malloc ^ ^ ^

my_char_pointer = (char*)malloc(sizeof(char));
my_int_pointer = (int*)malloc(sizeof(int));
my_long_pointer = (long*)malloc(sizeof(long));
my_float_pointer = (float*)malloc(sizeof(float));

//   ^ ^ ^ Heap Zero Allocation: Calloc ^ ^ ^


my_char_pointer = (char*)calloc(1, sizeof(char));
my_int_pointer = (int*)calloc(1, sizeof(int));
my_long_pointer = (long*)calloc(1, sizeof(long));
my_float_pointer = (float*)calloc(1, sizeof(float));

//   ^ ^ ^ Heap Memory De-Allocation ^ ^ ^

free(my_char_pointer);
free(my_int_pointer);
free(my_long_pointer);
free(my_float_pointer);

//   ^ ^ ^ Heap Memory Re-Allocation ^ ^ ^

my_char_pointer = realloc(my_char_pointer, sizeof(char) * 1);
my_int_pointer = realloc(my_int_pointer, sizeof(int) * 2);
my_long_pointer = realloc(my_long_pointer, sizeof(long) * 3);
my_float_pointer = realloc(my_float_pointer, sizeof(float) * 4);

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

//   ^ ^ ^ ^ Arrays ^ ^ ^ ^ 

// strings?



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
also_int_return_function(){} // defualt int type - though may cause a warning

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
// add this - pass_by_adress_2(int adr[]){} ? or in the array section ? 


// anon function? from version 11? what's the syntax?

//   ^ ^ ^ ^ Recursive Functions ^ ^ ^ ^

void rec_func(){rec_func();} // infinite loop logic


//   ^ ^ ^ ^ Pointer Functions ^ ^ ^ ^
// finish this from lecture 12







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






*/