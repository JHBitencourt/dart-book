import 'dart:async';
import 'dart:isolate';

void main() async {
  final receivePort = ReceivePort();
  receivePort.listen((dado) {
    print('Mensagem recebida: $dado');
  });
  final isolate = await Isolate.spawn(novaIsolate, receivePort.sendPort,
      errorsAreFatal: true);
  isolate.addOnExitListener(receivePort.sendPort,
      response: 'Isolate finalizada');
  isolate.addErrorListener(receivePort.sendPort);
  Future.delayed(Duration(seconds: 1), () {
    isolate.ping(receivePort.sendPort, response: 'Ping com sucesso');
  });
}

void novaIsolate(SendPort sendPort) async {
  Future.delayed(Duration(seconds: 2), () {
    throw TimeoutException('Exceção na isolate');
  });
}
