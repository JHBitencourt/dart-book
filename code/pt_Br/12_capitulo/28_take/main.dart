void main() {
  final stream = Stream.fromIterable(['A', 'E', 'I', 'O', 'U']);
  final takeStream = stream.take(3);
  takeStream.listen(print);
}
