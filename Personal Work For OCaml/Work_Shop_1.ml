(* Literals and Operators*)

50 * 50 ;;
6.28;;

"Hi";;
true;;

(*Assignment*)
let my_int = 5;;
my_int;;

let u = [1; 2; 3; 4];;
["this"; "is"; "nice"];;

9::u;;
(* if as an expression!*)
2 * if "hello" = "world" then 3 else 5;;

(* localizing variables*)
let y = 50 in y * y;;
(*Adding a y evaluation here will give an error*)

let a = 1 in
let b = 2 in
 a + b;;

(* =? assignment and eqality test *)
let as_and_eq = "hi" = "hello";;

(*Functions As Values in OCaml*)
let square x = x * x;;
square 50;;

(* Anon functions *)
fun x -> x * x;;