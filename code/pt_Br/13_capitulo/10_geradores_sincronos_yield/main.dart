import 'dart:io';

Iterable<int> numeros() sync* {
  print('Gerador iniciado');
  for (int i = 0; i < 3; i++) {
    sleep(Duration(seconds: 2));
    yield i;
  }
  print('Gerador finalizado');
}

void main() {
  print('Início main');
  final iterable = numeros();
  print('Começo iteração:');
  Iterator i = iterable.iterator;
  while (i.moveNext()) print('Número: ${i.current}');
  print('Término main');
}
