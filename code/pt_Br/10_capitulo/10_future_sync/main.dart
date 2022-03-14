void main() {
  Future<String>.sync(() {
    print('Função Future.sync() executada');
    return 'Future síncrono?';
  }).then(print);
  print('Future.sync():');
}
