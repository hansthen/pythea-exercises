(* Dan Grossman, Coursera PL, HW2 Provided Code *)

(* if you use this function to compare two strings (returns true if the same
   string), then you avoid several of the functions in problem 1 having
   polymorphic types that may be confusing *)
fun same_string(s1 : string, s2 : string) =
    s1 = s2

(* put your solutions for problem 1 here *)
fun all_except_option (s, strs) =
    let
	fun all_except (s, strs) = 
	    case strs of 
		[] => []
	      | x::xs => let val tail = all_except(s, xs)
			 in 
			     if same_string(s, x)
			     then tail
			     else x::tail
			 end
    in
	case strs of
	    [] => NONE
	  | _ => let val filtered_list = all_except(s, strs)
		 in if filtered_list = strs then NONE else SOME (filtered_list) end
    end

fun get_substitutions1 (subs, name) =
    case subs of
	[] => []
      | x::xs => let val possible_subs = all_except_option(name, x)
		     val rest_of_subs = get_substitutions1(xs, name)
		 in case possible_subs of
			NONE => rest_of_subs
		      | SOME s => s @ rest_of_subs
		 end

fun get_substitutions2 (subs, name) =
    let fun collect_subs(candidates, acc) =
	    case candidates of
		[] => acc
	      | first::rest => 
		case all_except_option(name, first) of
		    NONE => collect_subs(rest, acc)
		  | SOME s => collect_subs(rest, acc @ s)
    in
	collect_subs(subs, [])
    end

fun similar_names (subs, full_name) = 
    let val {first=fst_name, middle=m_name, last=lst_name} = full_name 
	fun complement lst_of_subs =
	    case lst_of_subs of
		[] => []
	      | sub::rest => {first=sub, middle=m_name, last=lst_name} :: complement(rest)
    in full_name :: complement(get_substitutions1(subs, fst_name))
    end

(* you may assume that Num is always used with values 2, 3, ..., 10
   though it will not really come up *)
datatype suit = Clubs | Diamonds | Hearts | Spades
datatype rank = Jack | Queen | King | Ace | Num of int 
type card = suit * rank

datatype color = Red | Black
datatype move = Discard of card | Draw 

exception IllegalMove

(* put your solutions for problem 2 here *)

fun card_color c = 
    case c of
	(Clubs, _) => Black
      | (Diamonds, _) => Red
      | (Hearts, _) => Red
      | (Spades, _) => Black

fun card_value c = 
    case c of
	(_, Num(i)) => i
      | (_, Ace) => 11
      | (_, _) => 10

fun remove_card (cs, c, e) =
    case cs of
	[] => raise e
      | head::tail => if head = c 
		      then tail 
		      else (head :: remove_card(tail, c, e))

fun all_same_color cards = 
    case cards of
	[] => true
      | _::[] => true
      | first::(next::rest) => (card_color(first) = card_color(next) andalso all_same_color(next::rest))

fun sum_cards cardlist = 
    let fun count (crds, acc) = 
	    case crds of
		[] => acc
	      | c::cs => count(cs, acc + card_value(c))
    in 
	count(cardlist, 0)
    end

fun score (cardlist, goal) = 
    let val sum = sum_cards(cardlist)
	val preliminary_score = if sum > goal then (sum - goal) * 3 else (goal - sum)
    in
	if all_same_color(cardlist) then preliminary_score div 2
	else preliminary_score
    end

fun officiate (cards, moves, goal) = 
    let fun game(deck, remaining_moves, held_cards) = 
	    case (deck, remaining_moves) of
		(_, []) => score(held_cards, goal)
	      | (_, (Discard c)::next) => game(deck, next, remove_card(held_cards, c, IllegalMove))
	      | ([], Draw::next) => score(held_cards, goal)
	      | (next_card::rest_of_deck, Draw::next) => if sum_cards(next_card::held_cards) > goal 
							 then score(next_card::held_cards, goal)
							 else game(rest_of_deck, next, next_card::held_cards)
    in
	game(cards, moves, [])
    end
