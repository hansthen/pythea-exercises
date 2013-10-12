class C {
	a : Int <- 1;
	b : Bool;
    c : C <- new C;
    d : C <- self;
	alpha() : C {
           {
		self;
           }
	};
};

Class Main {
	main():C {
	  new C
	};
};
