import 'dart:io';

import 'package:climatempo/model/clima_tempo.dart';

import 'model/cidade.dart';

Future<void> _validarDiretorio() async {
  final dir = Directory('log');
  if (!(await dir.exists())) {
    await dir.create();
  }
}

Future<void> salvarCidades(List<Cidade> cidades) async {
  await _validarDiretorio();
  final file = File('log/cidades.txt');
  final sink = file.openWrite(mode: FileMode.write);
  cidades.forEach((c) => sink.writeln(c));
  await sink.flush();
  await sink.close();
}

Future<void> salvarTempo(ClimaTempo climaTempo) async {
  await _validarDiretorio();
  final file = File('log/${climaTempo.cidade.id}.txt');
  await file.writeAsString('===\n$climaTempo', mode: FileMode.append);
}
