#   & & & & & & Comments & & & & & &

#   & & & & & & Literals & & & & & &

#   & & & & & & Operators & & & & & &

#   & & & & & & String Formatting & & & & & &

#   & & & & & & Conditional Statements & & & & & &

#   & & & & & & Loops & & & & & &


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
"Hi" # list
[1, 2, 3]
[1 ,"Hi", :an_atom]
'Hello' # char-list
<< 65, 66 , 67 >> # Printing ABC

# Operators

1 + 2
'Hi ' ++ 'Bye'
[1, 2] ++ [3]

# Continue organization from here

# Lists and Tuples are implemented differently, but are similar
# both can have a myriad of types

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

# Keyword Lists
list = [{:a,1}, {:b,2}]
[a : 1, b : 2] # the same as the previous keyword list


# https://www.tutorialspoint.com/elixir/elixir_data_types.htm
# Data types
