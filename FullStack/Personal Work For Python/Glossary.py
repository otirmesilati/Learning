# Python online emulator: https://www.programiz.com/python-programming/online-compiler/ 









#   < < < < < < < <   Language Principles   > > > > > > > >   









#   < < < < < < < <   Procedural Principles   > > > > > > > >   









#   & & & & & & Resources: Rich API, Libraries, and Frameworks & & & & & &
#   Standard Library is built in, not need to be imported
# GUI? Libraries DataBases 








#   & & & & & & Comments & & & & & & 


# Single Line comments


# No multi line comments 
# So we just concat single line comments
#docs? logs?

""" 
Documentation
Annotation
"""









#   & & & & & & Literals & & & & & & 
# strings and chars?


def fun_literals():
    

#   ^ ^ ^ ^ ^ Integers ^ ^ ^ ^ ^
    
    123
    1_234
    -123
    1 +2j # There are also complex number "Integers"!
    pass



#   ^ ^ ^ ^ Coding Modifiers ^ ^ ^ ^

#   ^ ^ ^ Radixed modifier ^ ^ ^

    0x12AB
    0o12
    0b110011

#   No Integer Suffix Operators in python 

#   ^ ^ ^ ^ ^ Floats ^ ^ ^ ^ ^

    1.2
    -3.4

#   ^ ^ ^ ^ Scientific Notation Encoding ^ ^ ^ ^

    1e2
    1e-3









#   & & & & & & String Formatting & & & & & &

def fun_string_formats():
    
    number = 1
    d_number = 2.344444
    ami_name = "Ami"

    # Alternative 1 - using f notation

    number_formatting = f"result: {20}"
    string_formatting = f"name is {ami_name}"
    
    # Alternative 2 - using .format notation

    number_formatting = "result: {}".format(20)
    string_formatting = "name is {}".format(ami_name)

    # Alternative 3 - using type string formatting

    number_formatting = "result: %d" % (20)
    string_formatting = "name is %s" % (ami_name)
    
#   ^ ^ ^ ^ ^ Format Specifiers ^ ^ ^ ^ ^

# flags? width? length? type(wrong type field - same behavior as C)? custom? 

#   ^ ^ ^ ^ Precision ^ ^ ^ ^ 
    
    print(f"{number} {d_number:.2f}")
    # to the right of the decimal point? 

# types? list all the primitive types?









#   & & & & & & Operators & & & & & & 
# lvalue? rvalue? more values?
# which operations are available? on what types? categories : numbers, string operators...
# map this:


"""

1 + 2
"Hi " + "Bye"
2 ** 3 # 8
10 / 3 # 3.333...
10 // 3 # 3
x = 60
x /= 3 # 20
x &= 3 # 0 bitwise operation that suprisingly outs 0
# ^= , <<= , := - what are these?
5 == 5 # true
5 is 5 # error (not an object)
x is x # true
1 in {1, 2} # true
{1, 2} in {1, 2} # false

"""


def fun_operators():
    

#   ^ ^ ^ ^ ^ Binding operator ^ ^ ^ ^ ^

    first = 1

#   ^ ^ ^ Multiple Binding ^ ^ ^
    
    # Alternative 1 - using "="" pipeline

    first_binding = second_binding = 12 

    # Alternative 2 - using list comprehension

    first_binding, second_binding = [12, 12]


#   ^ ^ ^ ^ ^ Arithmetical Operators ^ ^ ^ ^

    first = first + 3
    first += 3
# no INC unary operator :(

#   ^ ^ ^ ^ Order of operations (Arith) ^ ^ ^ ^
# general case? * before / in Python?



"""

//   ^ ^ ^ ^ Arithmetical Operators: Narrowing/Widening type Casting ^ ^ ^ ^


//   ^ ^ ^ type casting/C-casting ^ ^ ^

// No Automatic casting to wide in c++? a set of rules: https://www.youtube.com/watch?v=uI10H1jzw00
// lecture's coverage: not a good one, skipped over the literal subject and jumped into combining both casting and not even mentioning it!!!! 
// includes: implicit conversion of assigning a narrowed type (double) <- (int), and arithmetic conversion (double)/(int)
// what it should be like: exp cast 2/2(double);    imp cast 2/2.000 (was that so hard lecturer?????)
//   ^ ^ temps ^ ^ 
// a tool used in type cast
// putting wrong format variable type in printf/scanf WILL NOT GIVE TEMPS! It's undefined behaviour!
// Make temp variable arithmetic in tablet and map building upon these scenarios: 
/*double a = 12.5;
int b = 3, c = 4;
c = a + b;
The question to be asked in temp variable arithmetic is: how much temps in here? same or demotion or promotion temps? and who are they? answer: b' - promotion, (a + b')' - same, ((a + b')')' - demotion  

 

//   ^ ^ ^ Object Cast ^ ^ ^ 
// up casting
// down casting

same procedure for the following code:
int a = 3, b = 4;
int result;
result = (float) a/b;
answer: a' b' (a'/b')', ((a'/b')')'

trick long question (becuase it has undefined behaviour in it once):
int main() {
int n1 = 3;
int n2 = 15;
float n3 = 5.7;
float n4;

print(" %f \n", n3); // no temps, 5.700000 is the correct answer
print(" %d \n", n3); // unmatched format specifier - undefined behaviour, underfined answer
sum = (int)13.2; // (13.2)' -> ((13.2)')'
print(" %f \n", n3); //  13.00000 is the correct answer
sum = (int)5.7 + 13.2; 
print(" %f\n", n3); // this is a bit complicated: 5.7 -> 5 -> 5.0 -> 5.0 + 13.2 -> 18.2 is the correct answer

n4 = n2; / n1; // 15 -> 15.0, 3 -> 3.0, 15.0 / 3.0 -> 5.0
printf(" %f \n", n4); // 5.00000 is the correct answer
printf(" %d \n", n4); // unmatched format specifier - undefined behaviour, underfined answer
printf(" %d \n", (int)n4); // 5.0 -> 5, 5 is the correct answer

n4 = 
printf(" \n");

n4 = 
printf(" \n");
n4 = 
printf(" \n");

return 0;

}


// More Material: 
// map from this more about casts: https://stackoverflow.com/questions/28002/regular-cast-vs-static-cast-vs-dynamic-cast


//   ^ ^ ^ ^ ^ Logical Operators ^ ^ ^ ^ ^
// order of operations? (NOTE: AND before AND)
// == and != are the least in the order of operations, maybe finish the operations order ladder?
// false and true are exactly 0 and 1
// int five = 5, three = 3, zero = 0;
// five != 2;
// (three < five || three < zero) && five < zero;

// combining logical and arith: (arithmetic operators take precedence)
lecture's example:
int x = 2;
int y = (x > 5) + 1; // (x > 5) -> 0 -> 0 + 1 = 1

int a = 2, b;
((b = 2) == a) // (b = 2) -> (2) -> 2 == 2 -> 1, trick question: a wierd behaviour of c family languages - assignment returns the assign value, acts as arithmetic

*/

//   Overloading literal operators: https://en.cppreference.com/w/cpp/language/user_literal


}

"""







#   & & & & & & Variables & & & & & &

def fun_variables():
    
    bool(False)
    int(1)
    float(2.3)
    complex(4 + 5j)
    


#   ^ ^ ^ ^ ^ Type Hinting ^ ^ ^ ^ ^

    int_hint: int = 1
    float_hint: float = 2.3
    string_hint: str = "4"

# int imagine_this_is_out_of_any_function_global = 0;

# //   ^ ^ ^ ^ ^ Scope Sharing ^ ^ ^ ^ ^

# //   ^ ^ ^ ^ Global & Non-Local Varaibles ^ ^ ^ ^

# No static variables - only in methods (python also likes run time, probably not as java though :D)

    global global_variable # can be accessed as a global outside the local scope
    nonlocal_variable = 1  
    
    def witness_non_local():
        nonlocal nonlocal_variable    # non local variables are one outer function scoped

# No Block Nesting in python without the control flow tools

# No constants, compile or run time or built in enum (only as a library)

# No pointers or reference in Python, automatic memory allocation in play

#   ^ ^ ^ ^ ^ Data Collections ^ ^ ^ ^ ^
# # add list, tuple, range, dict, set, frozenset later in the DS portion
# // strings?









#   & & & & & & Flow Control & & & & & &


def fun_flow_control():
    pass


# //   ^ ^ ^ ^ ^ Statements ^ ^ ^ ^ ^
# //   ^ ^ ^ ^ Blocks ^ ^ ^ ^ 

# //   ^ ^ ^ ^ ^ Conditional Statements & & & & & &
# //   ^ ^ ^ ^ If & Else ^ ^ ^ ^ ^
# // map to the tablet - new skill for relations, building a graph under constraints (number of maximum relation checks on members, like finding the max of 3 numbers(linear relation) in no more than 3 tries)
# // and also - mapping the control flow diagram - a straight line digram that splits whenever theres a conditional statement:
# //             - - - - - - - -
# //    - - - - -| condition 1  | - - - - - (when theres else-if the split is more than two - 3 + )
# //             - - - - - - - - 
# // lecture's coverage:
# /*

# Example one: digit checking
# int main()
# {
# char input;

# printf("digit plz: %c \n", );

# scanf("%c", &input)

# if(input >= '0' %% input <= '9')
# {
# printf("yes");
# }

# print

# return 0;
# }

# //   ^ ^ ^ ^ Nested Ifs(and If-Else) ^ ^ ^ ^ ^

# Example two: bigger number finding:
# int main()
# {

# int n1, n2;
# printf("2 ints: \n");
# scanf(" %d %d ", &n1, &n2);
# print("bigger: \n")
# if(n1 > n2) printf("n1 \n");
# else printf("n2 \n");

# return 0;

# }

# Example three: three digit number checking

# #include <stdio.h>
# #define LOW_LIMIT 100
# #define HIGH_LIMIT 999

# int main()
# {
# int input;
# printf("num please");
# scanf("%d", &input);
# if(((input >= LOW_LIMIT) && (input <= HIGH_LIMIT)) && (input >= -1*HIGHER_LIMIT) && (input <= -1*LOW_LIMIT))) printf("3 digits");
# if(input >= 0) printf("positive");
# else printf("negative");

# return 0;
# }

# Example four: biggest number out of three

# #include <stdio.h>

# int main()
# {
# int n1, n2, n3;
# printf("Enter 3 nums\n");
# scanf("%d %d %d", &n1, &n2, &n3);
# printf("biggest");

# if(n1 > n2)
# {
# if(n1 > n3) printf("n1");
# else printf("n3");
# }
# else
# {
# if(n2 > n3) printf("n2");
# else printf("n3")
# }

# return 0;
# }



# //   ^ ^ ^ ^ Switch ^ ^ ^ ^ ^

# Example five: printing one/two/three/four according to the input

# main()
# {

# int num;
# printf("num pls")
# scanf("%d", &num);
# switch(num)
# {
# case 1: printf("one\n"); break;
# case 2: printf("two\n"); break;
# case 3: printf("three\n"); break;
# case 4: printf("four\n"); break;

# default: printf("another value\n"); break;

# }

# return 0;

# }

# Example six: +/-/* calculator

# #include <stdio.h>
# typedef enum {ADD = 'A', ADD_S = 'a', SUB = 'S', SUB_S = 's',  MUL = 'M', MUL_S = "m"} Operator;

# int main()
# {

# // inputs

# printf("two nums\n");
# scanf("%d %d", &n1, %n2);
# printf("operator now\n");

# switch()
# // finish this 

# return 0;
# }


# //   ^ ^ ^ ^ ^ Loops ^ ^ ^ ^ ^ 

# //   ^ ^ ^ ^ While Loops ^ ^ ^ ^

# //   ^ ^ ^ ^ For Loops ^ ^ ^ ^
# // list comprehension? (the one line multiple operations) 


# //   ^ ^ ^ ^ Empty portions in for loop ^ ^ ^ ^
# // no init? not condition? no counter?


# //   ^ ^ ^ Up-Counter For loops ^ ^ ^
# Lectures example:
# 1. Example one: printing hello world with iteration number three times

# int main()
# {

# for(int i = 0; i < 3; ++i) printf("Hello world, Iteration: %d \n", i+1);

# return 0;

# }

# 2. Example two: summing number from 10 to 150 through iterations

# int main()
# {

# for (int i = 10; sum = 0; i <= 150 ; sum += i ; ++i ) {} 

# }

# 3. Example three: 

# //   ^ ^ ^ Halving Counter For loops ^ ^ ^
# 4. Example four printing the powers of 2 from 32 to 1
#  int main()
# {

# printf("The twos power from 32 to 1 are:\n")
# for (int i = 32; i >= 1 ; i/2) print("%d \n", &d);

# return 0;

# }

# //   ^ ^ ^ ^ While Loops ^ ^ ^ ^

# Lecture examples
# 1. Example one inputting a name:

# #include <stdio.h>

# int main()
# {

# char input;
# printf("enter it")
# scanf("%c", &input)
# while(input != ' ')
# {

# printf("%c", input);
# scanf("%c", &input);

# }

# return 0;
# }

# 1. Example two - average grade calculation:

# int main()
# {

# int sum = 0, counter = 0, grade; 
# float average;
# printf("grade\n")
# scanf("%d", &grade)
# while(grade != -1)
# {
# sum += grade;
# ++counter;
# scanf("%d", &grade)
# }

# avg = (float)sum / counter;
# printf("%f\n", avg);

# return 0;

# }

# //   ^ ^ ^ Do-While Loops ^ ^ ^
# Example three - finding the maximum number

# #include 

# int main()
# {

# int num;
# int max = 0;
# do
# {
# printf("num");
# scanf("%d", &num);
# if(num > max) max = num;
# }
# while(num != -1);
# printf("max: %d\n", max);

# return 0;

# }
# */

# //   ^ ^ ^ ^ ^ Functions ^ ^ ^ ^ ^ 
# // add to tablet: 1. static stack segment layout (building the stack) + dynamic stack segment allocation in function calls (changing the values and releasing the layout parts) 
# // Lecture's coverage:
# /*
# 1. Example one:
# */

# //   ^ ^ ^ ^ Function prototyping ^ ^ ^ ^
# // comp time definition? ( adding the "-> type")
# // Lecture's coverage: 
# /*
# 1. Example one : powered numbers

# #include <stdio.h>

# int power(int, int);

# int main()
# {

# int n = 5;
# int r1 = power(2, n);
# int r2 = power(3, n);

# printf("results %d %d\n", r1, r2);

# return 0;

# }

# int power(int base, int exp)
# {

# int pow_num = base;

# for(int i = 1; i <= exp; ++i) pow_num = pow_num *= base;

# return pow_num;

# }

# Example two: printing stars
# #include <stdio.h>

# void print_stars(int, int)

# int main()
# {

# int len, wid;
# printf("%d %d\n", len, wid);
# scanf("%d %d", &wid, &len);
# print_stars();
# return 0;

# }

# void print_stars(int w, int l)
# {

# for(int i=0; i < l; ++i) {

# for(int j=0; j < w; ++j) printf("*");
# printf("\n");

# }

# return;

# }

# 3. Example Three: summing two numbers

# #include <stdio.h>

# sum_two(int, int);

# main
# {

# int n1 = 3, n2 = 4, adding;
# adding = sum_two(n1, n2);
# return 0;

# }


# sum_two (int d1, int d2)
# {

# int sum = d1 + d2;
# return sum;

# }

# 4. Example four: multiplying function

# #include <stdio.h>

# int multiply(int, int);

# int main()
# {

# int n1 = 2, int n2 = 3;
# print("%d", multiply(n1, n2));
# int n1 = 3, int n2 = 4;
# print("%d", multiply(n1, n2));

# return 0;

# }

# int multiply(int f, int s)
# return f*s;

# 5. Example five:  
# #include <stdio.h>




# */

# // anon function

# // function nesting

# //   ^ ^ ^ ^ Recursive Functions ^ ^ ^ ^

# //inlining functions

# //   ^ ^ ^ ^ ^ Function Overloading


# }



# //   & & & & & & Structs & & & & & &

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









#   < < < < < < < <   Functional Principles   > > > > > > > >   









#   ^ ^ ^ ^ ^ First Order Function ^ ^ ^ ^ ^

def first_order_functions(x_arg, y_arg, fun_arg): # Getting the functions as arguments 
    
    result = fun_arg(x_arg, y_arg)
    return result


#   ^ ^ ^ ^ ^ Function Composition ^ ^ ^ ^ ^

def composed_function(composing, composed, value):
    
    return composing(composed(value))

#   ^ ^ ^ ^ ^ Function Passing (var = func)


#   ^ ^ ^ ^ ^ Pure Functions ^ ^ ^ ^ ^
#?

# More Material:

# All subjects: https://www.google.com/search?q=functional+programming+principles&rlz=1C1GCEU_enIL934IL934&oq=functional+programming+pri&gs_lcrp=EgZjaHJvbWUqBwgAEAAYgAQyBwgAEAAYgAQyBggBEEUYOTIHCAIQABiABDIHCAMQABiABDIHCAQQABiABDIHCAUQABiABDIHCAYQABiABDIICAcQABgWGB4yCAgIEAAYFhgeMggICRAAGBYYHtIBCDU3MzZqMGo3qAIAsAIA&sourceid=chrome&ie=UTF-8
# transparency thing: https://medium.com/swlh/understand-the-key-functional-programming-concepts-bca440f1bcd6
# On pure functions: https://en.wikipedia.org/wiki/Pure_function

#   & & & & & & Functional Design & & & & & &

# pipeline somwhere? - mode to arch patterns 
# list comprehension? - where to put this?

# abstraction - nested function dispatch functions




"""




#   & & & & & & Object Oriented Design & & & & & &  

# maybe take a litlle bit of this for mapping pipelining?

""" # More Mapping needed:

def iterative_fibonacci(number_of_cell_in_the_sequence):
    previous, current = 0, 1
    for i in range(number_of_cell_in_the_sequence):
        previous, current = current, previous + current
    return previous

def composing_functions_version_2(first_logic, second_logic):
    return lambda value: first_logic(second_logic(value))

# as the error says: instead os assigning a lambda, a function should have a name for assignment
composing_functions_version_3 = lambda first, second: lambda value: first(second(value))

def black_box_summing():
    def sum_sequence_implementation_1(limit_index):
        result, index = 0, 1
        while index <= limit_index:
            result, index = result + index, index + 1
        return result

    def sum_cubes_implementation_1(limit_index):
        result, index = 0, 1
        while index <= limit_index:
            result, index = result + pow(index, 3), index + 1
        return result

    def pi_sum_implementation_1(limit_index):  # a function for going near pi the greater the number
        result, index = 0, 1
        while index <= limit_index:
            result, index = result + 8 / (index * (index + 2)), index + 4
        return result

    def successor(current_index):
        return current_index + 1

    def cube(number_to_cube):
        return pow(number_to_cube, 3)

    def sum_cubes_implementation_2(limit_index, step, next_index):
        result, index = 0, 1
        while index <= limit_index:
            result, index = result + step(index), next_index(index)
        return result

    def recycling_summation(limit, step, next_one):
        result, index = 0, 1
        while index <= limit:
            result, index = result + step(index), next_one(index)
        return result

    def identity_function(number):
        return number

    def sum_sequence_implementation_2(limit):
        return recycling_summation(limit, identity_function, successor)

    def pi_term(original_term):
        denominator = original_term * (original_term + 2)
        return 8 / denominator

    def pi_next(index):
        return index + 4

    def pi_sum_implementation_2(limit):
        return recycling_summation(limit, pi_term, pi_next)

    print("Summing cubes the simple way:", sum_cubes_implementation_1(3))
    print("Summing cubes the recycling way:", recycling_summation(3, cube, successor))
    print("Summing numbers the recycling way:", sum_sequence_implementation_2(10))
    print("Summing numbers the pi way:", pi_sum_implementation_2(1e6))  # 1e6 => 1 and 6 zeros

    def improving_golden_ratio():
        def golden_update(previous):
            return 1 / previous + 1

        def golden_near(value, term_on_previous, term_on_current):
            return approximate_equal(term_on_previous(value), term_on_current(value))

        def approximate_equal(left, right, precision=1e-3):
            return abs(left - right) < precision

        def square(number_to_square):
            return number_to_square ** 2

        def golden_test(guess):
            return golden_near(guess, square, successor)

        def iter_improve(update, test, iteration=1):
            while not test(iteration):
                iteration = update(iteration)
            return iteration

        print("Enclosing on the value of golden ratio:", iter_improve(golden_update, golden_test))
    improving_golden_ratio()

    print("The fifth cell in the fibonacci series is:", iterative_fibonacci(5))
    black_box_summing()


"""
Lecture 1:




















































Lecture 2:














































Lecture 3:























"""