class Main inherits IO {
    m(x:Int, y:Int): SELF_TYPE
    {{
       let i:Int<-0, j:Int<-1 in
       {
          out_int(x);
       };
    }};
	main() : SELF_TYPE
	{{
        m(2,7);
        out_string("\ndone\n");
	}};
};
