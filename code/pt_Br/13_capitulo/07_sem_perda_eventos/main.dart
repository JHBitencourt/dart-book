import 'dart:async';

Stream<int> get streamNumeros {
  final controller = StreamController<int>();
  var i = 1;
  Timer.periodic(Duration(seconds: 1), (timer) {
    if (i == 10) timer.cancel();
    controller.sink.add(i++);
  });
  return controller.stream;
}

void main() {
  final stream = streamNumeros;
  Future.delayed(Duration(seconds: 5), () {
    stream.listen(print);
  });
}
