use "PA2.sml";

fun assert(cond: bool) =
    if cond
    then ("success\n")
    else ("failure\n");

"ex 1a";
assert(SOME ["nella"] = all_except_option("hans", ["hans", "nella"]));
assert(SOME [] = all_except_option("hans", ["hans"]));
assert(NONE = all_except_option("hans", ["nella", "cecilia"]));

"ex 1b";
assert(["Fredrick","Freddie","F"] = get_substitutions1([["Fred","Fredrick"],
                                    ["Elizabeth","Betty"],["Freddie","Fred","F"]],"Fred"));
assert(get_substitutions1([["Fred","Fredrick"],["Jeff","Jeffrey"],
                           ["Geoff","Jeff","Jeffrey"]],"Jeff")=["Jeffrey","Geoff","Jeffrey"]);

"ex 1c";
assert(["Fredrick","Freddie","F"] = get_substitutions2([["Fred","Fredrick"],
                                      ["Elizabeth","Betty"],["Freddie","Fred","F"]],"Fred"));
assert(get_substitutions2([["Fred","Fredrick"],
                           ["Jeff","Jeffrey"],["Geoff","Jeff","Jeffrey"]],
                            "Jeff")=["Jeffrey","Geoff","Jeffrey"]);

get_substitutions2([["Fred","Fredrick"],
                           ["Jeff","Jeffrey"],["Geoff","Jeff","Jeffrey"]],
                            "Jeff");
get_substitutions2([["Fred","Fredrick"],
                                      ["Elizabeth","Betty"],["Freddie","Fred","F"]],"Fred");

"ex 1d";
assert([{first="Fred", last="Smith", middle="W"},
        {first="Fredrick", last="Smith", middle="W"},
        {first="Freddie", last="Smith", middle="W"},
        {first="F", last="Smith", middle="W"}] = 
similar_names([["Fred","Fredrick"],["Elizabeth","Betty"],
               ["Freddie","Fred","F"]],{first="Fred", middle="W", last="Smith"}));

"ex 2a";
assert(Red=card_color((Diamonds,Jack)));
assert(Black=card_color((Spades,Jack)));
assert(Black=card_color((Clubs,Jack)));
assert(Red=card_color((Hearts,Jack)));

"ex 2b";
assert(10=card_value((Diamonds,Jack)));
assert(11=card_value((Diamonds,Ace)));
assert(7=card_value((Diamonds,Num(7))));

"ex 2c";
exception NoSuchElement;
assert([(Clubs,Jack),(Diamonds,Jack)] = remove_card([(Diamonds,Jack), 
        (Clubs,Jack), (Diamonds,Jack)], (Diamonds,Jack), NoSuchElement));
assert([(Clubs,Jack)] = remove_card([(Clubs,Jack),(Diamonds,Jack)],
                                     (Diamonds,Jack), NoSuchElement));
assert([(Diamonds,Jack)] = (remove_card([(Diamonds,Jack), (Clubs,Jack), 
        (Diamonds,Jack)], (Diamonds,Queen), NoSuchElement) handle e => [(Diamonds,Jack)]));


"ex 2d";
assert(false=all_same_color([(Clubs,Jack),(Diamonds,Jack)])); 
assert(true=all_same_color([(Hearts,Jack),(Diamonds,Jack)]));

"ex 2e";
assert(20=sum_cards([(Clubs,Jack),(Diamonds,Jack)])); 
assert(30=sum_cards([(Diamonds,Jack), (Clubs,Jack), (Diamonds,Jack)]));
assert(50=sum_cards([(Diamonds,Jack), (Clubs,Jack), (Diamonds,Jack)] @ [(Clubs,Jack),(Diamonds,Jack)]));
assert(31=sum_cards((Hearts,Ace)::[(Clubs,Jack),(Diamonds,Jack)]));

"ex 2f not same color";
assert(3 = score([(Clubs,Jack), (Diamonds,Jack)], 19));
assert(0 = score([(Clubs,Jack), (Diamonds,Jack)], 20));
assert(1 = score([(Clubs,Jack), (Diamonds,Jack)], 21));

"ex 2f same color";
assert(15 = score([(Diamonds,Jack), (Hearts,Jack), (Hearts,Queen)], 20));
assert(3 = score([(Diamonds,Jack), (Hearts,Jack), (Hearts,Queen)], 28));
assert(0 = score([(Diamonds,Jack), (Hearts,Jack), (Hearts,Queen)], 30));
assert(0 = score([(Diamonds,Jack), (Hearts,Jack), (Hearts,Queen)], 31));
assert(2 = score([(Diamonds,Jack), (Hearts,Jack), (Hearts,Queen)], 34));

"ex 2g";
assert(2 = officiate([(Diamonds,Jack), (Hearts,Jack), (Hearts,Queen)], [Draw, Draw], 24));
assert(9 = officiate([(Diamonds,Jack), (Hearts,Queen), (Hearts,Jack), (Hearts,Num(2))], [Draw, Draw, Draw], 24));
assert(18 = officiate([(Diamonds,Jack), (Clubs,Queen), 
                       (Hearts,Jack), (Hearts,Num(2))], [Draw, Draw, Draw], 24));
assert(2 = officiate([(Diamonds,Jack), (Clubs,Queen), 
                       (Hearts,Jack), (Hearts,Num(2))], [Draw, Draw, Discard((Clubs,Queen)), Draw], 24));
assert(1 = officiate([(Diamonds,Jack), (Clubs,Queen), 
                       (Hearts,Jack), (Hearts,Num(2))], [Draw, Draw, 
                       Discard((Clubs,Queen)), Draw, Draw], 24));
assert(2 = officiate([(Diamonds,Jack), (Clubs,Queen), (Hearts,Jack), (Clubs,Num(2))], 
                     [Draw, Draw, Discard((Clubs,Queen)), Draw, Draw], 24));
assert(0 = officiate([(Diamonds,Jack), (Clubs,Queen), (Hearts,Jack), (Clubs,Num(4))], 
                     [Draw, Draw, Discard((Clubs,Queen)), Draw, Draw], 24));
assert(10 = officiate([(Diamonds,Jack), (Hearts,Jack), (Hearts,Ace), (Hearts,Queen), (Hearts,King)], [Draw, Draw, Draw, Draw, Draw], 24));
assert(21 = officiate([(Diamonds,Jack), (Clubs,Jack), (Hearts,Ace), (Hearts,Queen), (Hearts,King)], [Draw, Draw, Draw, Draw, Draw], 24));

officiate([(Diamonds,Jack), (Hearts,Jack), (Hearts,Ace), (Hearts,Queen), (Hearts,King)], [Draw, Draw, Draw, Draw, Draw], 24);
officiate([(Diamonds,Jack), (Clubs,Jack), (Hearts,Ace), (Hearts,Queen), (Hearts,King)], [Draw, Draw, Draw, Draw, Draw], 24);

"ex 3a challenge score";
assert(3=score_challenge([(Clubs,Jack), (Hearts,Jack), (Hearts,Queen), (Hearts,Ace)], 40));
assert(0=score_challenge([(Clubs,Jack), (Hearts,Jack), (Hearts,Queen), (Hearts,Ace)], 31));
assert(4=score_challenge([(Clubs,Jack), (Hearts,Jack), (Hearts,Queen), (Hearts,Ace)], 35));
assert(7=score_challenge([(Clubs,Jack), (Hearts,Jack), (Hearts,Queen), (Hearts,Ace)], 38));
assert(6=score_challenge([(Clubs,Jack), (Hearts,Jack), (Hearts,Queen), (Hearts,Ace)], 39));

"ex 3a challenge officiate";
assert(3 = officiate_challenge([(Diamonds,Jack), (Hearts,Jack), (Clubs,Ace)], [Draw, Draw, Draw], 24));
assert(0 = officiate_challenge([(Diamonds,Ace), (Hearts,Ace), (Clubs,Ace), (Hearts,Num(2))], [Draw, Draw, Draw], 13));
assert(2 = officiate_challenge([(Diamonds,Jack), (Hearts,Jack), (Hearts,Queen)], [Draw, Draw], 24));
assert(2 = officiate_challenge([(Diamonds,Jack), (Clubs,Queen), (Hearts,Jack), (Clubs,Num(2))], 
                     [Draw, Draw, Discard((Clubs,Queen)), Draw, Draw], 24));

assert(10 = officiate([(Diamonds,Jack), (Hearts,Jack), (Hearts,Ace), (Hearts,Queen), (Hearts,King)], [Draw, Draw, Draw, Draw, Draw], 24));

"ex 3b challenge careful player";
assert([Draw, Draw] = careful_player([(Diamonds,Jack), (Hearts,Jack), (Clubs,Ace)], 30));
assert([Draw,Draw,Draw] = careful_player([(Diamonds,Jack), (Hearts,Jack), (Clubs,Ace)], 31));
assert([Draw,Draw,Draw,Discard (Clubs,Num 5),Draw] = careful_player([(Diamonds,Jack), (Hearts,Jack), (Clubs,Num(5)),(Clubs,Ace)], 31));

careful_player([(Spades,Num 7),(Hearts,King),(Clubs,Ace),(Diamonds,Num 2)], 18);
