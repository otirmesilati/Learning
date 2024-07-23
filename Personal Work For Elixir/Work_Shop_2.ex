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

# Operators on the literals

1 + 2
'Hi ' ++ 'Bye'

# bits and bytes coded into ASCII

<< 65, 66 , 67 >> # Printing ABC

# Lists and Tuples are implemented differently, but are similar

# both can have a myriad of types
[1 ,"Hi", :an_atom] # list
'Hello' # Char-List
IO.puts(is_list(to_char_list("hełło"))) # converting to list
IO.puts(is_binary(to_string('hełło'))) # converting from list (to binary)

{1, "Hi", :an_atom} # Tuples

# Variables

first_var = 6
second_var = 7.8
third_var = "Hi"

IO.puts first_var
IO.puts second_var,
IO.puts third_var

# Pattern Matching

[v_1, v_2] = [1, 2]

# string interpolation

first_str = "world"
second_str = "hello #{first_str}"
third_str = "hello" <> "world"
IO.puts(String.length("hello"))
IO.puts(String.reverse("world"))
