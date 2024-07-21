main :: IO ()
main = putStrLn "hi"

-- stack/cabal concurrent and say libraries 

import Control.Concurrent.Async
import Say
concurrently_ (sayString "Hello") (sayString "World")

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

-- load files and import libraries 
:load hello.hs
main

:import Data.Bits
shiftL 32 1
clearBit 33 0 

-- reflector API
:type putStrLn
