void main() {
  final stream =
      Stream.fromIterable(['A', 'E', 'E', 'O', 'O']).asBroadcastStream();
  stream.toList().then(print);
  stream.toSet().then(print);
}
