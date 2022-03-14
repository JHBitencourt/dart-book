import 'dart:async';

void main() async {
  final controllerUm = StreamController();
  controllerUm.sink.add('4');
  controllerUm.sink.add('2');
  controllerUm.close();
  final controllerDois = StreamController();
  controllerUm.stream
      .pipe(controllerDois)
      .then((v) => print('Eventos adicionados'));
  controllerDois.stream.listen(print);
}
