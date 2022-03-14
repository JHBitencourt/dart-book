void main() {
  final stream = Stream.fromIterable([4, 2]);
  stream
      .forEach((e) => print('Elemento: $e'))
      .then((v) => print('Future completo'));
}
