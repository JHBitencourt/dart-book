import 'dart:async';
import 'dart:isolate';

void main() async {
  final receivePort = ReceivePort();
  await Isolate.spawn(workerIsolate, receivePort.sendPort);
  receivePort.listen((dado) {
    print('Mensagem recebida: $dado');
  });
}

void workerIsolate(SendPort sendPort) async {
  sendPort.send('Upload iniciado');
  Timer.periodic(Duration(milliseconds: 100), (timer) {
    if (timer.tick % 10 == 0) sendPort.send('Upload ${timer.tick} % ');
    if (timer.tick == 100) {
      timer.cancel();
      sendPort.send('Upload encerrado');
    }
  });
}
