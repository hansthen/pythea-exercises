#include <typeinfo>
#include <iostream>
using namespace std;

class A {
  public:
  virtual void f() {
    cout << "A.f" << endl;
  }
};

class B: public A {
  public:
  virtual void f() {
    cout << "B.f" << endl;
  }
};

int main(int argn, char ** argv) {
    B b = B();
    A * a = (A*)&b;
    a->f();
    cout << typeid(*a).name() << endl;
    return 1;
}
