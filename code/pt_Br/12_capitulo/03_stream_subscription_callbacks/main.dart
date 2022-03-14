void main() {
  final stream = Stream.error('StreamErro');
  final subscription = stream.listen((dado) {
    print('Novo evento: $dado');
  });
  subscription.onError((e) {
    print('Erro capturado: $e');
  });
  subscription.onDone(() => print('Stream finalizada'));
}
