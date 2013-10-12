class C {
	a : Int;
	b : Bool;
	a(x : Int, y : Bool) : C {
           {
		a <- x;
		b <- y;
		self;
           }
	};
};

class Main {
	main():C {
	  (new C).a(1,true)
	};
};
