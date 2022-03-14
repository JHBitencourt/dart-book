import 'dart:async';
import 'dart:isolate';

void main() async {
  final receivePort = ReceivePort();
  final isolate = await Isolate.spawn(novaIsolate, receivePort.sendPort);
  final capability = Capability();
  Future.delayed(Duration(seconds: 1), () {
    isolate.pause(capability);
  });
  Future.delayed(Duration(seconds: 3), () {
    isolate.resume(capability);
  });
  receivePort.listen((dado) {
    print('Mensagem recebida: $dado');
    if (dado == 7) {
      isolate.kill(priority: Isolate.immediate);
      receivePort.close();
    }
  });
}

void novaIsolate(SendPort sendPort) async {
  Timer.periodic(Duration(milliseconds: 500), (timer) {
    sendPort.send(timer.tick);
  });
}