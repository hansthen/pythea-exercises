class A {
  f():Int {1};
  g():Int {2};
};

class B inherits A {
  g():Int {3};
};

class C inherits B {
  f():Int {4};
};

class D inherits C {
  f():Int {5};
  g():Int {6};
};

class Main inherits IO {
  a:A<-new A; 
  b:B<-new B;
  c:C<-new C;
  d:D<-new D;
  main():Object {{
    out_int(a.f());  -- 1
    out_int(a.g());  -- 2
    out_int(b.f());  -- 1
    out_int(b.g());  -- 3
    out_int(c.f());  -- 4
    out_int(c.g());  -- 3
    out_int(d.f());  -- 5
    out_int(d.g());  -- 6
    out_int(a@A.f()); -- 1
    out_int(a@A.g()); -- 2
    out_int(b@A.f()); -- 1
    out_int(b@A.g()); -- 2
    out_int(c@B.f()); -- 1
    out_int(c@B.g()); -- 3
    out_int(d@C.f()); -- 4
    out_int(d@C.g()); -- 3
    a<-new B;
    b<-new C;
    c<-new D;
    out_int(a.f());   -- 1
    out_int(a.g());   -- 3
    out_int(b.f());   -- 4
    out_int(b.g());   -- 3
    out_int(c.f());   -- 5
    out_int(c.g());   -- 6
    out_string("\n");
  }}; 
};
