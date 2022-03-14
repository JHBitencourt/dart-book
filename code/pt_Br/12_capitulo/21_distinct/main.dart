void main() {
  final stream = Stream.fromIterable(['A', 'A', 'I', 'I', 'A', 'U']);
  final distinctStream = stream.distinct();
  distinctStream.listen(print);
}
