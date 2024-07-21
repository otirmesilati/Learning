-- let's start with the literals 
1
2 + 3
"hi " ++ "you"

greet name = -- function definition
 "Hello " ++ name ++ "!"
 -- empty space for end of the function

greet "Alice"
greet "Bob"

-- Lists

names =
 ["Alice", "Bob", "Charlie"]
 
List.isEmpty names
List.length names
List.reverse names

numbers =
 [1, 2, 3, 4, 5]

List.sort numbers

incrament n = 
 n + 1

List.map incrament numbers -- piping/mapping

-- Tuples