-- let's start with the literals 
1
2 + 3
"hi " ++ "you"

greet name = -- function definition
 "Hello " ++ name ++ "!"
 -- empty space for end of the function

greet "Alice"
greet "Bob"

names =
 ["Alice", "Bob", "Charlie"]
 
List.isEmpty names
List.length names