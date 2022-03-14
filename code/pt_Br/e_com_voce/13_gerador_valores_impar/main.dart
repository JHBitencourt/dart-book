Stream<int> numerosImpar() async* {
  for (int i = 0; i < 1000; i++) {
    if (i % 2 != 0) yield i;
  }
}

Future<void> main() async {
  print('Todos os valores ímpares de 0 a 1000:');
  await for (final e in numerosImpar()) {
    print('Número: $e');
  }
  print('Fim');
}
