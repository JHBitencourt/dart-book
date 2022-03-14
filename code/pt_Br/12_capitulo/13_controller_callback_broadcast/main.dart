import 'dart:async';

void dispararEventos(StreamController controller) async {
  for (var i = 1; i <= 6; i++) {
    if (i == 3) {
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

void criarInscricao(StreamController<int> controller, int valor) {
  StreamSubscription? inscricao;
  Future.delayed(Duration(seconds: 2), () {
    inscricao = controller.stream.listen((int dado) {
      print('[Inscrição $valor] número: $dado');
      if (dado == valor) {
        print('[Inscrição $valor] pausada');
        inscricao!.pause(Future.delayed(Duration(seconds: 2),
                () => print('[Inscrição $valor] resumida')));
      }
      if (dado == valor + 3) {
        print('[Inscrição $valor] cancelada');
        inscricao!.cancel();
      }
    }, onError: (e) => print('[Inscrição $valor] $e'),
        onDone: () => print('[Inscrição $valor] onDone'), cancelOnError: false);
  });
}

void main() {
  StreamController<int>? controller;
  controller = StreamController<int>.broadcast(
      onListen: () {
        print('StreamController em estado ATIVO');
        dispararEventos(controller!);
      },
      onCancel: () =>
          print('StreamController em estado CANCELADO'
          ),
      sync: false);
  controller.sink.add(0);
  print('StreamController em estado INICIAL');
  criarInscricao(controller, 1);
  criarInscricao(controller, 2);
  Future.delayed(Duration(seconds: 8), () {
    criarInscricao(controller!, 3);
  });
}