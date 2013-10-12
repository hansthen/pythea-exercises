(* Dan Grossman, Coursera PL, HW2 Provided Code *)

(* if you use this function to compare two strings (returns true if the same
   string), then you avoid several of the functions in problem 1 having
   polymorphic types that may be confusing *)
fun same_string(s1 : string, s2 : string) =
    s1 = s2

(* put your solutions for problem 1 here *)
fun all_except_option(word,sentence)=
    let fun remove(start,acc,word)= 
	    case start of
		[] => NONE
	      | first::rest => if same_string(first,word) then SOME(acc@rest) else remove(rest,acc@[first],word)
    in
	remove(sentence,[],word)
    end

fun get_substitutions1(substitutions,name)=
    case substitutions of
	[] => []
      | substitution::rest => (case all_except_option(name,substitution) of
	    NONE => []
	  | SOME(names) => names) @ get_substitutions1(rest,name)


fun get_substitutions2(substitutions,name)=
    let fun get_substitutions3(substitutions3,acc)=
	    case substitutions3 of
		[] => acc
	      | substitution::rest => get_substitutions3(rest,acc@(
		case all_except_option(name,substitution) of
		  NONE => []
		| SOME(names) => names)) 
in
    get_substitutions3(substitutions,[])
end
	
fun similar_names(synonyms,{first=firstName,middle=middleName,last=lastName})=
  let fun generate_names(firstNames)=
      case firstNames of  
	  [] => []
	| head::rest => {first=head,middle=middleName,last=lastName}::generate_names(rest)
  in
      generate_names(firstName::get_substitutions1(synonyms,firstName))
  end

(* you may assume that Num is always used with values 2, 3, ..., 9
   though it will not really come up *)
datatype suit = Clubs | Diamonds | Hearts | Spades
datatype rank = Jack | Queen | King | Ace | Num of int 
type card = suit * rank

datatype color = Red | Black
datatype move = Discard of card | Draw 

exception IllegalMove

(* put your solutions for problem 2 here *)

fun card_color(card)=
    case card of 
	(Clubs,_) => Black
      | (Spades,_) => Black
      | (Hearts,_) => Red
      | (Diamonds,_) => Red

fun card_value(card)=
    case card of
	(_,Num(x)) => x
      | (_,Ace) => 11
      | _ => 10

fun remove_card(cards,card,e)=
    case cards of 
	[] => raise e
	| firstCard::rest => if firstCard=card then rest else firstCard::remove_card(rest,card,e)

fun all_same_color(cards) = 
    case cards of
	[] => true
      | [card] => true
      | card1::card2::rest => if card_color(card1)=card_color(card2) then all_same_color(card2::rest) else false

fun sum_cards(cards) =
    let fun sum_cards_acc(cards,acc) =
	    case cards of 
		[] => acc
	      | card::rest => sum_cards_acc(rest,acc+card_value(card))
    in 
	sum_cards_acc(cards,0)
end

fun score(cards, goal) = 
    let val sum=sum_cards(cards)
	val intermediate_score=if sum<goal then goal-sum else (sum-goal)*3
    in
	if all_same_color(cards) then intermediate_score div 2 else intermediate_score
end

fun officiate(cards,moves,goal)=
    let fun execute_moves(cards,moves,hand) = 
	    case (cards,moves) of
		(_,[]) => score(hand,goal)
	      | ([],Draw::_) => score(hand,goal)
	      | (first::restCards,Draw::restMoves) => 
		let val newScore = score(first::hand,goal) 
		in
		    if newScore>goal 
		    then newScore
		    else execute_moves(restCards,restMoves,first::hand)
		end
	      | (cards,Discard(card)::restMoves) => execute_moves(cards,restMoves,remove_card(hand,card,IllegalMove))
    in
	execute_moves(cards,moves,[])
end

fun replaceToReachGoal(acc,cards,newCard,goal)=
    case cards of
	[] => NONE
      | oldCard::rest => if score(newCard::acc@rest,goal)=0 
		      then SOME(oldCard) 
		      else replaceToReachGoal(oldCard::acc,rest,newCard,goal)
 
fun ace_variants(cards) = 
let
    fun ace_variants_acc(acc,cards) = 
	case (acc,cards) of 
	    ([],[]) => []
	  | (acc,[]) => [acc]
	  | (acc,(suite,Ace)::rest) => ace_variants_acc((suite,Ace)::acc,rest)@ace_variants_acc((suite,Num(1))::acc,rest)
	  | (acc,card::rest) => ace_variants_acc(card::acc,rest)
in
    ace_variants_acc([],cards)
end

fun min_score(new,current) =
    case current of
	NONE => SOME(new)
      | SOME(score) => SOME(Int.min(new,score))

fun score_challenge(cards,goal) = 
    let fun score_challenge_helper(variants,best_score)=
	    case variants of
		[] => best_score
              | variant::rest => score_challenge_helper(rest,min_score(score(variant,goal),best_score))
    in
	case score_challenge_helper(ace_variants(cards),NONE) of
	    NONE =>goal
	  | SOME(score) => score
end

fun officiate_challenge(cards,moves,goal) = 
    let fun officiate_challenge_helper(variants,best_score)=
	    case variants of
		[] => best_score
              | variant::rest => officiate_challenge_helper(rest,min_score(officiate(variant,moves,goal),best_score))
    in
	case officiate_challenge_helper(ace_variants(cards),NONE) of
	    NONE =>goal
	  | SOME(score) => score
end

fun careful_player(cards,goal)=
    let fun play(cards,hand)=
	if score(hand,goal)=0 then [] else
	case cards of
	    [] => []
	  | first::rest => if sum_cards(hand) < goal-10 
			   then Draw::play(rest,first::hand) 
			   else case replaceToReachGoal([],hand,first,goal) of
				    NONE => []
				  | SOME(card) => Discard(card)::Draw::[]
    in
	play(cards,[])
end

