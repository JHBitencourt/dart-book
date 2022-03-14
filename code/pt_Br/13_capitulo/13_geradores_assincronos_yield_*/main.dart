Stream<dynamic> letrasNumeros() async* {
  yield* letras();
  for (int i = 1; i < 3; i++) yield i;
}

Stream<String> letras() async* {
  yield* Stream.fromIterable(['A', 'B']);
}

void main() async {
  await for (var i in letrasNumeros()) print('Valor: ${i}');
}
