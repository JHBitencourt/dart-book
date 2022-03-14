import 'dart:async';
import 'dart:isolate';

Future<SendPort> isolateBidirecional(
    ReceivePort receivePort, void onMessage(var message)) async {
  final completer = Completer<SendPort>();
  print('[MAIN Isolate]: Iniciado comunicação, aguardando handshake');
  receivePort.listen((mensagem) {
    if (mensagem is SendPort) {
      completer.complete(mensagem);
    } else {
      onMessage(mensagem);
    }
  });
  await Isolate.spawn(novaIsolate, receivePort.sendPort);
  return completer.future;
}

void novaIsolate(SendPort sendPort) {
  print(
      '[NOVA Isolate]: Solicitação de comunicação recebida, enviando resposta');
  final receivePort = ReceivePort();
  receivePort.listen((mensagem) {
    print('[NOVA Isolate]: Mensagem recebida $mensagem');
  });
  sendPort.send(receivePort.sendPort);
  Timer.periodic(Duration(seconds: 2), (timer) {
    sendPort.send(timer.tick);
    if (timer.tick == 10) timer.cancel();
  });
}

void main() async {
  final receivePort = ReceivePort();
  SendPort sendPort = await isolateBidirecional(receivePort, (mensagem) {
    print('[MAIN Isolate]: Mensagem recebida $mensagem');
  });
  print(
      '[MAIN Isolate]: Handshake concluído, comunicação bidirecional estabelecida.');
  Timer.periodic(Duration(seconds: 1), (timer) {
    sendPort.send(timer.tick);
    if (timer.tick == 10) timer.cancel();
  });
}
