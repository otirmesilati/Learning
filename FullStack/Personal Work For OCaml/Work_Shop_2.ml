(* https://ocaml.org/manual/5.2/lex.html#sss:stringliterals *)
(* syno: went over suffix encoding, continue to floats *)

(*   & & & & & & Commenting & & & & & &   *)

(* Single and 
multi line comments *)

(*
Nested
(* Comments within *)
Other comments
*)

(*   & & & & & & Literals & & & & & &   *)

(*   ^ ^ ^ ^ ^ Integers ^ ^ ^ ^ ^   *)

123;;
4_273;;
42_73;;
427_3 ;;
-34;;


(*  ^ ^ ^ ^ Integers: Type Modifiers ^ ^ ^ ^   *)

0xF5;;
0o12;;
0b110;;

(* No signed unsigned coding suffixes in python *) 
1l;;(*32int*) 
1L;;(*64int*)
1n;;(*nativeint*)

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



