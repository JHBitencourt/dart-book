void main() {
  final stream = Stream.fromIterable(['Stream', 'inscrição', 'única']);
  stream.first.then(print); // > Stream
  // stream.listen(null); // > Bad state: Stream has already been listened to.
}
