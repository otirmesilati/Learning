-- SQL Online Emulator: https://www.programiz.com/sql/online-compiler/









--   < < < < < < < <   Language Principles   > > > > > > > >   









--   < < < < < < < <   Procedural Principles   > > > > > > > >   









--   & & & & & & Libraries & & & & & & 
-- Probably no built in libraries in SQL

--   & & & & & & Resources: Rich API, Libraries, and Frameworks & & & & & &









-- // iostream? stdio.h? GUI libraries?
-- // pragma once? namespace ? (finish mapping this)
-- // rich API? primitives and objects API? collections?









--   & & & & & & Comments & & & & & &

-- Single Line comment

-- /* multiple line
-- comments
-- */

-- // docs? logs?


-- Literals moved to the table creation portion







-- //   & & & & & & String Formatting & & & & & &


CREATE FUNCTION dbo.func_string()
RETURNS VARCHAR(255)
AS
BEGIN
    DECLARE @result VARCHAR(255);
    SET @result = 'Hello, SQL Server!';
    
    
    DECLARE @number INT = 1;    
    DECLARE @dvalue FLOAT = 2.344444;    
    DECLARE @undef_behav INT = 4;    

-- //   ^ ^ ^ ^ ^ Format Specifier Fields ^ ^ ^ ^ ^

-- //   ^ ^ ^ ^ Flags ^ ^ ^ ^

-- //   ^ ^ ^ ^ Precision ^ ^ ^ ^

SELECT
    CAST(@number AS VARCHAR) + ' ' + FORMAT(@dvalue, '0.00') AS formatted_output;

-- //   ^ ^ ^ ^ Width ^ ^ ^ ^ 

-- //   ^ ^ ^ ^ Length ^ ^ ^ ^


    RETURN @result;
END;










-- Format long integer (simulating %ld)
SELECT
    CAST(1 AS BIGINT) AS formatted_long;

-- Format float (simulating %lf for double in C++)
SELECT
    FORMAT(2.34, '0.00') AS formatted_double;

-- Character formatting (simulating %c for char in C++)
SELECT 
    CHAR(97) AS formatted_char; -- ASCII 97 is 'a'

-- Integer formatting (simulating %d for int in C++)
SELECT 
    CAST(1 AS INT) AS formatted_int;

-- Float formatting (simulating %f for float in C++)
SELECT 
    FORMAT(2.3, '0.00') AS formatted_float;

-- Undefined behavior in C++ is like trying to cast something inappropriately. In SQL, it would result in an error.
-- SQL doesn't have undefined behavior in the same way, but you can try casting a value into an incompatible type (which would result in an error):
BEGIN TRY
    SELECT CAST(@undef_behav AS CHAR(1)); -- Trying to format an integer as a char will not work.
END TRY
BEGIN CATCH
    SELECT ERROR_MESSAGE() AS error_message; -- Handle the error gracefully in SQL
END CATCH;









-- printf("%ld", 1); // long
-- printf("%lf", 2.34); // double

-- //   ^ ^ ^ ^ Types ^ ^ ^ ^

-- printf("%c", 'a'); // char
-- printf("%d", 1); // int
-- printf("%f", 2.3); // float



-- printf("%c", undef_behav); // wrong type field - undefined behaviour!

-- //   custom field 

-- }


-- // More Material: 
-- // complete this section from here: https://en.wikipedia.org/wiki/Printf 









-- //   & & & & & & Operators & & & & & &
-- // which operations are available? one what types? categories : numbers, string operators...


-- void fun_operators()
-- {
-- int first_check, second_check;
-- int first_multi_assign, second_multi_assign;
-- int first_temp = 1;
-- double sum_temps, second_temp = 2.00;
-- int five = 5, three = 3, zero = 0;

-- int first_explicit_conv, second_explicit_conv;
-- int explicit_conv_assignment;


-- // need to touch on lvalue, rvalue, gvalue: 
-- // lecture's coverage: lval is left and changing, and rval is right, WOW!



-- // More Material:
-- // for the wiki tldr: https://en.wikipedia.org/wiki/Value_(computer_science)
-- // for the famous lval/rval/gval/xval graph: https://stackoverflow.com/questions/3601602/what-are-rvalues-lvalues-xvalues-glvalues-and-prvalues



-- //   ^ ^ ^ ^ ^ Assignment Operators ^ ^ ^ ^ ^
-- int first = 1;
-- first = 2;


-- //   ^ ^ ^ Multiple Assignment ^ ^ ^

-- first_multi_assign = second_multi_assign = 1;


-- //   ^ ^ ^ ^ ^ Arithmetical Operators (and a bit of operation piping) ^ ^ ^ ^ ^

-- first = first + 3;
-- first += 3;
-- first = first + 1;
-- first++;
-- ++first;


-- //   ^ ^ ^ ^ Order of operations (Arith) ^ ^ ^ ^ 
-- // what here ? what comes before what? * before / in C?  


-- //   ^ ^ ^ ^ Prefix vs Postfix inc/dec operator ^ ^ ^ ^
-- first_check = 1;
-- first_check = second_check++; // first_check = 1, second_check = 2 
-- first_check = ++second_check; // first_check = second_check = 3



-- //   ^ ^ ^ ^ Arithmetical Operators: Narrowing/Widening type Casting ^ ^ ^ ^


-- //   ^ ^ ^ type casting/C-casting ^ ^ ^

-- //   ^ ^ Implicit conversion - mismatching variables in opeartion ^ ^

-- first_temp + second_temp; // first is promoted to double in widening implicit c type conversion

-- //   ^ ^ Explicit conversion - assigned to different type OR different type written in parantheses ^ ^ 

-- first_explicit_conv = 3, second_explicit_conv = 4;
-- explicit_conv_assignment = (float)(first_explicit_conv / second_explicit_conv); // both exp conv scenarios, order: 1. int result temp 2. float result temp, 3. int assignment temp




 



-- // More Material: 
-- // map from this more about casts: https://stackoverflow.com/questions/28002/regular-cast-vs-static-cast-vs-dynamic-cast
-- // No Automatic casting to wide in c++? a set of rules: https://www.youtube.com/watch?v=uI10H1jzw00
-- // Make temp variable arithmetic in tablet and map building upon these scenarios: 
-- // answer: b' - promotion, (a + b')' - same, ((a + b')')' - demotion  









-- //   ^ ^ ^ ^ ^ Logical Operators ^ ^ ^ ^ ^
-- // order of operations ?
-- // == and != are the least in the order of operations, maybe finish the operations order ladder?
-- // false and true are exactly 0 and 1

-- five == 2;
-- (three < five || three < zero);

-- // combining logical and arith: (arithmetic operators take precedence)
-- /*
-- lecture's example:
-- int x = 2;
-- int y = (x > 5) + 1; // (x > 5) -> 0 -> 0 + 1 = 1

-- int a = 2, b;
-- ((b = 2) == a) // (b = 2) -> (2) -> 2 == 2 -> 1, trick question: a wierd behaviour of c family languages - assignment returns the assign value, acts as arithmetic

-- */

-- //   Overloading literal operators: https://en.cppreference.com/w/cpp/language/user_literal

-- //   ^ ^ ^ ^ ^ Pointer Operators ^ ^ ^ ^ ^

-- int ptr_value_1 = 0;


-- int* ptr_address_1 = &ptr_value_1; // address operator
-- ptr_value_1 = *ptr_address_1; // indirection operator

-- // in one line(int + int* init in same line):
-- int ptr_value_2 = 1, * ptr_address_2 = &ptr_value_2, ptr_value_2 = *ptr_address_2;


-- }










-- //   & & & & & & Variables & & & & & &
-- // type hinting? (static - no, dynamic - yes)


-- void fun_variables()
-- {

-- char my_char;
-- int my_int;
-- long my_long;
-- float my_float;
-- double my_double;

-- int imagine_this_is_out_of_any_function_global = 0;

-- // unsigned short cap: 65535
-- unsigned short hi = 65000; // 65,00
-- unsigned short hi = 66000; // 464 (Got back to zero going up)

-- // signed short cap: 32767
-- short hi = 32000; // 32000
-- short hi = 35000; // -30536 (Got to -32767 going to zero)


-- //   ^ ^ ^ ^ ^ Scope Sharing ^ ^ ^ ^ ^

-- //   ^ ^ ^ ^ Global & Static Variables ^ ^ ^ ^
-- // Both default value if not initialized : 0

-- imagine_this_is_out_of_any_function_global = 4;

-- { // imagine this is void function my_func

--     printf("global is accessible: %d", imagine_this_is_out_of_any_function_global);    
--     imagine_this_is_out_of_any_function_global = 7; // and mutable //
--     static int my_static = 0; // static variable accessible in my_func
-- }  

-- // but even though it's lifetime is the same as the global variable - trying to access the static variable from main - is a compilation error


-- //   ^ ^ ^ ^ Local variables ^ ^ ^ ^

-- int first_level_local = 1;
-- int this_wont_be_changed_local = 2;
-- { 

--     int second_level_local = 3;
--     int this_wont_be_changed_local = 4;

--     {
--         int third_level_local = 5;
--     }

-- }

-- first_level_local = 3;
-- // second_level_local = 4; -> not possible, it's local to the block
-- // this_wont_be_changed_local -> 2, the one with the 4 value was a different variable


-- //   ^ ^ ^ ^ ^ Constants ^ ^ ^ ^ ^

-- //   ^ ^ ^ ^ Pre-Processor Macros ^ ^ ^ ^

-- //   ^ ^ ^ Defines ^ ^ ^

-- #define CRT_SECURE_NO_WARNINGS
-- #define ZERO 0
-- #define PI 3.1415


-- //   ^ ^ ^ Enums(Almost pre-processor) ^ ^ ^

-- enum boolean {NO, YES};
-- typedef enum {TRUE = 1, FALSE = 0} Boolean;


-- //   ^ ^ ^ ^ Constants: Immutables 

-- //   ^ ^ ^ ConstExpr : Compile Time Immutable ^ ^ ^ 

-- //constexpr int static_time_const = 0;


-- //   ^ ^ ^ Const : Run Time Immutable ^ ^ ^

-- const int dynamic_time_const = 1;

-- //   ^ ^ Pointer Const ^ ^

-- int mutable_value = 0;
-- int immutable_value = 1;
-- int immutable_value_and_adress = 2;

-- const int* const_pointer_to_int = &immutable_value;
-- int* const const_pointer_to_int = &mutable_value;
-- const int* const const_pointer_to_int = &immutable_value_and_adress;


-- //   ^ ^ ^ ^ ^ Pointers ^ ^ ^ ^ ^

-- char* my_char_pointer;
-- int* my_int_pointer;
-- long* my_long_pointer;
-- float* my_float_pointer;
-- double* my_double_pointer;

-- //   ^ ^ ^ ^ Static Allocation ^ ^ ^ ^

-- my_char_pointer = &my_char;
-- my_int_pointer = &my_int;
-- my_long_pointer = &my_long;
-- my_float_pointer = &my_float;
-- my_double_pointer = &my_double;

-- //   ^ ^ ^ ^ Dynamic Allocation ^ ^ ^

-- // break? continue?

-- //   ^ ^ ^ Heap Byte Allocation: Malloc ^ ^ ^

-- my_char_pointer = (char*)malloc(sizeof(char));
-- my_int_pointer = (int*)malloc(sizeof(int));
-- my_long_pointer = (long*)malloc(sizeof(long));
-- my_float_pointer = (float*)malloc(sizeof(float));

-- //   ^ ^ ^ Heap Zero Allocation: Calloc ^ ^ ^


-- my_char_pointer = (char*)calloc(1, sizeof(char));
-- my_int_pointer = (int*)calloc(1, sizeof(int));
-- my_long_pointer = (long*)calloc(1, sizeof(long));
-- my_float_pointer = (float*)calloc(1, sizeof(float));

-- //   ^ ^ ^ Heap Memory De-Allocation ^ ^ ^

-- free(my_char_pointer);
-- free(my_int_pointer);
-- free(my_long_pointer);
-- free(my_float_pointer);

-- //   ^ ^ ^ Heap Memory Re-Allocation ^ ^ ^

-- my_char_pointer = realloc(my_char_pointer, sizeof(char) * 1);
-- my_int_pointer = realloc(my_int_pointer, sizeof(int) * 2);
-- my_long_pointer = realloc(my_long_pointer, sizeof(long) * 3);
-- my_float_pointer = realloc(my_float_pointer, sizeof(float) * 4);

-- //   ^ ^ ^ ^ Void (Generaic) Pointers ^ ^ ^ ^

-- void* my_generic_pointer;

-- char* my_generic_pointer_converted_to_char_pointer;
-- int* my_generic_pointer_converted_to_int_pointer;
-- long* my_generic_pointer_converted_to_long_pointer;
-- float* my_generic_pointer_converted_to_float_pointer;
-- double* my_generic_pointer_converted_to_double_pointer;

-- my_generic_pointer_converted_to_char_pointer = (char*)my_generic_pointer;
-- my_generic_pointer_converted_to_int_pointer = (int*)my_generic_pointer;
-- my_generic_pointer_converted_to_long_pointer = (long*)my_generic_pointer;
-- my_generic_pointer_converted_to_float_pointer = (float*)my_generic_pointer;
-- my_generic_pointer_converted_to_double_pointer = (double*)my_generic_pointer;

-- //   ^ ^ ^ ^ ^ Data Collections ^ ^ ^ ^ ^ 

-- // strings?

-- no list comprehension in sql?

-- }









-- //   & & & & & & Flow Control & & & & & &


-- void fun_flow_control()
-- {

-- int condition = 1;
-- int outer_condition = 0;
-- int elif_condition = 1;
-- int if_condition = 0; int elseif_condition = 1;
-- int switch_key = 2;


-- //   ^ ^ ^ ^ ^ Statements ^ ^ ^ ^ ^ 

-- //   ^ ^ ^ ^ ^ Procedure labels & GoTo ^ ^ ^ ^ ^

-- procedure_1_label:
-- // first procedure  //

-- goto procedure_2_label;

-- procedure_2_label:
-- // second procedure //

-- // More Material: https://www.geeksforgeeks.org/local-labels-in-c/


-- //   ^ ^ ^ ^ ^ Conditional Statements & & & & & &

-- //   ^ ^ ^ ^ If & Else ^ ^ ^ ^ ^

-- if(condition)
-- {
--     // condition TRUE -> first procedure
-- }

-- else
-- {
--     // condition FALSE -> second procedure
-- }


-- //   ^ ^ ^ Null Checks ^ ^ ^

-- int val_of_ptr = 0;
-- int* ptr_to_check = &val_of_ptr;

-- // Alternative 1 - using 0 representations

-- if (ptr_to_check!= 0) {}
-- if (ptr_to_check!= NULL) {} 
-- if (ptr_to_check!= '\0') {}

-- // Alternative 2 - using zero equating

-- if (ptr_to_check) {}


-- //   ^ ^ ^ Nested Ifs ^ ^ ^

-- if(outer_condition)
-- {
--     // first procedure
-- }
-- else
-- {
--     if(elif_condition) // else if logic , same as the else if example below
--     {
--         // second procedure
--     }
-- }


-- //   ^ ^ ^ Else-If ^ ^ ^ 

-- if(if_condition)
-- {
--     // first procedure
-- }
-- else if(elseif_condition) // same as the example above
-- {
--     // second procedure
-- }


-- // map to the tablet - new skill for relations, building a "order relation" graph under constraints (number of maximum relation checks on members, like finding the max of 3 numbers(linear relation) in no more than 3 tries)
-- // and also - mapping the control flow diagram - a straight line digram that splits whenever theres a conditional statement:
-- //             - - - - - - - -
-- //    - - - - -| condition 1  | - - - - - (when theres else-if the split is more than two - 3 + )
-- //             - - - - - - - - 

-- //   ^ ^ ^ ^ Switch ^ ^ ^ ^ ^

-- switch (switch_key)
-- {

-- case 1: // first procedure
--     break;

-- case 2: // second procedure
--     break;

-- case 3: // third procedure
--     break;

-- default: // fourth procedure
--     break;

-- }


-- //   ^ ^ ^ ^ ^ Loops ^ ^ ^ ^ ^ 

-- // break? continue?

-- //   ^ ^ ^ ^ While Loops ^ ^ ^ ^

-- int while_index = 0;
-- while(while_index <= 5) // condition checking BEFORE the procedure ran
-- {
--     ++while_index;
--     // while procedure
-- }

-- //   ^ ^ ^ Do-While Loops ^ ^ ^

-- int do_while_index = -1;
-- do
-- {
--     ++do_while_index;
--     // do-while procedure
-- } while(do_while_index <= 5); //condition checking AFTER the procedure ran


-- //   ^ ^ ^ ^ For Loops ^ ^ ^ ^

-- for(int for_index = 0; for_index <= 5 ; ++for_index) // same as above examples
-- {
--     // for procedure
-- }



-- //   ^ ^ ^ ^ Empty portions in for loop ^ ^ ^ ^
-- // no init? not condition? no counter?

-- // for(;;)
-- // for(;;)
-- // for(;;)

-- }

-- //   ^ ^ ^ ^ ^ Functions ^ ^ ^ ^ ^ 

-- int int_return_function(){}
-- also_int_return_function(){} // defualt int type - though may cause a warning

-- //   ^ ^ ^ ^ Function prototyping ^ ^ ^ ^

-- void void_prtp_func_1(); // function declaration
-- void void_prtp_func_2();
-- // main procedure
-- void void_prtp_func_1(){ return; } // function definition
-- void void_prtp_func_2(){} // in void functions - the return statement may be omitted and the function will return in closing block

-- // add to tablet: 1. static stack segment layout (building the stack) + dynamic stack segment allocation in function calls (changing the values and releasing the layout parts) 


-- //   ^ ^ ^ ^  Argument Passing ^ ^ ^ ^ 

-- //   ^ ^ ^ Passing By Value ^ ^ ^

-- void pass_by_value(int val){}

-- //   ^ ^ ^ Passing By Adress ^ ^ ^

-- void pass_by_adress(int* adr){}
-- // add this - pass_by_adress_2(int adr[]){} ? or in the array section ? 


-- // anon function? from version 11? what's the syntax?

-- //   ^ ^ ^ ^ Recursive Functions ^ ^ ^ ^

-- void rec_func(){rec_func();} // infinite loop logic


-- //   ^ ^ ^ ^ Pointer Functions ^ ^ ^ ^
-- // finish this from lecture 12







-- //   & & & & & & Structs & & & & & &

-- // files? 

-- //   & & & & & & Classes & & & & & &


-- /*   < < < < < < < <   Design Principles   > > > > > > > >   */

-- //   & & & & & & Procedural Design & & & & & &  

-- //   ^ ^ ^ ^ ^ Procedures: Implemented as Functions ^ ^ ^ ^ ^
-- //   ^ ^ ^ ^ ^ Sequence/Execution control: Control Flow section's tools (if,else-if, for etc...) ^ ^ ^ ^ ^
-- //   ^ ^ ^ ^ ^ Scope Modularity(?): Each function variable has a local scope ^ ^ ^ ^ ^ 
-- //   ^ ^ ^ ^ ^ Single Responsibility Modularity: one function takes care of one functional requirement ^ ^ ^ ^ ^
-- //   ^ ^ ^ ^ ^ Message Passing: Function invocation ^ ^ ^ ^ ^
-- //   ^ ^ ^ ^ ^ Abstraction: each function invocation is a black box ^ ^ ^ ^ ^
-- //   ^ ^ ^ ^ ^ Supports TDD: using the function, and then impementing
































































--   < < < < < < < <   DSL Principles   > > > > > > > >   

-- \sql
-- \connect root@localhost
-- Pass at: C:\mysqlresetpass\mysql-init.txt

--   & & & & & & Schema Manipulation & & & & & &

--   ^ ^ ^ ^ ^ DataBase handling ^ ^ ^ ^ ^

create database db_name;  -- a command for creating a database
drop database db_name;   -- a command for deleting a database
drop database if exists db_name;  -- a command for conditioning a database deletion 

show databases;   --  a command for outputing the databases

use db_name;  -- a command for setting the DB as the one to work on 

--   ^ ^ ^ ^ ^ Tables Handling ^ ^ ^ ^ ^

--   ^ ^ ^ ^ Table Creation ^ ^ ^ ^

create table table_name_1;  -- creating a table without attributes
create table table_name_2(  -- creating a table with attributes
    attribute_1 int, 
    attribute_2 tinyint

--   ^ ^ ^keys

--   ^ ^ ^ Numeric Types ^ ^ ^

    int_atr int,
    small_int_atr smallint,
    medium_int_atr mediumint,
    big_int_atr bigint,
    decimal_atr decimal

--   ^ ^ ^ String Types ^ ^ ^

--
--
--

);  

describe table_name;

--   ^ ^ ^ ^ Table Content Manipulation ^ ^ ^ ^

--   ^ ^ ^insert 

--insert? what more?

--   ^ ^ ^delete

delete from table_name; -- a command to delete all cell contents
--what about row deletion?

--   ^ ^ ^ ^ Table Deletion (wierd how the delete keyword is in another portion, not here) ^ ^ ^ ^ 

drop table table_name; -- a command for deleting a table
drop temporary table table_name; -- a command for deleting a temporary table
drop table if exists db_name; -- a command for conditioning a table deletion 



















-- creating the student's table
drop table student_table;
create table student_table (
    -- defining student ID + it's primary
    student_id int auto_increment primary key,
    -- defining name and constraining
    student_name varchar(20) not null,
    -- defining major and constraining
    student_major varchar(20) default 'undecided'
); 

-- checking the current schema 
describe student_table;
-- modifying the table after creation
-- alter table student_table add gpa decimal(3 ,2);

-- handling insertions: order inserting matters
-- insert into student_table values(1, 'Jack', 'Biology');
-- insert into student_table values(2, 'Kate', 'Sociology');
-- partial insertion
-- insert into student_table values(4, 'Jack', 'Biology');
-- insert into student_table values(5, 'Mike', 'Computer Science');

-- using the auto insertions
insert into student_table (student_name, student_major) values ('Jack', 'Biology');
insert into student_table (student_name, student_major) values ('Kate', 'Sociology');
insert into student_table (student_name, student_major) values ('Claire', 'Chemistry');
insert into student_table (student_name, student_major) values ('Jack', 'Biology');
insert into student_table (student_name, student_major) values ('Mike', 'Computer Science');

-- modifying the data 
update student_table
set student_major = 'Bio'
where student_major = 'Biology';

update student_table
set student_major = 'Comp Sci'
where student_major = 'Computer Science';
-- set student_name = 'Tom', student_major = 'undecided'
-- where student_major = 'Bio' or student_major = 'Chemistry';

-- Querying the whole table
select * from student_table;
-- Querying the student's names
select student_name from student_table;
select student_table.student_name, -- notice the alternative modular writing
 student_table.student_major from student_table
 order by student_table.student_name;

-- table creation --
create table my_table ()

-- what about fields/attributes?