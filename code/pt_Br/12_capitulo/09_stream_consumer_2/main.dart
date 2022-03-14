import 'dart:async';

void main() {
  final controllerUm = StreamController();
  controllerUm.stream.listen((dado) {
    print('Novo evento StreamUm: $dado');
  }, onDone: () => print('StreamUm finalizada'));

  final controllerDois = StreamController.broadcast();
  final future = controllerUm.sink.addStream(controllerDois.stream);
  future.whenComplete(() => print('Todos eventos processados'));

  controllerDois.stream.listen((dado) {
    print('Novo evento StreamDois: $dado');
  }, onDone: () => print('StreamDois finalizada'));
  controllerDois.sink.add(42);
}
