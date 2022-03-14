void main() {
  final stream = Stream.fromIterable(['A', 'E', 'I', 'O', 'U']);
  final skipStream = stream.skip(3);
  skipStream.listen(print);
}
