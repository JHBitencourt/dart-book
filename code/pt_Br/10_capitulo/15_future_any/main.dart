void main() {
  Future.any<String>(listaFuture()).then(print, onError: print);
  print('Aguardando..');
}

List<Future<String>> listaFuture() => <int>[2, 1, 5]
    .map((s) => Future<String>.delayed(Duration(seconds: s), () => 'Tempo: $s'))
    .toList();

Future<String> comErro() => Future<String>.error('Erro ao buscardados.');
