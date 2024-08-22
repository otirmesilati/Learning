(* https://ocaml.org/manual/5.2/lex.html#sss:stringliterals *)
(* Lexical conventions, syno: went over the logic of radix, go on from "An integer literal" *)

(*   & & & & & & Commenting & & & & & &   *)

(* Single and 
multi line comments *)

(*
Nested
(* Comments within *)
Other comments
*)

(*   & & & & & & Literals & & & & & &   *)


2;;
3.4;;


'h';;
(*int_of_char 'h';; to find out ASCII value*)
"Bye";;

false;;

(* ^ ^ ^ ^ ^ Different Radixes ^ ^ ^ ^ ^*)

(*x/o/b adding in the end of the literal, give examples*)

(*   & & & & & & Operators & & & & & &   *)

(*   & & & & & & String Formatting & & & & & &   *)

(*   & & & & & & Conditional Statements & & & & & &   *)

(*   & & & & & & Loops & & & & & &   *)

2 + 4;;
3 * 2;;
3.2 +. 2.0;; (* different operators for different types operators (float operators)*)
(1 < 2);;
"Hello " ^ " " ^ "World";;



