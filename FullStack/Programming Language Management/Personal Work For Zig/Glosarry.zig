// C Online Emulator: https://www.onlinegdb.com/online_c_compiler

// where to put bitmasking? watch video below:
// https://www.youtube.com/watch?v=wvtFGa6XJDU
// Add the material from the self-made "Nekodot summary" if it still exists :)

//   < < < < < < < <   Language Principles   > > > > > > > >   

//   < < < < < < < <   Procedural Principles   > > > > > > > >   
//   < < < < < < < <   Generic Principles   > > > > > > > >   




//   & & & & & & Resources: Rich API, Libraries, and Frameworks & & & & & &

//   ^ ^ ^ ^ ^ Static Libraries ^ ^ ^ ^ ^

const std = @import("std"); // Zig IO Library
const fmt = std.debug // Format functions

//   ^ ^ ^ ^ ^ Shared Libraries ^ ^ ^ ^ ^


// iostream? stdio.h? GUI libraries?
// pragma once? namespace ? (finish mapping this)
// rich API? primitives and objects API? collections?






//   & & & & & & Comments & & & & & &

// Single Line comment

/*
multiple line
comments
*/

/* Nested
// Comments //
are available */

// docs? logs?






//   & & & & & & Data Streaming & & & & & & 

//   ^ ^ ^ ^ ^ Variable input ^ ^ ^ ^ ^

fn fun_streams() void {
    var character: u8 = 0;
    try std.io.getStdIn().readByte(&character);  // Reads a character without waiting for Enter
}

// input of string - mention the problem of entering a space?

//   ^ ^ ^ ^ ^ Console Output ^ ^ ^ ^ ^ 









//   & & & & & & Literals (+ defined unary literal operators) & & & & & &

//   ^ ^ ^ ^ ^ Expressions ^ ^ ^ ^ ^ //

fn fun_literals() void {

    //   ^ ^ ^ ^ ^ Integers ^ ^ ^ ^ ^

    const a = 123;
    const b = -123;

    //  ^ ^ ^ ^ Coding Modifiers ^ ^ ^ ^

    //  ^ ^ ^ Radixed modifier ^ ^ ^

    const hex = 0x12AB;
    const octal = 012; // octal literals written without o
    const bin = 0b110011;

    //   ^ ^ ^ Un-Signed Modifier Suffix operators ^ ^ ^

    const u = 1u;
    const U = -2U; // will work sometimes and sometimes not

    //   ^ ^ ^ Long Modifier Suffix operators

    const l = 1l;
    const L = -2L;
    const ll = 3ll;
    const LL = 4LL;

    //   ^ ^ ^ ^ ^ Floats ^ ^ ^ ^ ^

    const f1 = 1.2;
    const f2 = -3.4;

    //   ^ ^ ^ ^ Scientific Notation Encoding  ^ ^ ^ ^

    const e1 = 1e2;
    const e2 = 1e-3;
    const e3 = 1e4L;   // combining

    //   ^ ^ ^ ^ ^ Characters & Charlist (strings) ^ ^ ^ ^ ^

    const c: u8 = 'a';
    // const str = {'b', 'c'}; // Charlist syntax might differ in Zig
}







// More Material:
// https://web.archive.org/web/20130807052041/http://cpp.comsci.us/etymology/literals.html
// https://en.cppreference.com/w/cpp/language/floating_literal //









//   & & & & & & String Formatting & & & & & &


fn fun_string_formats() void {
    var number = 1;
    var dvalue = 2.344444;
    var undef_behav = 4;

    //   ^ ^ ^ ^ ^ Format Specifier Fields ^ ^ ^ ^ ^

    //   ^ ^ ^ ^ Flags ^ ^ ^ ^

    //   ^ ^ ^ Precision ^ ^ ^

    fmt.printf("%d %.2f", number, dvalue); // two digits left of decimal point 
    // what about two digits to the right?

    //width?

    //   ^ ^ ^ Length ^ ^ ^

    fmt.printf("%ld", 1); // long
    fmt.printf("%f", 2.34); // double

    //   ^ ^ ^ Types ^ ^ ^

    fmt.printf("%c", 'a'); // char
    fmt.printf("%d", 1); // int
    fmt.printf("%f", 2.3); // float

    fmt.printf("%c", undef_behav); // wrong type field - undefined behaviour!

    //custom field? 
    // complete this section from here: https://en.wikipedia.org/wiki/Printf 
}







//   & & & & & & Operators & & & & & &


fn fun_operators() void {
    var first_check = i32;  // Declarations without assignments - Assigned currently placed values ("Garbage Values")
    var second_check = i32;

    var sum_temps = f64; 
    var five = 5, three = 3, zero = 0;
    var first_explicit_conv, second_explicit_conv: i32;
    var explicit_conv_assignment: i32;

    //   ^ ^ ^ ^ ^ Expression Values ^ ^ ^ ^ ^

    //   ^ ^ ^ ^ (g-value)l-values : memory allocated and mutable terms ^ ^ ^ ^

    var my_lvalue: i32;

    //   ^ ^ ^ ^ (g-value)r-values : NOT lvals, no persistent memory -> temporary ^ ^ ^ ^

    const rval = 0;
    const val_char = '1';
    // const arr = {'m', 'y', '_', 'r', 'v', 'a', 'l', 'u', 'e'};
    // var ptr: *i32 = &10;   // Invalid in Zig: cannot take address of immediate values

    const expr = (1 + 2); // No Identity : p(ure)-rval

    //   ^ ^ ^ ^ x-values : about to be moved from scope ^ ^ ^ ^

    // fn x_val_func(x: i32) i32 {
    //    return x;
    // }

    //   ^ ^ ^ ^ ^ Assignment Operators ^ ^ ^ ^ ^

    var first = 1;
    first = 2;

    //   ^ ^ ^ ^ Multiple Assignment ^ ^ ^ ^

    var first_multi_assign, second_multi_assign = i32; // multiple operations
    first_multi_assign = second_multi_assign = 1; // chain assignment

    //   ^ ^ ^ ^ ^ Casting Operators : C type conversion ^ ^ ^ ^ ^

    //   ^ ^ ^ ^ Implicit Automatic/Widening Conversion ^ ^ ^ ^

    var first_temp, second_temp = i32;
    var int_elm = -1;
    var s_char_elm: i8 = '0';
    var long_elm = 1;
    var float_elm = 2.00;
    var double_elm = 3.00;

    first_temp + second_temp; 
    int_elm - s_char_elm; // info loss: small type is signed, big is not
    long_elm + float_elm; // overflow: small is long, big is long

    //   ^ ^ ^ ^ Explicit conversion - User Defined ^ ^ ^ ^ 

    first_explicit_conv = 3; 
    second_explicit_conv = 4;
    first_explicit_conv = @intCast(i32, 5.00) + second_explicit_conv;
    explicit_conv_assignment = @intCast(f64, (first_explicit_conv / second_explicit_conv)); // explicit conversion

    //   ^ ^ ^ ^ ^ Arithmetical Operators (and a bit of operation piping) ^ ^ ^ ^ ^

    //   ^ ^ ^ ^ Addition ^ ^ ^ ^ 

    first = first + 0; first += 1;

    //   ^ ^ ^ ^ Prefix vs Postfix inc/dec operator ^ ^ ^ ^

    first_check = 1;
    first_check = second_check + 1; // Increment operator behavior changes with operator
    first_check = --second_check; // first_check = second_check = 1 

    //   ^ ^ ^ ^ Subtraction ^ ^ ^ ^

    var second: i32 = 0;
    second = second - 2; second -= 3;

    //   ^ ^ ^ ^ Multiplication ^ ^ ^ ^

    var third: i32 = 0;
    third = third * 3; third *= 4;

    //   ^ ^ ^ ^ Division ^ ^ ^ ^

    var fourth: i32 = 0;
    fourth = fourth / 5; fourth /= 6;

    //   ^ ^ ^ ^ Modulo ^ ^ ^ ^

    var fifth: i32 = 0;
    fifth = fifth % 7; fifth %= 8;

    //   ^ ^ ^ ^ Order of operations (Arith) ^ ^ ^ ^

    // More Material: 
    // map from this more about casts: https://stackoverflow.com/questions/28002/regular-cast-vs-static-cast-vs-dynamic-cast
    // No Automatic casting to wide in c++? a set of rules: https://www.youtube.com/watch?v=uI10H1jzw00
    // Make temp variable arithmetic in tablet and map building upon these scenarios: 
    // answer: b' - promotion, (a + b')' - same, ((a + b')')' - demotion  


    //   ^ ^ ^ ^ ^ Logical Operators ^ ^ ^ ^ ^

    five == 2;
    (three < five or three < zero);

    // combining logical and arith: (arithmetic operators take precedence)
    /*
    lecture's example:
    var x = 2;
    var y = (x > 5) + 1; // (x > 5) -> 0 -> 0 + 1 = 1

    var a = 2, b: i32;
    (b = 2) == a; // (b = 2) -> (2) -> 2 == 2 -> 1
    */

    // Overloading literal operators: https://en.cppreference.com/w/cpp/language/user_literal

    //   ^ ^ ^ ^ ^ Pointer Operators ^ ^ ^ ^ ^

    var ptr_value_1: i32 = 0;

    //   ^ ^ ^ ^ Adress Operator ^ ^ ^ ^

    var ptr_address_1 = &ptr_value_1; 

    //   ^ ^ ^ ^ Indirection Operator ^ ^ ^ ^

    ptr_value_1 = ptr_address_1.*;

    //   ^ ^ ^ ^ Indirection Operator as a Substitute to Element Access Operator ^ ^ ^ ^ 

    var my_array_to_access_elements_from: [3]i32 = [0, 1, 2];
    var first_element, second_element, third_element: i32;
    var first_element_pointer: ?*i32 = null, second_element_pointer: ?*i32 = null, third_element_pointer: ?*i32 = null;

    first_element_pointer = &my_array_to_access


//   & & & & & & Variables & & & & & &

fn fun_variables() void {

    var my_char: u8;
    var my_int: i32;
    var my_long: i64;
    var my_float: f32;
    var my_double: f64;

    // No type hinting in Zig

    const imagine_this_is_out_of_any_function_global: i32 = 0;

    //   ^ ^ ^ ^ Data Collection Type - Array ^ ^ ^ ^ 

    var my_char_array: [1]u8 = undefined;
    var my_int_array: [2]i32 = undefined;
    var my_long_array: [3]i64 = undefined;
    var my_float_array: [4]f32 = undefined;
    var my_double_array: [5]f64 = undefined;

    // unsigned short cap: 65535
    var hi: u16 = 65000; // 65,000
    hi = 66000; // 464 (Got back to zero going up)

    // signed short cap: 32767
    var hi_signed: i16 = 32000; // 32000
    hi_signed = 35000; // -30536 (Got to -32767 going to zero)

    //   ^ ^ ^ ^ ^ Scope Sharing ^ ^ ^ ^ ^

    //   ^ ^ ^ ^ Global & Static Variables ^ ^ ^ ^
    // Both default value if not initialized : 0

    var global_variable = 4;

    // Imagine this is void function my_func
    {
        std.debug.print("global is accessible: {}\n", .{global_variable});    
        global_variable = 7; // and mutable
        const my_static: i32 = 0; // static variable accessible in my_func
    }

    // but even though its lifetime is the same as the global variable - trying to access the static variable from main - is a compilation error

    //   ^ ^ ^ ^ Block Nesting : Scope levels, Data Hiding and Shadowing ^ ^ ^ ^

    var first_level_local: i32 = 1;
    const this_wont_be_changed_local: i32 = 2;
    {
        var second_level_local: i32 = 3; // Variable Hiding in local scope level
        const this_wont_be_changed_local: i32 = 4; // Variable Shadowing (a new variable!) locally scoped

        {
            const third_level_local: i32 = 5;
        }
    }

    first_level_local = 3;
    // second_level_local = 4; -> not possible, it's local to the block
    // this_wont_be_changed_local -> 2, the one with the 4 value was a different variable

    //   ^ ^ ^ ^ ^ Constants ^ ^ ^ ^ ^

    //   ^ ^ ^ ^ Pre-Processor Macros ^ ^ ^ ^

    //   ^ ^ ^ Defines ^ ^ ^

    const CRT_SECURE_NO_WARNINGS = undefined;
    const ZERO = 0;
    const PI = 3.1415;

    //   ^ ^ ^ Enums(Almost pre-processor) ^ ^ ^

    const Boolean = enum {
        NO,
        YES,
    };
    const Boolean2 = enum {
        TRUE = 1,
        FALSE = 0,
    };

    //   ^ ^ ^ ^ Immutable Variables ^ ^ ^ ^

    //   ^ ^ ^ ConstExpr : Compile Time Immutable ^ ^ ^ 

    // const static_time_const: i32 = 0; // equivalent to compile-time constants

    //   ^ ^ ^ Const : Run Time Immutable ^ ^ ^

    const dynamic_time_const: i32 = 1;

    //   ^ ^ Pointer Const ^ ^

    var mutable_value: i32 = 0;
    var immutable_value: i32 = 1;
    var immutable_value_and_adress: i32 = 2;

    const const_pointer_to_int: *const i32 = &immutable_value;
    var const_pointer_to_int2: *i32 = &mutable_value;
    const const_pointer_to_int3: *const i32 = &immutable_value_and_adress;

    //   ^ ^ ^ ^ ^ Pointers : preferred either to null point or point to a value at declaration ^ ^ ^ ^ ^

    var my_char_pointer: *u8 = null; 
    var my_int_pointer: ?*i32 = null; // Syntactic alternative 1 for null-pointing
    var my_long_pointer: ?*i64 = null; // Syntactic alternative 2 for null-pointing
    var my_float_pointer: ?*f32 = null; // Syntactic alternative 3 for null-pointing
    var my_double_pointer: ?*f64 = null;

    //   ^ ^ ^ ^ Pointer vulnerabilities ^ ^ ^ ^

    //   ^ ^ ^ Pointing to Literal Values - frowned upon ^ ^ ^  

    // var trying_to_point_to_adress_5: *i32 = &5;
    /* Many Problems in end of the day:

    1. IF Not for my program to use(either Allocated by someone else, or Not Meaningfull):
    1.1. Doesn't matter if allocated or not - Undefined behaviour/Crashing Imminent -> corruption is being asked for

    2. IF For My Program to use:
    2.1. Allocated -> Corruption being asked for
    2.2. Not Allocated -> Misconception to think it's alright, why? -> Attacker prone hazards, they can access memory and affect program execution flow. 
    */

    //   ^ ^ ^ Pointing to Literal Address -> in the rvalue inside literals portion ^ ^ ^

    //   ^ ^ ^ Dangling pointers -> in the return type inside functions portion ^ ^ ^

    //   ^ ^ ^ Memory Leaks ^ ^ ^

    var my_not_freed_array: [5]i32 = undefined;
    // where is the free for heap memory?? nowhere :( -> memory leak

    //   ^ ^ ^ Out-Of-Bounds Accessing ^ ^ ^

    var ten_place_array: [10]i32 = undefined;
    // trying_to_get_11_place = ten_place_array[11]; // This will error out in Zig

    //   ^ ^ BufferOverflow : out of bounds writing ^ ^ 

    var ten_char_string: [10]u8 = undefined;
    // std.mem.copy(ten_char_string, "This will cause a buffer overflow as it is way too long");

    //   ^ ^ ^ ^ Static Allocation ^ ^ ^ ^

    my_char_pointer = &my_char;
    my_int_pointer = &my_int;
    my_long_pointer = &my_long;
    my_float_pointer = &my_float;
    my_double_pointer = &my_double;

    //   ^ ^ ^ ^ Dynamic Allocation ^ ^ ^

    //   ^ ^ ^ Heap Byte Allocation: Malloc ^ ^ ^

    my_char_pointer = try std.heap.page_allocator.alloc(u8, 1);
    my_int_pointer = try std.heap.page_allocator.alloc(i32, 1);
    my_long_pointer = try std.heap.page_allocator.alloc(i64, 1);
    my_float_pointer = try std.heap.page_allocator.alloc(f32, 1);

    //   ^ ^ ^ Heap Zero Allocation: Calloc ^ ^ ^

    my_char_pointer = try std.heap.page_allocator.alloc(u8, 1);
    my_int_pointer = try std.heap.page_allocator.alloc(i32, 1);
    my_long_pointer = try std.heap.page_allocator.alloc(i64, 1);
    my_float_pointer = try std.heap.page_allocator.alloc(f32, 1);

    //   ^ ^ ^ Heap Memory De-Allocation ^ ^ ^

    std.heap.page_allocator.free(my_char_pointer);
    std.heap.page_allocator.free(my_int_pointer);
    std.heap.page_allocator.free(my_long_pointer);
    std.heap.page_allocator.free(my_float_pointer);

    //   ^ ^ ^ Heap Memory Re-Allocation ^ ^ ^

    my_char_pointer = try std.heap.page_allocator.realloc(my_char_pointer, 1);
    my_int_pointer = try std.heap.page_allocator.realloc(my_int_pointer, 2);
    my_long_pointer = try std.heap.page_allocator.realloc(my_long_pointer, 3);
    my_float_pointer = try std.heap.page_allocator.realloc(my_float_pointer, 4);

    //   ^ ^ ^ ^ Void (Generaic) Pointers : Mostly for abstraction of function arguments ^ ^ ^ ^

    var my_generic_pointer: ?*void = null;

    var my_generic_pointer_converted_to_char_pointer: *u8 = my_generic_pointer;
    var my_generic_pointer_converted_to_int_pointer: *i32 = my_generic_pointer;
    var my_generic_pointer_converted_to_long_pointer: *i64 = my_generic_pointer;
    var my_generic_pointer_converted_to_float_pointer: *f32 = my_generic_pointer;
    var my_generic_pointer_converted_to_double_pointer: *f64 = my_generic_pointer;

    //   ^ ^ ^ Handling generic pointers : C Type cast required ^ ^ ^

    my_generic_pointer_converted_to_char_pointer = @ptrCast(*u8, my_generic_pointer);
    my_generic_pointer_converted_to_int_pointer = @ptrCast(*i32, my_generic_pointer);
    my_generic_pointer_converted_to_long_pointer = @ptrCast(*i64, my_generic_pointer);
    my_generic_pointer_converted_to_float_pointer = @ptrCast(*f32, my_generic_pointer);
    my_generic_pointer_converted_to_double_pointer = @ptrCast(*f64, my_generic_pointer);

    //   ^ ^ ^ ^ Array Handling : constant pointers ^ ^ ^ ^ 

    var some_array: [2]i32 = .{1, 2};
    var first_array_element_address: *i32 = &some_array[0]; // some_array = some_pointer is a compilation error as the pointer is constant

    //   ^ ^ ^ Allocation ^ ^ ^

    //   ^ ^ static array allocation - using init list ^ ^ 

    var static_allocation: [1]i32 = .{0};
    var not_mentioning_size_in_static_allocation_is_inferred_through_number_of_elements_in_brackets: [3]i32 = .{'a','b','c'}; // size inferring: 3 elements -> 3
    var and_not_mentioning_all_element_values_will_init_the_rest_to_0: [3]i32 = .{2, 1}; // no last value mentioned -> inited to 0: {2, 1, 0}
    var string_basically_a_char_list_array: [4]u8 = .{'h', 'i', 0};
    var same_string_different_writing: [3]u8 = "hi";

    var nested_static_allocation: [2][3]i32 = .{{4, 5, 6}, {7, 8, 9}};
    var same_nested_allocation_different_writing: [2][3]i32 = .{4, 5, 6, 7, 8, 9};
    var inferring_and_non_mentioned_value_initiation_also_happens_in_nested_arrays: [2][2]i32 = .{{1, 2}, {3}}; // size inferring: 2, last value init -> {{1, 2}, {3, 0}}

    //   ^ ^ dynamic array allocation ? (handled by alloc)

}





//   & & & & & & Flow Control & & & & & &

const std = @import("std");

pub fn fun_flow_control() void {

    var condition: i32 = 1;
    var outer_condition: i32 = 0;
    var elif_condition: i32 = 1;
    var if_condition: i32 = 0;
    var elseif_condition: i32 = 1;
    var switch_key: i32 = 2;

    //   ^ ^ ^ ^ ^ Statements ^ ^ ^ ^ ^

    //   ^ ^ ^ ^ Procedure labels & GoTo ^ ^ ^ ^ 

    // Zig does not support GOTO, but we can simulate logic with loops or recursion.

    //   ^ ^ ^ ^ Conditional Statements ^ ^ ^ ^

    //   ^ ^ ^ If & Else ^ ^ ^ 

    if (condition != 0) {
        // condition TRUE -> first procedure
    } else {
        // condition FALSE -> second procedure
    }

    //   ^ ^ ^ Null Checks ^ ^ ^

    var val_of_ptr: i32 = 0;
    var ptr_to_check: ?*i32 = &val_of_ptr;

    // Alternative 1 - using 0 representations
    if (ptr_to_check != null) {} // This is similar to checking != NULL in C

    // Alternative 2 - using zero equating
    if (ptr_to_check) {}

    //   ^ ^ ^ Nested Ifs ^ ^ ^

    if (outer_condition != 0) {
        // first procedure
    } else {
        if (elif_condition != 0) { // else if logic , same as the else if example below
            // second procedure
        }
    }

    //   ^ ^ ^ Else-If ^ ^ ^ 

    if (if_condition != 0) {
        // first procedure
    } else if (elseif_condition != 0) { // same as the example above
        // second procedure
    }

    //   ^ ^ ^ ^ Switch ^ ^ ^ ^ ^

    switch (switch_key) {
        1 => {
            // first procedure
        },
        2 => {
            // second procedure
        },
        3 => {
            // third procedure
        },
        else => {
            // fourth procedure
        },
    }

    //   ^ ^ ^ ^ ^ Loops ^ ^ ^ ^ ^

    // break? continue?

    //   ^ ^ ^ ^ While Loops ^ ^ ^ ^

    var while_index: i32 = 0;
    while (while_index <= 5) {
        // while procedure
        while_index += 1;
    }

    //   ^ ^ ^ Do-While Loops ^ ^ ^

    var do_while_index: i32 = -1;
    while (true) {
        // do-while procedure
        do_while_index += 1;
        if (do_while_index > 5) break;
    }

    //   ^ ^ ^ ^ For Loops ^ ^ ^ ^

    for (var for_index: i32 = 0; for_index <= 5; for_index += 1) {
        // for procedure
    }

    //   ^ ^ ^ ^ Empty portions in for loop ^ ^ ^ ^ 
    // no init? not condition? no counter?

    for (true) {} // Infinite loop (no condition)
    for (var i = 0; i < 5; i += 1) {}
    for (var i = 0; i < 5;) {} // no increment

}

//   ^ ^ ^ ^ ^ Functions ^ ^ ^ ^ ^

pub fn int_return_function() i32 {
    return 0;
}

pub fn also_int_return_function() i32 {
    return 0; // default int return type
}

//   ^ ^ ^ ^ Function prototyping ^ ^ ^ ^

pub fn void_prtp_func_1() void; // function declaration
pub fn void_prtp_func_2() void;

pub fn void_prtp_func_1() void {
    // function definition
    return;
}

pub fn void_prtp_func_2() void {
    // void functions - the return statement may be omitted
}

//   ^ ^ ^ ^ Argument Passing ^ ^ ^ ^

//   ^ ^ ^ Passing By Value ^ ^ ^

pub fn pass_by_value(val: i32) void {
    // pass by value
}

//   ^ ^ ^ Passing By Address ^ ^ ^

pub fn pass_by_adress(adr: *i32) void {
    // pass by address
}

pub fn pass_array_basically_const_address(arr: []i32) void {
    // pass array (const address)
}

pub fn two_dimention_array_and_higher_require_atleast_first_cells_size_for_compile_time_size_inference(arr_2D: [][]i32) void {
    // Two-dimensional array with at least first cells' size defined
}

//   ^ ^ ^ ^ Return type ^ ^ ^ ^

// Return types
pub fn char_return_function() i32 {
    return 0; // Placeholder for actual return
}

pub fn int_return_function() i32 {
    return 0; // Placeholder for actual return
}

pub fn long_return_function() i64 {
    return 0; // Placeholder for actual return
}

pub fn float_return_function() f32 {
    return 0.0; // Placeholder for actual return
}

pub fn double_return_function() f64 {
    return 0.0; // Placeholder for actual return
}

//   ^ ^ ^ Pointer Return type: Be wary of dangling pointers (pointers to function locals) ^ ^ ^

pub fn char_ptr_return_function() *u8 {
    return null;
}

pub fn int_ptr_return_function() *i32 {
    return null;
}

pub fn long_ptr_return_function() *i64 {
    return null;
}

pub fn float_ptr_return_function() *f32 {
    return null;
}

pub fn double_ptr_return_function() *f64 {
    return null;
}

pub fn void_ptr_return_function() ?*void {
    return null;
}

//   ^ ^ ^ ^ Recursive Functions ^ ^ ^ ^

pub fn rec_func() void {
    rec_func(); // infinite recursion (loop logic)
}

//   ^ ^ ^ ^ Pointer (Generic) Functions ^ ^ ^ ^

const Type_choice = enum {INT, FLOAT, CHAR};

// Three function prototypes for the function pointer
pub fn swap_int(first: *i32, second: *i32) void {}
pub fn swap_float(first: *f32, second: *f32) void {}
pub fn swap_char(first: *u8, second: *u8) void {}

pub fn function_pointer_usage() void {
    var first_int: i32 = 0;
    var second_int: i32 = 1;
    var first_float: f32 = 2.0;
    var second_float: f32 = 3.0;
    var first_char: u8 = '4';
    var second_char: u8 = '5';

    var my_choice: Type_choice = .FLOAT;

    switch (my_choice) {
        .INT => {
            // pointer to the int function's address
            const swap = swap_int;
            swap(&first_int, &second_int);
        },
        .FLOAT => {
            // pointer to the float function's address
            const swap = swap_float;
            swap(&first_float, &second_float);
        },
        .CHAR => {
            // pointer to the char function's address
            const swap = swap_char;
            swap(&first_char, &second_char);
        },
    }
}

//   & & & & & & Structs & & & & & &

/*   < < < < < < < <   Design Principles   > > > > > > > > */

//   & & & & & & Procedural Design & & & & & &

//   ^ ^ ^ ^ ^ Procedures: Implemented as Functions ^ ^ ^ ^ ^
//   ^ ^ ^ ^ ^ Sequence/Execution control: Control Flow section's tools (if,else-if, for etc...) ^ ^ ^ ^ ^
//   ^ ^ ^ ^ ^ Scope Modularity(?): Each function variable has a local scope ^ ^ ^ ^ ^ 
//   ^ ^ ^ ^ ^ Single Responsibility Modularity: one function takes care of one functional requirement ^ ^ ^ ^ ^
//   ^ ^ ^ ^ ^ Message Passing: Function invocation ^ ^ ^ ^ ^
//   ^ ^ ^ ^ ^ Abstraction: each function invocation is a black box ^ ^ ^ ^ ^
//   ^ ^ ^ ^ ^ Supports TDD: using the function, and then implementing






