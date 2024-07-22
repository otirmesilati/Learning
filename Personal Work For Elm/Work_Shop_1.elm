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

isGoodName name = 
 if String.length name <= 20 then
  (True, "Name Accepted!")
 else
  (False, "Name Declined!")

isGoodName "Tom"

-- Record and record accessingqupdating after creation
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
