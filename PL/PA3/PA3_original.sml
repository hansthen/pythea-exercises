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

(**** you can put all your code here ****)
(* ex 1 *)
fun only_capitals(strings: string list) = 
    List.filter (fn x => Char.isUpper(String.sub(x,0))) strings

(* ex 2 *)
fun longest_string1(strings: string list) = 
    List.foldl (fn (x,y) => if String.size(x) > String.size(y) then x else y) "" strings

(* ex 3 *)
fun longest_string2(strings: string list) = 
    List.foldl (fn (x,y) => if String.size(x) < String.size(y) then y else x) "" strings

(* ex 4 *)
fun longest_string_helper f strings =
    List.foldl (fn (x,y) => if f(String.size(x),String.size(y)) then x else y) "" strings

val longest_string3 = longest_string_helper (fn (x,y) => x > y) 
val longest_string4 = longest_string_helper (fn (x,y) => x >= y)

(* ex 5 *)
val longest_capitalized = longest_string1 o only_capitals
    
(* ex 6 *)
val rev_string = String.implode o List.rev o String.explode

(* ex 7 *)
fun first_answer f l =
    case l of 
        [] => raise NoAnswer
      | x::xs' => case f(x) of 
                      SOME v => v
                    | NONE => first_answer f xs'

(* ex 8 *)  
fun all_answers f l =
    let fun accum([], acc) = SOME acc
          | accum(x::xs', acc) = 
             case f(x) of
               NONE => NONE
             | SOME(v) => accum(xs', acc @ v)
    in
       accum(l, [])
    end

(* ex 9 *)
fun count_wildcards(pattern) =
    g (fn () => 1) (fn s => 0) pattern

fun count_wild_and_variable_lengths(pattern) =
    g (fn () => 1) (fn s => String.size s) pattern

fun count_some_var(str, pattern) =
    g (fn () => 0) (fn s => if str = s then 1 else 0) pattern

(* ex 10 *)
fun list_variables(p) =
	case p of
	    Wildcard          => []
	  | Variable x        => [x]
	  | TupleP ps         => List.foldl (fn (p,acc) => (list_variables p) @ acc) [] ps
	  | ConstructorP(_,p) => list_variables p
	  | _                 => []

fun no_duplicates([]) = true
  | no_duplicates(x::xs') = 
      if List.exists (fn(s)=>x=s) xs'
      then false
      else no_duplicates(xs')

val check_pat = no_duplicates o list_variables

(* ex 11 Using exceptions is ugly
fun matchr(v:valu, p:pattern, bindings: (string * valu) list) =  
	case (v,p) of
	    (_, Wildcard)          => bindings
	  | (_, Variable s)        => (s,v)::bindings
      | (Const v, ConstP c)    => if (c=v) then bindings else raise NoAnswer
      | (Unit, UnitP)          => bindings
	  | (Tuple ts, TupleP ps)  => (case all_answers match(ListPair.zip(ts,ps)) of
                                      SOME v => bindings @ v
                                    | NONE => raise NoAnswer)
	  | (Constructor(s1,v) , ConstructorP(s2,p)) => if s1 = s2 then matchr(v,p,bindings) else raise NoAnswer
      | _                      => raise NoAnswer

and match(v,p) = 
    SOME (matchr(v,p,[])) handle NoAnswer => NONE
*)

(* ex 11a *)
fun matchr(v:valu, p:pattern, bindings: (string * valu) list) =  
	case (v,p) of
	    (_, Wildcard)          => SOME bindings
	  | (_, Variable s)        => SOME ((s,v)::bindings)
      | (Const v, ConstP c)    => if (c=v) then SOME bindings else NONE
      | (Unit, UnitP)          => SOME bindings
	  | (Tuple ts, TupleP ps)  => if length ts <> length ps 
                                  then NONE
                                  else (case all_answers match (ListPair.zip(ts,ps)) of
                                            SOME v => SOME (bindings @ v)
                                          | NONE => NONE)
	  | (Constructor(s1,v) , ConstructorP(s2,p)) => if s1 = s2 then matchr(v,p,bindings) else NONE
      | _                      => NONE

and match(v,p) = matchr(v,p,[])

(* ex 12 *)
fun first_match v pl = 
    SOME (first_answer (fn p => match(v,p)) pl ) handle NoAnswer => NONE


(* ex 13 *)
fun typecheck_patterns(elements:(string * string * typ) list, pl:pattern list) =
    let
        fun check_constructor([], s:string, p:pattern) = NONE
          | check_constructor((s1,s2,t)::xs', s3:string, p:pattern) = 
              if s2 = s3  
              then SOME [Datatype s3]  (* fixme: we also need to typecheck p *)
              else check_constructor(xs',s3,p)

        and typecheck(p:pattern) =
              case p of 
                  ConstP _          => SOME [IntT]
                | UnitP             => SOME [UnitT]
                | Variable s        => SOME [Anything]
                | Wildcard          => SOME [Anything]
                | TupleP ps         => (case all_answers typecheck ps of
                                            SOME types  => SOME [TupleT types]
                                          | NONE        => NONE)
                | ConstructorP(s,p) => check_constructor(elements,s,p)

        fun most_generic(NONE) = NONE
          | most_generic(SOME [x]) = SOME x
          | most_generic(SOME (head::neck::tail)) =
              case (head,neck) of 
                  (IntT,Int)        => most_generic(SOME (IntT::tail))
                | (UnitT,UnitT)     => most_generic(SOME (UnitT::tail))
(*
                | (TupleT t1s, TupleT t2s) => (case all_answers most_generic_of_2 (ListPair.zip(t1s,t2s)) of
                                                   SOME types => TupleT types
                                                 | NONE       => raise NoAnswer )
*)
    in
       most_generic (all_answers typecheck pl)
    end
