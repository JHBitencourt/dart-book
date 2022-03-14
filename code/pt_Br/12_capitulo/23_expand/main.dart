void main() {
  final stream = Stream.fromIterable(['A', 'E']);
  final expandStream = stream.expand((e) => [e, e]);
  expandStream.listen(print);
}
