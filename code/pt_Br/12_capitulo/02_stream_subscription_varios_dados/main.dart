void main() {
  final stream = Stream.fromIterable(['A', 'E', 'I']);
  final subscription = stream.listen(null);
  subscription.onData((dado) {
    print('Novo evento: $dado');
  });
}
