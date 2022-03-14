void main() {
  final stream = Stream.fromIterable([4, 2]);
  final mapStream = stream.map((e) => e * 2);
  mapStream.listen(print);
}
