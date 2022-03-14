import 'dart:async';

void main() {
  final controller = StreamController();
  controller.stream.listen((dado) {
    print('Novo evento: $dado');
  });

  StreamSink sink = controller.sink;
  final future = sink.addStream(Stream.fromIterable(['A', 'B', 'C']));
  future.whenComplete(() => print('Todos eventos processados'));
}
