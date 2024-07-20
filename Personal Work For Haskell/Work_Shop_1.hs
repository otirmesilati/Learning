main :: IO ()
main = putStrLn "hi"

-- GHCI playing around 
1 + 1
putStrLn "well done"

double x = x + x
double 3

:{
    map f list = 
        case list of
            [] -> []
            x:xs -> f x : map f xs
:}
map (+1) [1,2,3]

