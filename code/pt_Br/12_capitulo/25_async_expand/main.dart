void main() {
  final stream = Stream.fromIterable(['A', 'E']);
  final expandStream = stream.asyncExpand((e) => Stream.fromIterable([e, e]));
  expandStream.listen(print);
}
