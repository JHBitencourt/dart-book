import 'dart:async';

void main() {
  a();
  Future? future;
  runZoned(() {
    future = Future(a).then(b);
  });
  future?.then(c);
}

a() => print('a');

b(valor) => runZoned(() => a());

c(valor) => print('c');
