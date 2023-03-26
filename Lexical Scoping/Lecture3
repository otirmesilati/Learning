# ------------------------------- Simple Applicative examples ------------------------------

def iterative_fibonacci(number_of_cell_in_the_sequence):
    previous, current = 0, 1
    for i in range(number_of_cell_in_the_sequence):
        previous, current = current, previous + current
    return previous


def composing_functions_version_1(first_logic, second_logic, value):
    def composed_return():
        return first_logic(second_logic(value))


def composing_functions_version_2(first_logic, second_logic):
    return lambda value: first_logic(second_logic(value))


# as the error says: instead os assigning a lambda, a function should have a name for assignment
composing_functions_version_3 = lambda first, second: lambda value: first(second(value))

# -------------------------------------- Long examples -------------------------------------


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

# ------------------------------------------ Tests -----------------------------------------


print("The fifth cell in the fibonacci series is:", iterative_fibonacci(5))
black_box_summing()
