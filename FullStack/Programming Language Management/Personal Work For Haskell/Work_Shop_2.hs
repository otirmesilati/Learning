:t "hi there"

-- Variables 

let first_var = 2
let second_var = 3
putStrLn "sum: "
print(first_var + second_var)

-- lists and list comprehension

[1, 2]
["a", "b", "c", "d"]

[x * 2| x <- [1 .. 10]]
[n * 3| n <- [1 .. 5]]

-- tuples

(1, '1')
(1, 'a', 2' 'b')