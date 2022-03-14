import 'dart:async';

void main() {
  final controller = StreamController();
  final stream = controller.stream;

  final subscription = stream.listen((dado) {
    print('Novo evento: $dado');
  });
  subscription.onError((e) {
    print('Erro capturado: $e');
  });

  StreamSink sink = controller.sink;
  sink.add(42);
  sink.addError('Erro');
}
