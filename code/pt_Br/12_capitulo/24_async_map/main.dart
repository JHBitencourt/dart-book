void main() {
  final stream = Stream.fromIterable([4, 2]);
  final mapStream =
      stream.asyncMap((e) => Future.delayed(Duration(seconds: 2), () => e * 2));
  mapStream.listen(print);
}
