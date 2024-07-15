# Playing with scopes

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

    def sum_n_mult_fof():
        pass # use both the previous functions
    
    # A function for summing
    # A function for multiplication
    # The Composite function

    # first Order functions - returned as data

    