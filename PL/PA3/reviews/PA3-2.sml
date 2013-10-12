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

(*======================Question 1=======================*)

fun only_capitals xs =
    List.filter (fn x => Char.isUpper(String.sub(x,0))) xs



(*======================Question 2=======================*)

(* this code computes "String.size" twise for every element *)

fun longest_string1 xs =
    foldl (fn (x,y) => if String.size x > String.size y then x else y) "" xs



(*======================Question 3=======================*)

(* this code computes "String.size" only once for every element *)

fun longest_string2 xs =
    let
	val aux = fn (x,(y,y')) =>
		     let
			 val x' = String.size x
		     in
			 if x' >= y' then (x,x') else (y,y')
		     end
	val out = fn (x,_) => x
    in 
	out (foldl aux ("",0) xs)
    end



(*======================Question 4=======================*)

fun longest_string_helper f xs =
    let
	fun aux (x,(y,y')) =
	    let
		val x' = String.size x
	    in
		if f (x',y') then (x,x') else (y,y')
	    end
	val out = fn (x,_) => x
    in 
	out (foldl aux ("",0) xs)
    end
	
val longest_string3 = fn xs => longest_string_helper (fn (x,y) => x > y) xs

val longest_string4 = fn xs => longest_string_helper (fn (x,y) => x >= y) xs

(*======================Question 5=======================*)

val longest_capitalized = longest_string3 o only_capitals



(*======================Question 6=======================*)


val rev_string = String.implode o List.rev o  String.explode 



(*======================Question 7=======================*)

fun first_answer f xs =
    case xs of
	[] => raise NoAnswer
      | x::xs' => case f x of
		      NONE => first_answer f xs'
		    | SOME y => y

(*======================Question 8=======================*)

fun all_answers f xs =
    let
	fun aux (xs, SOME acc) =
	    case xs of
		[] => SOME acc
	      | x::xs' => case f x of
			      NONE => NONE
			    | SOME x' => aux(xs', SOME (acc @ x'))
    in
	aux (xs, SOME[])
    end    

(*======================Question 9=======================*)

val count_wildcards = fn p => g (fn _ => 1) (fn _ => 0) p
val test9'1 = count_wildcards (ConstructorP ("",TupleP([Wildcard,Variable "123",Wildcard])))

val count_wild_and_variable_lengths = fn p => g (fn _ => 1) (fn x => String.size x) p
val test9'2 = count_wild_and_variable_lengths (ConstructorP ("",TupleP([Wildcard,Variable "123",Wildcard])))

val count_some_var = fn (str,p) => g (fn _ => 0) (fn x => if x = str then 1 else 0) p
val test9'3 = count_some_var ("123",ConstructorP ("",TupleP([Wildcard,Variable "123",Wildcard,Variable "123"])))


(*======================Question 10=======================*)

fun check_pat p = 
    let
	fun aux1 pat =
	    case pat of
		Variable x => [x]
	      | ConstructorP(_,p) => aux1 p
	      | TupleP ps => List.foldl (fn (p,i) => (aux1 p) @ i) [] ps
	      | _ => []
	fun aux2 xs =
	    case xs of
		[] => true
	      | x::xs' => if 
			     List.exists (fn x' => x' = x) xs'  
			 then
			     false
			 else
			     aux2 xs'
    in
	aux2(aux1 p)
    end

(*======================Question 11=======================*)

fun match x =
    case x of
	(_,Wildcard) => SOME []
      | (v, Variable s) => SOME [(s,v)]
      | (Unit,UnitP) => SOME []
      | (Const x, ConstP y)  => if x = y then SOME [] else NONE
      | (Tuple vs, TupleP ps) => if length vs = length ps
				 then all_answers match (ListPair.zip (vs, ps)) 
				 else NONE
      | (Constructor(s2,v),ConstructorP(s1,p)) => if s1 = s2 then match (v,p) else NONE 
      | _ => NONE; 
(*
match( Const 7, Wildcard ) = SOME [];
match( Unit, Wildcard ) = SOME [];
match( Tuple[Const 7], Wildcard ) = SOME [];
match( Constructor("ABC", Const 7), Wildcard ) = SOME [];

match( Const 7, Variable "A" ) = SOME [("A", Const 7)];
match( Unit, Variable "sName" ) = SOME [("sName", Unit)];

match( Unit, UnitP ) = SOME [];
match( Const 7, UnitP ) = NONE;

match( Const 7, ConstP 7 ) = SOME [];
match( Const 7, ConstP 8 ) = NONE;

match( Constructor("ABC", Const 7), ConstructorP( "ABC", Wildcard ) ) = SOME[];
match( Constructor("AB", Const 7), ConstructorP( "ABC", Wildcard ) ) = NONE;
match( Constructor("ABC", Const 7), ConstructorP( "ABC", UnitP ) ) = NONE;*)
match( Constructor("ABC", Const 7), ConstructorP( "ABC", Variable "bbba" ) ) (*= SOME[]*);
(*
match( Tuple[Const 7], TupleP[ConstP 7] ) = SOME [];
match( Tuple[Const 7], TupleP[ConstP 7,ConstP 7] ) = NONE;*)
match( Tuple [Const 7,   Const 6,        Unit,      Const 7],
       TupleP[ConstP 7,  Variable "ba",  Wildcard,  ConstP 8] ) (*= 
SOME [("ba",Const 6)]*);
match( Tuple[Const 7, Const 6, Unit, Const 7], 
       TupleP[Variable "a", Variable "ba", Variable "bba", Variable "bbba"] ) (*= 
SOME [("bbba",Const 7),("bba",Unit),("ba",Const 6),("a",Const 7)]*);

