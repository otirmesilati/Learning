-- this seems a bit lacking - go from the begining !!

-- literals 

1
2.4
"hi"
pi

-- operators

2 + 3
"hi " ++ "you"

-- variable binding 

myVar = 2
myVar = 3


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

-- functions

numbers =
 [1, 2, 3, 4, 5]

List.sort numbers
incrament n = 
 n + 1

is_bigger_than_5 number = 
 if number > 5 then 
  "yay"
 else
  "nay"

List.map incrament numbers -- piping/mapping

-- Tuples and conditional expressions

isGoodName name = 
 if String.length name <= 20 then
  (True, "Name Accepted!")
 else -- else is a must in elm
  (False, "Name Declined!")

isGoodName "Tom"

-- Record and record accessing/updating after creation
John =
 { First = "John"
 , last = "hobson"
 , age = 52
 }

john.last
.last john

john = { first = "john", last = "Hobson", age = 56 } -- creating new record
{ john | last = "Adams"} -- updating record attribute
{ john | last = "Hobson" }
-- { john | hi = "hi" } will be a compilation mistake 

celebrateBD = 
 { person | age = person.age + 1}
 
celebrateBD john

-- https://elmprogramming.com/elm-repl.html
-- elm repl