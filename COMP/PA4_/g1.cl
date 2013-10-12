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

Class Main {
	main():C {
	  (new C).a(1,true)
	};
};
