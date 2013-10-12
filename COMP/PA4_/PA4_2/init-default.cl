class A inherits IO {
  x : Int <- if b then 1 else ~1 fi;
  b : Bool <- true;
(*
  y : Int <- x + 3;
*)
  z : Int <- 5;
  print_attr() : Object { {
   out_string("x: ");
   out_int(1);
   out_string("\nb: ");
   out_string(if true then "true" else "false" fi);
   out_string("\ny: ");
   out_int(3);
   out_string("\nz: ");
   out_int(5);
  } };
};

class Main {
  a : A <- new A;
  main() : Object {
    a.print_attr()
  };
};
