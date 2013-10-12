class Bob inherits IO {
	x : Int;
	y : Int <- 4;
};

class Main inherits Bob {
    z : Int <- 12;
    rob(x:Int) : Int
    {{
        let z: Int <- x in z + 2;
    }};
	main() : Bob
	{{
		--let z:Int <- rob(2) in z;
        rob(2);
        out_string("done\n");
	}};
};
