import 'dart:async';

void dispararEventos(StreamController controller) async {
  for (var i = 1; i <= 6; i++) {
    if (i == 5) {
      controller.sink.addError('Erro no número $i');
      continue;
    }
    await Future.delayed(Duration(seconds: 1), () {
      controller.sink.add(i);
    });
  }
  controller.sink.close();
  print('StreamController em estado FECHADO');
}

void main() {
  StreamController<int>? controller;
  controller = StreamController<int>(
      onListen: () {
        print('StreamController em estado ATIVO');
        dispararEventos(controller!);
      },
      onResume: () => print('StreamController resumido'),
      onPause: () => print('StreamController pausado'),
      onCancel: () => print('StreamController em estado CANCELADO'),
      sync: false);
  controller.sink.add(0);

  print('StreamController em estado INICIAL');
  StreamSubscription? inscricao;
  Future.delayed(Duration(seconds: 2), () {
    inscricao = controller!.stream.listen((int dado) {
      print('Número: $dado');
      if (dado == 1) {
        print('Inscrição pausada');
        inscricao!.pause(Future.delayed(
            Duration(seconds: 1), () => print('Inscrição resumida')));
      }
    }, onError: (print), onDone: () => print('onDone'), cancelOnError: true);
  });
}
