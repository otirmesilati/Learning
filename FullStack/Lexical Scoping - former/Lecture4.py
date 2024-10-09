# ------------------------------- Simple Applicative examples ------------------------------
from datetime import date
from operator import getitem
from math import gcd

day = date(2013, 11, 4)
difference_day = str(date(2011, 12, 2) - day)
print(day)
print(difference_day)
print(day.year)
print(day.strftime('%A, %B %d'))
print("The types are: ", type(day), type(day.strftime), type(date), type(int))


# -------------------------------------- Long examples -------------------------------------
def rational_number_logic():
    def make_rat_implementation_1(numerator_for_rational, denominator_for_rational):
        return numerator_for_rational, denominator_for_rational

    def numerator(rational):
        return rational[0]

    def denominator(rational):
        return getitem(rational, 1)

    def add_rat(first_rational, second_rational):
        f_n, f_d = numerator(first_rational), denominator(second_rational)
        s_n, s_d = numerator(second_rational), denominator(second_rational)
        return make_rat_implementation_1(f_n * s_d + f_d * s_n, f_d * s_d)

    def mul_rat(first_rational, second_rational):
        return make_rat_implementation_1(numerator(first_rational) * numerator(second_rational),
                        denominator(first_rational) * denominator(second_rational))

    def eq_rat(first_rational, second_rational):
        return numerator(first_rational) * denominator(second_rational) == \
               numerator(second_rational) * denominator(first_rational)

    def str_rat(rational):
        return "The rational is: {0}/{1}".format(numerator(rational), denominator(rational))

    def make_rat_implementation_2(numerator_for_rational, denominator_for_rational):
        divisor = gcd(numerator_for_rational, denominator_for_rational)
        return numerator_for_rational // divisor, denominator_for_rational // divisor

    def make_pair(first, second):

        def pair_dispatch(rational_index):
            if rational_index == 0:
                return first
            elif rational_index == 1:
                return second
        return pair_dispatch

    def get_item_pair(pair, index):
        return pair(index)

    p = make_pair(1, 2)
    print(p(1))
    print(get_item_pair(p, 0))

    # tuple implementation using functionality based pair
    def recursive_sequence():
        def pair_tuple_implementation(value, tuple_remainder):
            return make_pair(value, tuple_remainder)

        def first(pair):
            return get_item_pair(pair, 0)

        def last(pair):
            return get_item_pair(pair, 1)

        new_pair = pair_tuple_implementation(3, pair_tuple_implementation(4, 5))
        print(new_pair, first(new_pair), last(last(new_pair)))
    recursive_sequence()


# ------------------------------------------ Tests -----------------------------------------
rational_number_logic()
