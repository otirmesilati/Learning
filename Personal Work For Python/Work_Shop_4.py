# Playing with scopes

def math_playground():
    
    def adding(summand, addend):
        pass # let's scope some addition fun

    # and here let's scope some multiplication 
    
    def squaring(number_2_b_squared):
        return number_2_b_squared ** 2
    
    def sum_of_squares(first_to_square, second_to_square): 
        return squaring(first_to_square) + squaring(second_to_square)

    # this will be multiplication of squares
    # 
  

