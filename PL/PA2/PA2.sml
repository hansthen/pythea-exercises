(* Dan Grossman, Coursera PL, HW2 Provided Code *)

(* if you use this function to compare two strings (returns true if the same
   string), then you avoid several of the functions in problem 1 having
   polymorphic types that may be confusing *)
fun same_string(s1 : string, s2 : string) =
    s1 = s2

(* put your solutions for problem 1 here *)

(* helper function to remove s from a list *)
fun remove(s, []) = []
  | remove(s, x::xs') = if same_string(s,x) then remove(s,xs') else x::remove(s,xs')

(* remove from the list, if it is the same, there was no match *)
fun all_except_option(str,lst) = 
  let val result = remove(str, lst) in
    if result <> lst
    then SOME(result)
    else NONE
  end

(* ex 1b *)
fun get_substitutions1([], s) = []
  | get_substitutions1(x::xs', s) = 
    let val part = all_except_option(s, x) in 
      case part of
        NONE => get_substitutions1(xs', s)
      | SOME (lst) => lst @ get_substitutions1(xs', s)
    end
     
(* ex 1c *)
fun get_substitutions2(l, s) = 
    let fun tailr([], s, acc) = acc
          | tailr(x::xs', s, acc) = 
              case all_except_option(s,x) of
                  NONE => tailr(xs', s, acc)
                | SOME (lst) => tailr(xs', s, acc @ lst)
    in
      tailr(l, s, [])
    end

(* ex 1d *)
fun similar_names(groups, {first,last,middle}) = 
    let fun collect([], {first, last, middle}) = [] 
          | collect(x::xs', {first,last,middle}) = 
              {first=x,last=last,middle=middle}::collect(xs',{first=first,last=last,middle=middle})
    in
       {first=first,last=last,middle=middle}::collect(get_substitutions2(groups,first), 
                                                      {first=first,last=last,middle=middle})
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
(* ex 2a *)
fun card_color((suit,rank)) = 
    case suit of
        Clubs => Black
      | Diamonds => Red
      | Hearts => Red
      | Spades => Black
  
(* ex 2b *) 
fun card_value((suit,rank)) = 
    case rank of 
        Ace => 11
      | King => 10
      | Queen => 10
      | Jack => 10
      | Num value => value

(* ex 2c *)
fun remove_card([], card, e) = raise e
  | remove_card(x::xs', card, e) = if card = x then xs' else x::remove_card(xs', card, e)

(* ex 2d *)
fun all_same_color([]) = true
  | all_same_color(_::[]) = true
  | all_same_color(head::(neck::rest)) = (card_color(head) = card_color(neck)) andalso all_same_color(neck::rest) 

(* ex 2e *)
fun sum_cards(cards) = 
    let fun tailr([], total) = total
          | tailr(x::xs', total) = tailr(xs', total + card_value(x)) in
        tailr(cards, 0)
    end
    
(* ex 2f *)
(* helper function to calculate the preliminary score *)
fun prescore(sum, goal) = if sum > goal then 3 * (sum - goal) else (goal - sum)

fun score(cards, goal) = 
    let val sum = sum_cards(cards) in
        if all_same_color(cards) then prescore(sum, goal) div 2 else prescore(sum, goal)
    end
        
(* ex 2g *)
fun officiate(deck, moves, goal) = 
     let fun make_move([], deck, held, goal) =
             score(held, goal)
          |  make_move((Discard c)::moves, top::deck, held, goal) = 
             make_move(moves, top::deck, remove_card(held, c, IllegalMove), goal)
          |  make_move(Draw::moves, [], held, goal) =
             score(held, goal)
          |  make_move(Draw::moves, top::deck, held, goal) =
             if sum_cards(top::held) >= goal
             then score(top::held, goal)
             else make_move(moves, deck, top::held, goal)
     in
         make_move(moves, deck, [], goal)
     end

(* ex 3a *)
(* helper function to calculate the sum taking account of aces *)
fun sum_challenge(held, goal) = 
    let val sum = sum_cards(held)
        fun tailr([], goal, sum) = sum
          | tailr((suit,Ace)::xs', goal, sum) = 
            if prescore(sum - 10, goal) < prescore(sum, goal)
            then tailr(xs', goal, sum - 10)
            else tailr(xs', goal, sum)
          | tailr((suit,_)::xs', goal, sum) = tailr(xs', goal, sum)
    in
        tailr(held, goal, sum)
    end

fun score_challenge(cards, goal) =
    let val sum = sum_challenge(cards, goal)
        val score = prescore(sum, goal) in
        if all_same_color(cards) then score div 2 else score 
    end 

fun officiate_challenge(deck, moves, goal) = 
     let fun make_move([], deck, held, goal) =
             score_challenge(held, goal)
          |  make_move((Discard c)::moves, top::deck, held, goal) =
             make_move(moves, top::deck, remove_card(held, c, IllegalMove), goal)
          |  make_move(Draw::moves, [], held, goal) =
             score_challenge(held, goal)
          |  make_move(Draw::moves, top::deck, held, goal) =
             if sum_challenge(top::held, goal) >= goal
             then score_challenge(top::held, goal)
             else make_move(moves, deck, top::held, goal)
     in
         make_move(moves, deck, [], goal)
     end

(* ex 3b *)
fun discard_to_finish(head, [], goal) = NONE
  | discard_to_finish(head, c::xs', goal) = 
      if sum_challenge(head @ xs', goal) = goal
      then SOME(c)
      else discard_to_finish(c::head, xs', goal)
   
fun careful_player(deck, goal) = 
    let fun select_move([], held, goal, moves) = moves (* empty deck *)
          | select_move(top::xs', held, goal, moves) = 
            if goal - sum_challenge(held, goal) > 10 
            then select_move(xs', top::held, goal, moves @ [Draw])
            else case discard_to_finish([],top::held, goal) of
                 NONE => moves
               | SOME(c) => moves @ Discard(c)::[Draw]
    in 
         select_move(deck, [], goal, [])
    end
