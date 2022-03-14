abstract class A {
  String ola();
}

class B {
  String ola() => 'Olá B';
}

class C {
  String ola() => 'Olá C';
}

class D extends A with B, C {
  void dizerOla() {
    print(ola());
  }
}

void main() {
  D().dizerOla();
}
