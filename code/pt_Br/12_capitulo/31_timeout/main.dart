import 'dart:async';

void main() {
  final controller = StreamController();
  controller.sink.add(4);
  Timer(Duration(seconds: 3), () {
    controller.sink.add(2);
    controller.close();
  });

  final timeoutStream = controller.stream.timeout(
    Duration(seconds: 2),
    onTimeout: (sink) {
      sink.add('Timeout excedido');
    },
  );

  timeoutStream.listen(print);
}
