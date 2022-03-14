void main() {
  final stream =
      Stream.fromIterable(['AA', 'AE', 'AI', 'AO', 'AU']).asBroadcastStream();

  stream.any((valor) => valor.endsWith('E')).then(print); // > true
  stream.every((valor) => valor.startsWith('A')).then(print); // > true
  stream.contains('AO').then(print); // > true
}
