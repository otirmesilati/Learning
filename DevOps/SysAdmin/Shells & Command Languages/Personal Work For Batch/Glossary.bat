:: Yet to find an online CMD emulator


::vars
echo %computername%

echo %os%

echo %number_of_processors%
echo %processor_architecture%

echo %username%









echo "Hello World!"

@echo off

echo hi
echo:
rem this is a comment
:: this is also a comment

pause




@echo off

set my_var=ami
set my_command=dir

echo %my_var%
echo %my_command%
%my_command%

pause



set

echo %username%

echo %homedrive%

echo %homepath% 

echo %windir%

echo %systemdrive%

arp -a

pause 






@echo off 

cd %SYSTEMROOT%

echo "CMD path below"

echo %COMSPEC%

set statement1="This is the first statement"
set statement2="This is the second statement"

set /a statement3=%statement1% %statement2% 

echo %statement3%

set sum=10+10
::this will generate a string

set /a sum=10+10
::this will do what we wanted

echo %sum%

echo "please enter a name"
set /p name=

echo "and now please enter a number"
set /p first_number=

echo "enter the second"
set /p second_number=

set /a sum=%first_number% %second_number%%

pause




@ehco off

dir c:\

vol d:

goto :fun2

:fun1
echo "hi"
timeout 15
exit 

:fun2
echo "bye"

call :fun1


pause








@echo off

goto :userinput

:main
echo "the inputted number:"%~1 and %~2
goto :eof

:userinput 
set /P number1=please enter number
call :main 60 90

goto :displayname

:displayname
setlocal
set /P my_name=Enter your name
echo Your name is %my_name%
endlocal
goto :eof

pause





systeminfo

:: playing with start

start /separate notepad
start /shared notepad

start /low notepad

start "jerry" cmd
start /max notepad
start /min notepad

start /low notepad
start /normal notepad
start /high notepad
start /realtime notepad

start /wait notepad

start /abovenormal notepad
start /belownormal notepad




@echo off

:: Usual Starting position

echo Starting procedure:

start Desktop
start chrome.exe
start githubdesktop.exe
start eclipse.exe
start pycharm64.exe
start code.exe

:: about the start flags/options:
:: probably not going to input arguments for 
:: priority (self manage scheduler) and window size
:: diffrentiation (opening last conf size probably best) 

:: notepad
start notepad


::  Environment variables
echo %username%

systeminfo
tasklist
cls

:: networking
echo %computername%
ping google.com
ping /4 google.com 
:: pinging with IPV4 - preaty similar to defualt
ping /n 9 google.com
ping google.com -t 
::CTRL+C to stop run and regain user control 
ipconfig 
ipconfig /all
arp -a

:: no need to pause on scripts

:: some classics - playing with test folders
cd .. ; cd "test_folder_2" 
:: changing fromfolder 1 to folder 2
echo. 2>folder_2_text_1.txt
:: creating an empty text folder (echo. for 
:: new line, 2 for err stream, and the file name)
copy folder_2_text_1.txt "C:\Users\otirm_2hwnj4i\desktop\explorer testing\test_folder_1" 
:: copying a file to another folder
cd .. && cd test_folder_1
del folder_2_text_1.txt
:: going to the second folder and deleting the copy
echo. 2>folder1_text_2.txt
:: renaming the files
ren folder_1_text_2.txt hi.txt
rename hi.txt folder_1_text_2.txt
:: entering text 




:: this will be used for a tutorial

:: comments

:: system information - using built ins
:: system information - using environment variables

:: Currently stopped at commands page, 
:: Started to categorize the keywords to categories
:: such as seen with the sysinfo above, 
:: make more categories such as changing directories
:: editing texts maybe.. etc and then add the 
:: proper code! :)

:: https://www.tutorialspoint.com/batch_script/batch_script_commands.htm
:: Commands















::   < < < < < < < < Language Principles > > > > > > > > > 









::   < < < < < < < <   Command Principles   > > > > > > > >   */









::   & & & & & & Command Script Creation & & & & & & 

:: #!/bin/sh
:: chmod +x my_bash_file.sh
:: ./my_bash_file.sh  









::   < < < < < < < < < Procedural Principles > > > > > > > >









::   & & & & & & Libraries & & & & & &
::   standard lib? gui?









::   & & & & & & Comments & & & & & &

:: Single Line comment - acts as a nameless label, "drive letter"-ish -> thus can be problematic to do <command1> && :: <comments>
:: do <command2> && REM <comments> instead! (Error: The system cannot find the driver specified)

rem For Line documentation - actual command










::   & & & & & & Data Streaming & & & & & & 

::   ^ ^ ^ ^ ^ Variable input ^ ^ ^ ^ ^

::   ^ ^ ^ ^ ^ Console Output ^ ^ ^ ^ ^ 









::   & & & & & & Literals (+ defined unary literal operators) & & & & & &
:: Literals - Only for Assignments

::   ^ ^ ^ ^ ^ Expressions ^ ^ ^ ^ ^ 


::   ^ ^ ^ ^ ^ Integers ^ ^ ^ ^ ^

set /a my_num = 123;
:: no underscore format for numbers like 1,234! 
set /a my_num = -123;


::   ^ ^ ^ ^ Coding Modifiers ^ ^ ^ ^

::   ^ ^ ^ Radixed modifier ^ ^ ^

set /a my_num = 0x12AB
set /a my_num = 012 && REM octal literals written without o
rem No Binary literals

:: No built in Un-Sgined, Long, And Floating Numbers Tools.









::   & & & & & & String Formatting & & & & & &

::   No String Formatting: specifier fields (precision, length, types)









::   & & & & & & Operators & & & & & &
::   which operations are available? one what types? categories : numbers, string operators...


::   Map This Part after doing the rest of the operator portion in other mappings:
::   Also, Touch on the Arith operators: +(+=),-(-=),*(*=),/(/=),%,(%=), relational: equ(or == for strings),neq,lss,leq,gtr,geq, logicl: and(&),or(|), not(^)
::   ----------------------------------------------------------------

::   The output of the above program would be 15.

::   All of the arithmetic operators work in batch files. The following example shows arithmetic operators can be used in batch files.

@echo off 
SET /A a = 5 
SET /A b = 10 
SET /A c = %a% + %b% 
echo %c% 
SET /A c = %a% - %b% 
echo %c% 
SET /A c = %b% / %a% 
echo %c% 
SET /A c = %b% * %a% 
echo %c%
::   The above command produces the following output.

::   15 
::   -5 
::   2 
::   50

::   ----------------------------------------------------------------




::   void fun_operators()
::   {
::   int first_check, second_check;
::   int first_multi_assign, second_multi_assign;
::   int first_temp = 1;
::   double sum_temps, second_temp = 2.00;
::   int five = 5, three = 3, zero = 0;

::   int first_explicit_conv, second_explicit_conv;
::   int explicit_conv_assignment;


::   need to touch on lvalue, rvalue, gvalue: 
::   lecture's coverage: lval is left and changing, and rval is right, WOW!



::   More Material:
::   for the wiki tldr: https://en.wikipedia.org/wiki/Value_(computer_science)
::   for the famous lval/rval/gval/xval graph: https://stackoverflow.com/questions/3601602/what-are-rvalues-lvalues-xvalues-glvalues-and-prvalues



::   ^ ^ ^ ^ ^ Assignment Operators ^ ^ ^ ^ ^
::   int first = 1;
::   first = 2;


::   ^ ^ ^ Multiple Assignment ^ ^ ^

::   first_multi_assign = second_multi_assign = 1;


::   ^ ^ ^ ^ ^ Arithmetical Operators ^ ^ ^ ^ ^
::   first = first + 3;
::   first= += 3;
::   first = first + 1;
::   first++;
::   ++first;


::   ^ ^ ^ ^ Order of operations (Arith) ^ ^ ^ ^ 
::   what here ? what comes before what? * before / in C?  


::   ^ ^ ^ ^ Prefix vs Postfix inc/dec operator ^ ^ ^ ^
::   first_check = 1;
::   first_check = second_check++; // first_check = 1, second_check = 2 
::   first_check = ++second_check; // first_check = second_check = 3



::   ^ ^ ^ ^ Arithmetical Operators: Narrowing/Widening type Casting ^ ^ ^ ^


::   ^ ^ ^ type casting/C-casting ^ ^ ^

::   ^ ^ Implicit conversion - mismatching variables in opeartion ^ ^

::   first_temp + second_temp; // first is promoted to double in widening implicit c type conversion

::   ^ ^ Explicit conversion - assigned to different type OR different type written in parantheses ^ ^ 

::   first_explicit_conv = 3, second_explicit_conv = 4;
::   explicit_conv_assignment = (float)(first_explicit_conv / second_explicit_conv); // both exp conv scenarios, order: 1. int result temp 2. float result temp, 3. int assignment temp









::   ^ ^ ^ ^ ^ Logical Operators ^ ^ ^ ^ ^
::   order of operations ?
::   == and != are the least in the order of operations, maybe finish the operations order ladder?
::   false and true are exactly 0 and 1

::   five == 2;
::   (three < five || three < zero);

::   // combining logical and arith: (arithmetic operators take precedence)
::   /*
::   lecture's example:
::   int x = 2;
::   int y = (x > 5) + 1; // (x > 5) -> 0 -> 0 + 1 = 1

::   int a = 2, b;
::   ((b = 2) == a) // (b = 2) -> (2) -> 2 == 2 -> 1, trick question: a wierd behaviour of c family languages - assignment returns the assign value, acts as arithmetic

::   */

::    Overloading literal operators: https://en.cppreference.com/w/cpp/language/user_literal

::   ^ ^ ^ ^ ^ Pointer Operators ^ ^ ^ ^ ^

::   int ptr_value_1 = 0;


::   int* ptr_address_1 = &ptr_value_1; // address operator
::   ptr_value_1 = *ptr_address_1; // indirection operator

::   // in one line(int + int* init in same line):
::   int ptr_value_2 = 1, * ptr_address_2 = &ptr_value_2, ptr_value_2 = *ptr_address_2;


::   }










::   ^ ^ ^ ^ ^ Variables & & & & & &

::   ^ ^ ^ ^ Command line arguments ^ ^ ^ ^
:: %1 ? what here ?


::   ^ ^ ^ ^ Set Variables ^ ^ ^ ^

set /a my_int = 5
set my_string = hi


::   ^ ^ ^ ^ Scope Sharing ^ ^ ^ ^


::   ^ ^ ^ ^ ^ Scope Sharing ^ ^ ^ ^ ^

::   ^ ^ ^ ^ Global & Static Variables ^ ^ ^ ^

::   variables are by defualt global

::   ^ ^ ^ ^ Local variables ^ ^ ^ ^

SETLOCAL
set /a my_local = 12
echo %my_local%
ENDLOCAL
:: echo %my_local% won't work here


::   ^ ^ ^ ^ ^ Constants ^ ^ ^ ^ ^

:: No Constants - compile time (pre-proc macros, defines, enums), or run time. 

::   ^ ^ ^ ^ ^ Pointers ^ ^ ^ ^ ^

:: No Pointers - Allocation is irrelevant in compile time, or run time.

::   ^ ^ ^ ^ ^ Data Collections ^ ^ ^ ^ 

:: list comprehension in batch?

::   strings?


::   }

:: version checking: python --version







::    & & & & & & Flow Control & & & & & &


::   void fun_flow_control()
::   {

::   int condition = 1;
::   int outer_condition = 0;
::   int elif_condition = 1;
::   int if_condition = 0; int elseif_condition = 1;
::   int switch_key = 2;


::   ^ ^ ^ ^ ^ Statements ^ ^ ^ ^ ^ 

::   ^ ^ ^ ^ ^ Procedure labels & GoTo ^ ^ ^ ^ ^

::   procedure_1_label:
::   first procedure  //

::   goto procedure_2_label;

::   procedure_2_label:
::   second procedure //

::   More Material: https://www.geeksforgeeks.org/local-labels-in-c/


::   ^ ^ ^ ^ ^ Conditional Statements & & & & & &

::   ^ ^ ^ ^ If & Else ^ ^ ^ ^ ^

::   if(condition)
::   {
::   condition TRUE -> first procedure
::   }

::   else
::   {
::   condition FALSE -> second procedure
::   }


::   ^ ^ ^ Null Checks ^ ^ ^

::   int val_of_ptr = 0;
::   int* ptr_to_check = &val_of_ptr;

::   Alternative 1 - using 0 representations

::   if (ptr_to_check!= 0) {}
::   if (ptr_to_check!= NULL) {} 
::   if (ptr_to_check!= '\0') {}

::   Alternative 2 - using zero equating

::   if (ptr_to_check) {}


::   ^ ^ ^ Nested Ifs ^ ^ ^

::   if(outer_condition)
::   {
::   first procedure
::   }
::   else
::   {
::   if(elif_condition) // else if logic , same as the else if example below
::   {
::   second procedure
::   }
::   }


::   ^ ^ ^ Else-If ^ ^ ^ 

::   if(if_condition)
::   {
::   first procedure
::   }
::   else if(elseif_condition) // same as the example above
::   {
::   second procedure
::   }


::   map to the tablet - new skill for relations, building a "order relation" graph under constraints (number of maximum relation checks on members, like finding the max of 3 numbers(linear relation) in no more than 3 tries)
::   and also - mapping the control flow diagram - a straight line digram that splits whenever theres a conditional statement:
::             - - - - - - - -
::    - - - - -| condition 1  | - - - - - (when theres else-if the split is more than two - 3 + )
::             - - - - - - - - 

::   ^ ^ ^ ^ Switch ^ ^ ^ ^ ^

::   switch (switch_key)
::   {

::   case 1: // first procedure
::       break;

::   case 2: // second procedure
::       break;

::   case 3: // third procedure
::       break;

::   default: // fourth procedure
::       break;

::   }


::   ^ ^ ^ ^ ^ Loops ^ ^ ^ ^ ^ 

::   break? continue?

::   ^ ^ ^ ^ While Loops ^ ^ ^ ^

::   int while_index = 0;
::   while(while_index <= 5) // condition checking BEFORE the procedure ran
::   {
::       ++while_index;
::       // while procedure
::   }

::   ^ ^ ^ Do-While Loops ^ ^ ^

::   int do_while_index = -1;
::   do
::   {
::       ++do_while_index;
::       // do-while procedure
::   } while(do_while_index <= 5); //condition checking AFTER the procedure ran


::   ^ ^ ^ ^ For Loops ^ ^ ^ ^

::   for(int for_index = 0; for_index <= 5 ; ++for_index) // same as above examples
::   {
::     for procedure
::   }



::   ^ ^ ^ ^ Empty portions in for loop ^ ^ ^ ^
::   no init? not condition? no counter?

::   for(;;)
::   for(;;)
::   for(;;)

::   }

::   ^ ^ ^ ^ ^ Functions ^ ^ ^ ^ ^ 

::   int int_return_function(){}
::   also_int_return_function(){} // defualt int type - though may cause a warning

::   ^ ^ ^ ^ Function prototyping ^ ^ ^ ^

::   void void_prtp_func_1(); // function declaration
::   void void_prtp_func_2();
::   main procedure
::   void void_prtp_func_1(){ return; } // function definition
::   void void_prtp_func_2(){} // in void functions - the return statement may be omitted and the function will return in closing block

::   add to tablet: 1. static stack segment layout (building the stack) + dynamic stack segment allocation in function calls (changing the values and releasing the layout parts) 


::   ^ ^ ^ ^  Argument Passing ^ ^ ^ ^ 

::   ^ ^ ^ Passing By Value ^ ^ ^

::   void pass_by_value(int val){}

::   ^ ^ ^ Passing By Adress ^ ^ ^

::   void pass_by_adress(int* adr){}
::   add this - pass_by_adress_2(int adr[]){} ? or in the array section ? 


::   anon function? from version 11? what's the syntax?

::   ^ ^ ^ ^ Recursive Functions ^ ^ ^ ^

::   void rec_func(){rec_func();} // infinite loop logic


::   ^ ^ ^ ^ Pointer Functions ^ ^ ^ ^
::   finish this from lecture 12







::   & & & & & & Structs & & & & & &

::   files? 

::   & & & & & & Classes & & & & & &


::   < < < < < < < <   Design Principles   > > > > > > > >   */

::   & & & & & & Procedural Design & & & & & &  

::   ^ ^ ^ ^ ^ Procedures: Implemented as Functions ^ ^ ^ ^ ^
::   ^ ^ ^ ^ ^ Sequence/Execution control: Control Flow section's tools (if,else-if, for etc...) ^ ^ ^ ^ ^
::   ^ ^ ^ ^ ^ Scope Modularity(?): Each function variable has a local scope ^ ^ ^ ^ ^ 
::   ^ ^ ^ ^ ^ Single Responsibility Modularity: one function takes care of one functional requirement ^ ^ ^ ^ ^
::   ^ ^ ^ ^ ^ Message Passing: Function invocation ^ ^ ^ ^ ^
::   ^ ^ ^ ^ ^ Abstraction: each function invocation is a black box ^ ^ ^ ^ ^
::   ^ ^ ^ ^ ^ Supports TDD: using the function, and then impementing
