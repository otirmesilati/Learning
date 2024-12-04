// Rust Online Emulator: https://www.programiz.com/rust/online-compiler/
// To be deleted later, rust resources: https://www.tutorialspoint.com/rust/rust_data_types.htm









//   < < < < < < < <   Language Principles   > > > > > > > >   //









//   < < < < < < < <  Procedural Principles > > > > > > > >









//   & & & & & & Resources: Rich API, Libraries, and Frameworks & & & & & &   // 

//   ^ ^ ^ ^ ^ Static Libraries ^ ^ ^ ^ ^
// stndard lib? GUI? rich api? libraries database?

//   ^ ^ ^ ^ ^ Shared Libraries ^ ^ ^ ^ ^









//   & & & & & & Comments & & & & & &

// Single line comment

/* 
Multi Line 
Comment, No nested comments
 */


 /// Documentation ///











//   & & & & & & Data Streaming & & & & & & 

//   ^ ^ ^ ^ ^ Variable input ^ ^ ^ ^ ^

//   ^ ^ ^ ^ ^ Console Output ^ ^ ^ ^ ^ 









//   & & & & & & Literals (+ defined unary literal operators) & & & & & &

//   ^ ^ ^ ^ ^ Expressions ^ ^ ^ ^ ^ //
// strings and chars?

fn fun_literals()
{

//   ^ ^ ^ ^ ^ Integers ^ ^ ^ ^ ^
    
    123;
    1_234;
    12_34; // wierd syntax behavior but it works
    -123;
    
//   ^ ^ ^ ^ Coding Modifiers ^ ^ ^ ^

//   ^ ^ ^ Radixed modifier ^ ^ ^

    0x12AB;
    0o12;
    0b110011;

//   ^ ^ ^ Un-Signed Modifier Suffix operators ^ ^ ^

    0u8;
    1u16;
    2u32;
    3u64;
    4u128;
    5usize;
    
    // -6u8 or any unsigned int pops a compile time error 

    // No Unsigned negatives
    
    // No Long modifier syntax in rust
    
     
    //   ^ ^ ^ ^ ^ Floats ^ ^ ^ ^ ^
    
    1.2;
    -3.4;
    
    //   ^ ^ ^ ^ Sceientific Notation Encoding  ^ ^ ^ ^
    
    1e2;
    1e-3;
    
    
    }
    
    
    
    
    
    // More Material:
    // https://web.archive.org/web/20130807052041/http://cpp.comsci.us/etymology/literals.html
    // https://en.cppreference.com/w/cpp/language/floating_literal //
    










 


//   & & & & & & String Formatting & & & & & &



fn fun_string_formats() {

let number: i32 = 1; 
let dvalue: f64 = 2.344444;
let undef_behav: i32 = 4;


//   ^ ^ ^ ^ ^ Format Specifier Fields ^ ^ ^ ^ ^

//   ^ ^ ^ ^ Flags ^ ^ ^ ^

//   ^ ^ ^ ^ Precision ^ ^ ^ ^
 
println!("{:.2}", dvalue);


//   width


//   ^ ^ ^ ^ Length ^ ^ ^ ^

println!("{}", 1);
println!("{}", dvalue);
 
//   ^ ^ ^ ^ Types ^ ^ ^ ^

println!("{}", 'a');
println!("{}", 1);
println!("{}", 2.3);

// No wierd behaviour in Rust as this specific syntax tool is loosely typed

//   custom field 

}








 
//   & & & & & & Operators & & & & & &


void fun_operators()
{

    let mut first_check: i32; // Calling this will produce a Comp Error in Rust
    let mut second_check: i32;

    let mut sum_temps: f64;
    let five: i32 = 5;
    let three: i32 = 3;
    let zero: i32 = 0;
    let mut explicit_conv_assignment: i32;
    let mut first_explicit_conv: i32;
    let mut second_explicit_conv: i32;

//   ^ ^ ^ ^ ^ Expression Values ^ ^ ^ ^ ^

//   ^ ^ ^ ^ (g-value)l-values : memory allocated and mutable terms ^ ^ ^ ^
    
    let mut my_lvalue: i32 = 0;

//   ^ ^ ^ ^ (g-value)r-values : NOT lvals, no persistent memory -> temporary ^ ^ ^ ^

    0;
    '1'; 
    (1 + 2); // No Identity : p(ure)-rval

//   No Xval examples - Rust uses reference passing (Borrowing)


//   ^ ^ ^ ^ ^ Assignment Operators ^ ^ ^ ^ ^

    let mut first: i32 = 1;
    first = 2;

//   ^ ^ ^ ^ Multiple Assignment ^ ^ ^ ^

    let mut first_multi_assign: i32; let mut second_multi_assign: i32; // No ones liners! only one liners in syntax..
    first_multi_assign = second_multi_assign = 1; // chain assignment

//   ^ ^ ^ ^ ^ Casting Operators : C type conversion ^ ^ ^ ^ ^

//   ^ ^ ^ ^ Implicit Automatic/Widening Conversion ^ ^ ^ ^

    let mut first_temp: i32;
    let mut second_temp: i32;
    let mut int_elm: i32 = -1;
    let mut char_elm: char = '0';
    let mut long_elm: i64 = '1';
    let mut float_elm: f32 = 2.00;
    let mut double_elm: f64 = 3.00;

    first_temp + second_temp;
    int_elm - char_elm as i32;     // info lose 
    long_elm + float_elm as i64;   // overflow

//   ^ ^ ^ ^ Explicit conversion - User Defined ^ ^ ^ ^ 
    
    first_explicit_conv = 3;
    second_explicit_conv = 4;
    first_explicit_conv = 5.00 as i32 + second_explicit_conv;
    explicit_conv_assignment = (first_explicit_conv / second_explicit_conv) as f32 as i32; // both exp conv scenarios, order: 1. int result temp 2. float result temp, 3. int assignment temp

//   ^ ^ ^ ^ ^ Arithmetical Operators (and a bit of operation piping) ^ ^ ^ ^ ^

//   ^ ^ ^ ^ Addition ^ ^ ^ ^ 

    first += first + 0;
    first += 1;

// No prefix & Postfix in Rust

//   ^ ^ ^ ^ Subtraction ^ ^ ^ ^

    let mut second: i32;
    second = second - 2;
    second -= 3;

//   ^ ^ ^ ^ Multiplication ^ ^ ^ ^

    let mut third: i32;
    third = third * 3;
    third *= 4;

//   ^ ^ ^ ^ Division ^ ^ ^ ^

    let mut fourth: i32;
    fourth = fourth / 5;
    fourth /= 6;

//   ^ ^ ^ ^ Modulo ^ ^ ^ ^

    let mut fifth: i32;
    fifth = fifth % 7;
    fifth %= 8;

}

/*

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

//   ^ ^ ^ ^ Adress Operator ^ ^ ^ ^

int* ptr_address_1 = &ptr_value_1; 


//   ^ ^ ^ ^ Indirection Operator ^ ^ ^ ^

ptr_value_1 = *ptr_address_1; 
int ptr_value_2 = 1, * ptr_address_2 = &ptr_value_2, ptr_value_2 = *ptr_address_2; // multiple operations in one line

//   ^ ^ ^ Indirection Operator as a Substitute to Element Access Operator ^ ^ ^

int my_array_to_access_elements_from[3] = {0, 1, 2};
int first_element, second_element, third_element;
int* first_element_pointer = NULL, second_element_pointer = NULL, third_element_pointer = NULL;


first_element_pointer = my_array_to_access_elements_from; // does the same thing as first_element_pointer = &my_array_to_access_elements_from[0];
second_element_pointer = first_element_pointer + 1; // does the same thing as second_element_pointer = &my_array_to_access_elements_from[1];
third_element_pointer = first_element_pointer + 2;


//   ^ ^ ^ ^ Member Access Operator ^ ^ ^ ^ 



//?


//   ^ ^ ^ ^ Element Access Operator ^ ^ ^ ^ 

first_element = my_array_to_access_elements_from[0];
second_element = my_array_to_access_elements_from[1];
third_element = my_array_to_access_elements_from[2];


}

















    
    
    //   ^ ^ ^ ^ Order of operations (Arith) ^ ^ ^ ^ 
    // The same order of operations exists in Rust as in C++ (multiplication/division/modulus comes before addition/subtraction)

    // More Material: 
    // No need for the external links as Rust handles type casting differently.

    //   ^ ^ ^ ^ ^ Logical Operators ^ ^ ^ ^ ^

    let _logical_result = five == 2;
    let _logical_result_2 = (three < five || three < zero);

    // Combining logical and arith:
    let x = 2;
    let y = if x > 5 { 0 } else { 1 }; // Example of logical condition, similar to C++'s `x > 5` trick

    //   ^ ^ ^ ^ ^ Pointer Operators ^ ^ ^ ^ ^

    let ptr_value_1: i32 = 0;

    //   ^ ^ ^ ^ Adress Operator ^ ^ ^ ^

    let ptr_address_1: *const i32 = &ptr_value_1; // Rust pointer (not directly used like C++)

    //   ^ ^ ^ ^ Indirection Operator ^ ^ ^ ^

    let ptr_value_1_deref = unsafe { *ptr_address_1 }; // Dereferencing a pointer (unsafe in Rust)

    let ptr_value_2: i32 = 1;
    let ptr_address_2: *const i32 = &ptr_value_2;
    let ptr_value_2_deref = unsafe { *ptr_address_2 };

    //   ^ ^ ^ ^ Indirection Operator as a Substitute to Element Access Operator ^ ^ ^ ^

    let my_array_to_access_elements_from: [i32; 3] = [0, 1, 2];
    let mut first_element: i32;
    let mut second_element: i32;
    let mut third_element: i32;
    let mut first_element_pointer: *const i32 = std::ptr::null();
    let mut second_element_pointer: *const i32 = std::ptr::null();
    let mut third_element_pointer: *const i32 = std::ptr::null();

    first_element_pointer = &my_array_to_access_elements_from[0]; // Same thing as `&my_array_to_access_elements_from[0]`
    second_element_pointer = &my_array_to_access_elements_from[1];
    third_element_pointer = &my_array_to_access_elements_from[2];

    //   ^ ^ ^ ^ Member Access Operator ^ ^ ^ ^ 

    // Rust uses dot `.` for member access in structs, not needed here for simple types

    //   ^ ^ ^ ^ Element Access Operator ^ ^ ^ ^ 

    first_element = my_array_to_access_elements_from[0];
    second_element = my_array_to_access_elements_from[1];
    third_element = my_array_to_access_elements_from[2];
}






























//   & & & & & & Variables & & & & & &
// type hinting? (static - no, dynamic - yes)


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


//   ^ ^ ^ ^ Local variables & Block Nesting ^ ^ ^ ^

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

//   ^ ^ ^ ^ ^ Data Collections ^ ^ ^ ^ ^ 

// No List Comprehension in Rust

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
