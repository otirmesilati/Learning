# ------------------------------- Simple Applicative examples ------------------------------
from functools import reduce
from operator import mul, add

first_pair = ((1, 2), (3, 4), (5, 6))
for left, right in first_pair:
    if left == right:
        print("found equal pair!")
print(range(1, 10), tuple(range(5, 8)), tuple(range(4)))
digits = (4, 5, 6, 7)
print(5 in digits)
digits.index(5)
my_str = "hello"
print(len(my_str), my_str[3], 'e' in my_str, my_str[4:2:-1], "h" + "i", "bye" * 2)
print("Mississippi".count("issi"))  # string counts don't over-lap
print("6525".isnumeric(), "sTATUE".swapcase())
print(reduce(mul, (1, 2, 3, 4, 5)))


# -------------------------------------- Long examples -------------------------------------

def recursive_sequence():
    def pair_tuple_implementation(value, tuple_remainder):
        return value, tuple_remainder

    def first(tuple_p):
        return tuple_p[0]

    def last(tuple_p):
        return tuple_p[1]

    def tuple_length_iterative(tuple_p):
        t_len = 0
        while tuple_p is not None:
            tuple_p, t_len = last(tuple_p), t_len + 1
        return t_len

    def tuple_length_recursive(tuple_p):

        if tuple_p is None:
            return 0
        else:
            return tuple_length_recursive(last(tuple_p)) + 1

    def tuple_selection_iterative(tuple_p, index):
        while index > 0:
            tuple_p, index = last(tuple_p), index - 1
        return first(tuple_p)

    def tuple_selection_recursive(tuple_p, index):

        if index <= 0:
            return first(tuple_p)
        else:
            tuple_selection_recursive(last(tuple_p), index - 1)
    counts = pair_tuple_implementation(5, None)
    print(first(counts), last(counts))
    print(tuple_length_recursive(counts))
    print(tuple_selection_iterative(counts, 0))


def counting_with_while(sequence, value):
    count, index = 0, 0
    while index < len(sequence):
        if sequence[index] == value:
            count += 1
        index += 1
    return count


def counting_with_for(sequence, value):
    count = 0
    for val in sequence:
        if val == value:
            count += 1
    return count


def four_step_fib():

    def enum_fib(value_to_enumerate):
        print(range(1, value_to_enumerate + 1))
        return range(1, value_to_enumerate + 1)

    def map_fib(value_to_map):
        def map_method(value):
            previous, current = 0, 1
            for i in range(value - 1):
                previous, current = current, previous + current
            return current
        return map(map_method, value_to_map)

    def filter_fib(value_to_filter):
        def filter_method(value):
            return value % 2 == 0
        return filter(filter_method, value_to_filter)

    def accumulate_fib_1(value_to_acc):
        return sum(value_to_acc)

    def accumulate_fib_2(value_to_acc):
        return reduce(add, value_to_acc)

    def solution_fib_implementation_1(value_to_solve_for):
        return accumulate_fib_1(filter_fib(map_fib(enum_fib(value_to_solve_for))))

    def solution_fib_implementation_2(value_to_solve_for):
        return accumulate_fib_2(filter_fib(map_fib(enum_fib(value_to_solve_for))))

    numbers = (10, -11, 12)
    numbers = map(abs, numbers)
    print(tuple(map_fib(numbers)))
    print(tuple(filter_fib((2, 3, 4, 5))))
    print(solution_fib_implementation_1(20))
    print(solution_fib_implementation_2(20))


def four_step_words():
    def enum_words(string_to_enumerate):
        return tuple(string_to_enumerate.split())

    def map_words(string_to_map):
        def map_method(value):
            return value[0]
        return map(map_method, string_to_map)

    def filter_words(string_to_filter):
        def filter_method(value):
            return value[0].isupper()
        return filter(filter_method, string_to_filter)

    def accumulate_words_implementation_1(string_to_acc):
        return tuple(string_to_acc)

    def accumulate_words_implementation_2(string_to_acc):
        # return reduce(add, string_to_acc)
        return "  ".join(string_to_acc)

    def solution_words_implementation_1(value_to_solve_for):
        return accumulate_words_implementation_1(filter_words(map_words(enum_words(value_to_solve_for))))

    def solution_words_implementation_3(value_to_solve_for):
        return accumulate_words_implementation_2(filter_words(map_words(enum_words(value_to_solve_for))))

    def map_method_2(value):
        return value[0]

    def solution_words_implementation_2(value_to_solve_for):
        # NOTE: list comprehensions can be considered pipelines as well
        return tuple(map_method_2(word) for word in value_to_solve_for.split() if word[0].isupper())

    print(tuple("Lets check this out".split()))
    print(solution_words_implementation_1("A Nice Day It is"))
    print(solution_words_implementation_2("A Nice Day It is"))
    print(solution_words_implementation_3("A Nice Day It is"))


# ------------------------------------------ Tests -----------------------------------------
recursive_sequence()
four_step_fib()
four_step_words()
