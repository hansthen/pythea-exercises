Class A {
  a() : Int { {
      5;
      A; -- This correctly returns an error
      2;
      +; -- This error is not shown. Insufficient error recovery.
  } };
};

Class BB__ inherits A {
};
