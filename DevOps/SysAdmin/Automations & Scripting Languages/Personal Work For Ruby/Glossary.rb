# // C Online Emulator: https://www.onlinegdb.com/online_c_compiler



# // where to put bitmasking? watch video below:
# // https://www.youtube.com/watch?v=wvtFGa6XJDU
# // Add the material from the self made "Nekodot summary" if it still exists :)









# //   < < < < < < < <   Language Principles   > > > > > > > >   









# //   < < < < < < < <   Procedural Principles   > > > > > > > >   
# //   < < < < < < < <   Generic Principles   > > > > > > > >   








# //   & & & & & & Resources: Rich API, Libraries, and Frameworks & & & & & &

# //   ^ ^ ^ ^ ^ Static Libraries ^ ^ ^ ^ ^

# #include <stdio.h> // C IO Library Files 
# #include <string.h> //? gets? puts? strlen? strcmp (ASCII gimetry compare function)? strcpy(writing function)? strcat(concat from null)?

# //   ^ ^ ^ ^ ^ Shared Libraries ^ ^ ^ ^ ^


# // iostream? stdio.h? GUI libraries?
# // pragma once? namespace ? (finish mapping this)
# // rich API? primitives and objects API? collections?









# //   & & & & & & Comments & & & & & &

# // Single Line comment

# /* multiple line
# comments
# */

# /* Nested
# // Comments //
# are available */

# // docs? logs?









# //   & & & & & & Data Streaming & & & & & & 

# //   ^ ^ ^ ^ ^ Variable input ^ ^ ^ ^ ^

# // input of string - mention the problem of entering a space?

# //   ^ ^ ^ ^ ^ Console Output ^ ^ ^ ^ ^ 









# //   & & & & & & Literals (+ defined unary literal operators) & & & & & &

# //   ^ ^ ^ ^ ^ Expressions ^ ^ ^ ^ ^ //


# void fun_literals(){ 


# //   ^ ^ ^ ^ ^ Integers ^ ^ ^ ^ ^

# 123;
# // no underscore format for numbers like 1,234! 
# -123;


# //  ^ ^ ^ ^ Coding Modifiers ^ ^ ^ ^

# //  ^ ^ ^ Radixed modifier ^ ^ ^

# 0x12AB;
# 012; // octal literals written without o //
# 0b110011;

# //   ^ ^ ^ Un-Signed Modifier Suffix operators ^ ^ ^

# 1u;
# -2U; // will work sometimes and sometimes not: will be translated: 2's complement on the value -> new unsigned value

# //   ^ ^ ^ Long Modifier Suffix operators

# 1l;
# -2L;
# 3ll;
# 4LL;

# //   ^ ^ ^ ^ ^ Floats ^ ^ ^ ^ ^
# // add f suffix //
# 1.2;
# -3.4;

# //   ^ ^ ^ ^ Sceientific Notation Encoding  ^ ^ ^ ^

# 1e2;
# 1e-3;
# 1e4L;   // combining //


# //   ^ ^ ^ ^ ^ Characters & Charlist (strings) ^ ^ ^ ^ ^

# 'a';
# // {'b', 'c'};

# }





# // More Material:
# // https://web.archive.org/web/20130807052041/http://cpp.comsci.us/etymology/literals.html
# // https://en.cppreference.com/w/cpp/language/floating_literal //









# //   & & & & & & String Formatting & & & & & &


# void fun_string_formats(){

# int number = 1;
# double dvalue = 2.344444;
# int undef_behav = 4;


# //   ^ ^ ^ ^ ^ Format Specifier Fields ^ ^ ^ ^ ^

# //   ^ ^ ^ ^ Flags ^ ^ ^ ^

# //   ^ ^ ^ Precision ^ ^ ^ 

# printf("%d %.2lf", number, dvalue); // two digits left of decimal point 
# // what about two digits to the right? 


# //width?


# //   ^ ^ ^ Length ^ ^ ^

# printf("%ld", 1); // long
# printf("%lf", 2.34); // double

# //   ^ ^ ^ Types ^ ^ ^

# printf("%c", 'a'); // char
# printf("%d", 1); // int
# printf("%f", 2.3); // float

# printf("%c", undef_behav); // wrong type field - undefined behaviour!

# //custom field? 
# // complete this section from here: https://en.wikipedia.org/wiki/Printf 
# }









# //   & & & & & & Operators & & & & & &


# void fun_operators()
# {

# int first_check;  // Declarations without assignments - Assigned currently placed values ("Garbage Values")
# int second_check; 

# double sum_temps; 
# int five = 5, three = 3, zero = 0;
# int first_explicit_conv, second_explicit_conv;
# int explicit_conv_assignment;


# //   ^ ^ ^ ^ ^ Expression Values ^ ^ ^ ^ ^

# //   ^ ^ ^ ^ (g-value)l-values : memory allocated and mutable terms ^ ^ ^ ^

# int my_lvalue;

# //   ^ ^ ^ ^ (g-value)r-values : NOT lvals, no persistent memory -> temporary ^ ^ ^ ^

# 0;
# '1';
# // {'m', 'y', '_', 'r', 'v', 'a', 'l', 'u', 'e'};
# // int *invalid_pointer = &10;   can be abbreviated "rval compilation error" - these aren't memory persistent values like lvalues -> no address

# (1 + 2); // No Identity : p(ure)-rval

# //   ^ ^ ^ ^ x-values : about to be moved from scope ^ ^ ^ ^

# // void x_val_func(int my_xval)
# // {
# //    return my_xval;
# //}


# //   ^ ^ ^ ^ ^ Assignment Operators ^ ^ ^ ^ ^

# int first = 1;
# first = 2; 

# //   ^ ^ ^ ^ Multiple Assignment ^ ^ ^ ^

# int first_multi_assign, second_multi_assign; // multiple operations
# first_multi_assign = second_multi_assign = 1; // chain assignment


# //   ^ ^ ^ ^ ^ Casting Operators : C type conversion ^ ^ ^ ^ ^

# //   ^ ^ ^ ^ Implicit Automatic/Widening Conversion ^ ^ ^ ^

# int first_temp, second_temp;
# int int_elm = -1;
# signed char s_char_elm = '0';
# long long_elm = "1";
# float float_elm = 2.00;
# double double_elm = 3.00;

# first_temp + second_temp; 
# int_elm - s_char_elm; // info lose : small type is signed, big is not
# long_elm + float_elm; // overflow: small is long, big is long


# //   ^ ^ ^ ^ Explicit conversion - User Defined ^ ^ ^ ^ 

# first_explicit_conv = 3, second_explicit_conv = 4;
# first_explicit_conv = (int)5.00 + second_explicit_conv;
# explicit_conv_assignment = (float)(first_explicit_conv / second_explicit_conv); // both exp conv scenarios, order: 1. int result temp 2. float result temp, 3. int assignment temp


# //   ^ ^ ^ ^ ^ Arithmetical Operators (and a bit of operation piping) ^ ^ ^ ^ ^

# //   ^ ^ ^ ^ Addition ^ ^ ^ ^ 

# first = first + 0, first += 1;

# //   ^ ^ ^ ^ Prefix vs Postfix inc/dec operator ^ ^ ^ ^
# first_check = 1;
# first_check = second_check++; // first_check = 1, second_check = 2 
# first_check = --second_check; // first_check = second_check = 1


# //   ^ ^ ^ ^ Subtraction ^ ^ ^ ^

# int second;
# second = second - 2, second -= 3;


# //   ^ ^ ^ ^ Multiplication ^ ^ ^ ^

# int third;
# third = third * 3, third *= 4;


# //   ^ ^ ^ ^ Division ^ ^ ^ ^

# int fourth;
# fourth = fourth / 5, fourth /= 6;


# //   ^ ^ ^ ^ Modulo ^ ^ ^ ^

# int fifth;
# fifth = fifth % 7, fifth %= 8;

# //   ^ ^ ^ ^ Order of operations (Arith) ^ ^ ^ ^ 
# // what here ? what comes before what? * before / in C?   

# // More Material: 
# // map from this more about casts: https://stackoverflow.com/questions/28002/regular-cast-vs-static-cast-vs-dynamic-cast
# // No Automatic casting to wide in c++? a set of rules: https://www.youtube.com/watch?v=uI10H1jzw00
# // Make temp variable arithmetic in tablet and map building upon these scenarios: 
# // answer: b' - promotion, (a + b')' - same, ((a + b')')' - demotion  


# //   ^ ^ ^ ^ ^ Logical Operators ^ ^ ^ ^ ^
# // order of operations ?
# // == and != are the least in the order of operations, maybe finish the operations order ladder?
# // false and true are exactly 0 and 1

# five == 2;
# (three < five || three < zero);

# // combining logical and arith: (arithmetic operators take precedence)
# /*
# lecture's example:
# int x = 2;
# int y = (x > 5) + 1; // (x > 5) -> 0 -> 0 + 1 = 1

# int a = 2, b;
# ((b = 2) == a) // (b = 2) -> (2) -> 2 == 2 -> 1, trick question: a wierd behaviour of c family languages - assignment returns the assign value, acts as arithmetic

# */

# //   Overloading literal operators: https://en.cppreference.com/w/cpp/language/user_literal

# //   ^ ^ ^ ^ ^ Pointer Operators ^ ^ ^ ^ ^

# int ptr_value_1 = 0;

# //   ^ ^ ^ ^ Adress Operator ^ ^ ^ ^

# int* ptr_address_1 = &ptr_value_1; 


# //   ^ ^ ^ ^ Indirection Operator ^ ^ ^ ^

# ptr_value_1 = *ptr_address_1; 
# int ptr_value_2 = 1, * ptr_address_2 = &ptr_value_2, ptr_value_2 = *ptr_address_2; // multiple operations in one line

# //   ^ ^ ^ Indirection Operator as a Substitute to Element Access Operator ^ ^ ^

# int my_array_to_access_elements_from[3] = {0, 1, 2};
# int first_element, second_element, third_element;
# int* first_element_pointer = NULL, second_element_pointer = NULL, third_element_pointer = NULL;


# first_element_pointer = my_array_to_access_elements_from; // does the same thing as first_element_pointer = &my_array_to_access_elements_from[0];
# second_element_pointer = first_element_pointer + 1; // does the same thing as second_element_pointer = &my_array_to_access_elements_from[1];
# third_element_pointer = first_element_pointer + 2;


# //   ^ ^ ^ ^ Member Access Operator ^ ^ ^ ^ 



# //?


# //   ^ ^ ^ ^ Element Access Operator ^ ^ ^ ^ 

# first_element = my_array_to_access_elements_from[0];
# second_element = my_array_to_access_elements_from[1];
# third_element = my_array_to_access_elements_from[2];


# }









# //   & & & & & & Variables & & & & & &


# void fun_variables()
# {

# char my_char;
# int my_int;
# long my_long;
# float my_float;
# double my_double;

# // No type hinting in C

# int imagine_this_is_out_of_any_function_global = 0;

# //   ^ ^ ^ ^ Data Collection Type - Array ^ ^ ^ ^ 

# char my_char_array[1];
# int my_int_array[2];
# long my_long_array[3];
# float my_float_array[4];
# double my_double_array[5];


# // unsigned short cap: 65535
# unsigned short hi = 65000; // 65,00
# unsigned short hi = 66000; // 464 (Got back to zero going up)

# // signed short cap: 32767
# short hi = 32000; // 32000
# short hi = 35000; // -30536 (Got to -32767 going to zero)


# //   ^ ^ ^ ^ ^ Scope Sharing ^ ^ ^ ^ ^

# //   ^ ^ ^ ^ Global & Static Variables ^ ^ ^ ^
# // Both default value if not initialized : 0

# imagine_this_is_out_of_any_function_global = 4;

# { // imagine this is void function my_func

#     printf("global is accessible: %d", imagine_this_is_out_of_any_function_global);    
#     imagine_this_is_out_of_any_function_global = 7; // and mutable //
#     static int my_static = 0; // static variable accessible in my_func
# }  

# // but even though it's lifetime is the same as the global variable - trying to access the static variable from main - is a compilation error


# //   ^ ^ ^ ^ Block Nesting : Scope levels, Data Hiding and Shadowing ^ ^ ^ ^

# int first_level_local = 1;
# int this_wont_be_changed_local = 2;
# { 

#     int second_level_local = 3; // Variable Hiding in local scope level
#     int this_wont_be_changed_local = 4; // Variable Shadowing (a new variable!) locally scoped

#     {
#         int third_level_local = 5;
#     }

# }

# first_level_local = 3;
# // second_level_local = 4; -> not possible, it's local to the block
# // this_wont_be_changed_local -> 2, the one with the 4 value was a different variable


# //   ^ ^ ^ ^ ^ Constants ^ ^ ^ ^ ^

# //   ^ ^ ^ ^ Pre-Processor Macros ^ ^ ^ ^

# //   ^ ^ ^ Defines ^ ^ ^

# #define CRT_SECURE_NO_WARNINGS
# #define ZERO 0
# #define PI 3.1415


# //   ^ ^ ^ Enums(Almost pre-processor) ^ ^ ^

# enum Boolean {NO, YES};
# typedef enum {TRUE = 1, FALSE = 0} Boolean;


# //   ^ ^ ^ ^ Immutable Variables ^ ^ ^ ^

# //   ^ ^ ^ ConstExpr : Compile Time Immutable ^ ^ ^ 

# //constexpr int static_time_const = 0;


# //   ^ ^ ^ Const : Run Time Immutable ^ ^ ^

# const int dynamic_time_const = 1;

# //   ^ ^ Pointer Const ^ ^

# int mutable_value = 0;
# int immutable_value = 1;
# int immutable_value_and_adress = 2;

# const int* const_pointer_to_int = &immutable_value;
# int* const const_pointer_to_int = &mutable_value;
# const int* const const_pointer_to_int = &immutable_value_and_adress;


# //   ^ ^ ^ ^ ^ Pointers : preferred either to null point or point to a value at declaration ^ ^ ^ ^ ^

# char* my_char_pointer; 
# int* my_int_pointer = NULL; // Syntactic alternative 1 for null-pointing
# long* my_long_pointer = 0; // Syntatic alternative 2 for null-pointing
# float* my_float_pointer = '\0'; // Syntactic alternative 3 for null-pointing
# double* my_double_pointer;

# //   ^ ^ ^ ^ Pointer vulnerbalities ^ ^ ^ ^

# //   ^ ^ ^ Pointing to Literal Values - frowned upon ^ ^ ^  

# // int* trying_to_point_to_adress_5 = 5;
# /* Many Problems in end of the day:

# 1. IF Not for my program to use(either Allocated by someone else, or Not Meaningfull):
# 1.1. Doesn't matter if allocated or not - Undefined behaviour/Crashing Imminent -> corruption is being asked for

# 2. IF For My Program to use:
# 2.1. Allocated -> Corruption being asked for
# 2.2. Not Allocated -> Misconception to think it's alright, why? -> Attacker prone hazards, they can access memory and affect program execution flow. 

# */


# //   ^ ^ ^ Pointing to Literal Address -> in the rvalue inside literals portion ^ ^ ^


# //   ^ ^ ^ Dangling pointers -> in the return type inside functions portion ^ ^ ^


# //   ^ ^ ^ Memory Leaks ^ ^ ^

# int my_not_freed_array[5];
# // where is the free for heap memory?? nowhere :( -> memory leak


# //   ^ ^ ^ Out-Of-Bounds Accessing ^ ^ ^

# int ten_place_array[10];
# // trying_to_get_11_place = ten_place_array[11];

# //   ^ ^ BufferOverflow : out of bounds writing ^ ^ 

# char ten_char_string[10];
# strcpy(ten_char_string, "This will cause a buffer overflow as it is way to long");


# //   ^ ^ ^ ^ Static Allocation ^ ^ ^ ^

# my_char_pointer = &my_char;
# my_int_pointer = &my_int;
# my_long_pointer = &my_long;
# my_float_pointer = &my_float;
# my_double_pointer = &my_double;

# //   ^ ^ ^ ^ Dynamic Allocation ^ ^ ^

# //   ^ ^ ^ Heap Byte Allocation: Malloc ^ ^ ^

# my_char_pointer = (char*)malloc(sizeof(char));
# my_int_pointer = (int*)malloc(sizeof(int));
# my_long_pointer = (long*)malloc(sizeof(long));
# my_float_pointer = (float*)malloc(sizeof(float));

# //   ^ ^ ^ Heap Zero Allocation: Calloc ^ ^ ^


# my_char_pointer = (char*)calloc(1, sizeof(char));
# my_int_pointer = (int*)calloc(1, sizeof(int));
# my_long_pointer = (long*)calloc(1, sizeof(long));
# my_float_pointer = (float*)calloc(1, sizeof(float));

# //   ^ ^ ^ Heap Memory De-Allocation ^ ^ ^

# free(my_char_pointer);
# free(my_int_pointer);
# free(my_long_pointer);
# free(my_float_pointer);

# //   ^ ^ ^ Heap Memory Re-Allocation ^ ^ ^

# my_char_pointer = realloc(my_char_pointer, sizeof(char) * 1);
# my_int_pointer = realloc(my_int_pointer, sizeof(int) * 2);
# my_long_pointer = realloc(my_long_pointer, sizeof(long) * 3);
# my_float_pointer = realloc(my_float_pointer, sizeof(float) * 4);

# //   ^ ^ ^ ^ Void (Generaic) Pointers : Mostly for abstraction of function arguments ^ ^ ^ ^

# void* my_generic_pointer;

# char* my_generic_pointer_converted_to_char_pointer;
# int* my_generic_pointer_converted_to_int_pointer;
# long* my_generic_pointer_converted_to_long_pointer;
# float* my_generic_pointer_converted_to_float_pointer;
# double* my_generic_pointer_converted_to_double_pointer;

# //   ^ ^ ^ Handling generic pointers : C Type cast required ^ ^ ^
 
# my_generic_pointer_converted_to_char_pointer = (char*)my_generic_pointer;
# my_generic_pointer_converted_to_int_pointer = (int*)my_generic_pointer;
# my_generic_pointer_converted_to_long_pointer = (long*)my_generic_pointer;
# my_generic_pointer_converted_to_float_pointer = (float*)my_generic_pointer;
# my_generic_pointer_converted_to_double_pointer = (double*)my_generic_pointer;


# //   ^ ^ ^ ^ Array Handling : constant pointers ^ ^ ^ ^ 

# int some_array[2] = {1, 2};
# int* first_array_element_address = some_array; // some_array = some_pointer is a compilation error as the pointer is constant

# //   ^ ^ ^ Allocation ^ ^ ^

# //   ^ ^ static array allocation - using init list ^ ^ 

# int static_allocation[1] = {0};
# int not_mentioning_size_in_static_allocation_is_inferred_through_number_of_elements_in_brackets[] = {'a','b','c'}; // size inferring: 3 elements -> 3
# int and_not_mentioning_all_element_values_will_init_the_rest_to_0[3] = {2, 1}; // no last value mentioned -> inited to 0: {2, 1, 0}
# char string_basically_a_char_list_array[] = {'h', 'i', NULL};
# char same_string_different_writing[] = "hi";

# int nested_static_allocation[2][3] = {{4, 5, 6} , {7, 8, 9}};
# int same_nested_allocation_different_writing[2][3] = {4, 5, 6, 7, 8, 9};
# int inferring_and_non_mentioned_value_initiation_also_happens_in_nested_arrays[][2] = {{1, 2}, {3}}; // 1. size inferring: 2, last value init -> {{1, 2}, {3, 0}} 
# // Though - lowest level size mentioning is a MUST for the inferring to happen


# //   ^ ^ dynamic array allocation ?

# // No List Comprehension in C++





# }









# //   & & & & & & Flow Control & & & & & &


# void fun_flow_control()
# {

# int condition = 1;
# int outer_condition = 0;
# int elif_condition = 1;
# int if_condition = 0; int elseif_condition = 1;
# int switch_key = 2;


# //   ^ ^ ^ ^ ^ Statements ^ ^ ^ ^ ^ 

# //   ^ ^ ^ ^ Procedure labels & GoTo ^ ^ ^ ^ 

# procedure_1_label:
# // first procedure  //

# goto procedure_2_label;

# procedure_2_label:
# // second procedure //

# // More Material: https://www.geeksforgeeks.org/local-labels-in-c/
# // break? continue?

# //   ^ ^ ^ ^ Conditional Statements ^ ^ ^ ^

# //   ^ ^ ^ If & Else ^ ^ ^ 

# if(condition)
# {
#     // condition TRUE -> first procedure
# }

# else
# {
#     // condition FALSE -> second procedure
# }


# //   ^ ^ ^ Null Checks ^ ^ ^

# int val_of_ptr = 0;
# int* ptr_to_check = &val_of_ptr;

# // Alternative 1 - using 0 representations

# if (ptr_to_check != 0) {} 
# if (ptr_to_check != NULL) {} 
# if (ptr_to_check != '\0') {}

# // Which are all different than writing:     if (ptr_to_check != '0') becuase '0' has an ASCII value of 48 and not 0

# // Alternative 2 - using zero equating

# if (ptr_to_check) {}


# //   ^ ^ ^ Nested Ifs ^ ^ ^

# if(outer_condition)
# {
#     // first procedure
# }
# else
# {
#     if(elif_condition) // else if logic , same as the else if example below
#     {
#         // second procedure
#     }
# }


# //   ^ ^ Else-If ^ ^ 

# if(if_condition)
# {
#     // first procedure
# }
# else if(elseif_condition) // same as the example above
# {
#     // second procedure
# }


# // map to the tablet - new skill for relations, building a "order relation" graph under constraints (number of maximum relation checks on members, like finding the max of 3 numbers(linear relation) in no more than 3 tries)
# // and also - mapping the control flow diagram - a straight line digram that splits whenever theres a conditional statement:
# //             - - - - - - - -
# //    - - - - -| condition 1  | - - - - - (when theres else-if the split is more than two - 3 + )
# //             - - - - - - - - 

# //   ^ ^ ^ ^ Switch ^ ^ ^ ^ ^

# switch (switch_key)
# {

# case 1: // first procedure
#     break;

# case 2: // second procedure
#     break;

# case 3: // third procedure
#     break;

# default: // fourth procedure
#     break;

# }


# //   ^ ^ ^ ^ ^ Loops ^ ^ ^ ^ ^ 

# // break? continue?

# //   ^ ^ ^ ^ While Loops ^ ^ ^ ^

# int while_index = 0;
# while(while_index <= 5) // condition checking BEFORE the procedure ran
# {
#     ++while_index;
#     // while procedure
# }

# //   ^ ^ ^ Do-While Loops ^ ^ ^

# int do_while_index = -1;
# do
# {
#     ++do_while_index;
#     // do-while procedure
# } while(do_while_index <= 5); //condition checking AFTER the procedure ran


# //   ^ ^ ^ ^ For Loops ^ ^ ^ ^

# for(int for_index = 0; for_index <= 5 ; ++for_index) // same as above examples
# {
#     // for procedure
# }



# //   ^ ^ ^ ^ Empty portions in for loop ^ ^ ^ ^
# // no init? not condition? no counter?

# // for(;;)
# // for(;;)
# // for(;;)

# }

# //   ^ ^ ^ ^ ^ Functions ^ ^ ^ ^ ^ 

# int int_return_function(){}
# also_int_return_function(){} // defualt int type - though may cause a warning

# //   ^ ^ ^ ^ Function prototyping ^ ^ ^ ^

# void void_prtp_func_1(); // function declaration
# void void_prtp_func_2();
# // main procedure
# void void_prtp_func_1(){ return; } // function definition
# void void_prtp_func_2(){} // in void functions - the return statement may be omitted and the function will return in closing block

# // add to tablet: 1. static stack segment layout (building the stack) + dynamic stack segment allocation in function calls (changing the values and releasing the layout parts) 


# //   ^ ^ ^ ^ Argument Passing ^ ^ ^ ^ 

# //   ^ ^ ^ Passing By Value ^ ^ ^

# void pass_by_value(int val){}

# //   ^ ^ ^ Passing By Adress ^ ^ ^

# void pass_by_adress(int* adr){}
# void pass_array_basically_const_address(int arr[]){}
# void two_dimention_array_and_higher_require_atleast_first_cells_size_for_compile_time_size_inference(int arr_2D[][1]){}


# //   ^ ^ ^ ^ Return type ^ ^ ^ ^ 
# // add here from lecture 12: return type and argument - pointer functions

# char char_return_function();
# int int_return_function();
# long long_return_function();
# float float_return_function();
# double double_return_function();

# //   ^ ^ ^ Pointer Return type : Be wary of dangling pointers (pointers to function locals) ! ^ ^ ^

# char* char_ptr_return_function();
# int* int_ptr_return_function();
# long* long_ptr_return_function();
# float* float_ptr_return_function();
# double* double_ptr_return_function();

# void* void_ptr_return_function();


# // anon function? from version 11? what's the syntax?

# //   ^ ^ ^ ^ Recursive Functions ^ ^ ^ ^

# void rec_func(){rec_func();} // infinite loop logic


# //   ^ ^ ^ ^ Pointer (Generic) Functions ^ ^ ^ ^

# enum Type_choice {INT, FLOAT, CHAR};

# // Three function prototypes for the function pointer
# void swap_int(void* first, void* second); // int swap prototype
# void swap_float(void* first, void* second); // float swap prototype
# void swap_char(void* first, void* second); // char swap prototype

# void(*swap)(void* first, void* second); // the function pointer


# void function_pointer_usage()
# {

#     int first_int = 0, second_int = 1;
#     float first_float = 2.0, second_float = 3.0;
#     char first_char = '4', second_char = '5';

#     enum Type_Choice my_choice = FLOAT;

#     switch(my_choice)
#     {
#         case INT:
#             swap = &swap_int; // pointer to the int function's adress
#             swap(&first_int, &second_int); // sending correct arguments
#             break;
        
#         case FLOAT:
#             swap = &swap_float; // pointer to the float function's adress
#             swap(&first_float, &second_float);
#             break;
        
#         case CHAR:
#             swap = &swap_char;
#             swap(&first_char, &second_char);
#             break;
#     }

#     return;
# }









# //   & & & & & & Structs & & & & & &

# // files? 

# //   & & & & & & Classes & & & & & &


# /*   < < < < < < < <   Design Principles   > > > > > > > >   */

# //   & & & & & & Procedural Design & & & & & &  

# //   ^ ^ ^ ^ ^ Procedures: Implemented as Functions ^ ^ ^ ^ ^
# //   ^ ^ ^ ^ ^ Sequence/Execution control: Control Flow section's tools (if,else-if, for etc...) ^ ^ ^ ^ ^
# //   ^ ^ ^ ^ ^ Scope Modularity(?): Each function variable has a local scope ^ ^ ^ ^ ^ 
# //   ^ ^ ^ ^ ^ Single Responsibility Modularity: one function takes care of one functional requirement ^ ^ ^ ^ ^
# //   ^ ^ ^ ^ ^ Message Passing: Function invocation ^ ^ ^ ^ ^
# //   ^ ^ ^ ^ ^ Abstraction: each function invocation is a black box ^ ^ ^ ^ ^
# //   ^ ^ ^ ^ ^ Supports TDD: using the function, and then impementing

