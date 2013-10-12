use "PA3.sml";

val elements = [("card", "Num", IntT),
                ("card", "Queen", UnitT),
                ("card", "King", UnitT),
                ("card", "Jack", UnitT),
                ("card", "Ace", UnitT)];

typecheck elements (ConstP 16);
typecheck elements (TupleP [ConstP 12, Wildcard, Variable "var1"]);
typecheck elements (ConstructorP ("Num", ConstP 17));
typecheck elements (ConstructorP ("Num", TupleP []));

(*
compare(hd (valOf (typecheck elements (ConstP 16))), hd (valOf (typecheck elements (Variable "var1"))));
compare(hd (valOf (typecheck elements (TupleP [ConstP 12, Wildcard, Variable "var1"]) )), 
        hd (valOf (typecheck elements (TupleP [ConstP 12, Wildcard, Variable "var1"] ))));
*)

"typecheck_patterns";
typecheck_patterns elements [(ConstP 16), TupleP [ConstP 12, Wildcard, Variable "var1"], 
                             (ConstructorP ("Num", ConstP 17))];

"a tuple";
typecheck_patterns elements [(TupleP [ConstP 12, Wildcard, Variable "var1"]), (TupleP [ConstP 12, Wildcard, Variable "var1"])];

"failure, since invalid constructor";
typecheck_patterns elements [TupleP [ConstP 12, (ConstructorP ("Num", ConstP 17))], TupleP [ConstP 12, (ConstructorP ("Num", TupleP []))]];

"two different constructors for the same type";
typecheck_patterns elements [TupleP [ConstP 12, (ConstructorP ("Num", ConstP 17))], TupleP [ConstP 12, (ConstructorP ("Queen", UnitP ))]];

"variables and constructors";
typecheck_patterns elements [TupleP [ConstP 12, (ConstructorP ("Num", ConstP 17))], TupleP [ConstP 13, (Variable "var1")]];
