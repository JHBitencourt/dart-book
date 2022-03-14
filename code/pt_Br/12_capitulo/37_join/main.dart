void main() {
  final stream = Stream.fromIterable(['A', 'E', 'I', 'O', 'U']);
  stream.join('-').then(print);
}
