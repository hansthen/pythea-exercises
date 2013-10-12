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

fun only_capitals xs =
	List.filter (fn x => Char.isUpper(String.sub(x,0))) xs

fun longest_string1 xs =
	foldl (fn(x,y) => if String.size(y) >= String.size(x) then y else x) "" xs

fun longest_string2 xs =
	foldl (fn(x,y) => if String.size(y) > String.size(x) then y else x) "" xs
	
fun longest_string_helper predicate xs =
	foldl (fn(y, x) => if predicate(String.size(x), String.size(y)) then y else x) "" xs
	
val longest_string3 = longest_string_helper (fn(x,y) => y > x)
val longest_string4 = longest_string_helper (fn(x,y) => y >= x)

fun longest_capitalized xs =
	(longest_string1 o only_capitals) xs

fun rev_string s =
	(implode o rev o explode) s

fun first_answer f xs =
	case (map (fn x => case x of SOME(v) => v)(List.filter (fn x => case x of NONE => false | _ => true) (map f xs))) of 
		[] => raise NoAnswer
	|	x::_ => x

fun all_answers f xs =
	let fun merge(x: 'a list option, y: 'a list option) =
		case (x,y) of
			(SOME(v1), SOME(v2)) => SOME(v1@v2)
		|	(_, _) => NONE
	in
		foldl merge	(SOME([])) (map f xs)
	end
	
fun count_wildcards p =
	g (fn _ => 1)(fn _ => 0) p

fun count_wild_and_variable_lengths p =
	g (fn _ => 1) (fn s => String.size(s)) p
	
fun count_some_var(s, p) =
	g (fn _ => 0) (fn sp => if sp = s then 1 else 0) p
	
fun check_pat p =
	let fun to_strings p =
			case p of
				Variable(x) => [x]
			|	TupleP ps => List.foldl (fn (x, y) => to_strings(x)@y) [] ps
			|	ConstructorP(_, p) => to_strings(p)
			|	_ => []
		fun is_distinct xs =
			case xs of
				[] => true
			|	x::xs' => if List.exists (fn y => y = x) xs' then false else is_distinct(xs')
	in
		(is_distinct o to_strings) p
	end
	
fun match(v, p) =
	case (p, v) of
		(Wildcard, _) => SOME([])
	|	(Variable(s), _) => SOME([(s, v)])
	|	(UnitP, Unit) => SOME([])
	|	(ConstP(v1), Const(v2)) => if v1 = v2 then SOME([]) else NONE
	| 	(TupleP(ps1), Tuple(ps2)) => if List.length(ps1) = List.length(ps2) then all_answers match (ListPair.zip(ps2, ps1)) else NONE
	|	(ConstructorP(s1, p'), Constructor(s2, v')) => if s1 = s2 then match(v', p') else NONE
	|	_ => NONE
	
fun first_match v ps =
	SOME(first_answer (fn p => match(v, p)) ps)
	handle NoAnswer => NONE
		
	
	
	
	
	
	