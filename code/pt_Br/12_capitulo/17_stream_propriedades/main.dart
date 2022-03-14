void main() {
  final stream =
      Stream.fromIterable(['AA', 'AE', 'AI', 'AO', 'AU']).asBroadcastStream();
  stream.first.then(print); // > AA
  stream.last.then(print); // > AU
  stream.isEmpty.then(print); // > false
  stream.length.then(print); // > 5
  print(stream.isBroadcast); // > true
  stream.single.catchError((e) => e.toString()).then(print);
  // > Bad state: Too many elements
}
