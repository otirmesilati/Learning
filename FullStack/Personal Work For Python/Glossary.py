# Python online emulator: https://www.programiz.com/python-programming/online-compiler/ 









#   < < < < < < < <   Language Principles   > > > > > > > >   
import functools # a module(element of a library) for working with functions, 2 classes: partial(fix arguments) and partialmethod








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










#   & & & & & & Data Streaming & & & & & & 

#   ^ ^ ^ ^ ^ Variable input ^ ^ ^ ^ ^

#   ^ ^ ^ ^ ^ Console Output ^ ^ ^ ^ ^ 









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

#   No Integer Suffix Operators in python (long was removed since python 3.0)

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
    

# No assignments, only dynamic (run-time) bindings, the get automated later in memory allocations

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
# no ++(INC) unary operator :(

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

#-single/double quotes ok, apostrophe not

"""

from lecture: 
a = 'Devops' 
arr = ['a', 'b', 123]    list
t = ('a', 'b')    tuple
dict = {'name' : 'aviel','age' : 28}
f = dict(fname="aviel", lname="buskila", age=34)

b = 'aviel'
d = ["aviel", "buskila", 34, True]    list can have multiple types
e = {"fname": "aviel", "lname": "buskila", "age": 34}
f = dict(fname="aviel", lname="buskila", age=34)     type hinting
list_of_people = [e, f]       list of lists
print(d[2])       
print(e["lname"])       printing the value, works the same as if there were single quotes
print(list_of_people)    
print("name is" + b)
"hi" + "bye"      concat
"hi" * 4          self concat times like in reg expressions


"""

#   ^ ^ ^ ^ List Comprehension ^ ^ ^ ^ 
# # add list, tuple, range, dict, set, frozenset later in the DS portion
# // strings?









#   & & & & & & Flow Control & & & & & &


def fun_flow_control():
    
    condition = 1
    outer_condition = 0
    elif_condition = 0

#   ^ ^ ^ ^ ^ Statements ^ ^ ^ ^ ^ 

# No Labels and gotos in python, And becuase there are no pointers

#   ^ ^ ^ ^ Conditional Statements ^ ^ ^ ^

#   ^ ^ ^ If & Else ^ ^ ^ 

    if condition:
        pass # condition TRUE -> first procedure

    else:
        pass # condition FALSE -> second procedure


#   ^ ^ ^ Null Checks ^ ^ ^

    val_to_null_check = 0


#   Alternative 1 - using 0 representations

    if val_to_null_check != 0 :
        pass
    
    if val_to_null_check != '\0':
        pass

#  Alternative 2 - using zero equating

    if not val_to_null_check:
        pass 

#   ^ ^ ^ None check - a type by itself(different from 0) ^ ^ ^

    if val_to_null_check is None:
        pass 

#   ^ ^ ^ Nested Ifs ^ ^ ^

    if outer_condition:
        pass # first procedure

    else:
        if elif_condition: # else if logic , same as the else-if example below
            pass # second procedure
        

#   ^ ^ Else-If ^ ^ 

    if outer_condition:
            pass # first procedure

    elif elif_condition: # same as the example above
        pass # second procedure


# No Switch in python


#   ^ ^ ^ ^ ^ Loops ^ ^ ^ ^ ^ 

# // // break? continue?
    
    """
    from lecture writings:
    current_name = input("what is your name: ")
    while current_name != "quit":
    if current_name == "eden":
    continue
    # inputting eden will make an infinite loop logic
    if current_name == "ronen":
    break
    """

#   ^ ^ ^ ^ While Loops ^ ^ ^ ^

    while_index = 0
    while while_index <= 5: # condition checking BEFORE the procedure ran
        pass # while procedure 


# No do while loops in python

#   ^ ^ ^ ^ For Loops ^ ^ ^ ^
for_index = 0

# // for(int for_index = 0; for_index <= 5 ; ++for_index) // same as above examples
# // {
# //     // for procedure
# // }



# // //   ^ ^ ^ ^ Empty portions in for loop ^ ^ ^ ^
# // // no init? not condition? no counter?

# // // for(;;)
# // // for(;;)
# // // for(;;)

# }

# // //   ^ ^ ^ ^ ^ Functions ^ ^ ^ ^ ^ 

# // int int_return_function(){}
# // // also_int_return_function(){} // defualt int type - though may cause a warning

# // //   ^ ^ ^ ^ Function prototyping ^ ^ ^ ^

# // void void_prtp_func_1(); // function declaration
# // void void_prtp_func_2();
# // // main procedure
# // void void_prtp_func_1(){ return; } // function definition
# // void void_prtp_func_2(){} // in void functions - the return statement may be omitted and the function will return in closing block

# // // add to tablet: 1. static stack segment layout (building the stack) + dynamic stack segment allocation in function calls (changing the values and releasing the layout parts) 


# // //   ^ ^ ^ ^  Argument Passing ^ ^ ^ ^ 

# // //   ^ ^ ^ Passing By Value ^ ^ ^

# // void pass_by_value(int val){}


# // //   ^ ^ ^ Passing By Adress ^ ^ ^

# // void pass_by_adress(int* adr){}
# // // add this - pass_by_adress_2(int adr[]){} ? or in the array section ? 


# // //   ^ ^ ^ Passing By Reference ^ ^ ^

# // void pass_by_reference(int& ref){}

# // // anon function? from version 11? what's the syntax?

# // //   ^ ^ ^ ^ Recursive Functions ^ ^ ^ ^

# // void rec_func(){rec_func();} // infinite loop logic


# // //   ^ ^ ^ ^ Pointer Functions ^ ^ ^ ^
# // // finish this from lecture 12

# // //   ^ ^ ^ ^ Function Overloading ^ ^ ^ ^

# // int overloaded_func(int val){}
# // int overloaded_func(float val){} // function overloading - same function name but different parameters
# // int overloaded_func(int val1, float val2){} // function overloading - same function name but different parameters

# // //   ^ ^ ^ ^ Defualt Argument Function Overloading ^ ^ ^ ^

# // int int_overloaded_func(int val1 = NULL, float val2 = NULL){} 
# // // int overloaded_func(int val1, float val2 = NULL){} - part defaulting is possible
# // // int overloaded_func(int val1, float val2 = NULL){} - this is not, the order must be from the right to left

# // //   ^ ^ ^ ^ Function Templates ^ ^ ^ ^



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













#   < < < < < < < <   Object Oriented Principles   > > > > > > > >  









# //   & & & & & & Structs & & & & & &




# //   & & & & & & Classes & & & & & &
# // Add function overloading (defaukt values? and the not possible case when playing with their order?) above after updating to the latest C Patch,
# // planning an object and UMLing skills to tablet
# //   ^ ^ ^ ^ ^ Include's Double Code Generation Avoidance ^ ^ ^ ^ ^ 

# #ifndef MY_CLASS

# #define MY_CLASS
# // my class decleration here

# #endif
 

# //   ^ ^ ^ ^ ^ Class decleration ^ ^ ^ ^ ^

# class My_class
# {

# //   ^ ^ ^ ^ Class Level Access modifiers (only level in C++) ^ ^ ^ ^

# // private unless stated otherwise

# public:
# private:
# protected:

# };


# //   ^ ^ ^ ^ Class Attributes/Fields ^ ^ ^ ^

# class My_fields_1
# {

#     char char_field;
# 	int int_field;
# 	long long_field;
# 	float float_field;
# 	double double_field;

# };


# //   ^ ^ ^ ^ Static Attributes ^ ^ ^ ^

# //   ^ ^ ^ Static Attribute Declaration

# class My_fields_2_with_static
# {

# 	int regular_int_field;
# 	static int static_int_field;

# };


# // My_fields_2_with_static::static_int_field = 0;


# // these two classes will be used for the multi inheritance example
# class My_inhereted
# {
# public:

# 	My_inhereted()
# 	{
# 		prmitive_field = 0;
# 	}
# 	My_inhereted(int pf)
# 	{
# 		prmitive_field = pf;	
# 	}

# 	int prmitive_field;
# };

# class Another_inhereted
# {
# 	public:
# 	Another_inhereted(){another_primitive = 0;}
# 	Another_inhereted(int ani){another_primitive = ani;}
# 	int another_primitive;
# };


# //   ^ ^ ^ ^ ^ Methods ^ ^ ^ ^ ^

# //   ^ ^ ^ ^ Virtual Methods ^ ^ ^ ^

# class My_vritual_methods
# {
# 	public:

# 	void function_not_to_override(){}
# 	virtual void virtual_function_to_overide(){}
# 	virtual void virtual_function_to_overide_and_use(){}
# 	virtual void virtual_function_to_hide(int hide_this){}
	
# 	private:

# 	int int_to_hide;
# };

# class witness_virtual_method_use : public My_vritual_methods
# {
# 	public:

# 	virtual void virtual_function_to_override(){}
# 	virtual void virtual_function_to_overide_and_use(){virtual_function_to_overide_and_use();}
# 	virtual void virtual_function_to_hide() {} // function_to_hide(); will call inherntee's function //
	
# };

# //   ^ ^ ^ Polymorphic methods ^ ^ ^   //

# class poly_methods_inherited // 1st requirement: inherited has virtual method
# {
# 	public:

# 	virtual void my_virtual_polymorphic_method(){}
# };

# class poly_methods_inheritee : public poly_methods_inherited 
# {
# 	public: 

# 	virtual void my_virtual_polymorphic_method(){} // 2nd requirement: inheritee overrides 
# };

# class ploy_methods_upcasting 
# {
# // what here? note the three requirements?
# };


# //   ^ ^ ^ ^ Constructor ^ ^ ^ ^   //

# class My_methods : public My_inhereted
# {

 

# //   ^ ^ ^ Init List ^ ^ ^
# My_methods(int pri_f_1, int pri_f_2, int* poi_f_1) 

# : 

# primitive_field_1(NULL),
# primitive_field_2(NULL),
# pointer_field_1(nullptr)

# {

# }


# //   ^ ^ ^ Default Constructor ^ ^ ^   //

# My_methods()

# {
# 	primitive_field_1 = NULL;
#     primitive_field_2 = NULL;
#     pointer_field_1 = nullptr;

# //   ^ ^ Object Relations (through initiation)

# 	// imagine the following pointer is passed as an argument..
# 	int a = 5;
# 	int* a_p = &a; 

# 	pointer_field_1; // My_methods uses object
# 	pointer_field_1 = new int; // My_methods responsible for object's lifetime
# 	pointer_field_1 = a_p; // My_methods is not responsible for the object's lifetime 

# }


# //   ^ ^ ^ C'tor Delegation ^ ^ ^

# My_methods(int pri_f_1)

# :

# My_methods(pri_f_1, NULL, nullptr) // delegating work for the C'tor mentioned in the init list portion

# {

# }


# //   ^ ^ ^ Copy Constructor ^ ^ ^  //

# My_methods(const My_methods& other_obj)

# : 

# My_methods() // def c'tor delgation for initialization 

# {
	
# 	primitive_field_1 = other_obj.primitive_field_1;
# 	primitive_field_2 = other_obj.primitive_field_2;
# 	pointer_field_1 = other_obj.pointer_field_1;

# }


# //   ^ ^ ^ Super C'tor inocation ^ ^ ^

# My_methods(int pf_1, int pf_2)
# :
# My_inhereted(pf_1)
# {
# 	primitive_field_1 = pf_1;
#     primitive_field_2 = pf_2;
#     pointer_field_1 = nullptr;
# }


# //   ^ ^ ^ ^ Destructor ^ ^ ^ ^ //

# ~My_methods()
# {
# 	delete pointer_field_1;
# }

# //  ^ ^ ^ Virtual Destructor ^ ^ ^ //
# // No Virtual C'tor! C++ Is statically typed -> space allocated needs to be known at compile time //
# virtual ~My_methods() = 0; 

# //   ^ ^ ^ ^ Assignment operator ^ ^ ^ ^ //

# My_methods& operator=(const My_methods& other_obj) // by reference return type - to enable piping assigntment/multi assignment
# {
# 	if (this!= &other_obj) // checking for double pointing
#     {
#         delete pointer_field_1; // wipe out existing data

#         // do the deep copy //
#         pointer_field_1 = new int; // do the deep copy //
#         *pointer_field_1 = *other_obj.pointer_field_1;
#     }

#     return *this; 
# }


# //   ^ ^ ^ ^ Friend relations ^ ^ ^ ^

# 	friend bool equals(const My_methods&); // a method that has "private modifier" access
# 	friend class My_inherited; // a class that has "private modifier" access

# 	int primitive_field_1, primitive_field_2;
# 	int* pointer_field_1;


# };


# //   ^ ^ ^ ^ ^ Inheritance ^ ^ ^ ^ ^ 

# //   ^ ^ ^ ^ Multi Inheritance ^ ^ ^ ^
# // add to tablet the skill of graphing creation and destruction of objects, especially with virtual inheritance

# class My_diamond_inheritance: public My_inhereted, Another_inhereted // diamond inheritance
# {

# };


# //   ^ ^ ^ ^ Virtual Inheritance ^ ^ ^ ^

# class My_base_inherited{};
# class My_first_virt_inherited : public virtual My_base_inherited{};
# class My_second_virt_inherited : public virtual My_base_inherited{};
# class My_inheriting : public My_first_virt_inherited, My_second_virt_inherited{}; // looks like regular multi inheritance from here
# //here inheriting's c'tor can invoke base c'tor: My_inhereting(const My_inhereting& other) : My_base_inherited(other) .... unlike in the non virtual diamond case 


# //   ^ ^ ^ ^ ^ DownCasting : Static & Dynamic Cast As RTTI ^ ^ ^ ^ ^

# class A_Class{};
# class B_Class : public A_Class{};
# class C_Class : public B_Class{};

# A_Class* a_pointer = new A_Class();
# C_Class* c_pointer = new C_Class();

# B_Class* b_pointer_c_type_cast_to_show_similarity_in_syntax = (C_Class*)c_pointer;
# B_Class* b_pointer_that_shows_similarity_in_syntax = static_cast<C_Class*>(c_pointer); // Down-Casting using static-cast -> virtual-inh base class cant be down-casted this way -> no complete object in compile time
# B_Class* another_b_pointer_also_similar_in_syntax = dynamic_cast<C_Class*>(c_pointer);

# //   ^ ^ ^ ^ Referential Dynamic Cast ^ ^ ^ ^   //

# B_Class& b_reference = (C_Class&)*c_pointer;
# B_Class& static_b_reference = static_cast<C_Class&>(*c_pointer);  
# B_Class& dynamic_b_reference = dynamic_cast<C_Class&>(*c_pointer);


# //   ^ ^ ^ ^ Slicing ^ ^ ^ ^

# A_Class slice_this_from_b_to_a = B_Class(); 


# //   ^ ^ ^ ^ ^ Reflection ^ ^ ^ ^ ^   //
# // typeinfo? typeid?
 
# //   ^ ^ ^ ^ ^ Inlining methods ^ ^ ^ ^ ^   //

# class My_inline
# {
# 	void implicit_inline(){}
# 	void explicit_inline(); // declaration
# };

# inline void My_inline::explicit_inline(){} // definition

# // error handling?
# // template classes? 
# // reflections 












































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
""" from lecture writings:
# list comprehension
result = [i for i in range(1, 101) if i % 7 != 0 and "7" not in str(1)]
print(result)

names = ["natan", "shay", " ronen", "aaron"]
search = [i.upper() for i in names if "n" in i]
print(search)

"""
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