(* Coursera Programming Languages, Homework 3, Provided Code *)

exception NoAnswer

datatype pattern = Wildcard
		 | Variable of string
		 | UnitP
		 | ConstP of int
		 | TupleP of pattern list
		 | ConstructorP of string * pattern

datatype valu = Const of int
	      | Unit
	      | Tuple of valu list
	      | Constructor of string * valu

fun g f1 f2 p =
    let 
	val r = g f1 f2 
    in
	case p of
	    Wildcard          => f1 ()
	  | Variable x        => f2 x
	  | TupleP ps         => List.foldl (fn (p,i) => (r p) + i) 0 ps
	  | ConstructorP(_,p) => r p
	  | _                 => 0
    end

(**** for the challenge problem only ****)

datatype typ = Anything
	     | UnitT
	     | IntT
	     | TupleT of typ list
	     | Datatype of string

fun only_capitals l = List.filter (fn s => Char.isUpper(String.sub(s, 0))) l;

fun longest_string1 l = foldl (fn (x, s) => if String.size(x) > String.size(s) then x else s) "" l;

fun longest_string2 l = foldl (fn (x, s) => if String.size(x) >= String.size(s) then x else s) "" l;

fun longest_string_helper f l = foldl (fn (x, s) => if f(String.size(x), String.size(s)) then x else s) "" l;

fun longest_string3 l = longest_string_helper (fn (a, b) => a > b) l;

fun longest_string4 l = longest_string_helper (fn (a, b) => a >= b) l;

val longest_capitalized = longest_string1 o only_capitals;

(* whoops, ran out of time... *)
