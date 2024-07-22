# Hello
IO.puts "Hi"

# literals
12
0xc
0o14
0b1100

:hello
true
false
"""
multi line
strings
"""

# bits and bytes coded into ASCII
<< 65, 66 , 67 >> # Printing ABC

# Lists and Tuples are implemented differently, but are similar
[1 ,"Hi", :an_atom]
{1, "Hi", :an_atom}

# Variables

first_var = 6
second_var = 7.8
third_var = "Hi"

IO.puts first_var
IO.puts second_var,
IO.puts third_var

# Pattern Matching

[v_1, v_2] = [1, 2]
