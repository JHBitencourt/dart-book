import 'dart:async';

void main() {
  final controller = StreamController();
  controller.sink.add(42);
  final novaStream = controller.stream.cast<String>();
  novaStream.listen(print);
}
