void main() {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9]);
  final whereStream = stream.where((e) => e % 2 == 0);
  whereStream.listen(print);
}
