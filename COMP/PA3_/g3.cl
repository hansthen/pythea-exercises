Class A {
  a() : Int {{
     b <- 12;
     c <- 3 + 3;
     d <- 4 + 2; 
     while d < 10 loop
         d = d - 1
     pool;
  }};
};

Class BB__ inherits A {
};
