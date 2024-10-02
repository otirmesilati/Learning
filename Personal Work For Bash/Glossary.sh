# Yet to find an online CMD emulator









#   < < < < < < < <   Command Principles   > > > > > > > >   */

#   & & & & & & File System Navigation & & & & & & 

#   ^ ^ ^ ^ ^ Directory File Creation ^ ^ ^ ^ ^  

mkdir my_file

#   ^ ^ ^ ^ Script Creation ^ ^ ^ ^  

#!/bin/sh
chmod +x my_bash_file.sh
./my_bash_file.sh  


#   ^ ^ ^ ^ Extended Script Creation ^ ^ ^ ^ 

#   ^ ^ ^ ^ ^ Changing File Directories ^ ^ ^ ^ ^

cd new_file
cd new_file_1/new_file_2
cd .. 
cd ../..

#listing items

ls

# cat? wc? cp? mv? rm? ln? cd ~? cd ~<user>? cd -?

#   < < < < < < < <   Procedural Principles   > > > > > > > >   */










#   & & & & & & Resources: Rich API, Libraries, and Frameworks & & & & & &
#   standard lib? gui? useful environment variables, $$ (for id)? commands? cal (calender)? password? whoami and who am i? users and who and w?
#   more material : https://www.tutorialspoint.com/unix/unix-special-variables.htm







# More Material: https://labbots.github.io/bash-utility/functions/date/









#   & & & & & & Comments & & & & & &

# Single Line comment 









#   & & & & & & Literals (+ defined unary literal operators) & & & & & &
# Literals - Only for Assignments

my_num=1
my_string=the1iswasastring

#   ^ ^ ^ ^ ^ Expressions ^ ^ ^ ^ ^ 

# Literals are all unicode's UTF-8 strings: no integers (and their modifiers), no floats









#   & & & & & & String Formatting & & & & & &

#   No String Formatting: specifier fields (precision, length, types)









#   & & & & & & Operators & & & & & &


# ::   Map This Part after doing the rest of the operator portion in other mappings:
# ::   Also, Touch on the Arith operators: +(+=),-(-=),*(*=),/(/=),%,(%=), relational: eq(or ==),ne,ls,le,gt,ge, logicl: -a ,-o, !, strings: =, !=, -z, -n, str
# ::   File Test Operators: -b(block)/c(check)/d(directory)/f(ordinary)/g(group id).. file(finish this), finish from here : https://www.tutorialspoint.com/unix/unix-basic-operators.htm
# ::   ----------------------------------------------------------------

# ::   The output of the above program would be 15.

# ::   All of the arithmetic operators work in batch files. The following example shows arithmetic operators can be used in batch files.

# @echo off 
# SET /A a = 5 
# SET /A b = 10 
# SET /A c = %a% + %b% 
# echo %c% 
# SET /A c = %a% - %b% 
# echo %c% 
# SET /A c = %b% / %a% 
# echo %c% 
# SET /A c = %b% * %a% 
# echo %c%
# ::   The above command produces the following output.

# ::   15 
# ::   -5 
# ::   2 
# ::   50

# ::   ----------------------------------------------------------------




# ::   void fun_operators()
# ::   {
# ::   int first_check, second_check;
# ::   int first_multi_assign, second_multi_assign;
# ::   int first_temp = 1;
# ::   double sum_temps, second_temp = 2.00;
# ::   int five = 5, three = 3, zero = 0;

# ::   int first_explicit_conv, second_explicit_conv;
# ::   int explicit_conv_assignment;


# ::   need to touch on lvalue, rvalue, gvalue: 
# ::   lecture's coverage: lval is left and changing, and rval is right, WOW!



# ::   More Material:
# ::   for the wiki tldr: https://en.wikipedia.org/wiki/Value_(computer_science)
# ::   for the famous lval/rval/gval/xval graph: https://stackoverflow.com/questions/3601602/what-are-rvalues-lvalues-xvalues-glvalues-and-prvalues



# ::   ^ ^ ^ ^ ^ Assignment Operators ^ ^ ^ ^ ^
# ::   int first = 1;
# ::   first = 2;


# ::   ^ ^ ^ Multiple Assignment ^ ^ ^

# ::   first_multi_assign = second_multi_assign = 1;


# ::   ^ ^ ^ ^ ^ Arithmetical Operators ^ ^ ^ ^ ^
# ::   first = first + 3;
# ::   first= += 3;
# ::   first = first + 1;
# ::   first++;
# ::   ++first;


# ::   ^ ^ ^ ^ Order of operations (Arith) ^ ^ ^ ^ 
# ::   what here ? what comes before what? * before / in C?  


# ::   ^ ^ ^ ^ Prefix vs Postfix inc/dec operator ^ ^ ^ ^
# ::   first_check = 1;
# ::   first_check = second_check++; // first_check = 1, second_check = 2 
# ::   first_check = ++second_check; // first_check = second_check = 3



# ::   ^ ^ ^ ^ Arithmetical Operators: Narrowing/Widening type Casting ^ ^ ^ ^


# ::   ^ ^ ^ type casting/C-casting ^ ^ ^

# ::   ^ ^ Implicit conversion - mismatching variables in opeartion ^ ^

# ::   first_temp + second_temp; // first is promoted to double in widening implicit c type conversion

# ::   ^ ^ Explicit conversion - assigned to different type OR different type written in parantheses ^ ^ 

# ::   first_explicit_conv = 3, second_explicit_conv = 4;
# ::   explicit_conv_assignment = (float)(first_explicit_conv / second_explicit_conv); // both exp conv scenarios, order: 1. int result temp 2. float result temp, 3. int assignment temp









# ::   ^ ^ ^ ^ ^ Logical Operators ^ ^ ^ ^ ^
# ::   order of operations ?
# ::   == and != are the least in the order of operations, maybe finish the operations order ladder?
# ::   false and true are exactly 0 and 1

# ::   five == 2;
# ::   (three < five || three < zero);

# ::   // combining logical and arith: (arithmetic operators take precedence)
# ::   /*
# ::   lecture's example:
# ::   int x = 2;
# ::   int y = (x > 5) + 1; // (x > 5) -> 0 -> 0 + 1 = 1

# ::   int a = 2, b;
# ::   ((b = 2) == a) // (b = 2) -> (2) -> 2 == 2 -> 1, trick question: a wierd behaviour of c family languages - assignment returns the assign value, acts as arithmetic

# ::   */

# ::    Overloading literal operators: https://en.cppreference.com/w/cpp/language/user_literal

# ::   ^ ^ ^ ^ ^ Pointer Operators ^ ^ ^ ^ ^

# ::   int ptr_value_1 = 0;


# ::   int* ptr_address_1 = &ptr_value_1; // address operator
# ::   ptr_value_1 = *ptr_address_1; // indirection operator

# ::   // in one line(int + int* init in same line):
# ::   int ptr_value_2 = 1, * ptr_address_2 = &ptr_value_2, ptr_value_2 = *ptr_address_2;


# ::   }










#   ^ ^ ^ ^ ^ Variables & & & & & &

my_num=1
my_string=the1iswasastring

#   ^ ^ ^ ^ Scope Sharing ^ ^ ^ ^

# No global and static variables - instead there are environment and shell variables




#   ^ ^ ^ Environment Variables ^ ^ ^ 
#printenv where? env? set?

export my_environment_variable=0

#   ^ ^ ^ ^ Shell variables ^ ^ ^ ^

my_local_varaible=1 # variables are by default Shell varaibles(local)

#   ^ ^ ^ ^ ^ Constants ^ ^ ^ ^ ^

# No Constants - compile time (pre-proc macros, defines, enums), or run time. 

#   ^ ^ ^ ^ ^ Pointers ^ ^ ^ ^ ^

# No Pointers - Allocation is irrelevant in compile time, or run time.

#   ^ ^ ^ ^ Arrays ^ ^ ^ ^ 

#   strings?









#   & & & & & & Flow Control & & & & & &

setf_arg=0
s_arg=1
val_of_ptr=2
my_key="abcd"
while_index=3

#   ^ ^ ^ ^ ^ Statements ^ ^ ^ ^ ^ 

# No Labels/Gotos.

#   ^ ^ ^ ^ ^ Conditional Statements & & & & & &

#   ^ ^ ^ ^ If & Else ^ ^ ^ ^ ^

if [ $f_arg == $s_arg]
then # Condition TRUE -> First Procedure
    echo "Both arguments are equal."
else # Condition FALSE -> Second Procedure
    echo "Arguments are not equal."
fi


#   ^ ^ ^ Null Checks ^ ^ ^

if [ -n "$val_of_ptr"]
then
    echo "not null"
else
    echo "null"
fi


#   ^ ^ ^ Nested Ifs ^ ^ ^

if [ $f_arg == $s_arg]
then # Condition TRUE -> First Procedure
    echo "Both arguments are equal."
else # Condition FALSE -> Second Procedure
    if [ $f_arg == $s_arg] # else if logic , same as the else if example below
    then # Condition TRUE -> Second Procedure
        echo "Arguments are not equal."
    fi
fi


#   ^ ^ ^ Else-If ^ ^ ^ 

if [ $f_arg == $s_arg]
then 
    echo "Both arguments are equal."
elif [ $f_arg == $s_arg] # same as the example above
then 
    echo "Arguments are not equal."
fi


#   ^ ^ ^ ^ Case: Switch Like ^ ^ ^ ^ ^

case "$my_key" in
"cde") # First Procedure 
;;
"bcd") # Second Procedure
;;
"abcd") # Third Procedure
;;
*) # Fourth Procedure
;;
esac


#   ^ ^ ^ ^ ^ Loops ^ ^ ^ ^ ^ 

# ::   break? continue?

#   ^ ^ ^ ^ While Loops ^ ^ ^ ^

while [ $while_index -le 4 ]; # condition checking BEFORE the procedure ran
do
    # while procedure 
done


#   ^ ^ ^ Do-While Loops ^ ^ ^

# ::   int do_while_index = -1;
# ::   do
# ::   {
# ::       ++do_while_index;
# ::       // do-while procedure
# ::   } while(do_while_index <= 5); //condition checking AFTER the procedure ran


#   ^ ^ ^ ^ For Loops ^ ^ ^ ^

# ::   for(int for_index = 0; for_index <= 5 ; ++for_index) // same as above examples
# ::   {
# ::     for procedure
# ::   }



#   ^ ^ ^ ^ Empty portions in for loop ^ ^ ^ ^
# ::   no init? not condition? no counter?

# ::   for(;;)
# ::   for(;;)
# ::   for(;;)

# ::   }

#   ^ ^ ^ ^ ^ Functions ^ ^ ^ ^ ^ 

# ::   int int_return_function(){}
# ::   also_int_return_function(){} // defualt int type - though may cause a warning

# ::   ^ ^ ^ ^ Function prototyping ^ ^ ^ ^

# ::   void void_prtp_func_1(); // function declaration
# ::   void void_prtp_func_2();
# ::   main procedure
# ::   void void_prtp_func_1(){ return; } // function definition
# ::   void void_prtp_func_2(){} // in void functions - the return statement may be omitted and the function will return in closing block

# ::   add to tablet: 1. static stack segment layout (building the stack) + dynamic stack segment allocation in function calls (changing the values and releasing the layout parts) 


# ::   ^ ^ ^ ^  Argument Passing ^ ^ ^ ^ 

# ::   ^ ^ ^ Passing By Value ^ ^ ^

# ::   void pass_by_value(int val){}

# ::   ^ ^ ^ Passing By Adress ^ ^ ^

# ::   void pass_by_adress(int* adr){}
# ::   add this - pass_by_adress_2(int adr[]){} ? or in the array section ? 


# ::   anon function? from version 11? what's the syntax?

# ::   ^ ^ ^ ^ Recursive Functions ^ ^ ^ ^

# ::   void rec_func(){rec_func();} // infinite loop logic


# ::   ^ ^ ^ ^ Pointer Functions ^ ^ ^ ^
# ::   finish this from lecture 12







# ::   & & & & & & Structs & & & & & &

# ::   files? 

# ::   & & & & & & Classes & & & & & &


# ::   < < < < < < < <   Design Principles   > > > > > > > >   */

# ::   & & & & & & Procedural Design & & & & & &  

# ::   ^ ^ ^ ^ ^ Procedures: Implemented as Functions ^ ^ ^ ^ ^
# ::   ^ ^ ^ ^ ^ Sequence/Execution control: Control Flow section's tools (if,else-if, for etc...) ^ ^ ^ ^ ^
# ::   ^ ^ ^ ^ ^ Scope Modularity(?): Each function variable has a local scope ^ ^ ^ ^ ^ 
# ::   ^ ^ ^ ^ ^ Single Responsibility Modularity: one function takes care of one functional requirement ^ ^ ^ ^ ^
# ::   ^ ^ ^ ^ ^ Message Passing: Function invocation ^ ^ ^ ^ ^
# ::   ^ ^ ^ ^ ^ Abstraction: each function invocation is a black box ^ ^ ^ ^ ^
# ::   ^ ^ ^ ^ ^ Supports TDD: using the function, and then impementing

