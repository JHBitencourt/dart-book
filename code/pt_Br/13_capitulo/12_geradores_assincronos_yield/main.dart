Stream<int> numeros() async* {
  print('Gerador iniciado');
  for (int i = 0; i < 3; i++) {
    await Future.delayed(Duration(seconds: 2));
    yield i;
  }
  print('Gerador finalizado');
}

void main() {
  print('Início main');
  final stream = numeros();
  stream.listen((i) => print('Número: $i'));
  print('Término main');
}