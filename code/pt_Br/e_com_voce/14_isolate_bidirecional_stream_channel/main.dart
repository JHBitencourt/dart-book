import 'dart:isolate';

import 'package:stream_channel/isolate_channel.dart';

void main(args) async {
  final receivePort = ReceivePort();
  final channel = IsolateChannel.connectReceive(receivePort);
  channel.stream.listen((data) {
    print('<mainIsolate> mensagem recebida: $data');
  });
  await Isolate.spawn(novaIsolate, receivePort.sendPort);
  channel.sink.add('Alguém ta me ouvindo? Câmbio desligo.');
}

void novaIsolate(SendPort sPort) {
  final channel = IsolateChannel.connectSend(sPort);
  channel.stream.listen((data) {
    print('<novaIsolate> mensagem recebida: $data');
  });
  channel.sink.add('Oi isolate main. Câmbio desligo.');
}
