abstract class A {
  String ola();
}

mixin B {
  String ola() => 'Olá B';
}

mixin C {
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
