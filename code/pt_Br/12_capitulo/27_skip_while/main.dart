void main() {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9]);
  final skipStream = stream.skipWhile((e) => e <= 6);
  skipStream.listen(print);
}
