# single line comments 
"""
multiple line comments
"""

# literals 
1
2.3
'Hi'
"Hi"

# operations
1 + 2
"Hi " + "Bye"

# variable types are inferred in runtime
x = 6
x = int(6) # compile time type declaration
y = "Hi"
whats_the_type = type(x)

# multi-assignment
y, x = "Hi", 6
x = y = 2 
x, y = [1, 2]

# lists - mutable
[1 , 2 , 3 , 4] 

# tuples - immutable
(1, 2, 3, 4)

# dictonaries (single and double quotes are the same)
{"hi" : 1, 'Bye': 2}

# scopes
def global_func():
    global x
    x = 5

print(x) # Error
global_func() # a call for binding x
print(x) # 5



# playing with functions
def math_playground():
    
    def adding(summand, addend):
        summand + addend

    def adding_plus(summand, first_addend, second_addend):
        adding(summand, first_addend) + second_addend

    def termial(number_to_termiate):
        accumulator = 0
        for i in range(number_to_termiate):
            accumulator = accumulator + number_to_termiate
        return accumulator

    def multiplication(multiplier, multiplicand):
        return multiplicand * multiplier

    def multiplication_plus(multiplicand, first_multiplier, second_multiplier):
        return multiplicand * first_multiplier * second_multiplier
    
    def squaring(number_2_b_squared):
        return number_2_b_squared ** 2
    
    def sum_of_squares(first_to_square, second_to_square): 
        return squaring(first_to_square) + squaring(second_to_square)

    def multiplication_of_squares(first, second):
        return squaring(first) * squaring(second)
        
    print(adding(1,2))
    print(adding_plus(1,2,3))
    print(termial(3))
    print(multiplication(2,3))
    print(multiplication_plus(2,3,4))
    print(squaring(4))
    print(sum_of_squares(2,3))
    print(multiplication_of_squares(4,5))

    # Classes

    class greeter():
        def __init__(self, name):
            self.name = name
        
        def say_hi(self):
            print("Hi {}")

        def say_bye(self):
            pass

        # Finish the class


    # First Order functions - sent as parameters
def fof_functioning():

    def inc(argu):
        return argu + 1
    
    def inc_fof(argu, func):
        return func(argu)

    def sum_f(f_var, s_var):
        return f_var + s_var

    def mult_f(f_var, s_var):
        return f_var * s_var

    def mult_n_inc_fof(arg_1, arg_2, func_1, func_2):
        return func_2(func_1(arg_1, arg_2))
    
    
    # first Order functions - returned as data
    def ret_10():
        return 10
    
    def ret_me():
        print(ret_10())
        return ret_me
    
    def print_10():
        func = ret_me
        func()

    #FoF - dispatch function
    def add_or_mult(arg1, arg2):
        def d_func(choosing): # dispatch
            if choosing == 0:
                return sum_f(arg1, arg2)
            elif choosing == 1:
                return mult_f(arg1, arg2)
        return d_func
        
    def using_d_func():
        arguments_to_operate = add_or_mult(4,5)
        add_result = arguments_to_operate(0)
        mult_result = arguments_to_operate(1)
        print(add_result, mult_result)

    #FoF - keeping locals
    encp_var = 0

    def inc_my_var():
        
        nonlocal encp_var
        
        def d_func(choosing):
            if choosing == 0:
                encp_var = encp_var + 1
            elif choosing == 1:
                encp_var = encp_var - 1
            else:
                encp_var = encp_var * 2
            return encp_var
        return d_func 

    # lambda anonymous function
    def lam(a):
        return lambda b: a + b
    
    def lam_1(a, b):
        return lambda: a + b
    
    def lam_2():
        return lambda x: x
    
    def lam_3(my_func):
        return lambda x: my_func(x)
    