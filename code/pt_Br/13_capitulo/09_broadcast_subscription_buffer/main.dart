import 'dart:async';

Stream<int> get streamNumeros {
  final controller = StreamController<int>.broadcast();
  var i = 1;
  Timer.periodic(Duration(seconds: 1), (timer) {
    if (i == 10) timer.cancel();
    controller.sink.add(i++);
  });
  return controller.stream;
}

void main() {
  final stream = streamNumeros;
  Future.delayed(Duration(seconds: 2), () {
    final inscricao = stream.listen(print);
    Future.delayed(Duration(seconds: 2), () {
      inscricao.pause();
      Future.delayed(Duration(seconds: 3), () {
        inscricao.resume();
      });
    });
  });
}
