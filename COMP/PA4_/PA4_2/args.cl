class C {
	alpha(a: Int, b:Int, c:Bool) : C {
           {
        a <- a + b;
		self;
           }
	};
};

Class Main {
	main():C {
	  (new C).alpha(1,2,false)
	};
};
