use "PA3.sml";

"only capitals";
only_capitals(["Hello", "World"]) = ["Hello", "World"];
only_capitals(["hello", "World"]) = ["World"];
only_capitals(["hello", "kItty"]) = [];

"empty";
longest_string1([]) = "";

"longest_string1";
longest_string1(["123", "12"])  = "123"; 
longest_string1(["123", "12a"]) = "123";
longest_string1(["12a", "123"]) = "12a";
longest_string1(["12", "123"])  = "123";

"longest_string2";
longest_string2(["123", "12"])  = "123";
longest_string2(["123", "12a"]) = "12a";
longest_string2(["12a", "123"]) = "123";
longest_string2(["12", "123"])  = "123";

"longest_string3";
longest_string3(["123", "12"])  = "123";
longest_string3(["123", "12a"]) = "123";
longest_string3(["12a", "123"]) = "12a";
longest_string3(["12", "123"])  = "123";

"longest_string4";
longest_string4(["123", "12"])  = "123";
longest_string4(["123", "12a"]) = "12a";
longest_string4(["12a", "123"]) = "123";
longest_string4(["12", "123"])  = "123";

"longest_capitalized";
longest_capitalized(["H", "HH", "HHH", "HHHH"]) = "HHHH";

(*
"reverse";
rev_string("1234") = "4321";
rev_string("") = "";
*)

"first answer";
first_answer (fn x => SOME "FOUND") ["This", "is", "my", "test"] = "FOUND";
(first_answer (fn x => SOME x) [] handle NoAnswer => "Caught") = "Caught";
first_answer (fn x => if x = "my" then SOME "FOUND" else NONE) ["This", "is", "my", "test"] = "FOUND";
(first_answer (fn x => if x = "BLUB" then SOME "FOUND" else NONE) ["This", "is", "my", "test"] handle NoAnswer => "Caught") = "Caught";

"all_answers";
all_answers (fn x => if x mod 2 = 0 then SOME [x] else NONE) [2,4,6,8] = SOME [2,4,6,8];
all_answers (fn x => if x mod 2 = 0 then SOME [x] else NONE) [2,4,6,8,9] = NONE;

"all_answers: fizzhead";
all_answers (fn x => if hd x = "fizz" then SOME (tl x) else NONE) [["a"]] = NONE;
all_answers (fn x => if hd x = "fizz" then SOME (tl x) else NONE) [["fizz"]] = SOME [] ;
all_answers (fn x => if hd x = "fizz" then SOME (tl x) else NONE) [["fizz","bob"]] = SOME ["bob"];
(* I copied this from online code, have to check *)
all_answers (fn x => if hd x = "fizz" then SOME (tl x) else NONE) [["fizz","bob"],["fizz","buzz","woo"]] = SOME ["buzz", "woo"];
all_answers (fn x => if hd x = "fizz" then SOME (tl x) else NONE) [["fizz","bob"],["fizz","buzz","woo"]];

"first_answer and all_anwers tests by Wang Kong Yew";
fun is_even x =
    if x mod 2 = 0 then SOME([x]) else NONE;

first_answer is_even [1, 2, 3, 4, 5, 6] = [2];
(first_answer is_even [1, 3, 5] handle NoAnswer => [0]) = [0];
first_answer is_even [1, 3, 5, 6] = [6];
(first_answer is_even [] handle NoAnswer => [0]) = [0];

all_answers is_even [1, 2, 3, 4, 5, 6] = NONE;
all_answers is_even [2, 4, 6] = SOME ([2, 4, 6]);
all_answers is_even [] = SOME ([]);

"count_wildcards";
count_wildcards( Wildcard ) = 1;
count_wildcards( ConstP 9 ) = 0;
count_wildcards( TupleP [ConstP 9, Wildcard, Wildcard] ) = 2;

"count_wildcards failed tests";
(* should be 2, actually 3 *)
count_wildcards(TupleP[Wildcard,ConstP 17,Variable "x",
                UnitP,TupleP[UnitP,UnitP,UnitP],ConstructorP ("x1", UnitP),TupleP[],ConstructorP("wild",Wildcard)]);

(* should be 4, actually 6 *)
count_wildcards(TupleP[Wildcard,ConstP 17,Variable "x", UnitP,
                TupleP[UnitP,UnitP,UnitP],ConstructorP ("a1", UnitP),TupleP[],ConstructorP("wild",Wildcard),
                TupleP[Wildcard,ConstP 17,Variable "x",UnitP,TupleP[UnitP,UnitP,UnitP],
                ConstructorP ("a",UnitP),TupleP[],ConstructorP("wild",Wildcard)]]);

"count_wild_and_variable_names";
count_wild_and_variable_lengths( TupleP [ConstP 9, Wildcard, Wildcard] ) = 2;
count_wild_and_variable_lengths( Wildcard ) = 1;
count_wild_and_variable_lengths( ConstP 9 ) = 0;
count_wild_and_variable_lengths( Variable "foo" ) = 3;
count_wild_and_variable_lengths( TupleP [Variable "foo", Variable "bar", Variable "baz"] ) = 9;
count_wild_and_variable_lengths( TupleP [Wildcard, Variable "bar", Variable "baz"] ) = 7;

"count_some_var";
count_some_var( "var1", ConstP 9) = 0;
count_some_var( "var1", TupleP [Variable "var1", Variable "var2", Variable "var1"]) = 2;
count_some_var( "var1", TupleP [ConstructorP("var1", ConstP 1), Variable "var2", Variable "var1"]) = 1;

"list_variables";
list_variables(TupleP [Variable "var1", Variable "var2", Variable "var1"]) = ["var1", "var2", "var1"];

"check_pat";
check_pat(TupleP [Variable "var1", Variable "var2", Variable "var1"]) = false;
check_pat(TupleP [Variable "var1", Variable "var2", Variable "var3"]) = true;
check_pat(Variable "var1") = true;
check_pat(ConstructorP("var1", Variable "var1")) = true;
check_pat(ConstructorP("var1", TupleP([Variable "var1", Variable "var1"]))) = false;

"match";
match(Const 12, Variable "var1") = SOME [("var1", Const 12)];
match(Const 12, ConstP 12) = SOME [];
match(Const 12, ConstP 13) = NONE;
 
"match constructors";
match(Constructor("t1", Const 12), ConstP 12) = NONE;
match(Constructor("t1", Const 12), ConstructorP("t1", Variable "var1")) = SOME [("var1",Const 12)];
match(Constructor("t1", Const 12), ConstructorP("t3", Variable "var1")) = NONE;

"match tests by Frank Brauner";
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
match( Constructor("ABC", Const 7), ConstructorP( "ABC", UnitP ) ) = NONE;
match( Constructor("ABC", Const 7), ConstructorP( "ABC", Variable "bbba" ) ) = SOME [("bbba",Const 7)];

match( Tuple[Const 7], TupleP[ConstP 7] ) = SOME [];

match( Tuple[Const 7], TupleP[ConstP 7,ConstP 7] ) = NONE;

match( Tuple[Const 7, Const 6, Unit, Const 8], 
       TupleP[ConstP 7, Variable "ba", Wildcard, ConstP 8] ) = 
SOME [("ba",Const 6)];
match( Tuple[Const 7, Const 6, Unit, Const 7], 
       TupleP[Variable "a", Variable "ba", Variable "bba", Variable "bbba"] ) = 
SOME [("a",Const 7),("ba",Const 6),("bba",Unit),("bbba",Const 7)];

match( Tuple[Const 7, Const 6, Unit, Const 8], 
           TupleP[ConstP 7, Variable "ba", Wildcard, ConstP 8] ) = SOME [("ba",Const 6)];

"match tuples";
match(Tuple([Const 12, Const 13]), TupleP([Variable "var1", Variable "var2"])) = SOME [("var1",Const 12),("var2",Const 13)];
match(Tuple([Constructor("t1", Const 12), Const 13]), TupleP([Variable "var1", Variable "var2"])) 
      = SOME [("var1",Constructor ("t1",Const 12)),("var2",Const 13)]; 

"first_match";
first_match (Const 12) [ConstP 9, Variable "var1", ConstP 12] = SOME [("var1", Const 12)];
first_match (Const 12) [ConstructorP("var1", ConstP 12), Variable "var1", ConstP 12] = SOME [("var1", Const 12)];
first_match (Const 12) [ConstP 12, ConstP 9] = SOME [];
first_match (Const 12) [ConstP 11, ConstP 9] = NONE;

(*
first_match (Const 12) [ConstP 9, Variable "var1", ConstP 12];
first_match (Const 12) [ConstructorP("var1", ConstP 12), Variable "var1", ConstP 12];
first_match (Const 12) [ConstP 12, ConstP 9];
first_match (Const 12) [ConstP 11, ConstP 9];
*)

