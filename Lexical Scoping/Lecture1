# &&&&&&&&&&&&&&&&&&&&&&&&&&&&&   LESSON 01: EXPRESSIONS   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&

# ------------------------------- Simple Applicative examples ------------------------------

import urllib.request


def simple_compound_and_abstract_expressions():
    # Simple expressions: self evaluating
    56
    -1
    -1--1

    # Compound Expressions: simple + abstracted compound expressions
    1 / 2 + 1 / 4 + 1 / 8 + 1 / 16 + 1 / 32 + 1 / 64 + 1 / 128

    # Call expressions + math module use:
    max(7.5, 9.5)
    pow(2, 100)
    pow(100, 2)
    max(1, -2, 3, -4)
    max(min(1, -2), min(pow(3, 5), -4))
    import math
    math.sqrt(256)
    math.exp(1)
    from operator import add, sub, mul
    add(14, 28)
    sub(100, mul(7, add(8, 4)))

    # Name Binding:
    radius = 10
    radius
    radius * 2
    from math import pi  # also a bind
    pi * 71 / 223
    area, circumference = pi * math.pow(radius, 2), 2 * pi * radius
    area
    circumference
    max()
    f = max  # can also bind functions
    f = 2


# -------------------------------------- Long examples -------------------------------------
# firstly - get the path for the site AND open it AND save it in readable format
site_path_and_formatted_text = urllib.request.urlopen('https://inst.eecs.berkeley.edu//~cs61a/fa11/shakespeare.txt')

text_as_long_line = site_path_and_formatted_text.read()
decoded_text = text_as_long_line.decode()
words_from_the_text = set(decoded_text.split())


def shakespeare_example(words):
    words_requested_list = []
    for word in words:
        if len(word) <= 5 and word[::-1] in words:
            words_requested_list.append(word)
    word_set = set(words_requested_list)
    return word_set
# ------------------------------------------ Tests -----------------------------------------


print("The words found are: ", shakespeare_example(words_from_the_text))
