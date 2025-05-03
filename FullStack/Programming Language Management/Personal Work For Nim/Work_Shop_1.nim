# C Online Emulator: https://www.onlinegdb.com/online_c_compiler

# where to put bitmasking? watch video below:
# https://www.youtube.com/watch?v=wvtFGa6XJDU
# Add the material from the self-made "Nekodot summary" if it still exists :)




#   < < < < < < < <   Language Principles   > > > > > > > >   

#   < < < < < < < <   Procedural Principles   > > > > > > > >   
#   < < < < < < < <   Generic Principles   > > > > > > > >   




#   & & & & & & Resources: Rich API, Libraries, and Frameworks & & & & & &

#   ^ ^ ^ ^ ^ Static Libraries ^ ^ ^ ^ ^
import os  # Nim IO Library Files
import strutils  # For string manipulation like getStr, strLen, etc.

#   ^ ^ ^ ^ ^ Shared Libraries ^ ^ ^ ^ ^

# iostream? stdio.h? GUI libraries?
# pragma once? namespace ? (finish mapping this)
# rich API? primitives and objects API? collections?





#   & & & & & & Comments & & & & & &

# Single Line comment

# multiple line
# comments

# Nested
# Comments #
# are available

# docs? logs?




#   & & & & & & Data Streaming & & & & & & 

#   ^ ^ ^ ^ ^ Variable input ^ ^ ^ ^ ^

proc fun_streams() =
    var character: char
    stdin.readLine()  # Reads a character

# input of string - mention the problem of entering a space?

#   ^ ^ ^ ^ ^ Console Output ^ ^ ^ ^ ^ 




#   & & & & & & Literals (+ defined unary literal operators) & & & & & &

#   ^ ^ ^ ^ ^ Expressions ^ ^ ^ ^ ^

proc fun_literals() =

    #   ^ ^ ^ ^ ^ Integers ^ ^ ^ ^ ^

    123
    # no underscore format for numbers like 1,234! 
    -123

    #  ^ ^ ^ ^ Coding Modifiers ^ ^ ^ ^

    #  ^ ^ ^ Radixed modifier ^ ^ ^

    0x12AB
    012  # octal literals written without o
    0b110011

    #   ^ ^ ^ Un-Signed Modifier Suffix operators ^ ^ ^

    let a = 1'u
    let b = -2'U  # will work sometimes and sometimes not: will be translated: 2's complement on the value -> new unsigned value

    #   ^ ^ ^ Long Modifier Suffix operators

    let c = 1'l
    let d = -2'L
    let e = 3'll
    let f = 4'LL

    #   ^ ^ ^ ^ ^ Floats ^ ^ ^ ^ ^

    # add f suffix
    let g = 1.2
    let h = -3.4

    #   ^ ^ ^ ^ Scientific Notation Encoding ^ ^ ^ ^

    let i = 1e2
    let j = 1e-3
    let k = 1e4'L  # combining

    #   ^ ^ ^ ^ ^ Characters & Charlist (strings) ^ ^ ^ ^ ^

    let l = 'a'
    # {'b', 'c'}

}





# More Material:
# https://web.archive.org/web/20130807052041/http://cpp.comsci.us/etymology/literals.html
# https://en.cppreference.com/w/cpp/language/floating_literal 




#   & & & & & & String Formatting & & & & & &


proc fun_string_formats() =
    var number = 1
    var dvalue = 2.344444
    var undef_behav = 4


    #   ^ ^ ^ ^ ^ Format Specifier Fields ^ ^ ^ ^ ^

    #   ^ ^ ^ ^ Flags ^ ^ ^ ^

    #   ^ ^ ^ Precision ^ ^ ^ ^ 

    echo fmt"{number} {dvalue:.2f}"  # two digits left of decimal point 
    # what about two digits to the right?

    # width?

    #   ^ ^ ^ Length ^ ^ ^

    echo fmt"{1L}"  # long
    echo fmt"{2.34:f}"  # double

    #   ^ ^ ^ Types ^ ^ ^

    echo fmt"{'a':c}"  # char
    echo fmt"{1:d}"  # int
    echo fmt"{2.3:f}"  # float

    echo fmt"{undef_behav}"  # wrong type field - undefined behaviour!

    # custom field? 
    # complete this section from here: https://en.wikipedia.org/wiki/Printf 



#   & & & & & & Operators & & & & & &


proc fun_operators() =
    var first_check: int  # Declarations without assignments - Assigned currently placed values ("Garbage Values")
    var second_check: int

    var sum_temps: double
    var five = 5
    var three = 3
    var zero = 0
    var first_explicit_conv, second_explicit_conv: int
    var explicit_conv_assignment: int


    #   ^ ^ ^ ^ ^ Expression Values ^ ^ ^ ^ ^

    #   ^ ^ ^ ^ (g-value)l-values : memory allocated and mutable terms ^ ^ ^ ^

    var my_lvalue: int

    #   ^ ^ ^ ^ (g-value)r-values : NOT lvals, no persistent memory -> temporary ^ ^ ^ ^

    0
    '1'
    # {'m', 'y', '_', 'r', 'v', 'a', 'l', 'u', 'e'}
    # var invalid_pointer = addr(10)  # cannot assign address of literal value

    (1 + 2)  # No Identity : p(ure)-rval

    #   ^ ^ ^ ^ x-values : about to be moved from scope ^ ^ ^ ^

    # proc x_val_func(my_xval: int) =
    #     return my_xval


    #   ^ ^ ^ ^ ^ Assignment Operators ^ ^ ^ ^ ^

    var first = 1
    first = 2

    #   ^ ^ ^ ^ Multiple Assignment ^ ^ ^ ^

    var first_multi_assign, second_multi_assign: int  # multiple operations
    first_multi_assign = second_multi_assign = 1  # chain assignment


    #   ^ ^ ^ ^ ^ Casting Operators : C type conversion ^ ^ ^ ^ ^

    #   ^ ^ ^ ^ Implicit Automatic/Widening Conversion ^ ^ ^ ^

    var first_temp, second_temp: int
    var int_elm = -1
    var s_char_elm: cstring = "0"
    var long_elm = "1"
    var float_elm = 2.00
    var double_elm = 3.00

    first_temp + second_temp 
    int_elm - s_char_elm  # info lose : small type is signed, big is not
    long_elm + float_elm  # overflow: small is long, big is long


    #   ^ ^ ^ ^ Explicit conversion - User Defined ^ ^ ^ ^ 

    first_explicit_conv = 3
    second_explicit_conv = 4
    first_explicit_conv = int(5.00) + second_explicit_conv
    explicit_conv_assignment = float(first_explicit_conv / second_explicit_conv)  # both exp conv scenarios, order: 1. int result temp 2. float result temp, 3. int assignment temp


    #   ^ ^ ^ ^ ^ Arithmetical Operators (and a bit of operation piping) ^ ^ ^ ^ ^

    #   ^ ^ ^ ^ Addition ^ ^ ^ ^ 

    first = first + 0
    first += 1

    #   ^ ^ ^ ^ Prefix vs Postfix inc/dec operator ^ ^ ^ ^
    first_check = 1
    first_check = second_check.inc()  # first_check = 1, second_check = 2 
    first_check = second_check.dec()  # first_check = second_check = 1


    #   ^ ^ ^ ^ Subtraction ^ ^ ^ ^

    var second: int
    second = second - 2
    second -= 3


    #   ^ ^ ^ ^ Multiplication ^ ^ ^ ^

    var third: int
    third = third * 3
    third *= 4


    #   ^ ^ ^ ^ Division ^ ^ ^ ^

    var fourth: int
    fourth = fourth / 5
    fourth /= 6


    #   ^ ^ ^ ^ Modulo ^ ^ ^ ^

    var fifth: int
    fifth = fifth mod 7
    fifth mod= 8

    #   ^ ^ ^ ^ Order of operations (Arith) ^ ^ ^ ^ 
    # what here ? what comes before what? * before / in Nim?  


    # More Material: 
    # map from this more about casts: https://stackoverflow.com/questions/28002/regular-cast-vs-static-cast-vs-dynamic-cast
    # No Automatic casting to wide in Nim? a set of rules: https://www.youtube.com/watch?v=uI10H1jzw00
    # Make temp variable arithmetic in tablet and map building upon these scenarios: 
    # answer: b' - promotion, (a + b')' - same, ((a + b')')' - demotion  


    #   ^ ^ ^ ^ ^ Logical Operators ^ ^ ^ ^ ^

    five == 2
    (three < five or three < zero)

    # combining logical and arith: (arithmetic operators take precedence)
    # lecture's example:
    # let x = 2
    # let y = (x > 5) + 1  # (x > 5) -> 0 -> 0 + 1 = 1

    # let a = 2
    # let b = 2
    # ((b = 2) == a)  # (b = 2) -> (2) -> 2 == 2 -> 1, trick question: a weird behavior of Nim - assignment returns the assign value, acts as arithmetic


    #   Overloading literal operators: https://en.cppreference.com/w/cpp/language/user_literal

    #   ^ ^ ^ ^ ^ Pointer Operators ^ ^ ^ ^ ^

    var ptr_value_1 = 0

    #   ^ ^ ^ ^ Address Operator ^ ^ ^ ^

    var ptr_address_1: ptr int = addr ptr_value_1

    #   ^ ^ ^ ^ Indirection Operator ^ ^ ^ ^

    ptr_value_1 = ptr_address_1[] 
    var ptr_value_2 = 1
    var ptr_address_2 = addr ptr_value_2
    var ptr_value_2 = ptr_address_2[]  # multiple operations in one line

    #   ^ ^ ^ Indirection Operator as a Substitute to Element Access Operator ^ ^ ^ ^

    var my_array_to_access_elements_from = [0, 1, 2]
    var first_element, second_element, third_element: int
    var first_element_pointer: ptr int = nil
    var second_element_pointer: ptr int = nil
    var third_element_pointer: ptr int = nil

    first_element_pointer = addr my_array_to_access_elements_from[0]  # does the same thing as first_element_pointer = &my_array_to_access_elements_from[0];
    second_element_pointer = first_element_pointer + 1  # does the same thing as second_element_pointer = &my_array_to_access_elements_from[1];
    third_element_pointer = first_element_pointer + 2


    #   ^ ^ ^ ^ Member Access Operator ^ ^ ^ ^




//?

//   ^ ^ ^ ^ Element Access Operator ^ ^ ^ ^ 

let first_element = my_array_to_access_elements_from[0]
let second_element = my_array_to_access_elements_from[1]
let third_element = my_array_to_access_elements_from[2]




//   & & & & & & Variables & & & & & &

proc fun_variables() =
  
  var my_char: cstring
  var my_int: int
  var my_long: int64
  var my_float: float32
  var my_double: float64

  # No type hinting in Nim
  
  var imagine_this_is_out_of_any_function_global = 0

  //   ^ ^ ^ ^ Data Collection Type - Array ^ ^ ^ ^ 

  var my_char_array: array[1, cstring]
  var my_int_array: array[2, int]
  var my_long_array: array[3, int64]
  var my_float_array: array[4, float32]
  var my_double_array: array[5, float64]


  # unsigned short cap: 65535
  var hi: uint16 = 65000 # 65,000
  # hi = 66000  # This would overflow to 464 (Got back to zero going up)

  # signed short cap: 32767
  var hi_signed: int16 = 32000 # 32000
  # hi_signed = 35000  # This would overflow to -30536 (Got to -32767 going to zero)



  //   ^ ^ ^ ^ ^ Scope Sharing ^ ^ ^ ^ ^

  //   ^ ^ ^ ^ Global & Static Variables ^ ^ ^ ^ 
  // Both default value if not initialized : 0

  imagine_this_is_out_of_any_function_global = 4

  # Imagine this is inside a function called my_func
  echo "global is accessible: ", imagine_this_is_out_of_any_function_global
  imagine_this_is_out_of_any_function_global = 7 # and mutable

  var my_static = 0 # static variable accessible in my_func
  

  # but even though it's lifetime is the same as the global variable -
  # trying to access the static variable from the main procedure would not work
  # (static variables are accessible only within their scope)

  //   ^ ^ ^ ^ Block Nesting : Scope levels, Data Hiding and Shadowing ^ ^ ^ ^

  var first_level_local = 1
  var this_wont_be_changed_local = 2
  
  # Nested block scope
  block:
    var second_level_local = 3 # Variable Hiding in local scope level
    var this_wont_be_changed_local = 4 # Variable Shadowing (a new variable!)

    block:
      var third_level_local = 5
  
  first_level_local = 3
  # second_level_local = 4  # -> not possible, it's local to the block
  # this_wont_be_changed_local -> 2, the one with the 4 value was a different variable


//   ^ ^ ^ ^ ^ Constants ^ ^ ^ ^ ^

//   ^ ^ ^ ^ Pre-Processor Macros ^ ^ ^ ^

//   ^ ^ ^ Defines ^ ^ ^

const
  CRT_SECURE_NO_WARNINGS = ""
  ZERO = 0
  PI = 3.1415


//   ^ ^ ^ Enums(Almost pre-processor) ^ ^ ^

type
  Boolean = enum
    NO, YES

  Boolean2 = enum
    TRUE = 1, FALSE = 0

//   ^ ^ ^ ^ Immutable Variables ^ ^ ^ ^

//   ^ ^ ^ ConstExpr : Compile Time Immutable ^ ^ ^ 

# Nim doesn't have `constexpr`, but it can use `const` to enforce immutability at compile-time.
const static_time_const = 0


//   ^ ^ ^ Const : Run Time Immutable ^ ^ ^

const dynamic_time_const = 1

//   ^ ^ Pointer Const ^ ^

var mutable_value = 0
var immutable_value = 1
var immutable_value_and_adress = 2

const pointer_to_immutable_value: ptr int = addr immutable_value
var pointer_to_mutable_value: ptr int = addr mutable_value
const pointer_to_immutable_address: ptr int = addr immutable_value_and_adress


//   ^ ^ ^ ^ ^ Pointers : preferred either to null point or point to a value at declaration ^ ^ ^ ^ ^

var my_char_pointer: cstring
var my_int_pointer: ptr int = nil  # Syntactic alternative 1 for null-pointing
var my_long_pointer: ptr int64 = nil  # Syntactic alternative 2 for null-pointing
var my_float_pointer: ptr float32 = nil  # Syntactic alternative 3 for null-pointing
var my_double_pointer: ptr float64


//   ^ ^ ^ ^ Pointer vulnerabilities ^ ^ ^ ^

//   ^ ^ ^ Pointing to Literal Values - frowned upon ^ ^ ^  

# var trying_to_point_to_address_5: ptr int = cast# 1. Undefined behavior when pointing to a literal.
# 2. Memory corruption risks and security vulnerabilities (undefined access).


//   ^ ^ ^ Pointing to Literal Address -> in the rvalue inside literals portion ^ ^ ^


//   ^ ^ ^ Dangling pointers -> in the return type inside functions portion ^ ^ ^


//   ^ ^ ^ Memory Leaks ^ ^ ^

var my_not_freed_array: array[5, int]
# No freeing here -> potential memory leak


//   ^ ^ ^ Out-Of-Bounds Accessing ^ ^ ^

var ten_place_array: array[10, int]
# var trying_to_get_11_place = ten_place_array[11]  # IndexOutOfBoundsException


//   ^ ^ BufferOverflow : out of bounds writing ^ ^ 

var ten_char_string: array[10, cstring]
# strutils.strcpy(ten_char_string, "This will cause a buffer overflow as it is way too long")


//   ^ ^ ^ ^ Static Allocation ^ ^ ^ ^

my_char_pointer = addr my_char
my_int_pointer = addr my_int
my_long_pointer = addr my_long
my_float_pointer = addr my_float
my_double_pointer = addr my_double


//   ^ ^ ^ ^ Dynamic Allocation ^ ^ ^

//   ^ ^ ^ Heap Byte Allocation: Malloc ^ ^ ^

my_char_pointer = cast[ptr cstring](malloc(sizeof(cstring)))
my_int_pointer = cast[ptr int](malloc(sizeof(int)))
my_long_pointer = cast[ptr int64](malloc(sizeof(int64)))
my_float_pointer = cast[ptr float32](malloc(sizeof(float32)))

//   ^ ^ ^ Heap Zero Allocation: Calloc ^ ^ ^

my_char_pointer = cast[ptr cstring](calloc(1, sizeof(cstring)))
my_int_pointer = cast[ptr int](calloc(1, sizeof(int)))
my_long_pointer = cast[ptr int64](calloc(1, sizeof(int64)))
my_float_pointer = cast[ptr float32](calloc(1, sizeof(float32)))

//   ^ ^ ^ Heap Memory De-Allocation ^ ^ ^

free(my_char_pointer)
free(my_int_pointer)
free(my_long_pointer)
free(my_float_pointer)

//   ^ ^ ^ Heap Memory Re-Allocation ^ ^ ^

my_char_pointer = cast[ptr cstring](realloc(my_char_pointer, sizeof(cstring) * 1))
my_int_pointer = cast[ptr int](realloc(my_int_pointer, sizeof(int) * 2))
my_long_pointer = cast[ptr int64](realloc(my_long_pointer, sizeof(int64) * 3))
my_float_pointer = cast[ptr float32](realloc(my_float_pointer, sizeof(float32) * 4))


//   ^ ^ ^ ^ Void (Generaic) Pointers : Mostly for abstraction of function arguments ^ ^ ^ ^

var my_generic_pointer: pointer

var my_generic_pointer_converted_to_char_pointer: ptr cstring
var my_generic_pointer_converted_to_int_pointer: ptr int
var my_generic_pointer_converted_to_long_pointer: ptr int64
var my_generic_pointer_converted_to_float_pointer: ptr float32
var my_generic_pointer_converted_to_double_pointer: ptr float64


//   ^ ^ ^ Handling generic pointers : Nim Type cast required ^ ^ ^

my_generic_pointer_converted_to_char_pointer = cast[ptr cstring](my_generic_pointer)
my_generic_pointer_converted_to_int_pointer = cast[ptr int](my_generic_pointer)
my_generic_pointer_converted_to_long_pointer = cast[ptr int64](my_generic_pointer)
my_generic_pointer_converted_to_float_pointer = cast[ptr float32](my_generic_pointer)
my_generic_pointer_converted_to_double_pointer = cast[ptr float64](my_generic_pointer)


//   ^ ^ ^ ^ Array Handling : constant pointers ^ ^ ^ ^ 

let some_array: array[2, int] = [1, 2]
let first_array_element_address: ptr int = addr some_array[0]  # This is valid, but 'some_array' as a whole cannot be reassigned

//   ^ ^ ^ Allocation ^ ^ ^

//   ^ ^ static array allocation - using init list ^ ^ 

let static_allocation: array[1, int] = [0]
let not_mentioning_size_in_static_allocation_is_inferred_through_number_of_elements_in_brackets = ['a', 'b', 'c']  # Size inferred: 3 elements
let and_not_mentioning_all_element_values_will_init_the_rest_to_0 = [2, 1]  # The last value will be initialized to 0: [2, 1, 0]
let string_basically_a_char_list_array: array[3, cstring] = ['h', 'i', nil]
let same_string_different_writing: cstring = "hi"

let nested_static_allocation: array[2, array[3, int]] = [[4, 5, 6], [7, 8, 9]]
let same_nested_allocation_different_writing: array[2, array[3, int]] = [[4, 5, 6], [7, 8, 9]]
let inferring_and_non_mentioned_value_initiation_also_happens_in_nested_arrays: array[2, array[2, int]] = [[1, 2], [3, 0]]  # Inference works here as well (last value initialized to 0)


//   ^ ^ dynamic array allocation ?

// No List Comprehension in C++





//   & & & & & & Flow Control & & & & & &

proc fun_flow_control() =
  var condition = 1
  var outer_condition = 0
  var elif_condition = 1
  var if_condition = 0
  var elseif_condition = 1
  var switch_key = 2

//   ^ ^ ^ ^ ^ Statements ^ ^ ^ ^ ^

//   ^ ^ ^ ^ Procedure labels & GoTo ^ ^ ^ ^

label procedure_1_label:
  # first procedure

  # procedure_2_label used later for GoTo
  goto procedure_2_label

label procedure_2_label:
  # second procedure

  # More Material: https://www.geeksforgeeks.org/local-labels-in-c/
  # break? continue?

//   ^ ^ ^ ^ Conditional Statements ^ ^ ^ ^

//   ^ ^ ^ If & Else ^ ^ ^ 

if condition == 1:
  # condition TRUE -> first procedure
else:
  # condition FALSE -> second procedure

//   ^ ^ ^ Null Checks ^ ^ ^

var val_of_ptr = 0
var ptr_to_check: ptr int = addr val_of_ptr

# Alternative 1 - using 0 representations
if ptr_to_check != nil:  # equivalent to ptr_to_check != 0 or ptr_to_check != '\0' in C
  discard

# Alternative 2 - using zero equating
if ptr_to_check.isNil:
  discard

//   ^ ^ ^ Nested Ifs ^ ^ ^

if outer_condition == 1:
  # first procedure
else:
  if elif_condition == 1:  # else if logic, same as the else if example below
    # second procedure

//   ^ ^ ^ Else-If ^ ^ ^ 

if if_condition == 1:
  # first procedure
elif elseif_condition == 1:  # same as the example above
  # second procedure

// map to the tablet - new skill for relations, building a "order relation" graph under constraints (number of maximum relation checks on members, like finding the max of 3 numbers(linear relation) in no more than 3 tries)
// and also - mapping the control flow diagram - a straight line diagram that splits whenever theres a conditional statement:
//             - - - - - - - -
//    - - - - -| condition 1  | - - - - - (when theres else-if the split is more than two - 3 + )
//             - - - - - - - - 

//   ^ ^ ^ ^ Switch ^ ^ ^ ^ ^

case switch_key of
  1:
    # first procedure
  2:
    # second procedure
  3:
    # third procedure
  else:
    # fourth procedure

//   ^ ^ ^ ^ ^ Loops ^ ^ ^ ^ ^

// break? continue?

//   ^ ^ ^ ^ While Loops ^ ^ ^ ^

var while_index = 0
while while_index <= 5:  # condition checking BEFORE the procedure ran
  inc(while_index)
  # while procedure

//   ^ ^ ^ Do-While Loops ^ ^ ^

var do_while_index = -1
repeat
  inc(do_while_index)
  # do-while procedure
until do_while_index > 5  # condition checking AFTER the procedure ran

//   ^ ^ ^ ^ For Loops ^ ^ ^ ^

for for_index in 0..5:  # same as above examples
  # for procedure

//   ^ ^ ^ ^ Empty portions in for loop ^ ^ ^ ^
// no init? not condition? no counter?

for _ in 0..5: 
  discard

//   ^ ^ ^ ^ ^ Functions ^ ^ ^ ^ ^ 

proc int_return_function(): int = 0
proc also_int_return_function() = discard  # default int type - though may cause a warning

//   ^ ^ ^ ^ Function prototyping ^ ^ ^ ^

proc void_prtp_func_1()  # function declaration
proc void_prtp_func_2()

# main procedure
proc void_prtp_func_1() = discard  # function definition
proc void_prtp_func_2() = discard  # in void functions - the return statement may be omitted

// add to tablet: 1. static stack segment layout (building the stack) + dynamic stack segment allocation in function calls (changing the values and releasing the layout parts) 

//   ^ ^ ^ ^ Argument Passing ^ ^ ^ ^ 

//   ^ ^ ^ Passing By Value ^ ^ ^

proc pass_by_value(val: int) = discard

//   ^ ^ ^ Passing By Address ^ ^ ^

proc pass_by_address(adr: ptr int) = discard
proc pass_array_basically_const_address(arr: seq[int]) = discard
proc two_dimension_array_and_higher_require_atleast_first_cells_size_for_compile_time_size_inference(arr_2D: seq[seq[int]]) = discard

//   ^ ^ ^ ^ Return type ^ ^ ^ ^
// add here from lecture 12: return type and argument - pointer functions

proc char_return_function(): char = 'a'
proc int_return_function(): int = 0
proc long_return_function(): long = 0
proc float_return_function(): float = 0.0
proc double_return_function(): float64 = 0.0

//   ^ ^ ^ Pointer Return type : Be wary of dangling pointers (pointers to function locals) ! ^ ^ ^

proc char_ptr_return_function(): ptr char = nil
proc int_ptr_return_function(): ptr int = nil
proc long_ptr_return_function(): ptr long = nil
proc float_ptr_return_function(): ptr float = nil
proc double_ptr_return_function(): ptr double = nil

proc void_ptr_return_function(): ptr void = nil

// anon function? from version 11? what's the syntax?

//   ^ ^ ^ ^ Recursive Functions ^ ^ ^ ^

proc rec_func() {.importjs: "rec_func()"}  # infinite loop logic

//   ^ ^ ^ ^ Pointer (Generic) Functions ^ ^ ^ ^

type
  Type_choice = enum
    INT, FLOAT, CHAR

# Three function prototypes for the function pointer
proc swap_int(first, second: ptr int) = discard
proc swap_float(first, second: ptr float) = discard
proc swap_char(first, second: ptr char) = discard

var swap: proc(first, second: ptr void) = nil  # the function pointer

proc function_pointer_usage() =
  var first_int = 0
  var second_int = 1
  var first_float = 2.0
  var second_float = 3.0
  var first_char = '4'
  var second_char = '5'

  var my_choice = Type_choice.FLOAT

  case my_choice:
    of Type_choice.INT:
      swap = swap_int  # pointer to the int function's address
      swap(addr first_int, addr second_int)  # sending correct arguments
    of Type_choice.FLOAT:
      swap = swap_float  # pointer to the float function's address
      swap(addr first_float, addr second_float)
    of Type_choice.CHAR:
      swap = swap_char
      swap(addr first_char, addr second_char)

