fun a(["hello world"]) = "hello world"
  | a([]) = "empty"
  | a(x::xs') = "not empty";

a ["a","b","c"];
a [];
a ["hello world"];

(*
elements that look like ("foo","bar",IntT), which means constructor "foo" makes an item of type "bar", given a value of type IntT
The constructor's names are all unique, the datatype names are not 
*)

datatype test = MyConstructor of int
              | YourConstructor of int * int;

(*
("MyConstructor", "test", IntT);
("YourConstructor", "test", TupleT[IntT,IntT]);
*)

datatype test2 = Name1 of int list
               | Name2 of int;

fun b(t:test2) = "test2";

b(Name2(12));
