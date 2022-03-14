import 'dart:isolate';

void main() async {
  final receivePort = ReceivePort();
  await Isolate.spawn(workerIsolate, receivePort.sendPort);
  receivePort.first.then((dado) => print('Mensagem recebida: $dado'));
}

void workerIsolate(SendPort sendPort) async {
  final resposta =
      await Future.delayed(Duration(seconds: 2), () => 'Conteúdo do arquivo');
  Isolate.exit(sendPort, resposta);
}
