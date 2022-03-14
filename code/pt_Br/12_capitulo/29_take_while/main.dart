void main() {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9]);
  final takeStream = stream.takeWhile((e) => e <= 3);
  takeStream.listen(print);
}
