import 'dart:io';
import 'dart:isolate';

import 'package:climatempo/model/clima_tempo.dart';

import 'model/cidade.dart';

Future<void> _validarDiretorio() async {
  final dir = Directory('log');
  if (!(await dir.exists())) {
    await dir.create();
  }
}

Future<void> salvarTempoIsolate(ClimaTempo climaTempo) async {
  final isolate = await Isolate.spawn(salvarTempo, climaTempo);
  _registrarCallbackFinalizacao(isolate);
}

Future<void> salvarTempo(ClimaTempo climaTempo) async {
  await _validarDiretorio();
  final file = File('log/${climaTempo.cidade.id}.txt');
  await file.writeAsString('===\n$climaTempo', mode: FileMode.append);
}

void _registrarCallbackFinalizacao(Isolate isolate) {
  final receivePort = ReceivePort();
  receivePort.listen((mensagem) {
    print(mensagem);
    receivePort.close();
  });
  isolate.addOnExitListener(receivePort.sendPort,
      response: 'Arquivo salvo com sucesso!');
}

Future<void> salvarCidadesIsolate(List<Cidade> cidades) async {
  final isolate = await Isolate.spawn(salvarCidades, cidades);
  _registrarCallbackFinalizacao(isolate);
}

Future<void> salvarCidades(List<Cidade> cidades) async {
  await _validarDiretorio();
  final file = File('log/cidades.txt');
  final sink = file.openWrite(mode: FileMode.write);
  cidades.forEach((c) => sink.writeln(c));
  await sink.flush();
  await sink.close();
}
