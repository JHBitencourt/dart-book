import 'dart:async';

void main() {
  final controller = StreamController();
  controller.sink.add(4);
  controller.sink.add(2);
  controller.close();
  controller.stream.drain('Stream encerrada').then(print);
}
