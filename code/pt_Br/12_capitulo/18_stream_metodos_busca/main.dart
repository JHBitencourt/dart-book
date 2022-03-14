void main() {
  final stream =
      Stream.fromIterable(['AA', 'AE', 'AI', 'AO', 'AU']).asBroadcastStream();
  stream.elementAt(2).then(print); // > AI
  stream
      .firstWhere((valor) => valor.startsWith('A'),
          orElse: () => 'Nenhum valor começa com A')
      .then(print); //> AA
  stream
      .lastWhere((valor) => valor.startsWith('A'),
          orElse: () => 'Nenhum valor termina com A')
      .then(print); //> AU
  stream
      .singleWhere((valor) => valor.startsWith('A'))
      .then(print)
      .catchError(print);
  // > Bad state: Too many elements
}
