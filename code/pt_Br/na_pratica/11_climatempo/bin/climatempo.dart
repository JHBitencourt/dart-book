import 'dart:io';

import 'package:args/args.dart';
import 'package:climatempo/api.dart';
import 'package:climatempo/model/clima_tempo.dart';

void main(List<String> args) async {
  final parser = criarParser();
  final argsResult = parser.parse(args);

  if (argsResult['help']) {
    mostrarAjuda(parser);
    exit(0);
  }

  final comando = argsResult.command;
  try {
    if (comando != null && comando.name == 'cidade') {
      final nomeCidade = comando['nome'];
      final estado = comando['estado'];
      final cidades = await buscarCidades(estado: estado, nome: nomeCidade);
      cidades.forEach((c) => print(c));
    }

    if (comando != null && comando.name == 'agora') {
      final id = comando['id'];
      if (id == null) {
        print('É obrigatório informar um [-id] de cidade');
        exit(2);
      }
      final tempo = await registrarCidadeEBuscarTempo(int.parse(id));
      print(tempo);
    }
  } catch (e) {
    print(e);
  }
}

Future<ClimaTempo> registrarCidadeEBuscarTempo(int idCidade) async {
  await registrarCidade(idCidade: idCidade);
  return await climaAtual(idCidade: idCidade);
}

void mostrarAjuda(ArgParser parser) {
  print('--- HELP ---');
  print(parser.usage);
  for (var comando in parser.commands.entries) {
    print('> Comando [${comando.key}]');
    print(comando.value.usage);
  }
}

ArgParser criarParser() {
  return ArgParser()
    ..addCommand(
        'cidade',
        ArgParser()
          ..addOption('nome',
              abbr: 'n', valueHelp: 'Nome da cidade para consulta')
          ..addOption('estado',
              abbr: 'e', valueHelp: 'Sigla do estado para consulta'))
    ..addCommand(
        'agora',
        ArgParser()
          ..addOption('id',
              abbr: 'i', valueHelp: 'Id da cidade para consulta do tempo'))
    ..addFlag('help',
        abbr: 'h', help: 'Como utilizar o programa', negatable: false);
}
