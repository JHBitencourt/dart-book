import 'dart:math';

import 'package:jogo/src/resultado.dart';

const pedra = 'Pedra';
const papel = 'Papel';
const tesoura = 'Tesoura';
const lagarto = 'Lagarto';
const spock = 'Spock';

const opcoes = [pedra, papel, tesoura, lagarto, spock];

class Partida {
  final regras = <String, Map<String, String>>{};

  void criarRegra(String vencedor,
      {required String acao, required String perdedor}) {
    if (!regras.containsKey(vencedor)) {
      regras[vencedor] = {};
    }
    regras[vencedor]![acao] = perdedor;
  }

  String escolherPc() {
    final index = Random().nextInt(5);
    return opcoes[index];
  }

  Resumo iniciar({required String humano}) {
    final pc = escolherPc();
    if (humano == pc) {
      return Resumo(Resultado.empate, '$humano empata com $pc');
    }

    if (regras[humano]!.containsValue(pc)) {
      final entry = regras[humano]!.entries.firstWhere((e) => e.value == pc);
      return Resumo(
          Resultado.vitoria, '$humano ${entry.key} ${entry.value}');
    }

    final entry = regras[pc]!.entries.firstWhere((e) => e.value == humano);
    return Resumo(Resultado.derrota, '$pc ${entry.key} ${entry.value}');
  }
}

Partida configurarPartida() {
  return Partida()
    ..criarRegra(tesoura, acao: 'corta', perdedor: papel)
    ..criarRegra(tesoura, acao: 'decapita', perdedor: lagarto)
    ..criarRegra(papel, acao: 'cobre', perdedor: pedra)
    ..criarRegra(papel, acao: 'refuta', perdedor: spock)
    ..criarRegra(pedra, acao: 'esmaga', perdedor: lagarto)
    ..criarRegra(pedra, acao: 'quebra', perdedor: tesoura)
    ..criarRegra(lagarto, acao: 'envenena', perdedor: spock)
    ..criarRegra(lagarto, acao: 'come', perdedor: papel)
    ..criarRegra(spock, acao: 'esmaga', perdedor: tesoura)
    ..criarRegra(spock, acao: 'vaporiza', perdedor: pedra);
}