
2.3
# ^ ^ Scientific notation ^ (finish this properly)

'Hi'
"Hi"

{1: "Hi", 2: "bye"}
{1,2,3}
frozenset({1,2,3})
[1, 2, 3]
(1, 2, 3)
range(3)
b"Hi"
None

# type conversions - what about unsigned? signed? (more hard coded literals)

#   & & & & & & Operators & & & & & &

#   & & & & & & String Formatting & & & & & &

#   & & & & & & Python-specific: Lists & & & & & &

#   & & & & & & Python-specific: Tupples & & & & & &

# data collections 
# sets
{1, 2, 3}
# {1, {2}} error - unhashable type

# lists - ordered + mutable + duplicates
[1 , 2 , 3 , 4]
[1, [2]] 
first_list = [1, 2, 3, 2]
first_length = len(first_list)
second_list = [1, "2", True]
tuple_to_list = list((2, 3, 4))
scnd_elm = first_list[1] # same as [-1]
first_list[1] = "changing value in list"
second_list[1:3] = [2, 3] # changing a range of item values -> [1, 2 , 3]
second_list[1:2] = [6, 7] # -> [1, 6, 7, 3] returns a bigger list
second_list[1:3] = [8] # -> [1, 8, 3] returns a smaller list
third_list = ["a", "b", "d"]
third_list.insert(2, "c") # -> ["a", "b", "c", "d"] adds "c" element
third_list.append("e") # -> ["a", "b", "c", "d", "e"] inserts to the end
# Copying lists as anser to binding rather than copy
copied_list = [1, 2, 3]
copy_list = copied_list.copy()
# also Works - using the 


third_list.extend(["f", "g"]) # -> ["a", "b", "c", "d", "e", "f", "g"] extend = appending a list of items
third_list.extend(("h", "i")) # -> ["a", "b", "c", "d", "e", "f", "g", "h", "i"] extend also works on any sequence
fourth_list = ["1", "2", "3", "2"] 
fourth_list.remove("2") # -> ["1", "3", "2"] gets rid of the first occurence when duplicates exist
fifth_list = ["alpha", "beta", "gamma"]
scnd_elm = fifth_list.pop(1) # -> ["alpha", "gamma"]
fifth_list.pop() # -> ["alpha"] removes last item
del fifth_list["alpha"] # -> [] returns an empty list
del third_list[""] # -> deletes whole list
second_list.clear() # -> [] does the same as del on list\
sixth_list = [3, 4, 5]
# iterations 
for n in sixth_list:
    sixth_list[n] += 1
count = 0
seventh_list = [1, 2, 3]
for n in range(len(seventh_list)): # using for + len
    count += 1
count = 0
while count < len(seventh_list): # using while + len
    count += 1
[print(n) for n in seventh_list]
fruit_list = ["apple", "banana", "cherry", "kiwi", "mango"]
# list comprehension forms 
[fruit for fruit in fruit_list if "a" in fruit] # [expression for item in iterable if condition == True]
eighth_list = [x for x in range(10)  if x < 5] # comprehension and outcome
eighth_list = [x.upper() for x in fruit_list] # comprehensions - changing outcome
eighth_list = ["Hello" for x in fruit_list] # comprehension - changing outcome
eighth_list = [x if x != "banana" else "orange" for x in fruit_list] # comprehension - alternative way to condition and outcome
ninth_list = ["Benny", "Avi", "Donald", "Charlie"]
ninth_list.sort() # Wil be done Alpha_Numerically
# sorting ["Benny", "Avi", "Donald", "Charlie", 67] will error - the sorter can't handle multiple types
# sorting is case sensitive 
first_sort_list = [11, 23, 35, 48]
first_sort_list.sort(reverse = True)
def my_sort_logic():
    return n - 1
first_sort_list.sort(key = my_sort_logic)


# tuples - immutable
(1, 2, 3, 4)
(1, (2))

# dictonaries (single and double quotes are the same)
{"hi" : 1, 'Bye': 2}


# false converting values
bool("")
bool(0)
bool(())
bool([])


# operations and assignments
1 + 2
"Hi " + "Bye"
2 ** 3 # 8
10 / 3 # 3.333...
10 // 3 # 3
x = 60
x /= 3 # 20
x &= 3 # 0 bitwise operation that suprisingly outs 0
# ^= , <<= , := - what are these?
5 == 5 # true
5 is 5 # error (not an object)
x is x # true
1 in {1, 2} # true
{1, 2} in {1, 2} # false

# strings - no chars in python!
my_str = "hi"
h_letter = my_str[0]
str_length = len(my_str)
# slicing a string
to_slice = "abcdefg" 
to_slice[:5]
to_slice[2:]
to_slice[2:5]
to_slice[-5:-2] # going from the end, though still left to right
# modifying string
up_and_down = "wow"
up_and_down.upper()
up_and_down.lower()
leave_out_starting_space = " wow"
leave_out_starting_space.strip()
replace_me = "replace"
replace_me.replace("replace","me")
split_to_sub_strings = "split.me"
split_to_sub_strings.split(".")
# f-strings



# escape characters
new_line = "\n"
vikings = "these are called \"vikings\" "

# flow control
if 5 > 3:
    "yay"
else:
    "nay"

# randoming from module
import random
print(random.randrange(1, 10))

# variable types are inferred in runtime
x = 6
x = int(6) # compile time type declaration
y = "Hi"
whats_the_type = type(x)

# multi-assignment
y, x = "Hi", 6
x = y = 2 
x, y = [1, 2]


# scopes
def global_func():
    global x 
    # one difference between nonlocal and global here :)
    # no requirement for prebinding! (nonlocal requires
    #it in the outer block)
    x = 5

print(x) # Error
global_func() # a call for binding x
print(x) # 5
