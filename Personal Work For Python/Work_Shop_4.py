# Playing with scopes

def math_playground():
    
    def adding(summand, addend):
        summand + addend

    def adding_plus(summand, first_addend, second_addend):
        pass

    def termial(number_to_termiate):
        accumulator = 0
        for i in range(number_to_termiate):
            accumulator += number_to_termiate

    # and here let's scope some multiplication 
    
    def squaring(number_2_b_squared):
        return number_2_b_squared ** 2
    
    def sum_of_squares(first_to_square, second_to_square): 
        return squaring(first_to_square) + squaring(second_to_square)

    # this will be multiplication of squares
    # 
  

