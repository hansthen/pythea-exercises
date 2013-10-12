(* Dan Grossman, Coursera PL, HW2 Provided Code *)

(* if you use this function to compare two strings (returns true if the same
   string), then you avoid several of the functions in problem 1 having
   polymorphic types that may be confusing *)
fun same_string(s1 : string, s2 : string) =
    s1 = s2

(* put your solutions for problem 1 here *)

(* Problem 1: a *)
fun all_except_option (s, strings) =
    let
	fun all_except (s, strings) =
	    case strings of
		[] => []
	      | x::strings' => 
		if same_string(s, x)
		then strings'
		else x :: all_except(s, strings')

	val all_except_strings = all_except(s, strings)
    in
	if all_except_strings = strings
	then NONE
	else SOME all_except_strings
    end

(* Problem 1: b *)
fun get_substitutions1 (name_lists, s) =
    case name_lists of
	[] => []
      | head::tail => 
	case all_except_option(s, head) of
	    NONE => [] @ get_substitutions1(tail, s)
	  | SOME all_except => all_except @ get_substitutions1(tail, s)

(* Problem 1: c *)
fun get_substitutions2 (name_lists, s) =
    let
	fun helper_get_substitutions (name_lists, names) =
	    case name_lists of
		[] => names
	      | head::tail => 
		case all_except_option(s, head) of
		    NONE => helper_get_substitutions(tail, names)
		  | SOME all_except => helper_get_substitutions(tail, all_except @ names)
	
    in
	helper_get_substitutions(name_lists, [])
    end     
	     
(* Problem 1: d *)
fun similar_names (name_lists, {first = f, middle = m, last = l}) =
    let
	val current_name = {first = f, middle = m, last = l}
	fun substitute(substitutions) =
	    case substitutions of
		[] => []
	      | head::tail => {first = head, middle = m, last = l} :: substitute(tail)
	    
     in
	case get_substitutions1(name_lists, f) of
	    [] => [current_name]
	  | first_name::names => current_name :: substitute(first_name::names)
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

(* Problem 2: a *)
fun card_color (suit, rank) =
    case suit of
	Clubs => Black
      | Spades => Black
      | _ => Red

(* Problem 2: b *)
fun card_value (suit, rank) =
    case rank of
	Num i => i
      | Ace => 11
      | _ => 10

(* Problem 2: c *)
fun remove_card (deck, card, e) =
    let
	fun all_except (deck) =
	    case deck of
		[] => []
	      | x::rest =>
		if x = card
		then rest
		else x :: all_except(rest)
    in
	case deck of
	    [] => raise e
	  | _ => 
	    case all_except(deck) of
		[] => []
	      | x::rest =>
		if x::rest = deck
		then raise e
		else x::rest 
    end

(* Problem 2: d *)
fun all_same_color (deck) =
    case deck of
	[] => true
      | _::[] => true
      | curr::(next::rest) => 
	card_color(curr) = card_color(next) andalso all_same_color(next::rest)

(* Problem 2: e *)
fun sum_cards (deck) =
    let
	fun helper_sum_cards (cards, sum) =
	    case cards of
		[] => sum
	      | x::cards' => helper_sum_cards(cards', card_value(x) + sum)
    in
	helper_sum_cards(deck, 0)
    end

(* Problem 2: f *)
fun score (deck, goal) =
    let
	val sum = sum_cards(deck);
	val prelim_score = (if sum > goal then (sum - goal) * 3 else goal - sum)
	val divider = (if all_same_color(deck) then 2 else 1)
    in
	 prelim_score div divider
    end

(* Problem 2: g *)
fun play (deck, moves, goal, held_cards) =
    case moves of 
	[] => held_cards
      | move::moves' =>
	case move of
	    Discard c => play(deck, moves', goal, remove_card(held_cards, c, IllegalMove))
	  | Draw => 
	    case deck of
		[] => held_cards
	      | card::deck' => 
		if sum_cards(held_cards) > goal
		then held_cards
		else play(deck', moves', goal, card::held_cards)

fun officiate (deck, moves, goal) =
    score(play(deck, moves, goal, []), goal)
    
(* Challenge problems *)

(* Problem 3: a *)
fun score_challenge (deck, goal) =
    let
	val sum = sum_cards(deck)

	fun update (deck, sum) =
	    case deck of
		[] => []
	      | (suit, rank)::deck' =>
		if rank = Ace
		then
		    if sum > goal 
		    then (suit, Num 1) :: update(deck', sum - 10)
		    else (suit, rank) :: update(deck', sum)
		else (suit, rank) :: update(deck', sum)
    in
	if sum > goal
	then score(update(deck, sum), goal)
	else score(deck, goal)
    end

fun officiate_challenge (deck, moves, goal) =
    score_challenge(play(deck, moves, goal, []), goal)

(* Problem 3: b *)
fun careful_player (deck, goal) =
    let
	fun overdraft (cards) =
	    sum_cards(cards) > goal

	fun way_to_draw (cards) =
	    (goal - sum_cards(cards)) > 10

	fun careful_moves (deck, held_cards) =
	    case deck of
		[] => []
	      | x::deck' =>
		if score(held_cards, goal) = 0
		then []
		else
		    if way_to_draw(held_cards) andalso not(overdraft(x::held_cards))
		    then Draw :: careful_moves(deck', x::held_cards)
		    else
			if overdraft(x::held_cards)
			then
			    case held_cards of
				[] => []
			      | y::held_cards' => (Discard y) :: careful_moves(deck, held_cards')
			else Draw :: careful_moves(deck', x::held_cards)
    in
	careful_moves(deck, [])
    end
