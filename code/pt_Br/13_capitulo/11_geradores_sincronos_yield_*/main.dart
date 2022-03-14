Iterable<dynamic> letrasNumeros() sync* {
  for (int i = 1; i < 3; i++) yield i;
  yield* letras();
}

Iterable<String> letras() sync* {
  yield* ['A', 'B'];
}

void main() async {
  for (var i in letrasNumeros()) print('Valor: ${i}');
}
