import 'dart:isolate';

void main() async {
  final receivePort = ReceivePort();
  receivePort.listen((dado) {
    print('[IsolatePrincipal] - $dado');
  });
  await Isolate.spawnUri(
      Uri.parse('isolate.dart'), ['Args 1', 'Args 2'], receivePort.sendPort,
      debugName: 'IsolateSeparada');
}
