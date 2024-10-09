# &&&&&&&&&&&&&&&&&&&&&&&&&&&&   LESSON 02: ENVIRONMENT MODEL   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&

# ------------------------------- Simple Applicative examples ------------------------------

import operator


def using_square():
    def square(number_to_square):
        return number_to_square ** 2

    def sum_of_squares(first_to_square, second_to_square):
        return square(first_to_square) + square(second_to_square)

    def copy_of_sum_squares(first, second):  # NOTE: this resembles binding, but it's composing(mathematically)
        return sum_of_squares(first, second)

    print("Squaring 21:", square(21))
    print("Squaring 7:", square(operator.add(2, 5)))
    print("Squaring 9:", square(square(3)))
    print("Summing two squares example 1: ", sum_of_squares(3, 4))
    print("Summing two squares example 2: ", copy_of_sum_squares(3, 4))


def five_more(number_to_add_five):
    return number_to_add_five + 5
# -------------------------------------- Long examples -------------------------------------
# ------------------------------------------ Tests -----------------------------------------


using_square()
